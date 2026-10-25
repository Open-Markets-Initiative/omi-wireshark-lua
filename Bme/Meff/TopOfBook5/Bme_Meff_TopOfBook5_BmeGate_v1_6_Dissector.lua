-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bme Meff TopOfBook5 BmeGate 1.6 Protocol
local omi_bme_meff_topofbook5_bmegate_v1_6 = Proto("Omi.Bme.Meff.TopOfBook5.BmeGate.v1.6", "Bme Meff TopOfBook5 BmeGate 1.6")

-- Protocol table
local bme_meff_topofbook5_bmegate_v1_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bme Meff TopOfBook5 BmeGate 1.6 Fields
omi_bme_meff_topofbook5_bmegate_v1_6.fields.adjustments_rule = ProtoField.new("Adjustments Rule", "bme.meff.topofbook5.bmegate.v1.6.adjustmentsrule", ftypes.STRING)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.admission_requested_by_issuer = ProtoField.new("Admission Requested By Issuer", "bme.meff.topofbook5.bmegate.v1.6.admissionrequestedbyissuer", ftypes.UINT8, nil, nil, nil, "Security request for admission to trading by the issuer")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.algo_flag = ProtoField.new("Algo Flag", "bme.meff.topofbook5.bmegate.v1.6.algoflag", ftypes.UINT8, nil, nil, nil, "Algorithmic flag indicator")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.amended_trade_date = ProtoField.new("Amended Trade Date", "bme.meff.topofbook5.bmegate.v1.6.amendedtradedate", ftypes.INT32, nil, nil, nil, "Date of the amended/cancelled trade")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.amended_trade_type = ProtoField.new("Amended Trade Type", "bme.meff.topofbook5.bmegate.v1.6.amendedtradetype", ftypes.STRING, nil, nil, nil, "Trade type of the amended/cancelled trade")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_orders_1 = ProtoField.new("Ask Orders 1", "bme.meff.topofbook5.bmegate.v1.6.askorders1", ftypes.UINT16, nil, nil, nil, "Sell number of orders")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_orders_2 = ProtoField.new("Ask Orders 2", "bme.meff.topofbook5.bmegate.v1.6.askorders2", ftypes.UINT16, nil, nil, nil, "Sell number of orders level 2")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_orders_3 = ProtoField.new("Ask Orders 3", "bme.meff.topofbook5.bmegate.v1.6.askorders3", ftypes.UINT16, nil, nil, nil, "Sell number of orders level 3")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_orders_4 = ProtoField.new("Ask Orders 4", "bme.meff.topofbook5.bmegate.v1.6.askorders4", ftypes.UINT16, nil, nil, nil, "Sell number of orders level 4")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_orders_5 = ProtoField.new("Ask Orders 5", "bme.meff.topofbook5.bmegate.v1.6.askorders5", ftypes.UINT16, nil, nil, nil, "Sell number of orders level 5")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_px_1 = ProtoField.new("Ask Px 1", "bme.meff.topofbook5.bmegate.v1.6.askpx1", ftypes.DOUBLE, nil, nil, nil, "Sell price")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_px_2 = ProtoField.new("Ask Px 2", "bme.meff.topofbook5.bmegate.v1.6.askpx2", ftypes.DOUBLE, nil, nil, nil, "Sell price level 2")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_px_3 = ProtoField.new("Ask Px 3", "bme.meff.topofbook5.bmegate.v1.6.askpx3", ftypes.DOUBLE, nil, nil, nil, "Sell price level 3")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_px_4 = ProtoField.new("Ask Px 4", "bme.meff.topofbook5.bmegate.v1.6.askpx4", ftypes.DOUBLE, nil, nil, nil, "Sell price level 4")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_px_5 = ProtoField.new("Ask Px 5", "bme.meff.topofbook5.bmegate.v1.6.askpx5", ftypes.DOUBLE, nil, nil, nil, "Sell price level 5")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_size_1 = ProtoField.new("Ask Size 1", "bme.meff.topofbook5.bmegate.v1.6.asksize1", ftypes.UINT32, nil, nil, nil, "Sell volume")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_size_2 = ProtoField.new("Ask Size 2", "bme.meff.topofbook5.bmegate.v1.6.asksize2", ftypes.UINT32, nil, nil, nil, "Sell volume level 2")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_size_3 = ProtoField.new("Ask Size 3", "bme.meff.topofbook5.bmegate.v1.6.asksize3", ftypes.UINT32, nil, nil, nil, "Sell volume level 3")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_size_4 = ProtoField.new("Ask Size 4", "bme.meff.topofbook5.bmegate.v1.6.asksize4", ftypes.UINT32, nil, nil, nil, "Sell volume level 4")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_size_5 = ProtoField.new("Ask Size 5", "bme.meff.topofbook5.bmegate.v1.6.asksize5", ftypes.UINT32, nil, nil, nil, "Sell volume level 5")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.base_currency = ProtoField.new("Base Currency", "bme.meff.topofbook5.bmegate.v1.6.basecurrency", ftypes.STRING)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.base_product = ProtoField.new("Base Product", "bme.meff.topofbook5.bmegate.v1.6.baseproduct", ftypes.STRING)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.bencrfpt_flag = ProtoField.new("Bencrfpt Flag", "bme.meff.topofbook5.bmegate.v1.6.bencrfptflag", ftypes.STRING, nil, nil, nil, "Benchmark or Reference Price Indicator MMT")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_orders_1 = ProtoField.new("Bid Orders 1", "bme.meff.topofbook5.bmegate.v1.6.bidorders1", ftypes.UINT16, nil, nil, nil, "Buy number of orders")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_orders_2 = ProtoField.new("Bid Orders 2", "bme.meff.topofbook5.bmegate.v1.6.bidorders2", ftypes.UINT16, nil, nil, nil, "Buy number of orders level 2")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_orders_3 = ProtoField.new("Bid Orders 3", "bme.meff.topofbook5.bmegate.v1.6.bidorders3", ftypes.UINT16, nil, nil, nil, "Buy number of orders level 3")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_orders_4 = ProtoField.new("Bid Orders 4", "bme.meff.topofbook5.bmegate.v1.6.bidorders4", ftypes.UINT16, nil, nil, nil, "Buy number of orders level 4")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_orders_5 = ProtoField.new("Bid Orders 5", "bme.meff.topofbook5.bmegate.v1.6.bidorders5", ftypes.UINT16, nil, nil, nil, "Buy number of orders level 5")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_px_1 = ProtoField.new("Bid Px 1", "bme.meff.topofbook5.bmegate.v1.6.bidpx1", ftypes.DOUBLE, nil, nil, nil, "Buy price")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_px_2 = ProtoField.new("Bid Px 2", "bme.meff.topofbook5.bmegate.v1.6.bidpx2", ftypes.DOUBLE, nil, nil, nil, "Buy price level 2")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_px_3 = ProtoField.new("Bid Px 3", "bme.meff.topofbook5.bmegate.v1.6.bidpx3", ftypes.DOUBLE, nil, nil, nil, "Buy price level 3")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_px_4 = ProtoField.new("Bid Px 4", "bme.meff.topofbook5.bmegate.v1.6.bidpx4", ftypes.DOUBLE, nil, nil, nil, "Buy price level 4")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_px_5 = ProtoField.new("Bid Px 5", "bme.meff.topofbook5.bmegate.v1.6.bidpx5", ftypes.DOUBLE, nil, nil, nil, "Buy price level 5")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_size_1 = ProtoField.new("Bid Size 1", "bme.meff.topofbook5.bmegate.v1.6.bidsize1", ftypes.UINT32, nil, nil, nil, "Buy volume")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_size_2 = ProtoField.new("Bid Size 2", "bme.meff.topofbook5.bmegate.v1.6.bidsize2", ftypes.UINT32, nil, nil, nil, "Buy volume level 2")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_size_3 = ProtoField.new("Bid Size 3", "bme.meff.topofbook5.bmegate.v1.6.bidsize3", ftypes.UINT32, nil, nil, nil, "Buy volume level 3")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_size_4 = ProtoField.new("Bid Size 4", "bme.meff.topofbook5.bmegate.v1.6.bidsize4", ftypes.UINT32, nil, nil, nil, "Buy volume level 4")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_size_5 = ProtoField.new("Bid Size 5", "bme.meff.topofbook5.bmegate.v1.6.bidsize5", ftypes.UINT32, nil, nil, nil, "Buy volume level 5")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.buy_rf_qs_number = ProtoField.new("Buy Rf Qs Number", "bme.meff.topofbook5.bmegate.v1.6.buyrfqsnumber", ftypes.UINT16, nil, nil, nil, "Number of buying RFQs")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.cfi_code = ProtoField.new("Cfi Code", "bme.meff.topofbook5.bmegate.v1.6.cficode", ftypes.STRING, nil, nil, nil, "CFICode")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.commodity_derivative_indicator = ProtoField.new("Commodity Derivative Indicator", "bme.meff.topofbook5.bmegate.v1.6.commodityderivativeindicator", ftypes.STRING)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "bme.meff.topofbook5.bmegate.v1.6.contractmultiplier", ftypes.DOUBLE, nil, nil, nil, "Conversion factor between price units and monetary units")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.currency = ProtoField.new("Currency", "bme.meff.topofbook5.bmegate.v1.6.currency", ftypes.STRING, nil, nil, nil, "Currency code")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.data_code = ProtoField.new("Data Code", "bme.meff.topofbook5.bmegate.v1.6.datacode", ftypes.STRING, nil, nil, nil, "Data field code")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.data_count = ProtoField.new("Data Count", "bme.meff.topofbook5.bmegate.v1.6.datacount", ftypes.UINT8, nil, nil, nil, "Number of data values")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.data_value = ProtoField.new("Data Value", "bme.meff.topofbook5.bmegate.v1.6.datavalue", ftypes.INT64, nil, nil, nil, "Data field value. Its type follows DataCode: P (price, 6 implicit decimals) for D, d, G, H, h, M, Q, Z, z, j, k and n; V (volume, 6 implicit decimals) for J, V, v and W; A (amount, 4 implicit decimals) for E and e; R (rate, 4 implicit decimals) for l, m and R; U (unsigned integer) for f (0 if not end of session) and N")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.deferral_waiver = ProtoField.new("Deferral Waiver", "bme.meff.topofbook5.bmegate.v1.6.deferralwaiver", ftypes.STRING)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.designation = ProtoField.new("Designation", "bme.meff.topofbook5.bmegate.v1.6.designation", ftypes.STRING, nil, nil, nil, "Trade situation")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.end_maturity_month_year = ProtoField.new("End Maturity Month Year", "bme.meff.topofbook5.bmegate.v1.6.endmaturitymonthyear", ftypes.STRING, nil, nil, nil, "Maturity Interval End Date")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.environment_code = ProtoField.new("Environment Code", "bme.meff.topofbook5.bmegate.v1.6.environmentcode", ftypes.STRING)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "bme.meff.topofbook5.bmegate.v1.6.execrefid", ftypes.UINT32, nil, nil, nil, "System Trade Number of the amended/cancelled trade")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.exercise_style = ProtoField.new("Exercise Style", "bme.meff.topofbook5.bmegate.v1.6.exercisestyle", ftypes.STRING, nil, nil, nil, "Exercise Style (Options)")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.expected_sequence_number = ProtoField.new("Expected Sequence Number", "bme.meff.topofbook5.bmegate.v1.6.expectedsequencenumber", ftypes.UINT32, nil, nil, nil, "Requested sequence number")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.family_code = ProtoField.new("Family Code", "bme.meff.topofbook5.bmegate.v1.6.familycode", ftypes.STRING, nil, nil, nil, "Family of instruments code")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.fisn = ProtoField.new("Fisn", "bme.meff.topofbook5.bmegate.v1.6.fisn", ftypes.STRING)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.flexible_indicator = ProtoField.new("Flexible Indicator", "bme.meff.topofbook5.bmegate.v1.6.flexibleindicator", ftypes.STRING, nil, nil, nil, "Flexible Expiry Indicator")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.further_sub_product = ProtoField.new("Further Sub Product", "bme.meff.topofbook5.bmegate.v1.6.furthersubproduct", ftypes.STRING, nil, nil, nil, "Further SubProduct")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.gross_trade_amt = ProtoField.new("Gross Trade Amt", "bme.meff.topofbook5.bmegate.v1.6.grosstradeamt", ftypes.DOUBLE, nil, nil, nil, "Premium / Trade amount")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "bme.meff.topofbook5.bmegate.v1.6.heartbtint", ftypes.UINT8, nil, nil, nil, "Interval at which messages are sent to verify the connection (Heartbeat message) expressed in seconds")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.high_limit_price = ProtoField.new("High Limit Price", "bme.meff.topofbook5.bmegate.v1.6.highlimitprice", ftypes.DOUBLE)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.ioi_price = ProtoField.new("Ioi Price", "bme.meff.topofbook5.bmegate.v1.6.ioiprice", ftypes.DOUBLE, nil, nil, nil, "Requested indicative price")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.ioi_qlty_ind = ProtoField.new("Ioi Qlty Ind", "bme.meff.topofbook5.bmegate.v1.6.ioiqltyind", ftypes.STRING, nil, nil, nil, "Request type")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.ioi_qty = ProtoField.new("Ioi Qty", "bme.meff.topofbook5.bmegate.v1.6.ioiqty", ftypes.UINT32, nil, nil, nil, "Requested indicative volume")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.ioi_trans_type = ProtoField.new("Ioi Trans Type", "bme.meff.topofbook5.bmegate.v1.6.ioitranstype", ftypes.STRING, nil, nil, nil, "Message type")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.ioiid = ProtoField.new("Ioiid", "bme.meff.topofbook5.bmegate.v1.6.ioiid", ftypes.UINT32, nil, nil, nil, "RFQ identifier")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.issue_date = ProtoField.new("Issue Date", "bme.meff.topofbook5.bmegate.v1.6.issuedate", ftypes.INT32, nil, nil, nil, "Date security issued")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.issuer_lei = ProtoField.new("Issuer Lei", "bme.meff.topofbook5.bmegate.v1.6.issuerlei", ftypes.STRING)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.last_change_flag = ProtoField.new("Last Change Flag", "bme.meff.topofbook5.bmegate.v1.6.lastchangeflag", ftypes.UINT8, nil, nil, nil, "Indicates if this trade changes the instrument Last price")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.last_px = ProtoField.new("Last Px", "bme.meff.topofbook5.bmegate.v1.6.lastpx", ftypes.DOUBLE, nil, nil, nil, "Trade price")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.last_qty = ProtoField.new("Last Qty", "bme.meff.topofbook5.bmegate.v1.6.lastqty", ftypes.UINT32, nil, nil, nil, "Current trade volume")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.last_trading_day = ProtoField.new("Last Trading Day", "bme.meff.topofbook5.bmegate.v1.6.lasttradingday", ftypes.INT32)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_price_1 = ProtoField.new("Leg Price 1", "bme.meff.topofbook5.bmegate.v1.6.legprice1", ftypes.DOUBLE, nil, nil, nil, "Price in strategy or time spread")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_price_2 = ProtoField.new("Leg Price 2", "bme.meff.topofbook5.bmegate.v1.6.legprice2", ftypes.DOUBLE, nil, nil, nil, "Price in strategy or time spread")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_price_3 = ProtoField.new("Leg Price 3", "bme.meff.topofbook5.bmegate.v1.6.legprice3", ftypes.DOUBLE, nil, nil, nil, "Price in strategy or time spread")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_price_4 = ProtoField.new("Leg Price 4", "bme.meff.topofbook5.bmegate.v1.6.legprice4", ftypes.DOUBLE, nil, nil, nil, "Price in strategy or time spread")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_price_5 = ProtoField.new("Leg Price 5", "bme.meff.topofbook5.bmegate.v1.6.legprice5", ftypes.DOUBLE, nil, nil, nil, "Price in strategy or time spread")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_ratio_qty_1 = ProtoField.new("Leg Ratio Qty 1", "bme.meff.topofbook5.bmegate.v1.6.legratioqty1", ftypes.UINT32, nil, nil, nil, "Ratio in strategy or time spread")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_ratio_qty_2 = ProtoField.new("Leg Ratio Qty 2", "bme.meff.topofbook5.bmegate.v1.6.legratioqty2", ftypes.UINT32, nil, nil, nil, "Ratio in strategy or time spread")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_ratio_qty_3 = ProtoField.new("Leg Ratio Qty 3", "bme.meff.topofbook5.bmegate.v1.6.legratioqty3", ftypes.UINT32, nil, nil, nil, "Ratio in strategy or time spread")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_ratio_qty_4 = ProtoField.new("Leg Ratio Qty 4", "bme.meff.topofbook5.bmegate.v1.6.legratioqty4", ftypes.UINT32, nil, nil, nil, "Ratio in strategy or time spread")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_ratio_qty_5 = ProtoField.new("Leg Ratio Qty 5", "bme.meff.topofbook5.bmegate.v1.6.legratioqty5", ftypes.UINT32, nil, nil, nil, "Ratio in strategy or time spread")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_side_1 = ProtoField.new("Leg Side 1", "bme.meff.topofbook5.bmegate.v1.6.legside1", ftypes.STRING, nil, nil, nil, "Side in strategy or time spread")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_side_2 = ProtoField.new("Leg Side 2", "bme.meff.topofbook5.bmegate.v1.6.legside2", ftypes.STRING, nil, nil, nil, "Side in strategy or time spread")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_side_3 = ProtoField.new("Leg Side 3", "bme.meff.topofbook5.bmegate.v1.6.legside3", ftypes.STRING, nil, nil, nil, "Side in strategy or time spread")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_side_4 = ProtoField.new("Leg Side 4", "bme.meff.topofbook5.bmegate.v1.6.legside4", ftypes.STRING, nil, nil, nil, "Side in strategy or time spread")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_side_5 = ProtoField.new("Leg Side 5", "bme.meff.topofbook5.bmegate.v1.6.legside5", ftypes.STRING, nil, nil, nil, "Side in strategy or time spread")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_symbol_1 = ProtoField.new("Leg Symbol 1", "bme.meff.topofbook5.bmegate.v1.6.legsymbol1", ftypes.STRING, nil, nil, nil, "Symbol in strategy or time spread")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_symbol_2 = ProtoField.new("Leg Symbol 2", "bme.meff.topofbook5.bmegate.v1.6.legsymbol2", ftypes.STRING, nil, nil, nil, "Symbol in strategy or time spread")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_symbol_3 = ProtoField.new("Leg Symbol 3", "bme.meff.topofbook5.bmegate.v1.6.legsymbol3", ftypes.STRING, nil, nil, nil, "Symbol in strategy or time spread")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_symbol_4 = ProtoField.new("Leg Symbol 4", "bme.meff.topofbook5.bmegate.v1.6.legsymbol4", ftypes.STRING, nil, nil, nil, "Symbol in strategy or time spread")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_symbol_5 = ProtoField.new("Leg Symbol 5", "bme.meff.topofbook5.bmegate.v1.6.legsymbol5", ftypes.STRING, nil, nil, nil, "Symbol in strategy or time spread")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.li_spost = ProtoField.new("Li Spost", "bme.meff.topofbook5.bmegate.v1.6.lispost", ftypes.DOUBLE, nil, nil, nil, "LIS posttransparency threshold")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.li_spre = ProtoField.new("Li Spre", "bme.meff.topofbook5.bmegate.v1.6.lispre", ftypes.DOUBLE, nil, nil, nil, "LIS pretransparency threshold")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.liquid_instrument = ProtoField.new("Liquid Instrument", "bme.meff.topofbook5.bmegate.v1.6.liquidinstrument", ftypes.UINT8)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.logout_reason = ProtoField.new("Logout Reason", "bme.meff.topofbook5.bmegate.v1.6.logoutreason", ftypes.UINT8)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.low_limit_price = ProtoField.new("Low Limit Price", "bme.meff.topofbook5.bmegate.v1.6.lowlimitprice", ftypes.DOUBLE)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.market_id = ProtoField.new("Market Id", "bme.meff.topofbook5.bmegate.v1.6.marketid", ftypes.STRING, nil, nil, nil, "Operating MIC Code")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.market_mechanism = ProtoField.new("Market Mechanism", "bme.meff.topofbook5.bmegate.v1.6.marketmechanism", ftypes.STRING)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.market_segment_id = ProtoField.new("Market Segment Id", "bme.meff.topofbook5.bmegate.v1.6.marketsegmentid", ftypes.STRING, nil, nil, nil, "Segment MIC Code")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.maturity_date = ProtoField.new("Maturity Date", "bme.meff.topofbook5.bmegate.v1.6.maturitydate", ftypes.INT32, nil, nil, nil, "Expiration date")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "bme.meff.topofbook5.bmegate.v1.6.maturitymonthyear", ftypes.STRING, nil, nil, nil, "Maturity")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.maturity_month_year_increment = ProtoField.new("Maturity Month Year Increment", "bme.meff.topofbook5.bmegate.v1.6.maturitymonthyearincrement", ftypes.UINT8, nil, nil, nil, "Number of MaturityMonthYear Increment Units")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.maturity_month_year_increment_units = ProtoField.new("Maturity Month Year Increment Units", "bme.meff.topofbook5.bmegate.v1.6.maturitymonthyearincrementunits", ftypes.STRING, nil, nil, nil, "MaturityMonthYear Increment Units")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.maximum_order_size = ProtoField.new("Maximum Order Size", "bme.meff.topofbook5.bmegate.v1.6.maximumordersize", ftypes.DOUBLE, nil, nil, nil, "Nominal limit cap above which orders are not permitted")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.message_size = ProtoField.new("Message Size", "bme.meff.topofbook5.bmegate.v1.6.messagesize", ftypes.UINT16, nil, nil, nil, "Length of message, including this field")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.message_type = ProtoField.new("Message Type", "bme.meff.topofbook5.bmegate.v1.6.messagetype", ftypes.UINT8, nil, nil, nil, "Message type. Section 3.3 assigns the message code of the equivalent Fix protocol message where there is one, so Logon is 0x41, and gives the rest a hexadecimal value below 0x20 or at or above 0x80")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.mid_buy_price = ProtoField.new("Mid Buy Price", "bme.meff.topofbook5.bmegate.v1.6.midbuyprice", ftypes.DOUBLE, nil, nil, nil, "Mid price of buying RFQs")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.mid_buy_volume = ProtoField.new("Mid Buy Volume", "bme.meff.topofbook5.bmegate.v1.6.midbuyvolume", ftypes.UINT32, nil, nil, nil, "Mid volume of buying RFQs")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.mid_sell_price = ProtoField.new("Mid Sell Price", "bme.meff.topofbook5.bmegate.v1.6.midsellprice", ftypes.DOUBLE, nil, nil, nil, "Mid price of selling RFQs")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.mid_sell_volume = ProtoField.new("Mid Sell Volume", "bme.meff.topofbook5.bmegate.v1.6.midsellvolume", ftypes.UINT32, nil, nil, nil, "Mid volume of selling RFQs")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.min_price_increment = ProtoField.new("Min Price Increment", "bme.meff.topofbook5.bmegate.v1.6.minpriceincrement", ftypes.DOUBLE, nil, nil, nil, "Minimum Price Increment")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.min_trade_vol = ProtoField.new("Min Trade Vol", "bme.meff.topofbook5.bmegate.v1.6.mintradevol", ftypes.UINT32, nil, nil, nil, "Minimum Tradeable Volume")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.modality_mask_b_4 = ProtoField.new("Modality Mask B 4", "bme.meff.topofbook5.bmegate.v1.6.modalitymaskb4", ftypes.UINT32, nil, nil, nil, "Modality mask ∑ 2^(ModalityCode - 100) ModalityCode valid values are the TradingSessionID values listed in Table 25 - TradingSessionID in “BMEGate Codification Tables”")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.network_status_value = ProtoField.new("Network Status Value", "bme.meff.topofbook5.bmegate.v1.6.networkstatusvalue", ftypes.UINT8, nil, nil, nil, "Connection status")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.news_text = ProtoField.new("News Text", "bme.meff.topofbook5.bmegate.v1.6.newstext", ftypes.STRING)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.non_availability_reason = ProtoField.new("Non Availability Reason", "bme.meff.topofbook5.bmegate.v1.6.nonavailabilityreason", ftypes.UINT8, nil, nil, nil, "Reason security halted")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.number_of_decimals = ProtoField.new("Number Of Decimals", "bme.meff.topofbook5.bmegate.v1.6.numberofdecimals", ftypes.UINT8)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.opt_attribute = ProtoField.new("Opt Attribute", "bme.meff.topofbook5.bmegate.v1.6.optattribute", ftypes.STRING, nil, nil, nil, "Security version number, provided to support versioning of securities as a result of corporate actions or events")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.order_number_of_decimals = ProtoField.new("Order Number Of Decimals", "bme.meff.topofbook5.bmegate.v1.6.ordernumberofdecimals", ftypes.UINT8, nil, nil, nil, "Number of Decimals in Order Entry")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.post_deferral_publication_type = ProtoField.new("Post Deferral Publication Type", "bme.meff.topofbook5.bmegate.v1.6.postdeferralpublicationtype", ftypes.STRING, nil, nil, nil, "Post-deferral publication type")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.pre_trade_transparency_waiver = ProtoField.new("Pre Trade Transparency Waiver", "bme.meff.topofbook5.bmegate.v1.6.pretradetransparencywaiver", ftypes.STRING, nil, nil, nil, "Pre-trade transparency waiver")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.protocol_version = ProtoField.new("Protocol Version", "bme.meff.topofbook5.bmegate.v1.6.protocolversion", ftypes.STRING, nil, nil, nil, "Identification of the binary protocol version")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.publish_date_and_time = ProtoField.new("Publish Date And Time", "bme.meff.topofbook5.bmegate.v1.6.publishdateandtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Publication Date and Time in nanoseconds since 1-jan-1970 UTC")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.publish_date_and_time_utc = ProtoField.new("Publish Date And Time", "bme.meff.topofbook5.bmegate.v1.6.publishdateandtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Publication Date and Time in nanoseconds since 1-jan-1970 UTC")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.put_or_call = ProtoField.new("Put Or Call", "bme.meff.topofbook5.bmegate.v1.6.putorcall", ftypes.STRING, nil, nil, nil, "Indicates whether the contract is a put or a call")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.quoted_currency = ProtoField.new("Quoted Currency", "bme.meff.topofbook5.bmegate.v1.6.quotedcurrency", ftypes.STRING)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.retail_cl_ask_flag_1 = ProtoField.new("Retail Cl Ask Flag 1", "bme.meff.topofbook5.bmegate.v1.6.retailclaskflag1", ftypes.UINT8, nil, nil, nil, "The price is retail or has part of retail")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.retail_cl_ask_flag_2 = ProtoField.new("Retail Cl Ask Flag 2", "bme.meff.topofbook5.bmegate.v1.6.retailclaskflag2", ftypes.UINT8, nil, nil, nil, "The price is retail or has part of retail")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.retail_cl_ask_flag_3 = ProtoField.new("Retail Cl Ask Flag 3", "bme.meff.topofbook5.bmegate.v1.6.retailclaskflag3", ftypes.UINT8, nil, nil, nil, "The price is retail or has part of retail")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.retail_cl_ask_flag_4 = ProtoField.new("Retail Cl Ask Flag 4", "bme.meff.topofbook5.bmegate.v1.6.retailclaskflag4", ftypes.UINT8, nil, nil, nil, "The price is retail or has part of retail")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.retail_cl_ask_flag_5 = ProtoField.new("Retail Cl Ask Flag 5", "bme.meff.topofbook5.bmegate.v1.6.retailclaskflag5", ftypes.UINT8, nil, nil, nil, "The price is retail or has part of retail")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.retail_cl_bid_flag_1 = ProtoField.new("Retail Cl Bid Flag 1", "bme.meff.topofbook5.bmegate.v1.6.retailclbidflag1", ftypes.UINT8, nil, nil, nil, "The price is retail or has part of retail")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.retail_cl_bid_flag_2 = ProtoField.new("Retail Cl Bid Flag 2", "bme.meff.topofbook5.bmegate.v1.6.retailclbidflag2", ftypes.UINT8, nil, nil, nil, "The price is retail or has part of retail")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.retail_cl_bid_flag_3 = ProtoField.new("Retail Cl Bid Flag 3", "bme.meff.topofbook5.bmegate.v1.6.retailclbidflag3", ftypes.UINT8, nil, nil, nil, "The price is retail or has part of retail")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.retail_cl_bid_flag_4 = ProtoField.new("Retail Cl Bid Flag 4", "bme.meff.topofbook5.bmegate.v1.6.retailclbidflag4", ftypes.UINT8, nil, nil, nil, "The price is retail or has part of retail")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.retail_cl_bid_flag_5 = ProtoField.new("Retail Cl Bid Flag 5", "bme.meff.topofbook5.bmegate.v1.6.retailclbidflag5", ftypes.UINT8, nil, nil, nil, "The price is retail or has part of retail")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.rfqid = ProtoField.new("Rfqid", "bme.meff.topofbook5.bmegate.v1.6.rfqid", ftypes.UINT32, nil, nil, nil, "RFQ identifier")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.round_lot = ProtoField.new("Round Lot", "bme.meff.topofbook5.bmegate.v1.6.roundlot", ftypes.UINT32, nil, nil, nil, "Lot Size")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.sec_description = ProtoField.new("Sec Description", "bme.meff.topofbook5.bmegate.v1.6.secdescription", ftypes.STRING, nil, nil, nil, "Underlying security description")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.security_code = ProtoField.new("Security Code", "bme.meff.topofbook5.bmegate.v1.6.securitycode", ftypes.UINT32, nil, nil, nil, "Instrument (or Book) code")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.security_description = ProtoField.new("Security Description", "bme.meff.topofbook5.bmegate.v1.6.securitydescription", ftypes.STRING)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.security_group = ProtoField.new("Security Group", "bme.meff.topofbook5.bmegate.v1.6.securitygroup", ftypes.STRING, nil, nil, nil, "Underlying code")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.security_sub_type = ProtoField.new("Security Sub Type", "bme.meff.topofbook5.bmegate.v1.6.securitysubtype", ftypes.STRING, nil, nil, nil, "Strategy type")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.security_trading_status = ProtoField.new("Security Trading Status", "bme.meff.topofbook5.bmegate.v1.6.securitytradingstatus", ftypes.UINT8)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.security_type = ProtoField.new("Security Type", "bme.meff.topofbook5.bmegate.v1.6.securitytype", ftypes.STRING)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.self_match_prevention = ProtoField.new("Self Match Prevention", "bme.meff.topofbook5.bmegate.v1.6.selfmatchprevention", ftypes.UINT8, nil, nil, nil, "Indicates whether the security admits self- match prevention")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.sell_rf_qs_number = ProtoField.new("Sell Rf Qs Number", "bme.meff.topofbook5.bmegate.v1.6.sellrfqsnumber", ftypes.UINT16, nil, nil, nil, "Number of selling RFQs")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.sequence_number = ProtoField.new("Sequence Number", "bme.meff.topofbook5.bmegate.v1.6.sequencenumber", ftypes.UINT32, nil, nil, nil, "Message sequence number")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.sequence_number_to = ProtoField.new("Sequence Number To", "bme.meff.topofbook5.bmegate.v1.6.sequencenumberto", ftypes.UINT32, nil, nil, nil, "Actual sequence number corresponding to the Snapshot")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.session_date = ProtoField.new("Session Date", "bme.meff.topofbook5.bmegate.v1.6.sessiondate", ftypes.INT32)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.settl_method = ProtoField.new("Settl Method", "bme.meff.topofbook5.bmegate.v1.6.settlmethod", ftypes.STRING, nil, nil, nil, "Settlement Method")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.side = ProtoField.new("Side", "bme.meff.topofbook5.bmegate.v1.6.side", ftypes.STRING)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.sst_ipost = ProtoField.new("Sst Ipost", "bme.meff.topofbook5.bmegate.v1.6.sstipost", ftypes.DOUBLE, nil, nil, nil, "SSTI posttransparency threshold")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.sst_ipre = ProtoField.new("Sst Ipre", "bme.meff.topofbook5.bmegate.v1.6.sstipre", ftypes.DOUBLE, nil, nil, nil, "SSTI pretransparency threshold")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.start_maturity_month_year = ProtoField.new("Start Maturity Month Year", "bme.meff.topofbook5.bmegate.v1.6.startmaturitymonthyear", ftypes.STRING, nil, nil, nil, "Maturity Interval Initial Date")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.statistics_repeating_group = ProtoField.new("Statistics Repeating Group", "bme.meff.topofbook5.bmegate.v1.6.statisticsrepeatinggroup", ftypes.STRING, nil, nil, nil, "Repeating group of the Statistics message, one entry per data value, DataCount entries")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.stock_when_underlying_is_dividend = ProtoField.new("Stock When Underlying Is Dividend", "bme.meff.topofbook5.bmegate.v1.6.stockwhenunderlyingisdividend", ftypes.STRING, nil, nil, nil, "Stock when Underlying is a Dividend")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.strategy_trd_match_id = ProtoField.new("Strategy Trd Match Id", "bme.meff.topofbook5.bmegate.v1.6.strategytrdmatchid", ftypes.UINT32, nil, nil, nil, "System Trade Number of the time-spread or strategy")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.strike_price = ProtoField.new("Strike Price", "bme.meff.topofbook5.bmegate.v1.6.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Exercise price. Only present for warrants")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.strike_value = ProtoField.new("Strike Value", "bme.meff.topofbook5.bmegate.v1.6.strikevalue", ftypes.DOUBLE, nil, nil, nil, "Trading Unit. Number of shares for each security")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.sub_product = ProtoField.new("Sub Product", "bme.meff.topofbook5.bmegate.v1.6.subproduct", ftypes.STRING, nil, nil, nil, "SubProduct")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.symbol = ProtoField.new("Symbol", "bme.meff.topofbook5.bmegate.v1.6.symbol", ftypes.STRING)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.symbol_isin = ProtoField.new("Symbol Isin", "bme.meff.topofbook5.bmegate.v1.6.symbolisin", ftypes.STRING, nil, nil, nil, "Instrument ISIN")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.test_production_ind = ProtoField.new("Test Production Ind", "bme.meff.topofbook5.bmegate.v1.6.testproductionind", ftypes.STRING, nil, nil, nil, "T: Test P: Production")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.trad_ses_status = ProtoField.new("Trad Ses Status", "bme.meff.topofbook5.bmegate.v1.6.tradsesstatus", ftypes.UINT8, nil, nil, nil, "Trading session status")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.trade_date = ProtoField.new("Trade Date", "bme.meff.topofbook5.bmegate.v1.6.tradedate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Trade date and time")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.trade_date_utc = ProtoField.new("Trade Date", "bme.meff.topofbook5.bmegate.v1.6.tradedate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Trade date and time")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.trade_price_condition = ProtoField.new("Trade Price Condition", "bme.meff.topofbook5.bmegate.v1.6.tradepricecondition", ftypes.STRING, nil, nil, nil, "MMT 3.8")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.trade_session_date = ProtoField.new("Trade Session Date", "bme.meff.topofbook5.bmegate.v1.6.tradesessiondate", ftypes.INT32)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.trade_type = ProtoField.new("Trade Type", "bme.meff.topofbook5.bmegate.v1.6.tradetype", ftypes.STRING)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.trading_obligation = ProtoField.new("Trading Obligation", "bme.meff.topofbook5.bmegate.v1.6.tradingobligation", ftypes.UINT8, nil, nil, nil, "Trading obligation. Indicates whether the security has to be traded in a regulated exchange")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.trading_session_id = ProtoField.new("Trading Session Id", "bme.meff.topofbook5.bmegate.v1.6.tradingsessionid", ftypes.UINT8, nil, nil, nil, "Trading mode")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "bme.meff.topofbook5.bmegate.v1.6.tradingsessionsubid", ftypes.UINT8, nil, nil, nil, "Session phase")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.transaction_category = ProtoField.new("Transaction Category", "bme.meff.topofbook5.bmegate.v1.6.transactioncategory", ftypes.STRING)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.transaction_date_and_time = ProtoField.new("Transaction Date And Time", "bme.meff.topofbook5.bmegate.v1.6.transactiondateandtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Transaction Date and Time in nanoseconds since 1-jan-1970 UTC")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.transaction_date_and_time_utc = ProtoField.new("Transaction Date And Time", "bme.meff.topofbook5.bmegate.v1.6.transactiondateandtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Transaction Date and Time in nanoseconds since 1-jan-1970 UTC")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.trd_match_id = ProtoField.new("Trd Match Id", "bme.meff.topofbook5.bmegate.v1.6.trdmatchid", ftypes.UINT32, nil, nil, nil, "System Trade Number")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.underlying_asset = ProtoField.new("Underlying Asset", "bme.meff.topofbook5.bmegate.v1.6.underlyingasset", ftypes.STRING)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.underlying_currency = ProtoField.new("Underlying Currency", "bme.meff.topofbook5.bmegate.v1.6.underlyingcurrency", ftypes.STRING, nil, nil, nil, "Underlying Strike Currency")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.underlying_isin = ProtoField.new("Underlying Isin", "bme.meff.topofbook5.bmegate.v1.6.underlyingisin", ftypes.STRING, nil, nil, nil, "Underlying ISIN Code")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.underlying_security_issuer_lei = ProtoField.new("Underlying Security Issuer Lei", "bme.meff.topofbook5.bmegate.v1.6.underlyingsecurityissuerlei", ftypes.STRING)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "bme.meff.topofbook5.bmegate.v1.6.underlyingsymbol", ftypes.STRING)
omi_bme_meff_topofbook5_bmegate_v1_6.fields.unit_of_measure = ProtoField.new("Unit Of Measure", "bme.meff.topofbook5.bmegate.v1.6.unitofmeasure", ftypes.STRING, nil, nil, nil, "Unif of Measure")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.x_rolling_buyer_markup = ProtoField.new("X Rolling Buyer Markup", "bme.meff.topofbook5.bmegate.v1.6.xrollingbuyermarkup", ftypes.DOUBLE, nil, nil, nil, "xRolling buyer rate markup")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.x_rolling_closing_type = ProtoField.new("X Rolling Closing Type", "bme.meff.topofbook5.bmegate.v1.6.xrollingclosingtype", ftypes.STRING, nil, nil, nil, "xRolling Closing Type")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.x_rolling_dividend_pay_date_diff = ProtoField.new("X Rolling Dividend Pay Date Diff", "bme.meff.topofbook5.bmegate.v1.6.xrollingdividendpaydatediff", ftypes.UINT16, nil, nil, nil, "xRolling Dividend Payment Date difference")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.x_rolling_dividend_percentage = ProtoField.new("X Rolling Dividend Percentage", "bme.meff.topofbook5.bmegate.v1.6.xrollingdividendpercentage", ftypes.DOUBLE, nil, nil, nil, "xRolling Dividend payment percentage")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.x_rolling_reference_buyer_rate = ProtoField.new("X Rolling Reference Buyer Rate", "bme.meff.topofbook5.bmegate.v1.6.xrollingreferencebuyerrate", ftypes.STRING, nil, nil, nil, "xRolling reference financing buyer rate")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.x_rolling_reference_seller_rate = ProtoField.new("X Rolling Reference Seller Rate", "bme.meff.topofbook5.bmegate.v1.6.xrollingreferencesellerrate", ftypes.STRING, nil, nil, nil, "xRolling reference financing seller rate")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.x_rolling_seller_markup = ProtoField.new("X Rolling Seller Markup", "bme.meff.topofbook5.bmegate.v1.6.xrollingsellermarkup", ftypes.DOUBLE, nil, nil, nil, "xRolling reference financing seller rate")

