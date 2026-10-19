-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bme BmeFixedIncome Retail BmeGate 1.6 Protocol
local omi_bme_bmefixedincome_retail_bmegate_v1_6 = Proto("Omi.Bme.BmeFixedIncome.Retail.BmeGate.v1.6", "Bme BmeFixedIncome Retail BmeGate 1.6")

-- Protocol table
local bme_bmefixedincome_retail_bmegate_v1_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bme BmeFixedIncome Retail BmeGate 1.6 Fields
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.accrued_interest_amt = ProtoField.new("Accrued Interest Amt", "bme.bmefixedincome.retail.bmegate.v1.6.accruedinterestamt", ftypes.DOUBLE, nil, nil, nil, "Accrued Interest amount")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.accrued_interest_calculation_procedure = ProtoField.new("Accrued Interest Calculation Procedure", "bme.bmefixedincome.retail.bmegate.v1.6.accruedinterestcalculationprocedure", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.accrued_interest_rate_p_8 = ProtoField.new("Accrued Interest Rate P 8", "bme.bmefixedincome.retail.bmegate.v1.6.accruedinterestratep8", ftypes.DOUBLE, nil, nil, nil, "Interest rate of coupon")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.accrued_interest_rate_r_8 = ProtoField.new("Accrued Interest Rate R 8", "bme.bmefixedincome.retail.bmegate.v1.6.accruedinterestrater8", ftypes.DOUBLE, nil, nil, nil, "Accrued Interest Rate")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.admission_requested_by_issuer = ProtoField.new("Admission Requested By Issuer", "bme.bmefixedincome.retail.bmegate.v1.6.admissionrequestedbyissuer", ftypes.UINT8, nil, nil, nil, "Security request for admission to trading by the issuer")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.algo_flag = ProtoField.new("Algo Flag", "bme.bmefixedincome.retail.bmegate.v1.6.algoflag", ftypes.UINT8, nil, nil, nil, "Algorithmic flag indicator")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.alive_volume = ProtoField.new("Alive Volume", "bme.bmefixedincome.retail.bmegate.v1.6.alivevolume", ftypes.DOUBLE)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.alt_bid_px_1 = ProtoField.new("Alt Bid Px 1", "bme.bmefixedincome.retail.bmegate.v1.6.altbidpx1", ftypes.DOUBLE, nil, nil, nil, "Alternate buy price 1")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.alt_last_px = ProtoField.new("Alt Last Px", "bme.bmefixedincome.retail.bmegate.v1.6.altlastpx", ftypes.DOUBLE, nil, nil, nil, "Trade yield or percent of par")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.alt_sell_px_1 = ProtoField.new("Alt Sell Px 1", "bme.bmefixedincome.retail.bmegate.v1.6.altsellpx1", ftypes.DOUBLE, nil, nil, nil, "Alternate sell price 1")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.amended_trade_date = ProtoField.new("Amended Trade Date", "bme.bmefixedincome.retail.bmegate.v1.6.amendedtradedate", ftypes.INT32, nil, nil, nil, "Date of the amended/cancelled trade")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.amended_trade_type = ProtoField.new("Amended Trade Type", "bme.bmefixedincome.retail.bmegate.v1.6.amendedtradetype", ftypes.STRING, nil, nil, nil, "Trade type of the amended/cancelled trade")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_orders_1 = ProtoField.new("Ask Orders 1", "bme.bmefixedincome.retail.bmegate.v1.6.askorders1", ftypes.UINT16, nil, nil, nil, "Sell number of orders")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_orders_2 = ProtoField.new("Ask Orders 2", "bme.bmefixedincome.retail.bmegate.v1.6.askorders2", ftypes.UINT16, nil, nil, nil, "Sell number of orders level 2")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_orders_3 = ProtoField.new("Ask Orders 3", "bme.bmefixedincome.retail.bmegate.v1.6.askorders3", ftypes.UINT16, nil, nil, nil, "Sell number of orders level 3")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_orders_4 = ProtoField.new("Ask Orders 4", "bme.bmefixedincome.retail.bmegate.v1.6.askorders4", ftypes.UINT16, nil, nil, nil, "Sell number of orders level 4")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_orders_5 = ProtoField.new("Ask Orders 5", "bme.bmefixedincome.retail.bmegate.v1.6.askorders5", ftypes.UINT16, nil, nil, nil, "Sell number of orders level 5")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_px_1 = ProtoField.new("Ask Px 1", "bme.bmefixedincome.retail.bmegate.v1.6.askpx1", ftypes.DOUBLE, nil, nil, nil, "Sell price")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_px_2 = ProtoField.new("Ask Px 2", "bme.bmefixedincome.retail.bmegate.v1.6.askpx2", ftypes.DOUBLE, nil, nil, nil, "Sell price level 2")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_px_3 = ProtoField.new("Ask Px 3", "bme.bmefixedincome.retail.bmegate.v1.6.askpx3", ftypes.DOUBLE, nil, nil, nil, "Sell price level 3")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_px_4 = ProtoField.new("Ask Px 4", "bme.bmefixedincome.retail.bmegate.v1.6.askpx4", ftypes.DOUBLE, nil, nil, nil, "Sell price level 4")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_px_5 = ProtoField.new("Ask Px 5", "bme.bmefixedincome.retail.bmegate.v1.6.askpx5", ftypes.DOUBLE, nil, nil, nil, "Sell price level 5")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_size_1 = ProtoField.new("Ask Size 1", "bme.bmefixedincome.retail.bmegate.v1.6.asksize1", ftypes.UINT32, nil, nil, nil, "Sell volume")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_size_2 = ProtoField.new("Ask Size 2", "bme.bmefixedincome.retail.bmegate.v1.6.asksize2", ftypes.UINT32, nil, nil, nil, "Sell volume level 2")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_size_3 = ProtoField.new("Ask Size 3", "bme.bmefixedincome.retail.bmegate.v1.6.asksize3", ftypes.UINT32, nil, nil, nil, "Sell volume level 3")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_size_4 = ProtoField.new("Ask Size 4", "bme.bmefixedincome.retail.bmegate.v1.6.asksize4", ftypes.UINT32, nil, nil, nil, "Sell volume level 4")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_size_5 = ProtoField.new("Ask Size 5", "bme.bmefixedincome.retail.bmegate.v1.6.asksize5", ftypes.UINT32, nil, nil, nil, "Sell volume level 5")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.benchmark = ProtoField.new("Benchmark", "bme.bmefixedincome.retail.bmegate.v1.6.benchmark", ftypes.UINT8)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.benchmark_curve_points_units = ProtoField.new("Benchmark Curve Points Units", "bme.bmefixedincome.retail.bmegate.v1.6.benchmarkcurvepointsunits", ftypes.STRING, nil, nil, nil, "Benchmark Curve Point for Index term")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.benchmark_curve_points_value = ProtoField.new("Benchmark Curve Points Value", "bme.bmefixedincome.retail.bmegate.v1.6.benchmarkcurvepointsvalue", ftypes.UINT8, nil, nil, nil, "Benchmark Curve Point for Index term")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.benchmark_security_id = ProtoField.new("Benchmark Security Id", "bme.bmefixedincome.retail.bmegate.v1.6.benchmarksecurityid", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bencrfpt_flag = ProtoField.new("Bencrfpt Flag", "bme.bmefixedincome.retail.bmegate.v1.6.bencrfptflag", ftypes.STRING, nil, nil, nil, "Benchmark or Reference Price Indicator MMT")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_orders_1 = ProtoField.new("Bid Orders 1", "bme.bmefixedincome.retail.bmegate.v1.6.bidorders1", ftypes.UINT16, nil, nil, nil, "Buy number of orders")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_orders_2 = ProtoField.new("Bid Orders 2", "bme.bmefixedincome.retail.bmegate.v1.6.bidorders2", ftypes.UINT16, nil, nil, nil, "Buy number of orders level 2")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_orders_3 = ProtoField.new("Bid Orders 3", "bme.bmefixedincome.retail.bmegate.v1.6.bidorders3", ftypes.UINT16, nil, nil, nil, "Buy number of orders level 3")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_orders_4 = ProtoField.new("Bid Orders 4", "bme.bmefixedincome.retail.bmegate.v1.6.bidorders4", ftypes.UINT16, nil, nil, nil, "Buy number of orders level 4")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_orders_5 = ProtoField.new("Bid Orders 5", "bme.bmefixedincome.retail.bmegate.v1.6.bidorders5", ftypes.UINT16, nil, nil, nil, "Buy number of orders level 5")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_px_1 = ProtoField.new("Bid Px 1", "bme.bmefixedincome.retail.bmegate.v1.6.bidpx1", ftypes.DOUBLE, nil, nil, nil, "Buy price")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_px_2 = ProtoField.new("Bid Px 2", "bme.bmefixedincome.retail.bmegate.v1.6.bidpx2", ftypes.DOUBLE, nil, nil, nil, "Buy price level 2")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_px_3 = ProtoField.new("Bid Px 3", "bme.bmefixedincome.retail.bmegate.v1.6.bidpx3", ftypes.DOUBLE, nil, nil, nil, "Buy price level 3")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_px_4 = ProtoField.new("Bid Px 4", "bme.bmefixedincome.retail.bmegate.v1.6.bidpx4", ftypes.DOUBLE, nil, nil, nil, "Buy price level 4")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_px_5 = ProtoField.new("Bid Px 5", "bme.bmefixedincome.retail.bmegate.v1.6.bidpx5", ftypes.DOUBLE, nil, nil, nil, "Buy price level 5")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_size_1 = ProtoField.new("Bid Size 1", "bme.bmefixedincome.retail.bmegate.v1.6.bidsize1", ftypes.UINT32, nil, nil, nil, "Buy volume")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_size_2 = ProtoField.new("Bid Size 2", "bme.bmefixedincome.retail.bmegate.v1.6.bidsize2", ftypes.UINT32, nil, nil, nil, "Buy volume level 2")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_size_3 = ProtoField.new("Bid Size 3", "bme.bmefixedincome.retail.bmegate.v1.6.bidsize3", ftypes.UINT32, nil, nil, nil, "Buy volume level 3")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_size_4 = ProtoField.new("Bid Size 4", "bme.bmefixedincome.retail.bmegate.v1.6.bidsize4", ftypes.UINT32, nil, nil, nil, "Buy volume level 4")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_size_5 = ProtoField.new("Bid Size 5", "bme.bmefixedincome.retail.bmegate.v1.6.bidsize5", ftypes.UINT32, nil, nil, nil, "Buy volume level 5")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.block_static_range = ProtoField.new("Block Static Range", "bme.bmefixedincome.retail.bmegate.v1.6.blockstaticrange", ftypes.DOUBLE, nil, nil, nil, "Static range for parametrised blocks")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bond_seniority = ProtoField.new("Bond Seniority", "bme.bmefixedincome.retail.bmegate.v1.6.bondseniority", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.buy_rf_qs_number = ProtoField.new("Buy Rf Qs Number", "bme.bmefixedincome.retail.bmegate.v1.6.buyrfqsnumber", ftypes.UINT16, nil, nil, nil, "Number of buying RFQs")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.calculation_method = ProtoField.new("Calculation Method", "bme.bmefixedincome.retail.bmegate.v1.6.calculationmethod", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.cfi_code = ProtoField.new("Cfi Code", "bme.bmefixedincome.retail.bmegate.v1.6.cficode", ftypes.STRING, nil, nil, nil, "CFICode")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "bme.bmefixedincome.retail.bmegate.v1.6.contractmultiplier", ftypes.DOUBLE, nil, nil, nil, "Conversion factor between price units and monetary units")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.coupon_payment_date = ProtoField.new("Coupon Payment Date", "bme.bmefixedincome.retail.bmegate.v1.6.couponpaymentdate", ftypes.INT32)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.coupon_periodicity = ProtoField.new("Coupon Periodicity", "bme.bmefixedincome.retail.bmegate.v1.6.couponperiodicity", ftypes.UINT8, nil, nil, nil, "Coupon Periodicity in Number of Months")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.coupon_quotation = ProtoField.new("Coupon Quotation", "bme.bmefixedincome.retail.bmegate.v1.6.couponquotation", ftypes.UINT8)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.coupon_rate = ProtoField.new("Coupon Rate", "bme.bmefixedincome.retail.bmegate.v1.6.couponrate", ftypes.DOUBLE)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.coupon_type = ProtoField.new("Coupon Type", "bme.bmefixedincome.retail.bmegate.v1.6.coupontype", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.currency = ProtoField.new("Currency", "bme.bmefixedincome.retail.bmegate.v1.6.currency", ftypes.STRING, nil, nil, nil, "Currency code")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.data_code = ProtoField.new("Data Code", "bme.bmefixedincome.retail.bmegate.v1.6.datacode", ftypes.STRING, nil, nil, nil, "Data field code")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.data_count = ProtoField.new("Data Count", "bme.bmefixedincome.retail.bmegate.v1.6.datacount", ftypes.UINT8, nil, nil, nil, "Number of data values")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.date_last_coupon_was_paid = ProtoField.new("Date Last Coupon Was Paid", "bme.bmefixedincome.retail.bmegate.v1.6.datelastcouponwaspaid", ftypes.INT32)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.deferral_waiver = ProtoField.new("Deferral Waiver", "bme.bmefixedincome.retail.bmegate.v1.6.deferralwaiver", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.designation = ProtoField.new("Designation", "bme.bmefixedincome.retail.bmegate.v1.6.designation", ftypes.STRING, nil, nil, nil, "Trade situation")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.end_cash = ProtoField.new("End Cash", "bme.bmefixedincome.retail.bmegate.v1.6.endcash", ftypes.DOUBLE, nil, nil, nil, "Amount to be settled at the end of the Repo Trade")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.environment_code = ProtoField.new("Environment Code", "bme.bmefixedincome.retail.bmegate.v1.6.environmentcode", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "bme.bmefixedincome.retail.bmegate.v1.6.execrefid", ftypes.UINT32, nil, nil, nil, "System Trade Number of the amended/cancelled trade")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.expected_sequence_number = ProtoField.new("Expected Sequence Number", "bme.bmefixedincome.retail.bmegate.v1.6.expectedsequencenumber", ftypes.UINT32, nil, nil, nil, "Requested sequence number")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.facial = ProtoField.new("Facial", "bme.bmefixedincome.retail.bmegate.v1.6.facial", ftypes.DOUBLE)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.first_trading_date = ProtoField.new("First Trading Date", "bme.bmefixedincome.retail.bmegate.v1.6.firsttradingdate", ftypes.INT32)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.fisn = ProtoField.new("Fisn", "bme.bmefixedincome.retail.bmegate.v1.6.fisn", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.gross_trade_amt = ProtoField.new("Gross Trade Amt", "bme.bmefixedincome.retail.bmegate.v1.6.grosstradeamt", ftypes.DOUBLE, nil, nil, nil, "Premium / Trade amount")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "bme.bmefixedincome.retail.bmegate.v1.6.heartbtint", ftypes.UINT8, nil, nil, nil, "Interval at which messages are sent to verify the connection (Heartbeat message) expressed in seconds")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.high_limit_price = ProtoField.new("High Limit Price", "bme.bmefixedincome.retail.bmegate.v1.6.highlimitprice", ftypes.DOUBLE)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.interest_accrual_date = ProtoField.new("Interest Accrual Date", "bme.bmefixedincome.retail.bmegate.v1.6.interestaccrualdate", ftypes.INT32, nil, nil, nil, "Start date for the coupon yield")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ioi_price = ProtoField.new("Ioi Price", "bme.bmefixedincome.retail.bmegate.v1.6.ioiprice", ftypes.DOUBLE, nil, nil, nil, "Requested indicative price")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ioi_qty = ProtoField.new("Ioi Qty", "bme.bmefixedincome.retail.bmegate.v1.6.ioiqty", ftypes.UINT32, nil, nil, nil, "Requested indicative volume")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ioi_trans_type = ProtoField.new("Ioi Trans Type", "bme.bmefixedincome.retail.bmegate.v1.6.ioitranstype", ftypes.STRING, nil, nil, nil, "Message type")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ioiid = ProtoField.new("Ioiid", "bme.bmefixedincome.retail.bmegate.v1.6.ioiid", ftypes.UINT32, nil, nil, nil, "RFQ identifier")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.issue_date = ProtoField.new("Issue Date", "bme.bmefixedincome.retail.bmegate.v1.6.issuedate", ftypes.INT32, nil, nil, nil, "Date security issued")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.issuer = ProtoField.new("Issuer", "bme.bmefixedincome.retail.bmegate.v1.6.issuer", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.issuer_lei = ProtoField.new("Issuer Lei", "bme.bmefixedincome.retail.bmegate.v1.6.issuerlei", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.last_change_flag = ProtoField.new("Last Change Flag", "bme.bmefixedincome.retail.bmegate.v1.6.lastchangeflag", ftypes.UINT8, nil, nil, nil, "Indicates if this trade changes the instrument Last price")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.last_px = ProtoField.new("Last Px", "bme.bmefixedincome.retail.bmegate.v1.6.lastpx", ftypes.DOUBLE, nil, nil, nil, "Trade price")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.last_qty = ProtoField.new("Last Qty", "bme.bmefixedincome.retail.bmegate.v1.6.lastqty", ftypes.UINT32, nil, nil, nil, "Current trade volume")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.li_spost = ProtoField.new("Li Spost", "bme.bmefixedincome.retail.bmegate.v1.6.lispost", ftypes.DOUBLE, nil, nil, nil, "LIS posttransparency threshold")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.li_spre = ProtoField.new("Li Spre", "bme.bmefixedincome.retail.bmegate.v1.6.lispre", ftypes.DOUBLE, nil, nil, nil, "LIS pretransparency threshold")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.liquid_instrument = ProtoField.new("Liquid Instrument", "bme.bmefixedincome.retail.bmegate.v1.6.liquidinstrument", ftypes.UINT8)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.logout_reason = ProtoField.new("Logout Reason", "bme.bmefixedincome.retail.bmegate.v1.6.logoutreason", ftypes.UINT8)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.low_limit_price = ProtoField.new("Low Limit Price", "bme.bmefixedincome.retail.bmegate.v1.6.lowlimitprice", ftypes.DOUBLE)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.market_id = ProtoField.new("Market Id", "bme.bmefixedincome.retail.bmegate.v1.6.marketid", ftypes.STRING, nil, nil, nil, "Operating MIC Code")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.market_mechanism = ProtoField.new("Market Mechanism", "bme.bmefixedincome.retail.bmegate.v1.6.marketmechanism", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.market_segment_id = ProtoField.new("Market Segment Id", "bme.bmefixedincome.retail.bmegate.v1.6.marketsegmentid", ftypes.STRING, nil, nil, nil, "Segment MIC Code")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.maturity = ProtoField.new("Maturity", "bme.bmefixedincome.retail.bmegate.v1.6.maturity", ftypes.DOUBLE, nil, nil, nil, "Maturity Price")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.maturity_date = ProtoField.new("Maturity Date", "bme.bmefixedincome.retail.bmegate.v1.6.maturitydate", ftypes.INT32, nil, nil, nil, "Expiration date")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.message_size = ProtoField.new("Message Size", "bme.bmefixedincome.retail.bmegate.v1.6.messagesize", ftypes.UINT16, nil, nil, nil, "Length of message, including this field")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.message_type = ProtoField.new("Message Type", "bme.bmefixedincome.retail.bmegate.v1.6.messagetype", ftypes.UINT8, nil, nil, nil, "Message type. Section 3.3 assigns the message code of the equivalent Fix protocol message where there is one, so Logon is 0x41, and gives the rest a hexadecimal value below 0x20 or at or above 0x80")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.mid_buy_price = ProtoField.new("Mid Buy Price", "bme.bmefixedincome.retail.bmegate.v1.6.midbuyprice", ftypes.DOUBLE, nil, nil, nil, "Mid price of buying RFQs")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.mid_buy_volume = ProtoField.new("Mid Buy Volume", "bme.bmefixedincome.retail.bmegate.v1.6.midbuyvolume", ftypes.UINT32, nil, nil, nil, "Mid volume of buying RFQs")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.mid_sell_price = ProtoField.new("Mid Sell Price", "bme.bmefixedincome.retail.bmegate.v1.6.midsellprice", ftypes.DOUBLE, nil, nil, nil, "Mid price of selling RFQs")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.mid_sell_volume = ProtoField.new("Mid Sell Volume", "bme.bmefixedincome.retail.bmegate.v1.6.midsellvolume", ftypes.UINT32, nil, nil, nil, "Mid volume of selling RFQs")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.min_price_increment = ProtoField.new("Min Price Increment", "bme.bmefixedincome.retail.bmegate.v1.6.minpriceincrement", ftypes.DOUBLE, nil, nil, nil, "Minimum Price Increment")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.min_trade_vol = ProtoField.new("Min Trade Vol", "bme.bmefixedincome.retail.bmegate.v1.6.mintradevol", ftypes.UINT32, nil, nil, nil, "Minimum Tradeable Volume")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.modality_mask_b_4 = ProtoField.new("Modality Mask B 4", "bme.bmefixedincome.retail.bmegate.v1.6.modalitymaskb4", ftypes.UINT32, nil, nil, nil, "Modality mask ∑ 2^(ModalityCode - 100) ModalityCode valid values are the TradingSessionID values listed in Table 25 -")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.network_status_value = ProtoField.new("Network Status Value", "bme.bmefixedincome.retail.bmegate.v1.6.networkstatusvalue", ftypes.UINT8, nil, nil, nil, "Connection status")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.news_text = ProtoField.new("News Text", "bme.bmefixedincome.retail.bmegate.v1.6.newstext", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.next_redemption_date = ProtoField.new("Next Redemption Date", "bme.bmefixedincome.retail.bmegate.v1.6.nextredemptiondate", ftypes.INT32)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.non_availability_reason = ProtoField.new("Non Availability Reason", "bme.bmefixedincome.retail.bmegate.v1.6.nonavailabilityreason", ftypes.UINT8, nil, nil, nil, "Reason security halted")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.number_of_decimals = ProtoField.new("Number Of Decimals", "bme.bmefixedincome.retail.bmegate.v1.6.numberofdecimals", ftypes.UINT8)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.order_number_of_decimals = ProtoField.new("Order Number Of Decimals", "bme.bmefixedincome.retail.bmegate.v1.6.ordernumberofdecimals", ftypes.UINT8, nil, nil, nil, "Number of Decimals in Order Entry")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.order_static_range = ProtoField.new("Order Static Range", "bme.bmefixedincome.retail.bmegate.v1.6.orderstaticrange", ftypes.DOUBLE, nil, nil, nil, "Percentage of static range")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.post_deferral_publication_type = ProtoField.new("Post Deferral Publication Type", "bme.bmefixedincome.retail.bmegate.v1.6.postdeferralpublicationtype", ftypes.STRING, nil, nil, nil, "Post-deferral publication type")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.pre_trade_transparency_waiver = ProtoField.new("Pre Trade Transparency Waiver", "bme.bmefixedincome.retail.bmegate.v1.6.pretradetransparencywaiver", ftypes.STRING, nil, nil, nil, "Pre-trade transparency waiver")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.price_type = ProtoField.new("Price Type", "bme.bmefixedincome.retail.bmegate.v1.6.pricetype", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.protocol_version = ProtoField.new("Protocol Version", "bme.bmefixedincome.retail.bmegate.v1.6.protocolversion", ftypes.STRING, nil, nil, nil, "Identification of the binary protocol version")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.publish_date_and_time = ProtoField.new("Publish Date And Time", "bme.bmefixedincome.retail.bmegate.v1.6.publishdateandtime", ftypes.INT64, nil, nil, nil, "Publication Date and Time in nanoseconds since 1-jan-1970 UTC")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.reference_price = ProtoField.new("Reference Price", "bme.bmefixedincome.retail.bmegate.v1.6.referenceprice", ftypes.DOUBLE)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.rfqid = ProtoField.new("Rfqid", "bme.bmefixedincome.retail.bmegate.v1.6.rfqid", ftypes.UINT32, nil, nil, nil, "RFQ identifier")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.round_lot = ProtoField.new("Round Lot", "bme.bmefixedincome.retail.bmegate.v1.6.roundlot", ftypes.UINT32, nil, nil, nil, "Lot Size")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.security_code = ProtoField.new("Security Code", "bme.bmefixedincome.retail.bmegate.v1.6.securitycode", ftypes.UINT32, nil, nil, nil, "Instrument (or Book) code")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.security_description = ProtoField.new("Security Description", "bme.bmefixedincome.retail.bmegate.v1.6.securitydescription", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.security_group = ProtoField.new("Security Group", "bme.bmefixedincome.retail.bmegate.v1.6.securitygroup", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.security_name = ProtoField.new("Security Name", "bme.bmefixedincome.retail.bmegate.v1.6.securityname", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.security_status = ProtoField.new("Security Status", "bme.bmefixedincome.retail.bmegate.v1.6.securitystatus", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.security_trading_status = ProtoField.new("Security Trading Status", "bme.bmefixedincome.retail.bmegate.v1.6.securitytradingstatus", ftypes.UINT8)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.security_type = ProtoField.new("Security Type", "bme.bmefixedincome.retail.bmegate.v1.6.securitytype", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.sell_rf_qs_number = ProtoField.new("Sell Rf Qs Number", "bme.bmefixedincome.retail.bmegate.v1.6.sellrfqsnumber", ftypes.UINT16, nil, nil, nil, "Number of selling RFQs")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.sequence_number = ProtoField.new("Sequence Number", "bme.bmefixedincome.retail.bmegate.v1.6.sequencenumber", ftypes.UINT32, nil, nil, nil, "Message sequence number")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.sequence_number_to = ProtoField.new("Sequence Number To", "bme.bmefixedincome.retail.bmegate.v1.6.sequencenumberto", ftypes.UINT32, nil, nil, nil, "Actual sequence number corresponding to the Snapshot")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.session_date = ProtoField.new("Session Date", "bme.bmefixedincome.retail.bmegate.v1.6.sessiondate", ftypes.INT32)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.settl_date = ProtoField.new("Settl Date", "bme.bmefixedincome.retail.bmegate.v1.6.settldate", ftypes.INT32, nil, nil, nil, "Settlement date")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.settl_date_2 = ProtoField.new("Settl Date 2", "bme.bmefixedincome.retail.bmegate.v1.6.settldate2", ftypes.INT32, nil, nil, nil, "Settlement date of the second leg")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.settlement_system = ProtoField.new("Settlement System", "bme.bmefixedincome.retail.bmegate.v1.6.settlementsystem", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.side = ProtoField.new("Side", "bme.bmefixedincome.retail.bmegate.v1.6.side", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.spread_to_index = ProtoField.new("Spread To Index", "bme.bmefixedincome.retail.bmegate.v1.6.spreadtoindex", ftypes.DOUBLE)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.sst_ipost = ProtoField.new("Sst Ipost", "bme.bmefixedincome.retail.bmegate.v1.6.sstipost", ftypes.DOUBLE, nil, nil, nil, "SSTI posttransparency threshold")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.sst_ipre = ProtoField.new("Sst Ipre", "bme.bmefixedincome.retail.bmegate.v1.6.sstipre", ftypes.DOUBLE, nil, nil, nil, "SSTI pretransparency threshold")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.start_date = ProtoField.new("Start Date", "bme.bmefixedincome.retail.bmegate.v1.6.startdate", ftypes.INT32, nil, nil, nil, "Value date")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.static_range_type = ProtoField.new("Static Range Type", "bme.bmefixedincome.retail.bmegate.v1.6.staticrangetype", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.strippable = ProtoField.new("Strippable", "bme.bmefixedincome.retail.bmegate.v1.6.strippable", ftypes.UINT8)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.symbol = ProtoField.new("Symbol", "bme.bmefixedincome.retail.bmegate.v1.6.symbol", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.symbol_isin = ProtoField.new("Symbol Isin", "bme.bmefixedincome.retail.bmegate.v1.6.symbolisin", ftypes.STRING, nil, nil, nil, "Instrument ISIN")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.test_production_ind = ProtoField.new("Test Production Ind", "bme.bmefixedincome.retail.bmegate.v1.6.testproductionind", ftypes.STRING, nil, nil, nil, "T: Test P: Production")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trad_ses_status = ProtoField.new("Trad Ses Status", "bme.bmefixedincome.retail.bmegate.v1.6.tradsesstatus", ftypes.UINT8, nil, nil, nil, "Trading session status")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trade_date = ProtoField.new("Trade Date", "bme.bmefixedincome.retail.bmegate.v1.6.tradedate", ftypes.INT64, nil, nil, nil, "Trade date and time")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trade_price_condition = ProtoField.new("Trade Price Condition", "bme.bmefixedincome.retail.bmegate.v1.6.tradepricecondition", ftypes.STRING, nil, nil, nil, "MMT 3.8")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trade_session_date = ProtoField.new("Trade Session Date", "bme.bmefixedincome.retail.bmegate.v1.6.tradesessiondate", ftypes.INT32)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trade_type = ProtoField.new("Trade Type", "bme.bmefixedincome.retail.bmegate.v1.6.tradetype", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trading_obligation = ProtoField.new("Trading Obligation", "bme.bmefixedincome.retail.bmegate.v1.6.tradingobligation", ftypes.UINT8)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trading_scope_b_1 = ProtoField.new("Trading Scope B 1", "bme.bmefixedincome.retail.bmegate.v1.6.tradingscopeb1", ftypes.UINT8, nil, nil, nil, "Trading Scope")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trading_session_id = ProtoField.new("Trading Session Id", "bme.bmefixedincome.retail.bmegate.v1.6.tradingsessionid", ftypes.UINT8, nil, nil, nil, "Trading mode")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "bme.bmefixedincome.retail.bmegate.v1.6.tradingsessionsubid", ftypes.UINT8, nil, nil, nil, "Session phase")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.transaction_category = ProtoField.new("Transaction Category", "bme.bmefixedincome.retail.bmegate.v1.6.transactioncategory", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.transaction_date_and_time = ProtoField.new("Transaction Date And Time", "bme.bmefixedincome.retail.bmegate.v1.6.transactiondateandtime", ftypes.INT64, nil, nil, nil, "Transaction Date and Time in nanoseconds since 1-jan-1970 UTC")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trd_match_id = ProtoField.new("Trd Match Id", "bme.bmefixedincome.retail.bmegate.v1.6.trdmatchid", ftypes.UINT32, nil, nil, nil, "System Trade Number")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.type_of_redemption = ProtoField.new("Type Of Redemption", "bme.bmefixedincome.retail.bmegate.v1.6.typeofredemption", ftypes.STRING)
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.volume_issued = ProtoField.new("Volume Issued", "bme.bmefixedincome.retail.bmegate.v1.6.volumeissued", ftypes.DOUBLE)

-- Bme BmeFixedIncome Retail BmeGate 1.6 Framing
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.message = ProtoField.new("Message", "bme.bmefixedincome.retail.bmegate.v1.6.message", ftypes.STRING, nil, nil, nil, "Bme BmeGate Message")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.message_header = ProtoField.new("Message Header", "bme.bmefixedincome.retail.bmegate.v1.6.messageheader", ftypes.STRING, nil, nil, nil, "What every message carries, in either direction: its length and its type. Section 2.1 gives a published message a third field, the sequence number that lets a listener continue an interrupted session without gaps and without repeated messages, and the message tables state it as the message's own first field - which is where it is declared, since a client's Logon, Replay Request and Logout do not carry one")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.packet = ProtoField.new("Packet", "bme.bmefixedincome.retail.bmegate.v1.6.packet", ftypes.STRING, nil, nil, nil, "A Bme binary feed carries no packet header of its own: section 2.1 states that every feed is a series of sequenced messages, each stating its own length, so a datagram holds whole messages to its end")

-- Bme BmeFixedIncome Retail 1.6 Application Messages
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "bme.bmefixedincome.retail.bmegate.v1.6.heartbeatmessage", ftypes.STRING, nil, nil, nil, "The Heartbeat message is used by the Server to indicate that the communication is active. In the Heartbeat message, the SequenceNumber of the previously received message will be repeated")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.indication_of_interest_message = ProtoField.new("Indication Of Interest Message", "bme.bmefixedincome.retail.bmegate.v1.6.indicationofinterestmessage", ftypes.STRING, nil, nil, nil, "Used by the Server to notify an indication of interest on a specific instrument. This functionality is available in Fixed Income and Derivatives")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.logon_response_message = ProtoField.new("Logon Response Message", "bme.bmefixedincome.retail.bmegate.v1.6.logonresponsemessage", ftypes.STRING, nil, nil, nil, "The Logon Response message is used by the Server to accept a new session. In this message the sequence number will always be 0")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.logout_response_message = ProtoField.new("Logout Response Message", "bme.bmefixedincome.retail.bmegate.v1.6.logoutresponsemessage", ftypes.STRING, nil, nil, nil, "The Logout message is used by the Server to notify the end of a session, whether it is solicited or unsolicited. It may also be the answer to a failed logon attempt (see Logon message)")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.network_status_message = ProtoField.new("Network Status Message", "bme.bmefixedincome.retail.bmegate.v1.6.networkstatusmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server with information about the connectivity between the Server and the central systems. In the Network Status message, the SequenceNumber of the previously received message will be repeated")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.news_message = ProtoField.new("News Message", "bme.bmefixedincome.retail.bmegate.v1.6.newsmessage", ftypes.STRING, nil, nil, nil, "Used by the Server to communicate a Market Surveillance or system-wide text message")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.rfq_market_pre_transparency_information_message = ProtoField.new("Rfq Market Pre Transparency Information Message", "bme.bmefixedincome.retail.bmegate.v1.6.rfqmarketpretransparencyinformationmessage", ftypes.STRING, nil, nil, nil, "Used by the server to communicate price information about RFQs. The contents of the RFQID field match those of the field IOIID in the corresponding Indication of Interest message")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.security_list_cancellation_report_message = ProtoField.new("Security List Cancellation Report Message", "bme.bmefixedincome.retail.bmegate.v1.6.securitylistcancellationreportmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server for cancelling previously defined securities")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.security_list_message = ProtoField.new("Security List Message", "bme.bmefixedincome.retail.bmegate.v1.6.securitylistmessage", ftypes.STRING, nil, nil, nil, "T Le y Field ng Valid values Description p th e")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.security_list_update_report_message = ProtoField.new("Security List Update Report Message", "bme.bmefixedincome.retail.bmegate.v1.6.securitylistupdatereportmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server for reporting updates, during the session, to the security definition. T Le y n")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.security_status_message = ProtoField.new("Security Status Message", "bme.bmefixedincome.retail.bmegate.v1.6.securitystatusmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server to inform on the status of one security")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.statistics_message = ProtoField.new("Statistics Message", "bme.bmefixedincome.retail.bmegate.v1.6.statisticsmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server to inform about closing prices and other statistics. Le n")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.topofbook_retail_message = ProtoField.new("Topofbook Retail Message", "bme.bmefixedincome.retail.bmegate.v1.6.topofbookretailmessage", ftypes.STRING, nil, nil, nil, "Specific message for the Retail Service. This message is sent through the UDP channels G/H")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trade_market_post_transparency_information_topofbook_message = ProtoField.new("Trade Market Post Transparency Information Topofbook Message", "bme.bmefixedincome.retail.bmegate.v1.6.trademarketposttransparencyinformationtopofbookmessage", ftypes.STRING, nil, nil, nil, "Used by the server to communicate trade information related to trades resulting from order matching in channels C/D and E/F. It is also used in channels A/B when the trade is the result of order matching at the end of an auction period (where only top-of-book information is shown)")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trade_trade_amendment_or_cancellation_message = ProtoField.new("Trade Trade Amendment Or Cancellation Message", "bme.bmefixedincome.retail.bmegate.v1.6.tradetradeamendmentorcancellationmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about a trade produced due to any reason other than order matching, also to inform about trades produced due to order matching in a Dark pool. In this message, all fields with the suffix 2 refer to the sell order, and the ones without the suffix refer either to both legs or the buy order")
omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "bme.bmefixedincome.retail.bmegate.v1.6.tradingsessionstatusmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about the session status in each Trading Mode")

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Bme BmeFixedIncome Retail BmeGate 1.6 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register Bme BmeFixedIncome Retail BmeGate 1.6 Show Options
omi_bme_bmefixedincome_retail_bmegate_v1_6.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_bme_bmefixedincome_retail_bmegate_v1_6.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_bme_bmefixedincome_retail_bmegate_v1_6.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

-- Handle changed preferences
function omi_bme_bmefixedincome_retail_bmegate_v1_6.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_bme_bmefixedincome_retail_bmegate_v1_6.prefs.show_application_messages then
    show.application_messages = omi_bme_bmefixedincome_retail_bmegate_v1_6.prefs.show_application_messages
  end
  if show.headers ~= omi_bme_bmefixedincome_retail_bmegate_v1_6.prefs.show_headers then
    show.headers = omi_bme_bmefixedincome_retail_bmegate_v1_6.prefs.show_headers
  end
  if show.structs ~= omi_bme_bmefixedincome_retail_bmegate_v1_6.prefs.show_structs then
    show.structs = omi_bme_bmefixedincome_retail_bmegate_v1_6.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Bme BmeFixedIncome Retail BmeGate 1.6 Fields
-----------------------------------------------------------------------

-- Accrued Interest Amt
bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_amt = {}

-- Size: Accrued Interest Amt
bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_amt.size = 8

-- Display: Accrued Interest Amt
bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_amt.display = function(value)
  return "Accrued Interest Amt: "..value
end

-- Translate: Accrued Interest Amt
bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_amt.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Accrued Interest Amt
bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_amt.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_amt.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_amt.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_amt.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.accrued_interest_amt, range, value, display)

  return offset + length, value
end

-- Accrued Interest Calculation Procedure
bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_calculation_procedure = {}

-- Size: Accrued Interest Calculation Procedure
bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_calculation_procedure.size = 1

-- Display: Accrued Interest Calculation Procedure
bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_calculation_procedure.display = function(value)
  if value == "1" then
    return "Accrued Interest Calculation Procedure: Real Base (1)"
  end

  return "Accrued Interest Calculation Procedure: Unknown("..value..")"
end

-- Dissect: Accrued Interest Calculation Procedure
bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_calculation_procedure.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_calculation_procedure.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_calculation_procedure.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.accrued_interest_calculation_procedure, range, value, display)

  return offset + length, value
end

-- Accrued Interest Rate P 8
bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_p_8 = {}

-- Size: Accrued Interest Rate P 8
bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_p_8.size = 8

-- Display: Accrued Interest Rate P 8
bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_p_8.display = function(value)
  return "Accrued Interest Rate P 8: "..value
end

-- Translate: Accrued Interest Rate P 8
bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_p_8.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Accrued Interest Rate P 8
bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_p_8.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_p_8.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_p_8.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_p_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.accrued_interest_rate_p_8, range, value, display)

  return offset + length, value
end

-- Accrued Interest Rate R 8
bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_r_8 = {}

-- Size: Accrued Interest Rate R 8
bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_r_8.size = 8

-- Display: Accrued Interest Rate R 8
bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_r_8.display = function(value)
  return "Accrued Interest Rate R 8: "..value
end

-- Translate: Accrued Interest Rate R 8
bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_r_8.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Accrued Interest Rate R 8
bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_r_8.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_r_8.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_r_8.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_r_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.accrued_interest_rate_r_8, range, value, display)

  return offset + length, value
end

-- Admission Requested By Issuer
bme_bmefixedincome_retail_bmegate_v1_6.admission_requested_by_issuer = {}

-- Size: Admission Requested By Issuer
bme_bmefixedincome_retail_bmegate_v1_6.admission_requested_by_issuer.size = 1

-- Display: Admission Requested By Issuer
bme_bmefixedincome_retail_bmegate_v1_6.admission_requested_by_issuer.display = function(value)
  if value == 0 then
    return "Admission Requested By Issuer: False (0)"
  end
  if value == 1 then
    return "Admission Requested By Issuer: True (1)"
  end
  if value == 255 then
    return "Admission Requested By Issuer: Undefined (255)"
  end

  return "Admission Requested By Issuer: Unknown("..value..")"
end

-- Dissect: Admission Requested By Issuer
bme_bmefixedincome_retail_bmegate_v1_6.admission_requested_by_issuer.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.admission_requested_by_issuer.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.admission_requested_by_issuer.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.admission_requested_by_issuer, range, value, display)

  return offset + length, value
end

-- Algo Flag
bme_bmefixedincome_retail_bmegate_v1_6.algo_flag = {}

-- Size: Algo Flag
bme_bmefixedincome_retail_bmegate_v1_6.algo_flag.size = 1

-- Display: Algo Flag
bme_bmefixedincome_retail_bmegate_v1_6.algo_flag.display = function(value)
  if value == 0 then
    return "Algo Flag: False (0)"
  end
  if value == 1 then
    return "Algo Flag: True (1)"
  end
  if value == 255 then
    return "Algo Flag: Undefined (255)"
  end

  return "Algo Flag: Unknown("..value..")"
end

-- Dissect: Algo Flag
bme_bmefixedincome_retail_bmegate_v1_6.algo_flag.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.algo_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.algo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.algo_flag, range, value, display)

  return offset + length, value
end

-- Alive Volume
bme_bmefixedincome_retail_bmegate_v1_6.alive_volume = {}

-- Size: Alive Volume
bme_bmefixedincome_retail_bmegate_v1_6.alive_volume.size = 8

-- Display: Alive Volume
bme_bmefixedincome_retail_bmegate_v1_6.alive_volume.display = function(value)
  return "Alive Volume: "..value
end

-- Translate: Alive Volume
bme_bmefixedincome_retail_bmegate_v1_6.alive_volume.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Alive Volume
bme_bmefixedincome_retail_bmegate_v1_6.alive_volume.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.alive_volume.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.alive_volume.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.alive_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.alive_volume, range, value, display)

  return offset + length, value
end

-- Alt Bid Px 1
bme_bmefixedincome_retail_bmegate_v1_6.alt_bid_px_1 = {}

-- Size: Alt Bid Px 1
bme_bmefixedincome_retail_bmegate_v1_6.alt_bid_px_1.size = 8

-- Display: Alt Bid Px 1
bme_bmefixedincome_retail_bmegate_v1_6.alt_bid_px_1.display = function(value)
  return "Alt Bid Px 1: "..value
end

-- Translate: Alt Bid Px 1
bme_bmefixedincome_retail_bmegate_v1_6.alt_bid_px_1.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Alt Bid Px 1
bme_bmefixedincome_retail_bmegate_v1_6.alt_bid_px_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.alt_bid_px_1.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.alt_bid_px_1.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.alt_bid_px_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.alt_bid_px_1, range, value, display)

  return offset + length, value
end

-- Alt Last Px
bme_bmefixedincome_retail_bmegate_v1_6.alt_last_px = {}

-- Size: Alt Last Px
bme_bmefixedincome_retail_bmegate_v1_6.alt_last_px.size = 8

-- Display: Alt Last Px
bme_bmefixedincome_retail_bmegate_v1_6.alt_last_px.display = function(value)
  return "Alt Last Px: "..value
end

-- Translate: Alt Last Px
bme_bmefixedincome_retail_bmegate_v1_6.alt_last_px.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Alt Last Px
bme_bmefixedincome_retail_bmegate_v1_6.alt_last_px.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.alt_last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.alt_last_px.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.alt_last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.alt_last_px, range, value, display)

  return offset + length, value
end

-- Alt Sell Px 1
bme_bmefixedincome_retail_bmegate_v1_6.alt_sell_px_1 = {}

-- Size: Alt Sell Px 1
bme_bmefixedincome_retail_bmegate_v1_6.alt_sell_px_1.size = 8

-- Display: Alt Sell Px 1
bme_bmefixedincome_retail_bmegate_v1_6.alt_sell_px_1.display = function(value)
  return "Alt Sell Px 1: "..value
end

-- Translate: Alt Sell Px 1
bme_bmefixedincome_retail_bmegate_v1_6.alt_sell_px_1.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Alt Sell Px 1
bme_bmefixedincome_retail_bmegate_v1_6.alt_sell_px_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.alt_sell_px_1.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.alt_sell_px_1.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.alt_sell_px_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.alt_sell_px_1, range, value, display)

  return offset + length, value
end

-- Amended Trade Date
bme_bmefixedincome_retail_bmegate_v1_6.amended_trade_date = {}

-- Size: Amended Trade Date
bme_bmefixedincome_retail_bmegate_v1_6.amended_trade_date.size = 4

-- Display: Amended Trade Date
bme_bmefixedincome_retail_bmegate_v1_6.amended_trade_date.display = function(value)
  return string.format("Amended Trade Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Amended Trade Date
bme_bmefixedincome_retail_bmegate_v1_6.amended_trade_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.amended_trade_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.amended_trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.amended_trade_date, range, value, display)

  return offset + length, value
end

-- Amended Trade Type
bme_bmefixedincome_retail_bmegate_v1_6.amended_trade_type = {}

-- Size: Amended Trade Type
bme_bmefixedincome_retail_bmegate_v1_6.amended_trade_type.size = 1

-- Display: Amended Trade Type
bme_bmefixedincome_retail_bmegate_v1_6.amended_trade_type.display = function(value)
  if value == "M" then
    return "Amended Trade Type: Market (M)"
  end
  if value == "K" then
    return "Amended Trade Type: Block Trade (K)"
  end
  if value == "X" then
    return "Amended Trade Type: Cancellation (X)"
  end
  if value == "T" then
    return "Amended Trade Type: Trade Amendment (T)"
  end
  if value == "Q" then
    return "Amended Trade Type: Application (Q)"
  end
  if value == "A" then
    return "Amended Trade Type: Block Trade With Settlement Date Equal To Session Date (A)"
  end
  if value == "B" then
    return "Amended Trade Type: Application With Settlement Date Equal To Session Date (B)"
  end
  if value == "C" then
    return "Amended Trade Type: Repo Block Trade (C)"
  end
  if value == "D" then
    return "Amended Trade Type: Repo Application (D)"
  end
  if value == "E" then
    return "Amended Trade Type: Repo Block Trade With Start Date Equal To Session Date (E)"
  end
  if value == "F" then
    return "Amended Trade Type: Repo Application With Start Date Equal To Session Date (F)"
  end
  if value == "3" then
    return "Amended Trade Type: Rfq (3)"
  end

  return "Amended Trade Type: Unknown("..value..")"
end

-- Dissect: Amended Trade Type
bme_bmefixedincome_retail_bmegate_v1_6.amended_trade_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.amended_trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.amended_trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.amended_trade_type, range, value, display)

  return offset + length, value
end

-- Ask Orders 1
bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_1 = {}

-- Size: Ask Orders 1
bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_1.size = 2

-- Display: Ask Orders 1
bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_1.display = function(value)
  return "Ask Orders 1: "..value
end

-- Dissect: Ask Orders 1
bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_orders_1, range, value, display)

  return offset + length, value
end

-- Ask Orders 2
bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_2 = {}

-- Size: Ask Orders 2
bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_2.size = 2

-- Display: Ask Orders 2
bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_2.display = function(value)
  return "Ask Orders 2: "..value
end

-- Dissect: Ask Orders 2
bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_orders_2, range, value, display)

  return offset + length, value
end

-- Ask Orders 3
bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_3 = {}

-- Size: Ask Orders 3
bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_3.size = 2

-- Display: Ask Orders 3
bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_3.display = function(value)
  return "Ask Orders 3: "..value
end

-- Dissect: Ask Orders 3
bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_3.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_orders_3, range, value, display)

  return offset + length, value
end

-- Ask Orders 4
bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_4 = {}

-- Size: Ask Orders 4
bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_4.size = 2

-- Display: Ask Orders 4
bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_4.display = function(value)
  return "Ask Orders 4: "..value
end

-- Dissect: Ask Orders 4
bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_orders_4, range, value, display)

  return offset + length, value
end

-- Ask Orders 5
bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_5 = {}

-- Size: Ask Orders 5
bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_5.size = 2

-- Display: Ask Orders 5
bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_5.display = function(value)
  return "Ask Orders 5: "..value
end

-- Dissect: Ask Orders 5
bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_5.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_orders_5, range, value, display)

  return offset + length, value
end

-- Ask Px 1
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_1 = {}

-- Size: Ask Px 1
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_1.size = 8

-- Display: Ask Px 1
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_1.display = function(value)
  return "Ask Px 1: "..value
end

-- Translate: Ask Px 1
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_1.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ask Px 1
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.ask_px_1.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.ask_px_1.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.ask_px_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_px_1, range, value, display)

  return offset + length, value
end

-- Ask Px 2
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_2 = {}

-- Size: Ask Px 2
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_2.size = 8

-- Display: Ask Px 2
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_2.display = function(value)
  return "Ask Px 2: "..value
end

-- Translate: Ask Px 2
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_2.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ask Px 2
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.ask_px_2.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.ask_px_2.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.ask_px_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_px_2, range, value, display)

  return offset + length, value
