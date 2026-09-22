-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nse NseFo Broadcast NnfBcast 9.50 Protocol
local omi_nse_nsefo_broadcast_nnfbcast_v9_50 = Proto("Omi.Nse.NseFo.Broadcast.NnfBcast.v9.50", "Nse NseFo Broadcast NnfBcast 9.50")

-- Protocol table
local nse_nsefo_broadcast_nnfbcast_v9_50 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nse NseFo Broadcast NnfBcast 9.50 Fields
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.action_code = ProtoField.new("Action Code", "nse.nsefo.broadcast.nnfbcast.v9.50.actioncode", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.agm = ProtoField.new("Agm", "nse.nsefo.broadcast.nnfbcast.v9.50.agm", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0800)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.alpha_char = ProtoField.new("Alpha Char", "nse.nsefo.broadcast.nnfbcast.v9.50.alphachar", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.aon = ProtoField.new("Aon", "nse.nsefo.broadcast.nnfbcast.v9.50.aon", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.asset_instrument = ProtoField.new("Asset Instrument", "nse.nsefo.broadcast.nnfbcast.v9.50.assetinstrument", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.asset_name = ProtoField.new("Asset Name", "nse.nsefo.broadcast.nnfbcast.v9.50.assetname", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.asset_open_interest = ProtoField.new("Asset Open Interest", "nse.nsefo.broadcast.nnfbcast.v9.50.assetopeninterest", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.asset_token = ProtoField.new("Asset Token", "nse.nsefo.broadcast.nnfbcast.v9.50.assettoken", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.auction_number = ProtoField.new("Auction Number", "nse.nsefo.broadcast.nnfbcast.v9.50.auctionnumber", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.auction_price = ProtoField.new("Auction Price", "nse.nsefo.broadcast.nnfbcast.v9.50.auctionprice", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.auction_quantity = ProtoField.new("Auction Quantity", "nse.nsefo.broadcast.nnfbcast.v9.50.auctionquantity", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.auction_status = ProtoField.new("Auction Status", "nse.nsefo.broadcast.nnfbcast.v9.50.auctionstatus", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.average_trade_price = ProtoField.new("Average Trade Price", "nse.nsefo.broadcast.nnfbcast.v9.50.averagetradeprice", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.base_price = ProtoField.new("Base Price", "nse.nsefo.broadcast.nnfbcast.v9.50.baseprice", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.bb_buy_sell_flag = ProtoField.new("Bb Buy Sell Flag", "nse.nsefo.broadcast.nnfbcast.v9.50.bbbuysellflag", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.bb_total_buy_flag = ProtoField.new("Bb Total Buy Flag", "nse.nsefo.broadcast.nnfbcast.v9.50.bbtotalbuyflag", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.bb_total_sell_flag = ProtoField.new("Bb Total Sell Flag", "nse.nsefo.broadcast.nnfbcast.v9.50.bbtotalsellflag", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.bc_seq_no = ProtoField.new("Bc Seq No", "nse.nsefo.broadcast.nnfbcast.v9.50.bcseqno", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.bcast_header = ProtoField.new("Bcast Header", "nse.nsefo.broadcast.nnfbcast.v9.50.bcastheader", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.bcast_market_type = ProtoField.new("Bcast Market Type", "nse.nsefo.broadcast.nnfbcast.v9.50.bcastmarkettype", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.bcast_pack_data = ProtoField.new("Bcast Pack Data", "nse.nsefo.broadcast.nnfbcast.v9.50.bcastpackdata", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.bcast_reserved = ProtoField.new("Bcast Reserved", "nse.nsefo.broadcast.nnfbcast.v9.50.bcastreserved", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.board_lot_quantity = ProtoField.new("Board Lot Quantity", "nse.nsefo.broadcast.nnfbcast.v9.50.boardlotquantity", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.bonus = ProtoField.new("Bonus", "nse.nsefo.broadcast.nnfbcast.v9.50.bonus", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.book_closure_end_date = ProtoField.new("Book Closure End Date", "nse.nsefo.broadcast.nnfbcast.v9.50.bookclosureenddate", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.book_closure_start_date = ProtoField.new("Book Closure Start Date", "nse.nsefo.broadcast.nnfbcast.v9.50.bookclosurestartdate", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.book_type = ProtoField.new("Book Type", "nse.nsefo.broadcast.nnfbcast.v9.50.booktype", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.branch_number = ProtoField.new("Branch Number", "nse.nsefo.broadcast.nnfbcast.v9.50.branchnumber", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.broadcast_data = ProtoField.new("Broadcast Data", "nse.nsefo.broadcast.nnfbcast.v9.50.broadcastdata", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.broadcast_message = ProtoField.new("Broadcast Message", "nse.nsefo.broadcast.nnfbcast.v9.50.broadcastmessage", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.broadcast_message_length = ProtoField.new("Broadcast Message Length", "nse.nsefo.broadcast.nnfbcast.v9.50.broadcastmessagelength", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.broker_code = ProtoField.new("Broker Code", "nse.nsefo.broadcast.nnfbcast.v9.50.brokercode", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.broker_number = ProtoField.new("Broker Number", "nse.nsefo.broadcast.nnfbcast.v9.50.brokernumber", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.buy = ProtoField.new("Buy", "nse.nsefo.broadcast.nnfbcast.v9.50.buy", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.buy_price = ProtoField.new("Buy Price", "nse.nsefo.broadcast.nnfbcast.v9.50.buyprice", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.buy_volume_long = ProtoField.new("Buy Volume Long", "nse.nsefo.broadcast.nnfbcast.v9.50.buyvolumelong", ftypes.INT64)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.buy_volume_short = ProtoField.new("Buy Volume Short", "nse.nsefo.broadcast.nnfbcast.v9.50.buyvolumeshort", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.ca_level = ProtoField.new("Ca Level", "nse.nsefo.broadcast.nnfbcast.v9.50.calevel", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.closing_index = ProtoField.new("Closing Index", "nse.nsefo.broadcast.nnfbcast.v9.50.closingindex", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.closing_price = ProtoField.new("Closing Price", "nse.nsefo.broadcast.nnfbcast.v9.50.closingprice", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.compression_length = ProtoField.new("Compression Length", "nse.nsefo.broadcast.nnfbcast.v9.50.compressionlength", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.control_work_station = ProtoField.new("Control Work Station", "nse.nsefo.broadcast.nnfbcast.v9.50.controlworkstation", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.counter_broker_code = ProtoField.new("Counter Broker Code", "nse.nsefo.broadcast.nnfbcast.v9.50.counterbrokercode", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.credit_rating = ProtoField.new("Credit Rating", "nse.nsefo.broadcast.nnfbcast.v9.50.creditrating", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.current_oi_long = ProtoField.new("Current Oi Long", "nse.nsefo.broadcast.nnfbcast.v9.50.currentoilong", ftypes.INT64)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.current_oi_short = ProtoField.new("Current Oi Short", "nse.nsefo.broadcast.nnfbcast.v9.50.currentoishort", ftypes.UINT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.day_hi_oi_long = ProtoField.new("Day Hi Oi Long", "nse.nsefo.broadcast.nnfbcast.v9.50.dayhioilong", ftypes.INT64)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.day_hi_oi_short = ProtoField.new("Day Hi Oi Short", "nse.nsefo.broadcast.nnfbcast.v9.50.dayhioishort", ftypes.UINT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.day_high_price_difference = ProtoField.new("Day High Price Difference", "nse.nsefo.broadcast.nnfbcast.v9.50.dayhighpricedifference", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.day_lo_oi_long = ProtoField.new("Day Lo Oi Long", "nse.nsefo.broadcast.nnfbcast.v9.50.daylooilong", ftypes.INT64)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.day_lo_oi_short = ProtoField.new("Day Lo Oi Short", "nse.nsefo.broadcast.nnfbcast.v9.50.daylooishort", ftypes.UINT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.day_low_price_difference = ProtoField.new("Day Low Price Difference", "nse.nsefo.broadcast.nnfbcast.v9.50.daylowpricedifference", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.delete_flag = ProtoField.new("Delete Flag", "nse.nsefo.broadcast.nnfbcast.v9.50.deleteflag", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.dividend = ProtoField.new("Dividend", "nse.nsefo.broadcast.nnfbcast.v9.50.dividend", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.egm = ProtoField.new("Egm", "nse.nsefo.broadcast.nnfbcast.v9.50.egm", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0400)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.eligibility = ProtoField.new("Eligibility", "nse.nsefo.broadcast.nnfbcast.v9.50.eligibility", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhncd_interactive_only_mbp_data = ProtoField.new("Enhncd Interactive Only Mbp Data", "nse.nsefo.broadcast.nnfbcast.v9.50.enhncdinteractiveonlymbpdata", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhncd_mbp_buys = ProtoField.new("Enhncd Mbp Buys", "nse.nsefo.broadcast.nnfbcast.v9.50.enhncdmbpbuys", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhncd_mbp_information = ProtoField.new("Enhncd Mbp Information", "nse.nsefo.broadcast.nnfbcast.v9.50.enhncdmbpinformation", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhncd_mbp_sells = ProtoField.new("Enhncd Mbp Sells", "nse.nsefo.broadcast.nnfbcast.v9.50.enhncdmbpsells", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhncd_open_interest = ProtoField.new("Enhncd Open Interest", "nse.nsefo.broadcast.nnfbcast.v9.50.enhncdopeninterest", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.error_code = ProtoField.new("Error Code", "nse.nsefo.broadcast.nnfbcast.v9.50.errorcode", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.ex_allowed = ProtoField.new("Ex Allowed", "nse.nsefo.broadcast.nnfbcast.v9.50.exallowed", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.ex_rejection_allowed = ProtoField.new("Ex Rejection Allowed", "nse.nsefo.broadcast.nnfbcast.v9.50.exrejectionallowed", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0040)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.exercise_end_date = ProtoField.new("Exercise End Date", "nse.nsefo.broadcast.nnfbcast.v9.50.exerciseenddate", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.exercise_start_date = ProtoField.new("Exercise Start Date", "nse.nsefo.broadcast.nnfbcast.v9.50.exercisestartdate", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.exercise_style = ProtoField.new("Exercise Style", "nse.nsefo.broadcast.nnfbcast.v9.50.exercisestyle", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0100)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.expiry_date = ProtoField.new("Expiry Date", "nse.nsefo.broadcast.nnfbcast.v9.50.expirydate", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.expulsion_date = ProtoField.new("Expulsion Date", "nse.nsefo.broadcast.nnfbcast.v9.50.expulsiondate", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.extrinsic_value = ProtoField.new("Extrinsic Value", "nse.nsefo.broadcast.nnfbcast.v9.50.extrinsicvalue", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.fill_price = ProtoField.new("Fill Price", "nse.nsefo.broadcast.nnfbcast.v9.50.fillprice", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.fill_volume = ProtoField.new("Fill Volume", "nse.nsefo.broadcast.nnfbcast.v9.50.fillvolume", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.filler = ProtoField.new("Filler", "nse.nsefo.broadcast.nnfbcast.v9.50.filler", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.filler_2 = ProtoField.new("Filler 2", "nse.nsefo.broadcast.nnfbcast.v9.50.filler2", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.final = ProtoField.new("Final", "nse.nsefo.broadcast.nnfbcast.v9.50.final", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.freeze_quantity = ProtoField.new("Freeze Quantity", "nse.nsefo.broadcast.nnfbcast.v9.50.freezequantity", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.high_exec_band = ProtoField.new("High Exec Band", "nse.nsefo.broadcast.nnfbcast.v9.50.highexecband", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.high_index_value = ProtoField.new("High Index Value", "nse.nsefo.broadcast.nnfbcast.v9.50.highindexvalue", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.high_price = ProtoField.new("High Price", "nse.nsefo.broadcast.nnfbcast.v9.50.highprice", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.high_price_range = ProtoField.new("High Price Range", "nse.nsefo.broadcast.nnfbcast.v9.50.highpricerange", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.imbalance_qty_at_iop = ProtoField.new("Imbalance Qty At Iop", "nse.nsefo.broadcast.nnfbcast.v9.50.imbalanceqtyatiop", ftypes.INT64)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.index_name = ProtoField.new("Index Name", "nse.nsefo.broadcast.nnfbcast.v9.50.indexname", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.index_value = ProtoField.new("Index Value", "nse.nsefo.broadcast.nnfbcast.v9.50.indexvalue", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.industry_indices = ProtoField.new("Industry Indices", "nse.nsefo.broadcast.nnfbcast.v9.50.industryindices", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.industry_name = ProtoField.new("Industry Name", "nse.nsefo.broadcast.nnfbcast.v9.50.industryname", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.initiator_price = ProtoField.new("Initiator Price", "nse.nsefo.broadcast.nnfbcast.v9.50.initiatorprice", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.initiator_quantity = ProtoField.new("Initiator Quantity", "nse.nsefo.broadcast.nnfbcast.v9.50.initiatorquantity", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.initiator_type = ProtoField.new("Initiator Type", "nse.nsefo.broadcast.nnfbcast.v9.50.initiatortype", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.instrument_description = ProtoField.new("Instrument Description", "nse.nsefo.broadcast.nnfbcast.v9.50.instrumentdescription", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.instrument_id = ProtoField.new("Instrument Id", "nse.nsefo.broadcast.nnfbcast.v9.50.instrumentid", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.instrument_name = ProtoField.new("Instrument Name", "nse.nsefo.broadcast.nnfbcast.v9.50.instrumentname", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.instrument_update_time = ProtoField.new("Instrument Update Time", "nse.nsefo.broadcast.nnfbcast.v9.50.instrumentupdatetime", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.interactive_only_mbp_data = ProtoField.new("Interactive Only Mbp Data", "nse.nsefo.broadcast.nnfbcast.v9.50.interactiveonlymbpdata", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.interest = ProtoField.new("Interest", "nse.nsefo.broadcast.nnfbcast.v9.50.interest", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.interest_payment_date = ProtoField.new("Interest Payment Date", "nse.nsefo.broadcast.nnfbcast.v9.50.interestpaymentdate", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.intrinsic_value = ProtoField.new("Intrinsic Value", "nse.nsefo.broadcast.nnfbcast.v9.50.intrinsicvalue", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.is_corporate_adjusted = ProtoField.new("Is Corporate Adjusted", "nse.nsefo.broadcast.nnfbcast.v9.50.iscorporateadjusted", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.is_this_asset = ProtoField.new("Is This Asset", "nse.nsefo.broadcast.nnfbcast.v9.50.isthisasset", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.issue_maturity_date = ProtoField.new("Issue Maturity Date", "nse.nsefo.broadcast.nnfbcast.v9.50.issuematuritydate", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.issue_rate = ProtoField.new("Issue Rate", "nse.nsefo.broadcast.nnfbcast.v9.50.issuerate", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.issue_start_date = ProtoField.new("Issue Start Date", "nse.nsefo.broadcast.nnfbcast.v9.50.issuestartdate", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.issued_capital = ProtoField.new("Issued Capital", "nse.nsefo.broadcast.nnfbcast.v9.50.issuedcapital", ftypes.DOUBLE)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.journalling_required = ProtoField.new("Journalling Required", "nse.nsefo.broadcast.nnfbcast.v9.50.journallingrequired", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.last_active_time = ProtoField.new("Last Active Time", "nse.nsefo.broadcast.nnfbcast.v9.50.lastactivetime", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.last_trade_less = ProtoField.new("Last Trade Less", "nse.nsefo.broadcast.nnfbcast.v9.50.lasttradeless", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.last_trade_more = ProtoField.new("Last Trade More", "nse.nsefo.broadcast.nnfbcast.v9.50.lasttrademore", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.last_trade_price = ProtoField.new("Last Trade Price", "nse.nsefo.broadcast.nnfbcast.v9.50.lasttradeprice", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.last_trade_quantity = ProtoField.new("Last Trade Quantity", "nse.nsefo.broadcast.nnfbcast.v9.50.lasttradequantity", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.last_trade_time = ProtoField.new("Last Trade Time", "nse.nsefo.broadcast.nnfbcast.v9.50.lasttradetime", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.last_traded_price = ProtoField.new("Last Traded Price", "nse.nsefo.broadcast.nnfbcast.v9.50.lasttradedprice", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.last_traded_price_difference = ProtoField.new("Last Traded Price Difference", "nse.nsefo.broadcast.nnfbcast.v9.50.lasttradedpricedifference", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.last_update_time = ProtoField.new("Last Update Time", "nse.nsefo.broadcast.nnfbcast.v9.50.lastupdatetime", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.limit_price_protection_range_data = ProtoField.new("Limit Price Protection Range Data", "nse.nsefo.broadcast.nnfbcast.v9.50.limitpriceprotectionrangedata", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.limit_price_protection_range_detail = ProtoField.new("Limit Price Protection Range Detail", "nse.nsefo.broadcast.nnfbcast.v9.50.limitpriceprotectionrangedetail", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.listing_date = ProtoField.new("Listing Date", "nse.nsefo.broadcast.nnfbcast.v9.50.listingdate", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.local_update_date_time = ProtoField.new("Local Update Date Time", "nse.nsefo.broadcast.nnfbcast.v9.50.localupdatedatetime", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.log_time = ProtoField.new("Log Time", "nse.nsefo.broadcast.nnfbcast.v9.50.logtime", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.low_exec_band = ProtoField.new("Low Exec Band", "nse.nsefo.broadcast.nnfbcast.v9.50.lowexecband", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.low_index_value = ProtoField.new("Low Index Value", "nse.nsefo.broadcast.nnfbcast.v9.50.lowindexvalue", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.low_price = ProtoField.new("Low Price", "nse.nsefo.broadcast.nnfbcast.v9.50.lowprice", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.low_price_range = ProtoField.new("Low Price Range", "nse.nsefo.broadcast.nnfbcast.v9.50.lowpricerange", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.margin_percentage = ProtoField.new("Margin Percentage", "nse.nsefo.broadcast.nnfbcast.v9.50.marginpercentage", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.market_capitalisation = ProtoField.new("Market Capitalisation", "nse.nsefo.broadcast.nnfbcast.v9.50.marketcapitalisation", ftypes.DOUBLE)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.market_type = ProtoField.new("Market Type", "nse.nsefo.broadcast.nnfbcast.v9.50.markettype", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.mbp_buy = ProtoField.new("Mbp Buy", "nse.nsefo.broadcast.nnfbcast.v9.50.mbpbuy", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.mbp_buys = ProtoField.new("Mbp Buys", "nse.nsefo.broadcast.nnfbcast.v9.50.mbpbuys", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.mbp_information = ProtoField.new("Mbp Information", "nse.nsefo.broadcast.nnfbcast.v9.50.mbpinformation", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.mbp_sell = ProtoField.new("Mbp Sell", "nse.nsefo.broadcast.nnfbcast.v9.50.mbpsell", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.mbp_sells = ProtoField.new("Mbp Sells", "nse.nsefo.broadcast.nnfbcast.v9.50.mbpsells", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.message_length = ProtoField.new("Message Length", "nse.nsefo.broadcast.nnfbcast.v9.50.messagelength", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.mf = ProtoField.new("Mf", "nse.nsefo.broadcast.nnfbcast.v9.50.mf", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.min_fill_qty = ProtoField.new("Min Fill Qty", "nse.nsefo.broadcast.nnfbcast.v9.50.minfillqty", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.minimum_fill = ProtoField.new("Minimum Fill", "nse.nsefo.broadcast.nnfbcast.v9.50.minimumfill", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.minimum_lot_quantity = ProtoField.new("Minimum Lot Quantity", "nse.nsefo.broadcast.nnfbcast.v9.50.minimumlotquantity", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.ms_indices = ProtoField.new("Ms Indices", "nse.nsefo.broadcast.nnfbcast.v9.50.msindices", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.msg_count = ProtoField.new("Msg Count", "nse.nsefo.broadcast.nnfbcast.v9.50.msgcount", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.name = ProtoField.new("Name", "nse.nsefo.broadcast.nnfbcast.v9.50.name", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.net_change_indicator = ProtoField.new("Net Change Indicator", "nse.nsefo.broadcast.nnfbcast.v9.50.netchangeindicator", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.net_id = ProtoField.new("Net Id", "nse.nsefo.broadcast.nnfbcast.v9.50.netid", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.net_price_change_from_closing_price = ProtoField.new("Net Price Change From Closing Price", "nse.nsefo.broadcast.nnfbcast.v9.50.netpricechangefromclosingprice", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.no_delivery_end_date = ProtoField.new("No Delivery End Date", "nse.nsefo.broadcast.nnfbcast.v9.50.nodeliveryenddate", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.no_delivery_start_date = ProtoField.new("No Delivery Start Date", "nse.nsefo.broadcast.nnfbcast.v9.50.nodeliverystartdate", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.no_of_downmoves = ProtoField.new("No Of Downmoves", "nse.nsefo.broadcast.nnfbcast.v9.50.noofdownmoves", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.no_of_orders = ProtoField.new("No Of Orders", "nse.nsefo.broadcast.nnfbcast.v9.50.nooforders", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.no_of_records = ProtoField.new("No Of Records", "nse.nsefo.broadcast.nnfbcast.v9.50.noofrecords", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.no_of_recs = ProtoField.new("No Of Recs", "nse.nsefo.broadcast.nnfbcast.v9.50.noofrecs", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.no_of_upmoves = ProtoField.new("No Of Upmoves", "nse.nsefo.broadcast.nnfbcast.v9.50.noofupmoves", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.no_orders = ProtoField.new("No Orders", "nse.nsefo.broadcast.nnfbcast.v9.50.noorders", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.number_of_orders = ProtoField.new("Number Of Orders", "nse.nsefo.broadcast.nnfbcast.v9.50.numberoforders", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.number_of_packets = ProtoField.new("Number Of Packets", "nse.nsefo.broadcast.nnfbcast.v9.50.numberofpackets", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.number_of_records = ProtoField.new("Number Of Records", "nse.nsefo.broadcast.nnfbcast.v9.50.numberofrecords", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.old_token = ProtoField.new("Old Token", "nse.nsefo.broadcast.nnfbcast.v9.50.oldtoken", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.open_interest_long = ProtoField.new("Open Interest Long", "nse.nsefo.broadcast.nnfbcast.v9.50.openinterestlong", ftypes.INT64)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.open_interest_short = ProtoField.new("Open Interest Short", "nse.nsefo.broadcast.nnfbcast.v9.50.openinterestshort", ftypes.UINT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.open_price = ProtoField.new("Open Price", "nse.nsefo.broadcast.nnfbcast.v9.50.openprice", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.open_price_difference = ProtoField.new("Open Price Difference", "nse.nsefo.broadcast.nnfbcast.v9.50.openpricedifference", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.opening_index = ProtoField.new("Opening Index", "nse.nsefo.broadcast.nnfbcast.v9.50.openingindex", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.opening_price = ProtoField.new("Opening Price", "nse.nsefo.broadcast.nnfbcast.v9.50.openingprice", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.option_type = ProtoField.new("Option Type", "nse.nsefo.broadcast.nnfbcast.v9.50.optiontype", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.participant_id = ProtoField.new("Participant Id", "nse.nsefo.broadcast.nnfbcast.v9.50.participantid", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.participant_name = ProtoField.new("Participant Name", "nse.nsefo.broadcast.nnfbcast.v9.50.participantname", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.participant_status = ProtoField.new("Participant Status", "nse.nsefo.broadcast.nnfbcast.v9.50.participantstatus", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.participant_update_date_time = ProtoField.new("Participant Update Date Time", "nse.nsefo.broadcast.nnfbcast.v9.50.participantupdatedatetime", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.participate_in_market_index = ProtoField.new("Participate In Market Index", "nse.nsefo.broadcast.nnfbcast.v9.50.participateinmarketindex", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.percent_change = ProtoField.new("Percent Change", "nse.nsefo.broadcast.nnfbcast.v9.50.percentchange", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.permitted_to_trade = ProtoField.new("Permitted To Trade", "nse.nsefo.broadcast.nnfbcast.v9.50.permittedtotrade", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.pl_allowed = ProtoField.new("Pl Allowed", "nse.nsefo.broadcast.nnfbcast.v9.50.plallowed", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.price = ProtoField.new("Price", "nse.nsefo.broadcast.nnfbcast.v9.50.price", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.qty = ProtoField.new("Qty", "nse.nsefo.broadcast.nnfbcast.v9.50.qty", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.quantity_long = ProtoField.new("Quantity Long", "nse.nsefo.broadcast.nnfbcast.v9.50.quantitylong", ftypes.INT64)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.quantity_short = ProtoField.new("Quantity Short", "nse.nsefo.broadcast.nnfbcast.v9.50.quantityshort", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.re_admission_date = ProtoField.new("Re Admission Date", "nse.nsefo.broadcast.nnfbcast.v9.50.readmissiondate", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.record_date = ProtoField.new("Record Date", "nse.nsefo.broadcast.nnfbcast.v9.50.recorddate", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reference_price = ProtoField.new("Reference Price", "nse.nsefo.broadcast.nnfbcast.v9.50.referenceprice", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.remark = ProtoField.new("Remark", "nse.nsefo.broadcast.nnfbcast.v9.50.remark", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_0 = ProtoField.new("Reserved 0", "nse.nsefo.broadcast.nnfbcast.v9.50.reserved0", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_1 = ProtoField.new("Reserved 1", "nse.nsefo.broadcast.nnfbcast.v9.50.reserved1", ftypes.BYTES)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_10 = ProtoField.new("Reserved 10", "nse.nsefo.broadcast.nnfbcast.v9.50.reserved10", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0200)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_112 = ProtoField.new("Reserved 112", "nse.nsefo.broadcast.nnfbcast.v9.50.reserved112", ftypes.UINT16, nil, base.DEC, 0x0FFF)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_113 = ProtoField.new("Reserved 113", "nse.nsefo.broadcast.nnfbcast.v9.50.reserved113", ftypes.UINT16, nil, base.DEC, 0x1FFF)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_114 = ProtoField.new("Reserved 114", "nse.nsefo.broadcast.nnfbcast.v9.50.reserved114", ftypes.UINT16, nil, base.DEC, 0x3FFF)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_13 = ProtoField.new("Reserved 13", "nse.nsefo.broadcast.nnfbcast.v9.50.reserved13", ftypes.UINT16, nil, base.DEC, 0x0007)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_14 = ProtoField.new("Reserved 14", "nse.nsefo.broadcast.nnfbcast.v9.50.reserved14", ftypes.BYTES)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_17 = ProtoField.new("Reserved 17", "nse.nsefo.broadcast.nnfbcast.v9.50.reserved17", ftypes.UINT8, nil, base.DEC, 0x7F)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_18 = ProtoField.new("Reserved 18", "nse.nsefo.broadcast.nnfbcast.v9.50.reserved18", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_19 = ProtoField.new("Reserved 19", "nse.nsefo.broadcast.nnfbcast.v9.50.reserved19", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_2 = ProtoField.new("Reserved 2", "nse.nsefo.broadcast.nnfbcast.v9.50.reserved2", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_26 = ProtoField.new("Reserved 26", "nse.nsefo.broadcast.nnfbcast.v9.50.reserved26", ftypes.BYTES)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.rights = ProtoField.new("Rights", "nse.nsefo.broadcast.nnfbcast.v9.50.rights", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.sec_info = ProtoField.new("Sec Info", "nse.nsefo.broadcast.nnfbcast.v9.50.secinfo", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.security_eligibility_flags = ProtoField.new("Security Eligibility Flags", "nse.nsefo.broadcast.nnfbcast.v9.50.securityeligibilityflags", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.sell = ProtoField.new("Sell", "nse.nsefo.broadcast.nnfbcast.v9.50.sell", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.sell_price = ProtoField.new("Sell Price", "nse.nsefo.broadcast.nnfbcast.v9.50.sellprice", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.sell_volume_long = ProtoField.new("Sell Volume Long", "nse.nsefo.broadcast.nnfbcast.v9.50.sellvolumelong", ftypes.INT64)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.sell_volume_short = ProtoField.new("Sell Volume Short", "nse.nsefo.broadcast.nnfbcast.v9.50.sellvolumeshort", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.series = ProtoField.new("Series", "nse.nsefo.broadcast.nnfbcast.v9.50.series", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_bcast_destination = ProtoField.new("St Bcast Destination", "nse.nsefo.broadcast.nnfbcast.v9.50.stbcastdestination", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_eligibility_indicators = ProtoField.new("St Eligibility Indicators", "nse.nsefo.broadcast.nnfbcast.v9.50.steligibilityindicators", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_enhncd_market_watch_bcast = ProtoField.new("St Enhncd Market Watch Bcast", "nse.nsefo.broadcast.nnfbcast.v9.50.stenhncdmarketwatchbcast", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_enhncd_mkt_wise_info = ProtoField.new("St Enhncd Mkt Wise Info", "nse.nsefo.broadcast.nnfbcast.v9.50.stenhncdmktwiseinfo", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_enhncd_ticker_index_info = ProtoField.new("St Enhncd Ticker Index Info", "nse.nsefo.broadcast.nnfbcast.v9.50.stenhncdtickerindexinfo", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_indicator = ProtoField.new("St Indicator", "nse.nsefo.broadcast.nnfbcast.v9.50.stindicator", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_interactive_mbo_data = ProtoField.new("St Interactive Mbo Data", "nse.nsefo.broadcast.nnfbcast.v9.50.stinteractivembodata", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_market_watch_bcast = ProtoField.new("St Market Watch Bcast", "nse.nsefo.broadcast.nnfbcast.v9.50.stmarketwatchbcast", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_mbo_info = ProtoField.new("St Mbo Info", "nse.nsefo.broadcast.nnfbcast.v9.50.stmboinfo", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_mbo_mbp_terms = ProtoField.new("St Mbo Mbp Terms", "nse.nsefo.broadcast.nnfbcast.v9.50.stmbombpterms", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_mbp_info = ProtoField.new("St Mbp Info", "nse.nsefo.broadcast.nnfbcast.v9.50.stmbpinfo", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_mkt_wise_info = ProtoField.new("St Mkt Wise Info", "nse.nsefo.broadcast.nnfbcast.v9.50.stmktwiseinfo", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_purpose = ProtoField.new("St Purpose", "nse.nsefo.broadcast.nnfbcast.v9.50.stpurpose", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_sec_eligibility_per_mkt = ProtoField.new("St Sec Eligibility Per Mkt", "nse.nsefo.broadcast.nnfbcast.v9.50.stseceligibilitypermkt", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_sec_status_per_market = ProtoField.new("St Sec Status Per Market", "nse.nsefo.broadcast.nnfbcast.v9.50.stsecstatuspermarket", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_ticker_index_info = ProtoField.new("St Ticker Index Info", "nse.nsefo.broadcast.nnfbcast.v9.50.sttickerindexinfo", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.status = ProtoField.new("Status", "nse.nsefo.broadcast.nnfbcast.v9.50.status", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.strike_price = ProtoField.new("Strike Price", "nse.nsefo.broadcast.nnfbcast.v9.50.strikeprice", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.symbol = ProtoField.new("Symbol", "nse.nsefo.broadcast.nnfbcast.v9.50.symbol", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.tandem = ProtoField.new("Tandem", "nse.nsefo.broadcast.nnfbcast.v9.50.tandem", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.terms_aon = ProtoField.new("Terms Aon", "nse.nsefo.broadcast.nnfbcast.v9.50.termsaon", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.tick_size = ProtoField.new("Tick Size", "nse.nsefo.broadcast.nnfbcast.v9.50.ticksize", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.time_stamp_2 = ProtoField.new("Time Stamp 2", "nse.nsefo.broadcast.nnfbcast.v9.50.timestamp2", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.token = ProtoField.new("Token", "nse.nsefo.broadcast.nnfbcast.v9.50.token", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.token_1 = ProtoField.new("Token 1", "nse.nsefo.broadcast.nnfbcast.v9.50.token1", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.token_2 = ProtoField.new("Token 2", "nse.nsefo.broadcast.nnfbcast.v9.50.token2", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.token_and_eligibility = ProtoField.new("Token And Eligibility", "nse.nsefo.broadcast.nnfbcast.v9.50.tokenandeligibility", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.token_and_ref_price = ProtoField.new("Token And Ref Price", "nse.nsefo.broadcast.nnfbcast.v9.50.tokenandrefprice", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.token_no = ProtoField.new("Token No", "nse.nsefo.broadcast.nnfbcast.v9.50.tokenno", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.token_number = ProtoField.new("Token Number", "nse.nsefo.broadcast.nnfbcast.v9.50.tokennumber", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.total_buy_quantity_double = ProtoField.new("Total Buy Quantity Double", "nse.nsefo.broadcast.nnfbcast.v9.50.totalbuyquantitydouble", ftypes.DOUBLE)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.total_buy_quantity_long = ProtoField.new("Total Buy Quantity Long", "nse.nsefo.broadcast.nnfbcast.v9.50.totalbuyquantitylong", ftypes.INT64)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.total_order_volume = ProtoField.new("Total Order Volume", "nse.nsefo.broadcast.nnfbcast.v9.50.totalordervolume", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.total_order_volume_buy = ProtoField.new("Total Order Volume Buy", "nse.nsefo.broadcast.nnfbcast.v9.50.totalordervolumebuy", ftypes.DOUBLE)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.total_order_volume_sell = ProtoField.new("Total Order Volume Sell", "nse.nsefo.broadcast.nnfbcast.v9.50.totalordervolumesell", ftypes.DOUBLE)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.total_sell_quantity_double = ProtoField.new("Total Sell Quantity Double", "nse.nsefo.broadcast.nnfbcast.v9.50.totalsellquantitydouble", ftypes.DOUBLE)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.total_sell_quantity_long = ProtoField.new("Total Sell Quantity Long", "nse.nsefo.broadcast.nnfbcast.v9.50.totalsellquantitylong", ftypes.INT64)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.total_traded_value = ProtoField.new("Total Traded Value", "nse.nsefo.broadcast.nnfbcast.v9.50.totaltradedvalue", ftypes.DOUBLE)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.trade_number = ProtoField.new("Trade Number", "nse.nsefo.broadcast.nnfbcast.v9.50.tradenumber", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.trade_price = ProtoField.new("Trade Price", "nse.nsefo.broadcast.nnfbcast.v9.50.tradeprice", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.trade_volume = ProtoField.new("Trade Volume", "nse.nsefo.broadcast.nnfbcast.v9.50.tradevolume", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.traded_volume_long = ProtoField.new("Traded Volume Long", "nse.nsefo.broadcast.nnfbcast.v9.50.tradedvolumelong", ftypes.INT64)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.traded_volume_short = ProtoField.new("Traded Volume Short", "nse.nsefo.broadcast.nnfbcast.v9.50.tradedvolumeshort", ftypes.UINT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.trader_id = ProtoField.new("Trader Id", "nse.nsefo.broadcast.nnfbcast.v9.50.traderid", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.trader_work_station = ProtoField.new("Trader Work Station", "nse.nsefo.broadcast.nnfbcast.v9.50.traderworkstation", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.trading_status = ProtoField.new("Trading Status", "nse.nsefo.broadcast.nnfbcast.v9.50.tradingstatus", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.transaction_code = ProtoField.new("Transaction Code", "nse.nsefo.broadcast.nnfbcast.v9.50.transactioncode", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.turnover_body = ProtoField.new("Turnover Body", "nse.nsefo.broadcast.nnfbcast.v9.50.turnoverbody", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.turnover_limit_exceeded_body = ProtoField.new("Turnover Limit Exceeded Body", "nse.nsefo.broadcast.nnfbcast.v9.50.turnoverlimitexceededbody", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.turnover_vct_messages_body = ProtoField.new("Turnover Vct Messages Body", "nse.nsefo.broadcast.nnfbcast.v9.50.turnovervctmessagesbody", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.vol_trd_today_excd_indc = ProtoField.new("Vol Trd Today Excd Indc", "nse.nsefo.broadcast.nnfbcast.v9.50.voltrdtodayexcdindc", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.volume_long = ProtoField.new("Volume Long", "nse.nsefo.broadcast.nnfbcast.v9.50.volumelong", ftypes.INT64)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.volume_short = ProtoField.new("Volume Short", "nse.nsefo.broadcast.nnfbcast.v9.50.volumeshort", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.volume_traded_today_long = ProtoField.new("Volume Traded Today Long", "nse.nsefo.broadcast.nnfbcast.v9.50.volumetradedtodaylong", ftypes.INT64)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.volume_traded_today_short = ProtoField.new("Volume Traded Today Short", "nse.nsefo.broadcast.nnfbcast.v9.50.volumetradedtodayshort", ftypes.UINT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.warning_quantity = ProtoField.new("Warning Quantity", "nse.nsefo.broadcast.nnfbcast.v9.50.warningquantity", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.warning_type = ProtoField.new("Warning Type", "nse.nsefo.broadcast.nnfbcast.v9.50.warningtype", ftypes.INT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.yearly_high = ProtoField.new("Yearly High", "nse.nsefo.broadcast.nnfbcast.v9.50.yearlyhigh", ftypes.INT32)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.yearly_low = ProtoField.new("Yearly Low", "nse.nsefo.broadcast.nnfbcast.v9.50.yearlylow", ftypes.INT32)

-- Nse NseFo Broadcast NnfBcast 9.50 Framing
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.packed_packet = ProtoField.new("Packed Packet", "nse.nsefo.broadcast.nnfbcast.v9.50.packedpacket", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.packet = ProtoField.new("Packet", "nse.nsefo.broadcast.nnfbcast.v9.50.packet", ftypes.STRING)

-- Nse NseFo Broadcast 9.50 Application Messages
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.asset_open_interest_message = ProtoField.new("Asset Open Interest Message", "nse.nsefo.broadcast.nnfbcast.v9.50.assetopeninterestmessage", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.broadcast_journal_vct_message = ProtoField.new("Broadcast Journal Vct Message", "nse.nsefo.broadcast.nnfbcast.v9.50.broadcastjournalvctmessage", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.cas_reference_price_message = ProtoField.new("Cas Reference Price Message", "nse.nsefo.broadcast.nnfbcast.v9.50.casreferencepricemessage", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhanced_asset_open_interest_message = ProtoField.new("Enhanced Asset Open Interest Message", "nse.nsefo.broadcast.nnfbcast.v9.50.enhancedassetopeninterestmessage", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhanced_market_watch_round_robin_message = ProtoField.new("Enhanced Market Watch Round Robin Message", "nse.nsefo.broadcast.nnfbcast.v9.50.enhancedmarketwatchroundrobinmessage", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhanced_only_market_by_price_message = ProtoField.new("Enhanced Only Market By Price Message", "nse.nsefo.broadcast.nnfbcast.v9.50.enhancedonlymarketbypricemessage", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhanced_spread_market_by_price_delta_message = ProtoField.new("Enhanced Spread Market By Price Delta Message", "nse.nsefo.broadcast.nnfbcast.v9.50.enhancedspreadmarketbypricedeltamessage", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhanced_ticker_and_market_index_message = ProtoField.new("Enhanced Ticker And Market Index Message", "nse.nsefo.broadcast.nnfbcast.v9.50.enhancedtickerandmarketindexmessage", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.indices_message = ProtoField.new("Indices Message", "nse.nsefo.broadcast.nnfbcast.v9.50.indicesmessage", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.industry_index_update_message = ProtoField.new("Industry Index Update Message", "nse.nsefo.broadcast.nnfbcast.v9.50.industryindexupdatemessage", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.instrument_master_change_message = ProtoField.new("Instrument Master Change Message", "nse.nsefo.broadcast.nnfbcast.v9.50.instrumentmasterchangemessage", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.limit_price_protection_range_message = ProtoField.new("Limit Price Protection Range Message", "nse.nsefo.broadcast.nnfbcast.v9.50.limitpriceprotectionrangemessage", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.market_by_order_and_market_by_price_message = ProtoField.new("Market By Order And Market By Price Message", "nse.nsefo.broadcast.nnfbcast.v9.50.marketbyorderandmarketbypricemessage", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.market_watch_round_robin_message = ProtoField.new("Market Watch Round Robin Message", "nse.nsefo.broadcast.nnfbcast.v9.50.marketwatchroundrobinmessage", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.only_market_by_price_message = ProtoField.new("Only Market By Price Message", "nse.nsefo.broadcast.nnfbcast.v9.50.onlymarketbypricemessage", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.participant_master_change_message = ProtoField.new("Participant Master Change Message", "nse.nsefo.broadcast.nnfbcast.v9.50.participantmasterchangemessage", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.security_master_change_message = ProtoField.new("Security Master Change Message", "nse.nsefo.broadcast.nnfbcast.v9.50.securitymasterchangemessage", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.security_open_price_message = ProtoField.new("Security Open Price Message", "nse.nsefo.broadcast.nnfbcast.v9.50.securityopenpricemessage", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.security_status_change_message = ProtoField.new("Security Status Change Message", "nse.nsefo.broadcast.nnfbcast.v9.50.securitystatuschangemessage", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.spread_market_by_price_delta_message = ProtoField.new("Spread Market By Price Delta Message", "nse.nsefo.broadcast.nnfbcast.v9.50.spreadmarketbypricedeltamessage", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.ticker_and_market_index_message = ProtoField.new("Ticker And Market Index Message", "nse.nsefo.broadcast.nnfbcast.v9.50.tickerandmarketindexmessage", ftypes.STRING)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.turnover_exceeded_message = ProtoField.new("Turnover Exceeded Message", "nse.nsefo.broadcast.nnfbcast.v9.50.turnoverexceededmessage", ftypes.STRING)

-- Nse NseFo Broadcast NnfBcast 9.50 Generated Fields
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.asset_open_interest_index = ProtoField.new("Asset Open Interest Index", "nse.nsefo.broadcast.nnfbcast.v9.50.assetopeninterestindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhncd_interactive_only_mbp_data_index = ProtoField.new("Enhncd Interactive Only Mbp Data Index", "nse.nsefo.broadcast.nnfbcast.v9.50.enhncdinteractiveonlymbpdataindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhncd_mbp_buys_index = ProtoField.new("Enhncd Mbp Buys Index", "nse.nsefo.broadcast.nnfbcast.v9.50.enhncdmbpbuysindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhncd_mbp_information_index = ProtoField.new("Enhncd Mbp Information Index", "nse.nsefo.broadcast.nnfbcast.v9.50.enhncdmbpinformationindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhncd_mbp_sells_index = ProtoField.new("Enhncd Mbp Sells Index", "nse.nsefo.broadcast.nnfbcast.v9.50.enhncdmbpsellsindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhncd_open_interest_index = ProtoField.new("Enhncd Open Interest Index", "nse.nsefo.broadcast.nnfbcast.v9.50.enhncdopeninterestindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.industry_indices_index = ProtoField.new("Industry Indices Index", "nse.nsefo.broadcast.nnfbcast.v9.50.industryindicesindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.interactive_only_mbp_data_index = ProtoField.new("Interactive Only Mbp Data Index", "nse.nsefo.broadcast.nnfbcast.v9.50.interactiveonlymbpdataindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.limit_price_protection_range_detail_index = ProtoField.new("Limit Price Protection Range Detail Index", "nse.nsefo.broadcast.nnfbcast.v9.50.limitpriceprotectionrangedetailindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.mbp_buys_index = ProtoField.new("Mbp Buys Index", "nse.nsefo.broadcast.nnfbcast.v9.50.mbpbuysindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.mbp_information_index = ProtoField.new("Mbp Information Index", "nse.nsefo.broadcast.nnfbcast.v9.50.mbpinformationindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.mbp_sells_index = ProtoField.new("Mbp Sells Index", "nse.nsefo.broadcast.nnfbcast.v9.50.mbpsellsindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.ms_indices_index = ProtoField.new("Ms Indices Index", "nse.nsefo.broadcast.nnfbcast.v9.50.msindicesindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.packed_packet_index = ProtoField.new("Packed Packet Index", "nse.nsefo.broadcast.nnfbcast.v9.50.packedpacketindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_enhncd_market_watch_bcast_index = ProtoField.new("St Enhncd Market Watch Bcast Index", "nse.nsefo.broadcast.nnfbcast.v9.50.stenhncdmarketwatchbcastindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_enhncd_mkt_wise_info_index = ProtoField.new("St Enhncd Mkt Wise Info Index", "nse.nsefo.broadcast.nnfbcast.v9.50.stenhncdmktwiseinfoindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_enhncd_ticker_index_info_index = ProtoField.new("St Enhncd Ticker Index Info Index", "nse.nsefo.broadcast.nnfbcast.v9.50.stenhncdtickerindexinfoindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_market_watch_bcast_index = ProtoField.new("St Market Watch Bcast Index", "nse.nsefo.broadcast.nnfbcast.v9.50.stmarketwatchbcastindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_mbo_info_index = ProtoField.new("St Mbo Info Index", "nse.nsefo.broadcast.nnfbcast.v9.50.stmboinfoindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_mbp_info_index = ProtoField.new("St Mbp Info Index", "nse.nsefo.broadcast.nnfbcast.v9.50.stmbpinfoindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_mkt_wise_info_index = ProtoField.new("St Mkt Wise Info Index", "nse.nsefo.broadcast.nnfbcast.v9.50.stmktwiseinfoindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_sec_eligibility_per_mkt_index = ProtoField.new("St Sec Eligibility Per Mkt Index", "nse.nsefo.broadcast.nnfbcast.v9.50.stseceligibilitypermktindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_sec_status_per_market_index = ProtoField.new("St Sec Status Per Market Index", "nse.nsefo.broadcast.nnfbcast.v9.50.stsecstatuspermarketindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_ticker_index_info_index = ProtoField.new("St Ticker Index Info Index", "nse.nsefo.broadcast.nnfbcast.v9.50.sttickerindexinfoindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.token_and_eligibility_index = ProtoField.new("Token And Eligibility Index", "nse.nsefo.broadcast.nnfbcast.v9.50.tokenandeligibilityindex", ftypes.UINT16)
omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.token_and_ref_price_index = ProtoField.new("Token And Ref Price Index", "nse.nsefo.broadcast.nnfbcast.v9.50.tokenandrefpriceindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nse NseFo Broadcast NnfBcast 9.50 Element Dissection Options
show.structs = true
show.application_messages = true
show.indexes = true

-- Register Nse NseFo Broadcast NnfBcast 9.50 Show Options
omi_nse_nsefo_broadcast_nnfbcast_v9_50.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nse_nsefo_broadcast_nnfbcast_v9_50.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nse_nsefo_broadcast_nnfbcast_v9_50.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_nse_nsefo_broadcast_nnfbcast_v9_50.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nse_nsefo_broadcast_nnfbcast_v9_50.prefs.show_application_messages then
    show.application_messages = omi_nse_nsefo_broadcast_nnfbcast_v9_50.prefs.show_application_messages
  end
  if show.structs ~= omi_nse_nsefo_broadcast_nnfbcast_v9_50.prefs.show_structs then
    show.structs = omi_nse_nsefo_broadcast_nnfbcast_v9_50.prefs.show_structs
  end
  if show.indexes ~= omi_nse_nsefo_broadcast_nnfbcast_v9_50.prefs.show_indexes then
    show.indexes = omi_nse_nsefo_broadcast_nnfbcast_v9_50.prefs.show_indexes
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
-- Nse NseFo Broadcast NnfBcast 9.50 Fields
-----------------------------------------------------------------------

-- Action Code
nse_nsefo_broadcast_nnfbcast_v9_50.action_code = {}

-- Size: Action Code
nse_nsefo_broadcast_nnfbcast_v9_50.action_code.size = 3

-- Display: Action Code
nse_nsefo_broadcast_nnfbcast_v9_50.action_code.display = function(value)
  if value == "SYS" then
    return "Action Code: System (SYS)"
  end
  if value == "LIS" then
    return "Action Code: Listing (LIS)"
  end
  if value == "MWL" then
    return "Action Code: Market Wide Oi Limit Message (MWL)"
  end

  return "Action Code: Unknown("..value..")"
end

-- Dissect: Action Code
nse_nsefo_broadcast_nnfbcast_v9_50.action_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.action_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.action_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.action_code, range, value, display)

  return offset + length, value
end

-- Alpha Char
nse_nsefo_broadcast_nnfbcast_v9_50.alpha_char = {}

-- Size: Alpha Char
nse_nsefo_broadcast_nnfbcast_v9_50.alpha_char.size = 2

-- Display: Alpha Char
nse_nsefo_broadcast_nnfbcast_v9_50.alpha_char.display = function(value)
  return "Alpha Char: "..value
end

-- Dissect: Alpha Char
nse_nsefo_broadcast_nnfbcast_v9_50.alpha_char.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.alpha_char.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.alpha_char.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.alpha_char, range, value, display)

  return offset + length, value
end

-- Asset Instrument
nse_nsefo_broadcast_nnfbcast_v9_50.asset_instrument = {}

-- Size: Asset Instrument
nse_nsefo_broadcast_nnfbcast_v9_50.asset_instrument.size = 6

-- Display: Asset Instrument
nse_nsefo_broadcast_nnfbcast_v9_50.asset_instrument.display = function(value)
  return "Asset Instrument: "..value
end

-- Dissect: Asset Instrument
nse_nsefo_broadcast_nnfbcast_v9_50.asset_instrument.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.asset_instrument.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.asset_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.asset_instrument, range, value, display)

  return offset + length, value
end

-- Asset Name
nse_nsefo_broadcast_nnfbcast_v9_50.asset_name = {}

-- Size: Asset Name
nse_nsefo_broadcast_nnfbcast_v9_50.asset_name.size = 10

-- Display: Asset Name
nse_nsefo_broadcast_nnfbcast_v9_50.asset_name.display = function(value)
  return "Asset Name: "..value
end

-- Dissect: Asset Name
nse_nsefo_broadcast_nnfbcast_v9_50.asset_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.asset_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.asset_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.asset_name, range, value, display)

  return offset + length, value
end

-- Asset Token
nse_nsefo_broadcast_nnfbcast_v9_50.asset_token = {}

-- Size: Asset Token
nse_nsefo_broadcast_nnfbcast_v9_50.asset_token.size = 4

-- Display: Asset Token
nse_nsefo_broadcast_nnfbcast_v9_50.asset_token.display = function(value)
  return "Asset Token: "..value
end

-- Dissect: Asset Token
nse_nsefo_broadcast_nnfbcast_v9_50.asset_token.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.asset_token.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.asset_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.asset_token, range, value, display)

  return offset + length, value
end

-- Auction Number
nse_nsefo_broadcast_nnfbcast_v9_50.auction_number = {}

-- Size: Auction Number
nse_nsefo_broadcast_nnfbcast_v9_50.auction_number.size = 2

-- Display: Auction Number
nse_nsefo_broadcast_nnfbcast_v9_50.auction_number.display = function(value)
  return "Auction Number: "..value
end

-- Dissect: Auction Number
nse_nsefo_broadcast_nnfbcast_v9_50.auction_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.auction_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.auction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.auction_number, range, value, display)

  return offset + length, value
end

-- Auction Price
nse_nsefo_broadcast_nnfbcast_v9_50.auction_price = {}

-- Size: Auction Price
nse_nsefo_broadcast_nnfbcast_v9_50.auction_price.size = 4

-- Display: Auction Price
nse_nsefo_broadcast_nnfbcast_v9_50.auction_price.display = function(value)
  return "Auction Price: "..value
end

-- Dissect: Auction Price
nse_nsefo_broadcast_nnfbcast_v9_50.auction_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.auction_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.auction_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.auction_price, range, value, display)

  return offset + length, value
end

-- Auction Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.auction_quantity = {}

-- Size: Auction Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.auction_quantity.size = 4

-- Display: Auction Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.auction_quantity.display = function(value)
  return "Auction Quantity: "..value
end

-- Dissect: Auction Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.auction_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.auction_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.auction_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.auction_quantity, range, value, display)

  return offset + length, value
end

-- Auction Status
nse_nsefo_broadcast_nnfbcast_v9_50.auction_status = {}

-- Size: Auction Status
nse_nsefo_broadcast_nnfbcast_v9_50.auction_status.size = 2

-- Display: Auction Status
nse_nsefo_broadcast_nnfbcast_v9_50.auction_status.display = function(value)
  if value == 0 then
    return "Auction Status: Pre Open (0)"
  end
  if value == 1 then
    return "Auction Status: Open (1)"
  end
  if value == 2 then
    return "Auction Status: Closed (2)"
  end
  if value == 3 then
    return "Auction Status: Pre Open Ended (3)"
  end
  if value == 4 then
    return "Auction Status: Postclose (4)"
  end

  return "Auction Status: Unknown("..value..")"
end

-- Dissect: Auction Status
nse_nsefo_broadcast_nnfbcast_v9_50.auction_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.auction_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.auction_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.auction_status, range, value, display)

  return offset + length, value
end

-- Average Trade Price
nse_nsefo_broadcast_nnfbcast_v9_50.average_trade_price = {}

-- Size: Average Trade Price
nse_nsefo_broadcast_nnfbcast_v9_50.average_trade_price.size = 4

-- Display: Average Trade Price
nse_nsefo_broadcast_nnfbcast_v9_50.average_trade_price.display = function(value)
  return "Average Trade Price: "..value
end

-- Dissect: Average Trade Price
nse_nsefo_broadcast_nnfbcast_v9_50.average_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.average_trade_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.average_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.average_trade_price, range, value, display)

  return offset + length, value
end

-- Base Price
nse_nsefo_broadcast_nnfbcast_v9_50.base_price = {}

-- Size: Base Price
nse_nsefo_broadcast_nnfbcast_v9_50.base_price.size = 4

-- Display: Base Price
nse_nsefo_broadcast_nnfbcast_v9_50.base_price.display = function(value)
  return "Base Price: "..value
end

-- Dissect: Base Price
nse_nsefo_broadcast_nnfbcast_v9_50.base_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.base_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.base_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.base_price, range, value, display)

  return offset + length, value
end

-- Bb Buy Sell Flag
nse_nsefo_broadcast_nnfbcast_v9_50.bb_buy_sell_flag = {}

-- Size: Bb Buy Sell Flag
nse_nsefo_broadcast_nnfbcast_v9_50.bb_buy_sell_flag.size = 2

-- Display: Bb Buy Sell Flag
nse_nsefo_broadcast_nnfbcast_v9_50.bb_buy_sell_flag.display = function(value)
  return "Bb Buy Sell Flag: "..value
end

-- Dissect: Bb Buy Sell Flag
nse_nsefo_broadcast_nnfbcast_v9_50.bb_buy_sell_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.bb_buy_sell_flag.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.bb_buy_sell_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.bb_buy_sell_flag, range, value, display)

  return offset + length, value
end

-- Bb Total Buy Flag
nse_nsefo_broadcast_nnfbcast_v9_50.bb_total_buy_flag = {}

-- Size: Bb Total Buy Flag
nse_nsefo_broadcast_nnfbcast_v9_50.bb_total_buy_flag.size = 2

-- Display: Bb Total Buy Flag
nse_nsefo_broadcast_nnfbcast_v9_50.bb_total_buy_flag.display = function(value)
  return "Bb Total Buy Flag: "..value
end

-- Dissect: Bb Total Buy Flag
nse_nsefo_broadcast_nnfbcast_v9_50.bb_total_buy_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.bb_total_buy_flag.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.bb_total_buy_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.bb_total_buy_flag, range, value, display)

  return offset + length, value
end

-- Bb Total Sell Flag
nse_nsefo_broadcast_nnfbcast_v9_50.bb_total_sell_flag = {}

-- Size: Bb Total Sell Flag
nse_nsefo_broadcast_nnfbcast_v9_50.bb_total_sell_flag.size = 2

-- Display: Bb Total Sell Flag
nse_nsefo_broadcast_nnfbcast_v9_50.bb_total_sell_flag.display = function(value)
  return "Bb Total Sell Flag: "..value
end

-- Dissect: Bb Total Sell Flag
nse_nsefo_broadcast_nnfbcast_v9_50.bb_total_sell_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.bb_total_sell_flag.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.bb_total_sell_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.bb_total_sell_flag, range, value, display)

  return offset + length, value
end

-- Bc Seq No
nse_nsefo_broadcast_nnfbcast_v9_50.bc_seq_no = {}

-- Size: Bc Seq No
nse_nsefo_broadcast_nnfbcast_v9_50.bc_seq_no.size = 4

-- Display: Bc Seq No
nse_nsefo_broadcast_nnfbcast_v9_50.bc_seq_no.display = function(value)
  return "Bc Seq No: "..value
end

-- Dissect: Bc Seq No
nse_nsefo_broadcast_nnfbcast_v9_50.bc_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.bc_seq_no.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.bc_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.bc_seq_no, range, value, display)

  return offset + length, value
end

-- Bcast Market Type
nse_nsefo_broadcast_nnfbcast_v9_50.bcast_market_type = {}

-- Size: Bcast Market Type
nse_nsefo_broadcast_nnfbcast_v9_50.bcast_market_type.size = 1

-- Display: Bcast Market Type
nse_nsefo_broadcast_nnfbcast_v9_50.bcast_market_type.display = function(value)
  return "Bcast Market Type: "..value
end

-- Dissect: Bcast Market Type
nse_nsefo_broadcast_nnfbcast_v9_50.bcast_market_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.bcast_market_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.bcast_market_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.bcast_market_type, range, value, display)

  return offset + length, value
end

-- Bcast Reserved
nse_nsefo_broadcast_nnfbcast_v9_50.bcast_reserved = {}

-- Size: Bcast Reserved
nse_nsefo_broadcast_nnfbcast_v9_50.bcast_reserved.size = 7

-- Display: Bcast Reserved
nse_nsefo_broadcast_nnfbcast_v9_50.bcast_reserved.display = function(value)
  return "Bcast Reserved: "..value
end

-- Dissect: Bcast Reserved
nse_nsefo_broadcast_nnfbcast_v9_50.bcast_reserved.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.bcast_reserved.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.bcast_reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.bcast_reserved, range, value, display)

  return offset + length, value
end

-- Board Lot Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.board_lot_quantity = {}

-- Size: Board Lot Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.board_lot_quantity.size = 4

-- Display: Board Lot Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.board_lot_quantity.display = function(value)
  return "Board Lot Quantity: "..value
end

-- Dissect: Board Lot Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.board_lot_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.board_lot_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.board_lot_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.board_lot_quantity, range, value, display)

  return offset + length, value
end

-- Book Closure End Date
nse_nsefo_broadcast_nnfbcast_v9_50.book_closure_end_date = {}

-- Size: Book Closure End Date
nse_nsefo_broadcast_nnfbcast_v9_50.book_closure_end_date.size = 4

-- Display: Book Closure End Date
nse_nsefo_broadcast_nnfbcast_v9_50.book_closure_end_date.display = function(value)
  return "Book Closure End Date: "..value
end

-- Dissect: Book Closure End Date
nse_nsefo_broadcast_nnfbcast_v9_50.book_closure_end_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.book_closure_end_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.book_closure_end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.book_closure_end_date, range, value, display)

  return offset + length, value
end

-- Book Closure Start Date
nse_nsefo_broadcast_nnfbcast_v9_50.book_closure_start_date = {}

-- Size: Book Closure Start Date
nse_nsefo_broadcast_nnfbcast_v9_50.book_closure_start_date.size = 4

-- Display: Book Closure Start Date
nse_nsefo_broadcast_nnfbcast_v9_50.book_closure_start_date.display = function(value)
  return "Book Closure Start Date: "..value
end

-- Dissect: Book Closure Start Date
nse_nsefo_broadcast_nnfbcast_v9_50.book_closure_start_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.book_closure_start_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.book_closure_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.book_closure_start_date, range, value, display)

  return offset + length, value
end

-- Book Type
nse_nsefo_broadcast_nnfbcast_v9_50.book_type = {}

-- Size: Book Type
nse_nsefo_broadcast_nnfbcast_v9_50.book_type.size = 2

-- Display: Book Type
nse_nsefo_broadcast_nnfbcast_v9_50.book_type.display = function(value)
  if value == 1 then
    return "Book Type: Regular Lot Order (1)"
  end
  if value == 2 then
    return "Book Type: Special Terms Order (2)"
  end
  if value == 3 then
    return "Book Type: Stop Loss Mit Order (3)"
  end
  if value == 4 then
    return "Book Type: Negotiated Order (4)"
  end
  if value == 5 then
    return "Book Type: Odd Lot Order (5)"
  end
  if value == 6 then
    return "Book Type: Spot Order (6)"
  end
  if value == 7 then
    return "Book Type: Auction Order (7)"
  end

  return "Book Type: Unknown("..value..")"
end

-- Dissect: Book Type
nse_nsefo_broadcast_nnfbcast_v9_50.book_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.book_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.book_type, range, value, display)

  return offset + length, value
end

-- Branch Number
nse_nsefo_broadcast_nnfbcast_v9_50.branch_number = {}

-- Size: Branch Number
nse_nsefo_broadcast_nnfbcast_v9_50.branch_number.size = 2

-- Display: Branch Number
nse_nsefo_broadcast_nnfbcast_v9_50.branch_number.display = function(value)
  return "Branch Number: "..value
end

-- Dissect: Branch Number
nse_nsefo_broadcast_nnfbcast_v9_50.branch_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.branch_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.branch_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.branch_number, range, value, display)

  return offset + length, value
end

-- Broadcast Message
nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_message = {}

-- Size: Broadcast Message
nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_message.size = 239

-- Display: Broadcast Message
nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_message.display = function(value)
  return "Broadcast Message: "..value
end

-- Dissect: Broadcast Message
nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_message.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_message.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.broadcast_message, range, value, display)

  return offset + length, value
end

-- Broadcast Message Length
nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_message_length = {}

-- Size: Broadcast Message Length
nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_message_length.size = 2

-- Display: Broadcast Message Length
nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_message_length.display = function(value)
  return "Broadcast Message Length: "..value
end

-- Dissect: Broadcast Message Length
nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.broadcast_message_length, range, value, display)

  return offset + length, value
end

-- Broker Code
nse_nsefo_broadcast_nnfbcast_v9_50.broker_code = {}

-- Size: Broker Code
nse_nsefo_broadcast_nnfbcast_v9_50.broker_code.size = 5

-- Display: Broker Code
nse_nsefo_broadcast_nnfbcast_v9_50.broker_code.display = function(value)
  return "Broker Code: "..value
end

-- Dissect: Broker Code
nse_nsefo_broadcast_nnfbcast_v9_50.broker_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.broker_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.broker_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.broker_code, range, value, display)

  return offset + length, value
end

-- Broker Number
nse_nsefo_broadcast_nnfbcast_v9_50.broker_number = {}

-- Size: Broker Number
nse_nsefo_broadcast_nnfbcast_v9_50.broker_number.size = 5

-- Display: Broker Number
nse_nsefo_broadcast_nnfbcast_v9_50.broker_number.display = function(value)
  return "Broker Number: "..value
end

-- Dissect: Broker Number
nse_nsefo_broadcast_nnfbcast_v9_50.broker_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.broker_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.broker_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.broker_number, range, value, display)

  return offset + length, value
end

-- Buy Price
nse_nsefo_broadcast_nnfbcast_v9_50.buy_price = {}

-- Size: Buy Price
nse_nsefo_broadcast_nnfbcast_v9_50.buy_price.size = 4

-- Display: Buy Price
nse_nsefo_broadcast_nnfbcast_v9_50.buy_price.display = function(value)
  return "Buy Price: "..value
end

-- Dissect: Buy Price
nse_nsefo_broadcast_nnfbcast_v9_50.buy_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.buy_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.buy_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.buy_price, range, value, display)

  return offset + length, value
end

-- Buy Volume Long
nse_nsefo_broadcast_nnfbcast_v9_50.buy_volume_long = {}

-- Size: Buy Volume Long
nse_nsefo_broadcast_nnfbcast_v9_50.buy_volume_long.size = 8

-- Display: Buy Volume Long
nse_nsefo_broadcast_nnfbcast_v9_50.buy_volume_long.display = function(value)
  return "Buy Volume Long: "..value
end

-- Dissect: Buy Volume Long
nse_nsefo_broadcast_nnfbcast_v9_50.buy_volume_long.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.buy_volume_long.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.buy_volume_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.buy_volume_long, range, value, display)

  return offset + length, value
end

-- Buy Volume Short
nse_nsefo_broadcast_nnfbcast_v9_50.buy_volume_short = {}

-- Size: Buy Volume Short
nse_nsefo_broadcast_nnfbcast_v9_50.buy_volume_short.size = 4

-- Display: Buy Volume Short
nse_nsefo_broadcast_nnfbcast_v9_50.buy_volume_short.display = function(value)
  return "Buy Volume Short: "..value
end

-- Dissect: Buy Volume Short
nse_nsefo_broadcast_nnfbcast_v9_50.buy_volume_short.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.buy_volume_short.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.buy_volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.buy_volume_short, range, value, display)

  return offset + length, value
end

-- Ca Level
nse_nsefo_broadcast_nnfbcast_v9_50.ca_level = {}

-- Size: Ca Level
nse_nsefo_broadcast_nnfbcast_v9_50.ca_level.size = 2

-- Display: Ca Level
nse_nsefo_broadcast_nnfbcast_v9_50.ca_level.display = function(value)
  return "Ca Level: "..value
end

-- Dissect: Ca Level
nse_nsefo_broadcast_nnfbcast_v9_50.ca_level.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.ca_level.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.ca_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.ca_level, range, value, display)

  return offset + length, value
end

-- Closing Index
nse_nsefo_broadcast_nnfbcast_v9_50.closing_index = {}

-- Size: Closing Index
nse_nsefo_broadcast_nnfbcast_v9_50.closing_index.size = 4

-- Display: Closing Index
nse_nsefo_broadcast_nnfbcast_v9_50.closing_index.display = function(value)
  return "Closing Index: "..value
end

-- Dissect: Closing Index
nse_nsefo_broadcast_nnfbcast_v9_50.closing_index.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.closing_index.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.closing_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.closing_index, range, value, display)

  return offset + length, value
end

-- Closing Price
nse_nsefo_broadcast_nnfbcast_v9_50.closing_price = {}

-- Size: Closing Price
nse_nsefo_broadcast_nnfbcast_v9_50.closing_price.size = 4

-- Display: Closing Price
nse_nsefo_broadcast_nnfbcast_v9_50.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
nse_nsefo_broadcast_nnfbcast_v9_50.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.closing_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Compression Length
nse_nsefo_broadcast_nnfbcast_v9_50.compression_length = {}

-- Size: Compression Length
nse_nsefo_broadcast_nnfbcast_v9_50.compression_length.size = 2

-- Display: Compression Length
nse_nsefo_broadcast_nnfbcast_v9_50.compression_length.display = function(value)
  return "Compression Length: "..value
end

-- Dissect: Compression Length
nse_nsefo_broadcast_nnfbcast_v9_50.compression_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.compression_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.compression_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.compression_length, range, value, display)

  return offset + length, value
end

-- Counter Broker Code
nse_nsefo_broadcast_nnfbcast_v9_50.counter_broker_code = {}

-- Size: Counter Broker Code
nse_nsefo_broadcast_nnfbcast_v9_50.counter_broker_code.size = 5

-- Display: Counter Broker Code
nse_nsefo_broadcast_nnfbcast_v9_50.counter_broker_code.display = function(value)
  return "Counter Broker Code: "..value
end

-- Dissect: Counter Broker Code
nse_nsefo_broadcast_nnfbcast_v9_50.counter_broker_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.counter_broker_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.counter_broker_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.counter_broker_code, range, value, display)

  return offset + length, value
end

-- Credit Rating
nse_nsefo_broadcast_nnfbcast_v9_50.credit_rating = {}

-- Size: Credit Rating
nse_nsefo_broadcast_nnfbcast_v9_50.credit_rating.size = 12

-- Display: Credit Rating
nse_nsefo_broadcast_nnfbcast_v9_50.credit_rating.display = function(value)
  return "Credit Rating: "..value
end

-- Dissect: Credit Rating
nse_nsefo_broadcast_nnfbcast_v9_50.credit_rating.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.credit_rating.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.credit_rating.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.credit_rating, range, value, display)

  return offset + length, value
end

-- Current Oi Long
nse_nsefo_broadcast_nnfbcast_v9_50.current_oi_long = {}

-- Size: Current Oi Long
nse_nsefo_broadcast_nnfbcast_v9_50.current_oi_long.size = 8

-- Display: Current Oi Long
nse_nsefo_broadcast_nnfbcast_v9_50.current_oi_long.display = function(value)
  return "Current Oi Long: "..value
end

-- Dissect: Current Oi Long
nse_nsefo_broadcast_nnfbcast_v9_50.current_oi_long.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.current_oi_long.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.current_oi_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.current_oi_long, range, value, display)

  return offset + length, value
end

-- Current Oi Short
nse_nsefo_broadcast_nnfbcast_v9_50.current_oi_short = {}

-- Size: Current Oi Short
nse_nsefo_broadcast_nnfbcast_v9_50.current_oi_short.size = 4

-- Display: Current Oi Short
nse_nsefo_broadcast_nnfbcast_v9_50.current_oi_short.display = function(value)
  return "Current Oi Short: "..value
end

-- Dissect: Current Oi Short
nse_nsefo_broadcast_nnfbcast_v9_50.current_oi_short.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.current_oi_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.current_oi_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.current_oi_short, range, value, display)

  return offset + length, value
end

-- Day Hi Oi Long
nse_nsefo_broadcast_nnfbcast_v9_50.day_hi_oi_long = {}

-- Size: Day Hi Oi Long
nse_nsefo_broadcast_nnfbcast_v9_50.day_hi_oi_long.size = 8

-- Display: Day Hi Oi Long
nse_nsefo_broadcast_nnfbcast_v9_50.day_hi_oi_long.display = function(value)
  return "Day Hi Oi Long: "..value
end

-- Dissect: Day Hi Oi Long
nse_nsefo_broadcast_nnfbcast_v9_50.day_hi_oi_long.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.day_hi_oi_long.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.day_hi_oi_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.day_hi_oi_long, range, value, display)

  return offset + length, value
end

-- Day Hi Oi Short
nse_nsefo_broadcast_nnfbcast_v9_50.day_hi_oi_short = {}

-- Size: Day Hi Oi Short
nse_nsefo_broadcast_nnfbcast_v9_50.day_hi_oi_short.size = 4

-- Display: Day Hi Oi Short
nse_nsefo_broadcast_nnfbcast_v9_50.day_hi_oi_short.display = function(value)
  return "Day Hi Oi Short: "..value
end

-- Dissect: Day Hi Oi Short
nse_nsefo_broadcast_nnfbcast_v9_50.day_hi_oi_short.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.day_hi_oi_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.day_hi_oi_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.day_hi_oi_short, range, value, display)

  return offset + length, value
end

-- Day High Price Difference
nse_nsefo_broadcast_nnfbcast_v9_50.day_high_price_difference = {}

-- Size: Day High Price Difference
nse_nsefo_broadcast_nnfbcast_v9_50.day_high_price_difference.size = 4

-- Display: Day High Price Difference
nse_nsefo_broadcast_nnfbcast_v9_50.day_high_price_difference.display = function(value)
  return "Day High Price Difference: "..value
end

-- Dissect: Day High Price Difference
nse_nsefo_broadcast_nnfbcast_v9_50.day_high_price_difference.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.day_high_price_difference.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.day_high_price_difference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.day_high_price_difference, range, value, display)

  return offset + length, value
end

-- Day Lo Oi Long
nse_nsefo_broadcast_nnfbcast_v9_50.day_lo_oi_long = {}

-- Size: Day Lo Oi Long
nse_nsefo_broadcast_nnfbcast_v9_50.day_lo_oi_long.size = 8

-- Display: Day Lo Oi Long
nse_nsefo_broadcast_nnfbcast_v9_50.day_lo_oi_long.display = function(value)
  return "Day Lo Oi Long: "..value
end

-- Dissect: Day Lo Oi Long
nse_nsefo_broadcast_nnfbcast_v9_50.day_lo_oi_long.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.day_lo_oi_long.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.day_lo_oi_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.day_lo_oi_long, range, value, display)

  return offset + length, value
end

-- Day Lo Oi Short
nse_nsefo_broadcast_nnfbcast_v9_50.day_lo_oi_short = {}

-- Size: Day Lo Oi Short
nse_nsefo_broadcast_nnfbcast_v9_50.day_lo_oi_short.size = 4

-- Display: Day Lo Oi Short
nse_nsefo_broadcast_nnfbcast_v9_50.day_lo_oi_short.display = function(value)
  return "Day Lo Oi Short: "..value
end

-- Dissect: Day Lo Oi Short
nse_nsefo_broadcast_nnfbcast_v9_50.day_lo_oi_short.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.day_lo_oi_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.day_lo_oi_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.day_lo_oi_short, range, value, display)

  return offset + length, value
end

-- Day Low Price Difference
nse_nsefo_broadcast_nnfbcast_v9_50.day_low_price_difference = {}

-- Size: Day Low Price Difference
nse_nsefo_broadcast_nnfbcast_v9_50.day_low_price_difference.size = 4

-- Display: Day Low Price Difference
nse_nsefo_broadcast_nnfbcast_v9_50.day_low_price_difference.display = function(value)
  return "Day Low Price Difference: "..value
end

-- Dissect: Day Low Price Difference
nse_nsefo_broadcast_nnfbcast_v9_50.day_low_price_difference.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.day_low_price_difference.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.day_low_price_difference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.day_low_price_difference, range, value, display)

  return offset + length, value
end

-- Delete Flag
nse_nsefo_broadcast_nnfbcast_v9_50.delete_flag = {}

-- Size: Delete Flag
nse_nsefo_broadcast_nnfbcast_v9_50.delete_flag.size = 1

-- Display: Delete Flag
nse_nsefo_broadcast_nnfbcast_v9_50.delete_flag.display = function(value)
  if value == "Y" then
    return "Delete Flag: Deleted (Y)"
  end
  if value == "N" then
    return "Delete Flag: Not Deleted (N)"
  end

  return "Delete Flag: Unknown("..value..")"
end

-- Dissect: Delete Flag
nse_nsefo_broadcast_nnfbcast_v9_50.delete_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.delete_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.delete_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.delete_flag, range, value, display)

  return offset + length, value
end

-- Error Code
nse_nsefo_broadcast_nnfbcast_v9_50.error_code = {}

-- Size: Error Code
nse_nsefo_broadcast_nnfbcast_v9_50.error_code.size = 2

-- Display: Error Code
nse_nsefo_broadcast_nnfbcast_v9_50.error_code.display = function(value)
  return "Error Code: "..value
end

-- Dissect: Error Code
nse_nsefo_broadcast_nnfbcast_v9_50.error_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.error_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.error_code, range, value, display)

  return offset + length, value
end

-- Exercise End Date
nse_nsefo_broadcast_nnfbcast_v9_50.exercise_end_date = {}

-- Size: Exercise End Date
nse_nsefo_broadcast_nnfbcast_v9_50.exercise_end_date.size = 4

-- Display: Exercise End Date
nse_nsefo_broadcast_nnfbcast_v9_50.exercise_end_date.display = function(value)
  return "Exercise End Date: "..value
end

-- Dissect: Exercise End Date
nse_nsefo_broadcast_nnfbcast_v9_50.exercise_end_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.exercise_end_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.exercise_end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.exercise_end_date, range, value, display)

  return offset + length, value
end

-- Exercise Start Date
nse_nsefo_broadcast_nnfbcast_v9_50.exercise_start_date = {}

-- Size: Exercise Start Date
nse_nsefo_broadcast_nnfbcast_v9_50.exercise_start_date.size = 4

-- Display: Exercise Start Date
nse_nsefo_broadcast_nnfbcast_v9_50.exercise_start_date.display = function(value)
  return "Exercise Start Date: "..value
end

-- Dissect: Exercise Start Date
nse_nsefo_broadcast_nnfbcast_v9_50.exercise_start_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.exercise_start_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.exercise_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.exercise_start_date, range, value, display)

  return offset + length, value
end

-- Expiry Date
nse_nsefo_broadcast_nnfbcast_v9_50.expiry_date = {}

-- Size: Expiry Date
nse_nsefo_broadcast_nnfbcast_v9_50.expiry_date.size = 4

-- Display: Expiry Date
nse_nsefo_broadcast_nnfbcast_v9_50.expiry_date.display = function(value)
  -- Parse Dos epoch seconds timestamp; a value os.date cannot represent is shown raw rather than aborting the dissection
  local ok, text = pcall(os.date, "!%Y-%m-%d %H:%M:%S", value + 315532800)

  if not ok then
    return "Expiry Date: "..value
  end

  return "Expiry Date: "..text
end

-- Dissect: Expiry Date
nse_nsefo_broadcast_nnfbcast_v9_50.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.expiry_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Expulsion Date
nse_nsefo_broadcast_nnfbcast_v9_50.expulsion_date = {}

-- Size: Expulsion Date
nse_nsefo_broadcast_nnfbcast_v9_50.expulsion_date.size = 4

-- Display: Expulsion Date
nse_nsefo_broadcast_nnfbcast_v9_50.expulsion_date.display = function(value)
  return "Expulsion Date: "..value
end

-- Dissect: Expulsion Date
nse_nsefo_broadcast_nnfbcast_v9_50.expulsion_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.expulsion_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.expulsion_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.expulsion_date, range, value, display)

  return offset + length, value
end

-- Extrinsic Value
nse_nsefo_broadcast_nnfbcast_v9_50.extrinsic_value = {}

-- Size: Extrinsic Value
nse_nsefo_broadcast_nnfbcast_v9_50.extrinsic_value.size = 4

-- Display: Extrinsic Value
nse_nsefo_broadcast_nnfbcast_v9_50.extrinsic_value.display = function(value)
  return "Extrinsic Value: "..value
end

-- Dissect: Extrinsic Value
nse_nsefo_broadcast_nnfbcast_v9_50.extrinsic_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.extrinsic_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.extrinsic_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.extrinsic_value, range, value, display)

  return offset + length, value
end

-- Fill Price
nse_nsefo_broadcast_nnfbcast_v9_50.fill_price = {}

-- Size: Fill Price
nse_nsefo_broadcast_nnfbcast_v9_50.fill_price.size = 4

-- Display: Fill Price
nse_nsefo_broadcast_nnfbcast_v9_50.fill_price.display = function(value)
  return "Fill Price: "..value
end

-- Dissect: Fill Price
nse_nsefo_broadcast_nnfbcast_v9_50.fill_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.fill_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.fill_price, range, value, display)

  return offset + length, value
end

-- Fill Volume
nse_nsefo_broadcast_nnfbcast_v9_50.fill_volume = {}

-- Size: Fill Volume
nse_nsefo_broadcast_nnfbcast_v9_50.fill_volume.size = 4

-- Display: Fill Volume
nse_nsefo_broadcast_nnfbcast_v9_50.fill_volume.display = function(value)
  return "Fill Volume: "..value
end

-- Dissect: Fill Volume
nse_nsefo_broadcast_nnfbcast_v9_50.fill_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.fill_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.fill_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.fill_volume, range, value, display)

  return offset + length, value
end

-- Filler
nse_nsefo_broadcast_nnfbcast_v9_50.filler = {}

-- Size: Filler
nse_nsefo_broadcast_nnfbcast_v9_50.filler.size = 1

-- Display: Filler
nse_nsefo_broadcast_nnfbcast_v9_50.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
nse_nsefo_broadcast_nnfbcast_v9_50.filler.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.filler, range, value, display)

  return offset + length, value
end

-- Filler 2
nse_nsefo_broadcast_nnfbcast_v9_50.filler_2 = {}

-- Size: Filler 2
nse_nsefo_broadcast_nnfbcast_v9_50.filler_2.size = 8

-- Display: Filler 2
nse_nsefo_broadcast_nnfbcast_v9_50.filler_2.display = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
nse_nsefo_broadcast_nnfbcast_v9_50.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.filler_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.filler_2, range, value, display)

  return offset + length, value
end

-- Final
nse_nsefo_broadcast_nnfbcast_v9_50.final = {}

-- Size: Final
nse_nsefo_broadcast_nnfbcast_v9_50.final.size = 1

-- Display: Final
nse_nsefo_broadcast_nnfbcast_v9_50.final.display = function(value)
  return "Final: "..value
end

-- Dissect: Final
nse_nsefo_broadcast_nnfbcast_v9_50.final.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.final.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.final.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.final, range, value, display)

  return offset + length, value
end

-- Freeze Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.freeze_quantity = {}

-- Size: Freeze Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.freeze_quantity.size = 4

-- Display: Freeze Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.freeze_quantity.display = function(value)
  return "Freeze Quantity: "..value
end

-- Dissect: Freeze Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.freeze_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.freeze_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.freeze_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.freeze_quantity, range, value, display)

  return offset + length, value
end

-- High Exec Band
nse_nsefo_broadcast_nnfbcast_v9_50.high_exec_band = {}

-- Size: High Exec Band
nse_nsefo_broadcast_nnfbcast_v9_50.high_exec_band.size = 4

-- Display: High Exec Band
nse_nsefo_broadcast_nnfbcast_v9_50.high_exec_band.display = function(value)
  return "High Exec Band: "..value
end

-- Dissect: High Exec Band
nse_nsefo_broadcast_nnfbcast_v9_50.high_exec_band.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.high_exec_band.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.high_exec_band.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.high_exec_band, range, value, display)

  return offset + length, value
end

-- High Index Value
nse_nsefo_broadcast_nnfbcast_v9_50.high_index_value = {}

-- Size: High Index Value
nse_nsefo_broadcast_nnfbcast_v9_50.high_index_value.size = 4

-- Display: High Index Value
nse_nsefo_broadcast_nnfbcast_v9_50.high_index_value.display = function(value)
  return "High Index Value: "..value
end

-- Dissect: High Index Value
nse_nsefo_broadcast_nnfbcast_v9_50.high_index_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.high_index_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.high_index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.high_index_value, range, value, display)

  return offset + length, value
end

-- High Price
nse_nsefo_broadcast_nnfbcast_v9_50.high_price = {}

-- Size: High Price
nse_nsefo_broadcast_nnfbcast_v9_50.high_price.size = 4

-- Display: High Price
nse_nsefo_broadcast_nnfbcast_v9_50.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
nse_nsefo_broadcast_nnfbcast_v9_50.high_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.high_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.high_price, range, value, display)

  return offset + length, value
end

-- High Price Range
nse_nsefo_broadcast_nnfbcast_v9_50.high_price_range = {}

-- Size: High Price Range
nse_nsefo_broadcast_nnfbcast_v9_50.high_price_range.size = 4

-- Display: High Price Range
nse_nsefo_broadcast_nnfbcast_v9_50.high_price_range.display = function(value)
  return "High Price Range: "..value
end

-- Dissect: High Price Range
nse_nsefo_broadcast_nnfbcast_v9_50.high_price_range.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.high_price_range.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.high_price_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.high_price_range, range, value, display)

  return offset + length, value
end

-- Imbalance Qty At Iop
nse_nsefo_broadcast_nnfbcast_v9_50.imbalance_qty_at_iop = {}

-- Size: Imbalance Qty At Iop
nse_nsefo_broadcast_nnfbcast_v9_50.imbalance_qty_at_iop.size = 8

-- Display: Imbalance Qty At Iop
nse_nsefo_broadcast_nnfbcast_v9_50.imbalance_qty_at_iop.display = function(value)
  return "Imbalance Qty At Iop: "..value
end

-- Dissect: Imbalance Qty At Iop
nse_nsefo_broadcast_nnfbcast_v9_50.imbalance_qty_at_iop.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.imbalance_qty_at_iop.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.imbalance_qty_at_iop.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.imbalance_qty_at_iop, range, value, display)

  return offset + length, value
end

-- Index Name
nse_nsefo_broadcast_nnfbcast_v9_50.index_name = {}

-- Size: Index Name
nse_nsefo_broadcast_nnfbcast_v9_50.index_name.size = 21

-- Display: Index Name
nse_nsefo_broadcast_nnfbcast_v9_50.index_name.display = function(value)
  return "Index Name: "..value
end

-- Dissect: Index Name
nse_nsefo_broadcast_nnfbcast_v9_50.index_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.index_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.index_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.index_name, range, value, display)

  return offset + length, value
end

-- Index Value
nse_nsefo_broadcast_nnfbcast_v9_50.index_value = {}

-- Size: Index Value
nse_nsefo_broadcast_nnfbcast_v9_50.index_value.size = 4

-- Display: Index Value
nse_nsefo_broadcast_nnfbcast_v9_50.index_value.display = function(value)
  return "Index Value: "..value
end

-- Dissect: Index Value
nse_nsefo_broadcast_nnfbcast_v9_50.index_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.index_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.index_value, range, value, display)

  return offset + length, value
end

-- Industry Name
nse_nsefo_broadcast_nnfbcast_v9_50.industry_name = {}

-- Size: Industry Name
nse_nsefo_broadcast_nnfbcast_v9_50.industry_name.size = 15

-- Display: Industry Name
nse_nsefo_broadcast_nnfbcast_v9_50.industry_name.display = function(value)
  return "Industry Name: "..value
end

-- Dissect: Industry Name
nse_nsefo_broadcast_nnfbcast_v9_50.industry_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.industry_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.industry_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.industry_name, range, value, display)

  return offset + length, value
end

-- Initiator Price
nse_nsefo_broadcast_nnfbcast_v9_50.initiator_price = {}

-- Size: Initiator Price
nse_nsefo_broadcast_nnfbcast_v9_50.initiator_price.size = 4

-- Display: Initiator Price
nse_nsefo_broadcast_nnfbcast_v9_50.initiator_price.display = function(value)
  return "Initiator Price: "..value
end

-- Dissect: Initiator Price
nse_nsefo_broadcast_nnfbcast_v9_50.initiator_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.initiator_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.initiator_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.initiator_price, range, value, display)

  return offset + length, value
end

-- Initiator Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.initiator_quantity = {}

-- Size: Initiator Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.initiator_quantity.size = 4

-- Display: Initiator Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.initiator_quantity.display = function(value)
  return "Initiator Quantity: "..value
end

-- Dissect: Initiator Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.initiator_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.initiator_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.initiator_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.initiator_quantity, range, value, display)

  return offset + length, value
end

-- Initiator Type
nse_nsefo_broadcast_nnfbcast_v9_50.initiator_type = {}

-- Size: Initiator Type
nse_nsefo_broadcast_nnfbcast_v9_50.initiator_type.size = 2

-- Display: Initiator Type
nse_nsefo_broadcast_nnfbcast_v9_50.initiator_type.display = function(value)
  return "Initiator Type: "..value
end

-- Dissect: Initiator Type
nse_nsefo_broadcast_nnfbcast_v9_50.initiator_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.initiator_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.initiator_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.initiator_type, range, value, display)

  return offset + length, value
end

-- Instrument Description
nse_nsefo_broadcast_nnfbcast_v9_50.instrument_description = {}

-- Size: Instrument Description
nse_nsefo_broadcast_nnfbcast_v9_50.instrument_description.size = 25

-- Display: Instrument Description
nse_nsefo_broadcast_nnfbcast_v9_50.instrument_description.display = function(value)
  return "Instrument Description: "..value
end

-- Dissect: Instrument Description
nse_nsefo_broadcast_nnfbcast_v9_50.instrument_description.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.instrument_description.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.instrument_description.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.instrument_description, range, value, display)

  return offset + length, value
end

-- Instrument Id
nse_nsefo_broadcast_nnfbcast_v9_50.instrument_id = {}

-- Size: Instrument Id
nse_nsefo_broadcast_nnfbcast_v9_50.instrument_id.size = 2

-- Display: Instrument Id
nse_nsefo_broadcast_nnfbcast_v9_50.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
nse_nsefo_broadcast_nnfbcast_v9_50.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.instrument_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Instrument Name
nse_nsefo_broadcast_nnfbcast_v9_50.instrument_name = {}

-- Size: Instrument Name
nse_nsefo_broadcast_nnfbcast_v9_50.instrument_name.size = 6

-- Display: Instrument Name
nse_nsefo_broadcast_nnfbcast_v9_50.instrument_name.display = function(value)
  return "Instrument Name: "..value
end

-- Dissect: Instrument Name
nse_nsefo_broadcast_nnfbcast_v9_50.instrument_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.instrument_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.instrument_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.instrument_name, range, value, display)

  return offset + length, value
end

-- Instrument Update Time
nse_nsefo_broadcast_nnfbcast_v9_50.instrument_update_time = {}

-- Size: Instrument Update Time
nse_nsefo_broadcast_nnfbcast_v9_50.instrument_update_time.size = 4

-- Display: Instrument Update Time
nse_nsefo_broadcast_nnfbcast_v9_50.instrument_update_time.display = function(value)
  return "Instrument Update Time: "..value
end

-- Dissect: Instrument Update Time
nse_nsefo_broadcast_nnfbcast_v9_50.instrument_update_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.instrument_update_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.instrument_update_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.instrument_update_time, range, value, display)

  return offset + length, value
end

-- Interest Payment Date
nse_nsefo_broadcast_nnfbcast_v9_50.interest_payment_date = {}

-- Size: Interest Payment Date
nse_nsefo_broadcast_nnfbcast_v9_50.interest_payment_date.size = 4

-- Display: Interest Payment Date
nse_nsefo_broadcast_nnfbcast_v9_50.interest_payment_date.display = function(value)
  return "Interest Payment Date: "..value
end

-- Dissect: Interest Payment Date
nse_nsefo_broadcast_nnfbcast_v9_50.interest_payment_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.interest_payment_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.interest_payment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.interest_payment_date, range, value, display)

  return offset + length, value
end

-- Intrinsic Value
nse_nsefo_broadcast_nnfbcast_v9_50.intrinsic_value = {}

-- Size: Intrinsic Value
nse_nsefo_broadcast_nnfbcast_v9_50.intrinsic_value.size = 4

-- Display: Intrinsic Value
nse_nsefo_broadcast_nnfbcast_v9_50.intrinsic_value.display = function(value)
  return "Intrinsic Value: "..value
end

-- Dissect: Intrinsic Value
nse_nsefo_broadcast_nnfbcast_v9_50.intrinsic_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.intrinsic_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.intrinsic_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.intrinsic_value, range, value, display)

  return offset + length, value
end

-- Issue Maturity Date
nse_nsefo_broadcast_nnfbcast_v9_50.issue_maturity_date = {}

-- Size: Issue Maturity Date
nse_nsefo_broadcast_nnfbcast_v9_50.issue_maturity_date.size = 4

-- Display: Issue Maturity Date
nse_nsefo_broadcast_nnfbcast_v9_50.issue_maturity_date.display = function(value)
  return "Issue Maturity Date: "..value
end

-- Dissect: Issue Maturity Date
nse_nsefo_broadcast_nnfbcast_v9_50.issue_maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.issue_maturity_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.issue_maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.issue_maturity_date, range, value, display)

  return offset + length, value
end

-- Issue Rate
nse_nsefo_broadcast_nnfbcast_v9_50.issue_rate = {}

-- Size: Issue Rate
nse_nsefo_broadcast_nnfbcast_v9_50.issue_rate.size = 2

-- Display: Issue Rate
nse_nsefo_broadcast_nnfbcast_v9_50.issue_rate.display = function(value)
  return "Issue Rate: "..value
end

-- Dissect: Issue Rate
nse_nsefo_broadcast_nnfbcast_v9_50.issue_rate.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.issue_rate.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.issue_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.issue_rate, range, value, display)

  return offset + length, value
end

-- Issue Start Date
nse_nsefo_broadcast_nnfbcast_v9_50.issue_start_date = {}

-- Size: Issue Start Date
nse_nsefo_broadcast_nnfbcast_v9_50.issue_start_date.size = 4

-- Display: Issue Start Date
nse_nsefo_broadcast_nnfbcast_v9_50.issue_start_date.display = function(value)
  return "Issue Start Date: "..value
end

-- Dissect: Issue Start Date
nse_nsefo_broadcast_nnfbcast_v9_50.issue_start_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.issue_start_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.issue_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.issue_start_date, range, value, display)

  return offset + length, value
end

-- Issued Capital
nse_nsefo_broadcast_nnfbcast_v9_50.issued_capital = {}

-- Size: Issued Capital
nse_nsefo_broadcast_nnfbcast_v9_50.issued_capital.size = 8

-- Display: Issued Capital
nse_nsefo_broadcast_nnfbcast_v9_50.issued_capital.display = function(value)
  return "Issued Capital: "..string.format("%.0f", value)
end

-- Dissect: Issued Capital
nse_nsefo_broadcast_nnfbcast_v9_50.issued_capital.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.issued_capital.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.issued_capital.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.issued_capital, range, value, display)

  return offset + length, value
end

-- Last Active Time
nse_nsefo_broadcast_nnfbcast_v9_50.last_active_time = {}

-- Size: Last Active Time
nse_nsefo_broadcast_nnfbcast_v9_50.last_active_time.size = 4

-- Display: Last Active Time
nse_nsefo_broadcast_nnfbcast_v9_50.last_active_time.display = function(value)
  return "Last Active Time: "..value
end

-- Dissect: Last Active Time
nse_nsefo_broadcast_nnfbcast_v9_50.last_active_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.last_active_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.last_active_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.last_active_time, range, value, display)

  return offset + length, value
end

-- Last Trade Price
nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_price = {}

-- Size: Last Trade Price
nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_price.size = 4

-- Display: Last Trade Price
nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_price.display = function(value)
  return "Last Trade Price: "..value
end

-- Dissect: Last Trade Price
nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.last_trade_price, range, value, display)

  return offset + length, value
end

-- Last Trade Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_quantity = {}

-- Size: Last Trade Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_quantity.size = 4

-- Display: Last Trade Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_quantity.display = function(value)
  return "Last Trade Quantity: "..value
end

-- Dissect: Last Trade Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.last_trade_quantity, range, value, display)

  return offset + length, value
end

-- Last Trade Time
nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_time = {}

-- Size: Last Trade Time
nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_time.size = 4

-- Display: Last Trade Time
nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_time.display = function(value)
  return "Last Trade Time: "..value
end

-- Dissect: Last Trade Time
nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.last_trade_time, range, value, display)

  return offset + length, value
end

-- Last Traded Price
nse_nsefo_broadcast_nnfbcast_v9_50.last_traded_price = {}

-- Size: Last Traded Price
nse_nsefo_broadcast_nnfbcast_v9_50.last_traded_price.size = 4

-- Display: Last Traded Price
nse_nsefo_broadcast_nnfbcast_v9_50.last_traded_price.display = function(value)
  return "Last Traded Price: "..value
end

-- Dissect: Last Traded Price
nse_nsefo_broadcast_nnfbcast_v9_50.last_traded_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.last_traded_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.last_traded_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.last_traded_price, range, value, display)

  return offset + length, value
end

-- Last Traded Price Difference
nse_nsefo_broadcast_nnfbcast_v9_50.last_traded_price_difference = {}

-- Size: Last Traded Price Difference
nse_nsefo_broadcast_nnfbcast_v9_50.last_traded_price_difference.size = 4

-- Display: Last Traded Price Difference
nse_nsefo_broadcast_nnfbcast_v9_50.last_traded_price_difference.display = function(value)
  return "Last Traded Price Difference: "..value
end

-- Dissect: Last Traded Price Difference
nse_nsefo_broadcast_nnfbcast_v9_50.last_traded_price_difference.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.last_traded_price_difference.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.last_traded_price_difference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.last_traded_price_difference, range, value, display)

  return offset + length, value
end

-- Last Update Time
nse_nsefo_broadcast_nnfbcast_v9_50.last_update_time = {}

-- Size: Last Update Time
nse_nsefo_broadcast_nnfbcast_v9_50.last_update_time.size = 4

-- Display: Last Update Time
nse_nsefo_broadcast_nnfbcast_v9_50.last_update_time.display = function(value)
  return "Last Update Time: "..value
end

-- Dissect: Last Update Time
nse_nsefo_broadcast_nnfbcast_v9_50.last_update_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.last_update_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.last_update_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.last_update_time, range, value, display)

  return offset + length, value
end

-- Listing Date
nse_nsefo_broadcast_nnfbcast_v9_50.listing_date = {}

-- Size: Listing Date
nse_nsefo_broadcast_nnfbcast_v9_50.listing_date.size = 4

-- Display: Listing Date
nse_nsefo_broadcast_nnfbcast_v9_50.listing_date.display = function(value)
  return "Listing Date: "..value
end

-- Dissect: Listing Date
nse_nsefo_broadcast_nnfbcast_v9_50.listing_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.listing_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.listing_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.listing_date, range, value, display)

  return offset + length, value
end

-- Local Update Date Time
nse_nsefo_broadcast_nnfbcast_v9_50.local_update_date_time = {}

-- Size: Local Update Date Time
nse_nsefo_broadcast_nnfbcast_v9_50.local_update_date_time.size = 4

-- Display: Local Update Date Time
nse_nsefo_broadcast_nnfbcast_v9_50.local_update_date_time.display = function(value)
  return "Local Update Date Time: "..value
end

-- Dissect: Local Update Date Time
nse_nsefo_broadcast_nnfbcast_v9_50.local_update_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.local_update_date_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.local_update_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.local_update_date_time, range, value, display)

  return offset + length, value
end

-- Log Time
nse_nsefo_broadcast_nnfbcast_v9_50.log_time = {}

-- Size: Log Time
nse_nsefo_broadcast_nnfbcast_v9_50.log_time.size = 4

-- Display: Log Time
nse_nsefo_broadcast_nnfbcast_v9_50.log_time.display = function(value)
  return "Log Time: "..value
end

-- Dissect: Log Time
nse_nsefo_broadcast_nnfbcast_v9_50.log_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.log_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.log_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.log_time, range, value, display)

  return offset + length, value
end

-- Low Exec Band
nse_nsefo_broadcast_nnfbcast_v9_50.low_exec_band = {}

-- Size: Low Exec Band
nse_nsefo_broadcast_nnfbcast_v9_50.low_exec_band.size = 4

-- Display: Low Exec Band
nse_nsefo_broadcast_nnfbcast_v9_50.low_exec_band.display = function(value)
  return "Low Exec Band: "..value
end

-- Dissect: Low Exec Band
nse_nsefo_broadcast_nnfbcast_v9_50.low_exec_band.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.low_exec_band.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.low_exec_band.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.low_exec_band, range, value, display)

  return offset + length, value
end

-- Low Index Value
nse_nsefo_broadcast_nnfbcast_v9_50.low_index_value = {}

-- Size: Low Index Value
nse_nsefo_broadcast_nnfbcast_v9_50.low_index_value.size = 4

-- Display: Low Index Value
nse_nsefo_broadcast_nnfbcast_v9_50.low_index_value.display = function(value)
  return "Low Index Value: "..value
end

-- Dissect: Low Index Value
nse_nsefo_broadcast_nnfbcast_v9_50.low_index_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.low_index_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.low_index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.low_index_value, range, value, display)

  return offset + length, value
end

-- Low Price
nse_nsefo_broadcast_nnfbcast_v9_50.low_price = {}

-- Size: Low Price
nse_nsefo_broadcast_nnfbcast_v9_50.low_price.size = 4

-- Display: Low Price
nse_nsefo_broadcast_nnfbcast_v9_50.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
nse_nsefo_broadcast_nnfbcast_v9_50.low_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.low_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.low_price, range, value, display)

  return offset + length, value
end

-- Low Price Range
nse_nsefo_broadcast_nnfbcast_v9_50.low_price_range = {}

-- Size: Low Price Range
nse_nsefo_broadcast_nnfbcast_v9_50.low_price_range.size = 4

-- Display: Low Price Range
nse_nsefo_broadcast_nnfbcast_v9_50.low_price_range.display = function(value)
  return "Low Price Range: "..value
end

-- Dissect: Low Price Range
nse_nsefo_broadcast_nnfbcast_v9_50.low_price_range.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.low_price_range.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.low_price_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.low_price_range, range, value, display)

  return offset + length, value
end

-- Margin Percentage
nse_nsefo_broadcast_nnfbcast_v9_50.margin_percentage = {}

-- Size: Margin Percentage
nse_nsefo_broadcast_nnfbcast_v9_50.margin_percentage.size = 4

-- Display: Margin Percentage
nse_nsefo_broadcast_nnfbcast_v9_50.margin_percentage.display = function(value)
  return "Margin Percentage: "..value
end

-- Dissect: Margin Percentage
nse_nsefo_broadcast_nnfbcast_v9_50.margin_percentage.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.margin_percentage.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.margin_percentage.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.margin_percentage, range, value, display)

  return offset + length, value
end

-- Market Capitalisation
nse_nsefo_broadcast_nnfbcast_v9_50.market_capitalisation = {}

-- Size: Market Capitalisation
nse_nsefo_broadcast_nnfbcast_v9_50.market_capitalisation.size = 8

-- Display: Market Capitalisation
nse_nsefo_broadcast_nnfbcast_v9_50.market_capitalisation.display = function(value)
  return "Market Capitalisation: "..string.format("%.0f", value)
end

-- Dissect: Market Capitalisation
nse_nsefo_broadcast_nnfbcast_v9_50.market_capitalisation.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.market_capitalisation.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.market_capitalisation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.market_capitalisation, range, value, display)

  return offset + length, value
end

-- Market Type
nse_nsefo_broadcast_nnfbcast_v9_50.market_type = {}

-- Size: Market Type
nse_nsefo_broadcast_nnfbcast_v9_50.market_type.size = 2

-- Display: Market Type
nse_nsefo_broadcast_nnfbcast_v9_50.market_type.display = function(value)
  if value == 1 then
    return "Market Type: Normal Market (1)"
  end
  if value == 2 then
    return "Market Type: Odd Lot Market (2)"
  end
  if value == 3 then
    return "Market Type: Spot Market (3)"
  end
  if value == 4 then
    return "Market Type: Auction Market (4)"
  end

  return "Market Type: Unknown("..value..")"
end

-- Dissect: Market Type
nse_nsefo_broadcast_nnfbcast_v9_50.market_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.market_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.market_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.market_type, range, value, display)

  return offset + length, value
end

-- Mbp Buy
nse_nsefo_broadcast_nnfbcast_v9_50.mbp_buy = {}

-- Size: Mbp Buy
nse_nsefo_broadcast_nnfbcast_v9_50.mbp_buy.size = 2

-- Display: Mbp Buy
nse_nsefo_broadcast_nnfbcast_v9_50.mbp_buy.display = function(value)
  return "Mbp Buy: "..value
end

-- Dissect: Mbp Buy
nse_nsefo_broadcast_nnfbcast_v9_50.mbp_buy.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.mbp_buy.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.mbp_buy.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.mbp_buy, range, value, display)

  return offset + length, value
end

-- Mbp Sell
nse_nsefo_broadcast_nnfbcast_v9_50.mbp_sell = {}

-- Size: Mbp Sell
nse_nsefo_broadcast_nnfbcast_v9_50.mbp_sell.size = 2

-- Display: Mbp Sell
nse_nsefo_broadcast_nnfbcast_v9_50.mbp_sell.display = function(value)
  return "Mbp Sell: "..value
end

-- Dissect: Mbp Sell
nse_nsefo_broadcast_nnfbcast_v9_50.mbp_sell.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.mbp_sell.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.mbp_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.mbp_sell, range, value, display)

  return offset + length, value
end

-- Message Length
nse_nsefo_broadcast_nnfbcast_v9_50.message_length = {}

-- Size: Message Length
nse_nsefo_broadcast_nnfbcast_v9_50.message_length.size = 2

-- Display: Message Length
nse_nsefo_broadcast_nnfbcast_v9_50.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nse_nsefo_broadcast_nnfbcast_v9_50.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.message_length, range, value, display)

  return offset + length, value
end

-- Min Fill Qty
nse_nsefo_broadcast_nnfbcast_v9_50.min_fill_qty = {}

-- Size: Min Fill Qty
nse_nsefo_broadcast_nnfbcast_v9_50.min_fill_qty.size = 4

-- Display: Min Fill Qty
nse_nsefo_broadcast_nnfbcast_v9_50.min_fill_qty.display = function(value)
  return "Min Fill Qty: "..value
end

-- Dissect: Min Fill Qty
nse_nsefo_broadcast_nnfbcast_v9_50.min_fill_qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.min_fill_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.min_fill_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.min_fill_qty, range, value, display)

  return offset + length, value
end

-- Minimum Lot Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.minimum_lot_quantity = {}

-- Size: Minimum Lot Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.minimum_lot_quantity.size = 4

-- Display: Minimum Lot Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.minimum_lot_quantity.display = function(value)
  return "Minimum Lot Quantity: "..value
end

-- Dissect: Minimum Lot Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.minimum_lot_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.minimum_lot_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.minimum_lot_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.minimum_lot_quantity, range, value, display)

  return offset + length, value
end

-- Msg Count
nse_nsefo_broadcast_nnfbcast_v9_50.msg_count = {}

-- Size: Msg Count
nse_nsefo_broadcast_nnfbcast_v9_50.msg_count.size = 4

-- Display: Msg Count
nse_nsefo_broadcast_nnfbcast_v9_50.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
nse_nsefo_broadcast_nnfbcast_v9_50.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.msg_count.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Name
nse_nsefo_broadcast_nnfbcast_v9_50.name = {}

-- Size: Name
nse_nsefo_broadcast_nnfbcast_v9_50.name.size = 25

-- Display: Name
nse_nsefo_broadcast_nnfbcast_v9_50.name.display = function(value)
  return "Name: "..value
end

-- Dissect: Name
nse_nsefo_broadcast_nnfbcast_v9_50.name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.name, range, value, display)

  return offset + length, value
end

-- Net Change Indicator
nse_nsefo_broadcast_nnfbcast_v9_50.net_change_indicator = {}

-- Size: Net Change Indicator
nse_nsefo_broadcast_nnfbcast_v9_50.net_change_indicator.size = 1

-- Display: Net Change Indicator
nse_nsefo_broadcast_nnfbcast_v9_50.net_change_indicator.display = function(value)
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
nse_nsefo_broadcast_nnfbcast_v9_50.net_change_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.net_change_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.net_change_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.net_change_indicator, range, value, display)

  return offset + length, value
end

-- Net Id
nse_nsefo_broadcast_nnfbcast_v9_50.net_id = {}

-- Size: Net Id
nse_nsefo_broadcast_nnfbcast_v9_50.net_id.size = 2

-- Display: Net Id
nse_nsefo_broadcast_nnfbcast_v9_50.net_id.display = function(value)
  return "Net Id: "..value
end

-- Dissect: Net Id
nse_nsefo_broadcast_nnfbcast_v9_50.net_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.net_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.net_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.net_id, range, value, display)

  return offset + length, value
end

-- Net Price Change From Closing Price
nse_nsefo_broadcast_nnfbcast_v9_50.net_price_change_from_closing_price = {}

-- Size: Net Price Change From Closing Price
nse_nsefo_broadcast_nnfbcast_v9_50.net_price_change_from_closing_price.size = 4

-- Display: Net Price Change From Closing Price
nse_nsefo_broadcast_nnfbcast_v9_50.net_price_change_from_closing_price.display = function(value)
  return "Net Price Change From Closing Price: "..value
end

-- Dissect: Net Price Change From Closing Price
nse_nsefo_broadcast_nnfbcast_v9_50.net_price_change_from_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.net_price_change_from_closing_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.net_price_change_from_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.net_price_change_from_closing_price, range, value, display)

  return offset + length, value
end

-- No Delivery End Date
nse_nsefo_broadcast_nnfbcast_v9_50.no_delivery_end_date = {}

-- Size: No Delivery End Date
nse_nsefo_broadcast_nnfbcast_v9_50.no_delivery_end_date.size = 4

-- Display: No Delivery End Date
nse_nsefo_broadcast_nnfbcast_v9_50.no_delivery_end_date.display = function(value)
  return "No Delivery End Date: "..value
end

-- Dissect: No Delivery End Date
nse_nsefo_broadcast_nnfbcast_v9_50.no_delivery_end_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.no_delivery_end_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.no_delivery_end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.no_delivery_end_date, range, value, display)

  return offset + length, value
end

-- No Delivery Start Date
nse_nsefo_broadcast_nnfbcast_v9_50.no_delivery_start_date = {}

-- Size: No Delivery Start Date
nse_nsefo_broadcast_nnfbcast_v9_50.no_delivery_start_date.size = 4

-- Display: No Delivery Start Date
nse_nsefo_broadcast_nnfbcast_v9_50.no_delivery_start_date.display = function(value)
  return "No Delivery Start Date: "..value
end

-- Dissect: No Delivery Start Date
nse_nsefo_broadcast_nnfbcast_v9_50.no_delivery_start_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.no_delivery_start_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.no_delivery_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.no_delivery_start_date, range, value, display)

  return offset + length, value
end

-- No Of Downmoves
nse_nsefo_broadcast_nnfbcast_v9_50.no_of_downmoves = {}

-- Size: No Of Downmoves
nse_nsefo_broadcast_nnfbcast_v9_50.no_of_downmoves.size = 4

-- Display: No Of Downmoves
nse_nsefo_broadcast_nnfbcast_v9_50.no_of_downmoves.display = function(value)
  return "No Of Downmoves: "..value
end

-- Dissect: No Of Downmoves
nse_nsefo_broadcast_nnfbcast_v9_50.no_of_downmoves.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.no_of_downmoves.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.no_of_downmoves.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.no_of_downmoves, range, value, display)

  return offset + length, value
end

-- No Of Orders
nse_nsefo_broadcast_nnfbcast_v9_50.no_of_orders = {}

-- Size: No Of Orders
nse_nsefo_broadcast_nnfbcast_v9_50.no_of_orders.size = 2

-- Display: No Of Orders
nse_nsefo_broadcast_nnfbcast_v9_50.no_of_orders.display = function(value)
  return "No Of Orders: "..value
end

-- Dissect: No Of Orders
nse_nsefo_broadcast_nnfbcast_v9_50.no_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.no_of_orders.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.no_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.no_of_orders, range, value, display)

  return offset + length, value
end

-- No Of Records
nse_nsefo_broadcast_nnfbcast_v9_50.no_of_records = {}

-- Size: No Of Records
nse_nsefo_broadcast_nnfbcast_v9_50.no_of_records.size = 2

-- Display: No Of Records
nse_nsefo_broadcast_nnfbcast_v9_50.no_of_records.display = function(value)
  return "No Of Records: "..value
end

-- Dissect: No Of Records
nse_nsefo_broadcast_nnfbcast_v9_50.no_of_records.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.no_of_records.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.no_of_records.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.no_of_records, range, value, display)

  return offset + length, value
end

-- No Of Recs
nse_nsefo_broadcast_nnfbcast_v9_50.no_of_recs = {}

-- Size: No Of Recs
nse_nsefo_broadcast_nnfbcast_v9_50.no_of_recs.size = 2

-- Display: No Of Recs
nse_nsefo_broadcast_nnfbcast_v9_50.no_of_recs.display = function(value)
  return "No Of Recs: "..value
end

-- Dissect: No Of Recs
nse_nsefo_broadcast_nnfbcast_v9_50.no_of_recs.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.no_of_recs.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.no_of_recs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.no_of_recs, range, value, display)

  return offset + length, value
end

-- No Of Upmoves
nse_nsefo_broadcast_nnfbcast_v9_50.no_of_upmoves = {}

-- Size: No Of Upmoves
nse_nsefo_broadcast_nnfbcast_v9_50.no_of_upmoves.size = 4

-- Display: No Of Upmoves
nse_nsefo_broadcast_nnfbcast_v9_50.no_of_upmoves.display = function(value)
  return "No Of Upmoves: "..value
end

-- Dissect: No Of Upmoves
nse_nsefo_broadcast_nnfbcast_v9_50.no_of_upmoves.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.no_of_upmoves.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.no_of_upmoves.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.no_of_upmoves, range, value, display)

  return offset + length, value
end

-- No Orders
nse_nsefo_broadcast_nnfbcast_v9_50.no_orders = {}

-- Size: No Orders
nse_nsefo_broadcast_nnfbcast_v9_50.no_orders.size = 2

-- Display: No Orders
nse_nsefo_broadcast_nnfbcast_v9_50.no_orders.display = function(value)
  return "No Orders: "..value
end

-- Dissect: No Orders
nse_nsefo_broadcast_nnfbcast_v9_50.no_orders.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.no_orders.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.no_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.no_orders, range, value, display)

  return offset + length, value
end

-- Number Of Orders
nse_nsefo_broadcast_nnfbcast_v9_50.number_of_orders = {}

-- Size: Number Of Orders
nse_nsefo_broadcast_nnfbcast_v9_50.number_of_orders.size = 2

-- Display: Number Of Orders
nse_nsefo_broadcast_nnfbcast_v9_50.number_of_orders.display = function(value)
  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
nse_nsefo_broadcast_nnfbcast_v9_50.number_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.number_of_orders.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.number_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Number Of Packets
nse_nsefo_broadcast_nnfbcast_v9_50.number_of_packets = {}

-- Size: Number Of Packets
nse_nsefo_broadcast_nnfbcast_v9_50.number_of_packets.size = 2

-- Display: Number Of Packets
nse_nsefo_broadcast_nnfbcast_v9_50.number_of_packets.display = function(value)
  return "Number Of Packets: "..value
end

-- Dissect: Number Of Packets
nse_nsefo_broadcast_nnfbcast_v9_50.number_of_packets.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.number_of_packets.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.number_of_packets.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.number_of_packets, range, value, display)

  return offset + length, value
end

-- Number Of Records
nse_nsefo_broadcast_nnfbcast_v9_50.number_of_records = {}

-- Size: Number Of Records
nse_nsefo_broadcast_nnfbcast_v9_50.number_of_records.size = 2

-- Display: Number Of Records
nse_nsefo_broadcast_nnfbcast_v9_50.number_of_records.display = function(value)
  return "Number Of Records: "..value
end

-- Dissect: Number Of Records
nse_nsefo_broadcast_nnfbcast_v9_50.number_of_records.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.number_of_records.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.number_of_records.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.number_of_records, range, value, display)

  return offset + length, value
end

-- Old Token
nse_nsefo_broadcast_nnfbcast_v9_50.old_token = {}

-- Size: Old Token
nse_nsefo_broadcast_nnfbcast_v9_50.old_token.size = 4

-- Display: Old Token
nse_nsefo_broadcast_nnfbcast_v9_50.old_token.display = function(value)
  return "Old Token: "..value
end

-- Dissect: Old Token
nse_nsefo_broadcast_nnfbcast_v9_50.old_token.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.old_token.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.old_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.old_token, range, value, display)

  return offset + length, value
end

-- Open Interest Long
nse_nsefo_broadcast_nnfbcast_v9_50.open_interest_long = {}

-- Size: Open Interest Long
nse_nsefo_broadcast_nnfbcast_v9_50.open_interest_long.size = 8

-- Display: Open Interest Long
nse_nsefo_broadcast_nnfbcast_v9_50.open_interest_long.display = function(value)
  return "Open Interest Long: "..value
end

-- Dissect: Open Interest Long
nse_nsefo_broadcast_nnfbcast_v9_50.open_interest_long.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.open_interest_long.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.open_interest_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.open_interest_long, range, value, display)

  return offset + length, value
end

-- Open Interest Short
nse_nsefo_broadcast_nnfbcast_v9_50.open_interest_short = {}

-- Size: Open Interest Short
nse_nsefo_broadcast_nnfbcast_v9_50.open_interest_short.size = 4

-- Display: Open Interest Short
nse_nsefo_broadcast_nnfbcast_v9_50.open_interest_short.display = function(value)
  return "Open Interest Short: "..value
end

-- Dissect: Open Interest Short
nse_nsefo_broadcast_nnfbcast_v9_50.open_interest_short.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.open_interest_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.open_interest_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.open_interest_short, range, value, display)

  return offset + length, value
end

-- Open Price
nse_nsefo_broadcast_nnfbcast_v9_50.open_price = {}

-- Size: Open Price
nse_nsefo_broadcast_nnfbcast_v9_50.open_price.size = 4

-- Display: Open Price
nse_nsefo_broadcast_nnfbcast_v9_50.open_price.display = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
nse_nsefo_broadcast_nnfbcast_v9_50.open_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.open_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.open_price, range, value, display)

  return offset + length, value
end

-- Open Price Difference
nse_nsefo_broadcast_nnfbcast_v9_50.open_price_difference = {}

-- Size: Open Price Difference
nse_nsefo_broadcast_nnfbcast_v9_50.open_price_difference.size = 4

-- Display: Open Price Difference
nse_nsefo_broadcast_nnfbcast_v9_50.open_price_difference.display = function(value)
  return "Open Price Difference: "..value
end

-- Dissect: Open Price Difference
nse_nsefo_broadcast_nnfbcast_v9_50.open_price_difference.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.open_price_difference.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.open_price_difference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.open_price_difference, range, value, display)

  return offset + length, value
end

-- Opening Index
nse_nsefo_broadcast_nnfbcast_v9_50.opening_index = {}

-- Size: Opening Index
nse_nsefo_broadcast_nnfbcast_v9_50.opening_index.size = 4

-- Display: Opening Index
nse_nsefo_broadcast_nnfbcast_v9_50.opening_index.display = function(value)
  return "Opening Index: "..value
end

-- Dissect: Opening Index
nse_nsefo_broadcast_nnfbcast_v9_50.opening_index.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.opening_index.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.opening_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.opening_index, range, value, display)

  return offset + length, value
end

-- Opening Price
nse_nsefo_broadcast_nnfbcast_v9_50.opening_price = {}

-- Size: Opening Price
nse_nsefo_broadcast_nnfbcast_v9_50.opening_price.size = 4

-- Display: Opening Price
nse_nsefo_broadcast_nnfbcast_v9_50.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Dissect: Opening Price
nse_nsefo_broadcast_nnfbcast_v9_50.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.opening_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Option Type
nse_nsefo_broadcast_nnfbcast_v9_50.option_type = {}

-- Size: Option Type
nse_nsefo_broadcast_nnfbcast_v9_50.option_type.size = 2

-- Display: Option Type
nse_nsefo_broadcast_nnfbcast_v9_50.option_type.display = function(value)
  if value == "CE" then
    return "Option Type: Call Option (CE)"
  end
  if value == "PE" then
    return "Option Type: Put Option (PE)"
  end
  if value == "XX" then
    return "Option Type: Futures Contract (XX)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nse_nsefo_broadcast_nnfbcast_v9_50.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.option_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.option_type, range, value, display)

  return offset + length, value
end

-- Participant Id
nse_nsefo_broadcast_nnfbcast_v9_50.participant_id = {}

-- Size: Participant Id
nse_nsefo_broadcast_nnfbcast_v9_50.participant_id.size = 12

-- Display: Participant Id
nse_nsefo_broadcast_nnfbcast_v9_50.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
nse_nsefo_broadcast_nnfbcast_v9_50.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Participant Name
nse_nsefo_broadcast_nnfbcast_v9_50.participant_name = {}

-- Size: Participant Name
nse_nsefo_broadcast_nnfbcast_v9_50.participant_name.size = 25

-- Display: Participant Name
nse_nsefo_broadcast_nnfbcast_v9_50.participant_name.display = function(value)
  return "Participant Name: "..value
end

-- Dissect: Participant Name
nse_nsefo_broadcast_nnfbcast_v9_50.participant_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.participant_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.participant_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.participant_name, range, value, display)

  return offset + length, value
end

-- Participant Status
nse_nsefo_broadcast_nnfbcast_v9_50.participant_status = {}

-- Size: Participant Status
nse_nsefo_broadcast_nnfbcast_v9_50.participant_status.size = 1

-- Display: Participant Status
nse_nsefo_broadcast_nnfbcast_v9_50.participant_status.display = function(value)
  if value == "S" then
    return "Participant Status: Suspended (S)"
  end
  if value == "A" then
    return "Participant Status: Active (A)"
  end

  return "Participant Status: Unknown("..value..")"
end

-- Dissect: Participant Status
nse_nsefo_broadcast_nnfbcast_v9_50.participant_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.participant_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.participant_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.participant_status, range, value, display)

  return offset + length, value
end

-- Participant Update Date Time
nse_nsefo_broadcast_nnfbcast_v9_50.participant_update_date_time = {}

-- Size: Participant Update Date Time
nse_nsefo_broadcast_nnfbcast_v9_50.participant_update_date_time.size = 4

-- Display: Participant Update Date Time
nse_nsefo_broadcast_nnfbcast_v9_50.participant_update_date_time.display = function(value)
  return "Participant Update Date Time: "..value
end

-- Dissect: Participant Update Date Time
nse_nsefo_broadcast_nnfbcast_v9_50.participant_update_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.participant_update_date_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.participant_update_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.participant_update_date_time, range, value, display)

  return offset + length, value
end

-- Percent Change
nse_nsefo_broadcast_nnfbcast_v9_50.percent_change = {}

-- Size: Percent Change
nse_nsefo_broadcast_nnfbcast_v9_50.percent_change.size = 4

-- Display: Percent Change
nse_nsefo_broadcast_nnfbcast_v9_50.percent_change.display = function(value)
  return "Percent Change: "..value
end

-- Dissect: Percent Change
nse_nsefo_broadcast_nnfbcast_v9_50.percent_change.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.percent_change.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.percent_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.percent_change, range, value, display)

  return offset + length, value
end

-- Permitted To Trade
nse_nsefo_broadcast_nnfbcast_v9_50.permitted_to_trade = {}

-- Size: Permitted To Trade
nse_nsefo_broadcast_nnfbcast_v9_50.permitted_to_trade.size = 2

-- Display: Permitted To Trade
nse_nsefo_broadcast_nnfbcast_v9_50.permitted_to_trade.display = function(value)
  if value == 0 then
    return "Permitted To Trade: Listed But Not Permitted To Trade (0)"
  end
  if value == 1 then
    return "Permitted To Trade: Permitted To Trade (1)"
  end
  if value == 2 then
    return "Permitted To Trade: Bse Listed (2)"
  end

  return "Permitted To Trade: Unknown("..value..")"
end

-- Dissect: Permitted To Trade
nse_nsefo_broadcast_nnfbcast_v9_50.permitted_to_trade.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.permitted_to_trade.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.permitted_to_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.permitted_to_trade, range, value, display)

  return offset + length, value
end

-- Price
nse_nsefo_broadcast_nnfbcast_v9_50.price = {}

-- Size: Price
nse_nsefo_broadcast_nnfbcast_v9_50.price.size = 4

-- Display: Price
nse_nsefo_broadcast_nnfbcast_v9_50.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nse_nsefo_broadcast_nnfbcast_v9_50.price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.price, range, value, display)

  return offset + length, value
end

-- Qty
nse_nsefo_broadcast_nnfbcast_v9_50.qty = {}

-- Size: Qty
nse_nsefo_broadcast_nnfbcast_v9_50.qty.size = 4

-- Display: Qty
nse_nsefo_broadcast_nnfbcast_v9_50.qty.display = function(value)
  return "Qty: "..value
end

-- Dissect: Qty
nse_nsefo_broadcast_nnfbcast_v9_50.qty.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.qty, range, value, display)

  return offset + length, value
end

-- Quantity Long
nse_nsefo_broadcast_nnfbcast_v9_50.quantity_long = {}

-- Size: Quantity Long
nse_nsefo_broadcast_nnfbcast_v9_50.quantity_long.size = 8

-- Display: Quantity Long
nse_nsefo_broadcast_nnfbcast_v9_50.quantity_long.display = function(value)
  return "Quantity Long: "..value
end

-- Dissect: Quantity Long
nse_nsefo_broadcast_nnfbcast_v9_50.quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.quantity_long.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.quantity_long, range, value, display)

  return offset + length, value
end

-- Quantity Short
nse_nsefo_broadcast_nnfbcast_v9_50.quantity_short = {}

-- Size: Quantity Short
nse_nsefo_broadcast_nnfbcast_v9_50.quantity_short.size = 4

-- Display: Quantity Short
nse_nsefo_broadcast_nnfbcast_v9_50.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
nse_nsefo_broadcast_nnfbcast_v9_50.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.quantity_short.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Re Admission Date
nse_nsefo_broadcast_nnfbcast_v9_50.re_admission_date = {}

-- Size: Re Admission Date
nse_nsefo_broadcast_nnfbcast_v9_50.re_admission_date.size = 4

-- Display: Re Admission Date
nse_nsefo_broadcast_nnfbcast_v9_50.re_admission_date.display = function(value)
  return "Re Admission Date: "..value
end

-- Dissect: Re Admission Date
nse_nsefo_broadcast_nnfbcast_v9_50.re_admission_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.re_admission_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.re_admission_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.re_admission_date, range, value, display)

  return offset + length, value
end

-- Record Date
nse_nsefo_broadcast_nnfbcast_v9_50.record_date = {}

-- Size: Record Date
nse_nsefo_broadcast_nnfbcast_v9_50.record_date.size = 4

-- Display: Record Date
nse_nsefo_broadcast_nnfbcast_v9_50.record_date.display = function(value)
  return "Record Date: "..value
end

-- Dissect: Record Date
nse_nsefo_broadcast_nnfbcast_v9_50.record_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.record_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.record_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.record_date, range, value, display)

  return offset + length, value
end

-- Reference Price
nse_nsefo_broadcast_nnfbcast_v9_50.reference_price = {}

-- Size: Reference Price
nse_nsefo_broadcast_nnfbcast_v9_50.reference_price.size = 4

-- Display: Reference Price
nse_nsefo_broadcast_nnfbcast_v9_50.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
nse_nsefo_broadcast_nnfbcast_v9_50.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.reference_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Remark
nse_nsefo_broadcast_nnfbcast_v9_50.remark = {}

-- Size: Remark
nse_nsefo_broadcast_nnfbcast_v9_50.remark.size = 25

-- Display: Remark
nse_nsefo_broadcast_nnfbcast_v9_50.remark.display = function(value)
  return "Remark: "..value
end

-- Dissect: Remark
nse_nsefo_broadcast_nnfbcast_v9_50.remark.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.remark.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.remark.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.remark, range, value, display)

  return offset + length, value
end

-- Reserved 0
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_0 = {}

-- Size: Reserved 0
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_0.size = 2

-- Display: Reserved 0
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_0.display = function(value)
  return "Reserved 0: "..value
end

-- Dissect: Reserved 0
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_0.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.reserved_0.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.reserved_0.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_0, range, value, display)

  return offset + length, value
end

-- Reserved 1
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_1 = {}

-- Size: Reserved 1
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_1.size = 1

-- Display: Reserved 1
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 14
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_14 = {}

-- Size: Reserved 14
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_14.size = 14

-- Display: Reserved 14
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_14.display = function(value)
  return "Reserved 14: "..value
end

-- Dissect: Reserved 14
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_14.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.reserved_14.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.reserved_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_14, range, value, display)

  return offset + length, value
end

-- Reserved 18
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_18 = {}

-- Size: Reserved 18
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_18.size = 1

-- Display: Reserved 18
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_18.display = function(value)
  return "Reserved 18: "..value
end

-- Dissect: Reserved 18
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_18.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.reserved_18.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.reserved_18.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_18, range, value, display)

  return offset + length, value
end

-- Reserved 19
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_19 = {}

-- Size: Reserved 19
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_19.size = 3

-- Display: Reserved 19
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_19.display = function(value)
  return "Reserved 19: "..value
end

-- Dissect: Reserved 19
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_19.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.reserved_19.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.reserved_19.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_19, range, value, display)

  return offset + length, value
end

-- Reserved 2
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_2 = {}

-- Size: Reserved 2
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_2.size = 2

-- Display: Reserved 2
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.reserved_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 26
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_26 = {}

-- Size: Reserved 26
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_26.size = 26

-- Display: Reserved 26
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_26.display = function(value)
  return "Reserved 26: "..value
end

-- Dissect: Reserved 26
nse_nsefo_broadcast_nnfbcast_v9_50.reserved_26.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.reserved_26.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.reserved_26.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_26, range, value, display)

  return offset + length, value
end

-- Sell Price
nse_nsefo_broadcast_nnfbcast_v9_50.sell_price = {}

-- Size: Sell Price
nse_nsefo_broadcast_nnfbcast_v9_50.sell_price.size = 4

-- Display: Sell Price
nse_nsefo_broadcast_nnfbcast_v9_50.sell_price.display = function(value)
  return "Sell Price: "..value
end

-- Dissect: Sell Price
nse_nsefo_broadcast_nnfbcast_v9_50.sell_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.sell_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.sell_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.sell_price, range, value, display)

  return offset + length, value
end

-- Sell Volume Long
nse_nsefo_broadcast_nnfbcast_v9_50.sell_volume_long = {}

-- Size: Sell Volume Long
nse_nsefo_broadcast_nnfbcast_v9_50.sell_volume_long.size = 8

-- Display: Sell Volume Long
nse_nsefo_broadcast_nnfbcast_v9_50.sell_volume_long.display = function(value)
  return "Sell Volume Long: "..value
end

-- Dissect: Sell Volume Long
nse_nsefo_broadcast_nnfbcast_v9_50.sell_volume_long.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.sell_volume_long.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.sell_volume_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.sell_volume_long, range, value, display)

  return offset + length, value
end

-- Sell Volume Short
nse_nsefo_broadcast_nnfbcast_v9_50.sell_volume_short = {}

-- Size: Sell Volume Short
nse_nsefo_broadcast_nnfbcast_v9_50.sell_volume_short.size = 4

-- Display: Sell Volume Short
nse_nsefo_broadcast_nnfbcast_v9_50.sell_volume_short.display = function(value)
  return "Sell Volume Short: "..value
end

-- Dissect: Sell Volume Short
nse_nsefo_broadcast_nnfbcast_v9_50.sell_volume_short.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.sell_volume_short.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.sell_volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.sell_volume_short, range, value, display)

  return offset + length, value
end

-- Series
nse_nsefo_broadcast_nnfbcast_v9_50.series = {}

-- Size: Series
nse_nsefo_broadcast_nnfbcast_v9_50.series.size = 2

-- Display: Series
nse_nsefo_broadcast_nnfbcast_v9_50.series.display = function(value)
  return "Series: "..value
end

-- Dissect: Series
nse_nsefo_broadcast_nnfbcast_v9_50.series.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.series.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.series.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.series, range, value, display)

  return offset + length, value
end

-- Status
nse_nsefo_broadcast_nnfbcast_v9_50.status = {}

-- Size: Status
nse_nsefo_broadcast_nnfbcast_v9_50.status.size = 2

-- Display: Status
nse_nsefo_broadcast_nnfbcast_v9_50.status.display = function(value)
  if value == 1 then
    return "Status: Pre Open (1)"
  end
  if value == 2 then
    return "Status: Open (2)"
  end
  if value == 3 then
    return "Status: Suspended (3)"
  end
  if value == 4 then
    return "Status: Pre Open Extended (4)"
  end
  if value == 5 then
    return "Status: Stock Open With Market (5)"
  end
  if value == 6 then
    return "Status: Price Discovery (6)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
nse_nsefo_broadcast_nnfbcast_v9_50.status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.status, range, value, display)

  return offset + length, value
end

-- Strike Price
nse_nsefo_broadcast_nnfbcast_v9_50.strike_price = {}

-- Size: Strike Price
nse_nsefo_broadcast_nnfbcast_v9_50.strike_price.size = 4

-- Display: Strike Price
nse_nsefo_broadcast_nnfbcast_v9_50.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
nse_nsefo_broadcast_nnfbcast_v9_50.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.strike_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
nse_nsefo_broadcast_nnfbcast_v9_50.symbol = {}

-- Size: Symbol
nse_nsefo_broadcast_nnfbcast_v9_50.symbol.size = 10

-- Display: Symbol
nse_nsefo_broadcast_nnfbcast_v9_50.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nse_nsefo_broadcast_nnfbcast_v9_50.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tick Size
nse_nsefo_broadcast_nnfbcast_v9_50.tick_size = {}

-- Size: Tick Size
nse_nsefo_broadcast_nnfbcast_v9_50.tick_size.size = 4

-- Display: Tick Size
nse_nsefo_broadcast_nnfbcast_v9_50.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
nse_nsefo_broadcast_nnfbcast_v9_50.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.tick_size.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Time Stamp 2
nse_nsefo_broadcast_nnfbcast_v9_50.time_stamp_2 = {}

-- Size: Time Stamp 2
nse_nsefo_broadcast_nnfbcast_v9_50.time_stamp_2.size = 8

-- Display: Time Stamp 2
nse_nsefo_broadcast_nnfbcast_v9_50.time_stamp_2.display = function(value)
  return "Time Stamp 2: "..value
end

-- Dissect: Time Stamp 2
nse_nsefo_broadcast_nnfbcast_v9_50.time_stamp_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.time_stamp_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.time_stamp_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.time_stamp_2, range, value, display)

  return offset + length, value
end

-- Token
nse_nsefo_broadcast_nnfbcast_v9_50.token = {}

-- Size: Token
nse_nsefo_broadcast_nnfbcast_v9_50.token.size = 4

-- Display: Token
nse_nsefo_broadcast_nnfbcast_v9_50.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
nse_nsefo_broadcast_nnfbcast_v9_50.token.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.token.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.token, range, value, display)

  return offset + length, value
end

-- Token 1
nse_nsefo_broadcast_nnfbcast_v9_50.token_1 = {}

-- Size: Token 1
nse_nsefo_broadcast_nnfbcast_v9_50.token_1.size = 4

-- Display: Token 1
nse_nsefo_broadcast_nnfbcast_v9_50.token_1.display = function(value)
  return "Token 1: "..value
end

-- Dissect: Token 1
nse_nsefo_broadcast_nnfbcast_v9_50.token_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.token_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.token_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.token_1, range, value, display)

  return offset + length, value
end

-- Token 2
nse_nsefo_broadcast_nnfbcast_v9_50.token_2 = {}

-- Size: Token 2
nse_nsefo_broadcast_nnfbcast_v9_50.token_2.size = 4

-- Display: Token 2
nse_nsefo_broadcast_nnfbcast_v9_50.token_2.display = function(value)
  return "Token 2: "..value
end

-- Dissect: Token 2
nse_nsefo_broadcast_nnfbcast_v9_50.token_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.token_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.token_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.token_2, range, value, display)

  return offset + length, value
end

-- Token No
nse_nsefo_broadcast_nnfbcast_v9_50.token_no = {}

-- Size: Token No
nse_nsefo_broadcast_nnfbcast_v9_50.token_no.size = 4

-- Display: Token No
nse_nsefo_broadcast_nnfbcast_v9_50.token_no.display = function(value)
  return "Token No: "..value
end

-- Dissect: Token No
nse_nsefo_broadcast_nnfbcast_v9_50.token_no.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.token_no.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.token_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.token_no, range, value, display)

  return offset + length, value
end

-- Token Number
nse_nsefo_broadcast_nnfbcast_v9_50.token_number = {}

-- Size: Token Number
nse_nsefo_broadcast_nnfbcast_v9_50.token_number.size = 4

-- Display: Token Number
nse_nsefo_broadcast_nnfbcast_v9_50.token_number.display = function(value)
  return "Token Number: "..value
end

-- Dissect: Token Number
nse_nsefo_broadcast_nnfbcast_v9_50.token_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.token_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.token_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.token_number, range, value, display)

  return offset + length, value
end

-- Total Buy Quantity Double
nse_nsefo_broadcast_nnfbcast_v9_50.total_buy_quantity_double = {}

-- Size: Total Buy Quantity Double
nse_nsefo_broadcast_nnfbcast_v9_50.total_buy_quantity_double.size = 8

-- Display: Total Buy Quantity Double
nse_nsefo_broadcast_nnfbcast_v9_50.total_buy_quantity_double.display = function(value)
  return "Total Buy Quantity Double: "..string.format("%.0f", value)
end

-- Dissect: Total Buy Quantity Double
nse_nsefo_broadcast_nnfbcast_v9_50.total_buy_quantity_double.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.total_buy_quantity_double.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.total_buy_quantity_double.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.total_buy_quantity_double, range, value, display)

  return offset + length, value
end

-- Total Buy Quantity Long
nse_nsefo_broadcast_nnfbcast_v9_50.total_buy_quantity_long = {}

-- Size: Total Buy Quantity Long
nse_nsefo_broadcast_nnfbcast_v9_50.total_buy_quantity_long.size = 8

-- Display: Total Buy Quantity Long
nse_nsefo_broadcast_nnfbcast_v9_50.total_buy_quantity_long.display = function(value)
  return "Total Buy Quantity Long: "..value
end

-- Dissect: Total Buy Quantity Long
nse_nsefo_broadcast_nnfbcast_v9_50.total_buy_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.total_buy_quantity_long.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.total_buy_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.total_buy_quantity_long, range, value, display)

  return offset + length, value
end

-- Total Order Volume Buy
nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume_buy = {}

-- Size: Total Order Volume Buy
nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume_buy.size = 8

-- Display: Total Order Volume Buy
nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume_buy.display = function(value)
  return "Total Order Volume Buy: "..string.format("%.0f", value)
end

-- Dissect: Total Order Volume Buy
nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume_buy.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume_buy.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume_buy.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.total_order_volume_buy, range, value, display)

  return offset + length, value
end

-- Total Order Volume Sell
nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume_sell = {}

-- Size: Total Order Volume Sell
nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume_sell.size = 8

-- Display: Total Order Volume Sell
nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume_sell.display = function(value)
  return "Total Order Volume Sell: "..string.format("%.0f", value)
end

-- Dissect: Total Order Volume Sell
nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume_sell.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume_sell.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.total_order_volume_sell, range, value, display)

  return offset + length, value
end

-- Total Sell Quantity Double
nse_nsefo_broadcast_nnfbcast_v9_50.total_sell_quantity_double = {}

-- Size: Total Sell Quantity Double
nse_nsefo_broadcast_nnfbcast_v9_50.total_sell_quantity_double.size = 8

-- Display: Total Sell Quantity Double
nse_nsefo_broadcast_nnfbcast_v9_50.total_sell_quantity_double.display = function(value)
  return "Total Sell Quantity Double: "..string.format("%.0f", value)
end

-- Dissect: Total Sell Quantity Double
nse_nsefo_broadcast_nnfbcast_v9_50.total_sell_quantity_double.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.total_sell_quantity_double.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.total_sell_quantity_double.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.total_sell_quantity_double, range, value, display)

  return offset + length, value
end

-- Total Sell Quantity Long
nse_nsefo_broadcast_nnfbcast_v9_50.total_sell_quantity_long = {}

-- Size: Total Sell Quantity Long
nse_nsefo_broadcast_nnfbcast_v9_50.total_sell_quantity_long.size = 8

-- Display: Total Sell Quantity Long
nse_nsefo_broadcast_nnfbcast_v9_50.total_sell_quantity_long.display = function(value)
  return "Total Sell Quantity Long: "..value
end

-- Dissect: Total Sell Quantity Long
nse_nsefo_broadcast_nnfbcast_v9_50.total_sell_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.total_sell_quantity_long.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.total_sell_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.total_sell_quantity_long, range, value, display)

  return offset + length, value
end

-- Total Traded Value
nse_nsefo_broadcast_nnfbcast_v9_50.total_traded_value = {}

-- Size: Total Traded Value
nse_nsefo_broadcast_nnfbcast_v9_50.total_traded_value.size = 8

-- Display: Total Traded Value
nse_nsefo_broadcast_nnfbcast_v9_50.total_traded_value.display = function(value)
  return "Total Traded Value: "..string.format("%.0f", value)
end

-- Dissect: Total Traded Value
nse_nsefo_broadcast_nnfbcast_v9_50.total_traded_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.total_traded_value.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.total_traded_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.total_traded_value, range, value, display)

  return offset + length, value
end

-- Trade Number
nse_nsefo_broadcast_nnfbcast_v9_50.trade_number = {}

-- Size: Trade Number
nse_nsefo_broadcast_nnfbcast_v9_50.trade_number.size = 4

-- Display: Trade Number
nse_nsefo_broadcast_nnfbcast_v9_50.trade_number.display = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
nse_nsefo_broadcast_nnfbcast_v9_50.trade_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.trade_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Trade Price
nse_nsefo_broadcast_nnfbcast_v9_50.trade_price = {}

-- Size: Trade Price
nse_nsefo_broadcast_nnfbcast_v9_50.trade_price.size = 4

-- Display: Trade Price
nse_nsefo_broadcast_nnfbcast_v9_50.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
nse_nsefo_broadcast_nnfbcast_v9_50.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.trade_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Volume
nse_nsefo_broadcast_nnfbcast_v9_50.trade_volume = {}

-- Size: Trade Volume
nse_nsefo_broadcast_nnfbcast_v9_50.trade_volume.size = 4

-- Display: Trade Volume
nse_nsefo_broadcast_nnfbcast_v9_50.trade_volume.display = function(value)
  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
nse_nsefo_broadcast_nnfbcast_v9_50.trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.trade_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Traded Volume Long
nse_nsefo_broadcast_nnfbcast_v9_50.traded_volume_long = {}

-- Size: Traded Volume Long
nse_nsefo_broadcast_nnfbcast_v9_50.traded_volume_long.size = 8

-- Display: Traded Volume Long
nse_nsefo_broadcast_nnfbcast_v9_50.traded_volume_long.display = function(value)
  return "Traded Volume Long: "..value
end

-- Dissect: Traded Volume Long
nse_nsefo_broadcast_nnfbcast_v9_50.traded_volume_long.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.traded_volume_long.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.traded_volume_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.traded_volume_long, range, value, display)

  return offset + length, value
end

-- Traded Volume Short
nse_nsefo_broadcast_nnfbcast_v9_50.traded_volume_short = {}

-- Size: Traded Volume Short
nse_nsefo_broadcast_nnfbcast_v9_50.traded_volume_short.size = 4

-- Display: Traded Volume Short
nse_nsefo_broadcast_nnfbcast_v9_50.traded_volume_short.display = function(value)
  return "Traded Volume Short: "..value
end

-- Dissect: Traded Volume Short
nse_nsefo_broadcast_nnfbcast_v9_50.traded_volume_short.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.traded_volume_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.traded_volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.traded_volume_short, range, value, display)

  return offset + length, value
end

-- Trader Id
nse_nsefo_broadcast_nnfbcast_v9_50.trader_id = {}

-- Size: Trader Id
nse_nsefo_broadcast_nnfbcast_v9_50.trader_id.size = 4

-- Display: Trader Id
nse_nsefo_broadcast_nnfbcast_v9_50.trader_id.display = function(value)
  return "Trader Id: "..value
end

-- Dissect: Trader Id
nse_nsefo_broadcast_nnfbcast_v9_50.trader_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.trader_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.trader_id, range, value, display)

  return offset + length, value
end

-- Trading Status
nse_nsefo_broadcast_nnfbcast_v9_50.trading_status = {}

-- Size: Trading Status
nse_nsefo_broadcast_nnfbcast_v9_50.trading_status.size = 2

-- Display: Trading Status
nse_nsefo_broadcast_nnfbcast_v9_50.trading_status.display = function(value)
  if value == 1 then
    return "Trading Status: Preopen (1)"
  end
  if value == 2 then
    return "Trading Status: Open (2)"
  end
  if value == 3 then
    return "Trading Status: Suspended (3)"
  end
  if value == 4 then
    return "Trading Status: Preopen Extended (4)"
  end
  if value == 6 then
    return "Trading Status: Price Discovery (6)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
nse_nsefo_broadcast_nnfbcast_v9_50.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.trading_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Transaction Code
nse_nsefo_broadcast_nnfbcast_v9_50.transaction_code = {}

-- Size: Transaction Code
nse_nsefo_broadcast_nnfbcast_v9_50.transaction_code.size = 2

-- Display: Transaction Code
nse_nsefo_broadcast_nnfbcast_v9_50.transaction_code.display = function(value)
  if value == 6501 then
    return "Transaction Code: Broadcast Journal Vct Message (6501)"
  end
  if value == 6013 then
    return "Transaction Code: Security Open Price Message (6013)"
  end
  if value == 7305 then
    return "Transaction Code: Security Master Change Message (7305)"
  end
  if value == 7324 then
    return "Transaction Code: Instrument Master Change Message (7324)"
  end
  if value == 7306 then
    return "Transaction Code: Participant Master Change Message (7306)"
  end
  if value == 7320 then
    return "Transaction Code: Security Status Change Message (7320)"
  end
  if value == 7200 then
    return "Transaction Code: Market By Order And Market By Price Message (7200)"
  end
  if value == 7208 then
    return "Transaction Code: Only Market By Price Message (7208)"
  end
  if value == 17208 then
    return "Transaction Code: Enhanced Only Market By Price Message (17208)"
  end
  if value == 7202 then
    return "Transaction Code: Ticker And Market Index Message (7202)"
  end
  if value == 17202 then
    return "Transaction Code: Enhanced Ticker And Market Index Message (17202)"
  end
  if value == 7201 then
    return "Transaction Code: Market Watch Round Robin Message (7201)"
  end
  if value == 17201 then
    return "Transaction Code: Enhanced Market Watch Round Robin Message (17201)"
  end
  if value == 7207 then
    return "Transaction Code: Indices Message (7207)"
  end
  if value == 7203 then
    return "Transaction Code: Industry Index Update Message (7203)"
  end
  if value == 7211 then
    return "Transaction Code: Spread Market By Price Delta Message (7211)"
  end
  if value == 17211 then
    return "Transaction Code: Enhanced Spread Market By Price Delta Message (17211)"
  end
  if value == 7130 then
    return "Transaction Code: Asset Open Interest Message (7130)"
  end
  if value == 17130 then
    return "Transaction Code: Enhanced Asset Open Interest Message (17130)"
  end
  if value == 7220 then
    return "Transaction Code: Limit Price Protection Range Message (7220)"
  end
  if value == 7338 then
    return "Transaction Code: Cas Reference Price Message (7338)"
  end
  if value == 9010 then
    return "Transaction Code: Turnover Exceeded Message (9010)"
  end
  if value == 9011 then
    return "Transaction Code: Turnover Exceeded Message (9011)"
  end

  return "Transaction Code: Unknown("..value..")"
end

-- Dissect: Transaction Code
nse_nsefo_broadcast_nnfbcast_v9_50.transaction_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.transaction_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.transaction_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.transaction_code, range, value, display)

  return offset + length, value
end

-- Vol Trd Today Excd Indc
nse_nsefo_broadcast_nnfbcast_v9_50.vol_trd_today_excd_indc = {}

-- Size: Vol Trd Today Excd Indc
nse_nsefo_broadcast_nnfbcast_v9_50.vol_trd_today_excd_indc.size = 1

-- Display: Vol Trd Today Excd Indc
nse_nsefo_broadcast_nnfbcast_v9_50.vol_trd_today_excd_indc.display = function(value)
  return "Vol Trd Today Excd Indc: "..value
end

-- Dissect: Vol Trd Today Excd Indc
nse_nsefo_broadcast_nnfbcast_v9_50.vol_trd_today_excd_indc.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.vol_trd_today_excd_indc.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.vol_trd_today_excd_indc.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.vol_trd_today_excd_indc, range, value, display)

  return offset + length, value
end

-- Volume Long
nse_nsefo_broadcast_nnfbcast_v9_50.volume_long = {}

-- Size: Volume Long
nse_nsefo_broadcast_nnfbcast_v9_50.volume_long.size = 8

-- Display: Volume Long
nse_nsefo_broadcast_nnfbcast_v9_50.volume_long.display = function(value)
  return "Volume Long: "..value
end

-- Dissect: Volume Long
nse_nsefo_broadcast_nnfbcast_v9_50.volume_long.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.volume_long.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.volume_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.volume_long, range, value, display)

  return offset + length, value
end

-- Volume Short
nse_nsefo_broadcast_nnfbcast_v9_50.volume_short = {}

-- Size: Volume Short
nse_nsefo_broadcast_nnfbcast_v9_50.volume_short.size = 4

-- Display: Volume Short
nse_nsefo_broadcast_nnfbcast_v9_50.volume_short.display = function(value)
  return "Volume Short: "..value
end

-- Dissect: Volume Short
nse_nsefo_broadcast_nnfbcast_v9_50.volume_short.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.volume_short.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.volume_short, range, value, display)

  return offset + length, value
end

-- Volume Traded Today Long
nse_nsefo_broadcast_nnfbcast_v9_50.volume_traded_today_long = {}

-- Size: Volume Traded Today Long
nse_nsefo_broadcast_nnfbcast_v9_50.volume_traded_today_long.size = 8

-- Display: Volume Traded Today Long
nse_nsefo_broadcast_nnfbcast_v9_50.volume_traded_today_long.display = function(value)
  return "Volume Traded Today Long: "..value
end

-- Dissect: Volume Traded Today Long
nse_nsefo_broadcast_nnfbcast_v9_50.volume_traded_today_long.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.volume_traded_today_long.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.volume_traded_today_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.volume_traded_today_long, range, value, display)

  return offset + length, value
end

-- Volume Traded Today Short
nse_nsefo_broadcast_nnfbcast_v9_50.volume_traded_today_short = {}

-- Size: Volume Traded Today Short
nse_nsefo_broadcast_nnfbcast_v9_50.volume_traded_today_short.size = 4

-- Display: Volume Traded Today Short
nse_nsefo_broadcast_nnfbcast_v9_50.volume_traded_today_short.display = function(value)
  return "Volume Traded Today Short: "..value
end

-- Dissect: Volume Traded Today Short
nse_nsefo_broadcast_nnfbcast_v9_50.volume_traded_today_short.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.volume_traded_today_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.volume_traded_today_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.volume_traded_today_short, range, value, display)

  return offset + length, value
end

-- Warning Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.warning_quantity = {}

-- Size: Warning Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.warning_quantity.size = 4

-- Display: Warning Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.warning_quantity.display = function(value)
  return "Warning Quantity: "..value
end

-- Dissect: Warning Quantity
nse_nsefo_broadcast_nnfbcast_v9_50.warning_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.warning_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.warning_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.warning_quantity, range, value, display)

  return offset + length, value
end

-- Warning Type
nse_nsefo_broadcast_nnfbcast_v9_50.warning_type = {}

-- Size: Warning Type
nse_nsefo_broadcast_nnfbcast_v9_50.warning_type.size = 2

-- Display: Warning Type
nse_nsefo_broadcast_nnfbcast_v9_50.warning_type.display = function(value)
  if value == 1 then
    return "Warning Type: Turnover Limit About To Exceed (1)"
  end
  if value == 2 then
    return "Warning Type: Turnover Limit Exceeded (2)"
  end

  return "Warning Type: Unknown("..value..")"
end

-- Dissect: Warning Type
nse_nsefo_broadcast_nnfbcast_v9_50.warning_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.warning_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.warning_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.warning_type, range, value, display)

  return offset + length, value
end

-- Yearly High
nse_nsefo_broadcast_nnfbcast_v9_50.yearly_high = {}

-- Size: Yearly High
nse_nsefo_broadcast_nnfbcast_v9_50.yearly_high.size = 4

-- Display: Yearly High
nse_nsefo_broadcast_nnfbcast_v9_50.yearly_high.display = function(value)
  return "Yearly High: "..value
end

-- Dissect: Yearly High
nse_nsefo_broadcast_nnfbcast_v9_50.yearly_high.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.yearly_high.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.yearly_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.yearly_high, range, value, display)

  return offset + length, value
end

-- Yearly Low
nse_nsefo_broadcast_nnfbcast_v9_50.yearly_low = {}

-- Size: Yearly Low
nse_nsefo_broadcast_nnfbcast_v9_50.yearly_low.size = 4

-- Display: Yearly Low
nse_nsefo_broadcast_nnfbcast_v9_50.yearly_low.display = function(value)
  return "Yearly Low: "..value
end

-- Dissect: Yearly Low
nse_nsefo_broadcast_nnfbcast_v9_50.yearly_low.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_broadcast_nnfbcast_v9_50.yearly_low.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.yearly_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.yearly_low, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nse NseFo Broadcast NnfBcast 9.50
-----------------------------------------------------------------------

-- St Bcast Destination
nse_nsefo_broadcast_nnfbcast_v9_50.st_bcast_destination = {}

-- Size: St Bcast Destination
nse_nsefo_broadcast_nnfbcast_v9_50.st_bcast_destination.size = 2

-- Display: St Bcast Destination
nse_nsefo_broadcast_nnfbcast_v9_50.st_bcast_destination.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Journalling Required flag set?
  if bit.band(value, 0x1000) ~= 0 then
    flags[#flags + 1] = "Journalling Required"
  end
  -- Is Tandem flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "Tandem"
  end
  -- Is Control Work Station flag set?
  if bit.band(value, 0x4000) ~= 0 then
    flags[#flags + 1] = "Control Work Station"
  end
  -- Is Trader Work Station flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Trader Work Station"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: St Bcast Destination
nse_nsefo_broadcast_nnfbcast_v9_50.st_bcast_destination.bits = function(range, value, packet, parent)

  -- Reserved 112: 12 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_112, range, value)

  -- Journalling Required: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.journalling_required, range, value)

  -- Tandem: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.tandem, range, value)

  -- Control Work Station: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.control_work_station, range, value)

  -- Trader Work Station: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.trader_work_station, range, value)
end

-- Dissect: St Bcast Destination
nse_nsefo_broadcast_nnfbcast_v9_50.st_bcast_destination.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsefo_broadcast_nnfbcast_v9_50.st_bcast_destination.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.st_bcast_destination.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_bcast_destination, range, display)

  if show.structs then
    nse_nsefo_broadcast_nnfbcast_v9_50.st_bcast_destination.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Sec Info
nse_nsefo_broadcast_nnfbcast_v9_50.sec_info = {}

-- Size: Sec Info
nse_nsefo_broadcast_nnfbcast_v9_50.sec_info.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.instrument_name.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.symbol.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.series.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.expiry_date.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.strike_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.option_type.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.ca_level.size

-- Display: Sec Info
nse_nsefo_broadcast_nnfbcast_v9_50.sec_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sec Info
nse_nsefo_broadcast_nnfbcast_v9_50.sec_info.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Name: CHAR
  index, instrument_name = nse_nsefo_broadcast_nnfbcast_v9_50.instrument_name.dissect(buffer, index, packet, parent)

  -- Symbol: CHAR
  index, symbol = nse_nsefo_broadcast_nnfbcast_v9_50.symbol.dissect(buffer, index, packet, parent)

  -- Series: CHAR
  index, series = nse_nsefo_broadcast_nnfbcast_v9_50.series.dissect(buffer, index, packet, parent)

  -- Expiry Date: LONG
  index, expiry_date = nse_nsefo_broadcast_nnfbcast_v9_50.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price: LONG
  index, strike_price = nse_nsefo_broadcast_nnfbcast_v9_50.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: CHAR
  index, option_type = nse_nsefo_broadcast_nnfbcast_v9_50.option_type.dissect(buffer, index, packet, parent)

  -- Ca Level: SHORT
  index, ca_level = nse_nsefo_broadcast_nnfbcast_v9_50.ca_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sec Info
nse_nsefo_broadcast_nnfbcast_v9_50.sec_info.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.sec_info, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.sec_info.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.sec_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.sec_info.fields(buffer, offset, packet, parent)
  end
end

-- Turnover Vct Messages Body
nse_nsefo_broadcast_nnfbcast_v9_50.turnover_vct_messages_body = {}

-- Size: Turnover Vct Messages Body
nse_nsefo_broadcast_nnfbcast_v9_50.turnover_vct_messages_body.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.token.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.sec_info.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.market_type.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.st_bcast_destination.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_message_length.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_message.size

-- Display: Turnover Vct Messages Body
nse_nsefo_broadcast_nnfbcast_v9_50.turnover_vct_messages_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Turnover Vct Messages Body
nse_nsefo_broadcast_nnfbcast_v9_50.turnover_vct_messages_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token: LONG
  index, token = nse_nsefo_broadcast_nnfbcast_v9_50.token.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 7 fields
  index, sec_info = nse_nsefo_broadcast_nnfbcast_v9_50.sec_info.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nsefo_broadcast_nnfbcast_v9_50.market_type.dissect(buffer, index, packet, parent)

  -- St Bcast Destination: Struct of 5 fields
  index, st_bcast_destination = nse_nsefo_broadcast_nnfbcast_v9_50.st_bcast_destination.dissect(buffer, index, packet, parent)

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Broadcast Message: CHAR
  index, broadcast_message = nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Turnover Vct Messages Body
nse_nsefo_broadcast_nnfbcast_v9_50.turnover_vct_messages_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.turnover_vct_messages_body, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.turnover_vct_messages_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.turnover_vct_messages_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.turnover_vct_messages_body.fields(buffer, offset, packet, parent)
  end
end

-- Turnover Limit Exceeded Body
nse_nsefo_broadcast_nnfbcast_v9_50.turnover_limit_exceeded_body = {}

-- Size: Turnover Limit Exceeded Body
nse_nsefo_broadcast_nnfbcast_v9_50.turnover_limit_exceeded_body.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.broker_code.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.counter_broker_code.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.warning_type.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.token.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.instrument_name.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.symbol.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.expiry_date.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.strike_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.option_type.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.ca_level.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.trade_number.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.trade_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.trade_volume.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.final.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.filler.size

-- Display: Turnover Limit Exceeded Body
nse_nsefo_broadcast_nnfbcast_v9_50.turnover_limit_exceeded_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Turnover Limit Exceeded Body
nse_nsefo_broadcast_nnfbcast_v9_50.turnover_limit_exceeded_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Code: CHAR
  index, broker_code = nse_nsefo_broadcast_nnfbcast_v9_50.broker_code.dissect(buffer, index, packet, parent)

  -- Counter Broker Code: CHAR
  index, counter_broker_code = nse_nsefo_broadcast_nnfbcast_v9_50.counter_broker_code.dissect(buffer, index, packet, parent)

  -- Warning Type: SHORT
  index, warning_type = nse_nsefo_broadcast_nnfbcast_v9_50.warning_type.dissect(buffer, index, packet, parent)

  -- Token: LONG
  index, token = nse_nsefo_broadcast_nnfbcast_v9_50.token.dissect(buffer, index, packet, parent)

  -- Instrument Name: CHAR
  index, instrument_name = nse_nsefo_broadcast_nnfbcast_v9_50.instrument_name.dissect(buffer, index, packet, parent)

  -- Symbol: CHAR
  index, symbol = nse_nsefo_broadcast_nnfbcast_v9_50.symbol.dissect(buffer, index, packet, parent)

  -- Expiry Date: LONG
  index, expiry_date = nse_nsefo_broadcast_nnfbcast_v9_50.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price: LONG
  index, strike_price = nse_nsefo_broadcast_nnfbcast_v9_50.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: CHAR
  index, option_type = nse_nsefo_broadcast_nnfbcast_v9_50.option_type.dissect(buffer, index, packet, parent)

  -- Ca Level: SHORT
  index, ca_level = nse_nsefo_broadcast_nnfbcast_v9_50.ca_level.dissect(buffer, index, packet, parent)

  -- Trade Number: LONG
  index, trade_number = nse_nsefo_broadcast_nnfbcast_v9_50.trade_number.dissect(buffer, index, packet, parent)

  -- Trade Price: LONG
  index, trade_price = nse_nsefo_broadcast_nnfbcast_v9_50.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Volume: LONG
  index, trade_volume = nse_nsefo_broadcast_nnfbcast_v9_50.trade_volume.dissect(buffer, index, packet, parent)

  -- Final: CHAR
  index, final = nse_nsefo_broadcast_nnfbcast_v9_50.final.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsefo_broadcast_nnfbcast_v9_50.filler.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Turnover Limit Exceeded Body
nse_nsefo_broadcast_nnfbcast_v9_50.turnover_limit_exceeded_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.turnover_limit_exceeded_body, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.turnover_limit_exceeded_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.turnover_limit_exceeded_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.turnover_limit_exceeded_body.fields(buffer, offset, packet, parent)
  end
end

-- Turnover Payload
nse_nsefo_broadcast_nnfbcast_v9_50.turnover_payload = {}

-- Dissect: Turnover Payload
nse_nsefo_broadcast_nnfbcast_v9_50.turnover_payload.dissect = function(buffer, offset, packet, parent, message_length)
  -- Dissect Turnover Limit Exceeded Body
  if message_length == 98 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.turnover_limit_exceeded_body.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Turnover Vct Messages Body
  if message_length == 320 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.turnover_vct_messages_body.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Turnover Body
nse_nsefo_broadcast_nnfbcast_v9_50.turnover_body = {}

-- Calculate size of: Turnover Body
nse_nsefo_broadcast_nnfbcast_v9_50.turnover_body.size = function(buffer, offset)
  local index = 0

  -- Calculate runtime size of Turnover Payload field
  local turnover_payload_offset = offset + index
  local turnover_payload_type = buffer(turnover_payload_offset - 2, 2):int()
  index = index + nse_nsefo_broadcast_nnfbcast_v9_50.turnover_payload.size(buffer, turnover_payload_offset, turnover_payload_type)

  return index
end

-- Display: Turnover Body
nse_nsefo_broadcast_nnfbcast_v9_50.turnover_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Turnover Body
nse_nsefo_broadcast_nnfbcast_v9_50.turnover_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 2, 2):int()

  -- Turnover Payload: Runtime Type with 2 branches
  index = nse_nsefo_broadcast_nnfbcast_v9_50.turnover_payload.dissect(buffer, index, packet, parent, message_length)

  return index
end

-- Dissect: Turnover Body
nse_nsefo_broadcast_nnfbcast_v9_50.turnover_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.turnover_body, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.turnover_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.turnover_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.turnover_body.fields(buffer, offset, packet, parent)
  end
end

-- Turnover Exceeded Message
nse_nsefo_broadcast_nnfbcast_v9_50.turnover_exceeded_message = {}

-- Calculate size of: Turnover Exceeded Message
nse_nsefo_broadcast_nnfbcast_v9_50.turnover_exceeded_message.size = function(buffer, offset)
  local index = 0

  index = index + nse_nsefo_broadcast_nnfbcast_v9_50.turnover_body.size(buffer, offset + index)

  return index
end

-- Display: Turnover Exceeded Message
nse_nsefo_broadcast_nnfbcast_v9_50.turnover_exceeded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Turnover Exceeded Message
nse_nsefo_broadcast_nnfbcast_v9_50.turnover_exceeded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Turnover Body: Struct of 1 fields
  index, turnover_body = nse_nsefo_broadcast_nnfbcast_v9_50.turnover_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Turnover Exceeded Message
nse_nsefo_broadcast_nnfbcast_v9_50.turnover_exceeded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.turnover_exceeded_message, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.turnover_exceeded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.turnover_exceeded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.turnover_exceeded_message.fields(buffer, offset, packet, parent)
  end
end

-- Token And Ref Price
nse_nsefo_broadcast_nnfbcast_v9_50.token_and_ref_price = {}

-- Size: Token And Ref Price
nse_nsefo_broadcast_nnfbcast_v9_50.token_and_ref_price.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.sec_info.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.token.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.reference_price.size

-- Display: Token And Ref Price
nse_nsefo_broadcast_nnfbcast_v9_50.token_and_ref_price.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Token And Ref Price
nse_nsefo_broadcast_nnfbcast_v9_50.token_and_ref_price.fields = function(buffer, offset, packet, parent, token_and_ref_price_index)
  local index = offset

  -- Implicit Token And Ref Price Index
  if token_and_ref_price_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.token_and_ref_price_index, token_and_ref_price_index)
    iteration:set_generated()
  end

  -- Sec Info: Struct of 7 fields
  index, sec_info = nse_nsefo_broadcast_nnfbcast_v9_50.sec_info.dissect(buffer, index, packet, parent)

  -- Token: LONG
  index, token = nse_nsefo_broadcast_nnfbcast_v9_50.token.dissect(buffer, index, packet, parent)

  -- Reference Price: LONG
  index, reference_price = nse_nsefo_broadcast_nnfbcast_v9_50.reference_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Token And Ref Price
nse_nsefo_broadcast_nnfbcast_v9_50.token_and_ref_price.dissect = function(buffer, offset, packet, parent, token_and_ref_price_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.token_and_ref_price, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.token_and_ref_price.fields(buffer, offset, packet, parent, token_and_ref_price_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.token_and_ref_price.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.token_and_ref_price.fields(buffer, offset, packet, parent, token_and_ref_price_index)
  end
end

-- Cas Reference Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.cas_reference_price_message = {}

-- Size: Cas Reference Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.cas_reference_price_message.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.number_of_records.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.token_and_ref_price.size

-- Display: Cas Reference Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.cas_reference_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cas Reference Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.cas_reference_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nsefo_broadcast_nnfbcast_v9_50.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Token And Ref Price
  for token_and_ref_price_index = 1, 10 do
    index, token_and_ref_price = nse_nsefo_broadcast_nnfbcast_v9_50.token_and_ref_price.dissect(buffer, index, packet, parent, token_and_ref_price_index)
  end

  return index
end

-- Dissect: Cas Reference Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.cas_reference_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.cas_reference_price_message, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.cas_reference_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.cas_reference_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.cas_reference_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Limit Price Protection Range Detail
nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_detail = {}

-- Size: Limit Price Protection Range Detail
nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_detail.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.token_number.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.high_exec_band.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.low_exec_band.size

-- Display: Limit Price Protection Range Detail
nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_detail.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Price Protection Range Detail
nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_detail.fields = function(buffer, offset, packet, parent, limit_price_protection_range_detail_index)
  local index = offset

  -- Implicit Limit Price Protection Range Detail Index
  if limit_price_protection_range_detail_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.limit_price_protection_range_detail_index, limit_price_protection_range_detail_index)
    iteration:set_generated()
  end

  -- Token Number: LONG
  index, token_number = nse_nsefo_broadcast_nnfbcast_v9_50.token_number.dissect(buffer, index, packet, parent)

  -- High Exec Band: LONG
  index, high_exec_band = nse_nsefo_broadcast_nnfbcast_v9_50.high_exec_band.dissect(buffer, index, packet, parent)

  -- Low Exec Band: LONG
  index, low_exec_band = nse_nsefo_broadcast_nnfbcast_v9_50.low_exec_band.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Limit Price Protection Range Detail
nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_detail.dissect = function(buffer, offset, packet, parent, limit_price_protection_range_detail_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.limit_price_protection_range_detail, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_detail.fields(buffer, offset, packet, parent, limit_price_protection_range_detail_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_detail.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_detail.fields(buffer, offset, packet, parent, limit_price_protection_range_detail_index)
  end
end

-- Limit Price Protection Range Data
nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_data = {}

-- Size: Limit Price Protection Range Data
nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_data.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.msg_count.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_detail.size

-- Display: Limit Price Protection Range Data
nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Price Protection Range Data
nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Count: LONG
  index, msg_count = nse_nsefo_broadcast_nnfbcast_v9_50.msg_count.dissect(buffer, index, packet, parent)

  -- Array Of: Limit Price Protection Range Detail
  for limit_price_protection_range_detail_index = 1, 25 do
    index, limit_price_protection_range_detail = nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_detail.dissect(buffer, index, packet, parent, limit_price_protection_range_detail_index)
  end

  return index
end

-- Dissect: Limit Price Protection Range Data
nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.limit_price_protection_range_data, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_data.fields(buffer, offset, packet, parent)
  end
end

-- Limit Price Protection Range Message
nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_message = {}

-- Size: Limit Price Protection Range Message
nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_message.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_data.size

-- Display: Limit Price Protection Range Message
nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Price Protection Range Message
nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Limit Price Protection Range Data: Struct of 2 fields
  index, limit_price_protection_range_data = nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Limit Price Protection Range Message
nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.limit_price_protection_range_message, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_message.fields(buffer, offset, packet, parent)
  end
end

-- Enhncd Open Interest
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_open_interest = {}

-- Size: Enhncd Open Interest
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_open_interest.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.token_no.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.current_oi_long.size

-- Display: Enhncd Open Interest
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_open_interest.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enhncd Open Interest
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_open_interest.fields = function(buffer, offset, packet, parent, enhncd_open_interest_index)
  local index = offset

  -- Implicit Enhncd Open Interest Index
  if enhncd_open_interest_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhncd_open_interest_index, enhncd_open_interest_index)
    iteration:set_generated()
  end

  -- Token No: LONG
  index, token_no = nse_nsefo_broadcast_nnfbcast_v9_50.token_no.dissect(buffer, index, packet, parent)

  -- Current Oi Long: LONG LONG
  index, current_oi_long = nse_nsefo_broadcast_nnfbcast_v9_50.current_oi_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enhncd Open Interest
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_open_interest.dissect = function(buffer, offset, packet, parent, enhncd_open_interest_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhncd_open_interest, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_open_interest.fields(buffer, offset, packet, parent, enhncd_open_interest_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_open_interest.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_open_interest.fields(buffer, offset, packet, parent, enhncd_open_interest_index)
  end
end

-- Enhanced Asset Open Interest Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_asset_open_interest_message = {}

-- Size: Enhanced Asset Open Interest Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_asset_open_interest_message.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_open_interest.size

-- Display: Enhanced Asset Open Interest Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_asset_open_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enhanced Asset Open Interest Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_asset_open_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Array Of: Enhncd Open Interest
  for enhncd_open_interest_index = 1, 39 do
    index, enhncd_open_interest = nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_open_interest.dissect(buffer, index, packet, parent, enhncd_open_interest_index)
  end

  return index
end

-- Dissect: Enhanced Asset Open Interest Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_asset_open_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhanced_asset_open_interest_message, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_asset_open_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_asset_open_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_asset_open_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Asset Open Interest
nse_nsefo_broadcast_nnfbcast_v9_50.asset_open_interest = {}

-- Size: Asset Open Interest
nse_nsefo_broadcast_nnfbcast_v9_50.asset_open_interest.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.token_no.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.current_oi_short.size

-- Display: Asset Open Interest
nse_nsefo_broadcast_nnfbcast_v9_50.asset_open_interest.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Asset Open Interest
nse_nsefo_broadcast_nnfbcast_v9_50.asset_open_interest.fields = function(buffer, offset, packet, parent, asset_open_interest_index)
  local index = offset

  -- Implicit Asset Open Interest Index
  if asset_open_interest_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.asset_open_interest_index, asset_open_interest_index)
    iteration:set_generated()
  end

  -- Token No: LONG
  index, token_no = nse_nsefo_broadcast_nnfbcast_v9_50.token_no.dissect(buffer, index, packet, parent)

  -- Current Oi Short: UNSIGNED LONG
  index, current_oi_short = nse_nsefo_broadcast_nnfbcast_v9_50.current_oi_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Asset Open Interest
nse_nsefo_broadcast_nnfbcast_v9_50.asset_open_interest.dissect = function(buffer, offset, packet, parent, asset_open_interest_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.asset_open_interest, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.asset_open_interest.fields(buffer, offset, packet, parent, asset_open_interest_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.asset_open_interest.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.asset_open_interest.fields(buffer, offset, packet, parent, asset_open_interest_index)
  end
end

-- Asset Open Interest Message
nse_nsefo_broadcast_nnfbcast_v9_50.asset_open_interest_message = {}

-- Size: Asset Open Interest Message
nse_nsefo_broadcast_nnfbcast_v9_50.asset_open_interest_message.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.asset_open_interest.size

-- Display: Asset Open Interest Message
nse_nsefo_broadcast_nnfbcast_v9_50.asset_open_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Asset Open Interest Message
nse_nsefo_broadcast_nnfbcast_v9_50.asset_open_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Array Of: Asset Open Interest
  for asset_open_interest_index = 1, 58 do
    index, asset_open_interest = nse_nsefo_broadcast_nnfbcast_v9_50.asset_open_interest.dissect(buffer, index, packet, parent, asset_open_interest_index)
  end

  return index
end

-- Dissect: Asset Open Interest Message
nse_nsefo_broadcast_nnfbcast_v9_50.asset_open_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.asset_open_interest_message, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.asset_open_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.asset_open_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.asset_open_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Total Order Volume
nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume = {}

-- Size: Total Order Volume
nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume_buy.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume_sell.size

-- Display: Total Order Volume
nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Total Order Volume
nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Total Order Volume Buy: DOUBLE
  index, total_order_volume_buy = nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume_buy.dissect(buffer, index, packet, parent)

  -- Total Order Volume Sell: DOUBLE
  index, total_order_volume_sell = nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume_sell.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Total Order Volume
nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.total_order_volume, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume.fields(buffer, offset, packet, parent)
  end
end

-- Enhncd Mbp Sells
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_sells = {}

-- Size: Enhncd Mbp Sells
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_sells.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.no_orders.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.volume_long.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.price.size

-- Display: Enhncd Mbp Sells
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_sells.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enhncd Mbp Sells
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_sells.fields = function(buffer, offset, packet, parent, enhncd_mbp_sells_index)
  local index = offset

  -- Implicit Enhncd Mbp Sells Index
  if enhncd_mbp_sells_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhncd_mbp_sells_index, enhncd_mbp_sells_index)
    iteration:set_generated()
  end

  -- No Orders: SHORT
  index, no_orders = nse_nsefo_broadcast_nnfbcast_v9_50.no_orders.dissect(buffer, index, packet, parent)

  -- Volume Long: LONG LONG
  index, volume_long = nse_nsefo_broadcast_nnfbcast_v9_50.volume_long.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsefo_broadcast_nnfbcast_v9_50.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enhncd Mbp Sells
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_sells.dissect = function(buffer, offset, packet, parent, enhncd_mbp_sells_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhncd_mbp_sells, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_sells.fields(buffer, offset, packet, parent, enhncd_mbp_sells_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_sells.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_sells.fields(buffer, offset, packet, parent, enhncd_mbp_sells_index)
  end
end

-- Enhncd Mbp Buys
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_buys = {}

-- Size: Enhncd Mbp Buys
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_buys.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.no_orders.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.volume_long.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.price.size

-- Display: Enhncd Mbp Buys
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_buys.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enhncd Mbp Buys
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_buys.fields = function(buffer, offset, packet, parent, enhncd_mbp_buys_index)
  local index = offset

  -- Implicit Enhncd Mbp Buys Index
  if enhncd_mbp_buys_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhncd_mbp_buys_index, enhncd_mbp_buys_index)
    iteration:set_generated()
  end

  -- No Orders: SHORT
  index, no_orders = nse_nsefo_broadcast_nnfbcast_v9_50.no_orders.dissect(buffer, index, packet, parent)

  -- Volume Long: LONG LONG
  index, volume_long = nse_nsefo_broadcast_nnfbcast_v9_50.volume_long.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsefo_broadcast_nnfbcast_v9_50.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enhncd Mbp Buys
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_buys.dissect = function(buffer, offset, packet, parent, enhncd_mbp_buys_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhncd_mbp_buys, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_buys.fields(buffer, offset, packet, parent, enhncd_mbp_buys_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_buys.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_buys.fields(buffer, offset, packet, parent, enhncd_mbp_buys_index)
  end
end

-- Enhanced Spread Market By Price Delta Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_spread_market_by_price_delta_message = {}

-- Size: Enhanced Spread Market By Price Delta Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_spread_market_by_price_delta_message.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.token_1.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.token_2.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.mbp_buy.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.mbp_sell.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.last_active_time.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.traded_volume_long.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.total_traded_value.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_buys.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_sells.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.open_price_difference.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.day_high_price_difference.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.day_low_price_difference.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.last_traded_price_difference.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.last_update_time.size

-- Display: Enhanced Spread Market By Price Delta Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_spread_market_by_price_delta_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enhanced Spread Market By Price Delta Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_spread_market_by_price_delta_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token 1: LONG
  index, token_1 = nse_nsefo_broadcast_nnfbcast_v9_50.token_1.dissect(buffer, index, packet, parent)

  -- Token 2: LONG
  index, token_2 = nse_nsefo_broadcast_nnfbcast_v9_50.token_2.dissect(buffer, index, packet, parent)

  -- Mbp Buy: SHORT
  index, mbp_buy = nse_nsefo_broadcast_nnfbcast_v9_50.mbp_buy.dissect(buffer, index, packet, parent)

  -- Mbp Sell: SHORT
  index, mbp_sell = nse_nsefo_broadcast_nnfbcast_v9_50.mbp_sell.dissect(buffer, index, packet, parent)

  -- Last Active Time: LONG
  index, last_active_time = nse_nsefo_broadcast_nnfbcast_v9_50.last_active_time.dissect(buffer, index, packet, parent)

  -- Traded Volume Long: LONG LONG
  index, traded_volume_long = nse_nsefo_broadcast_nnfbcast_v9_50.traded_volume_long.dissect(buffer, index, packet, parent)

  -- Total Traded Value: DOUBLE
  index, total_traded_value = nse_nsefo_broadcast_nnfbcast_v9_50.total_traded_value.dissect(buffer, index, packet, parent)

  -- Array Of: Enhncd Mbp Buys
  for enhncd_mbp_buys_index = 1, 5 do
    index, enhncd_mbp_buys = nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_buys.dissect(buffer, index, packet, parent, enhncd_mbp_buys_index)
  end

  -- Array Of: Enhncd Mbp Sells
  for enhncd_mbp_sells_index = 1, 5 do
    index, enhncd_mbp_sells = nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_sells.dissect(buffer, index, packet, parent, enhncd_mbp_sells_index)
  end

  -- Total Order Volume: Struct of 2 fields
  index, total_order_volume = nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume.dissect(buffer, index, packet, parent)

  -- Open Price Difference: LONG
  index, open_price_difference = nse_nsefo_broadcast_nnfbcast_v9_50.open_price_difference.dissect(buffer, index, packet, parent)

  -- Day High Price Difference: LONG
  index, day_high_price_difference = nse_nsefo_broadcast_nnfbcast_v9_50.day_high_price_difference.dissect(buffer, index, packet, parent)

  -- Day Low Price Difference: LONG
  index, day_low_price_difference = nse_nsefo_broadcast_nnfbcast_v9_50.day_low_price_difference.dissect(buffer, index, packet, parent)

  -- Last Traded Price Difference: LONG
  index, last_traded_price_difference = nse_nsefo_broadcast_nnfbcast_v9_50.last_traded_price_difference.dissect(buffer, index, packet, parent)

  -- Last Update Time: LONG
  index, last_update_time = nse_nsefo_broadcast_nnfbcast_v9_50.last_update_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enhanced Spread Market By Price Delta Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_spread_market_by_price_delta_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhanced_spread_market_by_price_delta_message, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_spread_market_by_price_delta_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_spread_market_by_price_delta_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_spread_market_by_price_delta_message.fields(buffer, offset, packet, parent)
  end
end

-- Mbp Sells
nse_nsefo_broadcast_nnfbcast_v9_50.mbp_sells = {}

-- Size: Mbp Sells
nse_nsefo_broadcast_nnfbcast_v9_50.mbp_sells.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.no_orders.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.volume_short.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.price.size

-- Display: Mbp Sells
nse_nsefo_broadcast_nnfbcast_v9_50.mbp_sells.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mbp Sells
nse_nsefo_broadcast_nnfbcast_v9_50.mbp_sells.fields = function(buffer, offset, packet, parent, mbp_sells_index)
  local index = offset

  -- Implicit Mbp Sells Index
  if mbp_sells_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.mbp_sells_index, mbp_sells_index)
    iteration:set_generated()
  end

  -- No Orders: SHORT
  index, no_orders = nse_nsefo_broadcast_nnfbcast_v9_50.no_orders.dissect(buffer, index, packet, parent)

  -- Volume Short: LONG
  index, volume_short = nse_nsefo_broadcast_nnfbcast_v9_50.volume_short.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsefo_broadcast_nnfbcast_v9_50.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mbp Sells
nse_nsefo_broadcast_nnfbcast_v9_50.mbp_sells.dissect = function(buffer, offset, packet, parent, mbp_sells_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.mbp_sells, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.mbp_sells.fields(buffer, offset, packet, parent, mbp_sells_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.mbp_sells.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.mbp_sells.fields(buffer, offset, packet, parent, mbp_sells_index)
  end
end

-- Mbp Buys
nse_nsefo_broadcast_nnfbcast_v9_50.mbp_buys = {}

-- Size: Mbp Buys
nse_nsefo_broadcast_nnfbcast_v9_50.mbp_buys.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.no_orders.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.volume_short.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.price.size

-- Display: Mbp Buys
nse_nsefo_broadcast_nnfbcast_v9_50.mbp_buys.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mbp Buys
nse_nsefo_broadcast_nnfbcast_v9_50.mbp_buys.fields = function(buffer, offset, packet, parent, mbp_buys_index)
  local index = offset

  -- Implicit Mbp Buys Index
  if mbp_buys_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.mbp_buys_index, mbp_buys_index)
    iteration:set_generated()
  end

  -- No Orders: SHORT
  index, no_orders = nse_nsefo_broadcast_nnfbcast_v9_50.no_orders.dissect(buffer, index, packet, parent)

  -- Volume Short: LONG
  index, volume_short = nse_nsefo_broadcast_nnfbcast_v9_50.volume_short.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsefo_broadcast_nnfbcast_v9_50.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mbp Buys
nse_nsefo_broadcast_nnfbcast_v9_50.mbp_buys.dissect = function(buffer, offset, packet, parent, mbp_buys_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.mbp_buys, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.mbp_buys.fields(buffer, offset, packet, parent, mbp_buys_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.mbp_buys.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.mbp_buys.fields(buffer, offset, packet, parent, mbp_buys_index)
  end
end

-- Spread Market By Price Delta Message
nse_nsefo_broadcast_nnfbcast_v9_50.spread_market_by_price_delta_message = {}

-- Size: Spread Market By Price Delta Message
nse_nsefo_broadcast_nnfbcast_v9_50.spread_market_by_price_delta_message.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.token_1.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.token_2.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.mbp_buy.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.mbp_sell.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.last_active_time.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.traded_volume_short.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.total_traded_value.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.mbp_buys.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.mbp_sells.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.open_price_difference.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.day_high_price_difference.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.day_low_price_difference.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.last_traded_price_difference.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.last_update_time.size

-- Display: Spread Market By Price Delta Message
nse_nsefo_broadcast_nnfbcast_v9_50.spread_market_by_price_delta_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Market By Price Delta Message
nse_nsefo_broadcast_nnfbcast_v9_50.spread_market_by_price_delta_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token 1: LONG
  index, token_1 = nse_nsefo_broadcast_nnfbcast_v9_50.token_1.dissect(buffer, index, packet, parent)

  -- Token 2: LONG
  index, token_2 = nse_nsefo_broadcast_nnfbcast_v9_50.token_2.dissect(buffer, index, packet, parent)

  -- Mbp Buy: SHORT
  index, mbp_buy = nse_nsefo_broadcast_nnfbcast_v9_50.mbp_buy.dissect(buffer, index, packet, parent)

  -- Mbp Sell: SHORT
  index, mbp_sell = nse_nsefo_broadcast_nnfbcast_v9_50.mbp_sell.dissect(buffer, index, packet, parent)

  -- Last Active Time: LONG
  index, last_active_time = nse_nsefo_broadcast_nnfbcast_v9_50.last_active_time.dissect(buffer, index, packet, parent)

  -- Traded Volume Short: UNSIGNED LONG
  index, traded_volume_short = nse_nsefo_broadcast_nnfbcast_v9_50.traded_volume_short.dissect(buffer, index, packet, parent)

  -- Total Traded Value: DOUBLE
  index, total_traded_value = nse_nsefo_broadcast_nnfbcast_v9_50.total_traded_value.dissect(buffer, index, packet, parent)

  -- Array Of: Mbp Buys
  for mbp_buys_index = 1, 5 do
    index, mbp_buys = nse_nsefo_broadcast_nnfbcast_v9_50.mbp_buys.dissect(buffer, index, packet, parent, mbp_buys_index)
  end

  -- Array Of: Mbp Sells
  for mbp_sells_index = 1, 5 do
    index, mbp_sells = nse_nsefo_broadcast_nnfbcast_v9_50.mbp_sells.dissect(buffer, index, packet, parent, mbp_sells_index)
  end

  -- Total Order Volume: Struct of 2 fields
  index, total_order_volume = nse_nsefo_broadcast_nnfbcast_v9_50.total_order_volume.dissect(buffer, index, packet, parent)

  -- Open Price Difference: LONG
  index, open_price_difference = nse_nsefo_broadcast_nnfbcast_v9_50.open_price_difference.dissect(buffer, index, packet, parent)

  -- Day High Price Difference: LONG
  index, day_high_price_difference = nse_nsefo_broadcast_nnfbcast_v9_50.day_high_price_difference.dissect(buffer, index, packet, parent)

  -- Day Low Price Difference: LONG
  index, day_low_price_difference = nse_nsefo_broadcast_nnfbcast_v9_50.day_low_price_difference.dissect(buffer, index, packet, parent)

  -- Last Traded Price Difference: LONG
  index, last_traded_price_difference = nse_nsefo_broadcast_nnfbcast_v9_50.last_traded_price_difference.dissect(buffer, index, packet, parent)

  -- Last Update Time: LONG
  index, last_update_time = nse_nsefo_broadcast_nnfbcast_v9_50.last_update_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Market By Price Delta Message
nse_nsefo_broadcast_nnfbcast_v9_50.spread_market_by_price_delta_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.spread_market_by_price_delta_message, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.spread_market_by_price_delta_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.spread_market_by_price_delta_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.spread_market_by_price_delta_message.fields(buffer, offset, packet, parent)
  end
end

-- Industry Indices
nse_nsefo_broadcast_nnfbcast_v9_50.industry_indices = {}

-- Size: Industry Indices
nse_nsefo_broadcast_nnfbcast_v9_50.industry_indices.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.industry_name.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.index_value.size

-- Display: Industry Indices
nse_nsefo_broadcast_nnfbcast_v9_50.industry_indices.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Industry Indices
nse_nsefo_broadcast_nnfbcast_v9_50.industry_indices.fields = function(buffer, offset, packet, parent, industry_indices_index)
  local index = offset

  -- Implicit Industry Indices Index
  if industry_indices_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.industry_indices_index, industry_indices_index)
    iteration:set_generated()
  end

  -- Industry Name: CHAR
  index, industry_name = nse_nsefo_broadcast_nnfbcast_v9_50.industry_name.dissect(buffer, index, packet, parent)

  -- Index Value: LONG
  index, index_value = nse_nsefo_broadcast_nnfbcast_v9_50.index_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Industry Indices
nse_nsefo_broadcast_nnfbcast_v9_50.industry_indices.dissect = function(buffer, offset, packet, parent, industry_indices_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.industry_indices, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.industry_indices.fields(buffer, offset, packet, parent, industry_indices_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.industry_indices.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.industry_indices.fields(buffer, offset, packet, parent, industry_indices_index)
  end
end

-- Industry Index Update Message
nse_nsefo_broadcast_nnfbcast_v9_50.industry_index_update_message = {}

-- Size: Industry Index Update Message
nse_nsefo_broadcast_nnfbcast_v9_50.industry_index_update_message.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.no_of_recs.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.industry_indices.size

-- Display: Industry Index Update Message
nse_nsefo_broadcast_nnfbcast_v9_50.industry_index_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Industry Index Update Message
nse_nsefo_broadcast_nnfbcast_v9_50.industry_index_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- No Of Recs: SHORT
  index, no_of_recs = nse_nsefo_broadcast_nnfbcast_v9_50.no_of_recs.dissect(buffer, index, packet, parent)

  -- Array Of: Industry Indices
  for industry_indices_index = 1, 20 do
    index, industry_indices = nse_nsefo_broadcast_nnfbcast_v9_50.industry_indices.dissect(buffer, index, packet, parent, industry_indices_index)
  end

  return index
end

-- Dissect: Industry Index Update Message
nse_nsefo_broadcast_nnfbcast_v9_50.industry_index_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.industry_index_update_message, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.industry_index_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.industry_index_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.industry_index_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Ms Indices
nse_nsefo_broadcast_nnfbcast_v9_50.ms_indices = {}

-- Size: Ms Indices
nse_nsefo_broadcast_nnfbcast_v9_50.ms_indices.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.index_name.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.index_value.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.high_index_value.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.low_index_value.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.opening_index.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.closing_index.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.percent_change.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.yearly_high.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.yearly_low.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.no_of_upmoves.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.no_of_downmoves.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.market_capitalisation.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.net_change_indicator.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.reserved_1.size

-- Display: Ms Indices
nse_nsefo_broadcast_nnfbcast_v9_50.ms_indices.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ms Indices
nse_nsefo_broadcast_nnfbcast_v9_50.ms_indices.fields = function(buffer, offset, packet, parent, ms_indices_index)
  local index = offset

  -- Implicit Ms Indices Index
  if ms_indices_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.ms_indices_index, ms_indices_index)
    iteration:set_generated()
  end

  -- Index Name: CHAR
  index, index_name = nse_nsefo_broadcast_nnfbcast_v9_50.index_name.dissect(buffer, index, packet, parent)

  -- Index Value: LONG
  index, index_value = nse_nsefo_broadcast_nnfbcast_v9_50.index_value.dissect(buffer, index, packet, parent)

  -- High Index Value: LONG
  index, high_index_value = nse_nsefo_broadcast_nnfbcast_v9_50.high_index_value.dissect(buffer, index, packet, parent)

  -- Low Index Value: LONG
  index, low_index_value = nse_nsefo_broadcast_nnfbcast_v9_50.low_index_value.dissect(buffer, index, packet, parent)

  -- Opening Index: LONG
  index, opening_index = nse_nsefo_broadcast_nnfbcast_v9_50.opening_index.dissect(buffer, index, packet, parent)

  -- Closing Index: LONG
  index, closing_index = nse_nsefo_broadcast_nnfbcast_v9_50.closing_index.dissect(buffer, index, packet, parent)

  -- Percent Change: LONG
  index, percent_change = nse_nsefo_broadcast_nnfbcast_v9_50.percent_change.dissect(buffer, index, packet, parent)

  -- Yearly High: LONG
  index, yearly_high = nse_nsefo_broadcast_nnfbcast_v9_50.yearly_high.dissect(buffer, index, packet, parent)

  -- Yearly Low: LONG
  index, yearly_low = nse_nsefo_broadcast_nnfbcast_v9_50.yearly_low.dissect(buffer, index, packet, parent)

  -- No Of Upmoves: LONG
  index, no_of_upmoves = nse_nsefo_broadcast_nnfbcast_v9_50.no_of_upmoves.dissect(buffer, index, packet, parent)

  -- No Of Downmoves: LONG
  index, no_of_downmoves = nse_nsefo_broadcast_nnfbcast_v9_50.no_of_downmoves.dissect(buffer, index, packet, parent)

  -- Market Capitalisation: DOUBLE
  index, market_capitalisation = nse_nsefo_broadcast_nnfbcast_v9_50.market_capitalisation.dissect(buffer, index, packet, parent)

  -- Net Change Indicator: CHAR
  index, net_change_indicator = nse_nsefo_broadcast_nnfbcast_v9_50.net_change_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_broadcast_nnfbcast_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ms Indices
nse_nsefo_broadcast_nnfbcast_v9_50.ms_indices.dissect = function(buffer, offset, packet, parent, ms_indices_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.ms_indices, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.ms_indices.fields(buffer, offset, packet, parent, ms_indices_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.ms_indices.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.ms_indices.fields(buffer, offset, packet, parent, ms_indices_index)
  end
end

-- Indices Message
nse_nsefo_broadcast_nnfbcast_v9_50.indices_message = {}

-- Size: Indices Message
nse_nsefo_broadcast_nnfbcast_v9_50.indices_message.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.number_of_records.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.ms_indices.size

-- Display: Indices Message
nse_nsefo_broadcast_nnfbcast_v9_50.indices_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indices Message
nse_nsefo_broadcast_nnfbcast_v9_50.indices_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nsefo_broadcast_nnfbcast_v9_50.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Ms Indices
  for ms_indices_index = 1, 6 do
    index, ms_indices = nse_nsefo_broadcast_nnfbcast_v9_50.ms_indices.dissect(buffer, index, packet, parent, ms_indices_index)
  end

  return index
end

-- Dissect: Indices Message
nse_nsefo_broadcast_nnfbcast_v9_50.indices_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.indices_message, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.indices_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.indices_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.indices_message.fields(buffer, offset, packet, parent)
  end
end

-- St Indicator
nse_nsefo_broadcast_nnfbcast_v9_50.st_indicator = {}

-- Size: St Indicator
nse_nsefo_broadcast_nnfbcast_v9_50.st_indicator.size = 2

-- Display: St Indicator
nse_nsefo_broadcast_nnfbcast_v9_50.st_indicator.display = function(range, value, packet, parent)
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
nse_nsefo_broadcast_nnfbcast_v9_50.st_indicator.bits = function(range, value, packet, parent)

  -- Reserved 112: 12 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_112, range, value)

  -- Sell: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.sell, range, value)

  -- Buy: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.buy, range, value)

  -- Last Trade Less: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.last_trade_less, range, value)

  -- Last Trade More: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.last_trade_more, range, value)
end

-- Dissect: St Indicator
nse_nsefo_broadcast_nnfbcast_v9_50.st_indicator.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsefo_broadcast_nnfbcast_v9_50.st_indicator.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.st_indicator.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_indicator, range, display)

  if show.structs then
    nse_nsefo_broadcast_nnfbcast_v9_50.st_indicator.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- St Mkt Wise Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_mkt_wise_info = {}

-- Size: St Mkt Wise Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_mkt_wise_info.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.st_indicator.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.buy_volume_short.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.buy_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.sell_volume_short.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.sell_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_time.size

-- Display: St Mkt Wise Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_mkt_wise_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Mkt Wise Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_mkt_wise_info.fields = function(buffer, offset, packet, parent, st_mkt_wise_info_index)
  local index = offset

  -- Implicit St Mkt Wise Info Index
  if st_mkt_wise_info_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_mkt_wise_info_index, st_mkt_wise_info_index)
    iteration:set_generated()
  end

  -- St Indicator: Struct of 5 fields
  index, st_indicator = nse_nsefo_broadcast_nnfbcast_v9_50.st_indicator.dissect(buffer, index, packet, parent)

  -- Buy Volume Short: LONG
  index, buy_volume_short = nse_nsefo_broadcast_nnfbcast_v9_50.buy_volume_short.dissect(buffer, index, packet, parent)

  -- Buy Price: LONG
  index, buy_price = nse_nsefo_broadcast_nnfbcast_v9_50.buy_price.dissect(buffer, index, packet, parent)

  -- Sell Volume Short: LONG
  index, sell_volume_short = nse_nsefo_broadcast_nnfbcast_v9_50.sell_volume_short.dissect(buffer, index, packet, parent)

  -- Sell Price: LONG
  index, sell_price = nse_nsefo_broadcast_nnfbcast_v9_50.sell_price.dissect(buffer, index, packet, parent)

  -- Last Trade Price: LONG
  index, last_trade_price = nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_price.dissect(buffer, index, packet, parent)

  -- Last Trade Time: LONG
  index, last_trade_time = nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Mkt Wise Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_mkt_wise_info.dissect = function(buffer, offset, packet, parent, st_mkt_wise_info_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_mkt_wise_info, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.st_mkt_wise_info.fields(buffer, offset, packet, parent, st_mkt_wise_info_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.st_mkt_wise_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.st_mkt_wise_info.fields(buffer, offset, packet, parent, st_mkt_wise_info_index)
  end
end

-- St Enhncd Market Watch Bcast
nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_market_watch_bcast = {}

-- Size: St Enhncd Market Watch Bcast
nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_market_watch_bcast.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.token.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.st_mkt_wise_info.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.open_interest_long.size

-- Display: St Enhncd Market Watch Bcast
nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_market_watch_bcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Enhncd Market Watch Bcast
nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_market_watch_bcast.fields = function(buffer, offset, packet, parent, st_enhncd_market_watch_bcast_index)
  local index = offset

  -- Implicit St Enhncd Market Watch Bcast Index
  if st_enhncd_market_watch_bcast_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_enhncd_market_watch_bcast_index, st_enhncd_market_watch_bcast_index)
    iteration:set_generated()
  end

  -- Token: LONG
  index, token = nse_nsefo_broadcast_nnfbcast_v9_50.token.dissect(buffer, index, packet, parent)

  -- Array Of: St Mkt Wise Info
  for st_mkt_wise_info_index = 1, 3 do
    index, st_mkt_wise_info = nse_nsefo_broadcast_nnfbcast_v9_50.st_mkt_wise_info.dissect(buffer, index, packet, parent, st_mkt_wise_info_index)
  end

  -- Open Interest Long: LONG LONG
  index, open_interest_long = nse_nsefo_broadcast_nnfbcast_v9_50.open_interest_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Enhncd Market Watch Bcast
nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_market_watch_bcast.dissect = function(buffer, offset, packet, parent, st_enhncd_market_watch_bcast_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_enhncd_market_watch_bcast, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_market_watch_bcast.fields(buffer, offset, packet, parent, st_enhncd_market_watch_bcast_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_market_watch_bcast.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_market_watch_bcast.fields(buffer, offset, packet, parent, st_enhncd_market_watch_bcast_index)
  end
end

-- Enhanced Market Watch Round Robin Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_market_watch_round_robin_message = {}

-- Size: Enhanced Market Watch Round Robin Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_market_watch_round_robin_message.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.no_of_records.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_market_watch_bcast.size

-- Display: Enhanced Market Watch Round Robin Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_market_watch_round_robin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enhanced Market Watch Round Robin Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_market_watch_round_robin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- No Of Records: SHORT
  index, no_of_records = nse_nsefo_broadcast_nnfbcast_v9_50.no_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: St Enhncd Market Watch Bcast
  for st_enhncd_market_watch_bcast_index = 1, 5 do
    index, st_enhncd_market_watch_bcast = nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_market_watch_bcast.dissect(buffer, index, packet, parent, st_enhncd_market_watch_bcast_index)
  end

  return index
end

-- Dissect: Enhanced Market Watch Round Robin Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_market_watch_round_robin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhanced_market_watch_round_robin_message, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_market_watch_round_robin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_market_watch_round_robin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_market_watch_round_robin_message.fields(buffer, offset, packet, parent)
  end
end

-- St Enhncd Mkt Wise Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_mkt_wise_info = {}

-- Size: St Enhncd Mkt Wise Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_mkt_wise_info.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.st_indicator.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.buy_volume_long.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.buy_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.sell_volume_long.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.sell_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_time.size

-- Display: St Enhncd Mkt Wise Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_mkt_wise_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Enhncd Mkt Wise Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_mkt_wise_info.fields = function(buffer, offset, packet, parent, st_enhncd_mkt_wise_info_index)
  local index = offset

  -- Implicit St Enhncd Mkt Wise Info Index
  if st_enhncd_mkt_wise_info_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_enhncd_mkt_wise_info_index, st_enhncd_mkt_wise_info_index)
    iteration:set_generated()
  end

  -- St Indicator: Struct of 5 fields
  index, st_indicator = nse_nsefo_broadcast_nnfbcast_v9_50.st_indicator.dissect(buffer, index, packet, parent)

  -- Buy Volume Long: LONG LONG
  index, buy_volume_long = nse_nsefo_broadcast_nnfbcast_v9_50.buy_volume_long.dissect(buffer, index, packet, parent)

  -- Buy Price: LONG
  index, buy_price = nse_nsefo_broadcast_nnfbcast_v9_50.buy_price.dissect(buffer, index, packet, parent)

  -- Sell Volume Long: LONG LONG
  index, sell_volume_long = nse_nsefo_broadcast_nnfbcast_v9_50.sell_volume_long.dissect(buffer, index, packet, parent)

  -- Sell Price: LONG
  index, sell_price = nse_nsefo_broadcast_nnfbcast_v9_50.sell_price.dissect(buffer, index, packet, parent)

  -- Last Trade Price: LONG
  index, last_trade_price = nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_price.dissect(buffer, index, packet, parent)

  -- Last Trade Time: LONG
  index, last_trade_time = nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Enhncd Mkt Wise Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_mkt_wise_info.dissect = function(buffer, offset, packet, parent, st_enhncd_mkt_wise_info_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_enhncd_mkt_wise_info, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_mkt_wise_info.fields(buffer, offset, packet, parent, st_enhncd_mkt_wise_info_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_mkt_wise_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_mkt_wise_info.fields(buffer, offset, packet, parent, st_enhncd_mkt_wise_info_index)
  end
end

-- St Market Watch Bcast
nse_nsefo_broadcast_nnfbcast_v9_50.st_market_watch_bcast = {}

-- Size: St Market Watch Bcast
nse_nsefo_broadcast_nnfbcast_v9_50.st_market_watch_bcast.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.token.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_mkt_wise_info.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.open_interest_long.size

-- Display: St Market Watch Bcast
nse_nsefo_broadcast_nnfbcast_v9_50.st_market_watch_bcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Market Watch Bcast
nse_nsefo_broadcast_nnfbcast_v9_50.st_market_watch_bcast.fields = function(buffer, offset, packet, parent, st_market_watch_bcast_index)
  local index = offset

  -- Implicit St Market Watch Bcast Index
  if st_market_watch_bcast_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_market_watch_bcast_index, st_market_watch_bcast_index)
    iteration:set_generated()
  end

  -- Token: LONG
  index, token = nse_nsefo_broadcast_nnfbcast_v9_50.token.dissect(buffer, index, packet, parent)

  -- Array Of: St Enhncd Mkt Wise Info
  for st_enhncd_mkt_wise_info_index = 1, 3 do
    index, st_enhncd_mkt_wise_info = nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_mkt_wise_info.dissect(buffer, index, packet, parent, st_enhncd_mkt_wise_info_index)
  end

  -- Open Interest Long: LONG LONG
  index, open_interest_long = nse_nsefo_broadcast_nnfbcast_v9_50.open_interest_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Market Watch Bcast
nse_nsefo_broadcast_nnfbcast_v9_50.st_market_watch_bcast.dissect = function(buffer, offset, packet, parent, st_market_watch_bcast_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_market_watch_bcast, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.st_market_watch_bcast.fields(buffer, offset, packet, parent, st_market_watch_bcast_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.st_market_watch_bcast.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.st_market_watch_bcast.fields(buffer, offset, packet, parent, st_market_watch_bcast_index)
  end
end

-- Market Watch Round Robin Message
nse_nsefo_broadcast_nnfbcast_v9_50.market_watch_round_robin_message = {}

-- Size: Market Watch Round Robin Message
nse_nsefo_broadcast_nnfbcast_v9_50.market_watch_round_robin_message.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.no_of_records.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.st_market_watch_bcast.size

-- Display: Market Watch Round Robin Message
nse_nsefo_broadcast_nnfbcast_v9_50.market_watch_round_robin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Watch Round Robin Message
nse_nsefo_broadcast_nnfbcast_v9_50.market_watch_round_robin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- No Of Records: SHORT
  index, no_of_records = nse_nsefo_broadcast_nnfbcast_v9_50.no_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: St Market Watch Bcast
  for st_market_watch_bcast_index = 1, 4 do
    index, st_market_watch_bcast = nse_nsefo_broadcast_nnfbcast_v9_50.st_market_watch_bcast.dissect(buffer, index, packet, parent, st_market_watch_bcast_index)
  end

  return index
end

-- Dissect: Market Watch Round Robin Message
nse_nsefo_broadcast_nnfbcast_v9_50.market_watch_round_robin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.market_watch_round_robin_message, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.market_watch_round_robin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.market_watch_round_robin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.market_watch_round_robin_message.fields(buffer, offset, packet, parent)
  end
end

-- St Enhncd Ticker Index Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_ticker_index_info = {}

-- Size: St Enhncd Ticker Index Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_ticker_index_info.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.token.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.market_type.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.fill_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.fill_volume.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.open_interest_long.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.day_hi_oi_long.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.day_lo_oi_long.size

-- Display: St Enhncd Ticker Index Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_ticker_index_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Enhncd Ticker Index Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_ticker_index_info.fields = function(buffer, offset, packet, parent, st_enhncd_ticker_index_info_index)
  local index = offset

  -- Implicit St Enhncd Ticker Index Info Index
  if st_enhncd_ticker_index_info_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_enhncd_ticker_index_info_index, st_enhncd_ticker_index_info_index)
    iteration:set_generated()
  end

  -- Token: LONG
  index, token = nse_nsefo_broadcast_nnfbcast_v9_50.token.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nsefo_broadcast_nnfbcast_v9_50.market_type.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nsefo_broadcast_nnfbcast_v9_50.fill_price.dissect(buffer, index, packet, parent)

  -- Fill Volume: LONG
  index, fill_volume = nse_nsefo_broadcast_nnfbcast_v9_50.fill_volume.dissect(buffer, index, packet, parent)

  -- Open Interest Long: LONG LONG
  index, open_interest_long = nse_nsefo_broadcast_nnfbcast_v9_50.open_interest_long.dissect(buffer, index, packet, parent)

  -- Day Hi Oi Long: LONG LONG
  index, day_hi_oi_long = nse_nsefo_broadcast_nnfbcast_v9_50.day_hi_oi_long.dissect(buffer, index, packet, parent)

  -- Day Lo Oi Long: LONG LONG
  index, day_lo_oi_long = nse_nsefo_broadcast_nnfbcast_v9_50.day_lo_oi_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Enhncd Ticker Index Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_ticker_index_info.dissect = function(buffer, offset, packet, parent, st_enhncd_ticker_index_info_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_enhncd_ticker_index_info, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_ticker_index_info.fields(buffer, offset, packet, parent, st_enhncd_ticker_index_info_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_ticker_index_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_ticker_index_info.fields(buffer, offset, packet, parent, st_enhncd_ticker_index_info_index)
  end
end

-- Enhanced Ticker And Market Index Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_ticker_and_market_index_message = {}

-- Size: Enhanced Ticker And Market Index Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_ticker_and_market_index_message.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.number_of_records.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_ticker_index_info.size

-- Display: Enhanced Ticker And Market Index Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_ticker_and_market_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enhanced Ticker And Market Index Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_ticker_and_market_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nsefo_broadcast_nnfbcast_v9_50.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: St Enhncd Ticker Index Info
  for st_enhncd_ticker_index_info_index = 1, 12 do
    index, st_enhncd_ticker_index_info = nse_nsefo_broadcast_nnfbcast_v9_50.st_enhncd_ticker_index_info.dissect(buffer, index, packet, parent, st_enhncd_ticker_index_info_index)
  end

  return index
end

-- Dissect: Enhanced Ticker And Market Index Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_ticker_and_market_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhanced_ticker_and_market_index_message, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_ticker_and_market_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_ticker_and_market_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_ticker_and_market_index_message.fields(buffer, offset, packet, parent)
  end
end

-- St Ticker Index Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_ticker_index_info = {}

-- Size: St Ticker Index Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_ticker_index_info.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.token.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.market_type.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.fill_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.fill_volume.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.open_interest_short.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.day_hi_oi_short.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.day_lo_oi_short.size

-- Display: St Ticker Index Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_ticker_index_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Ticker Index Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_ticker_index_info.fields = function(buffer, offset, packet, parent, st_ticker_index_info_index)
  local index = offset

  -- Implicit St Ticker Index Info Index
  if st_ticker_index_info_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_ticker_index_info_index, st_ticker_index_info_index)
    iteration:set_generated()
  end

  -- Token: LONG
  index, token = nse_nsefo_broadcast_nnfbcast_v9_50.token.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nsefo_broadcast_nnfbcast_v9_50.market_type.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nsefo_broadcast_nnfbcast_v9_50.fill_price.dissect(buffer, index, packet, parent)

  -- Fill Volume: LONG
  index, fill_volume = nse_nsefo_broadcast_nnfbcast_v9_50.fill_volume.dissect(buffer, index, packet, parent)

  -- Open Interest Short: UNSIGNED LONG
  index, open_interest_short = nse_nsefo_broadcast_nnfbcast_v9_50.open_interest_short.dissect(buffer, index, packet, parent)

  -- Day Hi Oi Short: UNSIGNED LONG
  index, day_hi_oi_short = nse_nsefo_broadcast_nnfbcast_v9_50.day_hi_oi_short.dissect(buffer, index, packet, parent)

  -- Day Lo Oi Short: UNSIGNED LONG
  index, day_lo_oi_short = nse_nsefo_broadcast_nnfbcast_v9_50.day_lo_oi_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Ticker Index Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_ticker_index_info.dissect = function(buffer, offset, packet, parent, st_ticker_index_info_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_ticker_index_info, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.st_ticker_index_info.fields(buffer, offset, packet, parent, st_ticker_index_info_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.st_ticker_index_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.st_ticker_index_info.fields(buffer, offset, packet, parent, st_ticker_index_info_index)
  end
end

-- Ticker And Market Index Message
nse_nsefo_broadcast_nnfbcast_v9_50.ticker_and_market_index_message = {}

-- Size: Ticker And Market Index Message
nse_nsefo_broadcast_nnfbcast_v9_50.ticker_and_market_index_message.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.number_of_records.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.st_ticker_index_info.size

-- Display: Ticker And Market Index Message
nse_nsefo_broadcast_nnfbcast_v9_50.ticker_and_market_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ticker And Market Index Message
nse_nsefo_broadcast_nnfbcast_v9_50.ticker_and_market_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nsefo_broadcast_nnfbcast_v9_50.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: St Ticker Index Info
  for st_ticker_index_info_index = 1, 17 do
    index, st_ticker_index_info = nse_nsefo_broadcast_nnfbcast_v9_50.st_ticker_index_info.dissect(buffer, index, packet, parent, st_ticker_index_info_index)
  end

  return index
end

-- Dissect: Ticker And Market Index Message
nse_nsefo_broadcast_nnfbcast_v9_50.ticker_and_market_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.ticker_and_market_index_message, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.ticker_and_market_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.ticker_and_market_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.ticker_and_market_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Enhncd Mbp Information
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_information = {}

-- Size: Enhncd Mbp Information
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_information.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.quantity_long.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.number_of_orders.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.bb_buy_sell_flag.size

-- Display: Enhncd Mbp Information
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enhncd Mbp Information
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_information.fields = function(buffer, offset, packet, parent, enhncd_mbp_information_index)
  local index = offset

  -- Implicit Enhncd Mbp Information Index
  if enhncd_mbp_information_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhncd_mbp_information_index, enhncd_mbp_information_index)
    iteration:set_generated()
  end

  -- Quantity Long: LONG LONG
  index, quantity_long = nse_nsefo_broadcast_nnfbcast_v9_50.quantity_long.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsefo_broadcast_nnfbcast_v9_50.price.dissect(buffer, index, packet, parent)

  -- Number Of Orders: SHORT
  index, number_of_orders = nse_nsefo_broadcast_nnfbcast_v9_50.number_of_orders.dissect(buffer, index, packet, parent)

  -- Bb Buy Sell Flag: SHORT
  index, bb_buy_sell_flag = nse_nsefo_broadcast_nnfbcast_v9_50.bb_buy_sell_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enhncd Mbp Information
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_information.dissect = function(buffer, offset, packet, parent, enhncd_mbp_information_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhncd_mbp_information, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_information.fields(buffer, offset, packet, parent, enhncd_mbp_information_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_information.fields(buffer, offset, packet, parent, enhncd_mbp_information_index)
  end
end

-- Enhncd Interactive Only Mbp Data
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_interactive_only_mbp_data = {}

-- Size: Enhncd Interactive Only Mbp Data
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_interactive_only_mbp_data.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.token.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.book_type.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.trading_status.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.volume_traded_today_long.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.last_traded_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.net_change_indicator.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.reserved_1.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.net_price_change_from_closing_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_quantity.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_time.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.average_trade_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.reserved_14.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.imbalance_qty_at_iop.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_information.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.bb_total_buy_flag.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.bb_total_sell_flag.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.total_buy_quantity_long.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.total_sell_quantity_long.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.st_indicator.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.closing_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.open_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.high_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.low_price.size

-- Display: Enhncd Interactive Only Mbp Data
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_interactive_only_mbp_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enhncd Interactive Only Mbp Data
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_interactive_only_mbp_data.fields = function(buffer, offset, packet, parent, enhncd_interactive_only_mbp_data_index)
  local index = offset

  -- Implicit Enhncd Interactive Only Mbp Data Index
  if enhncd_interactive_only_mbp_data_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhncd_interactive_only_mbp_data_index, enhncd_interactive_only_mbp_data_index)
    iteration:set_generated()
  end

  -- Token: LONG
  index, token = nse_nsefo_broadcast_nnfbcast_v9_50.token.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsefo_broadcast_nnfbcast_v9_50.book_type.dissect(buffer, index, packet, parent)

  -- Trading Status: SHORT
  index, trading_status = nse_nsefo_broadcast_nnfbcast_v9_50.trading_status.dissect(buffer, index, packet, parent)

  -- Volume Traded Today Long: LONG LONG
  index, volume_traded_today_long = nse_nsefo_broadcast_nnfbcast_v9_50.volume_traded_today_long.dissect(buffer, index, packet, parent)

  -- Last Traded Price: LONG
  index, last_traded_price = nse_nsefo_broadcast_nnfbcast_v9_50.last_traded_price.dissect(buffer, index, packet, parent)

  -- Net Change Indicator: CHAR
  index, net_change_indicator = nse_nsefo_broadcast_nnfbcast_v9_50.net_change_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_broadcast_nnfbcast_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Net Price Change From Closing Price: LONG
  index, net_price_change_from_closing_price = nse_nsefo_broadcast_nnfbcast_v9_50.net_price_change_from_closing_price.dissect(buffer, index, packet, parent)

  -- Last Trade Quantity: LONG
  index, last_trade_quantity = nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_quantity.dissect(buffer, index, packet, parent)

  -- Last Trade Time: LONG
  index, last_trade_time = nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_time.dissect(buffer, index, packet, parent)

  -- Average Trade Price: LONG
  index, average_trade_price = nse_nsefo_broadcast_nnfbcast_v9_50.average_trade_price.dissect(buffer, index, packet, parent)

  -- Reserved 14: CHAR
  index, reserved_14 = nse_nsefo_broadcast_nnfbcast_v9_50.reserved_14.dissect(buffer, index, packet, parent)

  -- Imbalance Qty At Iop: LONG LONG
  index, imbalance_qty_at_iop = nse_nsefo_broadcast_nnfbcast_v9_50.imbalance_qty_at_iop.dissect(buffer, index, packet, parent)

  -- Array Of: Enhncd Mbp Information
  for enhncd_mbp_information_index = 1, 10 do
    index, enhncd_mbp_information = nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_mbp_information.dissect(buffer, index, packet, parent, enhncd_mbp_information_index)
  end

  -- Bb Total Buy Flag: SHORT
  index, bb_total_buy_flag = nse_nsefo_broadcast_nnfbcast_v9_50.bb_total_buy_flag.dissect(buffer, index, packet, parent)

  -- Bb Total Sell Flag: SHORT
  index, bb_total_sell_flag = nse_nsefo_broadcast_nnfbcast_v9_50.bb_total_sell_flag.dissect(buffer, index, packet, parent)

  -- Total Buy Quantity Long: LONG LONG
  index, total_buy_quantity_long = nse_nsefo_broadcast_nnfbcast_v9_50.total_buy_quantity_long.dissect(buffer, index, packet, parent)

  -- Total Sell Quantity Long: LONG LONG
  index, total_sell_quantity_long = nse_nsefo_broadcast_nnfbcast_v9_50.total_sell_quantity_long.dissect(buffer, index, packet, parent)

  -- St Indicator: Struct of 5 fields
  index, st_indicator = nse_nsefo_broadcast_nnfbcast_v9_50.st_indicator.dissect(buffer, index, packet, parent)

  -- Closing Price: LONG
  index, closing_price = nse_nsefo_broadcast_nnfbcast_v9_50.closing_price.dissect(buffer, index, packet, parent)

  -- Open Price: LONG
  index, open_price = nse_nsefo_broadcast_nnfbcast_v9_50.open_price.dissect(buffer, index, packet, parent)

  -- High Price: LONG
  index, high_price = nse_nsefo_broadcast_nnfbcast_v9_50.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: LONG
  index, low_price = nse_nsefo_broadcast_nnfbcast_v9_50.low_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enhncd Interactive Only Mbp Data
nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_interactive_only_mbp_data.dissect = function(buffer, offset, packet, parent, enhncd_interactive_only_mbp_data_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhncd_interactive_only_mbp_data, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_interactive_only_mbp_data.fields(buffer, offset, packet, parent, enhncd_interactive_only_mbp_data_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_interactive_only_mbp_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_interactive_only_mbp_data.fields(buffer, offset, packet, parent, enhncd_interactive_only_mbp_data_index)
  end
end

-- Enhanced Only Market By Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_only_market_by_price_message = {}

-- Size: Enhanced Only Market By Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_only_market_by_price_message.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.no_of_records.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_interactive_only_mbp_data.size

-- Display: Enhanced Only Market By Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_only_market_by_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enhanced Only Market By Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_only_market_by_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- No Of Records: SHORT
  index, no_of_records = nse_nsefo_broadcast_nnfbcast_v9_50.no_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Enhncd Interactive Only Mbp Data
  for enhncd_interactive_only_mbp_data_index = 1, 2 do
    index, enhncd_interactive_only_mbp_data = nse_nsefo_broadcast_nnfbcast_v9_50.enhncd_interactive_only_mbp_data.dissect(buffer, index, packet, parent, enhncd_interactive_only_mbp_data_index)
  end

  return index
end

-- Dissect: Enhanced Only Market By Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_only_market_by_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.enhanced_only_market_by_price_message, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_only_market_by_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_only_market_by_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_only_market_by_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Mbp Information
nse_nsefo_broadcast_nnfbcast_v9_50.mbp_information = {}

-- Size: Mbp Information
nse_nsefo_broadcast_nnfbcast_v9_50.mbp_information.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.quantity_short.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.number_of_orders.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.bb_buy_sell_flag.size

-- Display: Mbp Information
nse_nsefo_broadcast_nnfbcast_v9_50.mbp_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mbp Information
nse_nsefo_broadcast_nnfbcast_v9_50.mbp_information.fields = function(buffer, offset, packet, parent, mbp_information_index)
  local index = offset

  -- Implicit Mbp Information Index
  if mbp_information_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.mbp_information_index, mbp_information_index)
    iteration:set_generated()
  end

  -- Quantity Short: LONG
  index, quantity_short = nse_nsefo_broadcast_nnfbcast_v9_50.quantity_short.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsefo_broadcast_nnfbcast_v9_50.price.dissect(buffer, index, packet, parent)

  -- Number Of Orders: SHORT
  index, number_of_orders = nse_nsefo_broadcast_nnfbcast_v9_50.number_of_orders.dissect(buffer, index, packet, parent)

  -- Bb Buy Sell Flag: SHORT
  index, bb_buy_sell_flag = nse_nsefo_broadcast_nnfbcast_v9_50.bb_buy_sell_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mbp Information
nse_nsefo_broadcast_nnfbcast_v9_50.mbp_information.dissect = function(buffer, offset, packet, parent, mbp_information_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.mbp_information, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.mbp_information.fields(buffer, offset, packet, parent, mbp_information_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.mbp_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.mbp_information.fields(buffer, offset, packet, parent, mbp_information_index)
  end
end

-- Interactive Only Mbp Data
nse_nsefo_broadcast_nnfbcast_v9_50.interactive_only_mbp_data = {}

-- Size: Interactive Only Mbp Data
nse_nsefo_broadcast_nnfbcast_v9_50.interactive_only_mbp_data.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.token.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.book_type.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.trading_status.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.volume_traded_today_short.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.last_traded_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.net_change_indicator.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.vol_trd_today_excd_indc.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.net_price_change_from_closing_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_quantity.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_time.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.average_trade_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.auction_number.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.auction_status.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.initiator_type.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.initiator_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.initiator_quantity.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.auction_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.auction_quantity.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.mbp_information.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.bb_total_buy_flag.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.bb_total_sell_flag.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.total_buy_quantity_double.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.total_sell_quantity_double.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.st_indicator.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.closing_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.open_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.high_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.low_price.size

-- Display: Interactive Only Mbp Data
nse_nsefo_broadcast_nnfbcast_v9_50.interactive_only_mbp_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Interactive Only Mbp Data
nse_nsefo_broadcast_nnfbcast_v9_50.interactive_only_mbp_data.fields = function(buffer, offset, packet, parent, interactive_only_mbp_data_index)
  local index = offset

  -- Implicit Interactive Only Mbp Data Index
  if interactive_only_mbp_data_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.interactive_only_mbp_data_index, interactive_only_mbp_data_index)
    iteration:set_generated()
  end

  -- Token: LONG
  index, token = nse_nsefo_broadcast_nnfbcast_v9_50.token.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsefo_broadcast_nnfbcast_v9_50.book_type.dissect(buffer, index, packet, parent)

  -- Trading Status: SHORT
  index, trading_status = nse_nsefo_broadcast_nnfbcast_v9_50.trading_status.dissect(buffer, index, packet, parent)

  -- Volume Traded Today Short: UNSIGNED LONG
  index, volume_traded_today_short = nse_nsefo_broadcast_nnfbcast_v9_50.volume_traded_today_short.dissect(buffer, index, packet, parent)

  -- Last Traded Price: LONG
  index, last_traded_price = nse_nsefo_broadcast_nnfbcast_v9_50.last_traded_price.dissect(buffer, index, packet, parent)

  -- Net Change Indicator: CHAR
  index, net_change_indicator = nse_nsefo_broadcast_nnfbcast_v9_50.net_change_indicator.dissect(buffer, index, packet, parent)

  -- Vol Trd Today Excd Indc: CHAR
  index, vol_trd_today_excd_indc = nse_nsefo_broadcast_nnfbcast_v9_50.vol_trd_today_excd_indc.dissect(buffer, index, packet, parent)

  -- Net Price Change From Closing Price: LONG
  index, net_price_change_from_closing_price = nse_nsefo_broadcast_nnfbcast_v9_50.net_price_change_from_closing_price.dissect(buffer, index, packet, parent)

  -- Last Trade Quantity: LONG
  index, last_trade_quantity = nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_quantity.dissect(buffer, index, packet, parent)

  -- Last Trade Time: LONG
  index, last_trade_time = nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_time.dissect(buffer, index, packet, parent)

  -- Average Trade Price: LONG
  index, average_trade_price = nse_nsefo_broadcast_nnfbcast_v9_50.average_trade_price.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nsefo_broadcast_nnfbcast_v9_50.auction_number.dissect(buffer, index, packet, parent)

  -- Auction Status: SHORT
  index, auction_status = nse_nsefo_broadcast_nnfbcast_v9_50.auction_status.dissect(buffer, index, packet, parent)

  -- Initiator Type: SHORT
  index, initiator_type = nse_nsefo_broadcast_nnfbcast_v9_50.initiator_type.dissect(buffer, index, packet, parent)

  -- Initiator Price: LONG
  index, initiator_price = nse_nsefo_broadcast_nnfbcast_v9_50.initiator_price.dissect(buffer, index, packet, parent)

  -- Initiator Quantity: LONG
  index, initiator_quantity = nse_nsefo_broadcast_nnfbcast_v9_50.initiator_quantity.dissect(buffer, index, packet, parent)

  -- Auction Price: LONG
  index, auction_price = nse_nsefo_broadcast_nnfbcast_v9_50.auction_price.dissect(buffer, index, packet, parent)

  -- Auction Quantity: LONG
  index, auction_quantity = nse_nsefo_broadcast_nnfbcast_v9_50.auction_quantity.dissect(buffer, index, packet, parent)

  -- Array Of: Mbp Information
  for mbp_information_index = 1, 10 do
    index, mbp_information = nse_nsefo_broadcast_nnfbcast_v9_50.mbp_information.dissect(buffer, index, packet, parent, mbp_information_index)
  end

  -- Bb Total Buy Flag: SHORT
  index, bb_total_buy_flag = nse_nsefo_broadcast_nnfbcast_v9_50.bb_total_buy_flag.dissect(buffer, index, packet, parent)

  -- Bb Total Sell Flag: SHORT
  index, bb_total_sell_flag = nse_nsefo_broadcast_nnfbcast_v9_50.bb_total_sell_flag.dissect(buffer, index, packet, parent)

  -- Total Buy Quantity Double: DOUBLE
  index, total_buy_quantity_double = nse_nsefo_broadcast_nnfbcast_v9_50.total_buy_quantity_double.dissect(buffer, index, packet, parent)

  -- Total Sell Quantity Double: DOUBLE
  index, total_sell_quantity_double = nse_nsefo_broadcast_nnfbcast_v9_50.total_sell_quantity_double.dissect(buffer, index, packet, parent)

  -- St Indicator: Struct of 5 fields
  index, st_indicator = nse_nsefo_broadcast_nnfbcast_v9_50.st_indicator.dissect(buffer, index, packet, parent)

  -- Closing Price: LONG
  index, closing_price = nse_nsefo_broadcast_nnfbcast_v9_50.closing_price.dissect(buffer, index, packet, parent)

  -- Open Price: LONG
  index, open_price = nse_nsefo_broadcast_nnfbcast_v9_50.open_price.dissect(buffer, index, packet, parent)

  -- High Price: LONG
  index, high_price = nse_nsefo_broadcast_nnfbcast_v9_50.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: LONG
  index, low_price = nse_nsefo_broadcast_nnfbcast_v9_50.low_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Interactive Only Mbp Data
nse_nsefo_broadcast_nnfbcast_v9_50.interactive_only_mbp_data.dissect = function(buffer, offset, packet, parent, interactive_only_mbp_data_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.interactive_only_mbp_data, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.interactive_only_mbp_data.fields(buffer, offset, packet, parent, interactive_only_mbp_data_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.interactive_only_mbp_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.interactive_only_mbp_data.fields(buffer, offset, packet, parent, interactive_only_mbp_data_index)
  end
end

-- Only Market By Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.only_market_by_price_message = {}

-- Size: Only Market By Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.only_market_by_price_message.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.no_of_records.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.interactive_only_mbp_data.size

-- Display: Only Market By Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.only_market_by_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Only Market By Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.only_market_by_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- No Of Records: SHORT
  index, no_of_records = nse_nsefo_broadcast_nnfbcast_v9_50.no_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Interactive Only Mbp Data
  for interactive_only_mbp_data_index = 1, 2 do
    index, interactive_only_mbp_data = nse_nsefo_broadcast_nnfbcast_v9_50.interactive_only_mbp_data.dissect(buffer, index, packet, parent, interactive_only_mbp_data_index)
  end

  return index
end

-- Dissect: Only Market By Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.only_market_by_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.only_market_by_price_message, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.only_market_by_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.only_market_by_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.only_market_by_price_message.fields(buffer, offset, packet, parent)
  end
end

-- St Mbp Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_mbp_info = {}

-- Size: St Mbp Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_mbp_info.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.qty.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.no_of_orders.size

-- Display: St Mbp Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_mbp_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Mbp Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_mbp_info.fields = function(buffer, offset, packet, parent, st_mbp_info_index)
  local index = offset

  -- Implicit St Mbp Info Index
  if st_mbp_info_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_mbp_info_index, st_mbp_info_index)
    iteration:set_generated()
  end

  -- Qty: LONG
  index, qty = nse_nsefo_broadcast_nnfbcast_v9_50.qty.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsefo_broadcast_nnfbcast_v9_50.price.dissect(buffer, index, packet, parent)

  -- No Of Orders: SHORT
  index, no_of_orders = nse_nsefo_broadcast_nnfbcast_v9_50.no_of_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Mbp Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_mbp_info.dissect = function(buffer, offset, packet, parent, st_mbp_info_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_mbp_info, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.st_mbp_info.fields(buffer, offset, packet, parent, st_mbp_info_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.st_mbp_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.st_mbp_info.fields(buffer, offset, packet, parent, st_mbp_info_index)
  end
end

-- St Mbo Mbp Terms
nse_nsefo_broadcast_nnfbcast_v9_50.st_mbo_mbp_terms = {}

-- Size: St Mbo Mbp Terms
nse_nsefo_broadcast_nnfbcast_v9_50.st_mbo_mbp_terms.size = 2

-- Display: St Mbo Mbp Terms
nse_nsefo_broadcast_nnfbcast_v9_50.st_mbo_mbp_terms.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Terms Aon flag set?
  if bit.band(value, 0x4000) ~= 0 then
    flags[#flags + 1] = "Terms Aon"
  end
  -- Is Mf flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Mf"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: St Mbo Mbp Terms
nse_nsefo_broadcast_nnfbcast_v9_50.st_mbo_mbp_terms.bits = function(range, value, packet, parent)

  -- Reserved 114: 14 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_114, range, value)

  -- Terms Aon: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.terms_aon, range, value)

  -- Mf: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.mf, range, value)
end

-- Dissect: St Mbo Mbp Terms
nse_nsefo_broadcast_nnfbcast_v9_50.st_mbo_mbp_terms.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsefo_broadcast_nnfbcast_v9_50.st_mbo_mbp_terms.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.st_mbo_mbp_terms.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_mbo_mbp_terms, range, display)

  if show.structs then
    nse_nsefo_broadcast_nnfbcast_v9_50.st_mbo_mbp_terms.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- St Mbo Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_mbo_info = {}

-- Size: St Mbo Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_mbo_info.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.trader_id.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.qty.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.st_mbo_mbp_terms.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.min_fill_qty.size

-- Display: St Mbo Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_mbo_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Mbo Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_mbo_info.fields = function(buffer, offset, packet, parent, st_mbo_info_index)
  local index = offset

  -- Implicit St Mbo Info Index
  if st_mbo_info_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_mbo_info_index, st_mbo_info_index)
    iteration:set_generated()
  end

  -- Trader Id: LONG
  index, trader_id = nse_nsefo_broadcast_nnfbcast_v9_50.trader_id.dissect(buffer, index, packet, parent)

  -- Qty: LONG
  index, qty = nse_nsefo_broadcast_nnfbcast_v9_50.qty.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsefo_broadcast_nnfbcast_v9_50.price.dissect(buffer, index, packet, parent)

  -- St Mbo Mbp Terms: Struct of 3 fields
  index, st_mbo_mbp_terms = nse_nsefo_broadcast_nnfbcast_v9_50.st_mbo_mbp_terms.dissect(buffer, index, packet, parent)

  -- Min Fill Qty: LONG
  index, min_fill_qty = nse_nsefo_broadcast_nnfbcast_v9_50.min_fill_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Mbo Info
nse_nsefo_broadcast_nnfbcast_v9_50.st_mbo_info.dissect = function(buffer, offset, packet, parent, st_mbo_info_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_mbo_info, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.st_mbo_info.fields(buffer, offset, packet, parent, st_mbo_info_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.st_mbo_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.st_mbo_info.fields(buffer, offset, packet, parent, st_mbo_info_index)
  end
end

-- St Interactive Mbo Data
nse_nsefo_broadcast_nnfbcast_v9_50.st_interactive_mbo_data = {}

-- Size: St Interactive Mbo Data
nse_nsefo_broadcast_nnfbcast_v9_50.st_interactive_mbo_data.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.token.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.book_type.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.trading_status.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.volume_traded_today_short.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.last_traded_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.net_change_indicator.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.net_price_change_from_closing_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_quantity.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_time.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.average_trade_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.auction_number.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.auction_status.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.initiator_type.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.initiator_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.initiator_quantity.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.auction_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.auction_quantity.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.st_mbo_info.size

-- Display: St Interactive Mbo Data
nse_nsefo_broadcast_nnfbcast_v9_50.st_interactive_mbo_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Interactive Mbo Data
nse_nsefo_broadcast_nnfbcast_v9_50.st_interactive_mbo_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token: LONG
  index, token = nse_nsefo_broadcast_nnfbcast_v9_50.token.dissect(buffer, index, packet, parent)

  -- Book Type: SHORT
  index, book_type = nse_nsefo_broadcast_nnfbcast_v9_50.book_type.dissect(buffer, index, packet, parent)

  -- Trading Status: SHORT
  index, trading_status = nse_nsefo_broadcast_nnfbcast_v9_50.trading_status.dissect(buffer, index, packet, parent)

  -- Volume Traded Today Short: UNSIGNED LONG
  index, volume_traded_today_short = nse_nsefo_broadcast_nnfbcast_v9_50.volume_traded_today_short.dissect(buffer, index, packet, parent)

  -- Last Traded Price: LONG
  index, last_traded_price = nse_nsefo_broadcast_nnfbcast_v9_50.last_traded_price.dissect(buffer, index, packet, parent)

  -- Net Change Indicator: CHAR
  index, net_change_indicator = nse_nsefo_broadcast_nnfbcast_v9_50.net_change_indicator.dissect(buffer, index, packet, parent)

  -- Net Price Change From Closing Price: LONG
  index, net_price_change_from_closing_price = nse_nsefo_broadcast_nnfbcast_v9_50.net_price_change_from_closing_price.dissect(buffer, index, packet, parent)

  -- Last Trade Quantity: LONG
  index, last_trade_quantity = nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_quantity.dissect(buffer, index, packet, parent)

  -- Last Trade Time: LONG
  index, last_trade_time = nse_nsefo_broadcast_nnfbcast_v9_50.last_trade_time.dissect(buffer, index, packet, parent)

  -- Average Trade Price: LONG
  index, average_trade_price = nse_nsefo_broadcast_nnfbcast_v9_50.average_trade_price.dissect(buffer, index, packet, parent)

  -- Auction Number: SHORT
  index, auction_number = nse_nsefo_broadcast_nnfbcast_v9_50.auction_number.dissect(buffer, index, packet, parent)

  -- Auction Status: SHORT
  index, auction_status = nse_nsefo_broadcast_nnfbcast_v9_50.auction_status.dissect(buffer, index, packet, parent)

  -- Initiator Type: SHORT
  index, initiator_type = nse_nsefo_broadcast_nnfbcast_v9_50.initiator_type.dissect(buffer, index, packet, parent)

  -- Initiator Price: LONG
  index, initiator_price = nse_nsefo_broadcast_nnfbcast_v9_50.initiator_price.dissect(buffer, index, packet, parent)

  -- Initiator Quantity: LONG
  index, initiator_quantity = nse_nsefo_broadcast_nnfbcast_v9_50.initiator_quantity.dissect(buffer, index, packet, parent)

  -- Auction Price: LONG
  index, auction_price = nse_nsefo_broadcast_nnfbcast_v9_50.auction_price.dissect(buffer, index, packet, parent)

  -- Auction Quantity: LONG
  index, auction_quantity = nse_nsefo_broadcast_nnfbcast_v9_50.auction_quantity.dissect(buffer, index, packet, parent)

  -- Array Of: St Mbo Info
  for st_mbo_info_index = 1, 10 do
    index, st_mbo_info = nse_nsefo_broadcast_nnfbcast_v9_50.st_mbo_info.dissect(buffer, index, packet, parent, st_mbo_info_index)
  end

  return index
end

-- Dissect: St Interactive Mbo Data
nse_nsefo_broadcast_nnfbcast_v9_50.st_interactive_mbo_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_interactive_mbo_data, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.st_interactive_mbo_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.st_interactive_mbo_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.st_interactive_mbo_data.fields(buffer, offset, packet, parent)
  end
end

-- Market By Order And Market By Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.market_by_order_and_market_by_price_message = {}

-- Size: Market By Order And Market By Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.market_by_order_and_market_by_price_message.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.st_interactive_mbo_data.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.st_mbp_info.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.total_buy_quantity_double.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.total_sell_quantity_double.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.st_indicator.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.closing_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.open_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.high_price.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.low_price.size

-- Display: Market By Order And Market By Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.market_by_order_and_market_by_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market By Order And Market By Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.market_by_order_and_market_by_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- St Interactive Mbo Data: Struct of 18 fields
  index, st_interactive_mbo_data = nse_nsefo_broadcast_nnfbcast_v9_50.st_interactive_mbo_data.dissect(buffer, index, packet, parent)

  -- Array Of: St Mbp Info
  for st_mbp_info_index = 1, 10 do
    index, st_mbp_info = nse_nsefo_broadcast_nnfbcast_v9_50.st_mbp_info.dissect(buffer, index, packet, parent, st_mbp_info_index)
  end

  -- Total Buy Quantity Double: DOUBLE
  index, total_buy_quantity_double = nse_nsefo_broadcast_nnfbcast_v9_50.total_buy_quantity_double.dissect(buffer, index, packet, parent)

  -- Total Sell Quantity Double: DOUBLE
  index, total_sell_quantity_double = nse_nsefo_broadcast_nnfbcast_v9_50.total_sell_quantity_double.dissect(buffer, index, packet, parent)

  -- St Indicator: Struct of 5 fields
  index, st_indicator = nse_nsefo_broadcast_nnfbcast_v9_50.st_indicator.dissect(buffer, index, packet, parent)

  -- Closing Price: LONG
  index, closing_price = nse_nsefo_broadcast_nnfbcast_v9_50.closing_price.dissect(buffer, index, packet, parent)

  -- Open Price: LONG
  index, open_price = nse_nsefo_broadcast_nnfbcast_v9_50.open_price.dissect(buffer, index, packet, parent)

  -- High Price: LONG
  index, high_price = nse_nsefo_broadcast_nnfbcast_v9_50.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: LONG
  index, low_price = nse_nsefo_broadcast_nnfbcast_v9_50.low_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market By Order And Market By Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.market_by_order_and_market_by_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.market_by_order_and_market_by_price_message, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.market_by_order_and_market_by_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.market_by_order_and_market_by_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.market_by_order_and_market_by_price_message.fields(buffer, offset, packet, parent)
  end
end

-- St Sec Status Per Market
nse_nsefo_broadcast_nnfbcast_v9_50.st_sec_status_per_market = {}

-- Size: St Sec Status Per Market
nse_nsefo_broadcast_nnfbcast_v9_50.st_sec_status_per_market.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.status.size

-- Display: St Sec Status Per Market
nse_nsefo_broadcast_nnfbcast_v9_50.st_sec_status_per_market.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Sec Status Per Market
nse_nsefo_broadcast_nnfbcast_v9_50.st_sec_status_per_market.fields = function(buffer, offset, packet, parent, st_sec_status_per_market_index)
  local index = offset

  -- Implicit St Sec Status Per Market Index
  if st_sec_status_per_market_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_sec_status_per_market_index, st_sec_status_per_market_index)
    iteration:set_generated()
  end

  -- Status: SHORT
  index, status = nse_nsefo_broadcast_nnfbcast_v9_50.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Sec Status Per Market
nse_nsefo_broadcast_nnfbcast_v9_50.st_sec_status_per_market.dissect = function(buffer, offset, packet, parent, st_sec_status_per_market_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_sec_status_per_market, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.st_sec_status_per_market.fields(buffer, offset, packet, parent, st_sec_status_per_market_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.st_sec_status_per_market.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.st_sec_status_per_market.fields(buffer, offset, packet, parent, st_sec_status_per_market_index)
  end
end

-- Token And Eligibility
nse_nsefo_broadcast_nnfbcast_v9_50.token_and_eligibility = {}

-- Size: Token And Eligibility
nse_nsefo_broadcast_nnfbcast_v9_50.token_and_eligibility.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.token.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.st_sec_status_per_market.size

-- Display: Token And Eligibility
nse_nsefo_broadcast_nnfbcast_v9_50.token_and_eligibility.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Token And Eligibility
nse_nsefo_broadcast_nnfbcast_v9_50.token_and_eligibility.fields = function(buffer, offset, packet, parent, token_and_eligibility_index)
  local index = offset

  -- Implicit Token And Eligibility Index
  if token_and_eligibility_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.token_and_eligibility_index, token_and_eligibility_index)
    iteration:set_generated()
  end

  -- Token: LONG
  index, token = nse_nsefo_broadcast_nnfbcast_v9_50.token.dissect(buffer, index, packet, parent)

  -- Array Of: St Sec Status Per Market
  for st_sec_status_per_market_index = 1, 4 do
    index, st_sec_status_per_market = nse_nsefo_broadcast_nnfbcast_v9_50.st_sec_status_per_market.dissect(buffer, index, packet, parent, st_sec_status_per_market_index)
  end

  return index
end

-- Dissect: Token And Eligibility
nse_nsefo_broadcast_nnfbcast_v9_50.token_and_eligibility.dissect = function(buffer, offset, packet, parent, token_and_eligibility_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.token_and_eligibility, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.token_and_eligibility.fields(buffer, offset, packet, parent, token_and_eligibility_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.token_and_eligibility.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.token_and_eligibility.fields(buffer, offset, packet, parent, token_and_eligibility_index)
  end
end

-- Security Status Change Message
nse_nsefo_broadcast_nnfbcast_v9_50.security_status_change_message = {}

-- Size: Security Status Change Message
nse_nsefo_broadcast_nnfbcast_v9_50.security_status_change_message.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.number_of_records.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.token_and_eligibility.size

-- Display: Security Status Change Message
nse_nsefo_broadcast_nnfbcast_v9_50.security_status_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Change Message
nse_nsefo_broadcast_nnfbcast_v9_50.security_status_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Records: SHORT
  index, number_of_records = nse_nsefo_broadcast_nnfbcast_v9_50.number_of_records.dissect(buffer, index, packet, parent)

  -- Array Of: Token And Eligibility
  for token_and_eligibility_index = 1, 35 do
    index, token_and_eligibility = nse_nsefo_broadcast_nnfbcast_v9_50.token_and_eligibility.dissect(buffer, index, packet, parent, token_and_eligibility_index)
  end

  return index
end

-- Dissect: Security Status Change Message
nse_nsefo_broadcast_nnfbcast_v9_50.security_status_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.security_status_change_message, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.security_status_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.security_status_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.security_status_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Participant Master Change Message
nse_nsefo_broadcast_nnfbcast_v9_50.participant_master_change_message = {}

-- Size: Participant Master Change Message
nse_nsefo_broadcast_nnfbcast_v9_50.participant_master_change_message.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.participant_id.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.participant_name.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.participant_status.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.participant_update_date_time.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.delete_flag.size

-- Display: Participant Master Change Message
nse_nsefo_broadcast_nnfbcast_v9_50.participant_master_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Participant Master Change Message
nse_nsefo_broadcast_nnfbcast_v9_50.participant_master_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: CHAR
  index, participant_id = nse_nsefo_broadcast_nnfbcast_v9_50.participant_id.dissect(buffer, index, packet, parent)

  -- Participant Name: CHAR
  index, participant_name = nse_nsefo_broadcast_nnfbcast_v9_50.participant_name.dissect(buffer, index, packet, parent)

  -- Participant Status: CHAR
  index, participant_status = nse_nsefo_broadcast_nnfbcast_v9_50.participant_status.dissect(buffer, index, packet, parent)

  -- Participant Update Date Time: LONG
  index, participant_update_date_time = nse_nsefo_broadcast_nnfbcast_v9_50.participant_update_date_time.dissect(buffer, index, packet, parent)

  -- Delete Flag: CHAR
  index, delete_flag = nse_nsefo_broadcast_nnfbcast_v9_50.delete_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Participant Master Change Message
nse_nsefo_broadcast_nnfbcast_v9_50.participant_master_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.participant_master_change_message, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.participant_master_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.participant_master_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.participant_master_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Master Change Message
nse_nsefo_broadcast_nnfbcast_v9_50.instrument_master_change_message = {}

-- Size: Instrument Master Change Message
nse_nsefo_broadcast_nnfbcast_v9_50.instrument_master_change_message.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.instrument_id.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.instrument_name.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.instrument_description.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.instrument_update_time.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.delete_flag.size

-- Display: Instrument Master Change Message
nse_nsefo_broadcast_nnfbcast_v9_50.instrument_master_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Master Change Message
nse_nsefo_broadcast_nnfbcast_v9_50.instrument_master_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: SHORT
  index, instrument_id = nse_nsefo_broadcast_nnfbcast_v9_50.instrument_id.dissect(buffer, index, packet, parent)

  -- Instrument Name: CHAR
  index, instrument_name = nse_nsefo_broadcast_nnfbcast_v9_50.instrument_name.dissect(buffer, index, packet, parent)

  -- Instrument Description: CHAR
  index, instrument_description = nse_nsefo_broadcast_nnfbcast_v9_50.instrument_description.dissect(buffer, index, packet, parent)

  -- Instrument Update Time: LONG
  index, instrument_update_time = nse_nsefo_broadcast_nnfbcast_v9_50.instrument_update_time.dissect(buffer, index, packet, parent)

  -- Delete Flag: CHAR
  index, delete_flag = nse_nsefo_broadcast_nnfbcast_v9_50.delete_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Master Change Message
nse_nsefo_broadcast_nnfbcast_v9_50.instrument_master_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.instrument_master_change_message, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.instrument_master_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.instrument_master_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.instrument_master_change_message.fields(buffer, offset, packet, parent)
  end
end

-- St Purpose
nse_nsefo_broadcast_nnfbcast_v9_50.st_purpose = {}

-- Size: St Purpose
nse_nsefo_broadcast_nnfbcast_v9_50.st_purpose.size = 2

-- Display: St Purpose
nse_nsefo_broadcast_nnfbcast_v9_50.st_purpose.display = function(range, value, packet, parent)
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
  -- Is Reserved 10 flag set?
  if bit.band(value, 0x0200) ~= 0 then
    flags[#flags + 1] = "Reserved 10"
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
nse_nsefo_broadcast_nnfbcast_v9_50.st_purpose.bits = function(range, value, packet, parent)

  -- Reserved 13: 3 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_13, range, value)

  -- Is Corporate Adjusted: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.is_corporate_adjusted, range, value)

  -- Is This Asset: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.is_this_asset, range, value)

  -- Pl Allowed: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.pl_allowed, range, value)

  -- Ex Rejection Allowed: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.ex_rejection_allowed, range, value)

  -- Ex Allowed: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.ex_allowed, range, value)

  -- Exercise Style: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.exercise_style, range, value)

  -- Reserved 10: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_10, range, value)

  -- Egm: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.egm, range, value)

  -- Agm: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.agm, range, value)

  -- Interest: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.interest, range, value)

  -- Bonus: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.bonus, range, value)

  -- Rights: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.rights, range, value)

  -- Dividend: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.dividend, range, value)
end

-- Dissect: St Purpose
nse_nsefo_broadcast_nnfbcast_v9_50.st_purpose.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsefo_broadcast_nnfbcast_v9_50.st_purpose.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.st_purpose.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_purpose, range, display)

  if show.structs then
    nse_nsefo_broadcast_nnfbcast_v9_50.st_purpose.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- St Eligibility Indicators
nse_nsefo_broadcast_nnfbcast_v9_50.st_eligibility_indicators = {}

-- Size: St Eligibility Indicators
nse_nsefo_broadcast_nnfbcast_v9_50.st_eligibility_indicators.size = 2

-- Display: St Eligibility Indicators
nse_nsefo_broadcast_nnfbcast_v9_50.st_eligibility_indicators.display = function(range, value, packet, parent)
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

-- Dissect Bit Fields: St Eligibility Indicators
nse_nsefo_broadcast_nnfbcast_v9_50.st_eligibility_indicators.bits = function(range, value, packet, parent)

  -- Reserved 113: 13 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_113, range, value)

  -- Minimum Fill: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.minimum_fill, range, value)

  -- Aon: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.aon, range, value)

  -- Participate In Market Index: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.participate_in_market_index, range, value)
end

-- Dissect: St Eligibility Indicators
nse_nsefo_broadcast_nnfbcast_v9_50.st_eligibility_indicators.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsefo_broadcast_nnfbcast_v9_50.st_eligibility_indicators.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.st_eligibility_indicators.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_eligibility_indicators, range, display)

  if show.structs then
    nse_nsefo_broadcast_nnfbcast_v9_50.st_eligibility_indicators.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Eligibility Flags
nse_nsefo_broadcast_nnfbcast_v9_50.security_eligibility_flags = {}

-- Size: Security Eligibility Flags
nse_nsefo_broadcast_nnfbcast_v9_50.security_eligibility_flags.size = 1

-- Display: Security Eligibility Flags
nse_nsefo_broadcast_nnfbcast_v9_50.security_eligibility_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Eligibility flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Eligibility"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Security Eligibility Flags
nse_nsefo_broadcast_nnfbcast_v9_50.security_eligibility_flags.bits = function(range, value, packet, parent)

  -- Reserved 17: 7 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.reserved_17, range, value)

  -- Eligibility: 1 Bit
  parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.eligibility, range, value)
end

-- Dissect: Security Eligibility Flags
nse_nsefo_broadcast_nnfbcast_v9_50.security_eligibility_flags.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsefo_broadcast_nnfbcast_v9_50.security_eligibility_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nse_nsefo_broadcast_nnfbcast_v9_50.security_eligibility_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.security_eligibility_flags, range, display)

  if show.structs then
    nse_nsefo_broadcast_nnfbcast_v9_50.security_eligibility_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- St Sec Eligibility Per Mkt
nse_nsefo_broadcast_nnfbcast_v9_50.st_sec_eligibility_per_mkt = {}

-- Size: St Sec Eligibility Per Mkt
nse_nsefo_broadcast_nnfbcast_v9_50.st_sec_eligibility_per_mkt.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.security_eligibility_flags.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.filler.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.status.size

-- Display: St Sec Eligibility Per Mkt
nse_nsefo_broadcast_nnfbcast_v9_50.st_sec_eligibility_per_mkt.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Sec Eligibility Per Mkt
nse_nsefo_broadcast_nnfbcast_v9_50.st_sec_eligibility_per_mkt.fields = function(buffer, offset, packet, parent, st_sec_eligibility_per_mkt_index)
  local index = offset

  -- Implicit St Sec Eligibility Per Mkt Index
  if st_sec_eligibility_per_mkt_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_sec_eligibility_per_mkt_index, st_sec_eligibility_per_mkt_index)
    iteration:set_generated()
  end

  -- Security Eligibility Flags: Struct of 2 fields
  index, security_eligibility_flags = nse_nsefo_broadcast_nnfbcast_v9_50.security_eligibility_flags.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsefo_broadcast_nnfbcast_v9_50.filler.dissect(buffer, index, packet, parent)

  -- Status: SHORT
  index, status = nse_nsefo_broadcast_nnfbcast_v9_50.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Sec Eligibility Per Mkt
nse_nsefo_broadcast_nnfbcast_v9_50.st_sec_eligibility_per_mkt.dissect = function(buffer, offset, packet, parent, st_sec_eligibility_per_mkt_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.st_sec_eligibility_per_mkt, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.st_sec_eligibility_per_mkt.fields(buffer, offset, packet, parent, st_sec_eligibility_per_mkt_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.st_sec_eligibility_per_mkt.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.st_sec_eligibility_per_mkt.fields(buffer, offset, packet, parent, st_sec_eligibility_per_mkt_index)
  end
end

-- Security Master Change Message
nse_nsefo_broadcast_nnfbcast_v9_50.security_master_change_message = {}

-- Size: Security Master Change Message
nse_nsefo_broadcast_nnfbcast_v9_50.security_master_change_message.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.token.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.sec_info.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.permitted_to_trade.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.issued_capital.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.warning_quantity.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.freeze_quantity.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.credit_rating.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.st_sec_eligibility_per_mkt.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.issue_rate.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.issue_start_date.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.interest_payment_date.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.issue_maturity_date.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.margin_percentage.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.minimum_lot_quantity.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.board_lot_quantity.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.tick_size.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.name.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.reserved_1.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.listing_date.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.expulsion_date.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.re_admission_date.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.record_date.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.low_price_range.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.high_price_range.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.expiry_date.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.no_delivery_start_date.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.no_delivery_end_date.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.st_eligibility_indicators.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.book_closure_start_date.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.book_closure_end_date.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.exercise_start_date.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.exercise_end_date.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.old_token.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.asset_instrument.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.asset_name.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.asset_token.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.intrinsic_value.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.extrinsic_value.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.st_purpose.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.local_update_date_time.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.delete_flag.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.remark.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.base_price.size

-- Display: Security Master Change Message
nse_nsefo_broadcast_nnfbcast_v9_50.security_master_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Master Change Message
nse_nsefo_broadcast_nnfbcast_v9_50.security_master_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token: LONG
  index, token = nse_nsefo_broadcast_nnfbcast_v9_50.token.dissect(buffer, index, packet, parent)

  -- Sec Info: Struct of 7 fields
  index, sec_info = nse_nsefo_broadcast_nnfbcast_v9_50.sec_info.dissect(buffer, index, packet, parent)

  -- Permitted To Trade: SHORT
  index, permitted_to_trade = nse_nsefo_broadcast_nnfbcast_v9_50.permitted_to_trade.dissect(buffer, index, packet, parent)

  -- Issued Capital: DOUBLE
  index, issued_capital = nse_nsefo_broadcast_nnfbcast_v9_50.issued_capital.dissect(buffer, index, packet, parent)

  -- Warning Quantity: LONG
  index, warning_quantity = nse_nsefo_broadcast_nnfbcast_v9_50.warning_quantity.dissect(buffer, index, packet, parent)

  -- Freeze Quantity: LONG
  index, freeze_quantity = nse_nsefo_broadcast_nnfbcast_v9_50.freeze_quantity.dissect(buffer, index, packet, parent)

  -- Credit Rating: CHAR
  index, credit_rating = nse_nsefo_broadcast_nnfbcast_v9_50.credit_rating.dissect(buffer, index, packet, parent)

  -- Array Of: St Sec Eligibility Per Mkt
  for st_sec_eligibility_per_mkt_index = 1, 4 do
    index, st_sec_eligibility_per_mkt = nse_nsefo_broadcast_nnfbcast_v9_50.st_sec_eligibility_per_mkt.dissect(buffer, index, packet, parent, st_sec_eligibility_per_mkt_index)
  end

  -- Issue Rate: SHORT
  index, issue_rate = nse_nsefo_broadcast_nnfbcast_v9_50.issue_rate.dissect(buffer, index, packet, parent)

  -- Issue Start Date: LONG
  index, issue_start_date = nse_nsefo_broadcast_nnfbcast_v9_50.issue_start_date.dissect(buffer, index, packet, parent)

  -- Interest Payment Date: LONG
  index, interest_payment_date = nse_nsefo_broadcast_nnfbcast_v9_50.interest_payment_date.dissect(buffer, index, packet, parent)

  -- Issue Maturity Date: LONG
  index, issue_maturity_date = nse_nsefo_broadcast_nnfbcast_v9_50.issue_maturity_date.dissect(buffer, index, packet, parent)

  -- Margin Percentage: LONG
  index, margin_percentage = nse_nsefo_broadcast_nnfbcast_v9_50.margin_percentage.dissect(buffer, index, packet, parent)

  -- Minimum Lot Quantity: LONG
  index, minimum_lot_quantity = nse_nsefo_broadcast_nnfbcast_v9_50.minimum_lot_quantity.dissect(buffer, index, packet, parent)

  -- Board Lot Quantity: LONG
  index, board_lot_quantity = nse_nsefo_broadcast_nnfbcast_v9_50.board_lot_quantity.dissect(buffer, index, packet, parent)

  -- Tick Size: LONG
  index, tick_size = nse_nsefo_broadcast_nnfbcast_v9_50.tick_size.dissect(buffer, index, packet, parent)

  -- Name: CHAR
  index, name = nse_nsefo_broadcast_nnfbcast_v9_50.name.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_broadcast_nnfbcast_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Listing Date: LONG
  index, listing_date = nse_nsefo_broadcast_nnfbcast_v9_50.listing_date.dissect(buffer, index, packet, parent)

  -- Expulsion Date: LONG
  index, expulsion_date = nse_nsefo_broadcast_nnfbcast_v9_50.expulsion_date.dissect(buffer, index, packet, parent)

  -- Re Admission Date: LONG
  index, re_admission_date = nse_nsefo_broadcast_nnfbcast_v9_50.re_admission_date.dissect(buffer, index, packet, parent)

  -- Record Date: LONG
  index, record_date = nse_nsefo_broadcast_nnfbcast_v9_50.record_date.dissect(buffer, index, packet, parent)

  -- Low Price Range: LONG
  index, low_price_range = nse_nsefo_broadcast_nnfbcast_v9_50.low_price_range.dissect(buffer, index, packet, parent)

  -- High Price Range: LONG
  index, high_price_range = nse_nsefo_broadcast_nnfbcast_v9_50.high_price_range.dissect(buffer, index, packet, parent)

  -- Expiry Date: LONG
  index, expiry_date = nse_nsefo_broadcast_nnfbcast_v9_50.expiry_date.dissect(buffer, index, packet, parent)

  -- No Delivery Start Date: LONG
  index, no_delivery_start_date = nse_nsefo_broadcast_nnfbcast_v9_50.no_delivery_start_date.dissect(buffer, index, packet, parent)

  -- No Delivery End Date: LONG
  index, no_delivery_end_date = nse_nsefo_broadcast_nnfbcast_v9_50.no_delivery_end_date.dissect(buffer, index, packet, parent)

  -- St Eligibility Indicators: Struct of 4 fields
  index, st_eligibility_indicators = nse_nsefo_broadcast_nnfbcast_v9_50.st_eligibility_indicators.dissect(buffer, index, packet, parent)

  -- Book Closure Start Date: LONG
  index, book_closure_start_date = nse_nsefo_broadcast_nnfbcast_v9_50.book_closure_start_date.dissect(buffer, index, packet, parent)

  -- Book Closure End Date: LONG
  index, book_closure_end_date = nse_nsefo_broadcast_nnfbcast_v9_50.book_closure_end_date.dissect(buffer, index, packet, parent)

  -- Exercise Start Date: LONG
  index, exercise_start_date = nse_nsefo_broadcast_nnfbcast_v9_50.exercise_start_date.dissect(buffer, index, packet, parent)

  -- Exercise End Date: LONG
  index, exercise_end_date = nse_nsefo_broadcast_nnfbcast_v9_50.exercise_end_date.dissect(buffer, index, packet, parent)

  -- Old Token: LONG
  index, old_token = nse_nsefo_broadcast_nnfbcast_v9_50.old_token.dissect(buffer, index, packet, parent)

  -- Asset Instrument: CHAR
  index, asset_instrument = nse_nsefo_broadcast_nnfbcast_v9_50.asset_instrument.dissect(buffer, index, packet, parent)

  -- Asset Name: CHAR
  index, asset_name = nse_nsefo_broadcast_nnfbcast_v9_50.asset_name.dissect(buffer, index, packet, parent)

  -- Asset Token: LONG
  index, asset_token = nse_nsefo_broadcast_nnfbcast_v9_50.asset_token.dissect(buffer, index, packet, parent)

  -- Intrinsic Value: LONG
  index, intrinsic_value = nse_nsefo_broadcast_nnfbcast_v9_50.intrinsic_value.dissect(buffer, index, packet, parent)

  -- Extrinsic Value: LONG
  index, extrinsic_value = nse_nsefo_broadcast_nnfbcast_v9_50.extrinsic_value.dissect(buffer, index, packet, parent)

  -- St Purpose: Struct of 14 fields
  index, st_purpose = nse_nsefo_broadcast_nnfbcast_v9_50.st_purpose.dissect(buffer, index, packet, parent)

  -- Local Update Date Time: LONG
  index, local_update_date_time = nse_nsefo_broadcast_nnfbcast_v9_50.local_update_date_time.dissect(buffer, index, packet, parent)

  -- Delete Flag: CHAR
  index, delete_flag = nse_nsefo_broadcast_nnfbcast_v9_50.delete_flag.dissect(buffer, index, packet, parent)

  -- Remark: CHAR
  index, remark = nse_nsefo_broadcast_nnfbcast_v9_50.remark.dissect(buffer, index, packet, parent)

  -- Base Price: LONG
  index, base_price = nse_nsefo_broadcast_nnfbcast_v9_50.base_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Master Change Message
nse_nsefo_broadcast_nnfbcast_v9_50.security_master_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.security_master_change_message, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.security_master_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.security_master_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.security_master_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Open Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.security_open_price_message = {}

-- Size: Security Open Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.security_open_price_message.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.symbol.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.series.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.token.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.opening_price.size

-- Display: Security Open Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.security_open_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Open Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.security_open_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: CHAR
  index, symbol = nse_nsefo_broadcast_nnfbcast_v9_50.symbol.dissect(buffer, index, packet, parent)

  -- Series: CHAR
  index, series = nse_nsefo_broadcast_nnfbcast_v9_50.series.dissect(buffer, index, packet, parent)

  -- Token: LONG
  index, token = nse_nsefo_broadcast_nnfbcast_v9_50.token.dissect(buffer, index, packet, parent)

  -- Opening Price: LONG
  index, opening_price = nse_nsefo_broadcast_nnfbcast_v9_50.opening_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Open Price Message
nse_nsefo_broadcast_nnfbcast_v9_50.security_open_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.security_open_price_message, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.security_open_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.security_open_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.security_open_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Broadcast Journal Vct Message
nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_journal_vct_message = {}

-- Size: Broadcast Journal Vct Message
nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_journal_vct_message.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.branch_number.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.broker_number.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.action_code.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.st_bcast_destination.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.reserved_26.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_message_length.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_message.size

-- Display: Broadcast Journal Vct Message
nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_journal_vct_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broadcast Journal Vct Message
nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_journal_vct_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Branch Number: SHORT
  index, branch_number = nse_nsefo_broadcast_nnfbcast_v9_50.branch_number.dissect(buffer, index, packet, parent)

  -- Broker Number: CHAR
  index, broker_number = nse_nsefo_broadcast_nnfbcast_v9_50.broker_number.dissect(buffer, index, packet, parent)

  -- Action Code: CHAR
  index, action_code = nse_nsefo_broadcast_nnfbcast_v9_50.action_code.dissect(buffer, index, packet, parent)

  -- St Bcast Destination: Struct of 5 fields
  index, st_bcast_destination = nse_nsefo_broadcast_nnfbcast_v9_50.st_bcast_destination.dissect(buffer, index, packet, parent)

  -- Reserved 26: CHAR
  index, reserved_26 = nse_nsefo_broadcast_nnfbcast_v9_50.reserved_26.dissect(buffer, index, packet, parent)

  -- Broadcast Message Length: SHORT
  index, broadcast_message_length = nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_message_length.dissect(buffer, index, packet, parent)

  -- Broadcast Message: CHAR
  index, broadcast_message = nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broadcast Journal Vct Message
nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_journal_vct_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.broadcast_journal_vct_message, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_journal_vct_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_journal_vct_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_journal_vct_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Payload
nse_nsefo_broadcast_nnfbcast_v9_50.message_payload = {}

-- Dissect: Message Payload
nse_nsefo_broadcast_nnfbcast_v9_50.message_payload.dissect = function(buffer, offset, packet, parent, transaction_code)
  -- Dissect Broadcast Journal Vct Message
  if transaction_code == 6501 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_journal_vct_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Open Price Message
  if transaction_code == 6013 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.security_open_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Master Change Message
  if transaction_code == 7305 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.security_master_change_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Master Change Message
  if transaction_code == 7324 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.instrument_master_change_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Participant Master Change Message
  if transaction_code == 7306 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.participant_master_change_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Change Message
  if transaction_code == 7320 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.security_status_change_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market By Order And Market By Price Message
  if transaction_code == 7200 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.market_by_order_and_market_by_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Only Market By Price Message
  if transaction_code == 7208 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.only_market_by_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Enhanced Only Market By Price Message
  if transaction_code == 17208 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_only_market_by_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ticker And Market Index Message
  if transaction_code == 7202 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.ticker_and_market_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Enhanced Ticker And Market Index Message
  if transaction_code == 17202 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_ticker_and_market_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Watch Round Robin Message
  if transaction_code == 7201 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.market_watch_round_robin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Enhanced Market Watch Round Robin Message
  if transaction_code == 17201 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_market_watch_round_robin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Indices Message
  if transaction_code == 7207 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.indices_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Industry Index Update Message
  if transaction_code == 7203 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.industry_index_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Market By Price Delta Message
  if transaction_code == 7211 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.spread_market_by_price_delta_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Enhanced Spread Market By Price Delta Message
  if transaction_code == 17211 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_spread_market_by_price_delta_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Asset Open Interest Message
  if transaction_code == 7130 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.asset_open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Enhanced Asset Open Interest Message
  if transaction_code == 17130 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.enhanced_asset_open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Limit Price Protection Range Message
  if transaction_code == 7220 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.limit_price_protection_range_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cas Reference Price Message
  if transaction_code == 7338 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.cas_reference_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Turnover Exceeded Message
  if transaction_code == 9010 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.turnover_exceeded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Turnover Exceeded Message
  if transaction_code == 9011 then
    return nse_nsefo_broadcast_nnfbcast_v9_50.turnover_exceeded_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Bcast Header
nse_nsefo_broadcast_nnfbcast_v9_50.bcast_header = {}

-- Size: Bcast Header
nse_nsefo_broadcast_nnfbcast_v9_50.bcast_header.size =
  nse_nsefo_broadcast_nnfbcast_v9_50.reserved_0.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.reserved_2.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.log_time.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.alpha_char.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.transaction_code.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.error_code.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.bc_seq_no.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.reserved_18.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.reserved_19.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.time_stamp_2.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.filler_2.size + 
  nse_nsefo_broadcast_nnfbcast_v9_50.message_length.size

-- Display: Bcast Header
nse_nsefo_broadcast_nnfbcast_v9_50.bcast_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bcast Header
nse_nsefo_broadcast_nnfbcast_v9_50.bcast_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 0: CHAR
  index, reserved_0 = nse_nsefo_broadcast_nnfbcast_v9_50.reserved_0.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  index, reserved_2 = nse_nsefo_broadcast_nnfbcast_v9_50.reserved_2.dissect(buffer, index, packet, parent)

  -- Log Time: LONG
  index, log_time = nse_nsefo_broadcast_nnfbcast_v9_50.log_time.dissect(buffer, index, packet, parent)

  -- Alpha Char: CHAR
  index, alpha_char = nse_nsefo_broadcast_nnfbcast_v9_50.alpha_char.dissect(buffer, index, packet, parent)

  -- Transaction Code: SHORT
  index, transaction_code = nse_nsefo_broadcast_nnfbcast_v9_50.transaction_code.dissect(buffer, index, packet, parent)

  -- Error Code: SHORT
  index, error_code = nse_nsefo_broadcast_nnfbcast_v9_50.error_code.dissect(buffer, index, packet, parent)

  -- Bc Seq No: LONG
  index, bc_seq_no = nse_nsefo_broadcast_nnfbcast_v9_50.bc_seq_no.dissect(buffer, index, packet, parent)

  -- Reserved 18: CHAR
  index, reserved_18 = nse_nsefo_broadcast_nnfbcast_v9_50.reserved_18.dissect(buffer, index, packet, parent)

  -- Reserved 19: CHAR
  index, reserved_19 = nse_nsefo_broadcast_nnfbcast_v9_50.reserved_19.dissect(buffer, index, packet, parent)

  -- Time Stamp 2: CHAR
  index, time_stamp_2 = nse_nsefo_broadcast_nnfbcast_v9_50.time_stamp_2.dissect(buffer, index, packet, parent)

  -- Filler 2: BYTE
  index, filler_2 = nse_nsefo_broadcast_nnfbcast_v9_50.filler_2.dissect(buffer, index, packet, parent)

  -- Message Length: SHORT
  index, message_length = nse_nsefo_broadcast_nnfbcast_v9_50.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bcast Header
nse_nsefo_broadcast_nnfbcast_v9_50.bcast_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.bcast_header, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.bcast_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.bcast_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.bcast_header.fields(buffer, offset, packet, parent)
  end
end

-- Broadcast Data
nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_data = {}

-- Calculate size of: Broadcast Data
nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_data.size = function(buffer, offset)
  local index = 0

  index = index + nse_nsefo_broadcast_nnfbcast_v9_50.bcast_market_type.size

  index = index + nse_nsefo_broadcast_nnfbcast_v9_50.bcast_reserved.size

  index = index + nse_nsefo_broadcast_nnfbcast_v9_50.bcast_header.size

  -- Calculate runtime size of Message Payload field
  local message_payload_offset = offset + index
  local message_payload_type = buffer(message_payload_offset - 30, 2):int()
  index = index + nse_nsefo_broadcast_nnfbcast_v9_50.message_payload.size(buffer, message_payload_offset, message_payload_type)

  return index
end

-- Display: Broadcast Data
nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broadcast Data
nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bcast Market Type: CHAR
  index, bcast_market_type = nse_nsefo_broadcast_nnfbcast_v9_50.bcast_market_type.dissect(buffer, index, packet, parent)

  -- Bcast Reserved: CHAR
  index, bcast_reserved = nse_nsefo_broadcast_nnfbcast_v9_50.bcast_reserved.dissect(buffer, index, packet, parent)

  -- Bcast Header: Struct of 12 fields
  index, bcast_header = nse_nsefo_broadcast_nnfbcast_v9_50.bcast_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Transaction Code
  local transaction_code = buffer(index - 30, 2):int()

  -- Message Payload: Runtime Type with 22 branches
  index = nse_nsefo_broadcast_nnfbcast_v9_50.message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Broadcast Data
nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.broadcast_data, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_data.fields(buffer, offset, packet, parent)
  end
end

-- Packed Packet
nse_nsefo_broadcast_nnfbcast_v9_50.packed_packet = {}

-- Calculate size of: Packed Packet
nse_nsefo_broadcast_nnfbcast_v9_50.packed_packet.size = function(buffer, offset)
  local index = 0

  index = index + nse_nsefo_broadcast_nnfbcast_v9_50.compression_length.size

  index = index + nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_data.size(buffer, offset + index)

  return index
end

-- Display: Packed Packet
nse_nsefo_broadcast_nnfbcast_v9_50.packed_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packed Packet
nse_nsefo_broadcast_nnfbcast_v9_50.packed_packet.fields = function(buffer, offset, packet, parent, packed_packet_index)
  local index = offset

  -- Implicit Packed Packet Index
  if packed_packet_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.packed_packet_index, packed_packet_index)
    iteration:set_generated()
  end

  -- Compression Length: SHORT
  index, compression_length = nse_nsefo_broadcast_nnfbcast_v9_50.compression_length.dissect(buffer, index, packet, parent)

  local broadcast_data_conversion = compression_length > 0

  if broadcast_data_conversion then
    local compressed = buffer(index, buffer:len() - index):bytes()
    buffer = lzo1z_decompress(compressed, 16384):tvb("Decompressed")
    index = 0
  end

  -- Broadcast Data: Struct of 4 fields
  index, broadcast_data = nse_nsefo_broadcast_nnfbcast_v9_50.broadcast_data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packed Packet
nse_nsefo_broadcast_nnfbcast_v9_50.packed_packet.dissect = function(buffer, offset, packet, parent, packed_packet_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.packed_packet, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.packed_packet.fields(buffer, offset, packet, parent, packed_packet_index)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.packed_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.packed_packet.fields(buffer, offset, packet, parent, packed_packet_index)
  end
end

-- Bcast Pack Data
nse_nsefo_broadcast_nnfbcast_v9_50.bcast_pack_data = {}

-- Calculate size of: Bcast Pack Data
nse_nsefo_broadcast_nnfbcast_v9_50.bcast_pack_data.size = function(buffer, offset)
  local index = 0

  index = index + nse_nsefo_broadcast_nnfbcast_v9_50.net_id.size

  index = index + nse_nsefo_broadcast_nnfbcast_v9_50.number_of_packets.size

  -- Calculate field size from count
  local packed_packet_count = buffer(offset + index - 2, 2):int()
  for i = 1, packed_packet_count do
    index = index + nse_nsefo_broadcast_nnfbcast_v9_50.packed_packet.size(buffer, offset + index)
  end
  return index
end

-- Display: Bcast Pack Data
nse_nsefo_broadcast_nnfbcast_v9_50.bcast_pack_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bcast Pack Data
nse_nsefo_broadcast_nnfbcast_v9_50.bcast_pack_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Net Id: CHAR
  index, net_id = nse_nsefo_broadcast_nnfbcast_v9_50.net_id.dissect(buffer, index, packet, parent)

  -- Number Of Packets: SHORT
  index, number_of_packets = nse_nsefo_broadcast_nnfbcast_v9_50.number_of_packets.dissect(buffer, index, packet, parent)

  -- Repeating: Packed Packet
  for packed_packet_index = 1, number_of_packets do
    index, packed_packet = nse_nsefo_broadcast_nnfbcast_v9_50.packed_packet.dissect(buffer, index, packet, parent, packed_packet_index)
  end

  return index
end

-- Dissect: Bcast Pack Data
nse_nsefo_broadcast_nnfbcast_v9_50.bcast_pack_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50.fields.bcast_pack_data, buffer(offset, 0))
    local index = nse_nsefo_broadcast_nnfbcast_v9_50.bcast_pack_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_broadcast_nnfbcast_v9_50.bcast_pack_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_broadcast_nnfbcast_v9_50.bcast_pack_data.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nse_nsefo_broadcast_nnfbcast_v9_50.packet = {}

-- Verify required size of Udp packet
nse_nsefo_broadcast_nnfbcast_v9_50.packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nsefo_broadcast_nnfbcast_v9_50.net_id.size + nse_nsefo_broadcast_nnfbcast_v9_50.number_of_packets.size
end

-- Dissect Packet
nse_nsefo_broadcast_nnfbcast_v9_50.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Bcast Pack Data: Struct of 3 fields
  index, bcast_pack_data = nse_nsefo_broadcast_nnfbcast_v9_50.bcast_pack_data.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nse_nsefo_broadcast_nnfbcast_v9_50.init()
end

-- Dissector for Nse NseFo Broadcast NnfBcast 9.50
function omi_nse_nsefo_broadcast_nnfbcast_v9_50.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nse_nsefo_broadcast_nnfbcast_v9_50.name

  -- Dissect protocol
  local protocol = parent:add(omi_nse_nsefo_broadcast_nnfbcast_v9_50, buffer(), omi_nse_nsefo_broadcast_nnfbcast_v9_50.description, "("..buffer:len().." Bytes)")
  return nse_nsefo_broadcast_nnfbcast_v9_50.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nse NseFo Broadcast NnfBcast 9.50 (Udp)
local function omi_nse_nsefo_broadcast_nnfbcast_v9_50_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nsefo_broadcast_nnfbcast_v9_50.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nsefo_broadcast_nnfbcast_v9_50
  omi_nse_nsefo_broadcast_nnfbcast_v9_50.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nse NseFo Broadcast NnfBcast 9.50
omi_nse_nsefo_broadcast_nnfbcast_v9_50:register_heuristic("udp", omi_nse_nsefo_broadcast_nnfbcast_v9_50_udp_heuristic)

-- Register Nse NseFo Broadcast NnfBcast 9.50 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nse_nsefo_broadcast_nnfbcast_v9_50)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Stock Exchange of India Ltd
--   Version: 9.50
--   Date: Monday, July 27, 2026
--   Specification: TP_FO_Trimmed_NNF_PROTOCOL_9.50_20260820170606.pdf
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