-- Bme Meff TopOfBook5 BmeGate 1.6 Framing
omi_bme_meff_topofbook5_bmegate_v1_6.fields.message = ProtoField.new("Message", "bme.meff.topofbook5.bmegate.v1.6.message", ftypes.STRING, nil, nil, nil, "Bme BmeGate Message")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.message_header = ProtoField.new("Message Header", "bme.meff.topofbook5.bmegate.v1.6.messageheader", ftypes.STRING, nil, nil, nil, "What every message carries, in either direction: its length and its type. Section 2.1 gives a published message a third field, the sequence number that lets a listener continue an interrupted session without gaps and without repeated messages, and the message tables state it as the message's own first field - which is where it is declared, since a client's Logon, Replay Request and Logout do not carry one")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.packet = ProtoField.new("Packet", "bme.meff.topofbook5.bmegate.v1.6.packet", ftypes.STRING, nil, nil, nil, "A Bme binary feed carries no packet header of its own: section 2.1 states that every feed is a series of sequenced messages, each stating its own length, so a datagram holds whole messages to its end")

-- Bme Meff TopOfBook5 1.6 Application Messages
omi_bme_meff_topofbook5_bmegate_v1_6.fields.family_status_message = ProtoField.new("Family Status Message", "bme.meff.topofbook5.bmegate.v1.6.familystatusmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server in the Derivatives environment to inform about the status a Family of products")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "bme.meff.topofbook5.bmegate.v1.6.heartbeatmessage", ftypes.STRING, nil, nil, nil, "The Heartbeat message is used by the Server to indicate that the communication is active. In the Heartbeat message, the SequenceNumber of the previously received message will be repeated")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.indication_of_interest_message = ProtoField.new("Indication Of Interest Message", "bme.meff.topofbook5.bmegate.v1.6.indicationofinterestmessage", ftypes.STRING, nil, nil, nil, "Used by the Server to notify an indication of interest on a specific instrument. This functionality is available in Fixed Income and Derivatives")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.logon_response_message = ProtoField.new("Logon Response Message", "bme.meff.topofbook5.bmegate.v1.6.logonresponsemessage", ftypes.STRING, nil, nil, nil, "The Logon Response message is used by the Server to accept a new session. In this message the sequence number will always be 0")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.logout_response_message = ProtoField.new("Logout Response Message", "bme.meff.topofbook5.bmegate.v1.6.logoutresponsemessage", ftypes.STRING, nil, nil, nil, "The Logout message is used by the Server to notify the end of a session, whether it is solicited or unsolicited. It may also be the answer to a failed logon attempt (see Logon message)")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.network_status_message = ProtoField.new("Network Status Message", "bme.meff.topofbook5.bmegate.v1.6.networkstatusmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server with information about the connectivity between the Server and the central systems. In the Network Status message, the SequenceNumber of the previously received message will be repeated")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.news_message = ProtoField.new("News Message", "bme.meff.topofbook5.bmegate.v1.6.newsmessage", ftypes.STRING, nil, nil, nil, "Used by the Server to communicate a Market Surveillance or system-wide text message")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.rfq_market_pre_transparency_information_message = ProtoField.new("Rfq Market Pre Transparency Information Message", "bme.meff.topofbook5.bmegate.v1.6.rfqmarketpretransparencyinformationmessage", ftypes.STRING, nil, nil, nil, "Used by the server to communicate price information about RFQs. The contents of the RFQID field match those of the field IOIID in the corresponding Indication of Interest message")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.security_list_cancellation_report_message = ProtoField.new("Security List Cancellation Report Message", "bme.meff.topofbook5.bmegate.v1.6.securitylistcancellationreportmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server for cancelling previously defined securities")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.security_list_message = ProtoField.new("Security List Message", "bme.meff.topofbook5.bmegate.v1.6.securitylistmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server to provide the definition of one security. It shares the same layout as the Security List Update Report message, but with a different Message Type")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.security_list_update_report_message = ProtoField.new("Security List Update Report Message", "bme.meff.topofbook5.bmegate.v1.6.securitylistupdatereportmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server for reporting updates, during the session, to the security definition")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.security_status_message = ProtoField.new("Security Status Message", "bme.meff.topofbook5.bmegate.v1.6.securitystatusmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server to inform on the status of one security")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.statistics_message = ProtoField.new("Statistics Message", "bme.meff.topofbook5.bmegate.v1.6.statisticsmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server to inform about closing prices and other statistics")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.topofbook_5_levels_message = ProtoField.new("Topofbook 5 Levels Message", "bme.meff.topofbook5.bmegate.v1.6.topofbook5levelsmessage", ftypes.STRING, nil, nil, nil, "Used by the UDP 5 level top-of-book Servers to communicate Top-of-book price information during open market. During auctions, only the first level is shown, and therefore this message is not published, and the message Top-of-book (Msg Type = 0x82) is used instead")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.topofbook_message = ProtoField.new("Topofbook Message", "bme.meff.topofbook5.bmegate.v1.6.topofbookmessage", ftypes.STRING, nil, nil, nil, "Used by the UDP Servers to communicate Top-of-book price information during auctions. When there is an indicative match price, the fields BidPx1 and AskPx1 will have the same value")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.trade_market_post_transparency_information_topofbook_message = ProtoField.new("Trade Market Post Transparency Information Topofbook Message", "bme.meff.topofbook5.bmegate.v1.6.trademarketposttransparencyinformationtopofbookmessage", ftypes.STRING, nil, nil, nil, "Used by the server to communicate trade information related to trades resulting from order matching in channels C/D and E/F. It is also used in channels A/B when the trade is the result of order matching at the end of an auction period (where only top-of-book information is shown)")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.trade_trade_amendment_or_cancellation_message = ProtoField.new("Trade Trade Amendment Or Cancellation Message", "bme.meff.topofbook5.bmegate.v1.6.tradetradeamendmentorcancellationmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about a trade produced due to any reason other than order matching, also to inform about trades produced due to order matching in a Dark pool. In this message, all fields with the suffix 2 refer to the sell order, and the ones without the suffix refer either to both legs or the buy order")
omi_bme_meff_topofbook5_bmegate_v1_6.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "bme.meff.topofbook5.bmegate.v1.6.tradingsessionstatusmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about the session status in each Trading Mode")

-- Bme Meff TopOfBook5 BmeGate 1.6 Generated Fields
omi_bme_meff_topofbook5_bmegate_v1_6.fields.statistics_repeating_group_index = ProtoField.new("Statistics Repeating Group Index", "bme.meff.topofbook5.bmegate.v1.6.statisticsrepeatinggroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Bme Meff TopOfBook5 BmeGate 1.6 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
bme_meff_topofbook5_bmegate_v1_6.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Bme Meff TopOfBook5 BmeGate 1.6 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Bme Meff TopOfBook5 BmeGate 1.6 Show Options
omi_bme_meff_topofbook5_bmegate_v1_6.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_bme_meff_topofbook5_bmegate_v1_6.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_bme_meff_topofbook5_bmegate_v1_6.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_bme_meff_topofbook5_bmegate_v1_6.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_bme_meff_topofbook5_bmegate_v1_6.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_bme_meff_topofbook5_bmegate_v1_6.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_bme_meff_topofbook5_bmegate_v1_6.prefs.show_application_messages then
    show.application_messages = omi_bme_meff_topofbook5_bmegate_v1_6.prefs.show_application_messages
  end
  if show.headers ~= omi_bme_meff_topofbook5_bmegate_v1_6.prefs.show_headers then
    show.headers = omi_bme_meff_topofbook5_bmegate_v1_6.prefs.show_headers
  end
  if show.structs ~= omi_bme_meff_topofbook5_bmegate_v1_6.prefs.show_structs then
    show.structs = omi_bme_meff_topofbook5_bmegate_v1_6.prefs.show_structs
  end
  if show.indexes ~= omi_bme_meff_topofbook5_bmegate_v1_6.prefs.show_indexes then
    show.indexes = omi_bme_meff_topofbook5_bmegate_v1_6.prefs.show_indexes
  end
  if bme_meff_topofbook5_bmegate_v1_6.absolute_time_base ~= omi_bme_meff_topofbook5_bmegate_v1_6.prefs.absolute_time_base then
    bme_meff_topofbook5_bmegate_v1_6.absolute_time_base = omi_bme_meff_topofbook5_bmegate_v1_6.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Bme Meff TopOfBook5 BmeGate 1.6 Fields
-----------------------------------------------------------------------

-- Adjustments Rule
bme_meff_topofbook5_bmegate_v1_6.adjustments_rule = {}

-- Size: Adjustments Rule
bme_meff_topofbook5_bmegate_v1_6.adjustments_rule.size = 1

-- Display: Adjustments Rule
bme_meff_topofbook5_bmegate_v1_6.adjustments_rule.labels = {
  ["E"] = "Adjustments Rule: Extraordinary Dividend Adjustments Only (E)",
  ["T"] = "Adjustments Rule: Total (T)",
}

bme_meff_topofbook5_bmegate_v1_6.adjustments_rule.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.adjustments_rule.labels[value] or "Adjustments Rule: Unknown("..value..")"
end

-- Dissect: Adjustments Rule
bme_meff_topofbook5_bmegate_v1_6.adjustments_rule.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.adjustments_rule.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.adjustments_rule.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.adjustments_rule, range, value, display)

  return offset + length, value
end

-- Admission Requested By Issuer
bme_meff_topofbook5_bmegate_v1_6.admission_requested_by_issuer = {}

-- Size: Admission Requested By Issuer
bme_meff_topofbook5_bmegate_v1_6.admission_requested_by_issuer.size = 1

-- Display: Admission Requested By Issuer
bme_meff_topofbook5_bmegate_v1_6.admission_requested_by_issuer.display = function(value)
  if value == 0 then
    return "Admission Requested By Issuer: False (0)"
  end
  if value == 1 then
    return "Admission Requested By Issuer: True (1)"
  end
  if value == 255 then
    return "Admission Requested By Issuer: No Value"
  end

  return "Admission Requested By Issuer: Unknown("..value..")"
end

-- Dissect: Admission Requested By Issuer
bme_meff_topofbook5_bmegate_v1_6.admission_requested_by_issuer.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.admission_requested_by_issuer.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.admission_requested_by_issuer.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.admission_requested_by_issuer, range, value, display)

  return offset + length, value
end

-- Algo Flag
bme_meff_topofbook5_bmegate_v1_6.algo_flag = {}

-- Size: Algo Flag
bme_meff_topofbook5_bmegate_v1_6.algo_flag.size = 1

-- Display: Algo Flag
bme_meff_topofbook5_bmegate_v1_6.algo_flag.display = function(value)
  if value == 0 then
    return "Algo Flag: False (0)"
  end
  if value == 1 then
    return "Algo Flag: True (1)"
  end
  if value == 255 then
    return "Algo Flag: No Value"
  end

  return "Algo Flag: Unknown("..value..")"
end

-- Dissect: Algo Flag
bme_meff_topofbook5_bmegate_v1_6.algo_flag.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.algo_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.algo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.algo_flag, range, value, display)

  return offset + length, value
end

-- Amended Trade Date
bme_meff_topofbook5_bmegate_v1_6.amended_trade_date = {}

-- Size: Amended Trade Date
bme_meff_topofbook5_bmegate_v1_6.amended_trade_date.size = 4

-- Display: Amended Trade Date
bme_meff_topofbook5_bmegate_v1_6.amended_trade_date.display = function(value)
  return string.format("Amended Trade Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Amended Trade Date
bme_meff_topofbook5_bmegate_v1_6.amended_trade_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.amended_trade_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_meff_topofbook5_bmegate_v1_6.amended_trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.amended_trade_date, range, value, display)

  return offset + length, value
end

-- Amended Trade Type
bme_meff_topofbook5_bmegate_v1_6.amended_trade_type = {}

-- Size: Amended Trade Type
bme_meff_topofbook5_bmegate_v1_6.amended_trade_type.size = 1

-- Display: Amended Trade Type
bme_meff_topofbook5_bmegate_v1_6.amended_trade_type.labels = {
  ["H"] = "Amended Trade Type: Cross Trade During Trading Hours (H)",
  ["L"] = "Amended Trade Type: Delta (L)",
  ["M"] = "Amended Trade Type: Market (M)",
  ["R"] = "Amended Trade Type: Strategy Trades Time Spread Futures And Strategies (R)",
  ["S"] = "Amended Trade Type: Components Of Trade R (S)",
  ["W"] = "Amended Trade Type: Trade Amendment (W)",
  ["X"] = "Amended Trade Type: Countertrade (X)",
  ["3"] = "Amended Trade Type: Rfq (3)",
  ["4"] = "Amended Trade Type: Rfq X Rolling (4)",
  ["6"] = "Amended Trade Type: Rfq X Rolling During Auction (6)",
  ["8"] = "Amended Trade Type: Rfq X Rolling Amendment (8)",
  ["9"] = "Amended Trade Type: Rfq X Rolling During Auction Amendment (9)",
}

bme_meff_topofbook5_bmegate_v1_6.amended_trade_type.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.amended_trade_type.labels[value] or "Amended Trade Type: Unknown("..value..")"
end

-- Dissect: Amended Trade Type
bme_meff_topofbook5_bmegate_v1_6.amended_trade_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.amended_trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.amended_trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.amended_trade_type, range, value, display)

  return offset + length, value
end

-- Ask Orders 1
bme_meff_topofbook5_bmegate_v1_6.ask_orders_1 = {}

-- Size: Ask Orders 1
bme_meff_topofbook5_bmegate_v1_6.ask_orders_1.size = 2

-- Display: Ask Orders 1
bme_meff_topofbook5_bmegate_v1_6.ask_orders_1.display = function(value)
  return "Ask Orders 1: "..value
end

-- Dissect: Ask Orders 1
bme_meff_topofbook5_bmegate_v1_6.ask_orders_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.ask_orders_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.ask_orders_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_orders_1, range, value, display)

  return offset + length, value
end

-- Ask Orders 2
bme_meff_topofbook5_bmegate_v1_6.ask_orders_2 = {}

-- Size: Ask Orders 2
bme_meff_topofbook5_bmegate_v1_6.ask_orders_2.size = 2

-- Display: Ask Orders 2
bme_meff_topofbook5_bmegate_v1_6.ask_orders_2.display = function(value)
  return "Ask Orders 2: "..value
end

-- Dissect: Ask Orders 2
bme_meff_topofbook5_bmegate_v1_6.ask_orders_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.ask_orders_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.ask_orders_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_orders_2, range, value, display)

  return offset + length, value
end

-- Ask Orders 3
bme_meff_topofbook5_bmegate_v1_6.ask_orders_3 = {}

-- Size: Ask Orders 3
bme_meff_topofbook5_bmegate_v1_6.ask_orders_3.size = 2

-- Display: Ask Orders 3
bme_meff_topofbook5_bmegate_v1_6.ask_orders_3.display = function(value)
  return "Ask Orders 3: "..value
end

-- Dissect: Ask Orders 3
bme_meff_topofbook5_bmegate_v1_6.ask_orders_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.ask_orders_3.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.ask_orders_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_orders_3, range, value, display)

  return offset + length, value
end

-- Ask Orders 4
bme_meff_topofbook5_bmegate_v1_6.ask_orders_4 = {}

-- Size: Ask Orders 4
bme_meff_topofbook5_bmegate_v1_6.ask_orders_4.size = 2

-- Display: Ask Orders 4
bme_meff_topofbook5_bmegate_v1_6.ask_orders_4.display = function(value)
  return "Ask Orders 4: "..value
end

-- Dissect: Ask Orders 4
bme_meff_topofbook5_bmegate_v1_6.ask_orders_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.ask_orders_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.ask_orders_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_orders_4, range, value, display)

  return offset + length, value
end

-- Ask Orders 5
bme_meff_topofbook5_bmegate_v1_6.ask_orders_5 = {}

-- Size: Ask Orders 5
bme_meff_topofbook5_bmegate_v1_6.ask_orders_5.size = 2

-- Display: Ask Orders 5
bme_meff_topofbook5_bmegate_v1_6.ask_orders_5.display = function(value)
  return "Ask Orders 5: "..value
end

-- Dissect: Ask Orders 5
bme_meff_topofbook5_bmegate_v1_6.ask_orders_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.ask_orders_5.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.ask_orders_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_orders_5, range, value, display)

  return offset + length, value
end

-- Ask Px 1
bme_meff_topofbook5_bmegate_v1_6.ask_px_1 = {}

-- Size: Ask Px 1
bme_meff_topofbook5_bmegate_v1_6.ask_px_1.size = 8

-- Display: Ask Px 1
bme_meff_topofbook5_bmegate_v1_6.ask_px_1.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Ask Px 1: No Value"
  end

  return "Ask Px 1: "..value
end

-- Translate: Ask Px 1
bme_meff_topofbook5_bmegate_v1_6.ask_px_1.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Ask Px 1
bme_meff_topofbook5_bmegate_v1_6.ask_px_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.ask_px_1.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.ask_px_1.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.ask_px_1.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_px_1, range, value, display)

  return offset + length, value
end

-- Ask Px 2
bme_meff_topofbook5_bmegate_v1_6.ask_px_2 = {}

-- Size: Ask Px 2
bme_meff_topofbook5_bmegate_v1_6.ask_px_2.size = 8

-- Display: Ask Px 2
bme_meff_topofbook5_bmegate_v1_6.ask_px_2.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Ask Px 2: No Value"
  end

  return "Ask Px 2: "..value
end

-- Translate: Ask Px 2
bme_meff_topofbook5_bmegate_v1_6.ask_px_2.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Ask Px 2
bme_meff_topofbook5_bmegate_v1_6.ask_px_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.ask_px_2.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.ask_px_2.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.ask_px_2.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_px_2, range, value, display)

  return offset + length, value
end

-- Ask Px 3
bme_meff_topofbook5_bmegate_v1_6.ask_px_3 = {}

-- Size: Ask Px 3
bme_meff_topofbook5_bmegate_v1_6.ask_px_3.size = 8

-- Display: Ask Px 3
bme_meff_topofbook5_bmegate_v1_6.ask_px_3.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Ask Px 3: No Value"
  end

  return "Ask Px 3: "..value
end

-- Translate: Ask Px 3
bme_meff_topofbook5_bmegate_v1_6.ask_px_3.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Ask Px 3
bme_meff_topofbook5_bmegate_v1_6.ask_px_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.ask_px_3.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.ask_px_3.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.ask_px_3.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_px_3, range, value, display)

  return offset + length, value
end

-- Ask Px 4
bme_meff_topofbook5_bmegate_v1_6.ask_px_4 = {}

-- Size: Ask Px 4
bme_meff_topofbook5_bmegate_v1_6.ask_px_4.size = 8

-- Display: Ask Px 4
bme_meff_topofbook5_bmegate_v1_6.ask_px_4.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Ask Px 4: No Value"
  end

  return "Ask Px 4: "..value
end

-- Translate: Ask Px 4
bme_meff_topofbook5_bmegate_v1_6.ask_px_4.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Ask Px 4
bme_meff_topofbook5_bmegate_v1_6.ask_px_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.ask_px_4.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.ask_px_4.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.ask_px_4.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_px_4, range, value, display)

  return offset + length, value
end

-- Ask Px 5
bme_meff_topofbook5_bmegate_v1_6.ask_px_5 = {}

-- Size: Ask Px 5
bme_meff_topofbook5_bmegate_v1_6.ask_px_5.size = 8

-- Display: Ask Px 5
bme_meff_topofbook5_bmegate_v1_6.ask_px_5.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Ask Px 5: No Value"
  end

  return "Ask Px 5: "..value
end

-- Translate: Ask Px 5
bme_meff_topofbook5_bmegate_v1_6.ask_px_5.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Ask Px 5
bme_meff_topofbook5_bmegate_v1_6.ask_px_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.ask_px_5.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.ask_px_5.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.ask_px_5.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_px_5, range, value, display)

  return offset + length, value
end

-- Ask Size 1
bme_meff_topofbook5_bmegate_v1_6.ask_size_1 = {}

-- Size: Ask Size 1
bme_meff_topofbook5_bmegate_v1_6.ask_size_1.size = 4

-- Display: Ask Size 1
bme_meff_topofbook5_bmegate_v1_6.ask_size_1.display = function(value)
  return "Ask Size 1: "..value
end

-- Dissect: Ask Size 1
bme_meff_topofbook5_bmegate_v1_6.ask_size_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.ask_size_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.ask_size_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_size_1, range, value, display)

  return offset + length, value
end

-- Ask Size 2
bme_meff_topofbook5_bmegate_v1_6.ask_size_2 = {}

-- Size: Ask Size 2
bme_meff_topofbook5_bmegate_v1_6.ask_size_2.size = 4

-- Display: Ask Size 2
bme_meff_topofbook5_bmegate_v1_6.ask_size_2.display = function(value)
  return "Ask Size 2: "..value
end

-- Dissect: Ask Size 2
bme_meff_topofbook5_bmegate_v1_6.ask_size_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.ask_size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.ask_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_size_2, range, value, display)

  return offset + length, value
end

-- Ask Size 3
bme_meff_topofbook5_bmegate_v1_6.ask_size_3 = {}

-- Size: Ask Size 3
bme_meff_topofbook5_bmegate_v1_6.ask_size_3.size = 4

-- Display: Ask Size 3
bme_meff_topofbook5_bmegate_v1_6.ask_size_3.display = function(value)
  return "Ask Size 3: "..value
end

-- Dissect: Ask Size 3
bme_meff_topofbook5_bmegate_v1_6.ask_size_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.ask_size_3.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.ask_size_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_size_3, range, value, display)

  return offset + length, value
end

-- Ask Size 4
bme_meff_topofbook5_bmegate_v1_6.ask_size_4 = {}

-- Size: Ask Size 4
bme_meff_topofbook5_bmegate_v1_6.ask_size_4.size = 4

-- Display: Ask Size 4
bme_meff_topofbook5_bmegate_v1_6.ask_size_4.display = function(value)
  return "Ask Size 4: "..value
end

-- Dissect: Ask Size 4
bme_meff_topofbook5_bmegate_v1_6.ask_size_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.ask_size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.ask_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_size_4, range, value, display)

  return offset + length, value
end

-- Ask Size 5
bme_meff_topofbook5_bmegate_v1_6.ask_size_5 = {}

-- Size: Ask Size 5
bme_meff_topofbook5_bmegate_v1_6.ask_size_5.size = 4

-- Display: Ask Size 5
bme_meff_topofbook5_bmegate_v1_6.ask_size_5.display = function(value)
  return "Ask Size 5: "..value
end

-- Dissect: Ask Size 5
bme_meff_topofbook5_bmegate_v1_6.ask_size_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.ask_size_5.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.ask_size_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.ask_size_5, range, value, display)

  return offset + length, value
end

-- Base Currency
bme_meff_topofbook5_bmegate_v1_6.base_currency = {}

-- Size: Base Currency
bme_meff_topofbook5_bmegate_v1_6.base_currency.size = 3

-- Display: Base Currency
bme_meff_topofbook5_bmegate_v1_6.base_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Base Currency: No Value"
  end

  return "Base Currency: "..value
end

-- Dissect: Base Currency
bme_meff_topofbook5_bmegate_v1_6.base_currency.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.base_currency.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.base_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.base_currency, range, value, display)

  return offset + length, value
end

-- Base Product
bme_meff_topofbook5_bmegate_v1_6.base_product = {}

-- Size: Base Product
bme_meff_topofbook5_bmegate_v1_6.base_product.size = 4

-- Display: Base Product
bme_meff_topofbook5_bmegate_v1_6.base_product.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Base Product: No Value"
  end

  return "Base Product: "..value
end

-- Dissect: Base Product
bme_meff_topofbook5_bmegate_v1_6.base_product.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.base_product.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.base_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.base_product, range, value, display)

  return offset + length, value
end

-- Bencrfpt Flag
bme_meff_topofbook5_bmegate_v1_6.bencrfpt_flag = {}

-- Size: Bencrfpt Flag
bme_meff_topofbook5_bmegate_v1_6.bencrfpt_flag.size = 1

-- Display: Bencrfpt Flag
bme_meff_topofbook5_bmegate_v1_6.bencrfpt_flag.display = function(value)
  if value == " " then
    return "Bencrfpt Flag: Normal Trade (<whitespace>)"
  end
  if value == "6" then
    return "Bencrfpt Flag: Benchmark Trade Benc (6)"
  end

  return "Bencrfpt Flag: Unknown("..value..")"
end

-- Dissect: Bencrfpt Flag
bme_meff_topofbook5_bmegate_v1_6.bencrfpt_flag.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.bencrfpt_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.bencrfpt_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.bencrfpt_flag, range, value, display)

  return offset + length, value
end

-- Bid Orders 1
bme_meff_topofbook5_bmegate_v1_6.bid_orders_1 = {}

-- Size: Bid Orders 1
bme_meff_topofbook5_bmegate_v1_6.bid_orders_1.size = 2

-- Display: Bid Orders 1
bme_meff_topofbook5_bmegate_v1_6.bid_orders_1.display = function(value)
  return "Bid Orders 1: "..value
end

-- Dissect: Bid Orders 1
bme_meff_topofbook5_bmegate_v1_6.bid_orders_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.bid_orders_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.bid_orders_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_orders_1, range, value, display)

  return offset + length, value
end

-- Bid Orders 2
bme_meff_topofbook5_bmegate_v1_6.bid_orders_2 = {}

-- Size: Bid Orders 2
bme_meff_topofbook5_bmegate_v1_6.bid_orders_2.size = 2

-- Display: Bid Orders 2
bme_meff_topofbook5_bmegate_v1_6.bid_orders_2.display = function(value)
  return "Bid Orders 2: "..value
end

-- Dissect: Bid Orders 2
bme_meff_topofbook5_bmegate_v1_6.bid_orders_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.bid_orders_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.bid_orders_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_orders_2, range, value, display)

  return offset + length, value
end

-- Bid Orders 3
bme_meff_topofbook5_bmegate_v1_6.bid_orders_3 = {}

-- Size: Bid Orders 3
bme_meff_topofbook5_bmegate_v1_6.bid_orders_3.size = 2

-- Display: Bid Orders 3
bme_meff_topofbook5_bmegate_v1_6.bid_orders_3.display = function(value)
  return "Bid Orders 3: "..value
end

-- Dissect: Bid Orders 3
bme_meff_topofbook5_bmegate_v1_6.bid_orders_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.bid_orders_3.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.bid_orders_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_orders_3, range, value, display)

  return offset + length, value
end

-- Bid Orders 4
bme_meff_topofbook5_bmegate_v1_6.bid_orders_4 = {}

-- Size: Bid Orders 4
bme_meff_topofbook5_bmegate_v1_6.bid_orders_4.size = 2

-- Display: Bid Orders 4
bme_meff_topofbook5_bmegate_v1_6.bid_orders_4.display = function(value)
  return "Bid Orders 4: "..value
end

-- Dissect: Bid Orders 4
bme_meff_topofbook5_bmegate_v1_6.bid_orders_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.bid_orders_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.bid_orders_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_orders_4, range, value, display)

  return offset + length, value
end

-- Bid Orders 5
bme_meff_topofbook5_bmegate_v1_6.bid_orders_5 = {}

-- Size: Bid Orders 5
bme_meff_topofbook5_bmegate_v1_6.bid_orders_5.size = 2

-- Display: Bid Orders 5
bme_meff_topofbook5_bmegate_v1_6.bid_orders_5.display = function(value)
  return "Bid Orders 5: "..value
end

-- Dissect: Bid Orders 5
bme_meff_topofbook5_bmegate_v1_6.bid_orders_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.bid_orders_5.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.bid_orders_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_orders_5, range, value, display)

  return offset + length, value
end

-- Bid Px 1
bme_meff_topofbook5_bmegate_v1_6.bid_px_1 = {}

-- Size: Bid Px 1
bme_meff_topofbook5_bmegate_v1_6.bid_px_1.size = 8

-- Display: Bid Px 1
bme_meff_topofbook5_bmegate_v1_6.bid_px_1.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Bid Px 1: No Value"
  end

  return "Bid Px 1: "..value
end

-- Translate: Bid Px 1
bme_meff_topofbook5_bmegate_v1_6.bid_px_1.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Bid Px 1
bme_meff_topofbook5_bmegate_v1_6.bid_px_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.bid_px_1.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.bid_px_1.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.bid_px_1.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_px_1, range, value, display)

  return offset + length, value
end

-- Bid Px 2
bme_meff_topofbook5_bmegate_v1_6.bid_px_2 = {}

-- Size: Bid Px 2
bme_meff_topofbook5_bmegate_v1_6.bid_px_2.size = 8

-- Display: Bid Px 2
bme_meff_topofbook5_bmegate_v1_6.bid_px_2.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Bid Px 2: No Value"
  end

  return "Bid Px 2: "..value
end

-- Translate: Bid Px 2
bme_meff_topofbook5_bmegate_v1_6.bid_px_2.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Bid Px 2
bme_meff_topofbook5_bmegate_v1_6.bid_px_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.bid_px_2.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.bid_px_2.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.bid_px_2.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_px_2, range, value, display)

  return offset + length, value
end

-- Bid Px 3
bme_meff_topofbook5_bmegate_v1_6.bid_px_3 = {}

-- Size: Bid Px 3
bme_meff_topofbook5_bmegate_v1_6.bid_px_3.size = 8

-- Display: Bid Px 3
bme_meff_topofbook5_bmegate_v1_6.bid_px_3.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Bid Px 3: No Value"
  end

  return "Bid Px 3: "..value
end

-- Translate: Bid Px 3
bme_meff_topofbook5_bmegate_v1_6.bid_px_3.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Bid Px 3
bme_meff_topofbook5_bmegate_v1_6.bid_px_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.bid_px_3.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.bid_px_3.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.bid_px_3.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_px_3, range, value, display)

  return offset + length, value
end

-- Bid Px 4
bme_meff_topofbook5_bmegate_v1_6.bid_px_4 = {}

-- Size: Bid Px 4
bme_meff_topofbook5_bmegate_v1_6.bid_px_4.size = 8

-- Display: Bid Px 4
bme_meff_topofbook5_bmegate_v1_6.bid_px_4.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Bid Px 4: No Value"
  end

  return "Bid Px 4: "..value
end

-- Translate: Bid Px 4
bme_meff_topofbook5_bmegate_v1_6.bid_px_4.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Bid Px 4
bme_meff_topofbook5_bmegate_v1_6.bid_px_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.bid_px_4.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.bid_px_4.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.bid_px_4.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_px_4, range, value, display)

  return offset + length, value
end

-- Bid Px 5
bme_meff_topofbook5_bmegate_v1_6.bid_px_5 = {}

-- Size: Bid Px 5
bme_meff_topofbook5_bmegate_v1_6.bid_px_5.size = 8

-- Display: Bid Px 5
bme_meff_topofbook5_bmegate_v1_6.bid_px_5.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Bid Px 5: No Value"
  end

  return "Bid Px 5: "..value
end

-- Translate: Bid Px 5
bme_meff_topofbook5_bmegate_v1_6.bid_px_5.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Bid Px 5
bme_meff_topofbook5_bmegate_v1_6.bid_px_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.bid_px_5.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.bid_px_5.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.bid_px_5.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_px_5, range, value, display)

  return offset + length, value
end

-- Bid Size 1
bme_meff_topofbook5_bmegate_v1_6.bid_size_1 = {}

-- Size: Bid Size 1
bme_meff_topofbook5_bmegate_v1_6.bid_size_1.size = 4

-- Display: Bid Size 1
bme_meff_topofbook5_bmegate_v1_6.bid_size_1.display = function(value)
  return "Bid Size 1: "..value
end

-- Dissect: Bid Size 1
bme_meff_topofbook5_bmegate_v1_6.bid_size_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.bid_size_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.bid_size_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_size_1, range, value, display)

  return offset + length, value
end

-- Bid Size 2
bme_meff_topofbook5_bmegate_v1_6.bid_size_2 = {}

-- Size: Bid Size 2
bme_meff_topofbook5_bmegate_v1_6.bid_size_2.size = 4

-- Display: Bid Size 2
bme_meff_topofbook5_bmegate_v1_6.bid_size_2.display = function(value)
  return "Bid Size 2: "..value
end

-- Dissect: Bid Size 2
bme_meff_topofbook5_bmegate_v1_6.bid_size_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.bid_size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.bid_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_size_2, range, value, display)

  return offset + length, value
end

-- Bid Size 3
bme_meff_topofbook5_bmegate_v1_6.bid_size_3 = {}

-- Size: Bid Size 3
bme_meff_topofbook5_bmegate_v1_6.bid_size_3.size = 4

-- Display: Bid Size 3
bme_meff_topofbook5_bmegate_v1_6.bid_size_3.display = function(value)
  return "Bid Size 3: "..value
end

-- Dissect: Bid Size 3
bme_meff_topofbook5_bmegate_v1_6.bid_size_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.bid_size_3.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.bid_size_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_size_3, range, value, display)

  return offset + length, value
end

-- Bid Size 4
bme_meff_topofbook5_bmegate_v1_6.bid_size_4 = {}

-- Size: Bid Size 4
bme_meff_topofbook5_bmegate_v1_6.bid_size_4.size = 4

-- Display: Bid Size 4
bme_meff_topofbook5_bmegate_v1_6.bid_size_4.display = function(value)
  return "Bid Size 4: "..value
end

-- Dissect: Bid Size 4
bme_meff_topofbook5_bmegate_v1_6.bid_size_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.bid_size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.bid_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_size_4, range, value, display)

  return offset + length, value
end

-- Bid Size 5
bme_meff_topofbook5_bmegate_v1_6.bid_size_5 = {}

-- Size: Bid Size 5
bme_meff_topofbook5_bmegate_v1_6.bid_size_5.size = 4

-- Display: Bid Size 5
bme_meff_topofbook5_bmegate_v1_6.bid_size_5.display = function(value)
  return "Bid Size 5: "..value
end

-- Dissect: Bid Size 5
bme_meff_topofbook5_bmegate_v1_6.bid_size_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.bid_size_5.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.bid_size_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.bid_size_5, range, value, display)

  return offset + length, value
end

-- Buy Rf Qs Number
bme_meff_topofbook5_bmegate_v1_6.buy_rf_qs_number = {}

-- Size: Buy Rf Qs Number
bme_meff_topofbook5_bmegate_v1_6.buy_rf_qs_number.size = 2

-- Display: Buy Rf Qs Number
bme_meff_topofbook5_bmegate_v1_6.buy_rf_qs_number.display = function(value)
  return "Buy Rf Qs Number: "..value