end

-- Ask Px 3
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_3 = {}

-- Size: Ask Px 3
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_3.size = 8

-- Display: Ask Px 3
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_3.display = function(value)
  return "Ask Px 3: "..value
end

-- Translate: Ask Px 3
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_3.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ask Px 3
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.ask_px_3.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.ask_px_3.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.ask_px_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_px_3, range, value, display)

  return offset + length, value
end

-- Ask Px 4
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_4 = {}

-- Size: Ask Px 4
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_4.size = 8

-- Display: Ask Px 4
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_4.display = function(value)
  return "Ask Px 4: "..value
end

-- Translate: Ask Px 4
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_4.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ask Px 4
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.ask_px_4.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.ask_px_4.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.ask_px_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_px_4, range, value, display)

  return offset + length, value
end

-- Ask Px 5
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_5 = {}

-- Size: Ask Px 5
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_5.size = 8

-- Display: Ask Px 5
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_5.display = function(value)
  return "Ask Px 5: "..value
end

-- Translate: Ask Px 5
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_5.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ask Px 5
bme_bmefixedincome_retail_bmegate_v1_6.ask_px_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.ask_px_5.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.ask_px_5.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.ask_px_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_px_5, range, value, display)

  return offset + length, value
end

-- Ask Size 1
bme_bmefixedincome_retail_bmegate_v1_6.ask_size_1 = {}

-- Size: Ask Size 1
bme_bmefixedincome_retail_bmegate_v1_6.ask_size_1.size = 4

-- Display: Ask Size 1
bme_bmefixedincome_retail_bmegate_v1_6.ask_size_1.display = function(value)
  return "Ask Size 1: "..value
end

-- Dissect: Ask Size 1
bme_bmefixedincome_retail_bmegate_v1_6.ask_size_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.ask_size_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.ask_size_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_size_1, range, value, display)

  return offset + length, value
end

-- Ask Size 2
bme_bmefixedincome_retail_bmegate_v1_6.ask_size_2 = {}

-- Size: Ask Size 2
bme_bmefixedincome_retail_bmegate_v1_6.ask_size_2.size = 4

-- Display: Ask Size 2
bme_bmefixedincome_retail_bmegate_v1_6.ask_size_2.display = function(value)
  return "Ask Size 2: "..value
end

-- Dissect: Ask Size 2
bme_bmefixedincome_retail_bmegate_v1_6.ask_size_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.ask_size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.ask_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_size_2, range, value, display)

  return offset + length, value
end

-- Ask Size 3
bme_bmefixedincome_retail_bmegate_v1_6.ask_size_3 = {}

-- Size: Ask Size 3
bme_bmefixedincome_retail_bmegate_v1_6.ask_size_3.size = 4

-- Display: Ask Size 3
bme_bmefixedincome_retail_bmegate_v1_6.ask_size_3.display = function(value)
  return "Ask Size 3: "..value
end

-- Dissect: Ask Size 3
bme_bmefixedincome_retail_bmegate_v1_6.ask_size_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.ask_size_3.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.ask_size_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_size_3, range, value, display)

  return offset + length, value
end

-- Ask Size 4
bme_bmefixedincome_retail_bmegate_v1_6.ask_size_4 = {}

-- Size: Ask Size 4
bme_bmefixedincome_retail_bmegate_v1_6.ask_size_4.size = 4

-- Display: Ask Size 4
bme_bmefixedincome_retail_bmegate_v1_6.ask_size_4.display = function(value)
  return "Ask Size 4: "..value
end

-- Dissect: Ask Size 4
bme_bmefixedincome_retail_bmegate_v1_6.ask_size_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.ask_size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.ask_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_size_4, range, value, display)

  return offset + length, value
end

-- Ask Size 5
bme_bmefixedincome_retail_bmegate_v1_6.ask_size_5 = {}

-- Size: Ask Size 5
bme_bmefixedincome_retail_bmegate_v1_6.ask_size_5.size = 4

-- Display: Ask Size 5
bme_bmefixedincome_retail_bmegate_v1_6.ask_size_5.display = function(value)
  return "Ask Size 5: "..value
end

-- Dissect: Ask Size 5
bme_bmefixedincome_retail_bmegate_v1_6.ask_size_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.ask_size_5.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.ask_size_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ask_size_5, range, value, display)

  return offset + length, value
end

-- Benchmark
bme_bmefixedincome_retail_bmegate_v1_6.benchmark = {}

-- Size: Benchmark
bme_bmefixedincome_retail_bmegate_v1_6.benchmark.size = 1

-- Display: Benchmark
bme_bmefixedincome_retail_bmegate_v1_6.benchmark.display = function(value)
  if value == 0 then
    return "Benchmark: False (0)"
  end
  if value == 1 then
    return "Benchmark: True (1)"
  end
  if value == 255 then
    return "Benchmark: Undefined (255)"
  end

  return "Benchmark: Unknown("..value..")"
end

-- Dissect: Benchmark
bme_bmefixedincome_retail_bmegate_v1_6.benchmark.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.benchmark.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.benchmark.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.benchmark, range, value, display)

  return offset + length, value
end

-- Benchmark Curve Points Units
bme_bmefixedincome_retail_bmegate_v1_6.benchmark_curve_points_units = {}

-- Size: Benchmark Curve Points Units
bme_bmefixedincome_retail_bmegate_v1_6.benchmark_curve_points_units.size = 4

-- Display: Benchmark Curve Points Units
bme_bmefixedincome_retail_bmegate_v1_6.benchmark_curve_points_units.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Benchmark Curve Points Units: No Value"
  end

  return "Benchmark Curve Points Units: "..value
end

-- Dissect: Benchmark Curve Points Units
bme_bmefixedincome_retail_bmegate_v1_6.benchmark_curve_points_units.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.benchmark_curve_points_units.size
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

  local display = bme_bmefixedincome_retail_bmegate_v1_6.benchmark_curve_points_units.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.benchmark_curve_points_units, range, value, display)

  return offset + length, value
end

-- Benchmark Curve Points Value
bme_bmefixedincome_retail_bmegate_v1_6.benchmark_curve_points_value = {}

-- Size: Benchmark Curve Points Value
bme_bmefixedincome_retail_bmegate_v1_6.benchmark_curve_points_value.size = 1

-- Display: Benchmark Curve Points Value
bme_bmefixedincome_retail_bmegate_v1_6.benchmark_curve_points_value.display = function(value)
  return "Benchmark Curve Points Value: "..value
end

-- Dissect: Benchmark Curve Points Value
bme_bmefixedincome_retail_bmegate_v1_6.benchmark_curve_points_value.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.benchmark_curve_points_value.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.benchmark_curve_points_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.benchmark_curve_points_value, range, value, display)

  return offset + length, value
end

-- Benchmark Security Id
bme_bmefixedincome_retail_bmegate_v1_6.benchmark_security_id = {}

-- Size: Benchmark Security Id
bme_bmefixedincome_retail_bmegate_v1_6.benchmark_security_id.size = 25

-- Display: Benchmark Security Id
bme_bmefixedincome_retail_bmegate_v1_6.benchmark_security_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Benchmark Security Id: No Value"
  end

  return "Benchmark Security Id: "..value
end

-- Dissect: Benchmark Security Id
bme_bmefixedincome_retail_bmegate_v1_6.benchmark_security_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.benchmark_security_id.size
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

  local display = bme_bmefixedincome_retail_bmegate_v1_6.benchmark_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.benchmark_security_id, range, value, display)

  return offset + length, value
end

-- Bencrfpt Flag
bme_bmefixedincome_retail_bmegate_v1_6.bencrfpt_flag = {}

-- Size: Bencrfpt Flag
bme_bmefixedincome_retail_bmegate_v1_6.bencrfpt_flag.size = 1

-- Display: Bencrfpt Flag
bme_bmefixedincome_retail_bmegate_v1_6.bencrfpt_flag.display = function(value)
  if value == " " then
    return "Bencrfpt Flag: Normal Trade (<whitespace>)"
  end
  if value == "6" then
    return "Bencrfpt Flag: Benchmark Trade Benc (6)"
  end

  return "Bencrfpt Flag: Unknown("..value..")"
end

-- Dissect: Bencrfpt Flag
bme_bmefixedincome_retail_bmegate_v1_6.bencrfpt_flag.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.bencrfpt_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.bencrfpt_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bencrfpt_flag, range, value, display)

  return offset + length, value
end

-- Bid Orders 1
bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_1 = {}

-- Size: Bid Orders 1
bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_1.size = 2

-- Display: Bid Orders 1
bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_1.display = function(value)
  return "Bid Orders 1: "..value
end

-- Dissect: Bid Orders 1
bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_orders_1, range, value, display)

  return offset + length, value
end

-- Bid Orders 2
bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_2 = {}

-- Size: Bid Orders 2
bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_2.size = 2

-- Display: Bid Orders 2
bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_2.display = function(value)
  return "Bid Orders 2: "..value
end

-- Dissect: Bid Orders 2
bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_orders_2, range, value, display)

  return offset + length, value
end

-- Bid Orders 3
bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_3 = {}

-- Size: Bid Orders 3
bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_3.size = 2

-- Display: Bid Orders 3
bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_3.display = function(value)
  return "Bid Orders 3: "..value
end

-- Dissect: Bid Orders 3
bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_3.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_orders_3, range, value, display)

  return offset + length, value
end

-- Bid Orders 4
bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_4 = {}

-- Size: Bid Orders 4
bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_4.size = 2

-- Display: Bid Orders 4
bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_4.display = function(value)
  return "Bid Orders 4: "..value
end

-- Dissect: Bid Orders 4
bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_orders_4, range, value, display)

  return offset + length, value
end

-- Bid Orders 5
bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_5 = {}

-- Size: Bid Orders 5
bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_5.size = 2

-- Display: Bid Orders 5
bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_5.display = function(value)
  return "Bid Orders 5: "..value
end

-- Dissect: Bid Orders 5
bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_5.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_orders_5, range, value, display)

  return offset + length, value
end

-- Bid Px 1
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_1 = {}

-- Size: Bid Px 1
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_1.size = 8

-- Display: Bid Px 1
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_1.display = function(value)
  return "Bid Px 1: "..value
end

-- Translate: Bid Px 1
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_1.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Px 1
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.bid_px_1.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.bid_px_1.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.bid_px_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_px_1, range, value, display)

  return offset + length, value
end

-- Bid Px 2
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_2 = {}

-- Size: Bid Px 2
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_2.size = 8

-- Display: Bid Px 2
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_2.display = function(value)
  return "Bid Px 2: "..value
end

-- Translate: Bid Px 2
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_2.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Px 2
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.bid_px_2.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.bid_px_2.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.bid_px_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_px_2, range, value, display)

  return offset + length, value
end

-- Bid Px 3
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_3 = {}

-- Size: Bid Px 3
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_3.size = 8

-- Display: Bid Px 3
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_3.display = function(value)
  return "Bid Px 3: "..value
end

-- Translate: Bid Px 3
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_3.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Px 3
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.bid_px_3.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.bid_px_3.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.bid_px_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_px_3, range, value, display)

  return offset + length, value
end

-- Bid Px 4
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_4 = {}

-- Size: Bid Px 4
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_4.size = 8

-- Display: Bid Px 4
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_4.display = function(value)
  return "Bid Px 4: "..value
end

-- Translate: Bid Px 4
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_4.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Px 4
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.bid_px_4.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.bid_px_4.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.bid_px_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_px_4, range, value, display)

  return offset + length, value
end

-- Bid Px 5
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_5 = {}

-- Size: Bid Px 5
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_5.size = 8

-- Display: Bid Px 5
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_5.display = function(value)
  return "Bid Px 5: "..value
end

-- Translate: Bid Px 5
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_5.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Px 5
bme_bmefixedincome_retail_bmegate_v1_6.bid_px_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.bid_px_5.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.bid_px_5.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.bid_px_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_px_5, range, value, display)

  return offset + length, value
end

-- Bid Size 1
bme_bmefixedincome_retail_bmegate_v1_6.bid_size_1 = {}

-- Size: Bid Size 1
bme_bmefixedincome_retail_bmegate_v1_6.bid_size_1.size = 4

-- Display: Bid Size 1
bme_bmefixedincome_retail_bmegate_v1_6.bid_size_1.display = function(value)
  return "Bid Size 1: "..value
end

-- Dissect: Bid Size 1
bme_bmefixedincome_retail_bmegate_v1_6.bid_size_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.bid_size_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.bid_size_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_size_1, range, value, display)

  return offset + length, value
end

-- Bid Size 2
bme_bmefixedincome_retail_bmegate_v1_6.bid_size_2 = {}

-- Size: Bid Size 2
bme_bmefixedincome_retail_bmegate_v1_6.bid_size_2.size = 4

-- Display: Bid Size 2
bme_bmefixedincome_retail_bmegate_v1_6.bid_size_2.display = function(value)
  return "Bid Size 2: "..value
end

-- Dissect: Bid Size 2
bme_bmefixedincome_retail_bmegate_v1_6.bid_size_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.bid_size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.bid_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_size_2, range, value, display)

  return offset + length, value
end

-- Bid Size 3
bme_bmefixedincome_retail_bmegate_v1_6.bid_size_3 = {}

-- Size: Bid Size 3
bme_bmefixedincome_retail_bmegate_v1_6.bid_size_3.size = 4

-- Display: Bid Size 3
bme_bmefixedincome_retail_bmegate_v1_6.bid_size_3.display = function(value)
  return "Bid Size 3: "..value
end

-- Dissect: Bid Size 3
bme_bmefixedincome_retail_bmegate_v1_6.bid_size_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.bid_size_3.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.bid_size_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_size_3, range, value, display)

  return offset + length, value
end

-- Bid Size 4
bme_bmefixedincome_retail_bmegate_v1_6.bid_size_4 = {}

-- Size: Bid Size 4
bme_bmefixedincome_retail_bmegate_v1_6.bid_size_4.size = 4

-- Display: Bid Size 4
bme_bmefixedincome_retail_bmegate_v1_6.bid_size_4.display = function(value)
  return "Bid Size 4: "..value
end

-- Dissect: Bid Size 4
bme_bmefixedincome_retail_bmegate_v1_6.bid_size_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.bid_size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.bid_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_size_4, range, value, display)

  return offset + length, value
end

-- Bid Size 5
bme_bmefixedincome_retail_bmegate_v1_6.bid_size_5 = {}

-- Size: Bid Size 5
bme_bmefixedincome_retail_bmegate_v1_6.bid_size_5.size = 4

-- Display: Bid Size 5
bme_bmefixedincome_retail_bmegate_v1_6.bid_size_5.display = function(value)
  return "Bid Size 5: "..value
end

-- Dissect: Bid Size 5
bme_bmefixedincome_retail_bmegate_v1_6.bid_size_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.bid_size_5.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.bid_size_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bid_size_5, range, value, display)

  return offset + length, value
end

-- Block Static Range
bme_bmefixedincome_retail_bmegate_v1_6.block_static_range = {}

-- Size: Block Static Range
bme_bmefixedincome_retail_bmegate_v1_6.block_static_range.size = 8

-- Display: Block Static Range
bme_bmefixedincome_retail_bmegate_v1_6.block_static_range.display = function(value)
  return "Block Static Range: "..value
end

-- Translate: Block Static Range
bme_bmefixedincome_retail_bmegate_v1_6.block_static_range.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Block Static Range
bme_bmefixedincome_retail_bmegate_v1_6.block_static_range.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.block_static_range.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.block_static_range.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.block_static_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.block_static_range, range, value, display)

  return offset + length, value
end

-- Bond Seniority
bme_bmefixedincome_retail_bmegate_v1_6.bond_seniority = {}

-- Size: Bond Seniority
bme_bmefixedincome_retail_bmegate_v1_6.bond_seniority.size = 4

-- Display: Bond Seniority
bme_bmefixedincome_retail_bmegate_v1_6.bond_seniority.display = function(value)
  if value == "SNDB" then
    return "Bond Seniority: Senior (SNDB)"
  end
  if value == "MZZD" then
    return "Bond Seniority: Mezzanine (MZZD)"
  end
  if value == "SBOD" then
    return "Bond Seniority: Subordinated (SBOD)"
  end
  if value == "JUND" then
    return "Bond Seniority: Junior (JUND)"
  end

  return "Bond Seniority: Unknown("..value..")"
end

-- Dissect: Bond Seniority
bme_bmefixedincome_retail_bmegate_v1_6.bond_seniority.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.bond_seniority.size
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

  local display = bme_bmefixedincome_retail_bmegate_v1_6.bond_seniority.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.bond_seniority, range, value, display)

  return offset + length, value
end

-- Buy Rf Qs Number
bme_bmefixedincome_retail_bmegate_v1_6.buy_rf_qs_number = {}

-- Size: Buy Rf Qs Number
bme_bmefixedincome_retail_bmegate_v1_6.buy_rf_qs_number.size = 2

-- Display: Buy Rf Qs Number
bme_bmefixedincome_retail_bmegate_v1_6.buy_rf_qs_number.display = function(value)
  return "Buy Rf Qs Number: "..value
end

-- Dissect: Buy Rf Qs Number
bme_bmefixedincome_retail_bmegate_v1_6.buy_rf_qs_number.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.buy_rf_qs_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.buy_rf_qs_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.buy_rf_qs_number, range, value, display)

  return offset + length, value
end

-- Calculation Method
bme_bmefixedincome_retail_bmegate_v1_6.calculation_method = {}

-- Size: Calculation Method
bme_bmefixedincome_retail_bmegate_v1_6.calculation_method.size = 1

-- Display: Calculation Method
bme_bmefixedincome_retail_bmegate_v1_6.calculation_method.display = function(value)
  if value == "0" then
    return "Calculation Method: Thirty 360 US NASD (0)"
  end
  if value == "1" then
    return "Calculation Method: Actual Actual (1)"
  end
  if value == "2" then
    return "Calculation Method: Actual 360 (2)"
  end
  if value == "3" then
    return "Calculation Method: Actual 365 (3)"
  end
  if value == "4" then
    return "Calculation Method: Thirty 360 European (4)"
  end
  if value == "5" then
    return "Calculation Method: If Days To Maturity 365 Actual 360 Else Actual 365 (5)"
  end

  return "Calculation Method: Unknown("..value..")"
end

-- Dissect: Calculation Method
bme_bmefixedincome_retail_bmegate_v1_6.calculation_method.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.calculation_method.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.calculation_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.calculation_method, range, value, display)

  return offset + length, value
end

-- Cfi Code
bme_bmefixedincome_retail_bmegate_v1_6.cfi_code = {}

-- Size: Cfi Code
bme_bmefixedincome_retail_bmegate_v1_6.cfi_code.size = 6

-- Display: Cfi Code
bme_bmefixedincome_retail_bmegate_v1_6.cfi_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cfi Code: No Value"
  end

  return "Cfi Code: "..value
end

-- Dissect: Cfi Code
bme_bmefixedincome_retail_bmegate_v1_6.cfi_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.cfi_code.size
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

  local display = bme_bmefixedincome_retail_bmegate_v1_6.cfi_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Contract Multiplier
bme_bmefixedincome_retail_bmegate_v1_6.contract_multiplier = {}

-- Size: Contract Multiplier
bme_bmefixedincome_retail_bmegate_v1_6.contract_multiplier.size = 8

-- Display: Contract Multiplier
bme_bmefixedincome_retail_bmegate_v1_6.contract_multiplier.display = function(value)
  return "Contract Multiplier: "..value
end

-- Translate: Contract Multiplier
bme_bmefixedincome_retail_bmegate_v1_6.contract_multiplier.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Contract Multiplier
bme_bmefixedincome_retail_bmegate_v1_6.contract_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.contract_multiplier.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.contract_multiplier.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.contract_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Coupon Payment Date
bme_bmefixedincome_retail_bmegate_v1_6.coupon_payment_date = {}

-- Size: Coupon Payment Date
bme_bmefixedincome_retail_bmegate_v1_6.coupon_payment_date.size = 4

-- Display: Coupon Payment Date
bme_bmefixedincome_retail_bmegate_v1_6.coupon_payment_date.display = function(value)
  return string.format("Coupon Payment Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Coupon Payment Date
bme_bmefixedincome_retail_bmegate_v1_6.coupon_payment_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.coupon_payment_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.coupon_payment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.coupon_payment_date, range, value, display)

  return offset + length, value
end

-- Coupon Periodicity
bme_bmefixedincome_retail_bmegate_v1_6.coupon_periodicity = {}

-- Size: Coupon Periodicity
bme_bmefixedincome_retail_bmegate_v1_6.coupon_periodicity.size = 1

-- Display: Coupon Periodicity
bme_bmefixedincome_retail_bmegate_v1_6.coupon_periodicity.display = function(value)
  return "Coupon Periodicity: "..value
end

-- Dissect: Coupon Periodicity
bme_bmefixedincome_retail_bmegate_v1_6.coupon_periodicity.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.coupon_periodicity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.coupon_periodicity.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.coupon_periodicity, range, value, display)

  return offset + length, value
end

-- Coupon Quotation
bme_bmefixedincome_retail_bmegate_v1_6.coupon_quotation = {}

-- Size: Coupon Quotation
bme_bmefixedincome_retail_bmegate_v1_6.coupon_quotation.size = 1

-- Display: Coupon Quotation
bme_bmefixedincome_retail_bmegate_v1_6.coupon_quotation.display = function(value)
  if value == 0 then
    return "Coupon Quotation: False (0)"
  end
  if value == 1 then
    return "Coupon Quotation: True (1)"
  end
  if value == 255 then
    return "Coupon Quotation: Undefined (255)"
  end

  return "Coupon Quotation: Unknown("..value..")"
end

-- Dissect: Coupon Quotation
bme_bmefixedincome_retail_bmegate_v1_6.coupon_quotation.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.coupon_quotation.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.coupon_quotation.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.coupon_quotation, range, value, display)

  return offset + length, value
end

-- Coupon Rate
bme_bmefixedincome_retail_bmegate_v1_6.coupon_rate = {}

-- Size: Coupon Rate
bme_bmefixedincome_retail_bmegate_v1_6.coupon_rate.size = 8

-- Display: Coupon Rate
bme_bmefixedincome_retail_bmegate_v1_6.coupon_rate.display = function(value)
  return "Coupon Rate: "..value
end

-- Translate: Coupon Rate
bme_bmefixedincome_retail_bmegate_v1_6.coupon_rate.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Coupon Rate
bme_bmefixedincome_retail_bmegate_v1_6.coupon_rate.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.coupon_rate.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.coupon_rate.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.coupon_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.coupon_rate, range, value, display)

  return offset + length, value
end

-- Coupon Type
bme_bmefixedincome_retail_bmegate_v1_6.coupon_type = {}

-- Size: Coupon Type
bme_bmefixedincome_retail_bmegate_v1_6.coupon_type.size = 1

-- Display: Coupon Type
bme_bmefixedincome_retail_bmegate_v1_6.coupon_type.display = function(value)
  if value == "F" then
    return "Coupon Type: Fixed (F)"
  end
  if value == "V" then
    return "Coupon Type: Variable (V)"
  end
  if value == " " then
    return "Coupon Type: Na (<whitespace>)"
  end

  return "Coupon Type: Unknown("..value..")"
end

-- Dissect: Coupon Type
bme_bmefixedincome_retail_bmegate_v1_6.coupon_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.coupon_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.coupon_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.coupon_type, range, value, display)

  return offset + length, value
end

-- Currency
bme_bmefixedincome_retail_bmegate_v1_6.currency = {}

-- Size: Currency
bme_bmefixedincome_retail_bmegate_v1_6.currency.size = 3

-- Display: Currency
bme_bmefixedincome_retail_bmegate_v1_6.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
bme_bmefixedincome_retail_bmegate_v1_6.currency.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.currency.size
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

  local display = bme_bmefixedincome_retail_bmegate_v1_6.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.currency, range, value, display)

  return offset + length, value
end

-- Data Code
bme_bmefixedincome_retail_bmegate_v1_6.data_code = {}

-- Size: Data Code
bme_bmefixedincome_retail_bmegate_v1_6.data_code.size = 1

-- Display: Data Code
bme_bmefixedincome_retail_bmegate_v1_6.data_code.display = function(value)
  return "Data Code: "..value
end

-- Dissect: Data Code
bme_bmefixedincome_retail_bmegate_v1_6.data_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.data_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.data_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.data_code, range, value, display)

  return offset + length, value
end

-- Data Count
bme_bmefixedincome_retail_bmegate_v1_6.data_count = {}

-- Size: Data Count
bme_bmefixedincome_retail_bmegate_v1_6.data_count.size = 1

-- Display: Data Count
bme_bmefixedincome_retail_bmegate_v1_6.data_count.display = function(value)
  return "Data Count: "..value
end

-- Dissect: Data Count
bme_bmefixedincome_retail_bmegate_v1_6.data_count.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.data_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.data_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.data_count, range, value, display)

  return offset + length, value
end

-- Date Last Coupon Was Paid
bme_bmefixedincome_retail_bmegate_v1_6.date_last_coupon_was_paid = {}

-- Size: Date Last Coupon Was Paid
bme_bmefixedincome_retail_bmegate_v1_6.date_last_coupon_was_paid.size = 4

-- Display: Date Last Coupon Was Paid
bme_bmefixedincome_retail_bmegate_v1_6.date_last_coupon_was_paid.display = function(value)
  return string.format("Date Last Coupon Was Paid: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Date Last Coupon Was Paid
bme_bmefixedincome_retail_bmegate_v1_6.date_last_coupon_was_paid.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.date_last_coupon_was_paid.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.date_last_coupon_was_paid.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.date_last_coupon_was_paid, range, value, display)

  return offset + length, value
end

-- Deferral Waiver
bme_bmefixedincome_retail_bmegate_v1_6.deferral_waiver = {}

-- Size: Deferral Waiver
bme_bmefixedincome_retail_bmegate_v1_6.deferral_waiver.size = 1

-- Display: Deferral Waiver
bme_bmefixedincome_retail_bmegate_v1_6.deferral_waiver.display = function(value)
  if value == " " then
    return "Deferral Waiver: Immediate Publication (<whitespace>)"
  end
  if value == "A" then
    return "Deferral Waiver: Non Immediate Publication Deferral For Medium Size Liquid Market Mlf 1 (A)"
  end
  if value == "B" then
    return "Deferral Waiver: Non Immediate Publication Deferral For Medium Size Illiquid Market Mif 2 (B)"
  end
  if value == "C" then
    return "Deferral Waiver: Non Immediate Publication Deferral For Large Size Liquid Market Llf 3 (C)"
  end
  if value == "D" then
    return "Deferral Waiver: Non Immediate Publication Deferral For Large Size Illiquid Market Lif 4 (D)"
  end
  if value == "E" then
    return "Deferral Waiver: Non Immediate Publication Deferral For Very Large Size Liquid Market Vlf 5 (E)"
  end
  if value == "F" then
    return "Deferral Waiver: Non Immediate Publication Deferral For Very Large Size Illiquid Market Vif 5 (F)"
  end
  if value == "G" then
    return "Deferral Waiver: Non Immediate Publication Deferral For Et Cs Et Ns Sf Ps Emission Allowances Deff (G)"
  end

  return "Deferral Waiver: Unknown("..value..")"