end

-- Dissect: Buy Rf Qs Number
bme_meff_topofbook5_bmegate_v1_6.buy_rf_qs_number.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.buy_rf_qs_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.buy_rf_qs_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.buy_rf_qs_number, range, value, display)

  return offset + length, value
end

-- Cfi Code
bme_meff_topofbook5_bmegate_v1_6.cfi_code = {}

-- Size: Cfi Code
bme_meff_topofbook5_bmegate_v1_6.cfi_code.size = 6

-- Display: Cfi Code
bme_meff_topofbook5_bmegate_v1_6.cfi_code.labels = {
  ["FFICSX"] = "Cfi Code: Standard Financial Future On An Index Cash Settlement (FFICSX)",
  ["FFICNX"] = "Cfi Code: Nonstandardized Financial Future On An Index Cash Settlement (FFICNX)",
  ["KEXXXX"] = "Cfi Code: Strategies (KEXXXX)",
  ["OCEFCS"] = "Cfi Code: Standardized European Call Option On An Index Cash Settlement (OCEFCS)",
  ["OCEFCN"] = "Cfi Code: Nonstandardized European Call Option On An Index Cash Settlement (OCEFCN)",
  ["OPEFCS"] = "Cfi Code: Standardized European Put Option On An Index Cash Settlement (OPEFCS)",
  ["OPEFCN"] = "Cfi Code: Nonstandardized European Put Option On An Index Cash Settlement (OPEFCN)",
  ["TIECPX"] = "Cfi Code: Referential Instrument (TIECPX)",
  ["FFSPSX"] = "Cfi Code: Standardized Financial Future On Stocks Physical Delivery (FFSPSX)",
  ["FFSPNX"] = "Cfi Code: Nonstandardized Financial Future On Stocks Physical Delivery (FFSPNX)",
  ["FFSCSX"] = "Cfi Code: Standardized Financial Future On Stocks Cash Settlement (FFSCSX)",
  ["FFSCNX"] = "Cfi Code: Nonstandardized Financial Future On Stocks Cash Settlement (FFSCNX)",
  ["FFVCSX"] = "Cfi Code: Standardized Financial Future On Dividends Cash Settlement (FFVCSX)",
  ["FFVCNX"] = "Cfi Code: Nonstandardized Financial Future On Dividends Cash Settlement (FFVCNX)",
  ["OCASPS"] = "Cfi Code: Standardized American Call Option On Stocks Physical Delivery (OCASPS)",
  ["OCASPN"] = "Cfi Code: Nonstandardized American Call Option On Stocks Physical Delivery (OCASPN)",
  ["OPASPS"] = "Cfi Code: Standardized American Put Option On Stocks Physical Delivery (OPASPS)",
  ["OPASPN"] = "Cfi Code: Nonstandardized American Put Option On Stocks Physical Delivery (OPASPN)",
  ["OCESPS"] = "Cfi Code: Standardized European Call Option On Stocks Physical Delivery (OCESPS)",
  ["OCESPN"] = "Cfi Code: Nonstandardized European Call Option On Stocks Physical Delivery (OCESPN)",
  ["OPESPS"] = "Cfi Code: Standardized European Put Option On Stocks Physical Delivery (OPESPS)",
  ["OPESPN"] = "Cfi Code: Nonstandardized European Put Option On Stocks Physical Delivery (OPESPN)",
  ["OCESCS"] = "Cfi Code: Standardized European Call Option On Stocks Cash Settlement (OCESCS)",
  ["OCESCN"] = "Cfi Code: Nonstandardized European Call Option On Stocks Cash Settlement (OCESCN)",
  ["OPESCS"] = "Cfi Code: Standardized European Put Option On Stocks Cash Settlement (OPESCS)",
  ["OPESCN"] = "Cfi Code: Nonstandardized European Put Option On Stocks Cash Settlement (OPESCN)",
  ["ESXXXX"] = "Cfi Code: Stocks Cash (ESXXXX)",
  ["TDSXXX"] = "Cfi Code: Referential Instrument Dividend (TDSXXX)",
  ["FFDPSX"] = "Cfi Code: Standardized Financial Future On Fixed Income Physical Delivery (FFDPSX)",
  ["FFDCSX"] = "Cfi Code: Standardized Financial Future On Fixed Income Cash Settlement (FFDCSX)",
  ["KMXXXX"] = "Cfi Code: Timespread Of Futures On Fixed Income Physical Delivery (KMXXXX)",
  ["OCEDPS"] = "Cfi Code: Standardized European Call Option On Fixed Income Physical Delivery (OCEDPS)",
  ["OPEDPS"] = "Cfi Code: Standardized European Put Option On Fixed Income Physical Delivery (OPEDPS)",
  ["OCEDPN"] = "Cfi Code: Nonstandardized European Call Option On Fixed Income Physical Delivery (OCEDPN)",
  ["OPEDPN"] = "Cfi Code: Nonstandardized European Put Option On Fixed Income Physical Delivery (OPEDPN)",
  ["OCEDCS"] = "Cfi Code: Standardized European Call Option On Fixed Income Cash Settlement (OCEDCS)",
  ["OPEDCS"] = "Cfi Code: Standardized European Put Option On Fixed Income Cash Settlement (OPEDCS)",
  ["OCEDCN"] = "Cfi Code: Nonstandardized European Call Option On Fixed Income Cash Settlement (OCEDCN)",
  ["OPEDCN"] = "Cfi Code: Nonstandardized European Put Option On Fixed Income Cash Settlement (OPEDCN)",
  ["FFCCSX"] = "Cfi Code: Standardized Financial Future Currency Cash Settlement (FFCCSX)",
  ["IFXXXP"] = "Cfi Code: Currency Spot (IFXXXP)",
  ["FCHCSX"] = "Cfi Code: Standardized Yearly Future On Energy Cash Settlement (FCHCSX)",
}

bme_meff_topofbook5_bmegate_v1_6.cfi_code.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.cfi_code.labels[value] or "Cfi Code: Unknown("..value..")"
end

-- Dissect: Cfi Code
bme_meff_topofbook5_bmegate_v1_6.cfi_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.cfi_code.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.cfi_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Commodity Derivative Indicator
bme_meff_topofbook5_bmegate_v1_6.commodity_derivative_indicator = {}

-- Size: Commodity Derivative Indicator
bme_meff_topofbook5_bmegate_v1_6.commodity_derivative_indicator.size = 1

-- Display: Commodity Derivative Indicator
bme_meff_topofbook5_bmegate_v1_6.commodity_derivative_indicator.labels = {
  ["S"] = "Commodity Derivative Indicator: Commodity Derivative (S)",
  ["N"] = "Commodity Derivative Indicator: Non Derivative (N)",
  ["D"] = "Commodity Derivative Indicator: Derivative (D)",
}

bme_meff_topofbook5_bmegate_v1_6.commodity_derivative_indicator.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.commodity_derivative_indicator.labels[value] or "Commodity Derivative Indicator: Unknown("..value..")"
end

-- Dissect: Commodity Derivative Indicator
bme_meff_topofbook5_bmegate_v1_6.commodity_derivative_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.commodity_derivative_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.commodity_derivative_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.commodity_derivative_indicator, range, value, display)

  return offset + length, value
end

-- Contract Multiplier
bme_meff_topofbook5_bmegate_v1_6.contract_multiplier = {}

-- Size: Contract Multiplier
bme_meff_topofbook5_bmegate_v1_6.contract_multiplier.size = 8

-- Display: Contract Multiplier
bme_meff_topofbook5_bmegate_v1_6.contract_multiplier.display = function(value)
  return "Contract Multiplier: "..value
end

-- Translate: Contract Multiplier
bme_meff_topofbook5_bmegate_v1_6.contract_multiplier.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Contract Multiplier
bme_meff_topofbook5_bmegate_v1_6.contract_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.contract_multiplier.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.contract_multiplier.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.contract_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Currency
bme_meff_topofbook5_bmegate_v1_6.currency = {}

-- Size: Currency
bme_meff_topofbook5_bmegate_v1_6.currency.size = 3

-- Display: Currency
bme_meff_topofbook5_bmegate_v1_6.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
bme_meff_topofbook5_bmegate_v1_6.currency.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.currency.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.currency, range, value, display)

  return offset + length, value
end

-- Data Code
bme_meff_topofbook5_bmegate_v1_6.data_code = {}

-- Size: Data Code
bme_meff_topofbook5_bmegate_v1_6.data_code.size = 1

-- Display: Data Code
bme_meff_topofbook5_bmegate_v1_6.data_code.labels = {
  ["D"] = "Data Code: Average Price (D)",
  ["d"] = "Data Code: Previous Forward Price (d)",
  ["E"] = "Data Code: Published Cash Amount (E)",
  ["e"] = "Data Code: Order Modality Cash Amount (e)",
  ["f"] = "Data Code: End Of Session Indicator (f)",
  ["G"] = "Data Code: First (G)",
  ["H"] = "Data Code: High (H)",
  ["h"] = "Data Code: Maximum Bid (h)",
  ["J"] = "Data Code: Not Published Volume (J)",
  ["M"] = "Data Code: Last (M)",
  ["N"] = "Data Code: Number Of Trades (N)",
  ["Q"] = "Data Code: Previous Closing Price (Q)",
  ["R"] = "Data Code: Opening Volatility (R)",
  ["V"] = "Data Code: Published Volume (V)",
  ["v"] = "Data Code: Published Volume Order Modality (v)",
  ["W"] = "Data Code: Volume Of Last Trade (W)",
  ["Z"] = "Data Code: Low (Z)",
  ["z"] = "Data Code: Minimum Ask (z)",
  ["j"] = "Data Code: Closing Price (j)",
  ["k"] = "Data Code: Closing Yield (k)",
  ["l"] = "Data Code: Volatility (l)",
  ["m"] = "Data Code: Delta (m)",
  ["n"] = "Data Code: Forward Price (n)",
}

bme_meff_topofbook5_bmegate_v1_6.data_code.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.data_code.labels[value] or "Data Code: Unknown("..value..")"
end

-- Dissect: Data Code
bme_meff_topofbook5_bmegate_v1_6.data_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.data_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.data_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.data_code, range, value, display)

  return offset + length, value
end

-- Data Count
bme_meff_topofbook5_bmegate_v1_6.data_count = {}

-- Size: Data Count
bme_meff_topofbook5_bmegate_v1_6.data_count.size = 1

-- Display: Data Count
bme_meff_topofbook5_bmegate_v1_6.data_count.display = function(value)
  return "Data Count: "..value
end

-- Dissect: Data Count
bme_meff_topofbook5_bmegate_v1_6.data_count.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.data_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.data_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.data_count, range, value, display)

  return offset + length, value
end

-- Data Value
bme_meff_topofbook5_bmegate_v1_6.data_value = {}

-- Size: Data Value
bme_meff_topofbook5_bmegate_v1_6.data_value.size = 8

-- Display: Data Value
bme_meff_topofbook5_bmegate_v1_6.data_value.display = function(value)
  return "Data Value: "..value
end

-- Dissect: Data Value
bme_meff_topofbook5_bmegate_v1_6.data_value.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.data_value.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bme_meff_topofbook5_bmegate_v1_6.data_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.data_value, range, value, display)

  return offset + length, value
end

-- Deferral Waiver
bme_meff_topofbook5_bmegate_v1_6.deferral_waiver = {}

-- Size: Deferral Waiver
bme_meff_topofbook5_bmegate_v1_6.deferral_waiver.size = 1

-- Display: Deferral Waiver
bme_meff_topofbook5_bmegate_v1_6.deferral_waiver.display = function(value)
  if value == " " then
    return "Deferral Waiver: Immediate Publication (<whitespace>)"
  end
  if value == "6" then
    return "Deferral Waiver: Non Immediate Publication Deferral For Large In Scale Lrgs (6)"
  end
  if value == "7" then
    return "Deferral Waiver: Non Immediate Publication Deferral For Illiquid Instrument Ilqd (7)"
  end
  if value == "8" then
    return "Deferral Waiver: Non Immediate Publication Deferral For Size Specific Size Rts 2 (8)"
  end

  return "Deferral Waiver: Unknown("..value..")"
end

-- Dissect: Deferral Waiver
bme_meff_topofbook5_bmegate_v1_6.deferral_waiver.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.deferral_waiver.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.deferral_waiver.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.deferral_waiver, range, value, display)

  return offset + length, value
end

-- Designation
bme_meff_topofbook5_bmegate_v1_6.designation = {}

-- Size: Designation
bme_meff_topofbook5_bmegate_v1_6.designation.size = 1

-- Display: Designation
bme_meff_topofbook5_bmegate_v1_6.designation.labels = {
  ["1"] = "Designation: Trade During Open Market (1)",
  ["2"] = "Designation: Trade During Opening Auction (2)",
  ["3"] = "Designation: Trade During Closing Auction (3)",
  ["4"] = "Designation: Trade During Volatility Auction (4)",
  ["5"] = "Designation: Trade During Manual Auction (5)",
  ["6"] = "Designation: Trade During Opening Auction Extension (6)",
  ["7"] = "Designation: Trade During Closing Auction Extension (7)",
  ["8"] = "Designation: Trade During Tal Period (8)",
  ["C"] = "Designation: Trade In Spain At Mid Dark Book (C)",
}

bme_meff_topofbook5_bmegate_v1_6.designation.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.designation.labels[value] or "Designation: Unknown("..value..")"
end

-- Dissect: Designation
bme_meff_topofbook5_bmegate_v1_6.designation.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.designation.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.designation.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.designation, range, value, display)

  return offset + length, value
end

-- End Maturity Month Year
bme_meff_topofbook5_bmegate_v1_6.end_maturity_month_year = {}

-- Size: End Maturity Month Year
bme_meff_topofbook5_bmegate_v1_6.end_maturity_month_year.size = 8

-- Display: End Maturity Month Year
bme_meff_topofbook5_bmegate_v1_6.end_maturity_month_year.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "End Maturity Month Year: No Value"
  end

  return "End Maturity Month Year: "..value
end

-- Dissect: End Maturity Month Year
bme_meff_topofbook5_bmegate_v1_6.end_maturity_month_year.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.end_maturity_month_year.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.end_maturity_month_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.end_maturity_month_year, range, value, display)

  return offset + length, value
end

-- Environment Code
bme_meff_topofbook5_bmegate_v1_6.environment_code = {}

-- Size: Environment Code
bme_meff_topofbook5_bmegate_v1_6.environment_code.size = 2

-- Display: Environment Code
bme_meff_topofbook5_bmegate_v1_6.environment_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Environment Code: No Value"
  end

  return "Environment Code: "..value
end

-- Dissect: Environment Code
bme_meff_topofbook5_bmegate_v1_6.environment_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.environment_code.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.environment_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.environment_code, range, value, display)

  return offset + length, value
end

-- Exec Ref Id
bme_meff_topofbook5_bmegate_v1_6.exec_ref_id = {}

-- Size: Exec Ref Id
bme_meff_topofbook5_bmegate_v1_6.exec_ref_id.size = 4

-- Display: Exec Ref Id
bme_meff_topofbook5_bmegate_v1_6.exec_ref_id.display = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
bme_meff_topofbook5_bmegate_v1_6.exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Exercise Style
bme_meff_topofbook5_bmegate_v1_6.exercise_style = {}

-- Size: Exercise Style
bme_meff_topofbook5_bmegate_v1_6.exercise_style.size = 1

-- Display: Exercise Style
bme_meff_topofbook5_bmegate_v1_6.exercise_style.labels = {
  ["A"] = "Exercise Style: American (A)",
  ["E"] = "Exercise Style: European (E)",
  ["V"] = "Exercise Style: European Automatic (V)",
}

bme_meff_topofbook5_bmegate_v1_6.exercise_style.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.exercise_style.labels[value] or "Exercise Style: Unknown("..value..")"
end

-- Dissect: Exercise Style
bme_meff_topofbook5_bmegate_v1_6.exercise_style.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.exercise_style.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.exercise_style.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.exercise_style, range, value, display)

  return offset + length, value
end

-- Expected Sequence Number
bme_meff_topofbook5_bmegate_v1_6.expected_sequence_number = {}

-- Size: Expected Sequence Number
bme_meff_topofbook5_bmegate_v1_6.expected_sequence_number.size = 4

-- Display: Expected Sequence Number
bme_meff_topofbook5_bmegate_v1_6.expected_sequence_number.display = function(value)
  return "Expected Sequence Number: "..value
end

-- Dissect: Expected Sequence Number
bme_meff_topofbook5_bmegate_v1_6.expected_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.expected_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.expected_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.expected_sequence_number, range, value, display)

  return offset + length, value
end

-- Family Code
bme_meff_topofbook5_bmegate_v1_6.family_code = {}

-- Size: Family Code
bme_meff_topofbook5_bmegate_v1_6.family_code.size = 5

-- Display: Family Code
bme_meff_topofbook5_bmegate_v1_6.family_code.labels = {
  ["EIBXO"] = "Family Code: Strategies Options Mini Ibex 35 (EIBXO)",
  ["ESTCF"] = "Family Code: Strategies Single Stock Futures (ESTCF)",
  ["ESTCO"] = "Family Code: Strategies Single Stock Options (ESTCO)",
  ["ESTXX"] = "Family Code: Strategies Futures And Swaps Energy (ESTXX)",
  ["FBONO"] = "Family Code: Bono E 10 Futures Rf (FBONO)",
  ["FENGM"] = "Family Code: Fut Energy Monthly (FENGM)",
  ["FENGQ"] = "Family Code: Fut Energy Quarterly (FENGQ)",
  ["FENGW"] = "Family Code: Fut Energy Weekly (FENGW)",
  ["FENGY"] = "Family Code: Fut Energy Annual (FENGY)",
  ["FEROL"] = "Family Code: Rolling Spot Futures On Stocks (FEROL)",
  ["FIBX"] = "Family Code: Futures Ibex 35 (FIBX)",
  ["FIBXC"] = "Family Code: Futures Micro Ibex 35 (FIBXC)",
  ["FIBXD"] = "Family Code: Futures Ibex Impacto Div (FIBXD)",
  ["FIBXM"] = "Family Code: Futures Mini Ibex 35 (FIBXM)",
  ["FIBXS"] = "Family Code: Sector Futures Ibex 35 (FIBXS)",
  ["FIROL"] = "Family Code: Rolling Spot Futures On Indexes (FIROL)",
  ["FSTCD"] = "Family Code: Futures S Div Acc (FSTCD)",
  ["FSTCE"] = "Family Code: Twenty Five Stock Dividend Futures (FSTCE)",
  ["FSTCK"] = "Family Code: Futures S Acciones (FSTCK)",
  ["FXRL1"] = "Family Code: Rolling Spot Futures On Currencies 1 (FXRL1)",
  ["FXRL2"] = "Family Code: Rolling Spot Futures On Currencies 2 (FXRL2)",
  ["FXRL3"] = "Family Code: Rolling Spot Futures On Currencies 3 (FXRL3)",
  ["OIBXM"] = "Family Code: Options Mini Ibex 35 (OIBXM)",
  ["OSTCK"] = "Family Code: Single Stock Options (OSTCK)",
  ["SENGD"] = "Family Code: Swaps Ener Daily (SENGD)",
  ["SENGM"] = "Family Code: Swaps Ener Monthly (SENGM)",
  ["SENGQ"] = "Family Code: Swaps Ener Quarterly (SENGQ)",
  ["SENGW"] = "Family Code: Swaps Ener Weekly (SENGW)",
  ["SENGY"] = "Family Code: Swaps Ener Annual (SENGY)",
  ["TBONO"] = "Family Code: Bono E 10 Timespread Rf (TBONO)",
  ["TIBX"] = "Family Code: Timespread Ibex 35 (TIBX)",
  ["TIBXD"] = "Family Code: Timespread Ibex Impacto Div (TIBXD)",
  ["TIBXM"] = "Family Code: Timespread Mini Ibex 35 (TIBXM)",
  ["TSTCD"] = "Family Code: Timespread On Stock Dividens (TSTCD)",
  ["TSTCK"] = "Family Code: Timespread Single Stock (TSTCK)",
  ["TIBXS"] = "Family Code: Time Spread On Ibex Sector (TIBXS)",
  ["TIBXC"] = "Family Code: Timespread On Micro Ibex 35 (TIBXC)",
  ["00001"] = "Family Code: Ibex (00001)",
  ["00002"] = "Family Code: Latibex (00002)",
  ["00003"] = "Family Code: Ftse (00003)",
  ["00004"] = "Family Code: Strategies On Stocks (00004)",
  ["00005"] = "Family Code: Ma B (00005)",
  ["00006"] = "Family Code: Strategies On Derivatives (00006)",
  ["00007"] = "Family Code: Fixed Income (00007)",
  ["00101"] = "Family Code: Barcelona (00101)",
  ["00102"] = "Family Code: Bilbao (00102)",
  ["00103"] = "Family Code: Madrid (00103)",
  ["00104"] = "Family Code: Valencia (00104)",
}

bme_meff_topofbook5_bmegate_v1_6.family_code.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.family_code.labels[value] or "Family Code: Unknown("..value..")"
end

-- Dissect: Family Code
bme_meff_topofbook5_bmegate_v1_6.family_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.family_code.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.family_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.family_code, range, value, display)

  return offset + length, value
end

-- Fisn
bme_meff_topofbook5_bmegate_v1_6.fisn = {}

-- Size: Fisn
bme_meff_topofbook5_bmegate_v1_6.fisn.size = 35

-- Display: Fisn
bme_meff_topofbook5_bmegate_v1_6.fisn.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fisn: No Value"
  end

  return "Fisn: "..value
end

-- Dissect: Fisn
bme_meff_topofbook5_bmegate_v1_6.fisn.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.fisn.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.fisn.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.fisn, range, value, display)

  return offset + length, value
end

-- Flexible Indicator
bme_meff_topofbook5_bmegate_v1_6.flexible_indicator = {}

-- Size: Flexible Indicator
bme_meff_topofbook5_bmegate_v1_6.flexible_indicator.size = 1

-- Display: Flexible Indicator
bme_meff_topofbook5_bmegate_v1_6.flexible_indicator.labels = {
  ["Y"] = "Flexible Indicator: Flexible (Y)",
  ["N"] = "Flexible Indicator: Standard (N)",
}

bme_meff_topofbook5_bmegate_v1_6.flexible_indicator.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.flexible_indicator.labels[value] or "Flexible Indicator: Unknown("..value..")"
end

-- Dissect: Flexible Indicator
bme_meff_topofbook5_bmegate_v1_6.flexible_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.flexible_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.flexible_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.flexible_indicator, range, value, display)

  return offset + length, value
end

-- Further Sub Product
bme_meff_topofbook5_bmegate_v1_6.further_sub_product = {}

-- Size: Further Sub Product
bme_meff_topofbook5_bmegate_v1_6.further_sub_product.size = 4

-- Display: Further Sub Product
bme_meff_topofbook5_bmegate_v1_6.further_sub_product.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Further Sub Product: No Value"
  end

  return "Further Sub Product: "..value
end

-- Dissect: Further Sub Product
bme_meff_topofbook5_bmegate_v1_6.further_sub_product.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.further_sub_product.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.further_sub_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.further_sub_product, range, value, display)

  return offset + length, value
end

-- Gross Trade Amt
bme_meff_topofbook5_bmegate_v1_6.gross_trade_amt = {}

-- Size: Gross Trade Amt
bme_meff_topofbook5_bmegate_v1_6.gross_trade_amt.size = 8

-- Display: Gross Trade Amt
bme_meff_topofbook5_bmegate_v1_6.gross_trade_amt.display = function(value)
  return "Gross Trade Amt: "..value
end

-- Translate: Gross Trade Amt
bme_meff_topofbook5_bmegate_v1_6.gross_trade_amt.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Gross Trade Amt
bme_meff_topofbook5_bmegate_v1_6.gross_trade_amt.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.gross_trade_amt.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.gross_trade_amt.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.gross_trade_amt.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.gross_trade_amt, range, value, display)

  return offset + length, value
end

-- Heart Bt Int
bme_meff_topofbook5_bmegate_v1_6.heart_bt_int = {}

-- Size: Heart Bt Int
bme_meff_topofbook5_bmegate_v1_6.heart_bt_int.size = 1

-- Display: Heart Bt Int
bme_meff_topofbook5_bmegate_v1_6.heart_bt_int.display = function(value)
  return "Heart Bt Int: "..value
end

-- Dissect: Heart Bt Int
bme_meff_topofbook5_bmegate_v1_6.heart_bt_int.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.heart_bt_int.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.heart_bt_int.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.heart_bt_int, range, value, display)

  return offset + length, value
end

-- High Limit Price
bme_meff_topofbook5_bmegate_v1_6.high_limit_price = {}

-- Size: High Limit Price
bme_meff_topofbook5_bmegate_v1_6.high_limit_price.size = 8

-- Display: High Limit Price
bme_meff_topofbook5_bmegate_v1_6.high_limit_price.display = function(value)
  return "High Limit Price: "..value
end

-- Translate: High Limit Price
bme_meff_topofbook5_bmegate_v1_6.high_limit_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: High Limit Price
bme_meff_topofbook5_bmegate_v1_6.high_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.high_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.high_limit_price.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.high_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.high_limit_price, range, value, display)

  return offset + length, value
end

-- Ioi Price
bme_meff_topofbook5_bmegate_v1_6.ioi_price = {}

-- Size: Ioi Price
bme_meff_topofbook5_bmegate_v1_6.ioi_price.size = 8

-- Display: Ioi Price
bme_meff_topofbook5_bmegate_v1_6.ioi_price.display = function(value)
  return "Ioi Price: "..value
end

-- Translate: Ioi Price
bme_meff_topofbook5_bmegate_v1_6.ioi_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ioi Price
bme_meff_topofbook5_bmegate_v1_6.ioi_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.ioi_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.ioi_price.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.ioi_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.ioi_price, range, value, display)

  return offset + length, value
end

-- Ioi Qlty Ind
bme_meff_topofbook5_bmegate_v1_6.ioi_qlty_ind = {}

-- Size: Ioi Qlty Ind
bme_meff_topofbook5_bmegate_v1_6.ioi_qlty_ind.size = 1

-- Display: Ioi Qlty Ind
bme_meff_topofbook5_bmegate_v1_6.ioi_qlty_ind.labels = {
  ["H"] = "Ioi Qlty Ind: High Rfq Requested (H)",
  ["M"] = "Ioi Qlty Ind: Medium Order Requested (M)",
}

bme_meff_topofbook5_bmegate_v1_6.ioi_qlty_ind.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.ioi_qlty_ind.labels[value] or "Ioi Qlty Ind: Unknown("..value..")"
end

-- Dissect: Ioi Qlty Ind
bme_meff_topofbook5_bmegate_v1_6.ioi_qlty_ind.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.ioi_qlty_ind.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.ioi_qlty_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.ioi_qlty_ind, range, value, display)

  return offset + length, value
end

-- Ioi Qty
bme_meff_topofbook5_bmegate_v1_6.ioi_qty = {}

-- Size: Ioi Qty
bme_meff_topofbook5_bmegate_v1_6.ioi_qty.size = 4

-- Display: Ioi Qty
bme_meff_topofbook5_bmegate_v1_6.ioi_qty.display = function(value)
  return "Ioi Qty: "..value
end

-- Dissect: Ioi Qty
bme_meff_topofbook5_bmegate_v1_6.ioi_qty.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.ioi_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.ioi_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.ioi_qty, range, value, display)

  return offset + length, value
end

-- Ioi Trans Type
bme_meff_topofbook5_bmegate_v1_6.ioi_trans_type = {}

-- Size: Ioi Trans Type
bme_meff_topofbook5_bmegate_v1_6.ioi_trans_type.size = 1

-- Display: Ioi Trans Type
bme_meff_topofbook5_bmegate_v1_6.ioi_trans_type.labels = {
  ["N"] = "Ioi Trans Type: New (N)",
  ["C"] = "Ioi Trans Type: Cancel (C)",
  ["R"] = "Ioi Trans Type: Replace (R)",
}

bme_meff_topofbook5_bmegate_v1_6.ioi_trans_type.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.ioi_trans_type.labels[value] or "Ioi Trans Type: Unknown("..value..")"
end

-- Dissect: Ioi Trans Type
bme_meff_topofbook5_bmegate_v1_6.ioi_trans_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.ioi_trans_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.ioi_trans_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.ioi_trans_type, range, value, display)

  return offset + length, value
end

-- Ioiid
bme_meff_topofbook5_bmegate_v1_6.ioiid = {}

-- Size: Ioiid
bme_meff_topofbook5_bmegate_v1_6.ioiid.size = 4

-- Display: Ioiid
bme_meff_topofbook5_bmegate_v1_6.ioiid.display = function(value)
  return "Ioiid: "..value
end

-- Dissect: Ioiid
bme_meff_topofbook5_bmegate_v1_6.ioiid.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.ioiid.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.ioiid.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.ioiid, range, value, display)

  return offset + length, value
end

-- Issue Date
bme_meff_topofbook5_bmegate_v1_6.issue_date = {}

-- Size: Issue Date
bme_meff_topofbook5_bmegate_v1_6.issue_date.size = 4

-- Display: Issue Date
bme_meff_topofbook5_bmegate_v1_6.issue_date.display = function(value)
  return string.format("Issue Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Issue Date
bme_meff_topofbook5_bmegate_v1_6.issue_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.issue_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_meff_topofbook5_bmegate_v1_6.issue_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.issue_date, range, value, display)

  return offset + length, value
end

-- Issuer Lei
bme_meff_topofbook5_bmegate_v1_6.issuer_lei = {}

-- Size: Issuer Lei
bme_meff_topofbook5_bmegate_v1_6.issuer_lei.size = 20

-- Display: Issuer Lei
bme_meff_topofbook5_bmegate_v1_6.issuer_lei.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Issuer Lei: No Value"
  end

  return "Issuer Lei: "..value
end

-- Dissect: Issuer Lei
bme_meff_topofbook5_bmegate_v1_6.issuer_lei.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.issuer_lei.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.issuer_lei.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.issuer_lei, range, value, display)

  return offset + length, value
end

-- Last Change Flag
bme_meff_topofbook5_bmegate_v1_6.last_change_flag = {}

-- Size: Last Change Flag
bme_meff_topofbook5_bmegate_v1_6.last_change_flag.size = 1

-- Display: Last Change Flag
bme_meff_topofbook5_bmegate_v1_6.last_change_flag.display = function(value)
  if value == 0 then
    return "Last Change Flag: False (0)"
  end
  if value == 1 then
    return "Last Change Flag: True (1)"
  end
  if value == 255 then
    return "Last Change Flag: No Value"
  end

  return "Last Change Flag: Unknown("..value..")"
end

-- Dissect: Last Change Flag
bme_meff_topofbook5_bmegate_v1_6.last_change_flag.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.last_change_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.last_change_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.last_change_flag, range, value, display)

  return offset + length, value
end

-- Last Px
bme_meff_topofbook5_bmegate_v1_6.last_px = {}

-- Size: Last Px
bme_meff_topofbook5_bmegate_v1_6.last_px.size = 8

-- Display: Last Px
bme_meff_topofbook5_bmegate_v1_6.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
bme_meff_topofbook5_bmegate_v1_6.last_px.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Px
bme_meff_topofbook5_bmegate_v1_6.last_px.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.last_px.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Qty
bme_meff_topofbook5_bmegate_v1_6.last_qty = {}

-- Size: Last Qty
bme_meff_topofbook5_bmegate_v1_6.last_qty.size = 4

-- Display: Last Qty
bme_meff_topofbook5_bmegate_v1_6.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
bme_meff_topofbook5_bmegate_v1_6.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.last_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Last Trading Day
bme_meff_topofbook5_bmegate_v1_6.last_trading_day = {}

-- Size: Last Trading Day
bme_meff_topofbook5_bmegate_v1_6.last_trading_day.size = 4

-- Display: Last Trading Day
bme_meff_topofbook5_bmegate_v1_6.last_trading_day.display = function(value)
  return string.format("Last Trading Day: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Last Trading Day
bme_meff_topofbook5_bmegate_v1_6.last_trading_day.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.last_trading_day.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_meff_topofbook5_bmegate_v1_6.last_trading_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.last_trading_day, range, value, display)

  return offset + length, value
end

-- Leg Price 1
bme_meff_topofbook5_bmegate_v1_6.leg_price_1 = {}

-- Size: Leg Price 1
bme_meff_topofbook5_bmegate_v1_6.leg_price_1.size = 8

-- Display: Leg Price 1
bme_meff_topofbook5_bmegate_v1_6.leg_price_1.display = function(value)
  return "Leg Price 1: "..value
end

-- Translate: Leg Price 1
bme_meff_topofbook5_bmegate_v1_6.leg_price_1.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Leg Price 1
bme_meff_topofbook5_bmegate_v1_6.leg_price_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.leg_price_1.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.leg_price_1.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.leg_price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_price_1, range, value, display)

  return offset + length, value
end

-- Leg Price 2
bme_meff_topofbook5_bmegate_v1_6.leg_price_2 = {}

-- Size: Leg Price 2
bme_meff_topofbook5_bmegate_v1_6.leg_price_2.size = 8

-- Display: Leg Price 2
bme_meff_topofbook5_bmegate_v1_6.leg_price_2.display = function(value)
  return "Leg Price 2: "..value
end

-- Translate: Leg Price 2
bme_meff_topofbook5_bmegate_v1_6.leg_price_2.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Leg Price 2
bme_meff_topofbook5_bmegate_v1_6.leg_price_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.leg_price_2.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.leg_price_2.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.leg_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_price_2, range, value, display)

  return offset + length, value
end

-- Leg Price 3
bme_meff_topofbook5_bmegate_v1_6.leg_price_3 = {}

-- Size: Leg Price 3
bme_meff_topofbook5_bmegate_v1_6.leg_price_3.size = 8

-- Display: Leg Price 3
bme_meff_topofbook5_bmegate_v1_6.leg_price_3.display = function(value)
  return "Leg Price 3: "..value
end

-- Translate: Leg Price 3
bme_meff_topofbook5_bmegate_v1_6.leg_price_3.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Leg Price 3
bme_meff_topofbook5_bmegate_v1_6.leg_price_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.leg_price_3.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.leg_price_3.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.leg_price_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_price_3, range, value, display)

  return offset + length, value
end

-- Leg Price 4
bme_meff_topofbook5_bmegate_v1_6.leg_price_4 = {}

-- Size: Leg Price 4
bme_meff_topofbook5_bmegate_v1_6.leg_price_4.size = 8

-- Display: Leg Price 4
bme_meff_topofbook5_bmegate_v1_6.leg_price_4.display = function(value)
  return "Leg Price 4: "..value
end

-- Translate: Leg Price 4
bme_meff_topofbook5_bmegate_v1_6.leg_price_4.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Leg Price 4
bme_meff_topofbook5_bmegate_v1_6.leg_price_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.leg_price_4.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.leg_price_4.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.leg_price_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_price_4, range, value, display)

  return offset + length, value
end

-- Leg Price 5
bme_meff_topofbook5_bmegate_v1_6.leg_price_5 = {}

-- Size: Leg Price 5
bme_meff_topofbook5_bmegate_v1_6.leg_price_5.size = 8

-- Display: Leg Price 5
bme_meff_topofbook5_bmegate_v1_6.leg_price_5.display = function(value)
  return "Leg Price 5: "..value
end

-- Translate: Leg Price 5
bme_meff_topofbook5_bmegate_v1_6.leg_price_5.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Leg Price 5
bme_meff_topofbook5_bmegate_v1_6.leg_price_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.leg_price_5.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.leg_price_5.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.leg_price_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_price_5, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty 1
bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_1 = {}

-- Size: Leg Ratio Qty 1
bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_1.size = 4

-- Display: Leg Ratio Qty 1
bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_1.display = function(value)
  return "Leg Ratio Qty 1: "..value
end

-- Dissect: Leg Ratio Qty 1
bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_ratio_qty_1, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty 2
bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_2 = {}

-- Size: Leg Ratio Qty 2
bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_2.size = 4

-- Display: Leg Ratio Qty 2
bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_2.display = function(value)
  return "Leg Ratio Qty 2: "..value
end

-- Dissect: Leg Ratio Qty 2
bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_ratio_qty_2, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty 3
bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_3 = {}

-- Size: Leg Ratio Qty 3
bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_3.size = 4

-- Display: Leg Ratio Qty 3
bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_3.display = function(value)
  return "Leg Ratio Qty 3: "..value
end

-- Dissect: Leg Ratio Qty 3
bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_3.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_ratio_qty_3, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty 4
bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_4 = {}

-- Size: Leg Ratio Qty 4
bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_4.size = 4

-- Display: Leg Ratio Qty 4
bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_4.display = function(value)
  return "Leg Ratio Qty 4: "..value
end

-- Dissect: Leg Ratio Qty 4
bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_ratio_qty_4, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty 5
bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_5 = {}

-- Size: Leg Ratio Qty 5
bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_5.size = 4

-- Display: Leg Ratio Qty 5
bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_5.display = function(value)
  return "Leg Ratio Qty 5: "..value
end

-- Dissect: Leg Ratio Qty 5
bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_5.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_ratio_qty_5, range, value, display)

  return offset + length, value
end

-- Leg Side 1
bme_meff_topofbook5_bmegate_v1_6.leg_side_1 = {}

-- Size: Leg Side 1
bme_meff_topofbook5_bmegate_v1_6.leg_side_1.size = 1

-- Display: Leg Side 1
bme_meff_topofbook5_bmegate_v1_6.leg_side_1.labels = {
  ["1"] = "Leg Side 1: Buy (1)",
  ["2"] = "Leg Side 1: Sell (2)",
}

bme_meff_topofbook5_bmegate_v1_6.leg_side_1.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.leg_side_1.labels[value] or "Leg Side 1: Unknown("..value..")"
end

-- Dissect: Leg Side 1
bme_meff_topofbook5_bmegate_v1_6.leg_side_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.leg_side_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.leg_side_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_side_1, range, value, display)

  return offset + length, value
end

-- Leg Side 2
bme_meff_topofbook5_bmegate_v1_6.leg_side_2 = {}

-- Size: Leg Side 2
bme_meff_topofbook5_bmegate_v1_6.leg_side_2.size = 1

-- Display: Leg Side 2
bme_meff_topofbook5_bmegate_v1_6.leg_side_2.labels = {
  ["1"] = "Leg Side 2: Buy (1)",
  ["2"] = "Leg Side 2: Sell (2)",
}

bme_meff_topofbook5_bmegate_v1_6.leg_side_2.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.leg_side_2.labels[value] or "Leg Side 2: Unknown("..value..")"
end

-- Dissect: Leg Side 2
bme_meff_topofbook5_bmegate_v1_6.leg_side_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.leg_side_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.leg_side_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_side_2, range, value, display)

  return offset + length, value
end

-- Leg Side 3
bme_meff_topofbook5_bmegate_v1_6.leg_side_3 = {}

-- Size: Leg Side 3
bme_meff_topofbook5_bmegate_v1_6.leg_side_3.size = 1

-- Display: Leg Side 3
bme_meff_topofbook5_bmegate_v1_6.leg_side_3.labels = {
  ["1"] = "Leg Side 3: Buy (1)",
  ["2"] = "Leg Side 3: Sell (2)",
}

bme_meff_topofbook5_bmegate_v1_6.leg_side_3.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.leg_side_3.labels[value] or "Leg Side 3: Unknown("..value..")"
end

-- Dissect: Leg Side 3
bme_meff_topofbook5_bmegate_v1_6.leg_side_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.leg_side_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.leg_side_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_side_3, range, value, display)

  return offset + length, value
end

-- Leg Side 4
bme_meff_topofbook5_bmegate_v1_6.leg_side_4 = {}

-- Size: Leg Side 4
bme_meff_topofbook5_bmegate_v1_6.leg_side_4.size = 1

-- Display: Leg Side 4
bme_meff_topofbook5_bmegate_v1_6.leg_side_4.labels = {
  ["1"] = "Leg Side 4: Buy (1)",
  ["2"] = "Leg Side 4: Sell (2)",
}

bme_meff_topofbook5_bmegate_v1_6.leg_side_4.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.leg_side_4.labels[value] or "Leg Side 4: Unknown("..value..")"
end

-- Dissect: Leg Side 4
bme_meff_topofbook5_bmegate_v1_6.leg_side_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.leg_side_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.leg_side_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_side_4, range, value, display)

  return offset + length, value
end

-- Leg Side 5
bme_meff_topofbook5_bmegate_v1_6.leg_side_5 = {}

-- Size: Leg Side 5
bme_meff_topofbook5_bmegate_v1_6.leg_side_5.size = 1

-- Display: Leg Side 5
bme_meff_topofbook5_bmegate_v1_6.leg_side_5.labels = {
  ["1"] = "Leg Side 5: Buy (1)",
  ["2"] = "Leg Side 5: Sell (2)",
}

bme_meff_topofbook5_bmegate_v1_6.leg_side_5.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.leg_side_5.labels[value] or "Leg Side 5: Unknown("..value..")"
end

-- Dissect: Leg Side 5
bme_meff_topofbook5_bmegate_v1_6.leg_side_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.leg_side_5.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.leg_side_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_side_5, range, value, display)

  return offset + length, value
end

-- Leg Symbol 1
bme_meff_topofbook5_bmegate_v1_6.leg_symbol_1 = {}

-- Size: Leg Symbol 1
bme_meff_topofbook5_bmegate_v1_6.leg_symbol_1.size = 22

-- Display: Leg Symbol 1
bme_meff_topofbook5_bmegate_v1_6.leg_symbol_1.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Symbol 1: No Value"
  end

  return "Leg Symbol 1: "..value
end

-- Dissect: Leg Symbol 1
bme_meff_topofbook5_bmegate_v1_6.leg_symbol_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.leg_symbol_1.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.leg_symbol_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_symbol_1, range, value, display)

  return offset + length, value
end

-- Leg Symbol 2
bme_meff_topofbook5_bmegate_v1_6.leg_symbol_2 = {}

-- Size: Leg Symbol 2
bme_meff_topofbook5_bmegate_v1_6.leg_symbol_2.size = 22

-- Display: Leg Symbol 2
bme_meff_topofbook5_bmegate_v1_6.leg_symbol_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Symbol 2: No Value"
  end

  return "Leg Symbol 2: "..value
end

-- Dissect: Leg Symbol 2
bme_meff_topofbook5_bmegate_v1_6.leg_symbol_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.leg_symbol_2.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.leg_symbol_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_symbol_2, range, value, display)

  return offset + length, value
end

-- Leg Symbol 3
bme_meff_topofbook5_bmegate_v1_6.leg_symbol_3 = {}

-- Size: Leg Symbol 3
bme_meff_topofbook5_bmegate_v1_6.leg_symbol_3.size = 22

-- Display: Leg Symbol 3
bme_meff_topofbook5_bmegate_v1_6.leg_symbol_3.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Symbol 3: No Value"
  end

  return "Leg Symbol 3: "..value
end

-- Dissect: Leg Symbol 3
bme_meff_topofbook5_bmegate_v1_6.leg_symbol_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.leg_symbol_3.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.leg_symbol_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_symbol_3, range, value, display)

  return offset + length, value
end

-- Leg Symbol 4
bme_meff_topofbook5_bmegate_v1_6.leg_symbol_4 = {}

-- Size: Leg Symbol 4
bme_meff_topofbook5_bmegate_v1_6.leg_symbol_4.size = 22

-- Display: Leg Symbol 4
bme_meff_topofbook5_bmegate_v1_6.leg_symbol_4.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Symbol 4: No Value"
  end

  return "Leg Symbol 4: "..value
end

-- Dissect: Leg Symbol 4
bme_meff_topofbook5_bmegate_v1_6.leg_symbol_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.leg_symbol_4.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.leg_symbol_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_symbol_4, range, value, display)

  return offset + length, value
end

-- Leg Symbol 5
bme_meff_topofbook5_bmegate_v1_6.leg_symbol_5 = {}

-- Size: Leg Symbol 5
bme_meff_topofbook5_bmegate_v1_6.leg_symbol_5.size = 22

-- Display: Leg Symbol 5
bme_meff_topofbook5_bmegate_v1_6.leg_symbol_5.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Symbol 5: No Value"
  end

  return "Leg Symbol 5: "..value
end

-- Dissect: Leg Symbol 5
bme_meff_topofbook5_bmegate_v1_6.leg_symbol_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.leg_symbol_5.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.leg_symbol_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.leg_symbol_5, range, value, display)

  return offset + length, value
end

-- Li Spost
bme_meff_topofbook5_bmegate_v1_6.li_spost = {}

-- Size: Li Spost
bme_meff_topofbook5_bmegate_v1_6.li_spost.size = 8

-- Display: Li Spost
bme_meff_topofbook5_bmegate_v1_6.li_spost.display = function(value)
  return "Li Spost: "..value
end

-- Translate: Li Spost
bme_meff_topofbook5_bmegate_v1_6.li_spost.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Li Spost
bme_meff_topofbook5_bmegate_v1_6.li_spost.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.li_spost.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.li_spost.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.li_spost.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.li_spost, range, value, display)

  return offset + length, value
end

-- Li Spre
bme_meff_topofbook5_bmegate_v1_6.li_spre = {}

-- Size: Li Spre
bme_meff_topofbook5_bmegate_v1_6.li_spre.size = 8

-- Display: Li Spre
bme_meff_topofbook5_bmegate_v1_6.li_spre.display = function(value)
  return "Li Spre: "..value
end

-- Translate: Li Spre
bme_meff_topofbook5_bmegate_v1_6.li_spre.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Li Spre
bme_meff_topofbook5_bmegate_v1_6.li_spre.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.li_spre.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.li_spre.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.li_spre.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.li_spre, range, value, display)

  return offset + length, value
end

-- Liquid Instrument
bme_meff_topofbook5_bmegate_v1_6.liquid_instrument = {}

-- Size: Liquid Instrument
bme_meff_topofbook5_bmegate_v1_6.liquid_instrument.size = 1

-- Display: Liquid Instrument
bme_meff_topofbook5_bmegate_v1_6.liquid_instrument.display = function(value)
  if value == 0 then
    return "Liquid Instrument: False (0)"
  end
  if value == 1 then
    return "Liquid Instrument: True (1)"
  end
  if value == 255 then
    return "Liquid Instrument: No Value"
  end

  return "Liquid Instrument: Unknown("..value..")"
end

-- Dissect: Liquid Instrument
bme_meff_topofbook5_bmegate_v1_6.liquid_instrument.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.liquid_instrument.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.liquid_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.liquid_instrument, range, value, display)

  return offset + length, value
end

-- Logout Reason
bme_meff_topofbook5_bmegate_v1_6.logout_reason = {}

-- Size: Logout Reason
bme_meff_topofbook5_bmegate_v1_6.logout_reason.size = 1

-- Display: Logout Reason
bme_meff_topofbook5_bmegate_v1_6.logout_reason.labels = {
  [0] = "Logout Reason: Termination After A Solicited Logout Request (0)",
  [1] = "Logout Reason: End Of Session Termination In Recovery Server End Of Recovery Snapshot (1)",
  [2] = "Logout Reason: Timeout Connection Lost (2)",
  [3] = "Logout Reason: Lack Of Heartbeat (3)",
  [16] = "Logout Reason: Invalid Username Or Password (16)",
  [17] = "Logout Reason: Invalid Expected Sequence Number (17)",
  [18] = "Logout Reason: Invalid Protocol Version (18)",
  [19] = "Logout Reason: New Connection From User (19)",
}

bme_meff_topofbook5_bmegate_v1_6.logout_reason.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.logout_reason.labels[value] or "Logout Reason: Unknown("..value..")"
end

-- Dissect: Logout Reason
bme_meff_topofbook5_bmegate_v1_6.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.logout_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Low Limit Price
bme_meff_topofbook5_bmegate_v1_6.low_limit_price = {}

-- Size: Low Limit Price
bme_meff_topofbook5_bmegate_v1_6.low_limit_price.size = 8

-- Display: Low Limit Price
bme_meff_topofbook5_bmegate_v1_6.low_limit_price.display = function(value)
  return "Low Limit Price: "..value
end

-- Translate: Low Limit Price
bme_meff_topofbook5_bmegate_v1_6.low_limit_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Low Limit Price
bme_meff_topofbook5_bmegate_v1_6.low_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.low_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.low_limit_price.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.low_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.low_limit_price, range, value, display)

  return offset + length, value
end

-- Market Id
bme_meff_topofbook5_bmegate_v1_6.market_id = {}

-- Size: Market Id
bme_meff_topofbook5_bmegate_v1_6.market_id.size = 4

-- Display: Market Id
bme_meff_topofbook5_bmegate_v1_6.market_id.labels = {
  ["BMEX"] = "Market Id: BMEX (BMEX)",
}

bme_meff_topofbook5_bmegate_v1_6.market_id.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.market_id.labels[value] or "Market Id: Unknown("..value..")"
end

-- Dissect: Market Id
bme_meff_topofbook5_bmegate_v1_6.market_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.market_id.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Mechanism
bme_meff_topofbook5_bmegate_v1_6.market_mechanism = {}

-- Size: Market Mechanism
bme_meff_topofbook5_bmegate_v1_6.market_mechanism.size = 1

-- Display: Market Mechanism
bme_meff_topofbook5_bmegate_v1_6.market_mechanism.labels = {
  ["0"] = "Market Mechanism: Central Limit Order Book (0)",
  ["1"] = "Market Mechanism: Off Book Messaging Trading (1)",
  ["6"] = "Market Mechanism: Request For Quotes (6)",
}

bme_meff_topofbook5_bmegate_v1_6.market_mechanism.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.market_mechanism.labels[value] or "Market Mechanism: Unknown("..value..")"
end

-- Dissect: Market Mechanism
bme_meff_topofbook5_bmegate_v1_6.market_mechanism.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.market_mechanism.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.market_mechanism.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.market_mechanism, range, value, display)

  return offset + length, value
end

-- Market Segment Id
bme_meff_topofbook5_bmegate_v1_6.market_segment_id = {}

-- Size: Market Segment Id
bme_meff_topofbook5_bmegate_v1_6.market_segment_id.size = 4

-- Display: Market Segment Id
bme_meff_topofbook5_bmegate_v1_6.market_segment_id.labels = {
  ["XMRV"] = "Market Segment Id: Meff Financial Derivatives (XMRV)",
  ["XMPW"] = "Market Segment Id: Meff Energy Derivatives (XMPW)",
  ["XMFX"] = "Market Segment Id: Meff Fx Financial Derivatives (XMFX)",
}

bme_meff_topofbook5_bmegate_v1_6.market_segment_id.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.market_segment_id.labels[value] or "Market Segment Id: Unknown("..value..")"
end

-- Dissect: Market Segment Id
bme_meff_topofbook5_bmegate_v1_6.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.market_segment_id.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Maturity Date
bme_meff_topofbook5_bmegate_v1_6.maturity_date = {}

-- Size: Maturity Date
bme_meff_topofbook5_bmegate_v1_6.maturity_date.size = 4

-- Display: Maturity Date
bme_meff_topofbook5_bmegate_v1_6.maturity_date.display = function(value)
  return string.format("Maturity Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Maturity Date
bme_meff_topofbook5_bmegate_v1_6.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_meff_topofbook5_bmegate_v1_6.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Maturity Month Year
bme_meff_topofbook5_bmegate_v1_6.maturity_month_year = {}

-- Size: Maturity Month Year
bme_meff_topofbook5_bmegate_v1_6.maturity_month_year.size = 8

-- Display: Maturity Month Year
bme_meff_topofbook5_bmegate_v1_6.maturity_month_year.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Maturity Month Year: No Value"
  end

  return "Maturity Month Year: "..value
end

-- Dissect: Maturity Month Year
bme_meff_topofbook5_bmegate_v1_6.maturity_month_year.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.maturity_month_year.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.maturity_month_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.maturity_month_year, range, value, display)

  return offset + length, value
end

-- Maturity Month Year Increment
bme_meff_topofbook5_bmegate_v1_6.maturity_month_year_increment = {}

-- Size: Maturity Month Year Increment
bme_meff_topofbook5_bmegate_v1_6.maturity_month_year_increment.size = 1

-- Display: Maturity Month Year Increment
bme_meff_topofbook5_bmegate_v1_6.maturity_month_year_increment.display = function(value)
  return "Maturity Month Year Increment: "..value
end

-- Dissect: Maturity Month Year Increment
bme_meff_topofbook5_bmegate_v1_6.maturity_month_year_increment.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.maturity_month_year_increment.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.maturity_month_year_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.maturity_month_year_increment, range, value, display)

  return offset + length, value
end

-- Maturity Month Year Increment Units
bme_meff_topofbook5_bmegate_v1_6.maturity_month_year_increment_units = {}

-- Size: Maturity Month Year Increment Units
bme_meff_topofbook5_bmegate_v1_6.maturity_month_year_increment_units.size = 1

-- Display: Maturity Month Year Increment Units
bme_meff_topofbook5_bmegate_v1_6.maturity_month_year_increment_units.labels = {
  ["0"] = "Maturity Month Year Increment Units: Months (0)",
  ["1"] = "Maturity Month Year Increment Units: Days (1)",
  ["2"] = "Maturity Month Year Increment Units: Weeks (2)",
  ["3"] = "Maturity Month Year Increment Units: Years (3)",
}

bme_meff_topofbook5_bmegate_v1_6.maturity_month_year_increment_units.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.maturity_month_year_increment_units.labels[value] or "Maturity Month Year Increment Units: Unknown("..value..")"
end

-- Dissect: Maturity Month Year Increment Units
bme_meff_topofbook5_bmegate_v1_6.maturity_month_year_increment_units.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.maturity_month_year_increment_units.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.maturity_month_year_increment_units.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.maturity_month_year_increment_units, range, value, display)

  return offset + length, value
end

-- Maximum Order Size
bme_meff_topofbook5_bmegate_v1_6.maximum_order_size = {}

-- Size: Maximum Order Size
bme_meff_topofbook5_bmegate_v1_6.maximum_order_size.size = 8

-- Display: Maximum Order Size
bme_meff_topofbook5_bmegate_v1_6.maximum_order_size.display = function(value)
  return "Maximum Order Size: "..value
end

-- Translate: Maximum Order Size
bme_meff_topofbook5_bmegate_v1_6.maximum_order_size.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Maximum Order Size
bme_meff_topofbook5_bmegate_v1_6.maximum_order_size.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.maximum_order_size.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.maximum_order_size.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.maximum_order_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.maximum_order_size, range, value, display)

  return offset + length, value
end

-- Message Size
bme_meff_topofbook5_bmegate_v1_6.message_size = {}

-- Size: Message Size
bme_meff_topofbook5_bmegate_v1_6.message_size.size = 2

-- Display: Message Size
bme_meff_topofbook5_bmegate_v1_6.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
bme_meff_topofbook5_bmegate_v1_6.message_size.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
bme_meff_topofbook5_bmegate_v1_6.message_type = {}

-- Size: Message Type
bme_meff_topofbook5_bmegate_v1_6.message_type.size = 1

-- Display: Message Type
bme_meff_topofbook5_bmegate_v1_6.message_type.display = function(value)
  if value == 0x08 then
    return "Message Type: Logon Response Message (0x08)"
  end
  if value == 0x0B then
    return "Message Type: Logout Response Message (0x0B)"
  end
  if value == 0x30 then
    return "Message Type: Heartbeat Message (0x30)"
  end
  if value == 0x0A then
    return "Message Type: Network Status Message (0x0A)"
  end
  if value == 0x68 then
    return "Message Type: Trading Session Status Message (0x68)"
  end
  if value == 0x42 then
    return "Message Type: News Message (0x42)"
  end
  if value == 0x78 then
    return "Message Type: Security List Cancellation Report Message (0x78)"
  end
  if value == 0x84 then
    return "Message Type: Statistics Message (0x84)"
  end
  if value == 0x79 then
    return "Message Type: Security List Message (0x79)"
  end
  if value == 0x80 then
    return "Message Type: Security List Update Report Message (0x80)"
  end
  if value == 0x66 then
    return "Message Type: Security Status Message (0x66)"
  end
  if value == 0x89 then
    return "Message Type: Family Status Message (0x89)"
  end
  if value == 0x10 then
    return "Message Type: Trade Market Post Transparency Information Topofbook Message (0x10)"
  end
  if value == 0x18 then
    return "Message Type: Trade Trade Amendment Or Cancellation Message (0x18)"
  end
  if value == 0x36 then
    return "Message Type: Indication Of Interest Message (0x36)"
  end
  if value == 0x85 then
    return "Message Type: Rfq Market Pre Transparency Information Message (0x85)"
  end
  if value == 0x82 then
    return "Message Type: Topofbook Message (0x82)"
  end
  if value == 0x83 then
    return "Message Type: Topofbook 5 Levels Message (0x83)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
bme_meff_topofbook5_bmegate_v1_6.message_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mid Buy Price
bme_meff_topofbook5_bmegate_v1_6.mid_buy_price = {}

-- Size: Mid Buy Price
bme_meff_topofbook5_bmegate_v1_6.mid_buy_price.size = 8

-- Display: Mid Buy Price
bme_meff_topofbook5_bmegate_v1_6.mid_buy_price.display = function(value)
  return "Mid Buy Price: "..value
end

-- Translate: Mid Buy Price
bme_meff_topofbook5_bmegate_v1_6.mid_buy_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Mid Buy Price
bme_meff_topofbook5_bmegate_v1_6.mid_buy_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.mid_buy_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.mid_buy_price.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.mid_buy_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.mid_buy_price, range, value, display)

  return offset + length, value
end

-- Mid Buy Volume
bme_meff_topofbook5_bmegate_v1_6.mid_buy_volume = {}

-- Size: Mid Buy Volume
bme_meff_topofbook5_bmegate_v1_6.mid_buy_volume.size = 4

-- Display: Mid Buy Volume
bme_meff_topofbook5_bmegate_v1_6.mid_buy_volume.display = function(value)
  return "Mid Buy Volume: "..value
end

-- Dissect: Mid Buy Volume
bme_meff_topofbook5_bmegate_v1_6.mid_buy_volume.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.mid_buy_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.mid_buy_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.mid_buy_volume, range, value, display)

  return offset + length, value
end

-- Mid Sell Price
bme_meff_topofbook5_bmegate_v1_6.mid_sell_price = {}

-- Size: Mid Sell Price
bme_meff_topofbook5_bmegate_v1_6.mid_sell_price.size = 8

-- Display: Mid Sell Price
bme_meff_topofbook5_bmegate_v1_6.mid_sell_price.display = function(value)
  return "Mid Sell Price: "..value
end

-- Translate: Mid Sell Price
bme_meff_topofbook5_bmegate_v1_6.mid_sell_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Mid Sell Price
bme_meff_topofbook5_bmegate_v1_6.mid_sell_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.mid_sell_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.mid_sell_price.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.mid_sell_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.mid_sell_price, range, value, display)

  return offset + length, value
end

-- Mid Sell Volume
bme_meff_topofbook5_bmegate_v1_6.mid_sell_volume = {}

-- Size: Mid Sell Volume
bme_meff_topofbook5_bmegate_v1_6.mid_sell_volume.size = 4

-- Display: Mid Sell Volume
bme_meff_topofbook5_bmegate_v1_6.mid_sell_volume.display = function(value)
  return "Mid Sell Volume: "..value
end

-- Dissect: Mid Sell Volume
bme_meff_topofbook5_bmegate_v1_6.mid_sell_volume.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.mid_sell_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.mid_sell_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.mid_sell_volume, range, value, display)

  return offset + length, value
end

-- Min Price Increment
bme_meff_topofbook5_bmegate_v1_6.min_price_increment = {}

-- Size: Min Price Increment
bme_meff_topofbook5_bmegate_v1_6.min_price_increment.size = 8

-- Display: Min Price Increment
bme_meff_topofbook5_bmegate_v1_6.min_price_increment.display = function(value)
  return "Min Price Increment: "..value
end

-- Translate: Min Price Increment
bme_meff_topofbook5_bmegate_v1_6.min_price_increment.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Min Price Increment
bme_meff_topofbook5_bmegate_v1_6.min_price_increment.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.min_price_increment.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.min_price_increment.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.min_price_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.min_price_increment, range, value, display)

  return offset + length, value
end

-- Min Trade Vol
bme_meff_topofbook5_bmegate_v1_6.min_trade_vol = {}

-- Size: Min Trade Vol
bme_meff_topofbook5_bmegate_v1_6.min_trade_vol.size = 4

-- Display: Min Trade Vol
bme_meff_topofbook5_bmegate_v1_6.min_trade_vol.display = function(value)
  return "Min Trade Vol: "..value
end

-- Dissect: Min Trade Vol
bme_meff_topofbook5_bmegate_v1_6.min_trade_vol.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.min_trade_vol.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.min_trade_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.min_trade_vol, range, value, display)

  return offset + length, value
end

-- Modality Mask B 4
bme_meff_topofbook5_bmegate_v1_6.modality_mask_b_4 = {}

-- Size: Modality Mask B 4
bme_meff_topofbook5_bmegate_v1_6.modality_mask_b_4.size = 4

-- Display: Modality Mask B 4
bme_meff_topofbook5_bmegate_v1_6.modality_mask_b_4.display = function(value)
  return "Modality Mask B 4: "..value
end

-- Dissect: Modality Mask B 4
bme_meff_topofbook5_bmegate_v1_6.modality_mask_b_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.modality_mask_b_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.modality_mask_b_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.modality_mask_b_4, range, value, display)

  return offset + length, value
end

-- Network Status Value
bme_meff_topofbook5_bmegate_v1_6.network_status_value = {}

-- Size: Network Status Value
bme_meff_topofbook5_bmegate_v1_6.network_status_value.size = 1

-- Display: Network Status Value
bme_meff_topofbook5_bmegate_v1_6.network_status_value.labels = {
  [1] = "Network Status Value: Connected (1)",
  [2] = "Network Status Value: Not Connected Down Expected Up (2)",
  [3] = "Network Status Value: Not Connected Down Expected Down (3)",
  [4] = "Network Status Value: In Process (4)",
}

bme_meff_topofbook5_bmegate_v1_6.network_status_value.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.network_status_value.labels[value] or "Network Status Value: Unknown("..value..")"
end

-- Dissect: Network Status Value
bme_meff_topofbook5_bmegate_v1_6.network_status_value.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.network_status_value.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.network_status_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.network_status_value, range, value, display)

  return offset + length, value
end

-- News Text
bme_meff_topofbook5_bmegate_v1_6.news_text = {}

-- Size: News Text
bme_meff_topofbook5_bmegate_v1_6.news_text.size = 78

-- Display: News Text
bme_meff_topofbook5_bmegate_v1_6.news_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "News Text: No Value"
  end

  return "News Text: "..value
end

-- Dissect: News Text
bme_meff_topofbook5_bmegate_v1_6.news_text.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.news_text.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.news_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.news_text, range, value, display)

  return offset + length, value
end

-- Non Availability Reason
bme_meff_topofbook5_bmegate_v1_6.non_availability_reason = {}

-- Size: Non Availability Reason
bme_meff_topofbook5_bmegate_v1_6.non_availability_reason.size = 1

-- Display: Non Availability Reason
bme_meff_topofbook5_bmegate_v1_6.non_availability_reason.labels = {
  [0] = "Non Availability Reason: Not Halted (0)",
  [100] = "Non Availability Reason: Halted By Regulator (100)",
  [101] = "Non Availability Reason: Halted By Market Surveillance (101)",
  [102] = "Non Availability Reason: Knockout (102)",
  [103] = "Non Availability Reason: Knockin Pending (103)",
}

bme_meff_topofbook5_bmegate_v1_6.non_availability_reason.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.non_availability_reason.labels[value] or "Non Availability Reason: Unknown("..value..")"
end

-- Dissect: Non Availability Reason
bme_meff_topofbook5_bmegate_v1_6.non_availability_reason.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.non_availability_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.non_availability_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.non_availability_reason, range, value, display)

  return offset + length, value
end

-- Number Of Decimals
bme_meff_topofbook5_bmegate_v1_6.number_of_decimals = {}

-- Size: Number Of Decimals
bme_meff_topofbook5_bmegate_v1_6.number_of_decimals.size = 1

-- Display: Number Of Decimals
bme_meff_topofbook5_bmegate_v1_6.number_of_decimals.display = function(value)
  return "Number Of Decimals: "..value
end

-- Dissect: Number Of Decimals
bme_meff_topofbook5_bmegate_v1_6.number_of_decimals.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.number_of_decimals.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.number_of_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.number_of_decimals, range, value, display)

  return offset + length, value
end

-- Opt Attribute
bme_meff_topofbook5_bmegate_v1_6.opt_attribute = {}

-- Size: Opt Attribute
bme_meff_topofbook5_bmegate_v1_6.opt_attribute.size = 1

-- Display: Opt Attribute
bme_meff_topofbook5_bmegate_v1_6.opt_attribute.display = function(value)
  return "Opt Attribute: "..value
end

-- Dissect: Opt Attribute
bme_meff_topofbook5_bmegate_v1_6.opt_attribute.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.opt_attribute.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.opt_attribute.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.opt_attribute, range, value, display)

  return offset + length, value
end

-- Order Number Of Decimals
bme_meff_topofbook5_bmegate_v1_6.order_number_of_decimals = {}

-- Size: Order Number Of Decimals
bme_meff_topofbook5_bmegate_v1_6.order_number_of_decimals.size = 1

-- Display: Order Number Of Decimals
bme_meff_topofbook5_bmegate_v1_6.order_number_of_decimals.display = function(value)
  return "Order Number Of Decimals: "..value
end

-- Dissect: Order Number Of Decimals
bme_meff_topofbook5_bmegate_v1_6.order_number_of_decimals.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.order_number_of_decimals.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.order_number_of_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.order_number_of_decimals, range, value, display)

  return offset + length, value
end

-- Post Deferral Publication Type
bme_meff_topofbook5_bmegate_v1_6.post_deferral_publication_type = {}

-- Size: Post Deferral Publication Type
bme_meff_topofbook5_bmegate_v1_6.post_deferral_publication_type.size = 1

-- Display: Post Deferral Publication Type
bme_meff_topofbook5_bmegate_v1_6.post_deferral_publication_type.display = function(value)
  if value == " " then
    return "Post Deferral Publication Type: Not Applicable No Relevant Deferral Or Enrichment Type (<whitespace>)"
  end
  if value == "8" then
    return "Post Deferral Publication Type: Full Details Of Earlier Daily Aggregated Trade Datf (8)"
  end

  return "Post Deferral Publication Type: Unknown("..value..")"
end

-- Dissect: Post Deferral Publication Type
bme_meff_topofbook5_bmegate_v1_6.post_deferral_publication_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.post_deferral_publication_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.post_deferral_publication_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.post_deferral_publication_type, range, value, display)

  return offset + length, value
end

-- Pre Trade Transparency Waiver
bme_meff_topofbook5_bmegate_v1_6.pre_trade_transparency_waiver = {}

-- Size: Pre Trade Transparency Waiver
bme_meff_topofbook5_bmegate_v1_6.pre_trade_transparency_waiver.size = 1

-- Display: Pre Trade Transparency Waiver
bme_meff_topofbook5_bmegate_v1_6.pre_trade_transparency_waiver.display = function(value)
  if value == " " then
    return "Pre Trade Transparency Waiver: Negotiated Trade Nego (<whitespace>)"
  end

  return "Pre Trade Transparency Waiver: Unknown("..value..")"
end

-- Dissect: Pre Trade Transparency Waiver
bme_meff_topofbook5_bmegate_v1_6.pre_trade_transparency_waiver.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.pre_trade_transparency_waiver.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.pre_trade_transparency_waiver.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.pre_trade_transparency_waiver, range, value, display)

  return offset + length, value
end

-- Protocol Version
bme_meff_topofbook5_bmegate_v1_6.protocol_version = {}

-- Size: Protocol Version
bme_meff_topofbook5_bmegate_v1_6.protocol_version.size = 6

-- Display: Protocol Version
bme_meff_topofbook5_bmegate_v1_6.protocol_version.labels = {
  ["BBP001"] = "Protocol Version: BBP001 (BBP001)",
  ["BP1.3D"] = "Protocol Version: BP13D (BP1.3D)",
  ["BP1.4D"] = "Protocol Version: BP14D (BP1.4D)",
  ["BP1.5D"] = "Protocol Version: BP15D (BP1.5D)",
  ["BP1.6D"] = "Protocol Version: BP16D (BP1.6D)",
}

bme_meff_topofbook5_bmegate_v1_6.protocol_version.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.protocol_version.labels[value] or "Protocol Version: Unknown("..value..")"
end

-- Dissect: Protocol Version
bme_meff_topofbook5_bmegate_v1_6.protocol_version.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.protocol_version.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.protocol_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Publish Date And Time
bme_meff_topofbook5_bmegate_v1_6.publish_date_and_time = {}

-- Size: Publish Date And Time
bme_meff_topofbook5_bmegate_v1_6.publish_date_and_time.size = 8

-- Dissect: Publish Date And Time
bme_meff_topofbook5_bmegate_v1_6.publish_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.publish_date_and_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bme_meff_topofbook5_bmegate_v1_6.fields.publish_date_and_time
  if bme_meff_topofbook5_bmegate_v1_6.absolute_time_base == 1 then field = omi_bme_meff_topofbook5_bmegate_v1_6.fields.publish_date_and_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Put Or Call
bme_meff_topofbook5_bmegate_v1_6.put_or_call = {}

-- Size: Put Or Call
bme_meff_topofbook5_bmegate_v1_6.put_or_call.size = 1

-- Display: Put Or Call
bme_meff_topofbook5_bmegate_v1_6.put_or_call.labels = {
  ["C"] = "Put Or Call: Call (C)",
  ["P"] = "Put Or Call: Put (P)",
  ["O"] = "Put Or Call: Other (O)",
}

bme_meff_topofbook5_bmegate_v1_6.put_or_call.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.put_or_call.labels[value] or "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
bme_meff_topofbook5_bmegate_v1_6.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.put_or_call.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Quoted Currency
bme_meff_topofbook5_bmegate_v1_6.quoted_currency = {}

-- Size: Quoted Currency
bme_meff_topofbook5_bmegate_v1_6.quoted_currency.size = 3

-- Display: Quoted Currency
bme_meff_topofbook5_bmegate_v1_6.quoted_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Quoted Currency: No Value"
  end

  return "Quoted Currency: "..value
end

-- Dissect: Quoted Currency
bme_meff_topofbook5_bmegate_v1_6.quoted_currency.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.quoted_currency.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.quoted_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.quoted_currency, range, value, display)

  return offset + length, value
end

-- Retail Cl Ask Flag 1
bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_1 = {}

-- Size: Retail Cl Ask Flag 1
bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_1.size = 1

-- Display: Retail Cl Ask Flag 1
bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_1.display = function(value)
  if value == 0 then
    return "Retail Cl Ask Flag 1: False (0)"
  end
  if value == 1 then
    return "Retail Cl Ask Flag 1: True (1)"
  end
  if value == 255 then
    return "Retail Cl Ask Flag 1: No Value"
  end

  return "Retail Cl Ask Flag 1: Unknown("..value..")"
end

-- Dissect: Retail Cl Ask Flag 1
bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.retail_cl_ask_flag_1, range, value, display)

  return offset + length, value
end

-- Retail Cl Ask Flag 2
bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_2 = {}

-- Size: Retail Cl Ask Flag 2
bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_2.size = 1

-- Display: Retail Cl Ask Flag 2
bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_2.display = function(value)
  if value == 0 then
    return "Retail Cl Ask Flag 2: False (0)"
  end
  if value == 1 then
    return "Retail Cl Ask Flag 2: True (1)"
  end
  if value == 255 then
    return "Retail Cl Ask Flag 2: No Value"
  end

  return "Retail Cl Ask Flag 2: Unknown("..value..")"
end

-- Dissect: Retail Cl Ask Flag 2
bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.retail_cl_ask_flag_2, range, value, display)

  return offset + length, value
end

-- Retail Cl Ask Flag 3
bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_3 = {}

-- Size: Retail Cl Ask Flag 3
bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_3.size = 1

-- Display: Retail Cl Ask Flag 3
bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_3.display = function(value)
  if value == 0 then
    return "Retail Cl Ask Flag 3: False (0)"
  end
  if value == 1 then
    return "Retail Cl Ask Flag 3: True (1)"
  end
  if value == 255 then
    return "Retail Cl Ask Flag 3: No Value"
  end

  return "Retail Cl Ask Flag 3: Unknown("..value..")"
end

-- Dissect: Retail Cl Ask Flag 3
bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_3.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.retail_cl_ask_flag_3, range, value, display)

  return offset + length, value
end

-- Retail Cl Ask Flag 4
bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_4 = {}

-- Size: Retail Cl Ask Flag 4
bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_4.size = 1

-- Display: Retail Cl Ask Flag 4
bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_4.display = function(value)
  if value == 0 then
    return "Retail Cl Ask Flag 4: False (0)"
  end
  if value == 1 then
    return "Retail Cl Ask Flag 4: True (1)"
  end
  if value == 255 then
    return "Retail Cl Ask Flag 4: No Value"
  end

  return "Retail Cl Ask Flag 4: Unknown("..value..")"
end

-- Dissect: Retail Cl Ask Flag 4
bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.retail_cl_ask_flag_4, range, value, display)

  return offset + length, value
end

-- Retail Cl Ask Flag 5
bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_5 = {}

-- Size: Retail Cl Ask Flag 5
bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_5.size = 1

-- Display: Retail Cl Ask Flag 5
bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_5.display = function(value)
  if value == 0 then
    return "Retail Cl Ask Flag 5: False (0)"
  end
  if value == 1 then
    return "Retail Cl Ask Flag 5: True (1)"
  end
  if value == 255 then
    return "Retail Cl Ask Flag 5: No Value"
  end

  return "Retail Cl Ask Flag 5: Unknown("..value..")"