end

-- Dissect: Deferral Waiver
bme_bmefixedincome_retail_bmegate_v1_6.deferral_waiver.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.deferral_waiver.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.deferral_waiver.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.deferral_waiver, range, value, display)

  return offset + length, value
end

-- Designation
bme_bmefixedincome_retail_bmegate_v1_6.designation = {}

-- Size: Designation
bme_bmefixedincome_retail_bmegate_v1_6.designation.size = 1

-- Display: Designation
bme_bmefixedincome_retail_bmegate_v1_6.designation.display = function(value)
  if value == "1" then
    return "Designation: Trade During Open Market (1)"
  end
  if value == "2" then
    return "Designation: Trade During Opening Auction (2)"
  end
  if value == "3" then
    return "Designation: Trade During Closing Auction (3)"
  end
  if value == "4" then
    return "Designation: Trade During Volatility Auction (4)"
  end
  if value == "5" then
    return "Designation: Trade During Manual Auction (5)"
  end
  if value == "6" then
    return "Designation: Trade During Opening Auction Extension (6)"
  end
  if value == "7" then
    return "Designation: Trade During Closing Auction Extension (7)"
  end
  if value == "8" then
    return "Designation: Trade During Tal Period (8)"
  end
  if value == "C" then
    return "Designation: Trade In Spain At Mid Dark Book (C)"
  end

  return "Designation: Unknown("..value..")"
end

-- Dissect: Designation
bme_bmefixedincome_retail_bmegate_v1_6.designation.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.designation.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.designation.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.designation, range, value, display)

  return offset + length, value
end

-- End Cash
bme_bmefixedincome_retail_bmegate_v1_6.end_cash = {}

-- Size: End Cash
bme_bmefixedincome_retail_bmegate_v1_6.end_cash.size = 8

-- Display: End Cash
bme_bmefixedincome_retail_bmegate_v1_6.end_cash.display = function(value)
  return "End Cash: "..value
end

-- Translate: End Cash
bme_bmefixedincome_retail_bmegate_v1_6.end_cash.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: End Cash
bme_bmefixedincome_retail_bmegate_v1_6.end_cash.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.end_cash.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.end_cash.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.end_cash.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.end_cash, range, value, display)

  return offset + length, value
end

-- Environment Code
bme_bmefixedincome_retail_bmegate_v1_6.environment_code = {}

-- Size: Environment Code
bme_bmefixedincome_retail_bmegate_v1_6.environment_code.size = 2

-- Display: Environment Code
bme_bmefixedincome_retail_bmegate_v1_6.environment_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Environment Code: No Value"
  end

  return "Environment Code: "..value
end

-- Dissect: Environment Code
bme_bmefixedincome_retail_bmegate_v1_6.environment_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.environment_code.size
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

  local display = bme_bmefixedincome_retail_bmegate_v1_6.environment_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.environment_code, range, value, display)

  return offset + length, value
end

-- Exec Ref Id
bme_bmefixedincome_retail_bmegate_v1_6.exec_ref_id = {}

-- Size: Exec Ref Id
bme_bmefixedincome_retail_bmegate_v1_6.exec_ref_id.size = 4

-- Display: Exec Ref Id
bme_bmefixedincome_retail_bmegate_v1_6.exec_ref_id.display = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
bme_bmefixedincome_retail_bmegate_v1_6.exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Expected Sequence Number
bme_bmefixedincome_retail_bmegate_v1_6.expected_sequence_number = {}

-- Size: Expected Sequence Number
bme_bmefixedincome_retail_bmegate_v1_6.expected_sequence_number.size = 4

-- Display: Expected Sequence Number
bme_bmefixedincome_retail_bmegate_v1_6.expected_sequence_number.display = function(value)
  return "Expected Sequence Number: "..value
end

-- Dissect: Expected Sequence Number
bme_bmefixedincome_retail_bmegate_v1_6.expected_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.expected_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.expected_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.expected_sequence_number, range, value, display)

  return offset + length, value
end

-- Facial
bme_bmefixedincome_retail_bmegate_v1_6.facial = {}

-- Size: Facial
bme_bmefixedincome_retail_bmegate_v1_6.facial.size = 8

-- Display: Facial
bme_bmefixedincome_retail_bmegate_v1_6.facial.display = function(value)
  return "Facial: "..value
end

-- Translate: Facial
bme_bmefixedincome_retail_bmegate_v1_6.facial.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Facial
bme_bmefixedincome_retail_bmegate_v1_6.facial.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.facial.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.facial.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.facial.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.facial, range, value, display)

  return offset + length, value
end

-- First Trading Date
bme_bmefixedincome_retail_bmegate_v1_6.first_trading_date = {}

-- Size: First Trading Date
bme_bmefixedincome_retail_bmegate_v1_6.first_trading_date.size = 4

-- Display: First Trading Date
bme_bmefixedincome_retail_bmegate_v1_6.first_trading_date.display = function(value)
  return string.format("First Trading Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: First Trading Date
bme_bmefixedincome_retail_bmegate_v1_6.first_trading_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.first_trading_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.first_trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.first_trading_date, range, value, display)

  return offset + length, value
end

-- Fisn
bme_bmefixedincome_retail_bmegate_v1_6.fisn = {}

-- Size: Fisn
bme_bmefixedincome_retail_bmegate_v1_6.fisn.size = 35

-- Display: Fisn
bme_bmefixedincome_retail_bmegate_v1_6.fisn.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fisn: No Value"
  end

  return "Fisn: "..value
end

-- Dissect: Fisn
bme_bmefixedincome_retail_bmegate_v1_6.fisn.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.fisn.size
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

  local display = bme_bmefixedincome_retail_bmegate_v1_6.fisn.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.fisn, range, value, display)

  return offset + length, value
end

-- Gross Trade Amt
bme_bmefixedincome_retail_bmegate_v1_6.gross_trade_amt = {}

-- Size: Gross Trade Amt
bme_bmefixedincome_retail_bmegate_v1_6.gross_trade_amt.size = 8

-- Display: Gross Trade Amt
bme_bmefixedincome_retail_bmegate_v1_6.gross_trade_amt.display = function(value)
  return "Gross Trade Amt: "..value
end

-- Translate: Gross Trade Amt
bme_bmefixedincome_retail_bmegate_v1_6.gross_trade_amt.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Gross Trade Amt
bme_bmefixedincome_retail_bmegate_v1_6.gross_trade_amt.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.gross_trade_amt.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.gross_trade_amt.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.gross_trade_amt.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.gross_trade_amt, range, value, display)

  return offset + length, value
end

-- Heart Bt Int
bme_bmefixedincome_retail_bmegate_v1_6.heart_bt_int = {}

-- Size: Heart Bt Int
bme_bmefixedincome_retail_bmegate_v1_6.heart_bt_int.size = 1

-- Display: Heart Bt Int
bme_bmefixedincome_retail_bmegate_v1_6.heart_bt_int.display = function(value)
  return "Heart Bt Int: "..value
end

-- Dissect: Heart Bt Int
bme_bmefixedincome_retail_bmegate_v1_6.heart_bt_int.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.heart_bt_int.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.heart_bt_int.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.heart_bt_int, range, value, display)

  return offset + length, value
end

-- High Limit Price
bme_bmefixedincome_retail_bmegate_v1_6.high_limit_price = {}

-- Size: High Limit Price
bme_bmefixedincome_retail_bmegate_v1_6.high_limit_price.size = 8

-- Display: High Limit Price
bme_bmefixedincome_retail_bmegate_v1_6.high_limit_price.display = function(value)
  return "High Limit Price: "..value
end

-- Translate: High Limit Price
bme_bmefixedincome_retail_bmegate_v1_6.high_limit_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: High Limit Price
bme_bmefixedincome_retail_bmegate_v1_6.high_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.high_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.high_limit_price.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.high_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.high_limit_price, range, value, display)

  return offset + length, value
end

-- Interest Accrual Date
bme_bmefixedincome_retail_bmegate_v1_6.interest_accrual_date = {}

-- Size: Interest Accrual Date
bme_bmefixedincome_retail_bmegate_v1_6.interest_accrual_date.size = 4

-- Display: Interest Accrual Date
bme_bmefixedincome_retail_bmegate_v1_6.interest_accrual_date.display = function(value)
  return string.format("Interest Accrual Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Interest Accrual Date
bme_bmefixedincome_retail_bmegate_v1_6.interest_accrual_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.interest_accrual_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.interest_accrual_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.interest_accrual_date, range, value, display)

  return offset + length, value
end

-- Ioi Price
bme_bmefixedincome_retail_bmegate_v1_6.ioi_price = {}

-- Size: Ioi Price
bme_bmefixedincome_retail_bmegate_v1_6.ioi_price.size = 8

-- Display: Ioi Price
bme_bmefixedincome_retail_bmegate_v1_6.ioi_price.display = function(value)
  return "Ioi Price: "..value
end

-- Translate: Ioi Price
bme_bmefixedincome_retail_bmegate_v1_6.ioi_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ioi Price
bme_bmefixedincome_retail_bmegate_v1_6.ioi_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.ioi_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.ioi_price.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.ioi_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ioi_price, range, value, display)

  return offset + length, value
end

-- Ioi Qty
bme_bmefixedincome_retail_bmegate_v1_6.ioi_qty = {}

-- Size: Ioi Qty
bme_bmefixedincome_retail_bmegate_v1_6.ioi_qty.size = 4

-- Display: Ioi Qty
bme_bmefixedincome_retail_bmegate_v1_6.ioi_qty.display = function(value)
  return "Ioi Qty: "..value
end

-- Dissect: Ioi Qty
bme_bmefixedincome_retail_bmegate_v1_6.ioi_qty.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.ioi_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.ioi_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ioi_qty, range, value, display)

  return offset + length, value
end

-- Ioi Trans Type
bme_bmefixedincome_retail_bmegate_v1_6.ioi_trans_type = {}

-- Size: Ioi Trans Type
bme_bmefixedincome_retail_bmegate_v1_6.ioi_trans_type.size = 1

-- Display: Ioi Trans Type
bme_bmefixedincome_retail_bmegate_v1_6.ioi_trans_type.display = function(value)
  if value == "N" then
    return "Ioi Trans Type: New (N)"
  end
  if value == "C" then
    return "Ioi Trans Type: Cancel (C)"
  end
  if value == "R" then
    return "Ioi Trans Type: Replace (R)"
  end

  return "Ioi Trans Type: Unknown("..value..")"
end

-- Dissect: Ioi Trans Type
bme_bmefixedincome_retail_bmegate_v1_6.ioi_trans_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.ioi_trans_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.ioi_trans_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ioi_trans_type, range, value, display)

  return offset + length, value
end

-- Ioiid
bme_bmefixedincome_retail_bmegate_v1_6.ioiid = {}

-- Size: Ioiid
bme_bmefixedincome_retail_bmegate_v1_6.ioiid.size = 4

-- Display: Ioiid
bme_bmefixedincome_retail_bmegate_v1_6.ioiid.display = function(value)
  return "Ioiid: "..value
end

-- Dissect: Ioiid
bme_bmefixedincome_retail_bmegate_v1_6.ioiid.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.ioiid.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.ioiid.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.ioiid, range, value, display)

  return offset + length, value
end

-- Issue Date
bme_bmefixedincome_retail_bmegate_v1_6.issue_date = {}

-- Size: Issue Date
bme_bmefixedincome_retail_bmegate_v1_6.issue_date.size = 4

-- Display: Issue Date
bme_bmefixedincome_retail_bmegate_v1_6.issue_date.display = function(value)
  return string.format("Issue Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Issue Date
bme_bmefixedincome_retail_bmegate_v1_6.issue_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.issue_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.issue_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.issue_date, range, value, display)

  return offset + length, value
end

-- Issuer
bme_bmefixedincome_retail_bmegate_v1_6.issuer = {}

-- Size: Issuer
bme_bmefixedincome_retail_bmegate_v1_6.issuer.size = 12

-- Display: Issuer
bme_bmefixedincome_retail_bmegate_v1_6.issuer.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Issuer: No Value"
  end

  return "Issuer: "..value
end

-- Dissect: Issuer
bme_bmefixedincome_retail_bmegate_v1_6.issuer.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.issuer.size
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

  local display = bme_bmefixedincome_retail_bmegate_v1_6.issuer.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.issuer, range, value, display)

  return offset + length, value
end

-- Issuer Lei
bme_bmefixedincome_retail_bmegate_v1_6.issuer_lei = {}

-- Size: Issuer Lei
bme_bmefixedincome_retail_bmegate_v1_6.issuer_lei.size = 20

-- Display: Issuer Lei
bme_bmefixedincome_retail_bmegate_v1_6.issuer_lei.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Issuer Lei: No Value"
  end

  return "Issuer Lei: "..value
end

-- Dissect: Issuer Lei
bme_bmefixedincome_retail_bmegate_v1_6.issuer_lei.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.issuer_lei.size
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

  local display = bme_bmefixedincome_retail_bmegate_v1_6.issuer_lei.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.issuer_lei, range, value, display)

  return offset + length, value
end

-- Last Change Flag
bme_bmefixedincome_retail_bmegate_v1_6.last_change_flag = {}

-- Size: Last Change Flag
bme_bmefixedincome_retail_bmegate_v1_6.last_change_flag.size = 1

-- Display: Last Change Flag
bme_bmefixedincome_retail_bmegate_v1_6.last_change_flag.display = function(value)
  if value == 0 then
    return "Last Change Flag: False (0)"
  end
  if value == 1 then
    return "Last Change Flag: True (1)"
  end
  if value == 255 then
    return "Last Change Flag: Undefined (255)"
  end

  return "Last Change Flag: Unknown("..value..")"
end

-- Dissect: Last Change Flag
bme_bmefixedincome_retail_bmegate_v1_6.last_change_flag.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.last_change_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.last_change_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.last_change_flag, range, value, display)

  return offset + length, value
end

-- Last Px
bme_bmefixedincome_retail_bmegate_v1_6.last_px = {}

-- Size: Last Px
bme_bmefixedincome_retail_bmegate_v1_6.last_px.size = 8

-- Display: Last Px
bme_bmefixedincome_retail_bmegate_v1_6.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
bme_bmefixedincome_retail_bmegate_v1_6.last_px.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Px
bme_bmefixedincome_retail_bmegate_v1_6.last_px.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.last_px.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Qty
bme_bmefixedincome_retail_bmegate_v1_6.last_qty = {}

-- Size: Last Qty
bme_bmefixedincome_retail_bmegate_v1_6.last_qty.size = 4

-- Display: Last Qty
bme_bmefixedincome_retail_bmegate_v1_6.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
bme_bmefixedincome_retail_bmegate_v1_6.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.last_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Li Spost
bme_bmefixedincome_retail_bmegate_v1_6.li_spost = {}

-- Size: Li Spost
bme_bmefixedincome_retail_bmegate_v1_6.li_spost.size = 8

-- Display: Li Spost
bme_bmefixedincome_retail_bmegate_v1_6.li_spost.display = function(value)
  return "Li Spost: "..value
end

-- Translate: Li Spost
bme_bmefixedincome_retail_bmegate_v1_6.li_spost.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Li Spost
bme_bmefixedincome_retail_bmegate_v1_6.li_spost.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.li_spost.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.li_spost.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.li_spost.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.li_spost, range, value, display)

  return offset + length, value
end

-- Li Spre
bme_bmefixedincome_retail_bmegate_v1_6.li_spre = {}

-- Size: Li Spre
bme_bmefixedincome_retail_bmegate_v1_6.li_spre.size = 8

-- Display: Li Spre
bme_bmefixedincome_retail_bmegate_v1_6.li_spre.display = function(value)
  return "Li Spre: "..value
end

-- Translate: Li Spre
bme_bmefixedincome_retail_bmegate_v1_6.li_spre.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Li Spre
bme_bmefixedincome_retail_bmegate_v1_6.li_spre.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.li_spre.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.li_spre.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.li_spre.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.li_spre, range, value, display)

  return offset + length, value
end

-- Liquid Instrument
bme_bmefixedincome_retail_bmegate_v1_6.liquid_instrument = {}

-- Size: Liquid Instrument
bme_bmefixedincome_retail_bmegate_v1_6.liquid_instrument.size = 1

-- Display: Liquid Instrument
bme_bmefixedincome_retail_bmegate_v1_6.liquid_instrument.display = function(value)
  if value == 0 then
    return "Liquid Instrument: False (0)"
  end
  if value == 1 then
    return "Liquid Instrument: True (1)"
  end
  if value == 255 then
    return "Liquid Instrument: Undefined (255)"
  end

  return "Liquid Instrument: Unknown("..value..")"
end

-- Dissect: Liquid Instrument
bme_bmefixedincome_retail_bmegate_v1_6.liquid_instrument.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.liquid_instrument.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.liquid_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.liquid_instrument, range, value, display)

  return offset + length, value
end

-- Logout Reason
bme_bmefixedincome_retail_bmegate_v1_6.logout_reason = {}

-- Size: Logout Reason
bme_bmefixedincome_retail_bmegate_v1_6.logout_reason.size = 1

-- Display: Logout Reason
bme_bmefixedincome_retail_bmegate_v1_6.logout_reason.display = function(value)
  if value == 0 then
    return "Logout Reason: Termination After A Solicited Logout Request (0)"
  end
  if value == 1 then
    return "Logout Reason: End Of Session Termination In Recovery Server End Of Recovery Snapshot (1)"
  end
  if value == 2 then
    return "Logout Reason: Timeout Connection Lost (2)"
  end
  if value == 3 then
    return "Logout Reason: Lack Of Heartbeat (3)"
  end
  if value == 16 then
    return "Logout Reason: Invalid Username Or Password (16)"
  end
  if value == 17 then
    return "Logout Reason: Invalid Expected Sequence Number (17)"
  end
  if value == 18 then
    return "Logout Reason: Invalid Protocol Version (18)"
  end
  if value == 19 then
    return "Logout Reason: New Connection From User (19)"
  end

  return "Logout Reason: Unknown("..value..")"
end

-- Dissect: Logout Reason
bme_bmefixedincome_retail_bmegate_v1_6.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.logout_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Low Limit Price
bme_bmefixedincome_retail_bmegate_v1_6.low_limit_price = {}

-- Size: Low Limit Price
bme_bmefixedincome_retail_bmegate_v1_6.low_limit_price.size = 8

-- Display: Low Limit Price
bme_bmefixedincome_retail_bmegate_v1_6.low_limit_price.display = function(value)
  return "Low Limit Price: "..value
end

-- Translate: Low Limit Price
bme_bmefixedincome_retail_bmegate_v1_6.low_limit_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Low Limit Price
bme_bmefixedincome_retail_bmegate_v1_6.low_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.low_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.low_limit_price.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.low_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.low_limit_price, range, value, display)

  return offset + length, value
end

-- Market Id
bme_bmefixedincome_retail_bmegate_v1_6.market_id = {}

-- Size: Market Id
bme_bmefixedincome_retail_bmegate_v1_6.market_id.size = 4

-- Display: Market Id
bme_bmefixedincome_retail_bmegate_v1_6.market_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Market Id: No Value"
  end

  return "Market Id: "..value
end

-- Dissect: Market Id
bme_bmefixedincome_retail_bmegate_v1_6.market_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.market_id.size
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

  local display = bme_bmefixedincome_retail_bmegate_v1_6.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Mechanism
bme_bmefixedincome_retail_bmegate_v1_6.market_mechanism = {}

-- Size: Market Mechanism
bme_bmefixedincome_retail_bmegate_v1_6.market_mechanism.size = 1

-- Display: Market Mechanism
bme_bmefixedincome_retail_bmegate_v1_6.market_mechanism.display = function(value)
  if value == "0" then
    return "Market Mechanism: Central Limit Order Book (0)"
  end
  if value == "1" then
    return "Market Mechanism: Off Book Messaging Trading (1)"
  end
  if value == "6" then
    return "Market Mechanism: Request For Quotes (6)"
  end

  return "Market Mechanism: Unknown("..value..")"
end

-- Dissect: Market Mechanism
bme_bmefixedincome_retail_bmegate_v1_6.market_mechanism.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.market_mechanism.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.market_mechanism.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.market_mechanism, range, value, display)

  return offset + length, value
end

-- Market Segment Id
bme_bmefixedincome_retail_bmegate_v1_6.market_segment_id = {}

-- Size: Market Segment Id
bme_bmefixedincome_retail_bmegate_v1_6.market_segment_id.size = 4

-- Display: Market Segment Id
bme_bmefixedincome_retail_bmegate_v1_6.market_segment_id.display = function(value)
  if value == "MARF" then
    return "Market Segment Id: Mercado Alternativo De Renta Fija (MARF)"
  end
  if value == "MERF" then
    return "Market Segment Id: Mercado Electrónico De Renta Fija (MERF)"
  end
  if value == "SBAR" then
    return "Market Segment Id: Bolsa De Barcelona Renta Fija (SBAR)"
  end
  if value == "SBIL" then
    return "Market Segment Id: Bolsa De Bilbao Renta Fija (SBIL)"
  end
  if value == "SEND" then
    return "Market Segment Id: Send Sistema Electrónico De Negociación De Deuda (SEND)"
  end
  if value == "XDRF" then
    return "Market Segment Id: Aiaf Mercado De Renta Fija (XDRF)"
  end
  if value == "XNAF" then
    return "Market Segment Id: Senaf Sistema Electrónico De Negociación De Activos Financieros (XNAF)"
  end

  return "Market Segment Id: Unknown("..value..")"
end

-- Dissect: Market Segment Id
bme_bmefixedincome_retail_bmegate_v1_6.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.market_segment_id.size
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

  local display = bme_bmefixedincome_retail_bmegate_v1_6.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Maturity
bme_bmefixedincome_retail_bmegate_v1_6.maturity = {}

-- Size: Maturity
bme_bmefixedincome_retail_bmegate_v1_6.maturity.size = 8

-- Display: Maturity
bme_bmefixedincome_retail_bmegate_v1_6.maturity.display = function(value)
  return "Maturity: "..value
end

-- Translate: Maturity
bme_bmefixedincome_retail_bmegate_v1_6.maturity.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Maturity
bme_bmefixedincome_retail_bmegate_v1_6.maturity.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.maturity.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.maturity.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.maturity.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.maturity, range, value, display)

  return offset + length, value
end

-- Maturity Date
bme_bmefixedincome_retail_bmegate_v1_6.maturity_date = {}

-- Size: Maturity Date
bme_bmefixedincome_retail_bmegate_v1_6.maturity_date.size = 4

-- Display: Maturity Date
bme_bmefixedincome_retail_bmegate_v1_6.maturity_date.display = function(value)
  return string.format("Maturity Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Maturity Date
bme_bmefixedincome_retail_bmegate_v1_6.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Message Size
bme_bmefixedincome_retail_bmegate_v1_6.message_size = {}

-- Size: Message Size
bme_bmefixedincome_retail_bmegate_v1_6.message_size.size = 2

-- Display: Message Size
bme_bmefixedincome_retail_bmegate_v1_6.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
bme_bmefixedincome_retail_bmegate_v1_6.message_size.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
bme_bmefixedincome_retail_bmegate_v1_6.message_type = {}

-- Size: Message Type
bme_bmefixedincome_retail_bmegate_v1_6.message_type.size = 1

-- Display: Message Type
bme_bmefixedincome_retail_bmegate_v1_6.message_type.display = function(value)
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
  if value == 0x91 then
    return "Message Type: Topofbook Retail Message (0x91)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
bme_bmefixedincome_retail_bmegate_v1_6.message_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mid Buy Price
bme_bmefixedincome_retail_bmegate_v1_6.mid_buy_price = {}

-- Size: Mid Buy Price
bme_bmefixedincome_retail_bmegate_v1_6.mid_buy_price.size = 8

-- Display: Mid Buy Price
bme_bmefixedincome_retail_bmegate_v1_6.mid_buy_price.display = function(value)
  return "Mid Buy Price: "..value
end

-- Translate: Mid Buy Price
bme_bmefixedincome_retail_bmegate_v1_6.mid_buy_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Mid Buy Price
bme_bmefixedincome_retail_bmegate_v1_6.mid_buy_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.mid_buy_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.mid_buy_price.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.mid_buy_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.mid_buy_price, range, value, display)

  return offset + length, value
end

-- Mid Buy Volume
bme_bmefixedincome_retail_bmegate_v1_6.mid_buy_volume = {}

-- Size: Mid Buy Volume
bme_bmefixedincome_retail_bmegate_v1_6.mid_buy_volume.size = 4