end

-- Dissect: Retail Cl Ask Flag 5
bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_5.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.retail_cl_ask_flag_5, range, value, display)

  return offset + length, value
end

-- Retail Cl Bid Flag 1
bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_1 = {}

-- Size: Retail Cl Bid Flag 1
bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_1.size = 1

-- Display: Retail Cl Bid Flag 1
bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_1.display = function(value)
  if value == 0 then
    return "Retail Cl Bid Flag 1: False (0)"
  end
  if value == 1 then
    return "Retail Cl Bid Flag 1: True (1)"
  end
  if value == 255 then
    return "Retail Cl Bid Flag 1: No Value"
  end

  return "Retail Cl Bid Flag 1: Unknown("..value..")"
end

-- Dissect: Retail Cl Bid Flag 1
bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.retail_cl_bid_flag_1, range, value, display)

  return offset + length, value
end

-- Retail Cl Bid Flag 2
bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_2 = {}

-- Size: Retail Cl Bid Flag 2
bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_2.size = 1

-- Display: Retail Cl Bid Flag 2
bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_2.display = function(value)
  if value == 0 then
    return "Retail Cl Bid Flag 2: False (0)"
  end
  if value == 1 then
    return "Retail Cl Bid Flag 2: True (1)"
  end
  if value == 255 then
    return "Retail Cl Bid Flag 2: No Value"
  end

  return "Retail Cl Bid Flag 2: Unknown("..value..")"
end

-- Dissect: Retail Cl Bid Flag 2
bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.retail_cl_bid_flag_2, range, value, display)

  return offset + length, value
end

-- Retail Cl Bid Flag 3
bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_3 = {}

-- Size: Retail Cl Bid Flag 3
bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_3.size = 1

-- Display: Retail Cl Bid Flag 3
bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_3.display = function(value)
  if value == 0 then
    return "Retail Cl Bid Flag 3: False (0)"
  end
  if value == 1 then
    return "Retail Cl Bid Flag 3: True (1)"
  end
  if value == 255 then
    return "Retail Cl Bid Flag 3: No Value"
  end

  return "Retail Cl Bid Flag 3: Unknown("..value..")"
end

-- Dissect: Retail Cl Bid Flag 3
bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_3.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.retail_cl_bid_flag_3, range, value, display)

  return offset + length, value
end

-- Retail Cl Bid Flag 4
bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_4 = {}

-- Size: Retail Cl Bid Flag 4
bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_4.size = 1

-- Display: Retail Cl Bid Flag 4
bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_4.display = function(value)
  if value == 0 then
    return "Retail Cl Bid Flag 4: False (0)"
  end
  if value == 1 then
    return "Retail Cl Bid Flag 4: True (1)"
  end
  if value == 255 then
    return "Retail Cl Bid Flag 4: No Value"
  end

  return "Retail Cl Bid Flag 4: Unknown("..value..")"
end

-- Dissect: Retail Cl Bid Flag 4
bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.retail_cl_bid_flag_4, range, value, display)

  return offset + length, value
end

-- Retail Cl Bid Flag 5
bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_5 = {}

-- Size: Retail Cl Bid Flag 5
bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_5.size = 1

-- Display: Retail Cl Bid Flag 5
bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_5.display = function(value)
  if value == 0 then
    return "Retail Cl Bid Flag 5: False (0)"
  end
  if value == 1 then
    return "Retail Cl Bid Flag 5: True (1)"
  end
  if value == 255 then
    return "Retail Cl Bid Flag 5: No Value"
  end

  return "Retail Cl Bid Flag 5: Unknown("..value..")"
end

-- Dissect: Retail Cl Bid Flag 5
bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_5.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.retail_cl_bid_flag_5, range, value, display)

  return offset + length, value
end

-- Rfqid
bme_meff_topofbook5_bmegate_v1_6.rfqid = {}

-- Size: Rfqid
bme_meff_topofbook5_bmegate_v1_6.rfqid.size = 4

-- Display: Rfqid
bme_meff_topofbook5_bmegate_v1_6.rfqid.display = function(value)
  return "Rfqid: "..value
end

-- Dissect: Rfqid
bme_meff_topofbook5_bmegate_v1_6.rfqid.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.rfqid.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.rfqid.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.rfqid, range, value, display)

  return offset + length, value
end

-- Round Lot
bme_meff_topofbook5_bmegate_v1_6.round_lot = {}

-- Size: Round Lot
bme_meff_topofbook5_bmegate_v1_6.round_lot.size = 4

-- Display: Round Lot
bme_meff_topofbook5_bmegate_v1_6.round_lot.display = function(value)
  return "Round Lot: "..value
end

-- Dissect: Round Lot
bme_meff_topofbook5_bmegate_v1_6.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.round_lot.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Sec Description
bme_meff_topofbook5_bmegate_v1_6.sec_description = {}

-- Size: Sec Description
bme_meff_topofbook5_bmegate_v1_6.sec_description.size = 20

-- Display: Sec Description
bme_meff_topofbook5_bmegate_v1_6.sec_description.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sec Description: No Value"
  end

  return "Sec Description: "..value
end

-- Dissect: Sec Description
bme_meff_topofbook5_bmegate_v1_6.sec_description.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.sec_description.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.sec_description.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.sec_description, range, value, display)

  return offset + length, value
end

-- Security Code
bme_meff_topofbook5_bmegate_v1_6.security_code = {}

-- Size: Security Code
bme_meff_topofbook5_bmegate_v1_6.security_code.size = 4

-- Display: Security Code
bme_meff_topofbook5_bmegate_v1_6.security_code.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Security Code: No Value"
  end

  return "Security Code: "..value
end

-- Dissect: Security Code
bme_meff_topofbook5_bmegate_v1_6.security_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.security_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.security_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.security_code, range, value, display)

  return offset + length, value
end

-- Security Description
bme_meff_topofbook5_bmegate_v1_6.security_description = {}

-- Size: Security Description
bme_meff_topofbook5_bmegate_v1_6.security_description.size = 80

-- Display: Security Description
bme_meff_topofbook5_bmegate_v1_6.security_description.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Description: No Value"
  end

  return "Security Description: "..value
end

-- Dissect: Security Description
bme_meff_topofbook5_bmegate_v1_6.security_description.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.security_description.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.security_description.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.security_description, range, value, display)

  return offset + length, value
end

-- Security Group
bme_meff_topofbook5_bmegate_v1_6.security_group = {}

-- Size: Security Group
bme_meff_topofbook5_bmegate_v1_6.security_group.size = 2

-- Display: Security Group
bme_meff_topofbook5_bmegate_v1_6.security_group.display = function(value)
  if value == "02" then
    return "Security Group: Bono 10 (02)"
  end
  if value == "19" then
    return "Security Group: Ibex Micro (19)"
  end
  if value == "20" then
    return "Security Group: Mini Ibex (20)"
  end
  if value == "21" then
    return "Security Group: Ibex (21)"
  end
  if value == "23" then
    return "Security Group: Bbva (23)"
  end
  if value == "25" then
    return "Security Group: Endesa (25)"
  end
  if value == "27" then
    return "Security Group: Iberdrola (27)"
  end
  if value == "28" then
    return "Security Group: Banco Santander (28)"
  end
  if value == "30" then
    return "Security Group: Repsol (30)"
  end
  if value == "31" then
    return "Security Group: Telefonica (31)"
  end
  if value == "33" then
    return "Security Group: Acerinox (33)"
  end
  if value == "35" then
    return "Security Group: Bankinter (35)"
  end
  if value == "37" then
    return "Security Group: Naturgy (37)"
  end
  if value == "38" then
    return "Security Group: Indra (38)"
  end
  if value == "41" then
    return "Security Group: Amadeus (41)"
  end
  if value == "43" then
    return "Security Group: Inditex (43)"
  end
  if value == "45" then
    return "Security Group: Acs (45)"
  end
  if value == "46" then
    return "Security Group: Bsabadell (46)"
  end
  if value == "48" then
    return "Security Group: Acciona (48)"
  end
  if value == "50" then
    return "Security Group: Sacyr (50)"
  end
  if value == "51" then
    return "Security Group: Fcc (51)"
  end
  if value == "52" then
    return "Security Group: Enagas (52)"
  end
  if value == "53" then
    return "Security Group: Redeia Corporacion (53)"
  end
  if value == "57" then
    return "Security Group: Mapfre (57)"
  end
  if value == "58" then
    return "Security Group: Atresmedia (58)"
  end
  if value == "66" then
    return "Security Group: Colonial (66)"
  end
  if value == "68" then
    return "Security Group: Grifols (68)"
  end
  if value == "72" then
    return "Security Group: Arcelormittal (72)"
  end
  if value == "73" then
    return "Security Group: Técnicas Reunidas (73)"
  end
  if value == "74" then
    return "Security Group: Obrascón Huarte (74)"
  end
  if value == "75" then
    return "Security Group: Ferrovial (75)"
  end
  if value == "76" then
    return "Security Group: Ebro Foods (76)"
  end
  if value == "78" then
    return "Security Group: Iag (78)"
  end
  if value == "80" then
    return "Security Group: Caixabank (80)"
  end
  if value == "85" then
    return "Security Group: Viscofan (85)"
  end
  if value == "87" then
    return "Security Group: Aena (87)"
  end
  if value == "88" then
    return "Security Group: Merlin Properties (88)"
  end
  if value == "89" then
    return "Security Group: Cellnex (89)"
  end
  if value == "90" then
    return "Security Group: Melia (90)"
  end
  if value == "91" then
    return "Security Group: Cie Automotive (91)"
  end
  if value == "92" then
    return "Security Group: Ence (92)"
  end
  if value == "94" then
    return "Security Group: Almirall (94)"
  end
  if value == "95" then
    return "Security Group: Pharma Mar (95)"
  end
  if value == "96" then
    return "Security Group: Solaria (96)"
  end
  if value == "98" then
    return "Security Group: Fluidra (98)"
  end
  if value == "99" then
    return "Security Group: Ibex Impacto Div (99)"
  end
  if value == "A2" then
    return "Security Group: Linea Directa (A2)"
  end
  if value == "A3" then
    return "Security Group: Laborat Rovi (A3)"
  end
  if value == "A4" then
    return "Security Group: Acciona Energia (A4)"
  end
  if value == "A5" then
    return "Security Group: Applus Services (A5)"
  end
  if value == "A6" then
    return "Security Group: Audax Renov (A6)"
  end
  if value == "A7" then
    return "Security Group: D Felguera (A7)"
  end
  if value == "A8" then
    return "Security Group: Faes (A8)"
  end
  if value == "A9" then
    return "Security Group: G Catalana O (A9)"
  end
  if value == "B1" then
    return "Security Group: Gestamp (B1)"
  end
  if value == "B2" then
    return "Security Group: Grenergy (B2)"
  end
  if value == "B3" then
    return "Security Group: Grifols B (B3)"
  end
  if value == "B4" then
    return "Security Group: Logista (B4)"
  end
  if value == "B5" then
    return "Security Group: Prosegur (B5)"
  end
  if value == "B6" then
    return "Security Group: Auxil Ffcc (B6)"
  end
  if value == "B7" then
    return "Security Group: Unicaja (B7)"
  end
  if value == "B8" then
    return "Security Group: Vidrala (B8)"
  end
  if value == "B9" then
    return "Security Group: Puig (B9)"
  end
  if value == "D1" then
    return "Security Group: Tef Dividendos (D1)"
  end
  if value == "D2" then
    return "Security Group: San Dividendos (D2)"
  end
  if value == "D3" then
    return "Security Group: Bbva Dividendos (D3)"
  end
  if value == "D4" then
    return "Security Group: Rep Dividendos (D4)"
  end
  if value == "D5" then
    return "Security Group: Ibe Dividendos (D5)"
  end
  if value == "D6" then
    return "Security Group: Itx Dividendos (D6)"
  end
  if value == "D7" then
    return "Security Group: Caixabank Dividendos (D7)"
  end
  if value == "D8" then
    return "Security Group: Gas Natural Dividendos (D8)"
  end
  if value == "E1" then
    return "Security Group: Telefonica Div 25 (E1)"
  end
  if value == "E2" then
    return "Security Group: Santander Div 25 (E2)"
  end
  if value == "E3" then
    return "Security Group: Bbva Div 25 (E3)"
  end
  if value == "E4" then
    return "Security Group: Repsol Div 25 (E4)"
  end
  if value == "E5" then
    return "Security Group: Iberdrola Div 25 (E5)"
  end
  if value == "E6" then
    return "Security Group: Inditex Div 25 (E6)"
  end
  if value == "E7" then
    return "Security Group: Caixabank Div 25 (E7)"
  end
  if value == "E8" then
    return "Security Group: Gas Natural Div 25 (E8)"
  end
  if value == "F1" then
    return "Security Group: Fccinmocemento (F1)"
  end
  if value == "F2" then
    return "Security Group: Inmocemento (F2)"
  end
  if value == "S1" then
    return "Security Group: Ibex 35 Bancos (S1)"
  end
  if value == "S2" then
    return "Security Group: Ibex 35 Energia (S2)"
  end
  if value == "F0" then
    return "Security Group: X Rolling Euraud (F0)"
  end
  if value == "F3" then
    return "Security Group: X Rolling Eurjpy (F3)"
  end
  if value == "F4" then
    return "Security Group: X Rolling Eurusd (F4)"
  end
  if value == "F5" then
    return "Security Group: X Rolling Gbpchf (F5)"
  end
  if value == "F6" then
    return "Security Group: X Rolling Gbpusd (F6)"
  end
  if value == "F7" then
    return "Security Group: X Rolling Usdbrl (F7)"
  end
  if value == "F8" then
    return "Security Group: X Rolling Usdcad (F8)"
  end
  if value == "F9" then
    return "Security Group: X Rolling Usdchf (F9)"
  end
  if value == "G0" then
    return "Security Group: X Rolling Usdjpy (G0)"
  end
  if value == "G1" then
    return "Security Group: X Rolling Usdmxn (G1)"
  end
  if value == "G2" then
    return "Security Group: X Rolling Audjpy (G2)"
  end
  if value == "G3" then
    return "Security Group: X Rolling Audusd (G3)"
  end
  if value == "G4" then
    return "Security Group: X Rolling Nzdusd (G4)"
  end
  if value == "G5" then
    return "Security Group: X Rolling Eurmxn (G5)"
  end
  if value == "G6" then
    return "Security Group: X Rolling Eurbrl (G6)"
  end
  if value == "01" then
    return "Security Group: Future Base Mibel (01)"
  end
  if value == "03" then
    return "Security Group: Future Mini Base Mibel (03)"
  end
  if value == "04" then
    return "Security Group: Swap Mini Base Mibel (04)"
  end
  if value == "11" then
    return "Security Group: Future Peak Mibel (11)"
  end
  if value == "12" then
    return "Security Group: Swap Peak Mibel (12)"
  end
  if value == "13" then
    return "Security Group: Future Mini Peak Mibel (13)"
  end
  if value == "14" then
    return "Security Group: Swap Mini Peak Mibel (14)"
  end
  if value == '' then
    return "Security Group: Not Specified"
  end

  return "Security Group: Unknown("..value..")"
end

-- Dissect: Security Group
bme_meff_topofbook5_bmegate_v1_6.security_group.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.security_group.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.security_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.security_group, range, value, display)

  return offset + length, value
end

-- Security Sub Type
bme_meff_topofbook5_bmegate_v1_6.security_sub_type = {}

-- Size: Security Sub Type
bme_meff_topofbook5_bmegate_v1_6.security_sub_type.size = 12

-- Display: Security Sub Type
bme_meff_topofbook5_bmegate_v1_6.security_sub_type.labels = {
  ["BER"] = "Security Sub Type: Put Spread (BER)",
  ["BER +U"] = "Security Sub Type: Put Spread Plus U (BER +U)",
  ["BLT"] = "Security Sub Type: Call Calendar (BLT)",
  ["BLT +U"] = "Security Sub Type: Call Calendar Plus U (BLT +U)",
  ["BLT –U"] = "Security Sub Type: Call Calendar Minus U (BLT –U)",
  ["BRT"] = "Security Sub Type: Put Calendar (BRT)",
  ["BRT +U"] = "Security Sub Type: Put Calendar Plus U (BRT +U)",
  ["BRT –U"] = "Security Sub Type: Put Calendar Minus U (BRT –U)",
  ["BUL"] = "Security Sub Type: Call Spread (BUL)",
  ["BUL –U"] = "Security Sub Type: Call Spread Minus U (BUL –U)",
  ["CALL-U"] = "Security Sub Type: Call Minus U (CALL-U)",
  ["FUT –U"] = "Security Sub Type: Future Minus U (FUT –U)",
  ["PUT +U"] = "Security Sub Type: Put Plus U (PUT +U)",
  ["RBER"] = "Security Sub Type: Ratio 2x1 Put Spread (RBER)",
  ["RBER+U"] = "Security Sub Type: Ratio 2x1 Put Spread Plus U (RBER+U)",
  ["RBER-U"] = "Security Sub Type: Ratio 2x1 Put Spread Minus U (RBER-U)",
  ["RBUL"] = "Security Sub Type: Ratio 2x1 Call Spread (RBUL)",
  ["RBUL+U"] = "Security Sub Type: Ratio 2x1 Call Spread Plus U (RBUL+U)",
  ["RBUL-U"] = "Security Sub Type: Ratio 2x1 Call Spread Minus U (RBUL-U)",
  ["RSK"] = "Security Sub Type: Risky (RSK)",
  ["RSK –U"] = "Security Sub Type: Risky Minus U (RSK –U)",
  ["STD"] = "Security Sub Type: Straddle (STD)",
  ["STD +U"] = "Security Sub Type: Straddle Plus U (STD +U)",
  ["STD –U"] = "Security Sub Type: Straddle Minus U (STD –U)",
  ["STG"] = "Security Sub Type: Strangle (STG)",
  ["STG +U"] = "Security Sub Type: Strangle Plus U (STG +U)",
  ["STG -U"] = "Security Sub Type: Strangle Minus U (STG -U)",
  ["SYNT"] = "Security Sub Type: Synthetic (SYNT)",
  ["SYNT-U"] = "Security Sub Type: Synthetic Minus U (SYNT-U)",
  ["OPEN"] = "Security Sub Type: Open Strategy (OPEN)",
  ["OPEN+U"] = "Security Sub Type: Open Strategy Plus U (OPEN+U)",
  ["OPEN-U"] = "Security Sub Type: Open Strategy Minus U (OPEN-U)",
  ["ROLL"] = "Security Sub Type: Time Spread (ROLL)",
}

bme_meff_topofbook5_bmegate_v1_6.security_sub_type.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.security_sub_type.labels[value] or "Security Sub Type: Unknown("..value..")"
end

-- Dissect: Security Sub Type
bme_meff_topofbook5_bmegate_v1_6.security_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.security_sub_type.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.security_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.security_sub_type, range, value, display)

  return offset + length, value
end

-- Security Trading Status
bme_meff_topofbook5_bmegate_v1_6.security_trading_status = {}

-- Size: Security Trading Status
bme_meff_topofbook5_bmegate_v1_6.security_trading_status.size = 1

-- Display: Security Trading Status
bme_meff_topofbook5_bmegate_v1_6.security_trading_status.labels = {
  [17] = "Security Trading Status: Ready To Trade (17)",
  [18] = "Security Trading Status: Not Available For Trading (18)",
  [19] = "Security Trading Status: Not Traded On This Segment (19)",
  [20] = "Security Trading Status: Unknown Or Invalid (20)",
  [21] = "Security Trading Status: Pre Open (21)",
  [26] = "Security Trading Status: Postclose Ready To Trade In Tal (26)",
  [23] = "Security Trading Status: Fast Market (23)",
  [100] = "Security Trading Status: Extraordinary Market Conditions (100)",
}

bme_meff_topofbook5_bmegate_v1_6.security_trading_status.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.security_trading_status.labels[value] or "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
bme_meff_topofbook5_bmegate_v1_6.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.security_trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Security Type
bme_meff_topofbook5_bmegate_v1_6.security_type = {}

-- Size: Security Type
bme_meff_topofbook5_bmegate_v1_6.security_type.size = 2

-- Display: Security Type
bme_meff_topofbook5_bmegate_v1_6.security_type.labels = {
  ["E"] = "Security Type: Strategy (E)",
  ["F"] = "Security Type: Future (F)",
  ["O"] = "Security Type: Option (O)",
  ["R"] = "Security Type: Time Spread (R)",
  ["W"] = "Security Type: Swap (W)",
  ["X"] = "Security Type: Other (X)",
  ["G"] = "Security Type: X Rolling (G)",
}

bme_meff_topofbook5_bmegate_v1_6.security_type.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.security_type.labels[value] or "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
bme_meff_topofbook5_bmegate_v1_6.security_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.security_type.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.security_type, range, value, display)

  return offset + length, value
end

-- Self Match Prevention
bme_meff_topofbook5_bmegate_v1_6.self_match_prevention = {}

-- Size: Self Match Prevention
bme_meff_topofbook5_bmegate_v1_6.self_match_prevention.size = 1

-- Display: Self Match Prevention
bme_meff_topofbook5_bmegate_v1_6.self_match_prevention.display = function(value)
  if value == 0 then
    return "Self Match Prevention: False (0)"
  end
  if value == 1 then
    return "Self Match Prevention: True (1)"
  end
  if value == 255 then
    return "Self Match Prevention: No Value"
  end

  return "Self Match Prevention: Unknown("..value..")"
end

-- Dissect: Self Match Prevention
bme_meff_topofbook5_bmegate_v1_6.self_match_prevention.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.self_match_prevention.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.self_match_prevention.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.self_match_prevention, range, value, display)

  return offset + length, value
end

-- Sell Rf Qs Number
bme_meff_topofbook5_bmegate_v1_6.sell_rf_qs_number = {}

-- Size: Sell Rf Qs Number
bme_meff_topofbook5_bmegate_v1_6.sell_rf_qs_number.size = 2

-- Display: Sell Rf Qs Number
bme_meff_topofbook5_bmegate_v1_6.sell_rf_qs_number.display = function(value)
  return "Sell Rf Qs Number: "..value
end

-- Dissect: Sell Rf Qs Number
bme_meff_topofbook5_bmegate_v1_6.sell_rf_qs_number.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.sell_rf_qs_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.sell_rf_qs_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.sell_rf_qs_number, range, value, display)

  return offset + length, value
end

-- Sequence Number
bme_meff_topofbook5_bmegate_v1_6.sequence_number = {}

-- Size: Sequence Number
bme_meff_topofbook5_bmegate_v1_6.sequence_number.size = 4

-- Display: Sequence Number
bme_meff_topofbook5_bmegate_v1_6.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
bme_meff_topofbook5_bmegate_v1_6.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequence Number To
bme_meff_topofbook5_bmegate_v1_6.sequence_number_to = {}

-- Size: Sequence Number To
bme_meff_topofbook5_bmegate_v1_6.sequence_number_to.size = 4

-- Display: Sequence Number To
bme_meff_topofbook5_bmegate_v1_6.sequence_number_to.display = function(value)
  return "Sequence Number To: "..value
end

-- Dissect: Sequence Number To
bme_meff_topofbook5_bmegate_v1_6.sequence_number_to.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.sequence_number_to.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.sequence_number_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.sequence_number_to, range, value, display)

  return offset + length, value
end

-- Session Date
bme_meff_topofbook5_bmegate_v1_6.session_date = {}

-- Size: Session Date
bme_meff_topofbook5_bmegate_v1_6.session_date.size = 4

-- Display: Session Date
bme_meff_topofbook5_bmegate_v1_6.session_date.display = function(value)
  return string.format("Session Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Session Date
bme_meff_topofbook5_bmegate_v1_6.session_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.session_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_meff_topofbook5_bmegate_v1_6.session_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.session_date, range, value, display)

  return offset + length, value
end

-- Settl Method
bme_meff_topofbook5_bmegate_v1_6.settl_method = {}

-- Size: Settl Method
bme_meff_topofbook5_bmegate_v1_6.settl_method.size = 1

-- Display: Settl Method
bme_meff_topofbook5_bmegate_v1_6.settl_method.labels = {
  ["C"] = "Settl Method: Cash (C)",
  ["P"] = "Settl Method: Physical (P)",
}

bme_meff_topofbook5_bmegate_v1_6.settl_method.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.settl_method.labels[value] or "Settl Method: Unknown("..value..")"
end

-- Dissect: Settl Method
bme_meff_topofbook5_bmegate_v1_6.settl_method.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.settl_method.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.settl_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.settl_method, range, value, display)

  return offset + length, value
end

-- Side
bme_meff_topofbook5_bmegate_v1_6.side = {}

-- Size: Side
bme_meff_topofbook5_bmegate_v1_6.side.size = 1

-- Display: Side
bme_meff_topofbook5_bmegate_v1_6.side.display = function(value)
  if value == "1" then
    return "Side: Buy (1)"
  end
  if value == "2" then
    return "Side: Sell (2)"
  end
  if value == "7" then
    return "Side: Undisclosed (7)"
  end
  if value == 0 then
    return "Side: No Value"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
bme_meff_topofbook5_bmegate_v1_6.side.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = bme_meff_topofbook5_bmegate_v1_6.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.side, range, value, display)

  return offset + length, value
end

-- Sst Ipost
bme_meff_topofbook5_bmegate_v1_6.sst_ipost = {}

-- Size: Sst Ipost
bme_meff_topofbook5_bmegate_v1_6.sst_ipost.size = 8

-- Display: Sst Ipost
bme_meff_topofbook5_bmegate_v1_6.sst_ipost.display = function(value)
  return "Sst Ipost: "..value
end

-- Translate: Sst Ipost
bme_meff_topofbook5_bmegate_v1_6.sst_ipost.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Sst Ipost
bme_meff_topofbook5_bmegate_v1_6.sst_ipost.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.sst_ipost.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.sst_ipost.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.sst_ipost.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.sst_ipost, range, value, display)

  return offset + length, value
end

-- Sst Ipre
bme_meff_topofbook5_bmegate_v1_6.sst_ipre = {}

-- Size: Sst Ipre
bme_meff_topofbook5_bmegate_v1_6.sst_ipre.size = 8

-- Display: Sst Ipre
bme_meff_topofbook5_bmegate_v1_6.sst_ipre.display = function(value)
  return "Sst Ipre: "..value
end

-- Translate: Sst Ipre
bme_meff_topofbook5_bmegate_v1_6.sst_ipre.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Sst Ipre
bme_meff_topofbook5_bmegate_v1_6.sst_ipre.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.sst_ipre.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.sst_ipre.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.sst_ipre.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.sst_ipre, range, value, display)

  return offset + length, value
end

-- Start Maturity Month Year
bme_meff_topofbook5_bmegate_v1_6.start_maturity_month_year = {}

-- Size: Start Maturity Month Year
bme_meff_topofbook5_bmegate_v1_6.start_maturity_month_year.size = 8

-- Display: Start Maturity Month Year
bme_meff_topofbook5_bmegate_v1_6.start_maturity_month_year.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Start Maturity Month Year: No Value"
  end

  return "Start Maturity Month Year: "..value
end

-- Dissect: Start Maturity Month Year
bme_meff_topofbook5_bmegate_v1_6.start_maturity_month_year.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.start_maturity_month_year.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.start_maturity_month_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.start_maturity_month_year, range, value, display)

  return offset + length, value
end

-- Stock When Underlying Is Dividend
bme_meff_topofbook5_bmegate_v1_6.stock_when_underlying_is_dividend = {}

-- Size: Stock When Underlying Is Dividend
bme_meff_topofbook5_bmegate_v1_6.stock_when_underlying_is_dividend.size = 22

-- Display: Stock When Underlying Is Dividend
bme_meff_topofbook5_bmegate_v1_6.stock_when_underlying_is_dividend.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Stock When Underlying Is Dividend: No Value"
  end

  return "Stock When Underlying Is Dividend: "..value
end

-- Dissect: Stock When Underlying Is Dividend
bme_meff_topofbook5_bmegate_v1_6.stock_when_underlying_is_dividend.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.stock_when_underlying_is_dividend.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.stock_when_underlying_is_dividend.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.stock_when_underlying_is_dividend, range, value, display)

  return offset + length, value
end

-- Strategy Trd Match Id
bme_meff_topofbook5_bmegate_v1_6.strategy_trd_match_id = {}

-- Size: Strategy Trd Match Id
bme_meff_topofbook5_bmegate_v1_6.strategy_trd_match_id.size = 4

-- Display: Strategy Trd Match Id
bme_meff_topofbook5_bmegate_v1_6.strategy_trd_match_id.display = function(value)
  return "Strategy Trd Match Id: "..value
end

-- Dissect: Strategy Trd Match Id
bme_meff_topofbook5_bmegate_v1_6.strategy_trd_match_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.strategy_trd_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.strategy_trd_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.strategy_trd_match_id, range, value, display)

  return offset + length, value
end

-- Strike Price
bme_meff_topofbook5_bmegate_v1_6.strike_price = {}

-- Size: Strike Price
bme_meff_topofbook5_bmegate_v1_6.strike_price.size = 8

-- Display: Strike Price
bme_meff_topofbook5_bmegate_v1_6.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
bme_meff_topofbook5_bmegate_v1_6.strike_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Strike Price
bme_meff_topofbook5_bmegate_v1_6.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.strike_price.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Strike Value
bme_meff_topofbook5_bmegate_v1_6.strike_value = {}

-- Size: Strike Value
bme_meff_topofbook5_bmegate_v1_6.strike_value.size = 8

-- Display: Strike Value
bme_meff_topofbook5_bmegate_v1_6.strike_value.display = function(value)
  return "Strike Value: "..value
end

-- Translate: Strike Value
bme_meff_topofbook5_bmegate_v1_6.strike_value.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Strike Value
bme_meff_topofbook5_bmegate_v1_6.strike_value.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.strike_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.strike_value.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.strike_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.strike_value, range, value, display)

  return offset + length, value
end

-- Sub Product
bme_meff_topofbook5_bmegate_v1_6.sub_product = {}

-- Size: Sub Product
bme_meff_topofbook5_bmegate_v1_6.sub_product.size = 4

-- Display: Sub Product
bme_meff_topofbook5_bmegate_v1_6.sub_product.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sub Product: No Value"
  end

  return "Sub Product: "..value
end

-- Dissect: Sub Product
bme_meff_topofbook5_bmegate_v1_6.sub_product.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.sub_product.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.sub_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.sub_product, range, value, display)

  return offset + length, value
end

-- Symbol
bme_meff_topofbook5_bmegate_v1_6.symbol = {}

-- Size: Symbol
bme_meff_topofbook5_bmegate_v1_6.symbol.size = 22

-- Display: Symbol
bme_meff_topofbook5_bmegate_v1_6.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
bme_meff_topofbook5_bmegate_v1_6.symbol.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.symbol.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Isin
bme_meff_topofbook5_bmegate_v1_6.symbol_isin = {}

-- Size: Symbol Isin
bme_meff_topofbook5_bmegate_v1_6.symbol_isin.size = 12

-- Display: Symbol Isin
bme_meff_topofbook5_bmegate_v1_6.symbol_isin.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Isin: No Value"
  end

  return "Symbol Isin: "..value
end

-- Dissect: Symbol Isin
bme_meff_topofbook5_bmegate_v1_6.symbol_isin.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.symbol_isin.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.symbol_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.symbol_isin, range, value, display)

  return offset + length, value
end

-- Test Production Ind
bme_meff_topofbook5_bmegate_v1_6.test_production_ind = {}

-- Size: Test Production Ind
bme_meff_topofbook5_bmegate_v1_6.test_production_ind.size = 1

-- Display: Test Production Ind
bme_meff_topofbook5_bmegate_v1_6.test_production_ind.labels = {
  ["T"] = "Test Production Ind: Test (T)",
  ["P"] = "Test Production Ind: Production (P)",
}

bme_meff_topofbook5_bmegate_v1_6.test_production_ind.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.test_production_ind.labels[value] or "Test Production Ind: Unknown("..value..")"
end

-- Dissect: Test Production Ind
bme_meff_topofbook5_bmegate_v1_6.test_production_ind.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.test_production_ind.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.test_production_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.test_production_ind, range, value, display)

  return offset + length, value
end

-- Trad Ses Status
bme_meff_topofbook5_bmegate_v1_6.trad_ses_status = {}

-- Size: Trad Ses Status
bme_meff_topofbook5_bmegate_v1_6.trad_ses_status.size = 1

-- Display: Trad Ses Status
bme_meff_topofbook5_bmegate_v1_6.trad_ses_status.labels = {
  [1] = "Trad Ses Status: Halted (1)",
  [2] = "Trad Ses Status: Open (2)",
  [3] = "Trad Ses Status: Closed (3)",
  [4] = "Trad Ses Status: Pre Open Not Started (4)",
  [5] = "Trad Ses Status: Pre Close (5)",
  [6] = "Trad Ses Status: Request Rejected (6)",
}

bme_meff_topofbook5_bmegate_v1_6.trad_ses_status.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.trad_ses_status.labels[value] or "Trad Ses Status: Unknown("..value..")"
end

-- Dissect: Trad Ses Status
bme_meff_topofbook5_bmegate_v1_6.trad_ses_status.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.trad_ses_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.trad_ses_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.trad_ses_status, range, value, display)

  return offset + length, value
end

-- Trade Date
bme_meff_topofbook5_bmegate_v1_6.trade_date = {}

-- Size: Trade Date
bme_meff_topofbook5_bmegate_v1_6.trade_date.size = 8

-- Dissect: Trade Date
bme_meff_topofbook5_bmegate_v1_6.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bme_meff_topofbook5_bmegate_v1_6.fields.trade_date
  if bme_meff_topofbook5_bmegate_v1_6.absolute_time_base == 1 then field = omi_bme_meff_topofbook5_bmegate_v1_6.fields.trade_date_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trade Price Condition
bme_meff_topofbook5_bmegate_v1_6.trade_price_condition = {}

-- Size: Trade Price Condition
bme_meff_topofbook5_bmegate_v1_6.trade_price_condition.size = 1

-- Display: Trade Price Condition
bme_meff_topofbook5_bmegate_v1_6.trade_price_condition.display = function(value)
  if value == " " then
    return "Trade Price Condition: Plain Vanilla Trade (<whitespace>)"
  end
  if value == "5" then
    return "Trade Price Condition: Non Price Forming Trade Formerly Defined As A Technical Trade Npft (5)"
  end

  return "Trade Price Condition: Unknown("..value..")"
end

-- Dissect: Trade Price Condition
bme_meff_topofbook5_bmegate_v1_6.trade_price_condition.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.trade_price_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.trade_price_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.trade_price_condition, range, value, display)

  return offset + length, value
end

-- Trade Session Date
bme_meff_topofbook5_bmegate_v1_6.trade_session_date = {}

-- Size: Trade Session Date
bme_meff_topofbook5_bmegate_v1_6.trade_session_date.size = 4

-- Display: Trade Session Date
bme_meff_topofbook5_bmegate_v1_6.trade_session_date.display = function(value)
  return string.format("Trade Session Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Trade Session Date
bme_meff_topofbook5_bmegate_v1_6.trade_session_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.trade_session_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_meff_topofbook5_bmegate_v1_6.trade_session_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.trade_session_date, range, value, display)

  return offset + length, value
end

-- Trade Type
bme_meff_topofbook5_bmegate_v1_6.trade_type = {}

-- Size: Trade Type
bme_meff_topofbook5_bmegate_v1_6.trade_type.size = 1

-- Display: Trade Type
bme_meff_topofbook5_bmegate_v1_6.trade_type.labels = {
  ["H"] = "Trade Type: Cross Trade During Trading Hours (H)",
  ["L"] = "Trade Type: Delta (L)",
  ["M"] = "Trade Type: Market (M)",
  ["R"] = "Trade Type: Strategy Trades Time Spread Futures And Strategies (R)",
  ["S"] = "Trade Type: Components Of Trade R (S)",
  ["W"] = "Trade Type: Trade Amendment (W)",
  ["X"] = "Trade Type: Countertrade (X)",
  ["3"] = "Trade Type: Rfq (3)",
  ["4"] = "Trade Type: Rfq X Rolling (4)",
  ["6"] = "Trade Type: Rfq X Rolling During Auction (6)",
  ["8"] = "Trade Type: Rfq X Rolling Amendment (8)",
  ["9"] = "Trade Type: Rfq X Rolling During Auction Amendment (9)",
}

bme_meff_topofbook5_bmegate_v1_6.trade_type.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.trade_type.labels[value] or "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
bme_meff_topofbook5_bmegate_v1_6.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trading Obligation
bme_meff_topofbook5_bmegate_v1_6.trading_obligation = {}

-- Size: Trading Obligation
bme_meff_topofbook5_bmegate_v1_6.trading_obligation.size = 1

-- Display: Trading Obligation
bme_meff_topofbook5_bmegate_v1_6.trading_obligation.display = function(value)
  if value == 0 then
    return "Trading Obligation: False (0)"
  end
  if value == 1 then
    return "Trading Obligation: True (1)"
  end
  if value == 255 then
    return "Trading Obligation: No Value"
  end

  return "Trading Obligation: Unknown("..value..")"
end

-- Dissect: Trading Obligation
bme_meff_topofbook5_bmegate_v1_6.trading_obligation.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.trading_obligation.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.trading_obligation.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.trading_obligation, range, value, display)

  return offset + length, value
end

-- Trading Session Id
bme_meff_topofbook5_bmegate_v1_6.trading_session_id = {}

-- Size: Trading Session Id
bme_meff_topofbook5_bmegate_v1_6.trading_session_id.size = 1

-- Display: Trading Session Id
bme_meff_topofbook5_bmegate_v1_6.trading_session_id.labels = {
  [100] = "Trading Session Id: Continuous Trading (100)",
  [102] = "Trading Session Id: Block Trades (102)",
  [105] = "Trading Session Id: Normal Hours (105)",
  [106] = "Trading Session Id: Delta And Basis Trade (106)",
  [107] = "Trading Session Id: Bono Hours (107)",
  [108] = "Trading Session Id: Cross Trades Normal Hours (108)",
  [109] = "Trading Session Id: Cross Trades Bono Hours (109)",
  [115] = "Trading Session Id: Rfq Ibex Futures Hours (115)",
  [116] = "Trading Session Id: Rfq Normal Hours (116)",
  [117] = "Trading Session Id: Rfq Bono Hours (117)",
  [118] = "Trading Session Id: X Rolling On Stocks (118)",
}

bme_meff_topofbook5_bmegate_v1_6.trading_session_id.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.trading_session_id.labels[value] or "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id
bme_meff_topofbook5_bmegate_v1_6.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Trading Session Sub Id
bme_meff_topofbook5_bmegate_v1_6.trading_session_sub_id = {}

-- Size: Trading Session Sub Id
bme_meff_topofbook5_bmegate_v1_6.trading_session_sub_id.size = 1

-- Display: Trading Session Sub Id
bme_meff_topofbook5_bmegate_v1_6.trading_session_sub_id.labels = {
  [1] = "Trading Session Sub Id: Pre Trading Not Started (1)",
  [2] = "Trading Session Sub Id: Scheduled Opening Auction (2)",
  [3] = "Trading Session Sub Id: Continuous Trading (3)",
  [4] = "Trading Session Sub Id: Scheduled Closing Auction (4)",
  [5] = "Trading Session Sub Id: Post Trading (5)",
  [6] = "Trading Session Sub Id: Scheduled Intraday Auction (6)",
  [9] = "Trading Session Sub Id: Unscheduled Intraday Auction (9)",
  [202] = "Trading Session Sub Id: Not Started (202)",
  [203] = "Trading Session Sub Id: Open (203)",
  [204] = "Trading Session Sub Id: Closed (204)",
}

bme_meff_topofbook5_bmegate_v1_6.trading_session_sub_id.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.trading_session_sub_id.labels[value] or "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id
bme_meff_topofbook5_bmegate_v1_6.trading_session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.trading_session_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.trading_session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Transaction Category
bme_meff_topofbook5_bmegate_v1_6.transaction_category = {}

-- Size: Transaction Category
bme_meff_topofbook5_bmegate_v1_6.transaction_category.size = 1

-- Display: Transaction Category
bme_meff_topofbook5_bmegate_v1_6.transaction_category.display = function(value)
  if value == " " then
    return "Transaction Category: Normal Category (<whitespace>)"
  end
  if value == "Y" then
    return "Transaction Category: Exchange For Physicals Xfph (Y)"
  end
  if value == "Z" then
    return "Transaction Category: Package Trade Excluding Exchange For Physicals Tpac (Z)"
  end

  return "Transaction Category: Unknown("..value..")"
end

-- Dissect: Transaction Category
bme_meff_topofbook5_bmegate_v1_6.transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.transaction_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Transaction Date And Time
bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time = {}

-- Size: Transaction Date And Time
bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time.size = 8

-- Dissect: Transaction Date And Time
bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bme_meff_topofbook5_bmegate_v1_6.fields.transaction_date_and_time
  if bme_meff_topofbook5_bmegate_v1_6.absolute_time_base == 1 then field = omi_bme_meff_topofbook5_bmegate_v1_6.fields.transaction_date_and_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trd Match Id
bme_meff_topofbook5_bmegate_v1_6.trd_match_id = {}

-- Size: Trd Match Id
bme_meff_topofbook5_bmegate_v1_6.trd_match_id.size = 4

-- Display: Trd Match Id
bme_meff_topofbook5_bmegate_v1_6.trd_match_id.display = function(value)
  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
bme_meff_topofbook5_bmegate_v1_6.trd_match_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.trd_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.trd_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Underlying Asset
bme_meff_topofbook5_bmegate_v1_6.underlying_asset = {}

-- Size: Underlying Asset
bme_meff_topofbook5_bmegate_v1_6.underlying_asset.size = 22

-- Display: Underlying Asset
bme_meff_topofbook5_bmegate_v1_6.underlying_asset.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Asset: No Value"
  end

  return "Underlying Asset: "..value
end

-- Dissect: Underlying Asset
bme_meff_topofbook5_bmegate_v1_6.underlying_asset.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.underlying_asset.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.underlying_asset.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.underlying_asset, range, value, display)

  return offset + length, value
end

-- Underlying Currency
bme_meff_topofbook5_bmegate_v1_6.underlying_currency = {}

-- Size: Underlying Currency
bme_meff_topofbook5_bmegate_v1_6.underlying_currency.size = 3

-- Display: Underlying Currency
bme_meff_topofbook5_bmegate_v1_6.underlying_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Currency: No Value"
  end

  return "Underlying Currency: "..value
end

-- Dissect: Underlying Currency
bme_meff_topofbook5_bmegate_v1_6.underlying_currency.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.underlying_currency.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.underlying_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.underlying_currency, range, value, display)

  return offset + length, value
end

-- Underlying Isin
bme_meff_topofbook5_bmegate_v1_6.underlying_isin = {}

-- Size: Underlying Isin
bme_meff_topofbook5_bmegate_v1_6.underlying_isin.size = 12

-- Display: Underlying Isin
bme_meff_topofbook5_bmegate_v1_6.underlying_isin.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Isin: No Value"
  end

  return "Underlying Isin: "..value
end

-- Dissect: Underlying Isin
bme_meff_topofbook5_bmegate_v1_6.underlying_isin.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.underlying_isin.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.underlying_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.underlying_isin, range, value, display)

  return offset + length, value
end

-- Underlying Security Issuer Lei
bme_meff_topofbook5_bmegate_v1_6.underlying_security_issuer_lei = {}

-- Size: Underlying Security Issuer Lei
bme_meff_topofbook5_bmegate_v1_6.underlying_security_issuer_lei.size = 20

-- Display: Underlying Security Issuer Lei
bme_meff_topofbook5_bmegate_v1_6.underlying_security_issuer_lei.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Security Issuer Lei: No Value"
  end

  return "Underlying Security Issuer Lei: "..value
end

-- Dissect: Underlying Security Issuer Lei
bme_meff_topofbook5_bmegate_v1_6.underlying_security_issuer_lei.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.underlying_security_issuer_lei.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.underlying_security_issuer_lei.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.underlying_security_issuer_lei, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
bme_meff_topofbook5_bmegate_v1_6.underlying_symbol = {}

-- Size: Underlying Symbol
bme_meff_topofbook5_bmegate_v1_6.underlying_symbol.size = 22

-- Display: Underlying Symbol
bme_meff_topofbook5_bmegate_v1_6.underlying_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Symbol: No Value"
  end

  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
bme_meff_topofbook5_bmegate_v1_6.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.underlying_symbol.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unit Of Measure
bme_meff_topofbook5_bmegate_v1_6.unit_of_measure = {}

-- Size: Unit Of Measure
bme_meff_topofbook5_bmegate_v1_6.unit_of_measure.size = 20

-- Display: Unit Of Measure
bme_meff_topofbook5_bmegate_v1_6.unit_of_measure.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Unit Of Measure: No Value"
  end

  return "Unit Of Measure: "..value
end

-- Dissect: Unit Of Measure
bme_meff_topofbook5_bmegate_v1_6.unit_of_measure.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.unit_of_measure.size
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

  local display = bme_meff_topofbook5_bmegate_v1_6.unit_of_measure.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.unit_of_measure, range, value, display)

  return offset + length, value
end

-- X Rolling Buyer Markup
bme_meff_topofbook5_bmegate_v1_6.x_rolling_buyer_markup = {}

-- Size: X Rolling Buyer Markup
bme_meff_topofbook5_bmegate_v1_6.x_rolling_buyer_markup.size = 8

-- Display: X Rolling Buyer Markup
bme_meff_topofbook5_bmegate_v1_6.x_rolling_buyer_markup.display = function(value)
  return "X Rolling Buyer Markup: "..value
end

-- Translate: X Rolling Buyer Markup
bme_meff_topofbook5_bmegate_v1_6.x_rolling_buyer_markup.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: X Rolling Buyer Markup
bme_meff_topofbook5_bmegate_v1_6.x_rolling_buyer_markup.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.x_rolling_buyer_markup.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.x_rolling_buyer_markup.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.x_rolling_buyer_markup.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.x_rolling_buyer_markup, range, value, display)

  return offset + length, value
end

-- X Rolling Closing Type
bme_meff_topofbook5_bmegate_v1_6.x_rolling_closing_type = {}

-- Size: X Rolling Closing Type
bme_meff_topofbook5_bmegate_v1_6.x_rolling_closing_type.size = 1

-- Display: X Rolling Closing Type
bme_meff_topofbook5_bmegate_v1_6.x_rolling_closing_type.labels = {
  ["M"] = "X Rolling Closing Type: Market (M)",
  ["1"] = "X Rolling Closing Type: By Buyer (1)",
  ["2"] = "X Rolling Closing Type: By Seller (2)",
  ["A"] = "X Rolling Closing Type: By Both (A)",
}

bme_meff_topofbook5_bmegate_v1_6.x_rolling_closing_type.display = function(value)
  return bme_meff_topofbook5_bmegate_v1_6.x_rolling_closing_type.labels[value] or "X Rolling Closing Type: Unknown("..value..")"
end

-- Dissect: X Rolling Closing Type
bme_meff_topofbook5_bmegate_v1_6.x_rolling_closing_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.x_rolling_closing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_topofbook5_bmegate_v1_6.x_rolling_closing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.x_rolling_closing_type, range, value, display)

  return offset + length, value
end

-- X Rolling Dividend Pay Date Diff
bme_meff_topofbook5_bmegate_v1_6.x_rolling_dividend_pay_date_diff = {}

-- Size: X Rolling Dividend Pay Date Diff
bme_meff_topofbook5_bmegate_v1_6.x_rolling_dividend_pay_date_diff.size = 2

-- Display: X Rolling Dividend Pay Date Diff
bme_meff_topofbook5_bmegate_v1_6.x_rolling_dividend_pay_date_diff.display = function(value)
  return "X Rolling Dividend Pay Date Diff: "..value
end

-- Dissect: X Rolling Dividend Pay Date Diff
bme_meff_topofbook5_bmegate_v1_6.x_rolling_dividend_pay_date_diff.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.x_rolling_dividend_pay_date_diff.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_topofbook5_bmegate_v1_6.x_rolling_dividend_pay_date_diff.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.x_rolling_dividend_pay_date_diff, range, value, display)

  return offset + length, value
end

-- X Rolling Dividend Percentage
bme_meff_topofbook5_bmegate_v1_6.x_rolling_dividend_percentage = {}

-- Size: X Rolling Dividend Percentage
bme_meff_topofbook5_bmegate_v1_6.x_rolling_dividend_percentage.size = 8

-- Display: X Rolling Dividend Percentage
bme_meff_topofbook5_bmegate_v1_6.x_rolling_dividend_percentage.display = function(value)
  return "X Rolling Dividend Percentage: "..value
end

-- Translate: X Rolling Dividend Percentage
bme_meff_topofbook5_bmegate_v1_6.x_rolling_dividend_percentage.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: X Rolling Dividend Percentage
bme_meff_topofbook5_bmegate_v1_6.x_rolling_dividend_percentage.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.x_rolling_dividend_percentage.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.x_rolling_dividend_percentage.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.x_rolling_dividend_percentage.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.x_rolling_dividend_percentage, range, value, display)

  return offset + length, value
end

-- X Rolling Reference Buyer Rate
bme_meff_topofbook5_bmegate_v1_6.x_rolling_reference_buyer_rate = {}

-- Size: X Rolling Reference Buyer Rate
bme_meff_topofbook5_bmegate_v1_6.x_rolling_reference_buyer_rate.size = 1

-- Display: X Rolling Reference Buyer Rate
bme_meff_topofbook5_bmegate_v1_6.x_rolling_reference_buyer_rate.display = function(value)
  if value == "S" then
    return "X Rolling Reference Buyer Rate: € Str Default Value For Non Flex X Rolling (S)"
  end
  if value == "F" then
    return "X Rolling Reference Buyer Rate: Fis Analitics (F)"
  end
  if value == "M" then
    return "X Rolling Reference Buyer Rate: Meff Rate (M)"
  end
  if value == "0" then
    return "X Rolling Reference Buyer Rate: Zero (0)"
  end
  if value == " " then
    return "X Rolling Reference Buyer Rate: Not Applicable (<whitespace>)"
  end

  return "X Rolling Reference Buyer Rate: Unknown("..value..")"
end

-- Dissect: X Rolling Reference Buyer Rate
bme_meff_topofbook5_bmegate_v1_6.x_rolling_reference_buyer_rate.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.x_rolling_reference_buyer_rate.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = bme_meff_topofbook5_bmegate_v1_6.x_rolling_reference_buyer_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.x_rolling_reference_buyer_rate, range, value, display)

  return offset + length, value
end

-- X Rolling Reference Seller Rate
bme_meff_topofbook5_bmegate_v1_6.x_rolling_reference_seller_rate = {}

-- Size: X Rolling Reference Seller Rate
bme_meff_topofbook5_bmegate_v1_6.x_rolling_reference_seller_rate.size = 1

-- Display: X Rolling Reference Seller Rate
bme_meff_topofbook5_bmegate_v1_6.x_rolling_reference_seller_rate.display = function(value)
  if value == "S" then
    return "X Rolling Reference Seller Rate: € Str (S)"
  end
  if value == "F" then
    return "X Rolling Reference Seller Rate: Fis Analitics (F)"
  end
  if value == "M" then
    return "X Rolling Reference Seller Rate: Meff Rate Default Value For Non Flex X Rolling (M)"
  end
  if value == "0" then
    return "X Rolling Reference Seller Rate: Cero (0)"
  end
  if value == " " then
    return "X Rolling Reference Seller Rate: Not Applicable (<whitespace>)"
  end

  return "X Rolling Reference Seller Rate: Unknown("..value..")"
end

-- Dissect: X Rolling Reference Seller Rate
bme_meff_topofbook5_bmegate_v1_6.x_rolling_reference_seller_rate.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.x_rolling_reference_seller_rate.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = bme_meff_topofbook5_bmegate_v1_6.x_rolling_reference_seller_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.x_rolling_reference_seller_rate, range, value, display)

  return offset + length, value
end

-- X Rolling Seller Markup
bme_meff_topofbook5_bmegate_v1_6.x_rolling_seller_markup = {}

-- Size: X Rolling Seller Markup
bme_meff_topofbook5_bmegate_v1_6.x_rolling_seller_markup.size = 8

-- Display: X Rolling Seller Markup
bme_meff_topofbook5_bmegate_v1_6.x_rolling_seller_markup.display = function(value)
  return "X Rolling Seller Markup: "..value
end

-- Translate: X Rolling Seller Markup
bme_meff_topofbook5_bmegate_v1_6.x_rolling_seller_markup.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: X Rolling Seller Markup
bme_meff_topofbook5_bmegate_v1_6.x_rolling_seller_markup.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_topofbook5_bmegate_v1_6.x_rolling_seller_markup.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_topofbook5_bmegate_v1_6.x_rolling_seller_markup.translate(raw)
  local display = bme_meff_topofbook5_bmegate_v1_6.x_rolling_seller_markup.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.x_rolling_seller_markup, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Bme Meff TopOfBook5 BmeGate 1.6
-----------------------------------------------------------------------

-- Topofbook 5 Levels Message
bme_meff_topofbook5_bmegate_v1_6.topofbook_5_levels_message = {}

-- Size: Topofbook 5 Levels Message
bme_meff_topofbook5_bmegate_v1_6.topofbook_5_levels_message.size =
  bme_meff_topofbook5_bmegate_v1_6.sequence_number.size + 
  bme_meff_topofbook5_bmegate_v1_6.security_code.size + 
  bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_orders_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_size_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_px_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_orders_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_size_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_px_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_orders_2.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_size_2.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_px_2.size + 
  bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_2.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_orders_2.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_size_2.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_px_2.size + 
  bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_2.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_orders_3.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_size_3.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_px_3.size + 
  bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_3.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_orders_3.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_size_3.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_px_3.size + 
  bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_3.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_orders_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_size_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_px_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_orders_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_size_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_px_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_orders_5.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_size_5.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_px_5.size + 
  bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_5.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_orders_5.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_size_5.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_px_5.size + 
  bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_5.size

-- Display: Topofbook 5 Levels Message
bme_meff_topofbook5_bmegate_v1_6.topofbook_5_levels_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Topofbook 5 Levels Message
bme_meff_topofbook5_bmegate_v1_6.topofbook_5_levels_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_topofbook5_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_topofbook5_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Bid Orders 1: U
  index, bid_orders_1 = bme_meff_topofbook5_bmegate_v1_6.bid_orders_1.dissect(buffer, index, packet, parent)

  -- Bid Size 1: Q
  index, bid_size_1 = bme_meff_topofbook5_bmegate_v1_6.bid_size_1.dissect(buffer, index, packet, parent)

  -- Bid Px 1: P
  index, bid_px_1 = bme_meff_topofbook5_bmegate_v1_6.bid_px_1.dissect(buffer, index, packet, parent)

  -- Retail Cl Bid Flag 1: F
  index, retail_cl_bid_flag_1 = bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_1.dissect(buffer, index, packet, parent)

  -- Ask Orders 1: U
  index, ask_orders_1 = bme_meff_topofbook5_bmegate_v1_6.ask_orders_1.dissect(buffer, index, packet, parent)

  -- Ask Size 1: Q
  index, ask_size_1 = bme_meff_topofbook5_bmegate_v1_6.ask_size_1.dissect(buffer, index, packet, parent)

  -- Ask Px 1: P
  index, ask_px_1 = bme_meff_topofbook5_bmegate_v1_6.ask_px_1.dissect(buffer, index, packet, parent)

  -- Retail Cl Ask Flag 1: F
  index, retail_cl_ask_flag_1 = bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_1.dissect(buffer, index, packet, parent)

  -- Bid Orders 2: U
  index, bid_orders_2 = bme_meff_topofbook5_bmegate_v1_6.bid_orders_2.dissect(buffer, index, packet, parent)

  -- Bid Size 2: Q
  index, bid_size_2 = bme_meff_topofbook5_bmegate_v1_6.bid_size_2.dissect(buffer, index, packet, parent)

  -- Bid Px 2: P
  index, bid_px_2 = bme_meff_topofbook5_bmegate_v1_6.bid_px_2.dissect(buffer, index, packet, parent)

  -- Retail Cl Bid Flag 2: F
  index, retail_cl_bid_flag_2 = bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_2.dissect(buffer, index, packet, parent)

  -- Ask Orders 2: U
  index, ask_orders_2 = bme_meff_topofbook5_bmegate_v1_6.ask_orders_2.dissect(buffer, index, packet, parent)

  -- Ask Size 2: Q
  index, ask_size_2 = bme_meff_topofbook5_bmegate_v1_6.ask_size_2.dissect(buffer, index, packet, parent)

  -- Ask Px 2: P
  index, ask_px_2 = bme_meff_topofbook5_bmegate_v1_6.ask_px_2.dissect(buffer, index, packet, parent)

  -- Retail Cl Ask Flag 2: F
  index, retail_cl_ask_flag_2 = bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_2.dissect(buffer, index, packet, parent)

  -- Bid Orders 3: U
  index, bid_orders_3 = bme_meff_topofbook5_bmegate_v1_6.bid_orders_3.dissect(buffer, index, packet, parent)

  -- Bid Size 3: Q
  index, bid_size_3 = bme_meff_topofbook5_bmegate_v1_6.bid_size_3.dissect(buffer, index, packet, parent)

  -- Bid Px 3: P
  index, bid_px_3 = bme_meff_topofbook5_bmegate_v1_6.bid_px_3.dissect(buffer, index, packet, parent)

  -- Retail Cl Bid Flag 3: F
  index, retail_cl_bid_flag_3 = bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_3.dissect(buffer, index, packet, parent)

  -- Ask Orders 3: U
  index, ask_orders_3 = bme_meff_topofbook5_bmegate_v1_6.ask_orders_3.dissect(buffer, index, packet, parent)

  -- Ask Size 3: Q
  index, ask_size_3 = bme_meff_topofbook5_bmegate_v1_6.ask_size_3.dissect(buffer, index, packet, parent)

  -- Ask Px 3: P
  index, ask_px_3 = bme_meff_topofbook5_bmegate_v1_6.ask_px_3.dissect(buffer, index, packet, parent)

  -- Retail Cl Ask Flag 3: F
  index, retail_cl_ask_flag_3 = bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_3.dissect(buffer, index, packet, parent)

  -- Bid Orders 4: U
  index, bid_orders_4 = bme_meff_topofbook5_bmegate_v1_6.bid_orders_4.dissect(buffer, index, packet, parent)

  -- Bid Size 4: Q
  index, bid_size_4 = bme_meff_topofbook5_bmegate_v1_6.bid_size_4.dissect(buffer, index, packet, parent)

  -- Bid Px 4: P
  index, bid_px_4 = bme_meff_topofbook5_bmegate_v1_6.bid_px_4.dissect(buffer, index, packet, parent)

  -- Retail Cl Bid Flag 4: F
  index, retail_cl_bid_flag_4 = bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_4.dissect(buffer, index, packet, parent)

  -- Ask Orders 4: U
  index, ask_orders_4 = bme_meff_topofbook5_bmegate_v1_6.ask_orders_4.dissect(buffer, index, packet, parent)

  -- Ask Size 4: Q
  index, ask_size_4 = bme_meff_topofbook5_bmegate_v1_6.ask_size_4.dissect(buffer, index, packet, parent)

  -- Ask Px 4: P
  index, ask_px_4 = bme_meff_topofbook5_bmegate_v1_6.ask_px_4.dissect(buffer, index, packet, parent)

  -- Retail Cl Ask Flag 4: F
  index, retail_cl_ask_flag_4 = bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_4.dissect(buffer, index, packet, parent)

  -- Bid Orders 5: U
  index, bid_orders_5 = bme_meff_topofbook5_bmegate_v1_6.bid_orders_5.dissect(buffer, index, packet, parent)

  -- Bid Size 5: Q
  index, bid_size_5 = bme_meff_topofbook5_bmegate_v1_6.bid_size_5.dissect(buffer, index, packet, parent)

  -- Bid Px 5: P
  index, bid_px_5 = bme_meff_topofbook5_bmegate_v1_6.bid_px_5.dissect(buffer, index, packet, parent)

  -- Retail Cl Bid Flag 5: F
  index, retail_cl_bid_flag_5 = bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_5.dissect(buffer, index, packet, parent)

  -- Ask Orders 5: U
  index, ask_orders_5 = bme_meff_topofbook5_bmegate_v1_6.ask_orders_5.dissect(buffer, index, packet, parent)

  -- Ask Size 5: Q
  index, ask_size_5 = bme_meff_topofbook5_bmegate_v1_6.ask_size_5.dissect(buffer, index, packet, parent)

  -- Ask Px 5: P
  index, ask_px_5 = bme_meff_topofbook5_bmegate_v1_6.ask_px_5.dissect(buffer, index, packet, parent)

  -- Retail Cl Ask Flag 5: F
  index, retail_cl_ask_flag_5 = bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Topofbook 5 Levels Message
bme_meff_topofbook5_bmegate_v1_6.topofbook_5_levels_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.topofbook_5_levels_message, buffer(offset, 0))
    local index = bme_meff_topofbook5_bmegate_v1_6.topofbook_5_levels_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_topofbook5_bmegate_v1_6.topofbook_5_levels_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_topofbook5_bmegate_v1_6.topofbook_5_levels_message.fields(buffer, offset, packet, parent)
  end
end

-- Topofbook Message
bme_meff_topofbook5_bmegate_v1_6.topofbook_message = {}

-- Size: Topofbook Message
bme_meff_topofbook5_bmegate_v1_6.topofbook_message.size =
  bme_meff_topofbook5_bmegate_v1_6.sequence_number.size + 
  bme_meff_topofbook5_bmegate_v1_6.security_code.size + 
  bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_orders_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_size_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_px_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_orders_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_size_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_px_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_1.size

-- Display: Topofbook Message
bme_meff_topofbook5_bmegate_v1_6.topofbook_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Topofbook Message
bme_meff_topofbook5_bmegate_v1_6.topofbook_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_topofbook5_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_topofbook5_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Bid Orders 1: U
  index, bid_orders_1 = bme_meff_topofbook5_bmegate_v1_6.bid_orders_1.dissect(buffer, index, packet, parent)

  -- Bid Size 1: Q
  index, bid_size_1 = bme_meff_topofbook5_bmegate_v1_6.bid_size_1.dissect(buffer, index, packet, parent)

  -- Bid Px 1: P
  index, bid_px_1 = bme_meff_topofbook5_bmegate_v1_6.bid_px_1.dissect(buffer, index, packet, parent)

  -- Retail Cl Bid Flag 1: F
  index, retail_cl_bid_flag_1 = bme_meff_topofbook5_bmegate_v1_6.retail_cl_bid_flag_1.dissect(buffer, index, packet, parent)

  -- Ask Orders 1: U
  index, ask_orders_1 = bme_meff_topofbook5_bmegate_v1_6.ask_orders_1.dissect(buffer, index, packet, parent)

  -- Ask Size 1: Q
  index, ask_size_1 = bme_meff_topofbook5_bmegate_v1_6.ask_size_1.dissect(buffer, index, packet, parent)

  -- Ask Px 1: P
  index, ask_px_1 = bme_meff_topofbook5_bmegate_v1_6.ask_px_1.dissect(buffer, index, packet, parent)

  -- Retail Cl Ask Flag 1: F
  index, retail_cl_ask_flag_1 = bme_meff_topofbook5_bmegate_v1_6.retail_cl_ask_flag_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Topofbook Message
bme_meff_topofbook5_bmegate_v1_6.topofbook_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.topofbook_message, buffer(offset, 0))
    local index = bme_meff_topofbook5_bmegate_v1_6.topofbook_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_topofbook5_bmegate_v1_6.topofbook_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_topofbook5_bmegate_v1_6.topofbook_message.fields(buffer, offset, packet, parent)
  end
end

-- Rfq Market Pre Transparency Information Message
bme_meff_topofbook5_bmegate_v1_6.rfq_market_pre_transparency_information_message = {}

-- Size: Rfq Market Pre Transparency Information Message
bme_meff_topofbook5_bmegate_v1_6.rfq_market_pre_transparency_information_message.size =
  bme_meff_topofbook5_bmegate_v1_6.sequence_number.size + 
  bme_meff_topofbook5_bmegate_v1_6.rfqid.size + 
  bme_meff_topofbook5_bmegate_v1_6.trading_session_id.size + 
  bme_meff_topofbook5_bmegate_v1_6.security_code.size + 
  bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_topofbook5_bmegate_v1_6.mid_buy_price.size + 
  bme_meff_topofbook5_bmegate_v1_6.mid_buy_volume.size + 
  bme_meff_topofbook5_bmegate_v1_6.buy_rf_qs_number.size + 
  bme_meff_topofbook5_bmegate_v1_6.mid_sell_price.size + 
  bme_meff_topofbook5_bmegate_v1_6.mid_sell_volume.size + 
  bme_meff_topofbook5_bmegate_v1_6.sell_rf_qs_number.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_orders_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_size_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_px_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_orders_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_size_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_px_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_orders_2.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_size_2.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_px_2.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_orders_2.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_size_2.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_px_2.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_orders_3.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_size_3.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_px_3.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_orders_3.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_size_3.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_px_3.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_orders_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_size_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_px_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_orders_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_size_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_px_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_orders_5.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_size_5.size + 
  bme_meff_topofbook5_bmegate_v1_6.bid_px_5.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_orders_5.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_size_5.size + 
  bme_meff_topofbook5_bmegate_v1_6.ask_px_5.size

-- Display: Rfq Market Pre Transparency Information Message
bme_meff_topofbook5_bmegate_v1_6.rfq_market_pre_transparency_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rfq Market Pre Transparency Information Message
bme_meff_topofbook5_bmegate_v1_6.rfq_market_pre_transparency_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_topofbook5_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Rfqid: U
  index, rfqid = bme_meff_topofbook5_bmegate_v1_6.rfqid.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_meff_topofbook5_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_topofbook5_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Mid Buy Price: P
  index, mid_buy_price = bme_meff_topofbook5_bmegate_v1_6.mid_buy_price.dissect(buffer, index, packet, parent)

  -- Mid Buy Volume: Q
  index, mid_buy_volume = bme_meff_topofbook5_bmegate_v1_6.mid_buy_volume.dissect(buffer, index, packet, parent)

  -- Buy Rf Qs Number: U
  index, buy_rf_qs_number = bme_meff_topofbook5_bmegate_v1_6.buy_rf_qs_number.dissect(buffer, index, packet, parent)

  -- Mid Sell Price: P
  index, mid_sell_price = bme_meff_topofbook5_bmegate_v1_6.mid_sell_price.dissect(buffer, index, packet, parent)

  -- Mid Sell Volume: Q
  index, mid_sell_volume = bme_meff_topofbook5_bmegate_v1_6.mid_sell_volume.dissect(buffer, index, packet, parent)

  -- Sell Rf Qs Number: U
  index, sell_rf_qs_number = bme_meff_topofbook5_bmegate_v1_6.sell_rf_qs_number.dissect(buffer, index, packet, parent)

  -- Bid Orders 1: U
  index, bid_orders_1 = bme_meff_topofbook5_bmegate_v1_6.bid_orders_1.dissect(buffer, index, packet, parent)

  -- Bid Size 1: Q
  index, bid_size_1 = bme_meff_topofbook5_bmegate_v1_6.bid_size_1.dissect(buffer, index, packet, parent)

  -- Bid Px 1: P
  index, bid_px_1 = bme_meff_topofbook5_bmegate_v1_6.bid_px_1.dissect(buffer, index, packet, parent)

  -- Ask Orders 1: U
  index, ask_orders_1 = bme_meff_topofbook5_bmegate_v1_6.ask_orders_1.dissect(buffer, index, packet, parent)

  -- Ask Size 1: Q
  index, ask_size_1 = bme_meff_topofbook5_bmegate_v1_6.ask_size_1.dissect(buffer, index, packet, parent)

  -- Ask Px 1: P
  index, ask_px_1 = bme_meff_topofbook5_bmegate_v1_6.ask_px_1.dissect(buffer, index, packet, parent)

  -- Bid Orders 2: U
  index, bid_orders_2 = bme_meff_topofbook5_bmegate_v1_6.bid_orders_2.dissect(buffer, index, packet, parent)

  -- Bid Size 2: Q
  index, bid_size_2 = bme_meff_topofbook5_bmegate_v1_6.bid_size_2.dissect(buffer, index, packet, parent)

  -- Bid Px 2: P
  index, bid_px_2 = bme_meff_topofbook5_bmegate_v1_6.bid_px_2.dissect(buffer, index, packet, parent)

  -- Ask Orders 2: U
  index, ask_orders_2 = bme_meff_topofbook5_bmegate_v1_6.ask_orders_2.dissect(buffer, index, packet, parent)

  -- Ask Size 2: Q
  index, ask_size_2 = bme_meff_topofbook5_bmegate_v1_6.ask_size_2.dissect(buffer, index, packet, parent)

  -- Ask Px 2: P
  index, ask_px_2 = bme_meff_topofbook5_bmegate_v1_6.ask_px_2.dissect(buffer, index, packet, parent)

  -- Bid Orders 3: U
  index, bid_orders_3 = bme_meff_topofbook5_bmegate_v1_6.bid_orders_3.dissect(buffer, index, packet, parent)

  -- Bid Size 3: Q
  index, bid_size_3 = bme_meff_topofbook5_bmegate_v1_6.bid_size_3.dissect(buffer, index, packet, parent)

  -- Bid Px 3: P
  index, bid_px_3 = bme_meff_topofbook5_bmegate_v1_6.bid_px_3.dissect(buffer, index, packet, parent)

  -- Ask Orders 3: U
  index, ask_orders_3 = bme_meff_topofbook5_bmegate_v1_6.ask_orders_3.dissect(buffer, index, packet, parent)

  -- Ask Size 3: Q
  index, ask_size_3 = bme_meff_topofbook5_bmegate_v1_6.ask_size_3.dissect(buffer, index, packet, parent)

  -- Ask Px 3: P
  index, ask_px_3 = bme_meff_topofbook5_bmegate_v1_6.ask_px_3.dissect(buffer, index, packet, parent)

  -- Bid Orders 4: U
  index, bid_orders_4 = bme_meff_topofbook5_bmegate_v1_6.bid_orders_4.dissect(buffer, index, packet, parent)

  -- Bid Size 4: Q
  index, bid_size_4 = bme_meff_topofbook5_bmegate_v1_6.bid_size_4.dissect(buffer, index, packet, parent)

  -- Bid Px 4: P
  index, bid_px_4 = bme_meff_topofbook5_bmegate_v1_6.bid_px_4.dissect(buffer, index, packet, parent)

  -- Ask Orders 4: U
  index, ask_orders_4 = bme_meff_topofbook5_bmegate_v1_6.ask_orders_4.dissect(buffer, index, packet, parent)

  -- Ask Size 4: Q
  index, ask_size_4 = bme_meff_topofbook5_bmegate_v1_6.ask_size_4.dissect(buffer, index, packet, parent)

  -- Ask Px 4: P
  index, ask_px_4 = bme_meff_topofbook5_bmegate_v1_6.ask_px_4.dissect(buffer, index, packet, parent)

  -- Bid Orders 5: U
  index, bid_orders_5 = bme_meff_topofbook5_bmegate_v1_6.bid_orders_5.dissect(buffer, index, packet, parent)

  -- Bid Size 5: Q
  index, bid_size_5 = bme_meff_topofbook5_bmegate_v1_6.bid_size_5.dissect(buffer, index, packet, parent)

  -- Bid Px 5: P
  index, bid_px_5 = bme_meff_topofbook5_bmegate_v1_6.bid_px_5.dissect(buffer, index, packet, parent)

  -- Ask Orders 5: U
  index, ask_orders_5 = bme_meff_topofbook5_bmegate_v1_6.ask_orders_5.dissect(buffer, index, packet, parent)

  -- Ask Size 5: Q
  index, ask_size_5 = bme_meff_topofbook5_bmegate_v1_6.ask_size_5.dissect(buffer, index, packet, parent)

  -- Ask Px 5: P
  index, ask_px_5 = bme_meff_topofbook5_bmegate_v1_6.ask_px_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Market Pre Transparency Information Message
bme_meff_topofbook5_bmegate_v1_6.rfq_market_pre_transparency_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.rfq_market_pre_transparency_information_message, buffer(offset, 0))
    local index = bme_meff_topofbook5_bmegate_v1_6.rfq_market_pre_transparency_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_topofbook5_bmegate_v1_6.rfq_market_pre_transparency_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_topofbook5_bmegate_v1_6.rfq_market_pre_transparency_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Indication Of Interest Message
bme_meff_topofbook5_bmegate_v1_6.indication_of_interest_message = {}

-- Size: Indication Of Interest Message
bme_meff_topofbook5_bmegate_v1_6.indication_of_interest_message.size =
  bme_meff_topofbook5_bmegate_v1_6.sequence_number.size + 
  bme_meff_topofbook5_bmegate_v1_6.security_code.size + 
  bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_topofbook5_bmegate_v1_6.ioiid.size + 
  bme_meff_topofbook5_bmegate_v1_6.ioi_trans_type.size + 
  bme_meff_topofbook5_bmegate_v1_6.side.size + 
  bme_meff_topofbook5_bmegate_v1_6.ioi_qty.size + 
  bme_meff_topofbook5_bmegate_v1_6.ioi_price.size + 
  bme_meff_topofbook5_bmegate_v1_6.ioi_qlty_ind.size + 
  bme_meff_topofbook5_bmegate_v1_6.trading_session_id.size