-- Display: Mid Buy Volume
bme_bmefixedincome_retail_bmegate_v1_6.mid_buy_volume.display = function(value)
  return "Mid Buy Volume: "..value
end

-- Dissect: Mid Buy Volume
bme_bmefixedincome_retail_bmegate_v1_6.mid_buy_volume.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.mid_buy_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.mid_buy_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.mid_buy_volume, range, value, display)

  return offset + length, value
end

-- Mid Sell Price
bme_bmefixedincome_retail_bmegate_v1_6.mid_sell_price = {}

-- Size: Mid Sell Price
bme_bmefixedincome_retail_bmegate_v1_6.mid_sell_price.size = 8

-- Display: Mid Sell Price
bme_bmefixedincome_retail_bmegate_v1_6.mid_sell_price.display = function(value)
  return "Mid Sell Price: "..value
end

-- Translate: Mid Sell Price
bme_bmefixedincome_retail_bmegate_v1_6.mid_sell_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Mid Sell Price
bme_bmefixedincome_retail_bmegate_v1_6.mid_sell_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.mid_sell_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.mid_sell_price.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.mid_sell_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.mid_sell_price, range, value, display)

  return offset + length, value
end

-- Mid Sell Volume
bme_bmefixedincome_retail_bmegate_v1_6.mid_sell_volume = {}

-- Size: Mid Sell Volume
bme_bmefixedincome_retail_bmegate_v1_6.mid_sell_volume.size = 4

-- Display: Mid Sell Volume
bme_bmefixedincome_retail_bmegate_v1_6.mid_sell_volume.display = function(value)
  return "Mid Sell Volume: "..value
end

-- Dissect: Mid Sell Volume
bme_bmefixedincome_retail_bmegate_v1_6.mid_sell_volume.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.mid_sell_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.mid_sell_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.mid_sell_volume, range, value, display)

  return offset + length, value
end

-- Min Price Increment
bme_bmefixedincome_retail_bmegate_v1_6.min_price_increment = {}

-- Size: Min Price Increment
bme_bmefixedincome_retail_bmegate_v1_6.min_price_increment.size = 8

-- Display: Min Price Increment
bme_bmefixedincome_retail_bmegate_v1_6.min_price_increment.display = function(value)
  return "Min Price Increment: "..value
end

-- Translate: Min Price Increment
bme_bmefixedincome_retail_bmegate_v1_6.min_price_increment.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Min Price Increment
bme_bmefixedincome_retail_bmegate_v1_6.min_price_increment.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.min_price_increment.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.min_price_increment.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.min_price_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.min_price_increment, range, value, display)

  return offset + length, value
end

-- Min Trade Vol
bme_bmefixedincome_retail_bmegate_v1_6.min_trade_vol = {}

-- Size: Min Trade Vol
bme_bmefixedincome_retail_bmegate_v1_6.min_trade_vol.size = 4

-- Display: Min Trade Vol
bme_bmefixedincome_retail_bmegate_v1_6.min_trade_vol.display = function(value)
  return "Min Trade Vol: "..value
end

-- Dissect: Min Trade Vol
bme_bmefixedincome_retail_bmegate_v1_6.min_trade_vol.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.min_trade_vol.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.min_trade_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.min_trade_vol, range, value, display)

  return offset + length, value
end

-- Modality Mask B 4
bme_bmefixedincome_retail_bmegate_v1_6.modality_mask_b_4 = {}

-- Size: Modality Mask B 4
bme_bmefixedincome_retail_bmegate_v1_6.modality_mask_b_4.size = 4

-- Display: Modality Mask B 4
bme_bmefixedincome_retail_bmegate_v1_6.modality_mask_b_4.display = function(value)
  return "Modality Mask B 4: "..value
end

-- Dissect: Modality Mask B 4
bme_bmefixedincome_retail_bmegate_v1_6.modality_mask_b_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.modality_mask_b_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.modality_mask_b_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.modality_mask_b_4, range, value, display)

  return offset + length, value
end

-- Network Status Value
bme_bmefixedincome_retail_bmegate_v1_6.network_status_value = {}

-- Size: Network Status Value
bme_bmefixedincome_retail_bmegate_v1_6.network_status_value.size = 1

-- Display: Network Status Value
bme_bmefixedincome_retail_bmegate_v1_6.network_status_value.display = function(value)
  if value == 1 then
    return "Network Status Value: Connected (1)"
  end
  if value == 2 then
    return "Network Status Value: Not Connected Down Expected Up (2)"
  end
  if value == 3 then
    return "Network Status Value: Not Connected Down Expected Down (3)"
  end
  if value == 4 then
    return "Network Status Value: In Process (4)"
  end

  return "Network Status Value: Unknown("..value..")"
end

-- Dissect: Network Status Value
bme_bmefixedincome_retail_bmegate_v1_6.network_status_value.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.network_status_value.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.network_status_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.network_status_value, range, value, display)

  return offset + length, value
end

-- News Text
bme_bmefixedincome_retail_bmegate_v1_6.news_text = {}

-- Size: News Text
bme_bmefixedincome_retail_bmegate_v1_6.news_text.size = 78

-- Display: News Text
bme_bmefixedincome_retail_bmegate_v1_6.news_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "News Text: No Value"
  end

  return "News Text: "..value
end

-- Dissect: News Text
bme_bmefixedincome_retail_bmegate_v1_6.news_text.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.news_text.size
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

  local display = bme_bmefixedincome_retail_bmegate_v1_6.news_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.news_text, range, value, display)

  return offset + length, value
end

-- Next Redemption Date
bme_bmefixedincome_retail_bmegate_v1_6.next_redemption_date = {}

-- Size: Next Redemption Date
bme_bmefixedincome_retail_bmegate_v1_6.next_redemption_date.size = 4

-- Display: Next Redemption Date
bme_bmefixedincome_retail_bmegate_v1_6.next_redemption_date.display = function(value)
  return string.format("Next Redemption Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Next Redemption Date
bme_bmefixedincome_retail_bmegate_v1_6.next_redemption_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.next_redemption_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.next_redemption_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.next_redemption_date, range, value, display)

  return offset + length, value
end

-- Non Availability Reason
bme_bmefixedincome_retail_bmegate_v1_6.non_availability_reason = {}

-- Size: Non Availability Reason
bme_bmefixedincome_retail_bmegate_v1_6.non_availability_reason.size = 1

-- Display: Non Availability Reason
bme_bmefixedincome_retail_bmegate_v1_6.non_availability_reason.display = function(value)
  if value == 0 then
    return "Non Availability Reason: Not Halted (0)"
  end
  if value == 100 then
    return "Non Availability Reason: Halted By Regulator (100)"
  end
  if value == 101 then
    return "Non Availability Reason: Halted By Market Surveillance (101)"
  end
  if value == 102 then
    return "Non Availability Reason: Knockout (102)"
  end
  if value == 103 then
    return "Non Availability Reason: Knockin Pending (103)"
  end

  return "Non Availability Reason: Unknown("..value..")"
end

-- Dissect: Non Availability Reason
bme_bmefixedincome_retail_bmegate_v1_6.non_availability_reason.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.non_availability_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.non_availability_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.non_availability_reason, range, value, display)

  return offset + length, value
end

-- Number Of Decimals
bme_bmefixedincome_retail_bmegate_v1_6.number_of_decimals = {}

-- Size: Number Of Decimals
bme_bmefixedincome_retail_bmegate_v1_6.number_of_decimals.size = 1

-- Display: Number Of Decimals
bme_bmefixedincome_retail_bmegate_v1_6.number_of_decimals.display = function(value)
  return "Number Of Decimals: "..value
end

-- Dissect: Number Of Decimals
bme_bmefixedincome_retail_bmegate_v1_6.number_of_decimals.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.number_of_decimals.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.number_of_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.number_of_decimals, range, value, display)

  return offset + length, value
end

-- Order Number Of Decimals
bme_bmefixedincome_retail_bmegate_v1_6.order_number_of_decimals = {}

-- Size: Order Number Of Decimals
bme_bmefixedincome_retail_bmegate_v1_6.order_number_of_decimals.size = 1

-- Display: Order Number Of Decimals
bme_bmefixedincome_retail_bmegate_v1_6.order_number_of_decimals.display = function(value)
  return "Order Number Of Decimals: "..value
end

-- Dissect: Order Number Of Decimals
bme_bmefixedincome_retail_bmegate_v1_6.order_number_of_decimals.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.order_number_of_decimals.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.order_number_of_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.order_number_of_decimals, range, value, display)

  return offset + length, value
end

-- Order Static Range
bme_bmefixedincome_retail_bmegate_v1_6.order_static_range = {}

-- Size: Order Static Range
bme_bmefixedincome_retail_bmegate_v1_6.order_static_range.size = 8

-- Display: Order Static Range
bme_bmefixedincome_retail_bmegate_v1_6.order_static_range.display = function(value)
  return "Order Static Range: "..value
end

-- Translate: Order Static Range
bme_bmefixedincome_retail_bmegate_v1_6.order_static_range.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Order Static Range
bme_bmefixedincome_retail_bmegate_v1_6.order_static_range.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.order_static_range.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.order_static_range.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.order_static_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.order_static_range, range, value, display)

  return offset + length, value
end

-- Post Deferral Publication Type
bme_bmefixedincome_retail_bmegate_v1_6.post_deferral_publication_type = {}

-- Size: Post Deferral Publication Type
bme_bmefixedincome_retail_bmegate_v1_6.post_deferral_publication_type.size = 1

-- Display: Post Deferral Publication Type
bme_bmefixedincome_retail_bmegate_v1_6.post_deferral_publication_type.display = function(value)
  if value == " " then
    return "Post Deferral Publication Type: Not Applicable No Relevant Deferral Or Enrichment Type (<whitespace>)"
  end

  return "Post Deferral Publication Type: Unknown("..value..")"
end

-- Dissect: Post Deferral Publication Type
bme_bmefixedincome_retail_bmegate_v1_6.post_deferral_publication_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.post_deferral_publication_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.post_deferral_publication_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.post_deferral_publication_type, range, value, display)

  return offset + length, value
end

-- Pre Trade Transparency Waiver
bme_bmefixedincome_retail_bmegate_v1_6.pre_trade_transparency_waiver = {}

-- Size: Pre Trade Transparency Waiver
bme_bmefixedincome_retail_bmegate_v1_6.pre_trade_transparency_waiver.size = 1

-- Display: Pre Trade Transparency Waiver
bme_bmefixedincome_retail_bmegate_v1_6.pre_trade_transparency_waiver.display = function(value)
  if value == " " then
    return "Pre Trade Transparency Waiver: Negotiated Trade Nego (<whitespace>)"
  end

  return "Pre Trade Transparency Waiver: Unknown("..value..")"
end

-- Dissect: Pre Trade Transparency Waiver
bme_bmefixedincome_retail_bmegate_v1_6.pre_trade_transparency_waiver.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.pre_trade_transparency_waiver.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.pre_trade_transparency_waiver.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.pre_trade_transparency_waiver, range, value, display)

  return offset + length, value
end

-- Price Type
bme_bmefixedincome_retail_bmegate_v1_6.price_type = {}

-- Size: Price Type
bme_bmefixedincome_retail_bmegate_v1_6.price_type.size = 1

-- Display: Price Type
bme_bmefixedincome_retail_bmegate_v1_6.price_type.display = function(value)
  if value == "1" then
    return "Price Type: Price (1)"
  end
  if value == "2" then
    return "Price Type: Rate (2)"
  end

  return "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
bme_bmefixedincome_retail_bmegate_v1_6.price_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.price_type, range, value, display)

  return offset + length, value
end

-- Protocol Version
bme_bmefixedincome_retail_bmegate_v1_6.protocol_version = {}

-- Size: Protocol Version
bme_bmefixedincome_retail_bmegate_v1_6.protocol_version.size = 6

-- Display: Protocol Version
bme_bmefixedincome_retail_bmegate_v1_6.protocol_version.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Protocol Version: No Value"
  end

  return "Protocol Version: "..value
end

-- Dissect: Protocol Version
bme_bmefixedincome_retail_bmegate_v1_6.protocol_version.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.protocol_version.size
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

  local display = bme_bmefixedincome_retail_bmegate_v1_6.protocol_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Publish Date And Time
bme_bmefixedincome_retail_bmegate_v1_6.publish_date_and_time = {}

-- Size: Publish Date And Time
bme_bmefixedincome_retail_bmegate_v1_6.publish_date_and_time.size = 8

-- Display: Publish Date And Time
bme_bmefixedincome_retail_bmegate_v1_6.publish_date_and_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Publish Date And Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Publish Date And Time
bme_bmefixedincome_retail_bmegate_v1_6.publish_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.publish_date_and_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.publish_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.publish_date_and_time, range, value, display)

  return offset + length, value
end

-- Reference Price
bme_bmefixedincome_retail_bmegate_v1_6.reference_price = {}

-- Size: Reference Price
bme_bmefixedincome_retail_bmegate_v1_6.reference_price.size = 8

-- Display: Reference Price
bme_bmefixedincome_retail_bmegate_v1_6.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
bme_bmefixedincome_retail_bmegate_v1_6.reference_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Reference Price
bme_bmefixedincome_retail_bmegate_v1_6.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.reference_price.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Rfqid
bme_bmefixedincome_retail_bmegate_v1_6.rfqid = {}

-- Size: Rfqid
bme_bmefixedincome_retail_bmegate_v1_6.rfqid.size = 4

-- Display: Rfqid
bme_bmefixedincome_retail_bmegate_v1_6.rfqid.display = function(value)
  return "Rfqid: "..value
end

-- Dissect: Rfqid
bme_bmefixedincome_retail_bmegate_v1_6.rfqid.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.rfqid.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.rfqid.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.rfqid, range, value, display)

  return offset + length, value
end

-- Round Lot
bme_bmefixedincome_retail_bmegate_v1_6.round_lot = {}

-- Size: Round Lot
bme_bmefixedincome_retail_bmegate_v1_6.round_lot.size = 4

-- Display: Round Lot
bme_bmefixedincome_retail_bmegate_v1_6.round_lot.display = function(value)
  return "Round Lot: "..value
end

-- Dissect: Round Lot
bme_bmefixedincome_retail_bmegate_v1_6.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.round_lot.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Security Code
bme_bmefixedincome_retail_bmegate_v1_6.security_code = {}

-- Size: Security Code
bme_bmefixedincome_retail_bmegate_v1_6.security_code.size = 4

-- Display: Security Code
bme_bmefixedincome_retail_bmegate_v1_6.security_code.display = function(value)
  return "Security Code: "..value
end

-- Dissect: Security Code
bme_bmefixedincome_retail_bmegate_v1_6.security_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.security_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.security_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.security_code, range, value, display)

  return offset + length, value
end

-- Security Description
bme_bmefixedincome_retail_bmegate_v1_6.security_description = {}

-- Size: Security Description
bme_bmefixedincome_retail_bmegate_v1_6.security_description.size = 80

-- Display: Security Description
bme_bmefixedincome_retail_bmegate_v1_6.security_description.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Description: No Value"
  end

  return "Security Description: "..value
end

-- Dissect: Security Description
bme_bmefixedincome_retail_bmegate_v1_6.security_description.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.security_description.size
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

  local display = bme_bmefixedincome_retail_bmegate_v1_6.security_description.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.security_description, range, value, display)

  return offset + length, value
end

-- Security Group
bme_bmefixedincome_retail_bmegate_v1_6.security_group = {}

-- Size: Security Group
bme_bmefixedincome_retail_bmegate_v1_6.security_group.size = 2

-- Display: Security Group
bme_bmefixedincome_retail_bmegate_v1_6.security_group.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Group: No Value"
  end

  return "Security Group: "..value
end

-- Dissect: Security Group
bme_bmefixedincome_retail_bmegate_v1_6.security_group.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.security_group.size
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

  local display = bme_bmefixedincome_retail_bmegate_v1_6.security_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.security_group, range, value, display)

  return offset + length, value
end

-- Security Name
bme_bmefixedincome_retail_bmegate_v1_6.security_name = {}

-- Size: Security Name
bme_bmefixedincome_retail_bmegate_v1_6.security_name.size = 40

-- Display: Security Name
bme_bmefixedincome_retail_bmegate_v1_6.security_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Name: No Value"
  end

  return "Security Name: "..value
end

-- Dissect: Security Name
bme_bmefixedincome_retail_bmegate_v1_6.security_name.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.security_name.size
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

  local display = bme_bmefixedincome_retail_bmegate_v1_6.security_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.security_name, range, value, display)

  return offset + length, value
end

-- Security Status
bme_bmefixedincome_retail_bmegate_v1_6.security_status = {}

-- Size: Security Status
bme_bmefixedincome_retail_bmegate_v1_6.security_status.size = 1

-- Display: Security Status
bme_bmefixedincome_retail_bmegate_v1_6.security_status.display = function(value)
  if value == "1" then
    return "Security Status: Active (1)"
  end
  if value == "2" then
    return "Security Status: Inactive Provissionaly Assumed (2)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
bme_bmefixedincome_retail_bmegate_v1_6.security_status.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.security_status, range, value, display)

  return offset + length, value
end

-- Security Trading Status
bme_bmefixedincome_retail_bmegate_v1_6.security_trading_status = {}

-- Size: Security Trading Status
bme_bmefixedincome_retail_bmegate_v1_6.security_trading_status.size = 1

-- Display: Security Trading Status
bme_bmefixedincome_retail_bmegate_v1_6.security_trading_status.display = function(value)
  if value == 17 then
    return "Security Trading Status: Ready To Trade (17)"
  end
  if value == 18 then
    return "Security Trading Status: Not Available For Trading (18)"
  end
  if value == 19 then
    return "Security Trading Status: Not Traded On This Segment (19)"
  end
  if value == 20 then
    return "Security Trading Status: Unknown Or Invalid (20)"
  end
  if value == 21 then
    return "Security Trading Status: Pre Open (21)"
  end
  if value == 26 then
    return "Security Trading Status: Postclose Ready To Trade In Tal (26)"
  end
  if value == 23 then
    return "Security Trading Status: Fast Market (23)"
  end
  if value == 100 then
    return "Security Trading Status: Extraordinary Market Conditions (100)"
  end

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
bme_bmefixedincome_retail_bmegate_v1_6.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.security_trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Security Type
bme_bmefixedincome_retail_bmegate_v1_6.security_type = {}

-- Size: Security Type
bme_bmefixedincome_retail_bmegate_v1_6.security_type.size = 2

-- Display: Security Type
bme_bmefixedincome_retail_bmegate_v1_6.security_type.display = function(value)
  if value == "BC" then
    return "Security Type: Bonos Y Obligaciones Convertibles (BC)"
  end
  if value == "BO" then
    return "Security Type: Bonos Y Obligaciones (BO)"
  end
  if value == "CA" then
    return "Security Type: Cupones Segregados (CA)"
  end
  if value == "CD" then
    return "Security Type: Cédulas (CD)"
  end
  if value == "LT" then
    return "Security Type: Letras Del Tesoro (LT)"
  end
  if value == "PG" then
    return "Security Type: Pagarés (PG)"
  end
  if value == "PP" then
    return "Security Type: Participaciones Preferentes (PP)"
  end
  if value == "PS" then
    return "Security Type: Principales Segregados (PS)"
  end
  if value == "TZ" then
    return "Security Type: Titulizaciones (TZ)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
bme_bmefixedincome_retail_bmegate_v1_6.security_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.security_type.size
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

  local display = bme_bmefixedincome_retail_bmegate_v1_6.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.security_type, range, value, display)

  return offset + length, value
end

-- Sell Rf Qs Number
bme_bmefixedincome_retail_bmegate_v1_6.sell_rf_qs_number = {}

-- Size: Sell Rf Qs Number
bme_bmefixedincome_retail_bmegate_v1_6.sell_rf_qs_number.size = 2

-- Display: Sell Rf Qs Number
bme_bmefixedincome_retail_bmegate_v1_6.sell_rf_qs_number.display = function(value)
  return "Sell Rf Qs Number: "..value
end

-- Dissect: Sell Rf Qs Number
bme_bmefixedincome_retail_bmegate_v1_6.sell_rf_qs_number.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.sell_rf_qs_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.sell_rf_qs_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.sell_rf_qs_number, range, value, display)

  return offset + length, value
end

-- Sequence Number
bme_bmefixedincome_retail_bmegate_v1_6.sequence_number = {}

-- Size: Sequence Number
bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.size = 4

-- Display: Sequence Number
bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequence Number To
bme_bmefixedincome_retail_bmegate_v1_6.sequence_number_to = {}

-- Size: Sequence Number To
bme_bmefixedincome_retail_bmegate_v1_6.sequence_number_to.size = 4

-- Display: Sequence Number To
bme_bmefixedincome_retail_bmegate_v1_6.sequence_number_to.display = function(value)
  return "Sequence Number To: "..value
end

-- Dissect: Sequence Number To
bme_bmefixedincome_retail_bmegate_v1_6.sequence_number_to.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.sequence_number_to.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.sequence_number_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.sequence_number_to, range, value, display)

  return offset + length, value
end

-- Session Date
bme_bmefixedincome_retail_bmegate_v1_6.session_date = {}

-- Size: Session Date
bme_bmefixedincome_retail_bmegate_v1_6.session_date.size = 4

-- Display: Session Date
bme_bmefixedincome_retail_bmegate_v1_6.session_date.display = function(value)
  return string.format("Session Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Session Date
bme_bmefixedincome_retail_bmegate_v1_6.session_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.session_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.session_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.session_date, range, value, display)

  return offset + length, value
end

-- Settl Date
bme_bmefixedincome_retail_bmegate_v1_6.settl_date = {}

-- Size: Settl Date
bme_bmefixedincome_retail_bmegate_v1_6.settl_date.size = 4

-- Display: Settl Date
bme_bmefixedincome_retail_bmegate_v1_6.settl_date.display = function(value)
  return string.format("Settl Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Settl Date
bme_bmefixedincome_retail_bmegate_v1_6.settl_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.settl_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.settl_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.settl_date, range, value, display)

  return offset + length, value
end

-- Settl Date 2
bme_bmefixedincome_retail_bmegate_v1_6.settl_date_2 = {}

-- Size: Settl Date 2
bme_bmefixedincome_retail_bmegate_v1_6.settl_date_2.size = 4

-- Display: Settl Date 2
bme_bmefixedincome_retail_bmegate_v1_6.settl_date_2.display = function(value)
  return string.format("Settl Date 2: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Settl Date 2
bme_bmefixedincome_retail_bmegate_v1_6.settl_date_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.settl_date_2.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.settl_date_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.settl_date_2, range, value, display)

  return offset + length, value
end

-- Settlement System
bme_bmefixedincome_retail_bmegate_v1_6.settlement_system = {}

-- Size: Settlement System
bme_bmefixedincome_retail_bmegate_v1_6.settlement_system.size = 1

-- Display: Settlement System
bme_bmefixedincome_retail_bmegate_v1_6.settlement_system.display = function(value)
  if value == "A" then
    return "Settlement System: Iberclear Cade (A)"
  end
  if value == "D" then
    return "Settlement System: Dlt Bme (D)"
  end
  if value == "O" then
    return "Settlement System: Other (O)"
  end

  return "Settlement System: Unknown("..value..")"
end

-- Dissect: Settlement System
bme_bmefixedincome_retail_bmegate_v1_6.settlement_system.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.settlement_system.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.settlement_system.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.settlement_system, range, value, display)

  return offset + length, value
end

-- Side
bme_bmefixedincome_retail_bmegate_v1_6.side = {}

-- Size: Side
bme_bmefixedincome_retail_bmegate_v1_6.side.size = 1

-- Display: Side
bme_bmefixedincome_retail_bmegate_v1_6.side.display = function(value)
  if value == "1" then
    return "Side: Buy (1)"
  end
  if value == "2" then
    return "Side: Sell (2)"
  end
  if value == "7" then
    return "Side: Undisclosed (7)"
  end
  if value == "?" then
    return "Side: Notspecified (?)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
bme_bmefixedincome_retail_bmegate_v1_6.side.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.side, range, value, display)

  return offset + length, value
end

-- Spread To Index
bme_bmefixedincome_retail_bmegate_v1_6.spread_to_index = {}

-- Size: Spread To Index
bme_bmefixedincome_retail_bmegate_v1_6.spread_to_index.size = 8

-- Display: Spread To Index
bme_bmefixedincome_retail_bmegate_v1_6.spread_to_index.display = function(value)
  return "Spread To Index: "..value
end

-- Translate: Spread To Index
bme_bmefixedincome_retail_bmegate_v1_6.spread_to_index.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Spread To Index
bme_bmefixedincome_retail_bmegate_v1_6.spread_to_index.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.spread_to_index.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.spread_to_index.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.spread_to_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.spread_to_index, range, value, display)

  return offset + length, value
end

-- Sst Ipost
bme_bmefixedincome_retail_bmegate_v1_6.sst_ipost = {}

-- Size: Sst Ipost
bme_bmefixedincome_retail_bmegate_v1_6.sst_ipost.size = 8

-- Display: Sst Ipost
bme_bmefixedincome_retail_bmegate_v1_6.sst_ipost.display = function(value)
  return "Sst Ipost: "..value
end

-- Translate: Sst Ipost
bme_bmefixedincome_retail_bmegate_v1_6.sst_ipost.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Sst Ipost
bme_bmefixedincome_retail_bmegate_v1_6.sst_ipost.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.sst_ipost.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.sst_ipost.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.sst_ipost.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.sst_ipost, range, value, display)

  return offset + length, value
end

-- Sst Ipre
bme_bmefixedincome_retail_bmegate_v1_6.sst_ipre = {}

-- Size: Sst Ipre
bme_bmefixedincome_retail_bmegate_v1_6.sst_ipre.size = 8

-- Display: Sst Ipre
bme_bmefixedincome_retail_bmegate_v1_6.sst_ipre.display = function(value)
  return "Sst Ipre: "..value
end

-- Translate: Sst Ipre
bme_bmefixedincome_retail_bmegate_v1_6.sst_ipre.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Sst Ipre
bme_bmefixedincome_retail_bmegate_v1_6.sst_ipre.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.sst_ipre.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.sst_ipre.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.sst_ipre.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.sst_ipre, range, value, display)

  return offset + length, value
end

-- Start Date
bme_bmefixedincome_retail_bmegate_v1_6.start_date = {}

-- Size: Start Date
bme_bmefixedincome_retail_bmegate_v1_6.start_date.size = 4

-- Display: Start Date
bme_bmefixedincome_retail_bmegate_v1_6.start_date.display = function(value)
  return string.format("Start Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Start Date
bme_bmefixedincome_retail_bmegate_v1_6.start_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.start_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.start_date, range, value, display)

  return offset + length, value
end

-- Static Range Type
bme_bmefixedincome_retail_bmegate_v1_6.static_range_type = {}

-- Size: Static Range Type
bme_bmefixedincome_retail_bmegate_v1_6.static_range_type.size = 1

-- Display: Static Range Type
bme_bmefixedincome_retail_bmegate_v1_6.static_range_type.display = function(value)
  if value == "P" then
    return "Static Range Type: Percentage (P)"
  end
  if value == "T" then
    return "Static Range Type: Price (T)"
  end

  return "Static Range Type: Unknown("..value..")"
end

-- Dissect: Static Range Type
bme_bmefixedincome_retail_bmegate_v1_6.static_range_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.static_range_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.static_range_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.static_range_type, range, value, display)

  return offset + length, value
end

-- Strippable
bme_bmefixedincome_retail_bmegate_v1_6.strippable = {}

-- Size: Strippable
bme_bmefixedincome_retail_bmegate_v1_6.strippable.size = 1

-- Display: Strippable
bme_bmefixedincome_retail_bmegate_v1_6.strippable.display = function(value)
  if value == 0 then
    return "Strippable: False (0)"
  end
  if value == 1 then
    return "Strippable: True (1)"
  end
  if value == 255 then
    return "Strippable: Undefined (255)"
  end

  return "Strippable: Unknown("..value..")"
end

-- Dissect: Strippable
bme_bmefixedincome_retail_bmegate_v1_6.strippable.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.strippable.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.strippable.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.strippable, range, value, display)

  return offset + length, value
end

-- Symbol
bme_bmefixedincome_retail_bmegate_v1_6.symbol = {}

-- Size: Symbol
bme_bmefixedincome_retail_bmegate_v1_6.symbol.size = 22

-- Display: Symbol
bme_bmefixedincome_retail_bmegate_v1_6.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
bme_bmefixedincome_retail_bmegate_v1_6.symbol.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.symbol.size
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

  local display = bme_bmefixedincome_retail_bmegate_v1_6.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Isin
bme_bmefixedincome_retail_bmegate_v1_6.symbol_isin = {}

-- Size: Symbol Isin
bme_bmefixedincome_retail_bmegate_v1_6.symbol_isin.size = 12

-- Display: Symbol Isin
bme_bmefixedincome_retail_bmegate_v1_6.symbol_isin.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Isin: No Value"
  end

  return "Symbol Isin: "..value
end

-- Dissect: Symbol Isin
bme_bmefixedincome_retail_bmegate_v1_6.symbol_isin.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.symbol_isin.size
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

  local display = bme_bmefixedincome_retail_bmegate_v1_6.symbol_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.symbol_isin, range, value, display)

  return offset + length, value
end

-- Test Production Ind
bme_bmefixedincome_retail_bmegate_v1_6.test_production_ind = {}

-- Size: Test Production Ind
bme_bmefixedincome_retail_bmegate_v1_6.test_production_ind.size = 1

-- Display: Test Production Ind
bme_bmefixedincome_retail_bmegate_v1_6.test_production_ind.display = function(value)
  return "Test Production Ind: "..value
end

-- Dissect: Test Production Ind
bme_bmefixedincome_retail_bmegate_v1_6.test_production_ind.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.test_production_ind.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.test_production_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.test_production_ind, range, value, display)

  return offset + length, value
end

-- Trad Ses Status
bme_bmefixedincome_retail_bmegate_v1_6.trad_ses_status = {}

-- Size: Trad Ses Status
bme_bmefixedincome_retail_bmegate_v1_6.trad_ses_status.size = 1

-- Display: Trad Ses Status
bme_bmefixedincome_retail_bmegate_v1_6.trad_ses_status.display = function(value)
  if value == 1 then
    return "Trad Ses Status: Halted (1)"
  end
  if value == 2 then
    return "Trad Ses Status: Open (2)"
  end
  if value == 3 then
    return "Trad Ses Status: Closed (3)"
  end
  if value == 4 then
    return "Trad Ses Status: Pre Open Not Started (4)"
  end
  if value == 5 then
    return "Trad Ses Status: Pre Close (5)"
  end
  if value == 6 then
    return "Trad Ses Status: Request Rejected (6)"
  end

  return "Trad Ses Status: Unknown("..value..")"
end

-- Dissect: Trad Ses Status
bme_bmefixedincome_retail_bmegate_v1_6.trad_ses_status.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.trad_ses_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.trad_ses_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trad_ses_status, range, value, display)

  return offset + length, value
end

-- Trade Date
bme_bmefixedincome_retail_bmegate_v1_6.trade_date = {}

-- Size: Trade Date
bme_bmefixedincome_retail_bmegate_v1_6.trade_date.size = 8

-- Display: Trade Date
bme_bmefixedincome_retail_bmegate_v1_6.trade_date.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Trade Date: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trade Date
bme_bmefixedincome_retail_bmegate_v1_6.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trade Price Condition
bme_bmefixedincome_retail_bmegate_v1_6.trade_price_condition = {}

-- Size: Trade Price Condition
bme_bmefixedincome_retail_bmegate_v1_6.trade_price_condition.size = 1

-- Display: Trade Price Condition
bme_bmefixedincome_retail_bmegate_v1_6.trade_price_condition.display = function(value)
  if value == " " then
    return "Trade Price Condition: Plain Vanilla Trade (<whitespace>)"
  end
  if value == "5" then
    return "Trade Price Condition: Non Price Forming Trade Formerly Defined As A Technical Trade Npft (5)"
  end
  if value == "Z" then
    return "Trade Price Condition: Price Is Not Applicable Noap (Z)"
  end

  return "Trade Price Condition: Unknown("..value..")"
end

-- Dissect: Trade Price Condition
bme_bmefixedincome_retail_bmegate_v1_6.trade_price_condition.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.trade_price_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.trade_price_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trade_price_condition, range, value, display)

  return offset + length, value
end

-- Trade Session Date
bme_bmefixedincome_retail_bmegate_v1_6.trade_session_date = {}

-- Size: Trade Session Date
bme_bmefixedincome_retail_bmegate_v1_6.trade_session_date.size = 4

-- Display: Trade Session Date
bme_bmefixedincome_retail_bmegate_v1_6.trade_session_date.display = function(value)
  return string.format("Trade Session Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Trade Session Date
bme_bmefixedincome_retail_bmegate_v1_6.trade_session_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.trade_session_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.trade_session_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trade_session_date, range, value, display)

  return offset + length, value
end

-- Trade Type
bme_bmefixedincome_retail_bmegate_v1_6.trade_type = {}

-- Size: Trade Type
bme_bmefixedincome_retail_bmegate_v1_6.trade_type.size = 1

-- Display: Trade Type
bme_bmefixedincome_retail_bmegate_v1_6.trade_type.display = function(value)
  if value == "M" then
    return "Trade Type: Market (M)"
  end
  if value == "K" then
    return "Trade Type: Block Trade (K)"
  end
  if value == "X" then
    return "Trade Type: Cancellation (X)"
  end
  if value == "T" then
    return "Trade Type: Trade Amendment (T)"
  end
  if value == "Q" then
    return "Trade Type: Application (Q)"
  end
  if value == "A" then
    return "Trade Type: Block Trade With Settlement Date Equal To Session Date (A)"
  end
  if value == "B" then
    return "Trade Type: Application With Settlement Date Equal To Session Date (B)"
  end
  if value == "C" then
    return "Trade Type: Repo Block Trade (C)"
  end
  if value == "D" then
    return "Trade Type: Repo Application (D)"
  end
  if value == "E" then
    return "Trade Type: Repo Block Trade With Start Date Equal To Session Date (E)"
  end
  if value == "F" then
    return "Trade Type: Repo Application With Start Date Equal To Session Date (F)"
  end
  if value == "3" then
    return "Trade Type: Rfq (3)"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
bme_bmefixedincome_retail_bmegate_v1_6.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trading Obligation
bme_bmefixedincome_retail_bmegate_v1_6.trading_obligation = {}

-- Size: Trading Obligation
bme_bmefixedincome_retail_bmegate_v1_6.trading_obligation.size = 1

-- Display: Trading Obligation
bme_bmefixedincome_retail_bmegate_v1_6.trading_obligation.display = function(value)
  if value == 0 then
    return "Trading Obligation: False (0)"
  end
  if value == 1 then
    return "Trading Obligation: True (1)"
  end
  if value == 255 then
    return "Trading Obligation: Undefined (255)"
  end

  return "Trading Obligation: Unknown("..value..")"
end

-- Dissect: Trading Obligation
bme_bmefixedincome_retail_bmegate_v1_6.trading_obligation.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.trading_obligation.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.trading_obligation.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trading_obligation, range, value, display)

  return offset + length, value
end

-- Trading Scope B 1
bme_bmefixedincome_retail_bmegate_v1_6.trading_scope_b_1 = {}

-- Size: Trading Scope B 1
bme_bmefixedincome_retail_bmegate_v1_6.trading_scope_b_1.size = 1

-- Display: Trading Scope B 1
bme_bmefixedincome_retail_bmegate_v1_6.trading_scope_b_1.display = function(value)
  return "Trading Scope B 1: "..value
end

-- Dissect: Trading Scope B 1
bme_bmefixedincome_retail_bmegate_v1_6.trading_scope_b_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.trading_scope_b_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.trading_scope_b_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trading_scope_b_1, range, value, display)

  return offset + length, value
end

-- Trading Session Id
bme_bmefixedincome_retail_bmegate_v1_6.trading_session_id = {}

-- Size: Trading Session Id
bme_bmefixedincome_retail_bmegate_v1_6.trading_session_id.size = 1

-- Display: Trading Session Id
bme_bmefixedincome_retail_bmegate_v1_6.trading_session_id.display = function(value)
  if value == 100 then
    return "Trading Session Id: Continuous Trading (100)"
  end
  if value == 102 then
    return "Trading Session Id: Block Trades (102)"
  end
  if value == 111 then
    return "Trading Session Id: Repo Cross Trades Within The Member And Repo Block Trading (111)"
  end
  if value == 114 then
    return "Trading Session Id: Rfq (114)"
  end

  return "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id
bme_bmefixedincome_retail_bmegate_v1_6.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Trading Session Sub Id
bme_bmefixedincome_retail_bmegate_v1_6.trading_session_sub_id = {}

-- Size: Trading Session Sub Id
bme_bmefixedincome_retail_bmegate_v1_6.trading_session_sub_id.size = 1

-- Display: Trading Session Sub Id
bme_bmefixedincome_retail_bmegate_v1_6.trading_session_sub_id.display = function(value)
  if value == 1 then
    return "Trading Session Sub Id: Pre Trading Not Started (1)"
  end
  if value == 3 then
    return "Trading Session Sub Id: Continuous Trading (3)"
  end
  if value == 5 then
    return "Trading Session Sub Id: Post Trading (5)"
  end
  if value == 202 then
    return "Trading Session Sub Id: Not Started (202)"
  end
  if value == 203 then
    return "Trading Session Sub Id: Open (203)"
  end
  if value == 204 then
    return "Trading Session Sub Id: Closed (204)"
  end

  return "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id
bme_bmefixedincome_retail_bmegate_v1_6.trading_session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.trading_session_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.trading_session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Transaction Category
bme_bmefixedincome_retail_bmegate_v1_6.transaction_category = {}

-- Size: Transaction Category
bme_bmefixedincome_retail_bmegate_v1_6.transaction_category.size = 1

-- Display: Transaction Category
bme_bmefixedincome_retail_bmegate_v1_6.transaction_category.display = function(value)
  if value == " " then
    return "Transaction Category: Normal Category (<whitespace>)"
  end
  if value == "Z" then
    return "Transaction Category: Package Trade Excluding Exchange For Physicals Tpac (Z)"
  end

  return "Transaction Category: Unknown("..value..")"
end

-- Dissect: Transaction Category
bme_bmefixedincome_retail_bmegate_v1_6.transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.transaction_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Transaction Date And Time
bme_bmefixedincome_retail_bmegate_v1_6.transaction_date_and_time = {}

-- Size: Transaction Date And Time
bme_bmefixedincome_retail_bmegate_v1_6.transaction_date_and_time.size = 8

-- Display: Transaction Date And Time
bme_bmefixedincome_retail_bmegate_v1_6.transaction_date_and_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transaction Date And Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transaction Date And Time
bme_bmefixedincome_retail_bmegate_v1_6.transaction_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.transaction_date_and_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.transaction_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.transaction_date_and_time, range, value, display)

  return offset + length, value
end

-- Trd Match Id
bme_bmefixedincome_retail_bmegate_v1_6.trd_match_id = {}

-- Size: Trd Match Id
bme_bmefixedincome_retail_bmegate_v1_6.trd_match_id.size = 4

-- Display: Trd Match Id
bme_bmefixedincome_retail_bmegate_v1_6.trd_match_id.display = function(value)
  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
bme_bmefixedincome_retail_bmegate_v1_6.trd_match_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.trd_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_retail_bmegate_v1_6.trd_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Type Of Redemption
bme_bmefixedincome_retail_bmegate_v1_6.type_of_redemption = {}

-- Size: Type Of Redemption
bme_bmefixedincome_retail_bmegate_v1_6.type_of_redemption.size = 2

-- Display: Type Of Redemption
bme_bmefixedincome_retail_bmegate_v1_6.type_of_redemption.display = function(value)
  if value == "RN" then
    return "Type Of Redemption: Nominal Reduction (RN)"
  end
  if value == "UN" then
    return "Type Of Redemption: Redemption At Maturity (UN)"
  end
  if value == "VE" then
    return "Type Of Redemption: Call Redemption (VE)"
  end
  if value == "VT" then
    return "Type Of Redemption: Put Redemption (VT)"
  end
  if value == "VL" then
    return "Type Of Redemption: Call And Put Redemptions (VL)"
  end

  return "Type Of Redemption: Unknown("..value..")"
end

-- Dissect: Type Of Redemption
bme_bmefixedincome_retail_bmegate_v1_6.type_of_redemption.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.type_of_redemption.size
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

  local display = bme_bmefixedincome_retail_bmegate_v1_6.type_of_redemption.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.type_of_redemption, range, value, display)

  return offset + length, value
end

-- Volume Issued
bme_bmefixedincome_retail_bmegate_v1_6.volume_issued = {}

-- Size: Volume Issued
bme_bmefixedincome_retail_bmegate_v1_6.volume_issued.size = 8

-- Display: Volume Issued
bme_bmefixedincome_retail_bmegate_v1_6.volume_issued.display = function(value)
  return "Volume Issued: "..value
end

-- Translate: Volume Issued
bme_bmefixedincome_retail_bmegate_v1_6.volume_issued.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Volume Issued
bme_bmefixedincome_retail_bmegate_v1_6.volume_issued.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_retail_bmegate_v1_6.volume_issued.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_retail_bmegate_v1_6.volume_issued.translate(raw)
  local display = bme_bmefixedincome_retail_bmegate_v1_6.volume_issued.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.volume_issued, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Bme BmeFixedIncome Retail BmeGate 1.6
-----------------------------------------------------------------------

-- Topofbook Retail Message
bme_bmefixedincome_retail_bmegate_v1_6.topofbook_retail_message = {}

-- Size: Topofbook Retail Message
bme_bmefixedincome_retail_bmegate_v1_6.topofbook_retail_message.size =
  bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_1.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.bid_size_1.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.bid_px_1.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.alt_bid_px_1.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_1.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.ask_size_1.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.ask_px_1.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.alt_sell_px_1.size

-- Display: Topofbook Retail Message
bme_bmefixedincome_retail_bmegate_v1_6.topofbook_retail_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Topofbook Retail Message
bme_bmefixedincome_retail_bmegate_v1_6.topofbook_retail_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_retail_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_retail_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Bid Orders 1: U
  index, bid_orders_1 = bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_1.dissect(buffer, index, packet, parent)

  -- Bid Size 1: Q
  index, bid_size_1 = bme_bmefixedincome_retail_bmegate_v1_6.bid_size_1.dissect(buffer, index, packet, parent)

  -- Bid Px 1: P
  index, bid_px_1 = bme_bmefixedincome_retail_bmegate_v1_6.bid_px_1.dissect(buffer, index, packet, parent)

  -- Alt Bid Px 1: P
  index, alt_bid_px_1 = bme_bmefixedincome_retail_bmegate_v1_6.alt_bid_px_1.dissect(buffer, index, packet, parent)

  -- Ask Orders 1: U
  index, ask_orders_1 = bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_1.dissect(buffer, index, packet, parent)

  -- Ask Size 1: Q
  index, ask_size_1 = bme_bmefixedincome_retail_bmegate_v1_6.ask_size_1.dissect(buffer, index, packet, parent)

  -- Ask Px 1: P
  index, ask_px_1 = bme_bmefixedincome_retail_bmegate_v1_6.ask_px_1.dissect(buffer, index, packet, parent)

  -- Alt Sell Px 1: P
  index, alt_sell_px_1 = bme_bmefixedincome_retail_bmegate_v1_6.alt_sell_px_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Topofbook Retail Message
bme_bmefixedincome_retail_bmegate_v1_6.topofbook_retail_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.topofbook_retail_message, buffer(offset, 0))
    local index = bme_bmefixedincome_retail_bmegate_v1_6.topofbook_retail_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_retail_bmegate_v1_6.topofbook_retail_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_retail_bmegate_v1_6.topofbook_retail_message.fields(buffer, offset, packet, parent)
  end
end

-- Rfq Market Pre Transparency Information Message
bme_bmefixedincome_retail_bmegate_v1_6.rfq_market_pre_transparency_information_message = {}

-- Size: Rfq Market Pre Transparency Information Message
bme_bmefixedincome_retail_bmegate_v1_6.rfq_market_pre_transparency_information_message.size =
  bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.rfqid.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.trading_session_id.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.mid_buy_price.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.mid_buy_volume.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.buy_rf_qs_number.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.mid_sell_price.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.mid_sell_volume.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.sell_rf_qs_number.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_1.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.bid_size_1.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.bid_px_1.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_1.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.ask_size_1.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.ask_px_1.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_2.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.bid_size_2.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.bid_px_2.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_2.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.ask_size_2.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.ask_px_2.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_3.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.bid_size_3.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.bid_px_3.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_3.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.ask_size_3.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.ask_px_3.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_4.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.bid_size_4.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.bid_px_4.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_4.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.ask_size_4.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.ask_px_4.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_5.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.bid_size_5.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.bid_px_5.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_5.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.ask_size_5.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.ask_px_5.size

-- Display: Rfq Market Pre Transparency Information Message
bme_bmefixedincome_retail_bmegate_v1_6.rfq_market_pre_transparency_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rfq Market Pre Transparency Information Message
bme_bmefixedincome_retail_bmegate_v1_6.rfq_market_pre_transparency_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Rfqid: U
  index, rfqid = bme_bmefixedincome_retail_bmegate_v1_6.rfqid.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_bmefixedincome_retail_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_retail_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_retail_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Mid Buy Price: P
  index, mid_buy_price = bme_bmefixedincome_retail_bmegate_v1_6.mid_buy_price.dissect(buffer, index, packet, parent)

  -- Mid Buy Volume: Q
  index, mid_buy_volume = bme_bmefixedincome_retail_bmegate_v1_6.mid_buy_volume.dissect(buffer, index, packet, parent)

  -- Buy Rf Qs Number: U
  index, buy_rf_qs_number = bme_bmefixedincome_retail_bmegate_v1_6.buy_rf_qs_number.dissect(buffer, index, packet, parent)

  -- Mid Sell Price: P
  index, mid_sell_price = bme_bmefixedincome_retail_bmegate_v1_6.mid_sell_price.dissect(buffer, index, packet, parent)

  -- Mid Sell Volume: Q
  index, mid_sell_volume = bme_bmefixedincome_retail_bmegate_v1_6.mid_sell_volume.dissect(buffer, index, packet, parent)

  -- Sell Rf Qs Number: U
  index, sell_rf_qs_number = bme_bmefixedincome_retail_bmegate_v1_6.sell_rf_qs_number.dissect(buffer, index, packet, parent)

  -- Bid Orders 1: U
  index, bid_orders_1 = bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_1.dissect(buffer, index, packet, parent)

  -- Bid Size 1: Q
  index, bid_size_1 = bme_bmefixedincome_retail_bmegate_v1_6.bid_size_1.dissect(buffer, index, packet, parent)

  -- Bid Px 1: P
  index, bid_px_1 = bme_bmefixedincome_retail_bmegate_v1_6.bid_px_1.dissect(buffer, index, packet, parent)

  -- Ask Orders 1: U
  index, ask_orders_1 = bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_1.dissect(buffer, index, packet, parent)

  -- Ask Size 1: Q
  index, ask_size_1 = bme_bmefixedincome_retail_bmegate_v1_6.ask_size_1.dissect(buffer, index, packet, parent)

  -- Ask Px 1: P
  index, ask_px_1 = bme_bmefixedincome_retail_bmegate_v1_6.ask_px_1.dissect(buffer, index, packet, parent)

  -- Bid Orders 2: U
  index, bid_orders_2 = bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_2.dissect(buffer, index, packet, parent)

  -- Bid Size 2: Q
  index, bid_size_2 = bme_bmefixedincome_retail_bmegate_v1_6.bid_size_2.dissect(buffer, index, packet, parent)

  -- Bid Px 2: P
  index, bid_px_2 = bme_bmefixedincome_retail_bmegate_v1_6.bid_px_2.dissect(buffer, index, packet, parent)

  -- Ask Orders 2: U
  index, ask_orders_2 = bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_2.dissect(buffer, index, packet, parent)

  -- Ask Size 2: Q
  index, ask_size_2 = bme_bmefixedincome_retail_bmegate_v1_6.ask_size_2.dissect(buffer, index, packet, parent)

  -- Ask Px 2: P
  index, ask_px_2 = bme_bmefixedincome_retail_bmegate_v1_6.ask_px_2.dissect(buffer, index, packet, parent)

  -- Bid Orders 3: U
  index, bid_orders_3 = bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_3.dissect(buffer, index, packet, parent)

  -- Bid Size 3: Q
  index, bid_size_3 = bme_bmefixedincome_retail_bmegate_v1_6.bid_size_3.dissect(buffer, index, packet, parent)

  -- Bid Px 3: P
  index, bid_px_3 = bme_bmefixedincome_retail_bmegate_v1_6.bid_px_3.dissect(buffer, index, packet, parent)

  -- Ask Orders 3: U
  index, ask_orders_3 = bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_3.dissect(buffer, index, packet, parent)

  -- Ask Size 3: Q
  index, ask_size_3 = bme_bmefixedincome_retail_bmegate_v1_6.ask_size_3.dissect(buffer, index, packet, parent)

  -- Ask Px 3: P
  index, ask_px_3 = bme_bmefixedincome_retail_bmegate_v1_6.ask_px_3.dissect(buffer, index, packet, parent)

  -- Bid Orders 4: U
  index, bid_orders_4 = bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_4.dissect(buffer, index, packet, parent)

  -- Bid Size 4: Q
  index, bid_size_4 = bme_bmefixedincome_retail_bmegate_v1_6.bid_size_4.dissect(buffer, index, packet, parent)

  -- Bid Px 4: P
  index, bid_px_4 = bme_bmefixedincome_retail_bmegate_v1_6.bid_px_4.dissect(buffer, index, packet, parent)

  -- Ask Orders 4: U
  index, ask_orders_4 = bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_4.dissect(buffer, index, packet, parent)

  -- Ask Size 4: Q
  index, ask_size_4 = bme_bmefixedincome_retail_bmegate_v1_6.ask_size_4.dissect(buffer, index, packet, parent)

  -- Ask Px 4: P
  index, ask_px_4 = bme_bmefixedincome_retail_bmegate_v1_6.ask_px_4.dissect(buffer, index, packet, parent)

  -- Bid Orders 5: U
  index, bid_orders_5 = bme_bmefixedincome_retail_bmegate_v1_6.bid_orders_5.dissect(buffer, index, packet, parent)

  -- Bid Size 5: Q
  index, bid_size_5 = bme_bmefixedincome_retail_bmegate_v1_6.bid_size_5.dissect(buffer, index, packet, parent)

  -- Bid Px 5: P
  index, bid_px_5 = bme_bmefixedincome_retail_bmegate_v1_6.bid_px_5.dissect(buffer, index, packet, parent)

  -- Ask Orders 5: U
  index, ask_orders_5 = bme_bmefixedincome_retail_bmegate_v1_6.ask_orders_5.dissect(buffer, index, packet, parent)

  -- Ask Size 5: Q
  index, ask_size_5 = bme_bmefixedincome_retail_bmegate_v1_6.ask_size_5.dissect(buffer, index, packet, parent)

  -- Ask Px 5: P
  index, ask_px_5 = bme_bmefixedincome_retail_bmegate_v1_6.ask_px_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Market Pre Transparency Information Message