-- Display: Indication Of Interest Message
bme_meff_topofbook5_bmegate_v1_6.indication_of_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indication Of Interest Message
bme_meff_topofbook5_bmegate_v1_6.indication_of_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_topofbook5_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_topofbook5_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Ioiid: U
  index, ioiid = bme_meff_topofbook5_bmegate_v1_6.ioiid.dissect(buffer, index, packet, parent)

  -- Ioi Trans Type: C
  index, ioi_trans_type = bme_meff_topofbook5_bmegate_v1_6.ioi_trans_type.dissect(buffer, index, packet, parent)

  -- Side: C
  index, side = bme_meff_topofbook5_bmegate_v1_6.side.dissect(buffer, index, packet, parent)

  -- Ioi Qty: Q
  index, ioi_qty = bme_meff_topofbook5_bmegate_v1_6.ioi_qty.dissect(buffer, index, packet, parent)

  -- Ioi Price: P
  index, ioi_price = bme_meff_topofbook5_bmegate_v1_6.ioi_price.dissect(buffer, index, packet, parent)

  -- Ioi Qlty Ind: C
  index, ioi_qlty_ind = bme_meff_topofbook5_bmegate_v1_6.ioi_qlty_ind.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_meff_topofbook5_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indication Of Interest Message
bme_meff_topofbook5_bmegate_v1_6.indication_of_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.indication_of_interest_message, buffer(offset, 0))
    local index = bme_meff_topofbook5_bmegate_v1_6.indication_of_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_topofbook5_bmegate_v1_6.indication_of_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_topofbook5_bmegate_v1_6.indication_of_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Trade Amendment Or Cancellation Message
bme_meff_topofbook5_bmegate_v1_6.trade_trade_amendment_or_cancellation_message = {}

-- Size: Trade Trade Amendment Or Cancellation Message
bme_meff_topofbook5_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.size =
  bme_meff_topofbook5_bmegate_v1_6.sequence_number.size + 
  bme_meff_topofbook5_bmegate_v1_6.security_code.size + 
  bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_topofbook5_bmegate_v1_6.market_segment_id.size + 
  bme_meff_topofbook5_bmegate_v1_6.trading_session_id.size + 
  bme_meff_topofbook5_bmegate_v1_6.trd_match_id.size + 
  bme_meff_topofbook5_bmegate_v1_6.trade_type.size + 
  bme_meff_topofbook5_bmegate_v1_6.last_px.size + 
  bme_meff_topofbook5_bmegate_v1_6.last_qty.size + 
  bme_meff_topofbook5_bmegate_v1_6.gross_trade_amt.size + 
  bme_meff_topofbook5_bmegate_v1_6.designation.size + 
  bme_meff_topofbook5_bmegate_v1_6.market_mechanism.size + 
  bme_meff_topofbook5_bmegate_v1_6.algo_flag.size + 
  bme_meff_topofbook5_bmegate_v1_6.transaction_category.size + 
  bme_meff_topofbook5_bmegate_v1_6.strategy_trd_match_id.size + 
  bme_meff_topofbook5_bmegate_v1_6.last_change_flag.size + 
  bme_meff_topofbook5_bmegate_v1_6.bencrfpt_flag.size + 
  bme_meff_topofbook5_bmegate_v1_6.trade_price_condition.size + 
  bme_meff_topofbook5_bmegate_v1_6.pre_trade_transparency_waiver.size + 
  bme_meff_topofbook5_bmegate_v1_6.deferral_waiver.size + 
  bme_meff_topofbook5_bmegate_v1_6.post_deferral_publication_type.size + 
  bme_meff_topofbook5_bmegate_v1_6.publish_date_and_time.size + 
  bme_meff_topofbook5_bmegate_v1_6.trade_date.size + 
  bme_meff_topofbook5_bmegate_v1_6.trade_session_date.size + 
  bme_meff_topofbook5_bmegate_v1_6.amended_trade_type.size + 
  bme_meff_topofbook5_bmegate_v1_6.exec_ref_id.size + 
  bme_meff_topofbook5_bmegate_v1_6.amended_trade_date.size

-- Display: Trade Trade Amendment Or Cancellation Message
bme_meff_topofbook5_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Trade Amendment Or Cancellation Message
bme_meff_topofbook5_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_topofbook5_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_topofbook5_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_meff_topofbook5_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_meff_topofbook5_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: U
  index, trd_match_id = bme_meff_topofbook5_bmegate_v1_6.trd_match_id.dissect(buffer, index, packet, parent)

  -- Trade Type: C
  index, trade_type = bme_meff_topofbook5_bmegate_v1_6.trade_type.dissect(buffer, index, packet, parent)

  -- Last Px: P
  index, last_px = bme_meff_topofbook5_bmegate_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Q
  index, last_qty = bme_meff_topofbook5_bmegate_v1_6.last_qty.dissect(buffer, index, packet, parent)

  -- Gross Trade Amt: A
  index, gross_trade_amt = bme_meff_topofbook5_bmegate_v1_6.gross_trade_amt.dissect(buffer, index, packet, parent)

  -- Designation: C
  index, designation = bme_meff_topofbook5_bmegate_v1_6.designation.dissect(buffer, index, packet, parent)

  -- Market Mechanism: C
  index, market_mechanism = bme_meff_topofbook5_bmegate_v1_6.market_mechanism.dissect(buffer, index, packet, parent)

  -- Algo Flag: F
  index, algo_flag = bme_meff_topofbook5_bmegate_v1_6.algo_flag.dissect(buffer, index, packet, parent)

  -- Transaction Category: C
  index, transaction_category = bme_meff_topofbook5_bmegate_v1_6.transaction_category.dissect(buffer, index, packet, parent)

  -- Strategy Trd Match Id: U
  index, strategy_trd_match_id = bme_meff_topofbook5_bmegate_v1_6.strategy_trd_match_id.dissect(buffer, index, packet, parent)

  -- Last Change Flag: F
  index, last_change_flag = bme_meff_topofbook5_bmegate_v1_6.last_change_flag.dissect(buffer, index, packet, parent)

  -- Bencrfpt Flag: C
  index, bencrfpt_flag = bme_meff_topofbook5_bmegate_v1_6.bencrfpt_flag.dissect(buffer, index, packet, parent)

  -- Trade Price Condition: C
  index, trade_price_condition = bme_meff_topofbook5_bmegate_v1_6.trade_price_condition.dissect(buffer, index, packet, parent)

  -- Pre Trade Transparency Waiver: C
  index, pre_trade_transparency_waiver = bme_meff_topofbook5_bmegate_v1_6.pre_trade_transparency_waiver.dissect(buffer, index, packet, parent)

  -- Deferral Waiver: C
  index, deferral_waiver = bme_meff_topofbook5_bmegate_v1_6.deferral_waiver.dissect(buffer, index, packet, parent)

  -- Post Deferral Publication Type: C
  index, post_deferral_publication_type = bme_meff_topofbook5_bmegate_v1_6.post_deferral_publication_type.dissect(buffer, index, packet, parent)

  -- Publish Date And Time: T
  index, publish_date_and_time = bme_meff_topofbook5_bmegate_v1_6.publish_date_and_time.dissect(buffer, index, packet, parent)

  -- Trade Date: T
  index, trade_date = bme_meff_topofbook5_bmegate_v1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Trade Session Date: D
  index, trade_session_date = bme_meff_topofbook5_bmegate_v1_6.trade_session_date.dissect(buffer, index, packet, parent)

  -- Amended Trade Type: C
  index, amended_trade_type = bme_meff_topofbook5_bmegate_v1_6.amended_trade_type.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: U
  index, exec_ref_id = bme_meff_topofbook5_bmegate_v1_6.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Amended Trade Date: D
  index, amended_trade_date = bme_meff_topofbook5_bmegate_v1_6.amended_trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Trade Amendment Or Cancellation Message
bme_meff_topofbook5_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.trade_trade_amendment_or_cancellation_message, buffer(offset, 0))
    local index = bme_meff_topofbook5_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_topofbook5_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_topofbook5_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Market Post Transparency Information Topofbook Message
bme_meff_topofbook5_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message = {}

-- Size: Trade Market Post Transparency Information Topofbook Message
bme_meff_topofbook5_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.size =
  bme_meff_topofbook5_bmegate_v1_6.sequence_number.size + 
  bme_meff_topofbook5_bmegate_v1_6.security_code.size + 
  bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_topofbook5_bmegate_v1_6.market_segment_id.size + 
  bme_meff_topofbook5_bmegate_v1_6.trading_session_id.size + 
  bme_meff_topofbook5_bmegate_v1_6.trd_match_id.size + 
  bme_meff_topofbook5_bmegate_v1_6.trade_type.size + 
  bme_meff_topofbook5_bmegate_v1_6.last_px.size + 
  bme_meff_topofbook5_bmegate_v1_6.last_qty.size + 
  bme_meff_topofbook5_bmegate_v1_6.gross_trade_amt.size + 
  bme_meff_topofbook5_bmegate_v1_6.designation.size + 
  bme_meff_topofbook5_bmegate_v1_6.market_mechanism.size + 
  bme_meff_topofbook5_bmegate_v1_6.algo_flag.size + 
  bme_meff_topofbook5_bmegate_v1_6.transaction_category.size + 
  bme_meff_topofbook5_bmegate_v1_6.strategy_trd_match_id.size

-- Display: Trade Market Post Transparency Information Topofbook Message
bme_meff_topofbook5_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Market Post Transparency Information Topofbook Message
bme_meff_topofbook5_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_topofbook5_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_topofbook5_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_meff_topofbook5_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_meff_topofbook5_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: U
  index, trd_match_id = bme_meff_topofbook5_bmegate_v1_6.trd_match_id.dissect(buffer, index, packet, parent)

  -- Trade Type: C
  index, trade_type = bme_meff_topofbook5_bmegate_v1_6.trade_type.dissect(buffer, index, packet, parent)

  -- Last Px: P
  index, last_px = bme_meff_topofbook5_bmegate_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Q
  index, last_qty = bme_meff_topofbook5_bmegate_v1_6.last_qty.dissect(buffer, index, packet, parent)

  -- Gross Trade Amt: A
  index, gross_trade_amt = bme_meff_topofbook5_bmegate_v1_6.gross_trade_amt.dissect(buffer, index, packet, parent)

  -- Designation: C
  index, designation = bme_meff_topofbook5_bmegate_v1_6.designation.dissect(buffer, index, packet, parent)

  -- Market Mechanism: C
  index, market_mechanism = bme_meff_topofbook5_bmegate_v1_6.market_mechanism.dissect(buffer, index, packet, parent)

  -- Algo Flag: F
  index, algo_flag = bme_meff_topofbook5_bmegate_v1_6.algo_flag.dissect(buffer, index, packet, parent)

  -- Transaction Category: C
  index, transaction_category = bme_meff_topofbook5_bmegate_v1_6.transaction_category.dissect(buffer, index, packet, parent)

  -- Strategy Trd Match Id: U
  index, strategy_trd_match_id = bme_meff_topofbook5_bmegate_v1_6.strategy_trd_match_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Market Post Transparency Information Topofbook Message
bme_meff_topofbook5_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.trade_market_post_transparency_information_topofbook_message, buffer(offset, 0))
    local index = bme_meff_topofbook5_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_topofbook5_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_topofbook5_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.fields(buffer, offset, packet, parent)
  end
end

-- Family Status Message
bme_meff_topofbook5_bmegate_v1_6.family_status_message = {}

-- Size: Family Status Message
bme_meff_topofbook5_bmegate_v1_6.family_status_message.size =
  bme_meff_topofbook5_bmegate_v1_6.sequence_number.size + 
  bme_meff_topofbook5_bmegate_v1_6.security_group.size + 
  bme_meff_topofbook5_bmegate_v1_6.family_code.size + 
  bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_topofbook5_bmegate_v1_6.security_trading_status.size + 
  bme_meff_topofbook5_bmegate_v1_6.non_availability_reason.size

-- Display: Family Status Message
bme_meff_topofbook5_bmegate_v1_6.family_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Family Status Message
bme_meff_topofbook5_bmegate_v1_6.family_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_topofbook5_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Group: C
  index, security_group = bme_meff_topofbook5_bmegate_v1_6.security_group.dissect(buffer, index, packet, parent)

  -- Family Code: C
  index, family_code = bme_meff_topofbook5_bmegate_v1_6.family_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Security Trading Status: U
  index, security_trading_status = bme_meff_topofbook5_bmegate_v1_6.security_trading_status.dissect(buffer, index, packet, parent)

  -- Non Availability Reason: U
  index, non_availability_reason = bme_meff_topofbook5_bmegate_v1_6.non_availability_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Family Status Message
bme_meff_topofbook5_bmegate_v1_6.family_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.family_status_message, buffer(offset, 0))
    local index = bme_meff_topofbook5_bmegate_v1_6.family_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_topofbook5_bmegate_v1_6.family_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_topofbook5_bmegate_v1_6.family_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Message
bme_meff_topofbook5_bmegate_v1_6.security_status_message = {}

-- Size: Security Status Message
bme_meff_topofbook5_bmegate_v1_6.security_status_message.size =
  bme_meff_topofbook5_bmegate_v1_6.sequence_number.size + 
  bme_meff_topofbook5_bmegate_v1_6.security_code.size + 
  bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_topofbook5_bmegate_v1_6.security_trading_status.size + 
  bme_meff_topofbook5_bmegate_v1_6.non_availability_reason.size + 
  bme_meff_topofbook5_bmegate_v1_6.high_limit_price.size + 
  bme_meff_topofbook5_bmegate_v1_6.low_limit_price.size

-- Display: Security Status Message
bme_meff_topofbook5_bmegate_v1_6.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
bme_meff_topofbook5_bmegate_v1_6.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_topofbook5_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_topofbook5_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Security Trading Status: U
  index, security_trading_status = bme_meff_topofbook5_bmegate_v1_6.security_trading_status.dissect(buffer, index, packet, parent)

  -- Non Availability Reason: U
  index, non_availability_reason = bme_meff_topofbook5_bmegate_v1_6.non_availability_reason.dissect(buffer, index, packet, parent)

  -- High Limit Price: P
  index, high_limit_price = bme_meff_topofbook5_bmegate_v1_6.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: P
  index, low_limit_price = bme_meff_topofbook5_bmegate_v1_6.low_limit_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
bme_meff_topofbook5_bmegate_v1_6.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.security_status_message, buffer(offset, 0))
    local index = bme_meff_topofbook5_bmegate_v1_6.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_topofbook5_bmegate_v1_6.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_topofbook5_bmegate_v1_6.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Security List Update Report Message
bme_meff_topofbook5_bmegate_v1_6.security_list_update_report_message = {}

-- Size: Security List Update Report Message
bme_meff_topofbook5_bmegate_v1_6.security_list_update_report_message.size =
  bme_meff_topofbook5_bmegate_v1_6.sequence_number.size + 
  bme_meff_topofbook5_bmegate_v1_6.market_id.size + 
  bme_meff_topofbook5_bmegate_v1_6.market_segment_id.size + 
  bme_meff_topofbook5_bmegate_v1_6.security_code.size + 
  bme_meff_topofbook5_bmegate_v1_6.symbol.size + 
  bme_meff_topofbook5_bmegate_v1_6.symbol_isin.size + 
  bme_meff_topofbook5_bmegate_v1_6.fisn.size + 
  bme_meff_topofbook5_bmegate_v1_6.issuer_lei.size + 
  bme_meff_topofbook5_bmegate_v1_6.security_group.size + 
  bme_meff_topofbook5_bmegate_v1_6.family_code.size + 
  bme_meff_topofbook5_bmegate_v1_6.cfi_code.size + 
  bme_meff_topofbook5_bmegate_v1_6.security_type.size + 
  bme_meff_topofbook5_bmegate_v1_6.maturity_date.size + 
  bme_meff_topofbook5_bmegate_v1_6.issue_date.size + 
  bme_meff_topofbook5_bmegate_v1_6.contract_multiplier.size + 
  bme_meff_topofbook5_bmegate_v1_6.li_spre.size + 
  bme_meff_topofbook5_bmegate_v1_6.sst_ipre.size + 
  bme_meff_topofbook5_bmegate_v1_6.li_spost.size + 
  bme_meff_topofbook5_bmegate_v1_6.sst_ipost.size + 
  bme_meff_topofbook5_bmegate_v1_6.liquid_instrument.size + 
  bme_meff_topofbook5_bmegate_v1_6.admission_requested_by_issuer.size + 
  bme_meff_topofbook5_bmegate_v1_6.min_trade_vol.size + 
  bme_meff_topofbook5_bmegate_v1_6.round_lot.size + 
  bme_meff_topofbook5_bmegate_v1_6.currency.size + 
  bme_meff_topofbook5_bmegate_v1_6.modality_mask_b_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.security_description.size + 
  bme_meff_topofbook5_bmegate_v1_6.trading_obligation.size + 
  bme_meff_topofbook5_bmegate_v1_6.sec_description.size + 
  bme_meff_topofbook5_bmegate_v1_6.underlying_asset.size + 
  bme_meff_topofbook5_bmegate_v1_6.security_sub_type.size + 
  bme_meff_topofbook5_bmegate_v1_6.maturity_month_year.size + 
  bme_meff_topofbook5_bmegate_v1_6.strike_price.size + 
  bme_meff_topofbook5_bmegate_v1_6.strike_value.size + 
  bme_meff_topofbook5_bmegate_v1_6.opt_attribute.size + 
  bme_meff_topofbook5_bmegate_v1_6.min_price_increment.size + 
  bme_meff_topofbook5_bmegate_v1_6.unit_of_measure.size + 
  bme_meff_topofbook5_bmegate_v1_6.settl_method.size + 
  bme_meff_topofbook5_bmegate_v1_6.exercise_style.size + 
  bme_meff_topofbook5_bmegate_v1_6.put_or_call.size + 
  bme_meff_topofbook5_bmegate_v1_6.flexible_indicator.size + 
  bme_meff_topofbook5_bmegate_v1_6.last_trading_day.size + 
  bme_meff_topofbook5_bmegate_v1_6.number_of_decimals.size + 
  bme_meff_topofbook5_bmegate_v1_6.order_number_of_decimals.size + 
  bme_meff_topofbook5_bmegate_v1_6.adjustments_rule.size + 
  bme_meff_topofbook5_bmegate_v1_6.maximum_order_size.size + 
  bme_meff_topofbook5_bmegate_v1_6.self_match_prevention.size + 
  bme_meff_topofbook5_bmegate_v1_6.commodity_derivative_indicator.size + 
  bme_meff_topofbook5_bmegate_v1_6.stock_when_underlying_is_dividend.size + 
  bme_meff_topofbook5_bmegate_v1_6.base_product.size + 
  bme_meff_topofbook5_bmegate_v1_6.sub_product.size + 
  bme_meff_topofbook5_bmegate_v1_6.further_sub_product.size + 
  bme_meff_topofbook5_bmegate_v1_6.base_currency.size + 
  bme_meff_topofbook5_bmegate_v1_6.quoted_currency.size + 
  bme_meff_topofbook5_bmegate_v1_6.maturity_month_year_increment_units.size + 
  bme_meff_topofbook5_bmegate_v1_6.start_maturity_month_year.size + 
  bme_meff_topofbook5_bmegate_v1_6.end_maturity_month_year.size + 
  bme_meff_topofbook5_bmegate_v1_6.maturity_month_year_increment.size + 
  bme_meff_topofbook5_bmegate_v1_6.underlying_symbol.size + 
  bme_meff_topofbook5_bmegate_v1_6.underlying_isin.size + 
  bme_meff_topofbook5_bmegate_v1_6.underlying_currency.size + 
  bme_meff_topofbook5_bmegate_v1_6.underlying_security_issuer_lei.size + 
  bme_meff_topofbook5_bmegate_v1_6.x_rolling_closing_type.size + 
  bme_meff_topofbook5_bmegate_v1_6.x_rolling_reference_buyer_rate.size + 
  bme_meff_topofbook5_bmegate_v1_6.x_rolling_buyer_markup.size + 
  bme_meff_topofbook5_bmegate_v1_6.x_rolling_reference_seller_rate.size + 
  bme_meff_topofbook5_bmegate_v1_6.x_rolling_seller_markup.size + 
  bme_meff_topofbook5_bmegate_v1_6.x_rolling_dividend_percentage.size + 
  bme_meff_topofbook5_bmegate_v1_6.x_rolling_dividend_pay_date_diff.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_symbol_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_side_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_price_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_symbol_2.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_2.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_side_2.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_price_2.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_symbol_3.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_3.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_side_3.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_price_3.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_symbol_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_side_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_price_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_symbol_5.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_5.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_side_5.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_price_5.size

-- Display: Security List Update Report Message
bme_meff_topofbook5_bmegate_v1_6.security_list_update_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Update Report Message
bme_meff_topofbook5_bmegate_v1_6.security_list_update_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_topofbook5_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Market Id: C
  index, market_id = bme_meff_topofbook5_bmegate_v1_6.market_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_meff_topofbook5_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_topofbook5_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Symbol: C
  index, symbol = bme_meff_topofbook5_bmegate_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Isin: C
  index, symbol_isin = bme_meff_topofbook5_bmegate_v1_6.symbol_isin.dissect(buffer, index, packet, parent)

  -- Fisn: C
  index, fisn = bme_meff_topofbook5_bmegate_v1_6.fisn.dissect(buffer, index, packet, parent)

  -- Issuer Lei: C
  index, issuer_lei = bme_meff_topofbook5_bmegate_v1_6.issuer_lei.dissect(buffer, index, packet, parent)

  -- Security Group: C
  index, security_group = bme_meff_topofbook5_bmegate_v1_6.security_group.dissect(buffer, index, packet, parent)

  -- Family Code: C
  index, family_code = bme_meff_topofbook5_bmegate_v1_6.family_code.dissect(buffer, index, packet, parent)

  -- Cfi Code: C
  index, cfi_code = bme_meff_topofbook5_bmegate_v1_6.cfi_code.dissect(buffer, index, packet, parent)

  -- Security Type: C
  index, security_type = bme_meff_topofbook5_bmegate_v1_6.security_type.dissect(buffer, index, packet, parent)

  -- Maturity Date: D
  index, maturity_date = bme_meff_topofbook5_bmegate_v1_6.maturity_date.dissect(buffer, index, packet, parent)

  -- Issue Date: D
  index, issue_date = bme_meff_topofbook5_bmegate_v1_6.issue_date.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: A
  index, contract_multiplier = bme_meff_topofbook5_bmegate_v1_6.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Li Spre: A
  index, li_spre = bme_meff_topofbook5_bmegate_v1_6.li_spre.dissect(buffer, index, packet, parent)

  -- Sst Ipre: A
  index, sst_ipre = bme_meff_topofbook5_bmegate_v1_6.sst_ipre.dissect(buffer, index, packet, parent)

  -- Li Spost: A
  index, li_spost = bme_meff_topofbook5_bmegate_v1_6.li_spost.dissect(buffer, index, packet, parent)

  -- Sst Ipost: A
  index, sst_ipost = bme_meff_topofbook5_bmegate_v1_6.sst_ipost.dissect(buffer, index, packet, parent)

  -- Liquid Instrument: F
  index, liquid_instrument = bme_meff_topofbook5_bmegate_v1_6.liquid_instrument.dissect(buffer, index, packet, parent)

  -- Admission Requested By Issuer: F
  index, admission_requested_by_issuer = bme_meff_topofbook5_bmegate_v1_6.admission_requested_by_issuer.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: Q
  index, min_trade_vol = bme_meff_topofbook5_bmegate_v1_6.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Round Lot: Q
  index, round_lot = bme_meff_topofbook5_bmegate_v1_6.round_lot.dissect(buffer, index, packet, parent)

  -- Currency: C
  index, currency = bme_meff_topofbook5_bmegate_v1_6.currency.dissect(buffer, index, packet, parent)

  -- Modality Mask B 4: B
  index, modality_mask_b_4 = bme_meff_topofbook5_bmegate_v1_6.modality_mask_b_4.dissect(buffer, index, packet, parent)

  -- Security Description: C
  index, security_description = bme_meff_topofbook5_bmegate_v1_6.security_description.dissect(buffer, index, packet, parent)

  -- Trading Obligation: F
  index, trading_obligation = bme_meff_topofbook5_bmegate_v1_6.trading_obligation.dissect(buffer, index, packet, parent)

  -- Sec Description: C
  index, sec_description = bme_meff_topofbook5_bmegate_v1_6.sec_description.dissect(buffer, index, packet, parent)

  -- Underlying Asset: C
  index, underlying_asset = bme_meff_topofbook5_bmegate_v1_6.underlying_asset.dissect(buffer, index, packet, parent)

  -- Security Sub Type: C
  index, security_sub_type = bme_meff_topofbook5_bmegate_v1_6.security_sub_type.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: C
  index, maturity_month_year = bme_meff_topofbook5_bmegate_v1_6.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Strike Price: P
  index, strike_price = bme_meff_topofbook5_bmegate_v1_6.strike_price.dissect(buffer, index, packet, parent)

  -- Strike Value: A
  index, strike_value = bme_meff_topofbook5_bmegate_v1_6.strike_value.dissect(buffer, index, packet, parent)

  -- Opt Attribute: C
  index, opt_attribute = bme_meff_topofbook5_bmegate_v1_6.opt_attribute.dissect(buffer, index, packet, parent)

  -- Min Price Increment: P
  index, min_price_increment = bme_meff_topofbook5_bmegate_v1_6.min_price_increment.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: C
  index, unit_of_measure = bme_meff_topofbook5_bmegate_v1_6.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Settl Method: C
  index, settl_method = bme_meff_topofbook5_bmegate_v1_6.settl_method.dissect(buffer, index, packet, parent)

  -- Exercise Style: C
  index, exercise_style = bme_meff_topofbook5_bmegate_v1_6.exercise_style.dissect(buffer, index, packet, parent)

  -- Put Or Call: C
  index, put_or_call = bme_meff_topofbook5_bmegate_v1_6.put_or_call.dissect(buffer, index, packet, parent)

  -- Flexible Indicator: C
  index, flexible_indicator = bme_meff_topofbook5_bmegate_v1_6.flexible_indicator.dissect(buffer, index, packet, parent)

  -- Last Trading Day: D
  index, last_trading_day = bme_meff_topofbook5_bmegate_v1_6.last_trading_day.dissect(buffer, index, packet, parent)

  -- Number Of Decimals: U
  index, number_of_decimals = bme_meff_topofbook5_bmegate_v1_6.number_of_decimals.dissect(buffer, index, packet, parent)

  -- Order Number Of Decimals: U
  index, order_number_of_decimals = bme_meff_topofbook5_bmegate_v1_6.order_number_of_decimals.dissect(buffer, index, packet, parent)

  -- Adjustments Rule: C
  index, adjustments_rule = bme_meff_topofbook5_bmegate_v1_6.adjustments_rule.dissect(buffer, index, packet, parent)

  -- Maximum Order Size: A
  index, maximum_order_size = bme_meff_topofbook5_bmegate_v1_6.maximum_order_size.dissect(buffer, index, packet, parent)

  -- Self Match Prevention: F
  index, self_match_prevention = bme_meff_topofbook5_bmegate_v1_6.self_match_prevention.dissect(buffer, index, packet, parent)

  -- Commodity Derivative Indicator: C
  index, commodity_derivative_indicator = bme_meff_topofbook5_bmegate_v1_6.commodity_derivative_indicator.dissect(buffer, index, packet, parent)

  -- Stock When Underlying Is Dividend: C
  index, stock_when_underlying_is_dividend = bme_meff_topofbook5_bmegate_v1_6.stock_when_underlying_is_dividend.dissect(buffer, index, packet, parent)

  -- Base Product: C
  index, base_product = bme_meff_topofbook5_bmegate_v1_6.base_product.dissect(buffer, index, packet, parent)

  -- Sub Product: C
  index, sub_product = bme_meff_topofbook5_bmegate_v1_6.sub_product.dissect(buffer, index, packet, parent)

  -- Further Sub Product: C
  index, further_sub_product = bme_meff_topofbook5_bmegate_v1_6.further_sub_product.dissect(buffer, index, packet, parent)

  -- Base Currency: C
  index, base_currency = bme_meff_topofbook5_bmegate_v1_6.base_currency.dissect(buffer, index, packet, parent)

  -- Quoted Currency: C
  index, quoted_currency = bme_meff_topofbook5_bmegate_v1_6.quoted_currency.dissect(buffer, index, packet, parent)

  -- Maturity Month Year Increment Units: C
  index, maturity_month_year_increment_units = bme_meff_topofbook5_bmegate_v1_6.maturity_month_year_increment_units.dissect(buffer, index, packet, parent)

  -- Start Maturity Month Year: C
  index, start_maturity_month_year = bme_meff_topofbook5_bmegate_v1_6.start_maturity_month_year.dissect(buffer, index, packet, parent)

  -- End Maturity Month Year: C
  index, end_maturity_month_year = bme_meff_topofbook5_bmegate_v1_6.end_maturity_month_year.dissect(buffer, index, packet, parent)

  -- Maturity Month Year Increment: U
  index, maturity_month_year_increment = bme_meff_topofbook5_bmegate_v1_6.maturity_month_year_increment.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: C
  index, underlying_symbol = bme_meff_topofbook5_bmegate_v1_6.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Underlying Isin: C
  index, underlying_isin = bme_meff_topofbook5_bmegate_v1_6.underlying_isin.dissect(buffer, index, packet, parent)

  -- Underlying Currency: C
  index, underlying_currency = bme_meff_topofbook5_bmegate_v1_6.underlying_currency.dissect(buffer, index, packet, parent)

  -- Underlying Security Issuer Lei: C
  index, underlying_security_issuer_lei = bme_meff_topofbook5_bmegate_v1_6.underlying_security_issuer_lei.dissect(buffer, index, packet, parent)

  -- X Rolling Closing Type: C
  index, x_rolling_closing_type = bme_meff_topofbook5_bmegate_v1_6.x_rolling_closing_type.dissect(buffer, index, packet, parent)

  -- X Rolling Reference Buyer Rate: C
  index, x_rolling_reference_buyer_rate = bme_meff_topofbook5_bmegate_v1_6.x_rolling_reference_buyer_rate.dissect(buffer, index, packet, parent)

  -- X Rolling Buyer Markup: R
  index, x_rolling_buyer_markup = bme_meff_topofbook5_bmegate_v1_6.x_rolling_buyer_markup.dissect(buffer, index, packet, parent)

  -- X Rolling Reference Seller Rate: C
  index, x_rolling_reference_seller_rate = bme_meff_topofbook5_bmegate_v1_6.x_rolling_reference_seller_rate.dissect(buffer, index, packet, parent)

  -- X Rolling Seller Markup: R
  index, x_rolling_seller_markup = bme_meff_topofbook5_bmegate_v1_6.x_rolling_seller_markup.dissect(buffer, index, packet, parent)

  -- X Rolling Dividend Percentage: R
  index, x_rolling_dividend_percentage = bme_meff_topofbook5_bmegate_v1_6.x_rolling_dividend_percentage.dissect(buffer, index, packet, parent)

  -- X Rolling Dividend Pay Date Diff: U
  index, x_rolling_dividend_pay_date_diff = bme_meff_topofbook5_bmegate_v1_6.x_rolling_dividend_pay_date_diff.dissect(buffer, index, packet, parent)

  -- Leg Symbol 1: C
  index, leg_symbol_1 = bme_meff_topofbook5_bmegate_v1_6.leg_symbol_1.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty 1: Q
  index, leg_ratio_qty_1 = bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_1.dissect(buffer, index, packet, parent)

  -- Leg Side 1: C
  index, leg_side_1 = bme_meff_topofbook5_bmegate_v1_6.leg_side_1.dissect(buffer, index, packet, parent)

  -- Leg Price 1: P
  index, leg_price_1 = bme_meff_topofbook5_bmegate_v1_6.leg_price_1.dissect(buffer, index, packet, parent)

  -- Leg Symbol 2: C
  index, leg_symbol_2 = bme_meff_topofbook5_bmegate_v1_6.leg_symbol_2.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty 2: Q
  index, leg_ratio_qty_2 = bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_2.dissect(buffer, index, packet, parent)

  -- Leg Side 2: C
  index, leg_side_2 = bme_meff_topofbook5_bmegate_v1_6.leg_side_2.dissect(buffer, index, packet, parent)

  -- Leg Price 2: P
  index, leg_price_2 = bme_meff_topofbook5_bmegate_v1_6.leg_price_2.dissect(buffer, index, packet, parent)

  -- Leg Symbol 3: C
  index, leg_symbol_3 = bme_meff_topofbook5_bmegate_v1_6.leg_symbol_3.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty 3: Q
  index, leg_ratio_qty_3 = bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_3.dissect(buffer, index, packet, parent)

  -- Leg Side 3: C
  index, leg_side_3 = bme_meff_topofbook5_bmegate_v1_6.leg_side_3.dissect(buffer, index, packet, parent)

  -- Leg Price 3: P
  index, leg_price_3 = bme_meff_topofbook5_bmegate_v1_6.leg_price_3.dissect(buffer, index, packet, parent)

  -- Leg Symbol 4: C
  index, leg_symbol_4 = bme_meff_topofbook5_bmegate_v1_6.leg_symbol_4.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty 4: Q
  index, leg_ratio_qty_4 = bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_4.dissect(buffer, index, packet, parent)

  -- Leg Side 4: C
  index, leg_side_4 = bme_meff_topofbook5_bmegate_v1_6.leg_side_4.dissect(buffer, index, packet, parent)

  -- Leg Price 4: P
  index, leg_price_4 = bme_meff_topofbook5_bmegate_v1_6.leg_price_4.dissect(buffer, index, packet, parent)

  -- Leg Symbol 5: C
  index, leg_symbol_5 = bme_meff_topofbook5_bmegate_v1_6.leg_symbol_5.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty 5: Q
  index, leg_ratio_qty_5 = bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_5.dissect(buffer, index, packet, parent)

  -- Leg Side 5: C
  index, leg_side_5 = bme_meff_topofbook5_bmegate_v1_6.leg_side_5.dissect(buffer, index, packet, parent)

  -- Leg Price 5: P
  index, leg_price_5 = bme_meff_topofbook5_bmegate_v1_6.leg_price_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security List Update Report Message
bme_meff_topofbook5_bmegate_v1_6.security_list_update_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.security_list_update_report_message, buffer(offset, 0))
    local index = bme_meff_topofbook5_bmegate_v1_6.security_list_update_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_topofbook5_bmegate_v1_6.security_list_update_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_topofbook5_bmegate_v1_6.security_list_update_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Security List Message
bme_meff_topofbook5_bmegate_v1_6.security_list_message = {}