bme_bmefixedincome_retail_bmegate_v1_6.rfq_market_pre_transparency_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.rfq_market_pre_transparency_information_message, buffer(offset, 0))
    local index = bme_bmefixedincome_retail_bmegate_v1_6.rfq_market_pre_transparency_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_retail_bmegate_v1_6.rfq_market_pre_transparency_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_retail_bmegate_v1_6.rfq_market_pre_transparency_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Indication Of Interest Message
bme_bmefixedincome_retail_bmegate_v1_6.indication_of_interest_message = {}

-- Size: Indication Of Interest Message
bme_bmefixedincome_retail_bmegate_v1_6.indication_of_interest_message.size =
  bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.ioiid.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.ioi_trans_type.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.side.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.ioi_qty.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.ioi_price.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.trading_session_id.size

-- Display: Indication Of Interest Message
bme_bmefixedincome_retail_bmegate_v1_6.indication_of_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indication Of Interest Message
bme_bmefixedincome_retail_bmegate_v1_6.indication_of_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_retail_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_retail_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Ioiid: U
  index, ioiid = bme_bmefixedincome_retail_bmegate_v1_6.ioiid.dissect(buffer, index, packet, parent)

  -- Ioi Trans Type: C
  index, ioi_trans_type = bme_bmefixedincome_retail_bmegate_v1_6.ioi_trans_type.dissect(buffer, index, packet, parent)

  -- Side: C
  index, side = bme_bmefixedincome_retail_bmegate_v1_6.side.dissect(buffer, index, packet, parent)

  -- Ioi Qty: Q
  index, ioi_qty = bme_bmefixedincome_retail_bmegate_v1_6.ioi_qty.dissect(buffer, index, packet, parent)

  -- Ioi Price: P
  index, ioi_price = bme_bmefixedincome_retail_bmegate_v1_6.ioi_price.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_bmefixedincome_retail_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indication Of Interest Message
bme_bmefixedincome_retail_bmegate_v1_6.indication_of_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.indication_of_interest_message, buffer(offset, 0))
    local index = bme_bmefixedincome_retail_bmegate_v1_6.indication_of_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_retail_bmegate_v1_6.indication_of_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_retail_bmegate_v1_6.indication_of_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Trade Amendment Or Cancellation Message
bme_bmefixedincome_retail_bmegate_v1_6.trade_trade_amendment_or_cancellation_message = {}

-- Size: Trade Trade Amendment Or Cancellation Message
bme_bmefixedincome_retail_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.size =
  bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.market_segment_id.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.trading_session_id.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.trd_match_id.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.trade_type.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.last_px.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.last_qty.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.gross_trade_amt.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.designation.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.market_mechanism.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.algo_flag.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.alt_last_px.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_amt.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_p_8.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.settl_date.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.transaction_category.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.last_change_flag.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.bencrfpt_flag.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.trade_price_condition.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.pre_trade_transparency_waiver.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.deferral_waiver.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.post_deferral_publication_type.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.publish_date_and_time.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.trade_date.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.trade_session_date.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.settl_date_2.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.end_cash.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.amended_trade_type.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.exec_ref_id.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.amended_trade_date.size

-- Display: Trade Trade Amendment Or Cancellation Message
bme_bmefixedincome_retail_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Trade Amendment Or Cancellation Message
bme_bmefixedincome_retail_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_retail_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_retail_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_bmefixedincome_retail_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_bmefixedincome_retail_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: U
  index, trd_match_id = bme_bmefixedincome_retail_bmegate_v1_6.trd_match_id.dissect(buffer, index, packet, parent)

  -- Trade Type: C
  index, trade_type = bme_bmefixedincome_retail_bmegate_v1_6.trade_type.dissect(buffer, index, packet, parent)

  -- Last Px: P
  index, last_px = bme_bmefixedincome_retail_bmegate_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Q
  index, last_qty = bme_bmefixedincome_retail_bmegate_v1_6.last_qty.dissect(buffer, index, packet, parent)

  -- Gross Trade Amt: A
  index, gross_trade_amt = bme_bmefixedincome_retail_bmegate_v1_6.gross_trade_amt.dissect(buffer, index, packet, parent)

  -- Designation: C
  index, designation = bme_bmefixedincome_retail_bmegate_v1_6.designation.dissect(buffer, index, packet, parent)

  -- Market Mechanism: C
  index, market_mechanism = bme_bmefixedincome_retail_bmegate_v1_6.market_mechanism.dissect(buffer, index, packet, parent)

  -- Algo Flag: F
  index, algo_flag = bme_bmefixedincome_retail_bmegate_v1_6.algo_flag.dissect(buffer, index, packet, parent)

  -- Alt Last Px: P
  index, alt_last_px = bme_bmefixedincome_retail_bmegate_v1_6.alt_last_px.dissect(buffer, index, packet, parent)

  -- Accrued Interest Amt: A
  index, accrued_interest_amt = bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_amt.dissect(buffer, index, packet, parent)

  -- Accrued Interest Rate P 8: P
  index, accrued_interest_rate_p_8 = bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_p_8.dissect(buffer, index, packet, parent)

  -- Settl Date: D
  index, settl_date = bme_bmefixedincome_retail_bmegate_v1_6.settl_date.dissect(buffer, index, packet, parent)

  -- Transaction Category: C
  index, transaction_category = bme_bmefixedincome_retail_bmegate_v1_6.transaction_category.dissect(buffer, index, packet, parent)

  -- Last Change Flag: F
  index, last_change_flag = bme_bmefixedincome_retail_bmegate_v1_6.last_change_flag.dissect(buffer, index, packet, parent)

  -- Bencrfpt Flag: C
  index, bencrfpt_flag = bme_bmefixedincome_retail_bmegate_v1_6.bencrfpt_flag.dissect(buffer, index, packet, parent)

  -- Trade Price Condition: C
  index, trade_price_condition = bme_bmefixedincome_retail_bmegate_v1_6.trade_price_condition.dissect(buffer, index, packet, parent)

  -- Pre Trade Transparency Waiver: C
  index, pre_trade_transparency_waiver = bme_bmefixedincome_retail_bmegate_v1_6.pre_trade_transparency_waiver.dissect(buffer, index, packet, parent)

  -- Deferral Waiver: C
  index, deferral_waiver = bme_bmefixedincome_retail_bmegate_v1_6.deferral_waiver.dissect(buffer, index, packet, parent)

  -- Post Deferral Publication Type: C
  index, post_deferral_publication_type = bme_bmefixedincome_retail_bmegate_v1_6.post_deferral_publication_type.dissect(buffer, index, packet, parent)

  -- Publish Date And Time: T
  index, publish_date_and_time = bme_bmefixedincome_retail_bmegate_v1_6.publish_date_and_time.dissect(buffer, index, packet, parent)

  -- Trade Date: T
  index, trade_date = bme_bmefixedincome_retail_bmegate_v1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Trade Session Date: D
  index, trade_session_date = bme_bmefixedincome_retail_bmegate_v1_6.trade_session_date.dissect(buffer, index, packet, parent)

  -- Settl Date 2: D
  index, settl_date_2 = bme_bmefixedincome_retail_bmegate_v1_6.settl_date_2.dissect(buffer, index, packet, parent)

  -- End Cash: A
  index, end_cash = bme_bmefixedincome_retail_bmegate_v1_6.end_cash.dissect(buffer, index, packet, parent)

  -- Amended Trade Type: C
  index, amended_trade_type = bme_bmefixedincome_retail_bmegate_v1_6.amended_trade_type.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: U
  index, exec_ref_id = bme_bmefixedincome_retail_bmegate_v1_6.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Amended Trade Date: D
  index, amended_trade_date = bme_bmefixedincome_retail_bmegate_v1_6.amended_trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Trade Amendment Or Cancellation Message
bme_bmefixedincome_retail_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trade_trade_amendment_or_cancellation_message, buffer(offset, 0))
    local index = bme_bmefixedincome_retail_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_retail_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_retail_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Market Post Transparency Information Topofbook Message
bme_bmefixedincome_retail_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message = {}

-- Size: Trade Market Post Transparency Information Topofbook Message
bme_bmefixedincome_retail_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.size =
  bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.market_segment_id.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.trading_session_id.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.trd_match_id.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.trade_type.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.last_px.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.last_qty.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.gross_trade_amt.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.designation.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.market_mechanism.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.algo_flag.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.alt_last_px.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_amt.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_p_8.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.settl_date.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.transaction_category.size

-- Display: Trade Market Post Transparency Information Topofbook Message
bme_bmefixedincome_retail_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Market Post Transparency Information Topofbook Message
bme_bmefixedincome_retail_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_retail_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_retail_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_bmefixedincome_retail_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_bmefixedincome_retail_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: U
  index, trd_match_id = bme_bmefixedincome_retail_bmegate_v1_6.trd_match_id.dissect(buffer, index, packet, parent)

  -- Trade Type: C
  index, trade_type = bme_bmefixedincome_retail_bmegate_v1_6.trade_type.dissect(buffer, index, packet, parent)

  -- Last Px: P
  index, last_px = bme_bmefixedincome_retail_bmegate_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Q
  index, last_qty = bme_bmefixedincome_retail_bmegate_v1_6.last_qty.dissect(buffer, index, packet, parent)

  -- Gross Trade Amt: A
  index, gross_trade_amt = bme_bmefixedincome_retail_bmegate_v1_6.gross_trade_amt.dissect(buffer, index, packet, parent)

  -- Designation: C
  index, designation = bme_bmefixedincome_retail_bmegate_v1_6.designation.dissect(buffer, index, packet, parent)

  -- Market Mechanism: C
  index, market_mechanism = bme_bmefixedincome_retail_bmegate_v1_6.market_mechanism.dissect(buffer, index, packet, parent)

  -- Algo Flag: F
  index, algo_flag = bme_bmefixedincome_retail_bmegate_v1_6.algo_flag.dissect(buffer, index, packet, parent)

  -- Alt Last Px: P
  index, alt_last_px = bme_bmefixedincome_retail_bmegate_v1_6.alt_last_px.dissect(buffer, index, packet, parent)

  -- Accrued Interest Amt: A
  index, accrued_interest_amt = bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_amt.dissect(buffer, index, packet, parent)

  -- Accrued Interest Rate P 8: P
  index, accrued_interest_rate_p_8 = bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_p_8.dissect(buffer, index, packet, parent)

  -- Settl Date: D
  index, settl_date = bme_bmefixedincome_retail_bmegate_v1_6.settl_date.dissect(buffer, index, packet, parent)

  -- Transaction Category: C
  index, transaction_category = bme_bmefixedincome_retail_bmegate_v1_6.transaction_category.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Market Post Transparency Information Topofbook Message
bme_bmefixedincome_retail_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trade_market_post_transparency_information_topofbook_message, buffer(offset, 0))
    local index = bme_bmefixedincome_retail_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_retail_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_retail_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Message
bme_bmefixedincome_retail_bmegate_v1_6.security_status_message = {}

-- Size: Security Status Message
bme_bmefixedincome_retail_bmegate_v1_6.security_status_message.size =
  bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.reference_price.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.security_trading_status.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.non_availability_reason.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.high_limit_price.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.low_limit_price.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.static_range_type.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.order_static_range.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.block_static_range.size

-- Display: Security Status Message
bme_bmefixedincome_retail_bmegate_v1_6.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
bme_bmefixedincome_retail_bmegate_v1_6.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_retail_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_retail_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Reference Price: P
  index, reference_price = bme_bmefixedincome_retail_bmegate_v1_6.reference_price.dissect(buffer, index, packet, parent)

  -- Security Trading Status: U
  index, security_trading_status = bme_bmefixedincome_retail_bmegate_v1_6.security_trading_status.dissect(buffer, index, packet, parent)

  -- Non Availability Reason: U
  index, non_availability_reason = bme_bmefixedincome_retail_bmegate_v1_6.non_availability_reason.dissect(buffer, index, packet, parent)

  -- High Limit Price: P
  index, high_limit_price = bme_bmefixedincome_retail_bmegate_v1_6.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: P
  index, low_limit_price = bme_bmefixedincome_retail_bmegate_v1_6.low_limit_price.dissect(buffer, index, packet, parent)

  -- Static Range Type: C
  index, static_range_type = bme_bmefixedincome_retail_bmegate_v1_6.static_range_type.dissect(buffer, index, packet, parent)

  -- Order Static Range: P
  index, order_static_range = bme_bmefixedincome_retail_bmegate_v1_6.order_static_range.dissect(buffer, index, packet, parent)

  -- Block Static Range: P
  index, block_static_range = bme_bmefixedincome_retail_bmegate_v1_6.block_static_range.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
bme_bmefixedincome_retail_bmegate_v1_6.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.security_status_message, buffer(offset, 0))
    local index = bme_bmefixedincome_retail_bmegate_v1_6.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_retail_bmegate_v1_6.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_retail_bmegate_v1_6.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Security List Update Report Message
bme_bmefixedincome_retail_bmegate_v1_6.security_list_update_report_message = {}

-- Size: Security List Update Report Message
bme_bmefixedincome_retail_bmegate_v1_6.security_list_update_report_message.size =
  bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.market_id.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.market_segment_id.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.symbol.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.symbol_isin.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.fisn.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.issuer_lei.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.security_group.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.cfi_code.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.security_type.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.maturity_date.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.issue_date.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.contract_multiplier.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.li_spre.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.sst_ipre.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.li_spost.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.sst_ipost.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.liquid_instrument.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.admission_requested_by_issuer.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.min_trade_vol.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.round_lot.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.currency.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.modality_mask_b_4.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.security_description.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.trading_obligation.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.security_name.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.security_status.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.coupon_payment_date.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.min_price_increment.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.number_of_decimals.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.order_number_of_decimals.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.coupon_rate.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.issuer.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.trading_scope_b_1.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.first_trading_date.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.settlement_system.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.maturity.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.coupon_periodicity.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.benchmark.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.strippable.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.volume_issued.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.alive_volume.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.coupon_type.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.coupon_quotation.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_calculation_procedure.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.next_redemption_date.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.type_of_redemption.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.facial.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.calculation_method.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.date_last_coupon_was_paid.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.bond_seniority.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.interest_accrual_date.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.start_date.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.price_type.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.spread_to_index.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.benchmark_curve_points_units.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.benchmark_curve_points_value.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.benchmark_security_id.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_r_8.size

-- Display: Security List Update Report Message
bme_bmefixedincome_retail_bmegate_v1_6.security_list_update_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Update Report Message
bme_bmefixedincome_retail_bmegate_v1_6.security_list_update_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Market Id: C
  index, market_id = bme_bmefixedincome_retail_bmegate_v1_6.market_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_bmefixedincome_retail_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_retail_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Symbol: C
  index, symbol = bme_bmefixedincome_retail_bmegate_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Isin: C
  index, symbol_isin = bme_bmefixedincome_retail_bmegate_v1_6.symbol_isin.dissect(buffer, index, packet, parent)

  -- Fisn: C
  index, fisn = bme_bmefixedincome_retail_bmegate_v1_6.fisn.dissect(buffer, index, packet, parent)

  -- Issuer Lei: C
  index, issuer_lei = bme_bmefixedincome_retail_bmegate_v1_6.issuer_lei.dissect(buffer, index, packet, parent)

  -- Security Group: C
  index, security_group = bme_bmefixedincome_retail_bmegate_v1_6.security_group.dissect(buffer, index, packet, parent)

  -- Cfi Code: C
  index, cfi_code = bme_bmefixedincome_retail_bmegate_v1_6.cfi_code.dissect(buffer, index, packet, parent)

  -- Security Type: C
  index, security_type = bme_bmefixedincome_retail_bmegate_v1_6.security_type.dissect(buffer, index, packet, parent)

  -- Maturity Date: D
  index, maturity_date = bme_bmefixedincome_retail_bmegate_v1_6.maturity_date.dissect(buffer, index, packet, parent)

  -- Issue Date: D
  index, issue_date = bme_bmefixedincome_retail_bmegate_v1_6.issue_date.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: A
  index, contract_multiplier = bme_bmefixedincome_retail_bmegate_v1_6.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Li Spre: A
  index, li_spre = bme_bmefixedincome_retail_bmegate_v1_6.li_spre.dissect(buffer, index, packet, parent)

  -- Sst Ipre: A
  index, sst_ipre = bme_bmefixedincome_retail_bmegate_v1_6.sst_ipre.dissect(buffer, index, packet, parent)

  -- Li Spost: A
  index, li_spost = bme_bmefixedincome_retail_bmegate_v1_6.li_spost.dissect(buffer, index, packet, parent)

  -- Sst Ipost: A
  index, sst_ipost = bme_bmefixedincome_retail_bmegate_v1_6.sst_ipost.dissect(buffer, index, packet, parent)

  -- Liquid Instrument: F
  index, liquid_instrument = bme_bmefixedincome_retail_bmegate_v1_6.liquid_instrument.dissect(buffer, index, packet, parent)

  -- Admission Requested By Issuer: F
  index, admission_requested_by_issuer = bme_bmefixedincome_retail_bmegate_v1_6.admission_requested_by_issuer.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: Q
  index, min_trade_vol = bme_bmefixedincome_retail_bmegate_v1_6.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Round Lot: Q
  index, round_lot = bme_bmefixedincome_retail_bmegate_v1_6.round_lot.dissect(buffer, index, packet, parent)

  -- Currency: C
  index, currency = bme_bmefixedincome_retail_bmegate_v1_6.currency.dissect(buffer, index, packet, parent)

  -- Modality Mask B 4: B
  index, modality_mask_b_4 = bme_bmefixedincome_retail_bmegate_v1_6.modality_mask_b_4.dissect(buffer, index, packet, parent)

  -- Security Description: C
  index, security_description = bme_bmefixedincome_retail_bmegate_v1_6.security_description.dissect(buffer, index, packet, parent)

  -- Trading Obligation: F
  index, trading_obligation = bme_bmefixedincome_retail_bmegate_v1_6.trading_obligation.dissect(buffer, index, packet, parent)

  -- Security Name: C
  index, security_name = bme_bmefixedincome_retail_bmegate_v1_6.security_name.dissect(buffer, index, packet, parent)

  -- Security Status: C
  index, security_status = bme_bmefixedincome_retail_bmegate_v1_6.security_status.dissect(buffer, index, packet, parent)

  -- Coupon Payment Date: D
  index, coupon_payment_date = bme_bmefixedincome_retail_bmegate_v1_6.coupon_payment_date.dissect(buffer, index, packet, parent)

  -- Min Price Increment: P
  index, min_price_increment = bme_bmefixedincome_retail_bmegate_v1_6.min_price_increment.dissect(buffer, index, packet, parent)

  -- Number Of Decimals: U
  index, number_of_decimals = bme_bmefixedincome_retail_bmegate_v1_6.number_of_decimals.dissect(buffer, index, packet, parent)

  -- Order Number Of Decimals: U
  index, order_number_of_decimals = bme_bmefixedincome_retail_bmegate_v1_6.order_number_of_decimals.dissect(buffer, index, packet, parent)

  -- Coupon Rate: R
  index, coupon_rate = bme_bmefixedincome_retail_bmegate_v1_6.coupon_rate.dissect(buffer, index, packet, parent)

  -- Issuer: C
  index, issuer = bme_bmefixedincome_retail_bmegate_v1_6.issuer.dissect(buffer, index, packet, parent)

  -- Trading Scope B 1: B
  index, trading_scope_b_1 = bme_bmefixedincome_retail_bmegate_v1_6.trading_scope_b_1.dissect(buffer, index, packet, parent)

  -- First Trading Date: D
  index, first_trading_date = bme_bmefixedincome_retail_bmegate_v1_6.first_trading_date.dissect(buffer, index, packet, parent)

  -- Settlement System: C
  index, settlement_system = bme_bmefixedincome_retail_bmegate_v1_6.settlement_system.dissect(buffer, index, packet, parent)

  -- Maturity: P
  index, maturity = bme_bmefixedincome_retail_bmegate_v1_6.maturity.dissect(buffer, index, packet, parent)

  -- Coupon Periodicity: U
  index, coupon_periodicity = bme_bmefixedincome_retail_bmegate_v1_6.coupon_periodicity.dissect(buffer, index, packet, parent)

  -- Benchmark: F
  index, benchmark = bme_bmefixedincome_retail_bmegate_v1_6.benchmark.dissect(buffer, index, packet, parent)

  -- Strippable: F
  index, strippable = bme_bmefixedincome_retail_bmegate_v1_6.strippable.dissect(buffer, index, packet, parent)

  -- Volume Issued: A
  index, volume_issued = bme_bmefixedincome_retail_bmegate_v1_6.volume_issued.dissect(buffer, index, packet, parent)

  -- Alive Volume: A
  index, alive_volume = bme_bmefixedincome_retail_bmegate_v1_6.alive_volume.dissect(buffer, index, packet, parent)

  -- Coupon Type: C
  index, coupon_type = bme_bmefixedincome_retail_bmegate_v1_6.coupon_type.dissect(buffer, index, packet, parent)

  -- Coupon Quotation: F
  index, coupon_quotation = bme_bmefixedincome_retail_bmegate_v1_6.coupon_quotation.dissect(buffer, index, packet, parent)

  -- Accrued Interest Calculation Procedure: C
  index, accrued_interest_calculation_procedure = bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_calculation_procedure.dissect(buffer, index, packet, parent)

  -- Next Redemption Date: D
  index, next_redemption_date = bme_bmefixedincome_retail_bmegate_v1_6.next_redemption_date.dissect(buffer, index, packet, parent)

  -- Type Of Redemption: C
  index, type_of_redemption = bme_bmefixedincome_retail_bmegate_v1_6.type_of_redemption.dissect(buffer, index, packet, parent)

  -- Facial: R
  index, facial = bme_bmefixedincome_retail_bmegate_v1_6.facial.dissect(buffer, index, packet, parent)

  -- Calculation Method: C
  index, calculation_method = bme_bmefixedincome_retail_bmegate_v1_6.calculation_method.dissect(buffer, index, packet, parent)

  -- Date Last Coupon Was Paid: D
  index, date_last_coupon_was_paid = bme_bmefixedincome_retail_bmegate_v1_6.date_last_coupon_was_paid.dissect(buffer, index, packet, parent)

  -- Bond Seniority: C
  index, bond_seniority = bme_bmefixedincome_retail_bmegate_v1_6.bond_seniority.dissect(buffer, index, packet, parent)

  -- Interest Accrual Date: D
  index, interest_accrual_date = bme_bmefixedincome_retail_bmegate_v1_6.interest_accrual_date.dissect(buffer, index, packet, parent)

  -- Start Date: D
  index, start_date = bme_bmefixedincome_retail_bmegate_v1_6.start_date.dissect(buffer, index, packet, parent)

  -- Price Type: C
  index, price_type = bme_bmefixedincome_retail_bmegate_v1_6.price_type.dissect(buffer, index, packet, parent)

  -- Spread To Index: R
  index, spread_to_index = bme_bmefixedincome_retail_bmegate_v1_6.spread_to_index.dissect(buffer, index, packet, parent)

  -- Benchmark Curve Points Units: C
  index, benchmark_curve_points_units = bme_bmefixedincome_retail_bmegate_v1_6.benchmark_curve_points_units.dissect(buffer, index, packet, parent)

  -- Benchmark Curve Points Value: U
  index, benchmark_curve_points_value = bme_bmefixedincome_retail_bmegate_v1_6.benchmark_curve_points_value.dissect(buffer, index, packet, parent)

  -- Benchmark Security Id: C
  index, benchmark_security_id = bme_bmefixedincome_retail_bmegate_v1_6.benchmark_security_id.dissect(buffer, index, packet, parent)

  -- Accrued Interest Rate R 8: R
  index, accrued_interest_rate_r_8 = bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_r_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security List Update Report Message
bme_bmefixedincome_retail_bmegate_v1_6.security_list_update_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.security_list_update_report_message, buffer(offset, 0))
    local index = bme_bmefixedincome_retail_bmegate_v1_6.security_list_update_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_retail_bmegate_v1_6.security_list_update_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_retail_bmegate_v1_6.security_list_update_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Security List Message
bme_bmefixedincome_retail_bmegate_v1_6.security_list_message = {}

-- Size: Security List Message
bme_bmefixedincome_retail_bmegate_v1_6.security_list_message.size =
  bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.market_id.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.market_segment_id.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.symbol.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.symbol_isin.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.fisn.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.issuer_lei.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.security_group.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.cfi_code.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.security_type.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.maturity_date.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.issue_date.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.contract_multiplier.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.li_spre.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.sst_ipre.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.li_spost.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.sst_ipost.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.liquid_instrument.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.admission_requested_by_issuer.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.min_trade_vol.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.round_lot.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.currency.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.modality_mask_b_4.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.security_description.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.trading_obligation.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.security_name.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.security_status.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.coupon_payment_date.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.min_price_increment.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.number_of_decimals.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.order_number_of_decimals.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.coupon_rate.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.issuer.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.trading_scope_b_1.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.first_trading_date.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.settlement_system.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.maturity.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.coupon_periodicity.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.benchmark.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.strippable.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.volume_issued.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.alive_volume.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.coupon_type.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.coupon_quotation.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_calculation_procedure.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.next_redemption_date.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.type_of_redemption.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.facial.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.calculation_method.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.date_last_coupon_was_paid.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.bond_seniority.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.interest_accrual_date.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.start_date.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.price_type.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.spread_to_index.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.benchmark_curve_points_units.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.benchmark_curve_points_value.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.benchmark_security_id.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_r_8.size

-- Display: Security List Message
bme_bmefixedincome_retail_bmegate_v1_6.security_list_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Message
bme_bmefixedincome_retail_bmegate_v1_6.security_list_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Market Id: C
  index, market_id = bme_bmefixedincome_retail_bmegate_v1_6.market_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_bmefixedincome_retail_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_retail_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Symbol: C
  index, symbol = bme_bmefixedincome_retail_bmegate_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Isin: C
  index, symbol_isin = bme_bmefixedincome_retail_bmegate_v1_6.symbol_isin.dissect(buffer, index, packet, parent)

  -- Fisn: C
  index, fisn = bme_bmefixedincome_retail_bmegate_v1_6.fisn.dissect(buffer, index, packet, parent)

  -- Issuer Lei: C
  index, issuer_lei = bme_bmefixedincome_retail_bmegate_v1_6.issuer_lei.dissect(buffer, index, packet, parent)

  -- Security Group: C
  index, security_group = bme_bmefixedincome_retail_bmegate_v1_6.security_group.dissect(buffer, index, packet, parent)

  -- Cfi Code: C
  index, cfi_code = bme_bmefixedincome_retail_bmegate_v1_6.cfi_code.dissect(buffer, index, packet, parent)

  -- Security Type: C
  index, security_type = bme_bmefixedincome_retail_bmegate_v1_6.security_type.dissect(buffer, index, packet, parent)

  -- Maturity Date: D
  index, maturity_date = bme_bmefixedincome_retail_bmegate_v1_6.maturity_date.dissect(buffer, index, packet, parent)

  -- Issue Date: D
  index, issue_date = bme_bmefixedincome_retail_bmegate_v1_6.issue_date.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: A
  index, contract_multiplier = bme_bmefixedincome_retail_bmegate_v1_6.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Li Spre: A
  index, li_spre = bme_bmefixedincome_retail_bmegate_v1_6.li_spre.dissect(buffer, index, packet, parent)

  -- Sst Ipre: A
  index, sst_ipre = bme_bmefixedincome_retail_bmegate_v1_6.sst_ipre.dissect(buffer, index, packet, parent)

  -- Li Spost: A
  index, li_spost = bme_bmefixedincome_retail_bmegate_v1_6.li_spost.dissect(buffer, index, packet, parent)

  -- Sst Ipost: A
  index, sst_ipost = bme_bmefixedincome_retail_bmegate_v1_6.sst_ipost.dissect(buffer, index, packet, parent)

  -- Liquid Instrument: F
  index, liquid_instrument = bme_bmefixedincome_retail_bmegate_v1_6.liquid_instrument.dissect(buffer, index, packet, parent)

  -- Admission Requested By Issuer: F
  index, admission_requested_by_issuer = bme_bmefixedincome_retail_bmegate_v1_6.admission_requested_by_issuer.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: Q
  index, min_trade_vol = bme_bmefixedincome_retail_bmegate_v1_6.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Round Lot: Q
  index, round_lot = bme_bmefixedincome_retail_bmegate_v1_6.round_lot.dissect(buffer, index, packet, parent)

  -- Currency: C
  index, currency = bme_bmefixedincome_retail_bmegate_v1_6.currency.dissect(buffer, index, packet, parent)

  -- Modality Mask B 4: B
  index, modality_mask_b_4 = bme_bmefixedincome_retail_bmegate_v1_6.modality_mask_b_4.dissect(buffer, index, packet, parent)

  -- Security Description: C
  index, security_description = bme_bmefixedincome_retail_bmegate_v1_6.security_description.dissect(buffer, index, packet, parent)

  -- Trading Obligation: F
  index, trading_obligation = bme_bmefixedincome_retail_bmegate_v1_6.trading_obligation.dissect(buffer, index, packet, parent)

  -- Security Name: C
  index, security_name = bme_bmefixedincome_retail_bmegate_v1_6.security_name.dissect(buffer, index, packet, parent)

  -- Security Status: C
  index, security_status = bme_bmefixedincome_retail_bmegate_v1_6.security_status.dissect(buffer, index, packet, parent)

  -- Coupon Payment Date: D
  index, coupon_payment_date = bme_bmefixedincome_retail_bmegate_v1_6.coupon_payment_date.dissect(buffer, index, packet, parent)

  -- Min Price Increment: P
  index, min_price_increment = bme_bmefixedincome_retail_bmegate_v1_6.min_price_increment.dissect(buffer, index, packet, parent)

  -- Number Of Decimals: U
  index, number_of_decimals = bme_bmefixedincome_retail_bmegate_v1_6.number_of_decimals.dissect(buffer, index, packet, parent)

  -- Order Number Of Decimals: U
  index, order_number_of_decimals = bme_bmefixedincome_retail_bmegate_v1_6.order_number_of_decimals.dissect(buffer, index, packet, parent)

  -- Coupon Rate: R
  index, coupon_rate = bme_bmefixedincome_retail_bmegate_v1_6.coupon_rate.dissect(buffer, index, packet, parent)

  -- Issuer: C
  index, issuer = bme_bmefixedincome_retail_bmegate_v1_6.issuer.dissect(buffer, index, packet, parent)

  -- Trading Scope B 1: B
  index, trading_scope_b_1 = bme_bmefixedincome_retail_bmegate_v1_6.trading_scope_b_1.dissect(buffer, index, packet, parent)

  -- First Trading Date: D
  index, first_trading_date = bme_bmefixedincome_retail_bmegate_v1_6.first_trading_date.dissect(buffer, index, packet, parent)

  -- Settlement System: C
  index, settlement_system = bme_bmefixedincome_retail_bmegate_v1_6.settlement_system.dissect(buffer, index, packet, parent)

  -- Maturity: P
  index, maturity = bme_bmefixedincome_retail_bmegate_v1_6.maturity.dissect(buffer, index, packet, parent)

  -- Coupon Periodicity: U
  index, coupon_periodicity = bme_bmefixedincome_retail_bmegate_v1_6.coupon_periodicity.dissect(buffer, index, packet, parent)

  -- Benchmark: F
  index, benchmark = bme_bmefixedincome_retail_bmegate_v1_6.benchmark.dissect(buffer, index, packet, parent)

  -- Strippable: F
  index, strippable = bme_bmefixedincome_retail_bmegate_v1_6.strippable.dissect(buffer, index, packet, parent)

  -- Volume Issued: A
  index, volume_issued = bme_bmefixedincome_retail_bmegate_v1_6.volume_issued.dissect(buffer, index, packet, parent)

  -- Alive Volume: A
  index, alive_volume = bme_bmefixedincome_retail_bmegate_v1_6.alive_volume.dissect(buffer, index, packet, parent)

  -- Coupon Type: C
  index, coupon_type = bme_bmefixedincome_retail_bmegate_v1_6.coupon_type.dissect(buffer, index, packet, parent)

  -- Coupon Quotation: F
  index, coupon_quotation = bme_bmefixedincome_retail_bmegate_v1_6.coupon_quotation.dissect(buffer, index, packet, parent)

  -- Accrued Interest Calculation Procedure: C
  index, accrued_interest_calculation_procedure = bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_calculation_procedure.dissect(buffer, index, packet, parent)

  -- Next Redemption Date: D
  index, next_redemption_date = bme_bmefixedincome_retail_bmegate_v1_6.next_redemption_date.dissect(buffer, index, packet, parent)

  -- Type Of Redemption: C
  index, type_of_redemption = bme_bmefixedincome_retail_bmegate_v1_6.type_of_redemption.dissect(buffer, index, packet, parent)

  -- Facial: R
  index, facial = bme_bmefixedincome_retail_bmegate_v1_6.facial.dissect(buffer, index, packet, parent)

  -- Calculation Method: C
  index, calculation_method = bme_bmefixedincome_retail_bmegate_v1_6.calculation_method.dissect(buffer, index, packet, parent)

  -- Date Last Coupon Was Paid: D
  index, date_last_coupon_was_paid = bme_bmefixedincome_retail_bmegate_v1_6.date_last_coupon_was_paid.dissect(buffer, index, packet, parent)

  -- Bond Seniority: C
  index, bond_seniority = bme_bmefixedincome_retail_bmegate_v1_6.bond_seniority.dissect(buffer, index, packet, parent)

  -- Interest Accrual Date: D
  index, interest_accrual_date = bme_bmefixedincome_retail_bmegate_v1_6.interest_accrual_date.dissect(buffer, index, packet, parent)

  -- Start Date: D
  index, start_date = bme_bmefixedincome_retail_bmegate_v1_6.start_date.dissect(buffer, index, packet, parent)

  -- Price Type: C
  index, price_type = bme_bmefixedincome_retail_bmegate_v1_6.price_type.dissect(buffer, index, packet, parent)

  -- Spread To Index: R
  index, spread_to_index = bme_bmefixedincome_retail_bmegate_v1_6.spread_to_index.dissect(buffer, index, packet, parent)

  -- Benchmark Curve Points Units: C
  index, benchmark_curve_points_units = bme_bmefixedincome_retail_bmegate_v1_6.benchmark_curve_points_units.dissect(buffer, index, packet, parent)

  -- Benchmark Curve Points Value: U
  index, benchmark_curve_points_value = bme_bmefixedincome_retail_bmegate_v1_6.benchmark_curve_points_value.dissect(buffer, index, packet, parent)

  -- Benchmark Security Id: C
  index, benchmark_security_id = bme_bmefixedincome_retail_bmegate_v1_6.benchmark_security_id.dissect(buffer, index, packet, parent)

  -- Accrued Interest Rate R 8: R
  index, accrued_interest_rate_r_8 = bme_bmefixedincome_retail_bmegate_v1_6.accrued_interest_rate_r_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security List Message
bme_bmefixedincome_retail_bmegate_v1_6.security_list_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.security_list_message, buffer(offset, 0))
    local index = bme_bmefixedincome_retail_bmegate_v1_6.security_list_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_retail_bmegate_v1_6.security_list_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_retail_bmegate_v1_6.security_list_message.fields(buffer, offset, packet, parent)
  end
end

-- Statistics Message
bme_bmefixedincome_retail_bmegate_v1_6.statistics_message = {}

-- Size: Statistics Message
bme_bmefixedincome_retail_bmegate_v1_6.statistics_message.size =
  bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.data_count.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.data_code.size

-- Display: Statistics Message
bme_bmefixedincome_retail_bmegate_v1_6.statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Message
bme_bmefixedincome_retail_bmegate_v1_6.statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_retail_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_retail_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Data Count: U
  index, data_count = bme_bmefixedincome_retail_bmegate_v1_6.data_count.dissect(buffer, index, packet, parent)

  -- Data Code: C
  index, data_code = bme_bmefixedincome_retail_bmegate_v1_6.data_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Message
bme_bmefixedincome_retail_bmegate_v1_6.statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.statistics_message, buffer(offset, 0))
    local index = bme_bmefixedincome_retail_bmegate_v1_6.statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_retail_bmegate_v1_6.statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_retail_bmegate_v1_6.statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Security List Cancellation Report Message
bme_bmefixedincome_retail_bmegate_v1_6.security_list_cancellation_report_message = {}

-- Size: Security List Cancellation Report Message
bme_bmefixedincome_retail_bmegate_v1_6.security_list_cancellation_report_message.size =
  bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.market_id.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.market_segment_id.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.symbol.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.symbol_isin.size

-- Display: Security List Cancellation Report Message
bme_bmefixedincome_retail_bmegate_v1_6.security_list_cancellation_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Cancellation Report Message
bme_bmefixedincome_retail_bmegate_v1_6.security_list_cancellation_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Market Id: C
  index, market_id = bme_bmefixedincome_retail_bmegate_v1_6.market_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_bmefixedincome_retail_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_retail_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Symbol: C
  index, symbol = bme_bmefixedincome_retail_bmegate_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Isin: C
  index, symbol_isin = bme_bmefixedincome_retail_bmegate_v1_6.symbol_isin.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security List Cancellation Report Message
bme_bmefixedincome_retail_bmegate_v1_6.security_list_cancellation_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.security_list_cancellation_report_message, buffer(offset, 0))
    local index = bme_bmefixedincome_retail_bmegate_v1_6.security_list_cancellation_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_retail_bmegate_v1_6.security_list_cancellation_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_retail_bmegate_v1_6.security_list_cancellation_report_message.fields(buffer, offset, packet, parent)
  end
end

-- News Message
bme_bmefixedincome_retail_bmegate_v1_6.news_message = {}

-- Size: News Message
bme_bmefixedincome_retail_bmegate_v1_6.news_message.size =
  bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.news_text.size

-- Display: News Message
bme_bmefixedincome_retail_bmegate_v1_6.news_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: News Message
bme_bmefixedincome_retail_bmegate_v1_6.news_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- News Text: C
  index, news_text = bme_bmefixedincome_retail_bmegate_v1_6.news_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: News Message
bme_bmefixedincome_retail_bmegate_v1_6.news_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.news_message, buffer(offset, 0))
    local index = bme_bmefixedincome_retail_bmegate_v1_6.news_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_retail_bmegate_v1_6.news_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_retail_bmegate_v1_6.news_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Status Message
bme_bmefixedincome_retail_bmegate_v1_6.trading_session_status_message = {}

-- Size: Trading Session Status Message
bme_bmefixedincome_retail_bmegate_v1_6.trading_session_status_message.size =
  bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.trading_session_id.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.trading_session_sub_id.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.trad_ses_status.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.transaction_date_and_time.size

-- Display: Trading Session Status Message
bme_bmefixedincome_retail_bmegate_v1_6.trading_session_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
bme_bmefixedincome_retail_bmegate_v1_6.trading_session_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_bmefixedincome_retail_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: U
  index, trading_session_sub_id = bme_bmefixedincome_retail_bmegate_v1_6.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Trad Ses Status: U
  index, trad_ses_status = bme_bmefixedincome_retail_bmegate_v1_6.trad_ses_status.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_retail_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Message
bme_bmefixedincome_retail_bmegate_v1_6.trading_session_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.trading_session_status_message, buffer(offset, 0))
    local index = bme_bmefixedincome_retail_bmegate_v1_6.trading_session_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_retail_bmegate_v1_6.trading_session_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_retail_bmegate_v1_6.trading_session_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Network Status Message
bme_bmefixedincome_retail_bmegate_v1_6.network_status_message = {}

-- Size: Network Status Message
bme_bmefixedincome_retail_bmegate_v1_6.network_status_message.size =
  bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.network_status_value.size

-- Display: Network Status Message
bme_bmefixedincome_retail_bmegate_v1_6.network_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Network Status Message
bme_bmefixedincome_retail_bmegate_v1_6.network_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Network Status Value: U
  index, network_status_value = bme_bmefixedincome_retail_bmegate_v1_6.network_status_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Network Status Message
bme_bmefixedincome_retail_bmegate_v1_6.network_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.network_status_message, buffer(offset, 0))
    local index = bme_bmefixedincome_retail_bmegate_v1_6.network_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_retail_bmegate_v1_6.network_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_retail_bmegate_v1_6.network_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
bme_bmefixedincome_retail_bmegate_v1_6.heartbeat_message = {}

-- Size: Heartbeat Message
bme_bmefixedincome_retail_bmegate_v1_6.heartbeat_message.size =
  bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.size

-- Display: Heartbeat Message
bme_bmefixedincome_retail_bmegate_v1_6.heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Message
bme_bmefixedincome_retail_bmegate_v1_6.heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Message
bme_bmefixedincome_retail_bmegate_v1_6.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.heartbeat_message, buffer(offset, 0))
    local index = bme_bmefixedincome_retail_bmegate_v1_6.heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_retail_bmegate_v1_6.heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_retail_bmegate_v1_6.heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Logout Response Message
bme_bmefixedincome_retail_bmegate_v1_6.logout_response_message = {}

-- Size: Logout Response Message
bme_bmefixedincome_retail_bmegate_v1_6.logout_response_message.size =
  bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.logout_reason.size

-- Display: Logout Response Message
bme_bmefixedincome_retail_bmegate_v1_6.logout_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Response Message
bme_bmefixedincome_retail_bmegate_v1_6.logout_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Logout Reason: U
  index, logout_reason = bme_bmefixedincome_retail_bmegate_v1_6.logout_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Response Message
bme_bmefixedincome_retail_bmegate_v1_6.logout_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.logout_response_message, buffer(offset, 0))
    local index = bme_bmefixedincome_retail_bmegate_v1_6.logout_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_retail_bmegate_v1_6.logout_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_retail_bmegate_v1_6.logout_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Response Message
bme_bmefixedincome_retail_bmegate_v1_6.logon_response_message = {}

-- Size: Logon Response Message
bme_bmefixedincome_retail_bmegate_v1_6.logon_response_message.size =
  bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.heart_bt_int.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.protocol_version.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.test_production_ind.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.environment_code.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.session_date.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.expected_sequence_number.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.sequence_number_to.size

-- Display: Logon Response Message
bme_bmefixedincome_retail_bmegate_v1_6.logon_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Response Message
bme_bmefixedincome_retail_bmegate_v1_6.logon_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_retail_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Heart Bt Int: U
  index, heart_bt_int = bme_bmefixedincome_retail_bmegate_v1_6.heart_bt_int.dissect(buffer, index, packet, parent)

  -- Protocol Version: C
  index, protocol_version = bme_bmefixedincome_retail_bmegate_v1_6.protocol_version.dissect(buffer, index, packet, parent)

  -- Test Production Ind: C
  index, test_production_ind = bme_bmefixedincome_retail_bmegate_v1_6.test_production_ind.dissect(buffer, index, packet, parent)

  -- Environment Code: C
  index, environment_code = bme_bmefixedincome_retail_bmegate_v1_6.environment_code.dissect(buffer, index, packet, parent)

  -- Session Date: D
  index, session_date = bme_bmefixedincome_retail_bmegate_v1_6.session_date.dissect(buffer, index, packet, parent)

  -- Expected Sequence Number: U
  index, expected_sequence_number = bme_bmefixedincome_retail_bmegate_v1_6.expected_sequence_number.dissect(buffer, index, packet, parent)

  -- Sequence Number To: U
  index, sequence_number_to = bme_bmefixedincome_retail_bmegate_v1_6.sequence_number_to.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Response Message
bme_bmefixedincome_retail_bmegate_v1_6.logon_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.logon_response_message, buffer(offset, 0))
    local index = bme_bmefixedincome_retail_bmegate_v1_6.logon_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_retail_bmegate_v1_6.logon_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_retail_bmegate_v1_6.logon_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
bme_bmefixedincome_retail_bmegate_v1_6.payload = {}

-- Dissect: Payload
bme_bmefixedincome_retail_bmegate_v1_6.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Logon Response Message
  if message_type == 0x08 then
    return bme_bmefixedincome_retail_bmegate_v1_6.logon_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Response Message
  if message_type == 0x0B then
    return bme_bmefixedincome_retail_bmegate_v1_6.logout_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if message_type == 0x30 then
    return bme_bmefixedincome_retail_bmegate_v1_6.heartbeat_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Network Status Message
  if message_type == 0x0A then
    return bme_bmefixedincome_retail_bmegate_v1_6.network_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Status Message
  if message_type == 0x68 then
    return bme_bmefixedincome_retail_bmegate_v1_6.trading_session_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect News Message
  if message_type == 0x42 then
    return bme_bmefixedincome_retail_bmegate_v1_6.news_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security List Cancellation Report Message
  if message_type == 0x78 then
    return bme_bmefixedincome_retail_bmegate_v1_6.security_list_cancellation_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Message
  if message_type == 0x84 then
    return bme_bmefixedincome_retail_bmegate_v1_6.statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security List Message
  if message_type == 0x79 then
    return bme_bmefixedincome_retail_bmegate_v1_6.security_list_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security List Update Report Message
  if message_type == 0x80 then
    return bme_bmefixedincome_retail_bmegate_v1_6.security_list_update_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 0x66 then
    return bme_bmefixedincome_retail_bmegate_v1_6.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Market Post Transparency Information Topofbook Message
  if message_type == 0x10 then
    return bme_bmefixedincome_retail_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Trade Amendment Or Cancellation Message
  if message_type == 0x18 then
    return bme_bmefixedincome_retail_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Indication Of Interest Message
  if message_type == 0x36 then
    return bme_bmefixedincome_retail_bmegate_v1_6.indication_of_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Market Pre Transparency Information Message
  if message_type == 0x85 then
    return bme_bmefixedincome_retail_bmegate_v1_6.rfq_market_pre_transparency_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Topofbook Retail Message
  if message_type == 0x91 then
    return bme_bmefixedincome_retail_bmegate_v1_6.topofbook_retail_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
bme_bmefixedincome_retail_bmegate_v1_6.message_header = {}

-- Size: Message Header
bme_bmefixedincome_retail_bmegate_v1_6.message_header.size =
  bme_bmefixedincome_retail_bmegate_v1_6.message_size.size + 
  bme_bmefixedincome_retail_bmegate_v1_6.message_type.size

-- Display: Message Header
bme_bmefixedincome_retail_bmegate_v1_6.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
bme_bmefixedincome_retail_bmegate_v1_6.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: U
  index, message_size = bme_bmefixedincome_retail_bmegate_v1_6.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: U
  index, message_type = bme_bmefixedincome_retail_bmegate_v1_6.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
bme_bmefixedincome_retail_bmegate_v1_6.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.message_header, buffer(offset, 0))
    local index = bme_bmefixedincome_retail_bmegate_v1_6.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_retail_bmegate_v1_6.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_retail_bmegate_v1_6.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
bme_bmefixedincome_retail_bmegate_v1_6.message = {}

-- Display: Message
bme_bmefixedincome_retail_bmegate_v1_6.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
bme_bmefixedincome_retail_bmegate_v1_6.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = bme_bmefixedincome_retail_bmegate_v1_6.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 16 branches
  index = bme_bmefixedincome_retail_bmegate_v1_6.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
bme_bmefixedincome_retail_bmegate_v1_6.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6.fields.message, buffer(offset, 0))
    local current = bme_bmefixedincome_retail_bmegate_v1_6.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = bme_bmefixedincome_retail_bmegate_v1_6.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bme_bmefixedincome_retail_bmegate_v1_6.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Packet
bme_bmefixedincome_retail_bmegate_v1_6.packet = {}

-- Verify required size of Udp packet
bme_bmefixedincome_retail_bmegate_v1_6.packet.requiredsize = function(buffer)
  return buffer:len() >= bme_bmefixedincome_retail_bmegate_v1_6.message_header.size
end

-- Dissect Packet
bme_bmefixedincome_retail_bmegate_v1_6.packet.dissect = function(buffer, packet, parent)
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
    index, message = bme_bmefixedincome_retail_bmegate_v1_6.message.dissect(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_bme_bmefixedincome_retail_bmegate_v1_6.init()
end

-- Dissector for Bme BmeFixedIncome Retail BmeGate 1.6
function omi_bme_bmefixedincome_retail_bmegate_v1_6.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_bme_bmefixedincome_retail_bmegate_v1_6.name

  -- Dissect protocol
  local protocol = parent:add(omi_bme_bmefixedincome_retail_bmegate_v1_6, buffer(), omi_bme_bmefixedincome_retail_bmegate_v1_6.description, "("..buffer:len().." Bytes)")
  return bme_bmefixedincome_retail_bmegate_v1_6.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Bme BmeFixedIncome Retail BmeGate 1.6 (Udp)
local function omi_bme_bmefixedincome_retail_bmegate_v1_6_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bme_bmefixedincome_retail_bmegate_v1_6.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bme_bmefixedincome_retail_bmegate_v1_6
  omi_bme_bmefixedincome_retail_bmegate_v1_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Bme BmeFixedIncome Retail BmeGate 1.6
omi_bme_bmefixedincome_retail_bmegate_v1_6:register_heuristic("udp", omi_bme_bmefixedincome_retail_bmegate_v1_6_udp_heuristic)

-- Register Bme BmeFixedIncome Retail BmeGate 1.6 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_bme_bmefixedincome_retail_bmegate_v1_6)

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