-- Size: Security List Message
bme_meff_topofbook5_bmegate_v1_6.security_list_message.size =
  bme_meff_topofbook5_bmegate_v1_6.sequence_number.size + 
  bme_meff_topofbook5_bmegate_v1_6.market_id.size + 
  bme_meff_topofbook5_bmegate_v1_6.market_segment_id.size + 
  bme_meff_topofbook5_bmegate_v1_6.security_code.size + 
  bme_meff_topofbook5_bmegate_v1_6.symbol.size + 
  bme_meff_topofbook5_bmegate_v1_6.symbol_isin.size + 
  bme_meff_topofbook5_bmegate_v1_6.fisn.size + 
  bme_meff_topofbook5_bmegate_v1_6.issuer_lei.size + 
  bme_meff_topofbook5_bmegate_v1_6.security_group.size + 
  bme_meff_topofbook5_bmegate_v1_6.family_code.size + 
  bme_meff_topofbook5_bmegate_v1_6.cfi_code.size + 
  bme_meff_topofbook5_bmegate_v1_6.security_type.size + 
  bme_meff_topofbook5_bmegate_v1_6.maturity_date.size + 
  bme_meff_topofbook5_bmegate_v1_6.issue_date.size + 
  bme_meff_topofbook5_bmegate_v1_6.contract_multiplier.size + 
  bme_meff_topofbook5_bmegate_v1_6.li_spre.size + 
  bme_meff_topofbook5_bmegate_v1_6.sst_ipre.size + 
  bme_meff_topofbook5_bmegate_v1_6.li_spost.size + 
  bme_meff_topofbook5_bmegate_v1_6.sst_ipost.size + 
  bme_meff_topofbook5_bmegate_v1_6.liquid_instrument.size + 
  bme_meff_topofbook5_bmegate_v1_6.admission_requested_by_issuer.size + 
  bme_meff_topofbook5_bmegate_v1_6.min_trade_vol.size + 
  bme_meff_topofbook5_bmegate_v1_6.round_lot.size + 
  bme_meff_topofbook5_bmegate_v1_6.currency.size + 
  bme_meff_topofbook5_bmegate_v1_6.modality_mask_b_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.security_description.size + 
  bme_meff_topofbook5_bmegate_v1_6.trading_obligation.size + 
  bme_meff_topofbook5_bmegate_v1_6.sec_description.size + 
  bme_meff_topofbook5_bmegate_v1_6.underlying_asset.size + 
  bme_meff_topofbook5_bmegate_v1_6.security_sub_type.size + 
  bme_meff_topofbook5_bmegate_v1_6.maturity_month_year.size + 
  bme_meff_topofbook5_bmegate_v1_6.strike_price.size + 
  bme_meff_topofbook5_bmegate_v1_6.strike_value.size + 
  bme_meff_topofbook5_bmegate_v1_6.opt_attribute.size + 
  bme_meff_topofbook5_bmegate_v1_6.min_price_increment.size + 
  bme_meff_topofbook5_bmegate_v1_6.unit_of_measure.size + 
  bme_meff_topofbook5_bmegate_v1_6.settl_method.size + 
  bme_meff_topofbook5_bmegate_v1_6.exercise_style.size + 
  bme_meff_topofbook5_bmegate_v1_6.put_or_call.size + 
  bme_meff_topofbook5_bmegate_v1_6.flexible_indicator.size + 
  bme_meff_topofbook5_bmegate_v1_6.last_trading_day.size + 
  bme_meff_topofbook5_bmegate_v1_6.number_of_decimals.size + 
  bme_meff_topofbook5_bmegate_v1_6.order_number_of_decimals.size + 
  bme_meff_topofbook5_bmegate_v1_6.adjustments_rule.size + 
  bme_meff_topofbook5_bmegate_v1_6.maximum_order_size.size + 
  bme_meff_topofbook5_bmegate_v1_6.self_match_prevention.size + 
  bme_meff_topofbook5_bmegate_v1_6.commodity_derivative_indicator.size + 
  bme_meff_topofbook5_bmegate_v1_6.stock_when_underlying_is_dividend.size + 
  bme_meff_topofbook5_bmegate_v1_6.base_product.size + 
  bme_meff_topofbook5_bmegate_v1_6.sub_product.size + 
  bme_meff_topofbook5_bmegate_v1_6.further_sub_product.size + 
  bme_meff_topofbook5_bmegate_v1_6.base_currency.size + 
  bme_meff_topofbook5_bmegate_v1_6.quoted_currency.size + 
  bme_meff_topofbook5_bmegate_v1_6.maturity_month_year_increment_units.size + 
  bme_meff_topofbook5_bmegate_v1_6.start_maturity_month_year.size + 
  bme_meff_topofbook5_bmegate_v1_6.end_maturity_month_year.size + 
  bme_meff_topofbook5_bmegate_v1_6.maturity_month_year_increment.size + 
  bme_meff_topofbook5_bmegate_v1_6.underlying_symbol.size + 
  bme_meff_topofbook5_bmegate_v1_6.underlying_isin.size + 
  bme_meff_topofbook5_bmegate_v1_6.underlying_currency.size + 
  bme_meff_topofbook5_bmegate_v1_6.underlying_security_issuer_lei.size + 
  bme_meff_topofbook5_bmegate_v1_6.x_rolling_closing_type.size + 
  bme_meff_topofbook5_bmegate_v1_6.x_rolling_reference_buyer_rate.size + 
  bme_meff_topofbook5_bmegate_v1_6.x_rolling_buyer_markup.size + 
  bme_meff_topofbook5_bmegate_v1_6.x_rolling_reference_seller_rate.size + 
  bme_meff_topofbook5_bmegate_v1_6.x_rolling_seller_markup.size + 
  bme_meff_topofbook5_bmegate_v1_6.x_rolling_dividend_percentage.size + 
  bme_meff_topofbook5_bmegate_v1_6.x_rolling_dividend_pay_date_diff.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_symbol_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_side_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_price_1.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_symbol_2.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_2.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_side_2.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_price_2.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_symbol_3.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_3.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_side_3.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_price_3.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_symbol_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_side_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_price_4.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_symbol_5.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_5.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_side_5.size + 
  bme_meff_topofbook5_bmegate_v1_6.leg_price_5.size

-- Display: Security List Message
bme_meff_topofbook5_bmegate_v1_6.security_list_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Message
bme_meff_topofbook5_bmegate_v1_6.security_list_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_topofbook5_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Market Id: C
  index, market_id = bme_meff_topofbook5_bmegate_v1_6.market_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_meff_topofbook5_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_topofbook5_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Symbol: C
  index, symbol = bme_meff_topofbook5_bmegate_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Isin: C
  index, symbol_isin = bme_meff_topofbook5_bmegate_v1_6.symbol_isin.dissect(buffer, index, packet, parent)

  -- Fisn: C
  index, fisn = bme_meff_topofbook5_bmegate_v1_6.fisn.dissect(buffer, index, packet, parent)

  -- Issuer Lei: C
  index, issuer_lei = bme_meff_topofbook5_bmegate_v1_6.issuer_lei.dissect(buffer, index, packet, parent)

  -- Security Group: C
  index, security_group = bme_meff_topofbook5_bmegate_v1_6.security_group.dissect(buffer, index, packet, parent)

  -- Family Code: C
  index, family_code = bme_meff_topofbook5_bmegate_v1_6.family_code.dissect(buffer, index, packet, parent)

  -- Cfi Code: C
  index, cfi_code = bme_meff_topofbook5_bmegate_v1_6.cfi_code.dissect(buffer, index, packet, parent)

  -- Security Type: C
  index, security_type = bme_meff_topofbook5_bmegate_v1_6.security_type.dissect(buffer, index, packet, parent)

  -- Maturity Date: D
  index, maturity_date = bme_meff_topofbook5_bmegate_v1_6.maturity_date.dissect(buffer, index, packet, parent)

  -- Issue Date: D
  index, issue_date = bme_meff_topofbook5_bmegate_v1_6.issue_date.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: A
  index, contract_multiplier = bme_meff_topofbook5_bmegate_v1_6.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Li Spre: A
  index, li_spre = bme_meff_topofbook5_bmegate_v1_6.li_spre.dissect(buffer, index, packet, parent)

  -- Sst Ipre: A
  index, sst_ipre = bme_meff_topofbook5_bmegate_v1_6.sst_ipre.dissect(buffer, index, packet, parent)

  -- Li Spost: A
  index, li_spost = bme_meff_topofbook5_bmegate_v1_6.li_spost.dissect(buffer, index, packet, parent)

  -- Sst Ipost: A
  index, sst_ipost = bme_meff_topofbook5_bmegate_v1_6.sst_ipost.dissect(buffer, index, packet, parent)

  -- Liquid Instrument: F
  index, liquid_instrument = bme_meff_topofbook5_bmegate_v1_6.liquid_instrument.dissect(buffer, index, packet, parent)

  -- Admission Requested By Issuer: F
  index, admission_requested_by_issuer = bme_meff_topofbook5_bmegate_v1_6.admission_requested_by_issuer.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: Q
  index, min_trade_vol = bme_meff_topofbook5_bmegate_v1_6.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Round Lot: Q
  index, round_lot = bme_meff_topofbook5_bmegate_v1_6.round_lot.dissect(buffer, index, packet, parent)

  -- Currency: C
  index, currency = bme_meff_topofbook5_bmegate_v1_6.currency.dissect(buffer, index, packet, parent)

  -- Modality Mask B 4: B
  index, modality_mask_b_4 = bme_meff_topofbook5_bmegate_v1_6.modality_mask_b_4.dissect(buffer, index, packet, parent)

  -- Security Description: C
  index, security_description = bme_meff_topofbook5_bmegate_v1_6.security_description.dissect(buffer, index, packet, parent)

  -- Trading Obligation: F
  index, trading_obligation = bme_meff_topofbook5_bmegate_v1_6.trading_obligation.dissect(buffer, index, packet, parent)

  -- Sec Description: C
  index, sec_description = bme_meff_topofbook5_bmegate_v1_6.sec_description.dissect(buffer, index, packet, parent)

  -- Underlying Asset: C
  index, underlying_asset = bme_meff_topofbook5_bmegate_v1_6.underlying_asset.dissect(buffer, index, packet, parent)

  -- Security Sub Type: C
  index, security_sub_type = bme_meff_topofbook5_bmegate_v1_6.security_sub_type.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: C
  index, maturity_month_year = bme_meff_topofbook5_bmegate_v1_6.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Strike Price: P
  index, strike_price = bme_meff_topofbook5_bmegate_v1_6.strike_price.dissect(buffer, index, packet, parent)

  -- Strike Value: A
  index, strike_value = bme_meff_topofbook5_bmegate_v1_6.strike_value.dissect(buffer, index, packet, parent)

  -- Opt Attribute: C
  index, opt_attribute = bme_meff_topofbook5_bmegate_v1_6.opt_attribute.dissect(buffer, index, packet, parent)

  -- Min Price Increment: P
  index, min_price_increment = bme_meff_topofbook5_bmegate_v1_6.min_price_increment.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: C
  index, unit_of_measure = bme_meff_topofbook5_bmegate_v1_6.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Settl Method: C
  index, settl_method = bme_meff_topofbook5_bmegate_v1_6.settl_method.dissect(buffer, index, packet, parent)

  -- Exercise Style: C
  index, exercise_style = bme_meff_topofbook5_bmegate_v1_6.exercise_style.dissect(buffer, index, packet, parent)

  -- Put Or Call: C
  index, put_or_call = bme_meff_topofbook5_bmegate_v1_6.put_or_call.dissect(buffer, index, packet, parent)

  -- Flexible Indicator: C
  index, flexible_indicator = bme_meff_topofbook5_bmegate_v1_6.flexible_indicator.dissect(buffer, index, packet, parent)

  -- Last Trading Day: D
  index, last_trading_day = bme_meff_topofbook5_bmegate_v1_6.last_trading_day.dissect(buffer, index, packet, parent)

  -- Number Of Decimals: U
  index, number_of_decimals = bme_meff_topofbook5_bmegate_v1_6.number_of_decimals.dissect(buffer, index, packet, parent)

  -- Order Number Of Decimals: U
  index, order_number_of_decimals = bme_meff_topofbook5_bmegate_v1_6.order_number_of_decimals.dissect(buffer, index, packet, parent)

  -- Adjustments Rule: C
  index, adjustments_rule = bme_meff_topofbook5_bmegate_v1_6.adjustments_rule.dissect(buffer, index, packet, parent)

  -- Maximum Order Size: A
  index, maximum_order_size = bme_meff_topofbook5_bmegate_v1_6.maximum_order_size.dissect(buffer, index, packet, parent)

  -- Self Match Prevention: F
  index, self_match_prevention = bme_meff_topofbook5_bmegate_v1_6.self_match_prevention.dissect(buffer, index, packet, parent)

  -- Commodity Derivative Indicator: C
  index, commodity_derivative_indicator = bme_meff_topofbook5_bmegate_v1_6.commodity_derivative_indicator.dissect(buffer, index, packet, parent)

  -- Stock When Underlying Is Dividend: C
  index, stock_when_underlying_is_dividend = bme_meff_topofbook5_bmegate_v1_6.stock_when_underlying_is_dividend.dissect(buffer, index, packet, parent)

  -- Base Product: C
  index, base_product = bme_meff_topofbook5_bmegate_v1_6.base_product.dissect(buffer, index, packet, parent)

  -- Sub Product: C
  index, sub_product = bme_meff_topofbook5_bmegate_v1_6.sub_product.dissect(buffer, index, packet, parent)

  -- Further Sub Product: C
  index, further_sub_product = bme_meff_topofbook5_bmegate_v1_6.further_sub_product.dissect(buffer, index, packet, parent)

  -- Base Currency: C
  index, base_currency = bme_meff_topofbook5_bmegate_v1_6.base_currency.dissect(buffer, index, packet, parent)

  -- Quoted Currency: C
  index, quoted_currency = bme_meff_topofbook5_bmegate_v1_6.quoted_currency.dissect(buffer, index, packet, parent)

  -- Maturity Month Year Increment Units: C
  index, maturity_month_year_increment_units = bme_meff_topofbook5_bmegate_v1_6.maturity_month_year_increment_units.dissect(buffer, index, packet, parent)

  -- Start Maturity Month Year: C
  index, start_maturity_month_year = bme_meff_topofbook5_bmegate_v1_6.start_maturity_month_year.dissect(buffer, index, packet, parent)

  -- End Maturity Month Year: C
  index, end_maturity_month_year = bme_meff_topofbook5_bmegate_v1_6.end_maturity_month_year.dissect(buffer, index, packet, parent)

  -- Maturity Month Year Increment: U
  index, maturity_month_year_increment = bme_meff_topofbook5_bmegate_v1_6.maturity_month_year_increment.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: C
  index, underlying_symbol = bme_meff_topofbook5_bmegate_v1_6.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Underlying Isin: C
  index, underlying_isin = bme_meff_topofbook5_bmegate_v1_6.underlying_isin.dissect(buffer, index, packet, parent)

  -- Underlying Currency: C
  index, underlying_currency = bme_meff_topofbook5_bmegate_v1_6.underlying_currency.dissect(buffer, index, packet, parent)

  -- Underlying Security Issuer Lei: C
  index, underlying_security_issuer_lei = bme_meff_topofbook5_bmegate_v1_6.underlying_security_issuer_lei.dissect(buffer, index, packet, parent)

  -- X Rolling Closing Type: C
  index, x_rolling_closing_type = bme_meff_topofbook5_bmegate_v1_6.x_rolling_closing_type.dissect(buffer, index, packet, parent)

  -- X Rolling Reference Buyer Rate: C
  index, x_rolling_reference_buyer_rate = bme_meff_topofbook5_bmegate_v1_6.x_rolling_reference_buyer_rate.dissect(buffer, index, packet, parent)

  -- X Rolling Buyer Markup: R
  index, x_rolling_buyer_markup = bme_meff_topofbook5_bmegate_v1_6.x_rolling_buyer_markup.dissect(buffer, index, packet, parent)

  -- X Rolling Reference Seller Rate: C
  index, x_rolling_reference_seller_rate = bme_meff_topofbook5_bmegate_v1_6.x_rolling_reference_seller_rate.dissect(buffer, index, packet, parent)

  -- X Rolling Seller Markup: R
  index, x_rolling_seller_markup = bme_meff_topofbook5_bmegate_v1_6.x_rolling_seller_markup.dissect(buffer, index, packet, parent)

  -- X Rolling Dividend Percentage: R
  index, x_rolling_dividend_percentage = bme_meff_topofbook5_bmegate_v1_6.x_rolling_dividend_percentage.dissect(buffer, index, packet, parent)

  -- X Rolling Dividend Pay Date Diff: U
  index, x_rolling_dividend_pay_date_diff = bme_meff_topofbook5_bmegate_v1_6.x_rolling_dividend_pay_date_diff.dissect(buffer, index, packet, parent)

  -- Leg Symbol 1: C
  index, leg_symbol_1 = bme_meff_topofbook5_bmegate_v1_6.leg_symbol_1.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty 1: Q
  index, leg_ratio_qty_1 = bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_1.dissect(buffer, index, packet, parent)

  -- Leg Side 1: C
  index, leg_side_1 = bme_meff_topofbook5_bmegate_v1_6.leg_side_1.dissect(buffer, index, packet, parent)

  -- Leg Price 1: P
  index, leg_price_1 = bme_meff_topofbook5_bmegate_v1_6.leg_price_1.dissect(buffer, index, packet, parent)

  -- Leg Symbol 2: C
  index, leg_symbol_2 = bme_meff_topofbook5_bmegate_v1_6.leg_symbol_2.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty 2: Q
  index, leg_ratio_qty_2 = bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_2.dissect(buffer, index, packet, parent)

  -- Leg Side 2: C
  index, leg_side_2 = bme_meff_topofbook5_bmegate_v1_6.leg_side_2.dissect(buffer, index, packet, parent)

  -- Leg Price 2: P
  index, leg_price_2 = bme_meff_topofbook5_bmegate_v1_6.leg_price_2.dissect(buffer, index, packet, parent)

  -- Leg Symbol 3: C
  index, leg_symbol_3 = bme_meff_topofbook5_bmegate_v1_6.leg_symbol_3.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty 3: Q
  index, leg_ratio_qty_3 = bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_3.dissect(buffer, index, packet, parent)

  -- Leg Side 3: C
  index, leg_side_3 = bme_meff_topofbook5_bmegate_v1_6.leg_side_3.dissect(buffer, index, packet, parent)

  -- Leg Price 3: P
  index, leg_price_3 = bme_meff_topofbook5_bmegate_v1_6.leg_price_3.dissect(buffer, index, packet, parent)

  -- Leg Symbol 4: C
  index, leg_symbol_4 = bme_meff_topofbook5_bmegate_v1_6.leg_symbol_4.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty 4: Q
  index, leg_ratio_qty_4 = bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_4.dissect(buffer, index, packet, parent)

  -- Leg Side 4: C
  index, leg_side_4 = bme_meff_topofbook5_bmegate_v1_6.leg_side_4.dissect(buffer, index, packet, parent)

  -- Leg Price 4: P
  index, leg_price_4 = bme_meff_topofbook5_bmegate_v1_6.leg_price_4.dissect(buffer, index, packet, parent)

  -- Leg Symbol 5: C
  index, leg_symbol_5 = bme_meff_topofbook5_bmegate_v1_6.leg_symbol_5.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty 5: Q
  index, leg_ratio_qty_5 = bme_meff_topofbook5_bmegate_v1_6.leg_ratio_qty_5.dissect(buffer, index, packet, parent)

  -- Leg Side 5: C
  index, leg_side_5 = bme_meff_topofbook5_bmegate_v1_6.leg_side_5.dissect(buffer, index, packet, parent)

  -- Leg Price 5: P
  index, leg_price_5 = bme_meff_topofbook5_bmegate_v1_6.leg_price_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security List Message
bme_meff_topofbook5_bmegate_v1_6.security_list_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.security_list_message, buffer(offset, 0))
    local index = bme_meff_topofbook5_bmegate_v1_6.security_list_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_topofbook5_bmegate_v1_6.security_list_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_topofbook5_bmegate_v1_6.security_list_message.fields(buffer, offset, packet, parent)
  end
end

-- Statistics Repeating Group
bme_meff_topofbook5_bmegate_v1_6.statistics_repeating_group = {}

-- Size: Statistics Repeating Group
bme_meff_topofbook5_bmegate_v1_6.statistics_repeating_group.size =
  bme_meff_topofbook5_bmegate_v1_6.data_code.size + 
  bme_meff_topofbook5_bmegate_v1_6.data_value.size

-- Display: Statistics Repeating Group
bme_meff_topofbook5_bmegate_v1_6.statistics_repeating_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Repeating Group
bme_meff_topofbook5_bmegate_v1_6.statistics_repeating_group.fields = function(buffer, offset, packet, parent, statistics_repeating_group_index)
  local index = offset

  -- Implicit Statistics Repeating Group Index
  if statistics_repeating_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.statistics_repeating_group_index, statistics_repeating_group_index)
    iteration:set_generated()
  end

  -- Data Code: C
  index, data_code = bme_meff_topofbook5_bmegate_v1_6.data_code.dissect(buffer, index, packet, parent)

  -- Data Value: 8 Byte Signed Fixed Width Integer
  index, data_value = bme_meff_topofbook5_bmegate_v1_6.data_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Repeating Group
bme_meff_topofbook5_bmegate_v1_6.statistics_repeating_group.dissect = function(buffer, offset, packet, parent, statistics_repeating_group_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.statistics_repeating_group, buffer(offset, 0))
    local index = bme_meff_topofbook5_bmegate_v1_6.statistics_repeating_group.fields(buffer, offset, packet, parent, statistics_repeating_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_topofbook5_bmegate_v1_6.statistics_repeating_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_topofbook5_bmegate_v1_6.statistics_repeating_group.fields(buffer, offset, packet, parent, statistics_repeating_group_index)
  end
end

-- Statistics Message
bme_meff_topofbook5_bmegate_v1_6.statistics_message = {}

-- Calculate size of: Statistics Message
bme_meff_topofbook5_bmegate_v1_6.statistics_message.size = function(buffer, offset)
  local index = 0

  index = index + bme_meff_topofbook5_bmegate_v1_6.sequence_number.size

  index = index + bme_meff_topofbook5_bmegate_v1_6.security_code.size

  index = index + bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time.size

  index = index + bme_meff_topofbook5_bmegate_v1_6.data_count.size

  -- Calculate field size from count
  local statistics_repeating_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + statistics_repeating_group_count * 9

  return index
end

-- Display: Statistics Message
bme_meff_topofbook5_bmegate_v1_6.statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Message
bme_meff_topofbook5_bmegate_v1_6.statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_topofbook5_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_topofbook5_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Data Count: U
  index, data_count = bme_meff_topofbook5_bmegate_v1_6.data_count.dissect(buffer, index, packet, parent)

  -- Repeating: Statistics Repeating Group
  for statistics_repeating_group_index = 1, data_count do
    index, statistics_repeating_group = bme_meff_topofbook5_bmegate_v1_6.statistics_repeating_group.dissect(buffer, index, packet, parent, statistics_repeating_group_index)
  end

  return index
end

-- Dissect: Statistics Message
bme_meff_topofbook5_bmegate_v1_6.statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.statistics_message, buffer(offset, 0))
    local index = bme_meff_topofbook5_bmegate_v1_6.statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_topofbook5_bmegate_v1_6.statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_topofbook5_bmegate_v1_6.statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Security List Cancellation Report Message
bme_meff_topofbook5_bmegate_v1_6.security_list_cancellation_report_message = {}

-- Size: Security List Cancellation Report Message
bme_meff_topofbook5_bmegate_v1_6.security_list_cancellation_report_message.size =
  bme_meff_topofbook5_bmegate_v1_6.sequence_number.size + 
  bme_meff_topofbook5_bmegate_v1_6.market_id.size + 
  bme_meff_topofbook5_bmegate_v1_6.market_segment_id.size + 
  bme_meff_topofbook5_bmegate_v1_6.security_code.size + 
  bme_meff_topofbook5_bmegate_v1_6.symbol.size + 
  bme_meff_topofbook5_bmegate_v1_6.symbol_isin.size

-- Display: Security List Cancellation Report Message
bme_meff_topofbook5_bmegate_v1_6.security_list_cancellation_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Cancellation Report Message
bme_meff_topofbook5_bmegate_v1_6.security_list_cancellation_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_topofbook5_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Market Id: C
  index, market_id = bme_meff_topofbook5_bmegate_v1_6.market_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_meff_topofbook5_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_topofbook5_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Symbol: C
  index, symbol = bme_meff_topofbook5_bmegate_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Isin: C
  index, symbol_isin = bme_meff_topofbook5_bmegate_v1_6.symbol_isin.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security List Cancellation Report Message
bme_meff_topofbook5_bmegate_v1_6.security_list_cancellation_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.security_list_cancellation_report_message, buffer(offset, 0))
    local index = bme_meff_topofbook5_bmegate_v1_6.security_list_cancellation_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_topofbook5_bmegate_v1_6.security_list_cancellation_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_topofbook5_bmegate_v1_6.security_list_cancellation_report_message.fields(buffer, offset, packet, parent)
  end
end

-- News Message
bme_meff_topofbook5_bmegate_v1_6.news_message = {}

-- Size: News Message
bme_meff_topofbook5_bmegate_v1_6.news_message.size =
  bme_meff_topofbook5_bmegate_v1_6.sequence_number.size + 
  bme_meff_topofbook5_bmegate_v1_6.news_text.size

-- Display: News Message
bme_meff_topofbook5_bmegate_v1_6.news_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: News Message
bme_meff_topofbook5_bmegate_v1_6.news_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_topofbook5_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- News Text: C
  index, news_text = bme_meff_topofbook5_bmegate_v1_6.news_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: News Message
bme_meff_topofbook5_bmegate_v1_6.news_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.news_message, buffer(offset, 0))
    local index = bme_meff_topofbook5_bmegate_v1_6.news_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_topofbook5_bmegate_v1_6.news_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_topofbook5_bmegate_v1_6.news_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Status Message
bme_meff_topofbook5_bmegate_v1_6.trading_session_status_message = {}

-- Size: Trading Session Status Message
bme_meff_topofbook5_bmegate_v1_6.trading_session_status_message.size =
  bme_meff_topofbook5_bmegate_v1_6.sequence_number.size + 
  bme_meff_topofbook5_bmegate_v1_6.trading_session_id.size + 
  bme_meff_topofbook5_bmegate_v1_6.trading_session_sub_id.size + 
  bme_meff_topofbook5_bmegate_v1_6.trad_ses_status.size + 
  bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time.size

-- Display: Trading Session Status Message
bme_meff_topofbook5_bmegate_v1_6.trading_session_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
bme_meff_topofbook5_bmegate_v1_6.trading_session_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_topofbook5_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_meff_topofbook5_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: U
  index, trading_session_sub_id = bme_meff_topofbook5_bmegate_v1_6.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Trad Ses Status: U
  index, trad_ses_status = bme_meff_topofbook5_bmegate_v1_6.trad_ses_status.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_topofbook5_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Message
bme_meff_topofbook5_bmegate_v1_6.trading_session_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.trading_session_status_message, buffer(offset, 0))
    local index = bme_meff_topofbook5_bmegate_v1_6.trading_session_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_topofbook5_bmegate_v1_6.trading_session_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_topofbook5_bmegate_v1_6.trading_session_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Network Status Message
bme_meff_topofbook5_bmegate_v1_6.network_status_message = {}

-- Size: Network Status Message
bme_meff_topofbook5_bmegate_v1_6.network_status_message.size =
  bme_meff_topofbook5_bmegate_v1_6.sequence_number.size + 
  bme_meff_topofbook5_bmegate_v1_6.network_status_value.size

-- Display: Network Status Message
bme_meff_topofbook5_bmegate_v1_6.network_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Network Status Message
bme_meff_topofbook5_bmegate_v1_6.network_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_topofbook5_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Network Status Value: U
  index, network_status_value = bme_meff_topofbook5_bmegate_v1_6.network_status_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Network Status Message
bme_meff_topofbook5_bmegate_v1_6.network_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.network_status_message, buffer(offset, 0))
    local index = bme_meff_topofbook5_bmegate_v1_6.network_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_topofbook5_bmegate_v1_6.network_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_topofbook5_bmegate_v1_6.network_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
bme_meff_topofbook5_bmegate_v1_6.heartbeat_message = {}

-- Size: Heartbeat Message
bme_meff_topofbook5_bmegate_v1_6.heartbeat_message.size =
  bme_meff_topofbook5_bmegate_v1_6.sequence_number.size

-- Display: Heartbeat Message
bme_meff_topofbook5_bmegate_v1_6.heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Message
bme_meff_topofbook5_bmegate_v1_6.heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_topofbook5_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Message
bme_meff_topofbook5_bmegate_v1_6.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.heartbeat_message, buffer(offset, 0))
    local index = bme_meff_topofbook5_bmegate_v1_6.heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_topofbook5_bmegate_v1_6.heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_topofbook5_bmegate_v1_6.heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Logout Response Message
bme_meff_topofbook5_bmegate_v1_6.logout_response_message = {}

-- Size: Logout Response Message
bme_meff_topofbook5_bmegate_v1_6.logout_response_message.size =
  bme_meff_topofbook5_bmegate_v1_6.sequence_number.size + 
  bme_meff_topofbook5_bmegate_v1_6.logout_reason.size

-- Display: Logout Response Message
bme_meff_topofbook5_bmegate_v1_6.logout_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Response Message
bme_meff_topofbook5_bmegate_v1_6.logout_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_topofbook5_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Logout Reason: U
  index, logout_reason = bme_meff_topofbook5_bmegate_v1_6.logout_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Response Message
bme_meff_topofbook5_bmegate_v1_6.logout_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.logout_response_message, buffer(offset, 0))
    local index = bme_meff_topofbook5_bmegate_v1_6.logout_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_topofbook5_bmegate_v1_6.logout_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_topofbook5_bmegate_v1_6.logout_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Response Message
bme_meff_topofbook5_bmegate_v1_6.logon_response_message = {}

-- Size: Logon Response Message
bme_meff_topofbook5_bmegate_v1_6.logon_response_message.size =
  bme_meff_topofbook5_bmegate_v1_6.sequence_number.size + 
  bme_meff_topofbook5_bmegate_v1_6.heart_bt_int.size + 
  bme_meff_topofbook5_bmegate_v1_6.protocol_version.size + 
  bme_meff_topofbook5_bmegate_v1_6.test_production_ind.size + 
  bme_meff_topofbook5_bmegate_v1_6.environment_code.size + 
  bme_meff_topofbook5_bmegate_v1_6.session_date.size + 
  bme_meff_topofbook5_bmegate_v1_6.expected_sequence_number.size + 
  bme_meff_topofbook5_bmegate_v1_6.sequence_number_to.size

-- Display: Logon Response Message
bme_meff_topofbook5_bmegate_v1_6.logon_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Response Message
bme_meff_topofbook5_bmegate_v1_6.logon_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_topofbook5_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Heart Bt Int: U
  index, heart_bt_int = bme_meff_topofbook5_bmegate_v1_6.heart_bt_int.dissect(buffer, index, packet, parent)

  -- Protocol Version: C
  index, protocol_version = bme_meff_topofbook5_bmegate_v1_6.protocol_version.dissect(buffer, index, packet, parent)

  -- Test Production Ind: C
  index, test_production_ind = bme_meff_topofbook5_bmegate_v1_6.test_production_ind.dissect(buffer, index, packet, parent)

  -- Environment Code: C
  index, environment_code = bme_meff_topofbook5_bmegate_v1_6.environment_code.dissect(buffer, index, packet, parent)

  -- Session Date: D
  index, session_date = bme_meff_topofbook5_bmegate_v1_6.session_date.dissect(buffer, index, packet, parent)

  -- Expected Sequence Number: U
  index, expected_sequence_number = bme_meff_topofbook5_bmegate_v1_6.expected_sequence_number.dissect(buffer, index, packet, parent)

  -- Sequence Number To: U
  index, sequence_number_to = bme_meff_topofbook5_bmegate_v1_6.sequence_number_to.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Response Message
bme_meff_topofbook5_bmegate_v1_6.logon_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.logon_response_message, buffer(offset, 0))
    local index = bme_meff_topofbook5_bmegate_v1_6.logon_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_topofbook5_bmegate_v1_6.logon_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_topofbook5_bmegate_v1_6.logon_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
bme_meff_topofbook5_bmegate_v1_6.payload = {}

-- Dissect: Payload
bme_meff_topofbook5_bmegate_v1_6.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Logon Response Message
  if message_type == 0x08 then
    return bme_meff_topofbook5_bmegate_v1_6.logon_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Response Message
  if message_type == 0x0B then
    return bme_meff_topofbook5_bmegate_v1_6.logout_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if message_type == 0x30 then
    return bme_meff_topofbook5_bmegate_v1_6.heartbeat_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Network Status Message
  if message_type == 0x0A then
    return bme_meff_topofbook5_bmegate_v1_6.network_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Status Message
  if message_type == 0x68 then
    return bme_meff_topofbook5_bmegate_v1_6.trading_session_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect News Message
  if message_type == 0x42 then
    return bme_meff_topofbook5_bmegate_v1_6.news_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security List Cancellation Report Message
  if message_type == 0x78 then
    return bme_meff_topofbook5_bmegate_v1_6.security_list_cancellation_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Message
  if message_type == 0x84 then
    return bme_meff_topofbook5_bmegate_v1_6.statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security List Message
  if message_type == 0x79 then
    return bme_meff_topofbook5_bmegate_v1_6.security_list_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security List Update Report Message
  if message_type == 0x80 then
    return bme_meff_topofbook5_bmegate_v1_6.security_list_update_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 0x66 then
    return bme_meff_topofbook5_bmegate_v1_6.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Family Status Message
  if message_type == 0x89 then
    return bme_meff_topofbook5_bmegate_v1_6.family_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Market Post Transparency Information Topofbook Message
  if message_type == 0x10 then
    return bme_meff_topofbook5_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Trade Amendment Or Cancellation Message
  if message_type == 0x18 then
    return bme_meff_topofbook5_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Indication Of Interest Message
  if message_type == 0x36 then
    return bme_meff_topofbook5_bmegate_v1_6.indication_of_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Market Pre Transparency Information Message
  if message_type == 0x85 then
    return bme_meff_topofbook5_bmegate_v1_6.rfq_market_pre_transparency_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Topofbook Message
  if message_type == 0x82 then
    return bme_meff_topofbook5_bmegate_v1_6.topofbook_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Topofbook 5 Levels Message
  if message_type == 0x83 then
    return bme_meff_topofbook5_bmegate_v1_6.topofbook_5_levels_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
bme_meff_topofbook5_bmegate_v1_6.message_header = {}

-- Size: Message Header
bme_meff_topofbook5_bmegate_v1_6.message_header.size =
  bme_meff_topofbook5_bmegate_v1_6.message_size.size + 
  bme_meff_topofbook5_bmegate_v1_6.message_type.size

-- Display: Message Header
bme_meff_topofbook5_bmegate_v1_6.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
bme_meff_topofbook5_bmegate_v1_6.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: U
  index, message_size = bme_meff_topofbook5_bmegate_v1_6.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: U
  index, message_type = bme_meff_topofbook5_bmegate_v1_6.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
bme_meff_topofbook5_bmegate_v1_6.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.message_header, buffer(offset, 0))
    local index = bme_meff_topofbook5_bmegate_v1_6.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_topofbook5_bmegate_v1_6.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_topofbook5_bmegate_v1_6.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
bme_meff_topofbook5_bmegate_v1_6.message = {}

-- Display: Message
bme_meff_topofbook5_bmegate_v1_6.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
bme_meff_topofbook5_bmegate_v1_6.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = bme_meff_topofbook5_bmegate_v1_6.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 18 branches
  index = bme_meff_topofbook5_bmegate_v1_6.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
bme_meff_topofbook5_bmegate_v1_6.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bme_meff_topofbook5_bmegate_v1_6.fields.message, buffer(offset, 0))
    local current = bme_meff_topofbook5_bmegate_v1_6.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = bme_meff_topofbook5_bmegate_v1_6.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bme_meff_topofbook5_bmegate_v1_6.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Packet
bme_meff_topofbook5_bmegate_v1_6.packet = {}

-- Verify required size of Udp packet
bme_meff_topofbook5_bmegate_v1_6.packet.requiredsize = function(buffer)
  return buffer:len() >= bme_meff_topofbook5_bmegate_v1_6.message_header.size
end

-- Dissect Packet
bme_meff_topofbook5_bmegate_v1_6.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = bme_meff_topofbook5_bmegate_v1_6.message.dissect(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_bme_meff_topofbook5_bmegate_v1_6.init()
end

-- Dissector for Bme Meff TopOfBook5 BmeGate 1.6
function omi_bme_meff_topofbook5_bmegate_v1_6.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_bme_meff_topofbook5_bmegate_v1_6.name

  -- Dissect protocol
  local protocol = parent:add(omi_bme_meff_topofbook5_bmegate_v1_6, buffer(), omi_bme_meff_topofbook5_bmegate_v1_6.description, "("..buffer:len().." Bytes)")
  return bme_meff_topofbook5_bmegate_v1_6.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
bme_meff_topofbook5_bmegate_v1_6.packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local message_type = buffer(2, 1):uint()

  -- Logon Response Message
  if message_type == 0x08 then
    return true
  end

  -- Logout Response Message
  if message_type == 0x0B then
    return true
  end

  -- Heartbeat Message
  if message_type == 0x30 then
    return true
  end

  -- Network Status Message
  if message_type == 0x0A then
    return true
  end

  -- Trading Session Status Message
  if message_type == 0x68 then
    return true
  end

  -- News Message
  if message_type == 0x42 then
    return true
  end

  -- Security List Cancellation Report Message
  if message_type == 0x78 then
    return true
  end

  -- Statistics Message
  if message_type == 0x84 then
    return true
  end

  -- Security List Message
  if message_type == 0x79 then
    return true
  end

  -- Security List Update Report Message
  if message_type == 0x80 then
    return true
  end

  -- Security Status Message
  if message_type == 0x66 then
    return true
  end

  -- Family Status Message
  if message_type == 0x89 then
    return true
  end

  -- Trade Market Post Transparency Information Topofbook Message
  if message_type == 0x10 then
    return true
  end

  -- Trade Trade Amendment Or Cancellation Message
  if message_type == 0x18 then
    return true
  end

  -- Indication Of Interest Message
  if message_type == 0x36 then
    return true
  end

  -- Rfq Market Pre Transparency Information Message
  if message_type == 0x85 then
    return true
  end

  -- Topofbook Message
  if message_type == 0x82 then
    return true
  end

  -- Topofbook 5 Levels Message
  if message_type == 0x83 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Bme Meff TopOfBook5 BmeGate 1.6 (Udp)
local function omi_bme_meff_topofbook5_bmegate_v1_6_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bme_meff_topofbook5_bmegate_v1_6.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not bme_meff_topofbook5_bmegate_v1_6.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bme_meff_topofbook5_bmegate_v1_6
  omi_bme_meff_topofbook5_bmegate_v1_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Bme Meff TopOfBook5 BmeGate 1.6
omi_bme_meff_topofbook5_bmegate_v1_6:register_heuristic("udp", omi_bme_meff_topofbook5_bmegate_v1_6_udp_heuristic)

-- Register Bme Meff TopOfBook5 BmeGate 1.6 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_bme_meff_topofbook5_bmegate_v1_6)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Bolsas y Mercados Españoles
--   Version: 1.6
--   Date: Friday, June 13, 2025
--   Specification: BMEGate binary protocol B1.6.pdf
--   Specification: BMEGate Codification Tables.pdf
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
