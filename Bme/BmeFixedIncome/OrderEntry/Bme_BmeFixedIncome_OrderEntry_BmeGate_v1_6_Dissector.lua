-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bme BmeFixedIncome OrderEntry BmeGate 1.6 Protocol
local omi_bme_bmefixedincome_orderentry_bmegate_v1_6 = Proto("Omi.Bme.BmeFixedIncome.OrderEntry.BmeGate.v1.6", "Bme BmeFixedIncome OrderEntry BmeGate 1.6")

-- Protocol table
local bme_bmefixedincome_orderentry_bmegate_v1_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bme BmeFixedIncome OrderEntry BmeGate 1.6 Fields
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.account = ProtoField.new("Account", "bme.bmefixedincome.orderentry.bmegate.v1.6.account", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.account_2 = ProtoField.new("Account 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.account2", ftypes.STRING, nil, nil, nil, "Account")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.account_bolsa = ProtoField.new("Account Bolsa", "bme.bmefixedincome.orderentry.bmegate.v1.6.accountbolsa", ftypes.STRING, nil, nil, nil, "Client code")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.account_bolsa_2 = ProtoField.new("Account Bolsa 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.accountbolsa2", ftypes.STRING, nil, nil, nil, "Client code")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.account_member = ProtoField.new("Account Member", "bme.bmefixedincome.orderentry.bmegate.v1.6.accountmember", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.account_member_2 = ProtoField.new("Account Member 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.accountmember2", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.accrued_interest_amt = ProtoField.new("Accrued Interest Amt", "bme.bmefixedincome.orderentry.bmegate.v1.6.accruedinterestamt", ftypes.DOUBLE, nil, nil, nil, "Accrued Interest amount")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.accrued_interest_calculation_procedure = ProtoField.new("Accrued Interest Calculation Procedure", "bme.bmefixedincome.orderentry.bmegate.v1.6.accruedinterestcalculationprocedure", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.accrued_interest_rate_p_8 = ProtoField.new("Accrued Interest Rate P 8", "bme.bmefixedincome.orderentry.bmegate.v1.6.accruedinterestratep8", ftypes.DOUBLE, nil, nil, nil, "Interest rate of coupon")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.accrued_interest_rate_r_8 = ProtoField.new("Accrued Interest Rate R 8", "bme.bmefixedincome.orderentry.bmegate.v1.6.accruedinterestrater8", ftypes.DOUBLE, nil, nil, nil, "Accrued Interest Rate")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.admission_requested_by_issuer = ProtoField.new("Admission Requested By Issuer", "bme.bmefixedincome.orderentry.bmegate.v1.6.admissionrequestedbyissuer", ftypes.UINT8, nil, nil, nil, "Security request for admission to trading by the issuer")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.aggressor_indicator = ProtoField.new("Aggressor Indicator", "bme.bmefixedincome.orderentry.bmegate.v1.6.aggressorindicator", ftypes.STRING, nil, nil, nil, "Passive or aggressive indicator")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.aggressor_indicator_2 = ProtoField.new("Aggressor Indicator 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.aggressorindicator2", ftypes.STRING, nil, nil, nil, "Passive or aggressive indicator")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.algo_flag = ProtoField.new("Algo Flag", "bme.bmefixedincome.orderentry.bmegate.v1.6.algoflag", ftypes.UINT8, nil, nil, nil, "Algorithmic flag indicator")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.algorithmic_trade_indicator = ProtoField.new("Algorithmic Trade Indicator", "bme.bmefixedincome.orderentry.bmegate.v1.6.algorithmictradeindicator", ftypes.UINT8, nil, nil, nil, "Algorithmic flag indicator")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.algorithmic_trade_indicator_2 = ProtoField.new("Algorithmic Trade Indicator 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.algorithmictradeindicator2", ftypes.UINT8, nil, nil, nil, "Algorithmic flag indicator")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.alive_volume = ProtoField.new("Alive Volume", "bme.bmefixedincome.orderentry.bmegate.v1.6.alivevolume", ftypes.DOUBLE)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.alt_last_px = ProtoField.new("Alt Last Px", "bme.bmefixedincome.orderentry.bmegate.v1.6.altlastpx", ftypes.DOUBLE, nil, nil, nil, "Trade yield or percent of par")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.alt_price = ProtoField.new("Alt Price", "bme.bmefixedincome.orderentry.bmegate.v1.6.altprice", ftypes.DOUBLE, nil, nil, nil, "Yield or percent of par")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.alt_price_2 = ProtoField.new("Alt Price 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.altprice2", ftypes.DOUBLE, nil, nil, nil, "Yield or percent of par")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.amended_trade_date = ProtoField.new("Amended Trade Date", "bme.bmefixedincome.orderentry.bmegate.v1.6.amendedtradedate", ftypes.INT32, nil, nil, nil, "Date of the amended/cancelled trade")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.amended_trade_type = ProtoField.new("Amended Trade Type", "bme.bmefixedincome.orderentry.bmegate.v1.6.amendedtradetype", ftypes.STRING, nil, nil, nil, "Trade type of the amended/cancelled trade")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ask_px_1 = ProtoField.new("Ask Px 1", "bme.bmefixedincome.orderentry.bmegate.v1.6.askpx1", ftypes.DOUBLE, nil, nil, nil, "Sell price")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ask_size_1 = ProtoField.new("Ask Size 1", "bme.bmefixedincome.orderentry.bmegate.v1.6.asksize1", ftypes.UINT32, nil, nil, nil, "Sell volume")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.benchmark = ProtoField.new("Benchmark", "bme.bmefixedincome.orderentry.bmegate.v1.6.benchmark", ftypes.UINT8)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.benchmark_curve_points_units = ProtoField.new("Benchmark Curve Points Units", "bme.bmefixedincome.orderentry.bmegate.v1.6.benchmarkcurvepointsunits", ftypes.STRING, nil, nil, nil, "Benchmark Curve Point for Index term")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.benchmark_curve_points_value = ProtoField.new("Benchmark Curve Points Value", "bme.bmefixedincome.orderentry.bmegate.v1.6.benchmarkcurvepointsvalue", ftypes.UINT8, nil, nil, nil, "Benchmark Curve Point for Index term")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.benchmark_security_id = ProtoField.new("Benchmark Security Id", "bme.bmefixedincome.orderentry.bmegate.v1.6.benchmarksecurityid", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.bencrfpt_flag = ProtoField.new("Bencrfpt Flag", "bme.bmefixedincome.orderentry.bmegate.v1.6.bencrfptflag", ftypes.STRING, nil, nil, nil, "Benchmark or Reference Price Indicator MMT")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.bid_px_1 = ProtoField.new("Bid Px 1", "bme.bmefixedincome.orderentry.bmegate.v1.6.bidpx1", ftypes.DOUBLE, nil, nil, nil, "Buy price")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.bid_size_1 = ProtoField.new("Bid Size 1", "bme.bmefixedincome.orderentry.bmegate.v1.6.bidsize1", ftypes.UINT32, nil, nil, nil, "Buy volume")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.block_static_range = ProtoField.new("Block Static Range", "bme.bmefixedincome.orderentry.bmegate.v1.6.blockstaticrange", ftypes.DOUBLE, nil, nil, nil, "Static range for parametrised blocks")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.bond_seniority = ProtoField.new("Bond Seniority", "bme.bmefixedincome.orderentry.bmegate.v1.6.bondseniority", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.broker_text = ProtoField.new("Broker Text", "bme.bmefixedincome.orderentry.bmegate.v1.6.brokertext", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.broker_trader = ProtoField.new("Broker Trader", "bme.bmefixedincome.orderentry.bmegate.v1.6.brokertrader", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.business_reject_reason = ProtoField.new("Business Reject Reason", "bme.bmefixedincome.orderentry.bmegate.v1.6.businessrejectreason", ftypes.UINT8, nil, nil, nil, "Reason for rejection")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.calculation_method = ProtoField.new("Calculation Method", "bme.bmefixedincome.orderentry.bmegate.v1.6.calculationmethod", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.cancellation_type = ProtoField.new("Cancellation Type", "bme.bmefixedincome.orderentry.bmegate.v1.6.cancellationtype", ftypes.STRING, nil, nil, nil, "Cancellation mode")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ccp_code = ProtoField.new("Ccp Code", "bme.bmefixedincome.orderentry.bmegate.v1.6.ccpcode", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ccp_code_2 = ProtoField.new("Ccp Code 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.ccpcode2", ftypes.STRING, nil, nil, nil, "CCP Code")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.cfi_code = ProtoField.new("Cfi Code", "bme.bmefixedincome.orderentry.bmegate.v1.6.cficode", ftypes.STRING, nil, nil, nil, "CFICode")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.client_data_id = ProtoField.new("Client Data Id", "bme.bmefixedincome.orderentry.bmegate.v1.6.clientdataid", ftypes.UINT16, nil, nil, nil, "Client Data ID (to be used as a shortcode in orders and quotes). Valid values: 1-65535 (in response messages, 0 means no ClientDataID used)")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.client_data_id_2 = ProtoField.new("Client Data Id 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.clientdataid2", ftypes.UINT16, nil, nil, nil, "Client Data ID (to be used as a shortcode in orders and quotes). Valid values: 1-65535 (in response messages, 0 means no ClientDataID used)")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.client_data_reference = ProtoField.new("Client Data Reference", "bme.bmefixedincome.orderentry.bmegate.v1.6.clientdatareference", ftypes.STRING, nil, nil, nil, "Free to use by clients")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.client_id = ProtoField.new("Client Id", "bme.bmefixedincome.orderentry.bmegate.v1.6.clientid", ftypes.UINT32, nil, nil, nil, "Mifid II ClientID")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.client_id_2 = ProtoField.new("Client Id 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.clientid2", ftypes.UINT32, nil, nil, nil, "Mifid II ClientID")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "bme.bmefixedincome.orderentry.bmegate.v1.6.contractmultiplier", ftypes.DOUBLE, nil, nil, nil, "Conversion factor between price units and monetary units")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.coupon_payment_date = ProtoField.new("Coupon Payment Date", "bme.bmefixedincome.orderentry.bmegate.v1.6.couponpaymentdate", ftypes.INT32)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.coupon_periodicity = ProtoField.new("Coupon Periodicity", "bme.bmefixedincome.orderentry.bmegate.v1.6.couponperiodicity", ftypes.UINT8, nil, nil, nil, "Coupon Periodicity in Number of Months")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.coupon_quotation = ProtoField.new("Coupon Quotation", "bme.bmefixedincome.orderentry.bmegate.v1.6.couponquotation", ftypes.UINT8)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.coupon_rate = ProtoField.new("Coupon Rate", "bme.bmefixedincome.orderentry.bmegate.v1.6.couponrate", ftypes.DOUBLE)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.coupon_type = ProtoField.new("Coupon Type", "bme.bmefixedincome.orderentry.bmegate.v1.6.coupontype", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.cross_id = ProtoField.new("Cross Id", "bme.bmefixedincome.orderentry.bmegate.v1.6.crossid", ftypes.UINT32, nil, nil, nil, "Cross Trade Unique Identifier")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.cross_id_2 = ProtoField.new("Cross Id 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.crossid2", ftypes.UINT32, nil, nil, nil, "Cross Trade Unique Identifier")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.currency = ProtoField.new("Currency", "bme.bmefixedincome.orderentry.bmegate.v1.6.currency", ftypes.STRING, nil, nil, nil, "Currency code")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.cxl_rej_reason = ProtoField.new("Cxl Rej Reason", "bme.bmefixedincome.orderentry.bmegate.v1.6.cxlrejreason", ftypes.STRING, nil, nil, nil, "Rejection motive")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.cxl_rej_response_to = ProtoField.new("Cxl Rej Response To", "bme.bmefixedincome.orderentry.bmegate.v1.6.cxlrejresponseto", ftypes.STRING, nil, nil, nil, "Type of message responded to")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.data_code = ProtoField.new("Data Code", "bme.bmefixedincome.orderentry.bmegate.v1.6.datacode", ftypes.STRING, nil, nil, nil, "Data field code")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.data_count = ProtoField.new("Data Count", "bme.bmefixedincome.orderentry.bmegate.v1.6.datacount", ftypes.UINT8, nil, nil, nil, "Number of data values")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.data_value = ProtoField.new("Data Value", "bme.bmefixedincome.orderentry.bmegate.v1.6.datavalue", ftypes.INT64, nil, nil, nil, "Data field value. Its type follows DataCode: P (price, 6 implicit decimals) for D, d, G, H, h, M, Q, Z, z, j, k and n; V (volume, 6 implicit decimals) for J, V, v and W; A (amount, 4 implicit decimals) for E and e; R (rate, 4 implicit decimals) for l, m and R; U (unsigned integer) for f (0 if not end of session) and N")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.date_last_coupon_was_paid = ProtoField.new("Date Last Coupon Was Paid", "bme.bmefixedincome.orderentry.bmegate.v1.6.datelastcouponwaspaid", ftypes.INT32)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.dea_flag = ProtoField.new("Dea Flag", "bme.bmefixedincome.orderentry.bmegate.v1.6.deaflag", ftypes.UINT8, nil, nil, nil, "Direct Electronic Access indicator")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.dea_flag_2 = ProtoField.new("Dea Flag 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.deaflag2", ftypes.UINT8, nil, nil, nil, "Direct Electronic Access indicator")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.decisor_id = ProtoField.new("Decisor Id", "bme.bmefixedincome.orderentry.bmegate.v1.6.decisorid", ftypes.UINT32, nil, nil, nil, "MIFID II DecisorID")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.decisor_id_2 = ProtoField.new("Decisor Id 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.decisorid2", ftypes.UINT32, nil, nil, nil, "MIFID II DecisorID")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.deferral_waiver = ProtoField.new("Deferral Waiver", "bme.bmefixedincome.orderentry.bmegate.v1.6.deferralwaiver", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.designation = ProtoField.new("Designation", "bme.bmefixedincome.orderentry.bmegate.v1.6.designation", ftypes.STRING, nil, nil, nil, "Trade situation")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.display_qty = ProtoField.new("Display Qty", "bme.bmefixedincome.orderentry.bmegate.v1.6.displayqty", ftypes.UINT32, nil, nil, nil, "Visible pending volume")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.display_qty_2 = ProtoField.new("Display Qty 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.displayqty2", ftypes.UINT32, nil, nil, nil, "Visible pending volume")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.end_cash = ProtoField.new("End Cash", "bme.bmefixedincome.orderentry.bmegate.v1.6.endcash", ftypes.DOUBLE, nil, nil, nil, "Amount to be settled at the end of the Repo Trade")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.entry_date = ProtoField.new("Entry Date", "bme.bmefixedincome.orderentry.bmegate.v1.6.entrydate", ftypes.INT32, nil, nil, nil, "System order entry date (when System Order Number was assigned)")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.entry_date_2 = ProtoField.new("Entry Date 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.entrydate2", ftypes.INT32, nil, nil, nil, "System order entry date (when System Order Number was assigned)")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.environment_code = ProtoField.new("Environment Code", "bme.bmefixedincome.orderentry.bmegate.v1.6.environmentcode", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "bme.bmefixedincome.orderentry.bmegate.v1.6.execrefid", ftypes.UINT32, nil, nil, nil, "System Trade Number of the amended/cancelled trade")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.exec_type = ProtoField.new("Exec Type", "bme.bmefixedincome.orderentry.bmegate.v1.6.exectype", ftypes.STRING, nil, nil, nil, "Confirmation type")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.exec_type_2 = ProtoField.new("Exec Type 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.exectype2", ftypes.STRING, nil, nil, nil, "Confirmation type")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.executor_id = ProtoField.new("Executor Id", "bme.bmefixedincome.orderentry.bmegate.v1.6.executorid", ftypes.UINT32, nil, nil, nil, "Mifid II ExecutorID")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.executor_id_2 = ProtoField.new("Executor Id 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.executorid2", ftypes.UINT32, nil, nil, nil, "Mifid II ExecutorID")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.expected_sequence_number = ProtoField.new("Expected Sequence Number", "bme.bmefixedincome.orderentry.bmegate.v1.6.expectedsequencenumber", ftypes.UINT32, nil, nil, nil, "Requested sequence number")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.facial = ProtoField.new("Facial", "bme.bmefixedincome.orderentry.bmegate.v1.6.facial", ftypes.DOUBLE)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.first_trading_date = ProtoField.new("First Trading Date", "bme.bmefixedincome.orderentry.bmegate.v1.6.firsttradingdate", ftypes.INT32)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.fisn = ProtoField.new("Fisn", "bme.bmefixedincome.orderentry.bmegate.v1.6.fisn", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.gross_trade_amt = ProtoField.new("Gross Trade Amt", "bme.bmefixedincome.orderentry.bmegate.v1.6.grosstradeamt", ftypes.DOUBLE, nil, nil, nil, "Premium / Trade amount")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "bme.bmefixedincome.orderentry.bmegate.v1.6.heartbtint", ftypes.UINT8, nil, nil, nil, "Interval at which messages are sent to verify the connection (Heartbeat message) expressed in seconds")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.high_limit_price = ProtoField.new("High Limit Price", "bme.bmefixedincome.orderentry.bmegate.v1.6.highlimitprice", ftypes.DOUBLE)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.interest_accrual_date = ProtoField.new("Interest Accrual Date", "bme.bmefixedincome.orderentry.bmegate.v1.6.interestaccrualdate", ftypes.INT32, nil, nil, nil, "Start date for the coupon yield")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ioi_price = ProtoField.new("Ioi Price", "bme.bmefixedincome.orderentry.bmegate.v1.6.ioiprice", ftypes.DOUBLE, nil, nil, nil, "Requested indicative price")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ioi_qty = ProtoField.new("Ioi Qty", "bme.bmefixedincome.orderentry.bmegate.v1.6.ioiqty", ftypes.UINT32, nil, nil, nil, "Requested indicative volume")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ioi_trans_type = ProtoField.new("Ioi Trans Type", "bme.bmefixedincome.orderentry.bmegate.v1.6.ioitranstype", ftypes.STRING, nil, nil, nil, "Message type")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ioiid = ProtoField.new("Ioiid", "bme.bmefixedincome.orderentry.bmegate.v1.6.ioiid", ftypes.UINT32, nil, nil, nil, "RFQ identifier")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.issue_date = ProtoField.new("Issue Date", "bme.bmefixedincome.orderentry.bmegate.v1.6.issuedate", ftypes.INT32, nil, nil, nil, "Date security issued")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.issuer = ProtoField.new("Issuer", "bme.bmefixedincome.orderentry.bmegate.v1.6.issuer", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.issuer_lei = ProtoField.new("Issuer Lei", "bme.bmefixedincome.orderentry.bmegate.v1.6.issuerlei", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.last_capacity = ProtoField.new("Last Capacity", "bme.bmefixedincome.orderentry.bmegate.v1.6.lastcapacity", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.last_capacity_2 = ProtoField.new("Last Capacity 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.lastcapacity2", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.last_change_flag = ProtoField.new("Last Change Flag", "bme.bmefixedincome.orderentry.bmegate.v1.6.lastchangeflag", ftypes.UINT8, nil, nil, nil, "Indicates if this trade changes the instrument Last price")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.last_px = ProtoField.new("Last Px", "bme.bmefixedincome.orderentry.bmegate.v1.6.lastpx", ftypes.DOUBLE, nil, nil, nil, "Trade price")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.last_qty = ProtoField.new("Last Qty", "bme.bmefixedincome.orderentry.bmegate.v1.6.lastqty", ftypes.UINT32, nil, nil, nil, "Current trade volume")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.li_spost = ProtoField.new("Li Spost", "bme.bmefixedincome.orderentry.bmegate.v1.6.lispost", ftypes.DOUBLE, nil, nil, nil, "LIS posttransparency threshold")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.li_spre = ProtoField.new("Li Spre", "bme.bmefixedincome.orderentry.bmegate.v1.6.lispre", ftypes.DOUBLE, nil, nil, nil, "LIS pretransparency threshold")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.liquid_instrument = ProtoField.new("Liquid Instrument", "bme.bmefixedincome.orderentry.bmegate.v1.6.liquidinstrument", ftypes.UINT8)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.liquidity_provision_activity = ProtoField.new("Liquidity Provision Activity", "bme.bmefixedincome.orderentry.bmegate.v1.6.liquidityprovisionactivity", ftypes.UINT8, nil, nil, nil, "Liquidity Provision Activity Flag")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.liquidity_provision_activity_2 = ProtoField.new("Liquidity Provision Activity 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.liquidityprovisionactivity2", ftypes.UINT8, nil, nil, nil, "Liquidity Provision Activity Flag")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.logout_reason = ProtoField.new("Logout Reason", "bme.bmefixedincome.orderentry.bmegate.v1.6.logoutreason", ftypes.UINT8)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.low_limit_price = ProtoField.new("Low Limit Price", "bme.bmefixedincome.orderentry.bmegate.v1.6.lowlimitprice", ftypes.DOUBLE)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.market_id = ProtoField.new("Market Id", "bme.bmefixedincome.orderentry.bmegate.v1.6.marketid", ftypes.STRING, nil, nil, nil, "Operating MIC Code")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.market_mechanism = ProtoField.new("Market Mechanism", "bme.bmefixedincome.orderentry.bmegate.v1.6.marketmechanism", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.market_segment_id = ProtoField.new("Market Segment Id", "bme.bmefixedincome.orderentry.bmegate.v1.6.marketsegmentid", ftypes.STRING, nil, nil, nil, "Segment MIC Code")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.mass_cancel_reject_reason = ProtoField.new("Mass Cancel Reject Reason", "bme.bmefixedincome.orderentry.bmegate.v1.6.masscancelrejectreason", ftypes.STRING, nil, nil, nil, "Rejection motive")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.maturity = ProtoField.new("Maturity", "bme.bmefixedincome.orderentry.bmegate.v1.6.maturity", ftypes.DOUBLE, nil, nil, nil, "Maturity Price")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.maturity_date = ProtoField.new("Maturity Date", "bme.bmefixedincome.orderentry.bmegate.v1.6.maturitydate", ftypes.INT32, nil, nil, nil, "Expiration date")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.member = ProtoField.new("Member", "bme.bmefixedincome.orderentry.bmegate.v1.6.member", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.member_2 = ProtoField.new("Member 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.member2", ftypes.STRING, nil, nil, nil, "Member")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.message_size = ProtoField.new("Message Size", "bme.bmefixedincome.orderentry.bmegate.v1.6.messagesize", ftypes.UINT16, nil, nil, nil, "Length of message, including this field")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.message_type = ProtoField.new("Message Type", "bme.bmefixedincome.orderentry.bmegate.v1.6.messagetype", ftypes.UINT8, nil, nil, nil, "Message type. Section 3.3 assigns the message code of the equivalent Fix protocol message where there is one, so Logon is 0x41, and gives the rest a hexadecimal value below 0x20 or at or above 0x80")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.min_price_increment = ProtoField.new("Min Price Increment", "bme.bmefixedincome.orderentry.bmegate.v1.6.minpriceincrement", ftypes.DOUBLE, nil, nil, nil, "Minimum Price Increment")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.min_trade_vol = ProtoField.new("Min Trade Vol", "bme.bmefixedincome.orderentry.bmegate.v1.6.mintradevol", ftypes.UINT32, nil, nil, nil, "Minimum Tradeable Volume")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.modality_mask_b_4 = ProtoField.new("Modality Mask B 4", "bme.bmefixedincome.orderentry.bmegate.v1.6.modalitymaskb4", ftypes.UINT32, nil, nil, nil, "Modality mask ∑ 2^(ModalityCode - 100) ModalityCode valid values are the TradingSessionID values listed in Table 25 - TradingSessionID in “BMEGate Codification Tables”")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.msg_rejected_reference = ProtoField.new("Msg Rejected Reference", "bme.bmefixedincome.orderentry.bmegate.v1.6.msgrejectedreference", ftypes.BYTES, nil, nil, nil, "Provides the seven first bytes of the message being rejected")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.network_status_value = ProtoField.new("Network Status Value", "bme.bmefixedincome.orderentry.bmegate.v1.6.networkstatusvalue", ftypes.UINT8, nil, nil, nil, "Connection status")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.news_text = ProtoField.new("News Text", "bme.bmefixedincome.orderentry.bmegate.v1.6.newstext", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.next_redemption_date = ProtoField.new("Next Redemption Date", "bme.bmefixedincome.orderentry.bmegate.v1.6.nextredemptiondate", ftypes.INT32)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.non_availability_reason = ProtoField.new("Non Availability Reason", "bme.bmefixedincome.orderentry.bmegate.v1.6.nonavailabilityreason", ftypes.UINT8, nil, nil, nil, "Reason security halted")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.number_of_decimals = ProtoField.new("Number Of Decimals", "bme.bmefixedincome.orderentry.bmegate.v1.6.numberofdecimals", ftypes.UINT8)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ord_rej_reason = ProtoField.new("Ord Rej Reason", "bme.bmefixedincome.orderentry.bmegate.v1.6.ordrejreason", ftypes.STRING, nil, nil, nil, "When OrdStatus = 4/8 it contains the reason for Cancellation/Reject. When OrdStatus # 4/8 it may contain additional information on the status of the order")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ord_rej_reason_2 = ProtoField.new("Ord Rej Reason 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.ordrejreason2", ftypes.STRING, nil, nil, nil, "When OrdStatus = 4/8 it contains the reason for Cancellation/Reject. When OrdStatus # 4/8 it may contain additional information on the status of the order")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ord_status = ProtoField.new("Ord Status", "bme.bmefixedincome.orderentry.bmegate.v1.6.ordstatus", ftypes.STRING, nil, nil, nil, "Order Status")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ord_status_2 = ProtoField.new("Ord Status 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.ordstatus2", ftypes.STRING, nil, nil, nil, "Order Status")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_id = ProtoField.new("Order Id", "bme.bmefixedincome.orderentry.bmegate.v1.6.orderid", ftypes.UINT32, nil, nil, nil, "Application Order ID (unique at security level)")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_id_2 = ProtoField.new("Order Id 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.orderid2", ftypes.UINT32, nil, nil, nil, "Application Order ID (unique at security level)")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_number_of_decimals = ProtoField.new("Order Number Of Decimals", "bme.bmefixedincome.orderentry.bmegate.v1.6.ordernumberofdecimals", ftypes.UINT8, nil, nil, nil, "Number of Decimals in Order Entry")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_or_quote_cancel = ProtoField.new("Order Or Quote Cancel", "bme.bmefixedincome.orderentry.bmegate.v1.6.orderorquotecancel", ftypes.STRING, nil, nil, nil, "Cancellation of orders and/or quotes indicator")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_qty = ProtoField.new("Order Qty", "bme.bmefixedincome.orderentry.bmegate.v1.6.orderqty", ftypes.UINT32, nil, nil, nil, "Total order volume")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_qty_2 = ProtoField.new("Order Qty 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.orderqty2", ftypes.UINT32, nil, nil, nil, "Total order volume")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_security_code = ProtoField.new("Order Security Code", "bme.bmefixedincome.orderentry.bmegate.v1.6.ordersecuritycode", ftypes.UINT32, nil, nil, nil, "Order instrument (or Book) code")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_security_code_2 = ProtoField.new("Order Security Code 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.ordersecuritycode2", ftypes.UINT32, nil, nil, nil, "Order instrument (or Book) code")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_static_range = ProtoField.new("Order Static Range", "bme.bmefixedincome.orderentry.bmegate.v1.6.orderstaticrange", ftypes.DOUBLE, nil, nil, nil, "Percentage of static range")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.password = ProtoField.new("Password", "bme.bmefixedincome.orderentry.bmegate.v1.6.password", ftypes.STRING, nil, nil, nil, "User password")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.persistence = ProtoField.new("Persistence", "bme.bmefixedincome.orderentry.bmegate.v1.6.persistence", ftypes.STRING, nil, nil, nil, "Persistence type")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.persistence_2 = ProtoField.new("Persistence 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.persistence2", ftypes.STRING, nil, nil, nil, "Persistence type")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.post_deferral_publication_type = ProtoField.new("Post Deferral Publication Type", "bme.bmefixedincome.orderentry.bmegate.v1.6.postdeferralpublicationtype", ftypes.STRING, nil, nil, nil, "Post-deferral publication type")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.pre_trade_transparency_waiver = ProtoField.new("Pre Trade Transparency Waiver", "bme.bmefixedincome.orderentry.bmegate.v1.6.pretradetransparencywaiver", ftypes.STRING, nil, nil, nil, "Pre-trade transparency waiver")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.price = ProtoField.new("Price", "bme.bmefixedincome.orderentry.bmegate.v1.6.price", ftypes.DOUBLE, nil, nil, nil, "Limit price")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.price_2 = ProtoField.new("Price 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.price2", ftypes.DOUBLE, nil, nil, nil, "Limit price")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.price_type = ProtoField.new("Price Type", "bme.bmefixedincome.orderentry.bmegate.v1.6.pricetype", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.priority = ProtoField.new("Priority", "bme.bmefixedincome.orderentry.bmegate.v1.6.priority", ftypes.UINT32)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.priority_2 = ProtoField.new("Priority 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.priority2", ftypes.UINT32, nil, nil, nil, "Priority")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.protocol_version = ProtoField.new("Protocol Version", "bme.bmefixedincome.orderentry.bmegate.v1.6.protocolversion", ftypes.STRING, nil, nil, nil, "Identification of the binary protocol version")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.publish_date_and_time = ProtoField.new("Publish Date And Time", "bme.bmefixedincome.orderentry.bmegate.v1.6.publishdateandtime", ftypes.INT64, nil, nil, nil, "Publication Date and Time in nanoseconds since 1-jan- 1970 UTC")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.received_dept_id = ProtoField.new("Received Dept Id", "bme.bmefixedincome.orderentry.bmegate.v1.6.receiveddeptid", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.received_dept_id_2 = ProtoField.new("Received Dept Id 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.receiveddeptid2", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ref_msg_type = ProtoField.new("Ref Msg Type", "bme.bmefixedincome.orderentry.bmegate.v1.6.refmsgtype", ftypes.UINT8, nil, nil, nil, "Type of message responded to")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.reference_price = ProtoField.new("Reference Price", "bme.bmefixedincome.orderentry.bmegate.v1.6.referenceprice", ftypes.DOUBLE)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.request_id = ProtoField.new("Request Id", "bme.bmefixedincome.orderentry.bmegate.v1.6.requestid", ftypes.UINT32, nil, nil, nil, "Request ID (for application feedback)")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.request_id_2 = ProtoField.new("Request Id 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.requestid2", ftypes.UINT32, nil, nil, nil, "Request ID (for application feedback)")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.round_lot = ProtoField.new("Round Lot", "bme.bmefixedincome.orderentry.bmegate.v1.6.roundlot", ftypes.UINT32, nil, nil, nil, "Lot Size")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.secondary_exec_id = ProtoField.new("Secondary Exec Id", "bme.bmefixedincome.orderentry.bmegate.v1.6.secondaryexecid", ftypes.UINT32, nil, nil, nil, "History number")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.secondary_exec_id_2 = ProtoField.new("Secondary Exec Id 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.secondaryexecid2", ftypes.UINT32, nil, nil, nil, "History number")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "bme.bmefixedincome.orderentry.bmegate.v1.6.secondaryorderid", ftypes.UINT32, nil, nil, nil, "System Order Number")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.secondary_order_id_2 = ProtoField.new("Secondary Order Id 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.secondaryorderid2", ftypes.UINT32, nil, nil, nil, "System Order Number")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.security_code = ProtoField.new("Security Code", "bme.bmefixedincome.orderentry.bmegate.v1.6.securitycode", ftypes.UINT32, nil, nil, nil, "Instrument (or Book) code")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.security_description = ProtoField.new("Security Description", "bme.bmefixedincome.orderentry.bmegate.v1.6.securitydescription", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.security_group = ProtoField.new("Security Group", "bme.bmefixedincome.orderentry.bmegate.v1.6.securitygroup", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.security_name = ProtoField.new("Security Name", "bme.bmefixedincome.orderentry.bmegate.v1.6.securityname", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.security_status = ProtoField.new("Security Status", "bme.bmefixedincome.orderentry.bmegate.v1.6.securitystatus", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.security_trading_status = ProtoField.new("Security Trading Status", "bme.bmefixedincome.orderentry.bmegate.v1.6.securitytradingstatus", ftypes.UINT8)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.security_type = ProtoField.new("Security Type", "bme.bmefixedincome.orderentry.bmegate.v1.6.securitytype", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.sequence_number = ProtoField.new("Sequence Number", "bme.bmefixedincome.orderentry.bmegate.v1.6.sequencenumber", ftypes.UINT32, nil, nil, nil, "Message sequence number")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.sequence_number_to = ProtoField.new("Sequence Number To", "bme.bmefixedincome.orderentry.bmegate.v1.6.sequencenumberto", ftypes.UINT32, nil, nil, nil, "Actual sequence number corresponding to the Snapshot")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.session_date = ProtoField.new("Session Date", "bme.bmefixedincome.orderentry.bmegate.v1.6.sessiondate", ftypes.INT32)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.session_reject_reason = ProtoField.new("Session Reject Reason", "bme.bmefixedincome.orderentry.bmegate.v1.6.sessionrejectreason", ftypes.UINT8, nil, nil, nil, "Code indicating the rejection motive")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.settl_date = ProtoField.new("Settl Date", "bme.bmefixedincome.orderentry.bmegate.v1.6.settldate", ftypes.INT32, nil, nil, nil, "Settlement date")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.settl_date_2 = ProtoField.new("Settl Date 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.settldate2", ftypes.INT32, nil, nil, nil, "Settlement date of the second leg")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.settlement_system = ProtoField.new("Settlement System", "bme.bmefixedincome.orderentry.bmegate.v1.6.settlementsystem", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.side = ProtoField.new("Side", "bme.bmefixedincome.orderentry.bmegate.v1.6.side", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.software_name = ProtoField.new("Software Name", "bme.bmefixedincome.orderentry.bmegate.v1.6.softwarename", ftypes.STRING, nil, nil, nil, "Descriptive string of the software name used")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.spread_to_index = ProtoField.new("Spread To Index", "bme.bmefixedincome.orderentry.bmegate.v1.6.spreadtoindex", ftypes.DOUBLE)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.sst_ipost = ProtoField.new("Sst Ipost", "bme.bmefixedincome.orderentry.bmegate.v1.6.sstipost", ftypes.DOUBLE, nil, nil, nil, "SSTI posttransparency threshold")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.sst_ipre = ProtoField.new("Sst Ipre", "bme.bmefixedincome.orderentry.bmegate.v1.6.sstipre", ftypes.DOUBLE, nil, nil, nil, "SSTI pretransparency threshold")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.start_date = ProtoField.new("Start Date", "bme.bmefixedincome.orderentry.bmegate.v1.6.startdate", ftypes.INT32, nil, nil, nil, "Value date")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.static_range_type = ProtoField.new("Static Range Type", "bme.bmefixedincome.orderentry.bmegate.v1.6.staticrangetype", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.statistics_repeating_group = ProtoField.new("Statistics Repeating Group", "bme.bmefixedincome.orderentry.bmegate.v1.6.statisticsrepeatinggroup", ftypes.STRING, nil, nil, nil, "Repeating group of the Statistics message, one entry per data value, DataCount entries")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.status = ProtoField.new("Status", "bme.bmefixedincome.orderentry.bmegate.v1.6.status", ftypes.UINT8, nil, nil, nil, "Request accepted or rejected")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.strippable = ProtoField.new("Strippable", "bme.bmefixedincome.orderentry.bmegate.v1.6.strippable", ftypes.UINT8)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.sub_member = ProtoField.new("Sub Member", "bme.bmefixedincome.orderentry.bmegate.v1.6.submember", ftypes.STRING, nil, nil, nil, "Submember code")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.sub_member_2 = ProtoField.new("Sub Member 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.submember2", ftypes.STRING, nil, nil, nil, "Submember code")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.subscriptions = ProtoField.new("Subscriptions", "bme.bmefixedincome.orderentry.bmegate.v1.6.subscriptions", ftypes.UINT8, nil, nil, nil, "Bit mask: 0: Snapshot mode (only relevant in the Market and Order channel) 1: Public orders (only relevant in the Market & Order channel) 2: Public trades (only relevant in the Market & Order channel) 3: RFQ information (only relevant in the Market & Order channel) and Indications of Interest (relevant in the Market & Order channel and in the Order channel) 4: Security List (only relevant in the Order channel) 5: Trading Session Status and News (only relevant in the Order channel) 6: Security Status / Family Status (only relevant in the Order channel) 7: Statistics (only relevant in the Order channel)")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.symbol = ProtoField.new("Symbol", "bme.bmefixedincome.orderentry.bmegate.v1.6.symbol", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.symbol_isin = ProtoField.new("Symbol Isin", "bme.bmefixedincome.orderentry.bmegate.v1.6.symbolisin", ftypes.STRING, nil, nil, nil, "Instrument ISIN")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.test_production_ind = ProtoField.new("Test Production Ind", "bme.bmefixedincome.orderentry.bmegate.v1.6.testproductionind", ftypes.STRING, nil, nil, nil, "T: Test P: Production")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.text_c_58 = ProtoField.new("Text C 58", "bme.bmefixedincome.orderentry.bmegate.v1.6.textc58", ftypes.STRING, nil, nil, nil, "Explanation of rejection")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.text_c_65 = ProtoField.new("Text C 65", "bme.bmefixedincome.orderentry.bmegate.v1.6.textc65", ftypes.STRING, nil, nil, nil, "Explanation of rejection. When BusinessRejectReason = 31, the first two characters of this string will contain the specific sponsored access reject code as specified in \"Sponsored Access User Manual\"")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.time_in_force = ProtoField.new("Time In Force", "bme.bmefixedincome.orderentry.bmegate.v1.6.timeinforce", ftypes.STRING, nil, nil, nil, "GTD orders are not supported")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trad_ses_status = ProtoField.new("Trad Ses Status", "bme.bmefixedincome.orderentry.bmegate.v1.6.tradsesstatus", ftypes.UINT8, nil, nil, nil, "Trading session status")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trade_date = ProtoField.new("Trade Date", "bme.bmefixedincome.orderentry.bmegate.v1.6.tradedate", ftypes.INT64, nil, nil, nil, "Trade date and time")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trade_price_condition = ProtoField.new("Trade Price Condition", "bme.bmefixedincome.orderentry.bmegate.v1.6.tradepricecondition", ftypes.STRING, nil, nil, nil, "MMT 3.8")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trade_session_date = ProtoField.new("Trade Session Date", "bme.bmefixedincome.orderentry.bmegate.v1.6.tradesessiondate", ftypes.INT32)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trade_type = ProtoField.new("Trade Type", "bme.bmefixedincome.orderentry.bmegate.v1.6.tradetype", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trader = ProtoField.new("Trader", "bme.bmefixedincome.orderentry.bmegate.v1.6.trader", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trader_2 = ProtoField.new("Trader 2", "bme.bmefixedincome.orderentry.bmegate.v1.6.trader2", ftypes.STRING, nil, nil, nil, "Trader")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trading_obligation = ProtoField.new("Trading Obligation", "bme.bmefixedincome.orderentry.bmegate.v1.6.tradingobligation", ftypes.UINT8, nil, nil, nil, "Trading obligation. Indicates whether the security has to be traded in a regulated exchange")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trading_scope_b_1 = ProtoField.new("Trading Scope B 1", "bme.bmefixedincome.orderentry.bmegate.v1.6.tradingscopeb1", ftypes.UINT8, nil, nil, nil, "Trading Scope")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trading_session_id = ProtoField.new("Trading Session Id", "bme.bmefixedincome.orderentry.bmegate.v1.6.tradingsessionid", ftypes.UINT8, nil, nil, nil, "Trading mode")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "bme.bmefixedincome.orderentry.bmegate.v1.6.tradingsessionsubid", ftypes.UINT8, nil, nil, nil, "Session phase")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trading_unit = ProtoField.new("Trading Unit", "bme.bmefixedincome.orderentry.bmegate.v1.6.tradingunit", ftypes.UINT8, nil, nil, nil, "Trading unit ID in the central systems")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.transaction_category = ProtoField.new("Transaction Category", "bme.bmefixedincome.orderentry.bmegate.v1.6.transactioncategory", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.transaction_date_and_time = ProtoField.new("Transaction Date And Time", "bme.bmefixedincome.orderentry.bmegate.v1.6.transactiondateandtime", ftypes.INT64, nil, nil, nil, "Transaction Date and Time in nanoseconds since 1-jan-1970 UTC")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trd_match_id = ProtoField.new("Trd Match Id", "bme.bmefixedincome.orderentry.bmegate.v1.6.trdmatchid", ftypes.UINT32, nil, nil, nil, "System Trade Number")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.type_of_redemption = ProtoField.new("Type Of Redemption", "bme.bmefixedincome.orderentry.bmegate.v1.6.typeofredemption", ftypes.STRING)
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.username = ProtoField.new("Username", "bme.bmefixedincome.orderentry.bmegate.v1.6.username", ftypes.STRING, nil, nil, nil, "Identifier of the user as assigned by BME")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.volume_issued = ProtoField.new("Volume Issued", "bme.bmefixedincome.orderentry.bmegate.v1.6.volumeissued", ftypes.DOUBLE)

-- Bme BmeFixedIncome OrderEntry BmeGate 1.6 Framing
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.message = ProtoField.new("Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.message", ftypes.STRING, nil, nil, nil, "Bme BmeGate Message")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.message_header = ProtoField.new("Message Header", "bme.bmefixedincome.orderentry.bmegate.v1.6.messageheader", ftypes.STRING, nil, nil, nil, "What every message carries, in either direction: its length and its type. Section 2.1 gives a published message a third field, the sequence number that lets a listener continue an interrupted session without gaps and without repeated messages, and the message tables state it as the message's own first field - which is where it is declared, since a client's Logon, Replay Request and Logout do not carry one")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.packet = ProtoField.new("Packet", "bme.bmefixedincome.orderentry.bmegate.v1.6.packet", ftypes.STRING, nil, nil, nil, "A Bme binary feed carries no packet header of its own: section 2.1 states that every feed is a series of sequenced messages, each stating its own length, so a segment holds whole messages to its end")

-- Bme BmeFixedIncome OrderEntry 1.6 Application Messages
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.business_message_reject_message = ProtoField.new("Business Message Reject Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.businessmessagerejectmessage", ftypes.STRING, nil, nil, nil, "It may be sent by the server to inform about the rejection of a supported message that is syntactically correct in an unsupported situation")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.execution_private_information_1_leg_buy_order_entry_message = ProtoField.new("Execution Private Information 1 Leg Buy Order Entry Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.executionprivateinformation1legbuyorderentrymessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about a trade where the user is involved as Buyer. Shares the same layout as the next message")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.execution_private_information_1_leg_sell_order_entry_message = ProtoField.new("Execution Private Information 1 Leg Sell Order Entry Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.executionprivateinformation1legsellorderentrymessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about a trade where the user is involved as Seller")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.execution_private_information_2_legs_message = ProtoField.new("Execution Private Information 2 Legs Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.executionprivateinformation2legsmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about a trade where two orders of the user are involved both as Buyer and Seller")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.heartbeatmessage", ftypes.STRING, nil, nil, nil, "The Heartbeat message is used by the Server to indicate that the communication is active. In the Heartbeat message, the SequenceNumber of the previously received message will be repeated")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.indication_of_interest_message = ProtoField.new("Indication Of Interest Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.indicationofinterestmessage", ftypes.STRING, nil, nil, nil, "Used by the Server to notify an indication of interest on a specific instrument. This functionality is available in Fixed Income and Derivatives")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.logon_message = ProtoField.new("Logon Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.logonmessage", ftypes.STRING, nil, nil, nil, "The Logon message is used to start a session by the client application")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.logon_response_message = ProtoField.new("Logon Response Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.logonresponsemessage", ftypes.STRING, nil, nil, nil, "The Logon Response message is used by the Server to accept a new session. In this message the sequence number will always be 0")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.logout_message = ProtoField.new("Logout Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.logoutmessage", ftypes.BYTES, nil, nil, nil, "The Logout message is used by the client application to request the end of a session")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.logout_response_message = ProtoField.new("Logout Response Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.logoutresponsemessage", ftypes.STRING, nil, nil, nil, "The Logout message is used by the Server to notify the end of a session, whether it is solicited or unsolicited. It may also be the answer to a failed logon attempt (see Logon message)")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.mass_orderquote_cancellation_completion_message = ProtoField.new("Mass Orderquote Cancellation Completion Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.massorderquotecancellationcompletionmessage", ftypes.STRING, nil, nil, nil, "Message reporting the completion of a valid mass order cancellation request. More than one message may be sent for a single RequestID")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.mass_orderquote_cancellation_message = ProtoField.new("Mass Orderquote Cancellation Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.massorderquotecancellationmessage", ftypes.STRING, nil, nil, nil, "Message sent by the client to request the cancellation of multiple orders and or quotes, based on the specified selection criteria")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.mass_orderquote_cancellation_reject_message = ProtoField.new("Mass Orderquote Cancellation Reject Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.massorderquotecancellationrejectmessage", ftypes.STRING, nil, nil, nil, "Message reporting the rejection of a mass order cancellation request. More than one message may be sent for a single RequestID")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.network_status_message = ProtoField.new("Network Status Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.networkstatusmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server with information about the connectivity between the Server and the central systems. In the Network Status message, the SequenceNumber of the previously received message will be repeated")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.new_quote_message = ProtoField.new("New Quote Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.newquotemessage", ftypes.STRING, nil, nil, nil, "Message sent by the client application to create a new quote. A new quote by the same user on the same SecurityCode and with the same ClientDataID cancels the previous one")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.news_message = ProtoField.new("News Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.newsmessage", ftypes.STRING, nil, nil, nil, "Used by the Server to communicate a Market Surveillance or system-wide text message")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_and_quote_client_data_message = ProtoField.new("Order And Quote Client Data Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.orderandquoteclientdatamessage", ftypes.STRING, nil, nil, nil, "Sent by the client to set default attributes for subsequent orders and quotes. Please note that in Fixed Income it is possible to enter orders on behalf of other members (AccountMember), based on the corresponding brokerage permissions")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_and_quote_client_data_parameters_ack_nack_message = ProtoField.new("Order And Quote Client Data Parameters Ack Nack Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.orderandquoteclientdataparametersacknackmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to confirm an Order and Quote Client Data Parameters message")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_cancel_reject_message = ProtoField.new("Order Cancel Reject Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.ordercancelrejectmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about the rejection of a Simple order modification (MsgType = 0x47) or an Order cancellation request (MsgType = 0x46)")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_cancellation_market_member_message = ProtoField.new("Order Cancellation Market Member Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.ordercancellationmarketmembermessage", ftypes.STRING, nil, nil, nil, "Used by the Server to communicate information order cancellation. The same message is used in Full-Depth data feeds (for order cancellations of any user), in the Order Entry Server (for cancellations of user orders) and in the Market & Order Server (for order cancellations of any user)")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_cancellation_request_message = ProtoField.new("Order Cancellation Request Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.ordercancellationrequestmessage", ftypes.STRING, nil, nil, nil, "Message sent by the client to cancel an order. The field OrderID must contain a reference to the order that is to be cancelled")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.quote_cancellation_market_member_message = ProtoField.new("Quote Cancellation Market Member Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.quotecancellationmarketmembermessage", ftypes.STRING, nil, nil, nil, "Used by the Server to communicate information about quote cancellation. The same message is used in Full-Depth data feeds (for quote cancellations of any user), in the Order Entry Server (for cancellations of user quotes) and in the Market & Order Server (for quote cancellations of any user)")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.quote_cancellation_request_message = ProtoField.new("Quote Cancellation Request Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.quotecancellationrequestmessage", ftypes.STRING, nil, nil, nil, "Message sent by the client to cancel a quote")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.quote_modification_request_message = ProtoField.new("Quote Modification Request Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.quotemodificationrequestmessage", ftypes.STRING, nil, nil, nil, "Message sent by the client to modify a quote. Field ClientDataID is required in RF to identify a quote")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.quote_status_message = ProtoField.new("Quote Status Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.quotestatusmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about the status of a Quote")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.reject_message = ProtoField.new("Reject Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.rejectmessage", ftypes.STRING, nil, nil, nil, "It may be sent by the server to inform about the rejection of an unsupported or syntactically incorrect message. In the Reject message, the SequenceNumber of the previously received message will be repeated")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.security_list_cancellation_report_message = ProtoField.new("Security List Cancellation Report Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.securitylistcancellationreportmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server for cancelling previously defined securities")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.security_list_message = ProtoField.new("Security List Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.securitylistmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server to provide the definition of one security. It shares the same layout as the Security List Update Report message, but with a different Message Type")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.security_list_update_report_message = ProtoField.new("Security List Update Report Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.securitylistupdatereportmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server for reporting updates, during the session, to the security definition")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.security_status_message = ProtoField.new("Security Status Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.securitystatusmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server to inform on the status of one security")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.simple_new_order_message = ProtoField.new("Simple New Order Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.simplenewordermessage", ftypes.STRING, nil, nil, nil, "Message sent by the client to enter a new order")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.simple_new_order_with_client_data_message = ProtoField.new("Simple New Order With Client Data Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.simpleneworderwithclientdatamessage", ftypes.STRING, nil, nil, nil, "Message sent by the client to enter a new order and, at the same time, the values for the Client Data parmeters. Note that no ClientDataID may be assigned")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.simple_order_modification_message = ProtoField.new("Simple Order Modification Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.simpleordermodificationmessage", ftypes.STRING, nil, nil, nil, "Message sent by the client to modify an order. The field OrderID must contain the client reference of the order that is to be modified")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.simple_order_modification_with_client_data_message = ProtoField.new("Simple Order Modification With Client Data Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.simpleordermodificationwithclientdatamessage", ftypes.STRING, nil, nil, nil, "Message sent by the client to modify an order. The field OrderID must contain the client reference of the order that is to be modified")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.simple_order_status_message = ProtoField.new("Simple Order Status Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.simpleorderstatusmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about the order status. Please note that the first fields of this message are the same as the ones for Order Market Pre- Transparency Information (Msg Type = 0x03) (see section 5.4.12)")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.statistics_message = ProtoField.new("Statistics Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.statisticsmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server to inform about closing prices and other statistics")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trade_trade_amendment_or_cancellation_1_leg_buy_private_information_message = ProtoField.new("Trade Trade Amendment Or Cancellation 1 Leg Buy Private Information Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.tradetradeamendmentorcancellation1legbuyprivateinformationmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about a trade produced due to any reason other than order matching, also to inform about trades produced due to order matching in a Dark pool. The user is involved in the trade as Buyer. It is also sent to inform about the amendment or cancellation of whatever origin trade where the user is involved as Buyer. Shares the same layout as the next message")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trade_trade_amendment_or_cancellation_1_leg_sell_private_information_message = ProtoField.new("Trade Trade Amendment Or Cancellation 1 Leg Sell Private Information Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.tradetradeamendmentorcancellation1legsellprivateinformationmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about a trade produced due to any reason other than order matching, also to inform about trades produced due to order matching in a Dark pool. The user is involved in the trade as Seller")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trade_trade_amendment_or_cancellation_2_legs_private_information_message = ProtoField.new("Trade Trade Amendment Or Cancellation 2 Legs Private Information Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.tradetradeamendmentorcancellation2legsprivateinformationmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about a trade produced due to any reason other than order matching, also to inform about trades produced due to order matching in a Dark pool. The user is involved in the trade both as Buyer and Seller")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "bme.bmefixedincome.orderentry.bmegate.v1.6.tradingsessionstatusmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about the session status in each Trading Mode")

-- Bme BmeFixedIncome OrderEntry BmeGate 1.6 Generated Fields
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.statistics_repeating_group_index = ProtoField.new("Statistics Repeating Group Index", "bme.bmefixedincome.orderentry.bmegate.v1.6.statisticsrepeatinggroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Bme BmeFixedIncome OrderEntry BmeGate 1.6 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Bme BmeFixedIncome OrderEntry BmeGate 1.6 Show Options
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_bme_bmefixedincome_orderentry_bmegate_v1_6.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_bme_bmefixedincome_orderentry_bmegate_v1_6.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_bme_bmefixedincome_orderentry_bmegate_v1_6.prefs.show_application_messages then
    show.application_messages = omi_bme_bmefixedincome_orderentry_bmegate_v1_6.prefs.show_application_messages
  end
  if show.headers ~= omi_bme_bmefixedincome_orderentry_bmegate_v1_6.prefs.show_headers then
    show.headers = omi_bme_bmefixedincome_orderentry_bmegate_v1_6.prefs.show_headers
  end
  if show.structs ~= omi_bme_bmefixedincome_orderentry_bmegate_v1_6.prefs.show_structs then
    show.structs = omi_bme_bmefixedincome_orderentry_bmegate_v1_6.prefs.show_structs
  end
  if show.indexes ~= omi_bme_bmefixedincome_orderentry_bmegate_v1_6.prefs.show_indexes then
    show.indexes = omi_bme_bmefixedincome_orderentry_bmegate_v1_6.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Bme BmeFixedIncome OrderEntry BmeGate 1.6 Fields
-----------------------------------------------------------------------

-- Account
bme_bmefixedincome_orderentry_bmegate_v1_6.account = {}

-- Size: Account
bme_bmefixedincome_orderentry_bmegate_v1_6.account.size = 5

-- Display: Account
bme_bmefixedincome_orderentry_bmegate_v1_6.account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
bme_bmefixedincome_orderentry_bmegate_v1_6.account.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.account.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.account, range, value, display)

  return offset + length, value
end

-- Account 2
bme_bmefixedincome_orderentry_bmegate_v1_6.account_2 = {}

-- Size: Account 2
bme_bmefixedincome_orderentry_bmegate_v1_6.account_2.size = 5

-- Display: Account 2
bme_bmefixedincome_orderentry_bmegate_v1_6.account_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account 2: No Value"
  end

  return "Account 2: "..value
end

-- Dissect: Account 2
bme_bmefixedincome_orderentry_bmegate_v1_6.account_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.account_2.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.account_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.account_2, range, value, display)

  return offset + length, value
end

-- Account Bolsa
bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa = {}

-- Size: Account Bolsa
bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa.size = 16

-- Display: Account Bolsa
bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account Bolsa: No Value"
  end

  return "Account Bolsa: "..value
end

-- Dissect: Account Bolsa
bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.account_bolsa, range, value, display)

  return offset + length, value
end

-- Account Bolsa 2
bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa_2 = {}

-- Size: Account Bolsa 2
bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa_2.size = 16

-- Display: Account Bolsa 2
bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account Bolsa 2: No Value"
  end

  return "Account Bolsa 2: "..value
end

-- Dissect: Account Bolsa 2
bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa_2.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.account_bolsa_2, range, value, display)

  return offset + length, value
end

-- Account Member
bme_bmefixedincome_orderentry_bmegate_v1_6.account_member = {}

-- Size: Account Member
bme_bmefixedincome_orderentry_bmegate_v1_6.account_member.size = 4

-- Display: Account Member
bme_bmefixedincome_orderentry_bmegate_v1_6.account_member.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account Member: No Value"
  end

  return "Account Member: "..value
end

-- Dissect: Account Member
bme_bmefixedincome_orderentry_bmegate_v1_6.account_member.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.account_member.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.account_member.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.account_member, range, value, display)

  return offset + length, value
end

-- Account Member 2
bme_bmefixedincome_orderentry_bmegate_v1_6.account_member_2 = {}

-- Size: Account Member 2
bme_bmefixedincome_orderentry_bmegate_v1_6.account_member_2.size = 4

-- Display: Account Member 2
bme_bmefixedincome_orderentry_bmegate_v1_6.account_member_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account Member 2: No Value"
  end

  return "Account Member 2: "..value
end

-- Dissect: Account Member 2
bme_bmefixedincome_orderentry_bmegate_v1_6.account_member_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.account_member_2.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.account_member_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.account_member_2, range, value, display)

  return offset + length, value
end

-- Accrued Interest Amt
bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_amt = {}

-- Size: Accrued Interest Amt
bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_amt.size = 8

-- Display: Accrued Interest Amt
bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_amt.display = function(value)
  return "Accrued Interest Amt: "..value
end

-- Translate: Accrued Interest Amt
bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_amt.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Accrued Interest Amt
bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_amt.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_amt.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_amt.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_amt.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.accrued_interest_amt, range, value, display)

  return offset + length, value
end

-- Accrued Interest Calculation Procedure
bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_calculation_procedure = {}

-- Size: Accrued Interest Calculation Procedure
bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_calculation_procedure.size = 1

-- Display: Accrued Interest Calculation Procedure
bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_calculation_procedure.display = function(value)
  if value == "1" then
    return "Accrued Interest Calculation Procedure: Real Base (1)"
  end

  return "Accrued Interest Calculation Procedure: Unknown("..value..")"
end

-- Dissect: Accrued Interest Calculation Procedure
bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_calculation_procedure.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_calculation_procedure.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_calculation_procedure.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.accrued_interest_calculation_procedure, range, value, display)

  return offset + length, value
end

-- Accrued Interest Rate P 8
bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_p_8 = {}

-- Size: Accrued Interest Rate P 8
bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_p_8.size = 8

-- Display: Accrued Interest Rate P 8
bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_p_8.display = function(value)
  return "Accrued Interest Rate P 8: "..value
end

-- Translate: Accrued Interest Rate P 8
bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_p_8.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Accrued Interest Rate P 8
bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_p_8.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_p_8.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_p_8.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_p_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.accrued_interest_rate_p_8, range, value, display)

  return offset + length, value
end

-- Accrued Interest Rate R 8
bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_r_8 = {}

-- Size: Accrued Interest Rate R 8
bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_r_8.size = 8

-- Display: Accrued Interest Rate R 8
bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_r_8.display = function(value)
  return "Accrued Interest Rate R 8: "..value
end

-- Translate: Accrued Interest Rate R 8
bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_r_8.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Accrued Interest Rate R 8
bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_r_8.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_r_8.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_r_8.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_r_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.accrued_interest_rate_r_8, range, value, display)

  return offset + length, value
end

-- Admission Requested By Issuer
bme_bmefixedincome_orderentry_bmegate_v1_6.admission_requested_by_issuer = {}

-- Size: Admission Requested By Issuer
bme_bmefixedincome_orderentry_bmegate_v1_6.admission_requested_by_issuer.size = 1

-- Display: Admission Requested By Issuer
bme_bmefixedincome_orderentry_bmegate_v1_6.admission_requested_by_issuer.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.admission_requested_by_issuer.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.admission_requested_by_issuer.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.admission_requested_by_issuer.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.admission_requested_by_issuer, range, value, display)

  return offset + length, value
end

-- Aggressor Indicator
bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator = {}

-- Size: Aggressor Indicator
bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator.size = 1

-- Display: Aggressor Indicator
bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator.display = function(value)
  if value == "P" then
    return "Aggressor Indicator: Passive (P)"
  end
  if value == "A" then
    return "Aggressor Indicator: Aggresive (A)"
  end
  if value == " " then
    return "Aggressor Indicator: Not Applicable (<whitespace>)"
  end

  return "Aggressor Indicator: Unknown("..value..")"
end

-- Dissect: Aggressor Indicator
bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.aggressor_indicator, range, value, display)

  return offset + length, value
end

-- Aggressor Indicator 2
bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator_2 = {}

-- Size: Aggressor Indicator 2
bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator_2.size = 1

-- Display: Aggressor Indicator 2
bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator_2.display = function(value)
  if value == "P" then
    return "Aggressor Indicator 2: Passive (P)"
  end
  if value == "A" then
    return "Aggressor Indicator 2: Aggressive (A)"
  end
  if value == " " then
    return "Aggressor Indicator 2: Not Applicable (<whitespace>)"
  end

  return "Aggressor Indicator 2: Unknown("..value..")"
end

-- Dissect: Aggressor Indicator 2
bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator_2.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.aggressor_indicator_2, range, value, display)

  return offset + length, value
end

-- Algo Flag
bme_bmefixedincome_orderentry_bmegate_v1_6.algo_flag = {}

-- Size: Algo Flag
bme_bmefixedincome_orderentry_bmegate_v1_6.algo_flag.size = 1

-- Display: Algo Flag
bme_bmefixedincome_orderentry_bmegate_v1_6.algo_flag.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.algo_flag.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.algo_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.algo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.algo_flag, range, value, display)

  return offset + length, value
end

-- Algorithmic Trade Indicator
bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator = {}

-- Size: Algorithmic Trade Indicator
bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator.size = 1

-- Display: Algorithmic Trade Indicator
bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator.display = function(value)
  if value == 0 then
    return "Algorithmic Trade Indicator: False (0)"
  end
  if value == 1 then
    return "Algorithmic Trade Indicator: True (1)"
  end
  if value == 255 then
    return "Algorithmic Trade Indicator: No Value"
  end

  return "Algorithmic Trade Indicator: Unknown("..value..")"
end

-- Dissect: Algorithmic Trade Indicator
bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.algorithmic_trade_indicator, range, value, display)

  return offset + length, value
end

-- Algorithmic Trade Indicator 2
bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator_2 = {}

-- Size: Algorithmic Trade Indicator 2
bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator_2.size = 1

-- Display: Algorithmic Trade Indicator 2
bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator_2.display = function(value)
  if value == 0 then
    return "Algorithmic Trade Indicator 2: False (0)"
  end
  if value == 1 then
    return "Algorithmic Trade Indicator 2: True (1)"
  end
  if value == 255 then
    return "Algorithmic Trade Indicator 2: No Value"
  end

  return "Algorithmic Trade Indicator 2: Unknown("..value..")"
end

-- Dissect: Algorithmic Trade Indicator 2
bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.algorithmic_trade_indicator_2, range, value, display)

  return offset + length, value
end

-- Alive Volume
bme_bmefixedincome_orderentry_bmegate_v1_6.alive_volume = {}

-- Size: Alive Volume
bme_bmefixedincome_orderentry_bmegate_v1_6.alive_volume.size = 8

-- Display: Alive Volume
bme_bmefixedincome_orderentry_bmegate_v1_6.alive_volume.display = function(value)
  return "Alive Volume: "..value
end

-- Translate: Alive Volume
bme_bmefixedincome_orderentry_bmegate_v1_6.alive_volume.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Alive Volume
bme_bmefixedincome_orderentry_bmegate_v1_6.alive_volume.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.alive_volume.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.alive_volume.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.alive_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.alive_volume, range, value, display)

  return offset + length, value
end

-- Alt Last Px
bme_bmefixedincome_orderentry_bmegate_v1_6.alt_last_px = {}

-- Size: Alt Last Px
bme_bmefixedincome_orderentry_bmegate_v1_6.alt_last_px.size = 8

-- Display: Alt Last Px
bme_bmefixedincome_orderentry_bmegate_v1_6.alt_last_px.display = function(value)
  return "Alt Last Px: "..value
end

-- Translate: Alt Last Px
bme_bmefixedincome_orderentry_bmegate_v1_6.alt_last_px.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Alt Last Px
bme_bmefixedincome_orderentry_bmegate_v1_6.alt_last_px.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_last_px.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.alt_last_px, range, value, display)

  return offset + length, value
end

-- Alt Price
bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price = {}

-- Size: Alt Price
bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price.size = 8

-- Display: Alt Price
bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price.display = function(value)
  return "Alt Price: "..value
end

-- Translate: Alt Price
bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Alt Price
bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.alt_price, range, value, display)

  return offset + length, value
end

-- Alt Price 2
bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price_2 = {}

-- Size: Alt Price 2
bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price_2.size = 8

-- Display: Alt Price 2
bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price_2.display = function(value)
  return "Alt Price 2: "..value
end

-- Translate: Alt Price 2
bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price_2.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Alt Price 2
bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price_2.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price_2.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.alt_price_2, range, value, display)

  return offset + length, value
end

-- Amended Trade Date
bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_date = {}

-- Size: Amended Trade Date
bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_date.size = 4

-- Display: Amended Trade Date
bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_date.display = function(value)
  return string.format("Amended Trade Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Amended Trade Date
bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.amended_trade_date, range, value, display)

  return offset + length, value
end

-- Amended Trade Type
bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_type = {}

-- Size: Amended Trade Type
bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_type.size = 1

-- Display: Amended Trade Type
bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_type.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.amended_trade_type, range, value, display)

  return offset + length, value
end

-- Ask Px 1
bme_bmefixedincome_orderentry_bmegate_v1_6.ask_px_1 = {}

-- Size: Ask Px 1
bme_bmefixedincome_orderentry_bmegate_v1_6.ask_px_1.size = 8

-- Display: Ask Px 1
bme_bmefixedincome_orderentry_bmegate_v1_6.ask_px_1.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Ask Px 1: No Value"
  end

  return "Ask Px 1: "..value
end

-- Translate: Ask Px 1
bme_bmefixedincome_orderentry_bmegate_v1_6.ask_px_1.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Ask Px 1
bme_bmefixedincome_orderentry_bmegate_v1_6.ask_px_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.ask_px_1.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.ask_px_1.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.ask_px_1.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ask_px_1, range, value, display)

  return offset + length, value
end

-- Ask Size 1
bme_bmefixedincome_orderentry_bmegate_v1_6.ask_size_1 = {}

-- Size: Ask Size 1
bme_bmefixedincome_orderentry_bmegate_v1_6.ask_size_1.size = 4

-- Display: Ask Size 1
bme_bmefixedincome_orderentry_bmegate_v1_6.ask_size_1.display = function(value)
  return "Ask Size 1: "..value
end

-- Dissect: Ask Size 1
bme_bmefixedincome_orderentry_bmegate_v1_6.ask_size_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.ask_size_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.ask_size_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ask_size_1, range, value, display)

  return offset + length, value
end

-- Benchmark
bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark = {}

-- Size: Benchmark
bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark.size = 1

-- Display: Benchmark
bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark.display = function(value)
  if value == 0 then
    return "Benchmark: False (0)"
  end
  if value == 1 then
    return "Benchmark: True (1)"
  end
  if value == 255 then
    return "Benchmark: No Value"
  end

  return "Benchmark: Unknown("..value..")"
end

-- Dissect: Benchmark
bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.benchmark, range, value, display)

  return offset + length, value
end

-- Benchmark Curve Points Units
bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_curve_points_units = {}

-- Size: Benchmark Curve Points Units
bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_curve_points_units.size = 4

-- Display: Benchmark Curve Points Units
bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_curve_points_units.display = function(value)
  if value == "DAYS" then
    return "Benchmark Curve Points Units: Days (DAYS)"
  end
  if value == "WEEK" then
    return "Benchmark Curve Points Units: Week (WEEK)"
  end
  if value == "MNTH" then
    return "Benchmark Curve Points Units: Month (MNTH)"
  end
  if value == "YEAR" then
    return "Benchmark Curve Points Units: Year (YEAR)"
  end

  return "Benchmark Curve Points Units: Unknown("..value..")"
end

-- Dissect: Benchmark Curve Points Units
bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_curve_points_units.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_curve_points_units.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_curve_points_units.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.benchmark_curve_points_units, range, value, display)

  return offset + length, value
end

-- Benchmark Curve Points Value
bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_curve_points_value = {}

-- Size: Benchmark Curve Points Value
bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_curve_points_value.size = 1

-- Display: Benchmark Curve Points Value
bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_curve_points_value.display = function(value)
  return "Benchmark Curve Points Value: "..value
end

-- Dissect: Benchmark Curve Points Value
bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_curve_points_value.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_curve_points_value.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_curve_points_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.benchmark_curve_points_value, range, value, display)

  return offset + length, value
end

-- Benchmark Security Id
bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_security_id = {}

-- Size: Benchmark Security Id
bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_security_id.size = 25

-- Display: Benchmark Security Id
bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_security_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Benchmark Security Id: No Value"
  end

  return "Benchmark Security Id: "..value
end

-- Dissect: Benchmark Security Id
bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_security_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_security_id.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.benchmark_security_id, range, value, display)

  return offset + length, value
end

-- Bencrfpt Flag
bme_bmefixedincome_orderentry_bmegate_v1_6.bencrfpt_flag = {}

-- Size: Bencrfpt Flag
bme_bmefixedincome_orderentry_bmegate_v1_6.bencrfpt_flag.size = 1

-- Display: Bencrfpt Flag
bme_bmefixedincome_orderentry_bmegate_v1_6.bencrfpt_flag.display = function(value)
  if value == " " then
    return "Bencrfpt Flag: Normal Trade (<whitespace>)"
  end
  if value == "6" then
    return "Bencrfpt Flag: Benchmark Trade Benc (6)"
  end

  return "Bencrfpt Flag: Unknown("..value..")"
end

-- Dissect: Bencrfpt Flag
bme_bmefixedincome_orderentry_bmegate_v1_6.bencrfpt_flag.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.bencrfpt_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.bencrfpt_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.bencrfpt_flag, range, value, display)

  return offset + length, value
end

-- Bid Px 1
bme_bmefixedincome_orderentry_bmegate_v1_6.bid_px_1 = {}

-- Size: Bid Px 1
bme_bmefixedincome_orderentry_bmegate_v1_6.bid_px_1.size = 8

-- Display: Bid Px 1
bme_bmefixedincome_orderentry_bmegate_v1_6.bid_px_1.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Bid Px 1: No Value"
  end

  return "Bid Px 1: "..value
end

-- Translate: Bid Px 1
bme_bmefixedincome_orderentry_bmegate_v1_6.bid_px_1.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Bid Px 1
bme_bmefixedincome_orderentry_bmegate_v1_6.bid_px_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.bid_px_1.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.bid_px_1.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.bid_px_1.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.bid_px_1, range, value, display)

  return offset + length, value
end

-- Bid Size 1
bme_bmefixedincome_orderentry_bmegate_v1_6.bid_size_1 = {}

-- Size: Bid Size 1
bme_bmefixedincome_orderentry_bmegate_v1_6.bid_size_1.size = 4

-- Display: Bid Size 1
bme_bmefixedincome_orderentry_bmegate_v1_6.bid_size_1.display = function(value)
  return "Bid Size 1: "..value
end

-- Dissect: Bid Size 1
bme_bmefixedincome_orderentry_bmegate_v1_6.bid_size_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.bid_size_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.bid_size_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.bid_size_1, range, value, display)

  return offset + length, value
end

-- Block Static Range
bme_bmefixedincome_orderentry_bmegate_v1_6.block_static_range = {}

-- Size: Block Static Range
bme_bmefixedincome_orderentry_bmegate_v1_6.block_static_range.size = 8

-- Display: Block Static Range
bme_bmefixedincome_orderentry_bmegate_v1_6.block_static_range.display = function(value)
  return "Block Static Range: "..value
end

-- Translate: Block Static Range
bme_bmefixedincome_orderentry_bmegate_v1_6.block_static_range.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Block Static Range
bme_bmefixedincome_orderentry_bmegate_v1_6.block_static_range.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.block_static_range.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.block_static_range.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.block_static_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.block_static_range, range, value, display)

  return offset + length, value
end

-- Bond Seniority
bme_bmefixedincome_orderentry_bmegate_v1_6.bond_seniority = {}

-- Size: Bond Seniority
bme_bmefixedincome_orderentry_bmegate_v1_6.bond_seniority.size = 4

-- Display: Bond Seniority
bme_bmefixedincome_orderentry_bmegate_v1_6.bond_seniority.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.bond_seniority.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.bond_seniority.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.bond_seniority.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.bond_seniority, range, value, display)

  return offset + length, value
end

-- Broker Text
bme_bmefixedincome_orderentry_bmegate_v1_6.broker_text = {}

-- Size: Broker Text
bme_bmefixedincome_orderentry_bmegate_v1_6.broker_text.size = 15

-- Display: Broker Text
bme_bmefixedincome_orderentry_bmegate_v1_6.broker_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Broker Text: No Value"
  end

  return "Broker Text: "..value
end

-- Dissect: Broker Text
bme_bmefixedincome_orderentry_bmegate_v1_6.broker_text.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.broker_text.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.broker_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.broker_text, range, value, display)

  return offset + length, value
end

-- Broker Trader
bme_bmefixedincome_orderentry_bmegate_v1_6.broker_trader = {}

-- Size: Broker Trader
bme_bmefixedincome_orderentry_bmegate_v1_6.broker_trader.size = 3

-- Display: Broker Trader
bme_bmefixedincome_orderentry_bmegate_v1_6.broker_trader.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Broker Trader: No Value"
  end

  return "Broker Trader: "..value
end

-- Dissect: Broker Trader
bme_bmefixedincome_orderentry_bmegate_v1_6.broker_trader.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.broker_trader.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.broker_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.broker_trader, range, value, display)

  return offset + length, value
end

-- Business Reject Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.business_reject_reason = {}

-- Size: Business Reject Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.business_reject_reason.size = 1

-- Display: Business Reject Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.business_reject_reason.display = function(value)
  if value == 0 then
    return "Business Reject Reason: Other (0)"
  end
  if value == 3 then
    return "Business Reject Reason: Unsupported Message Type (3)"
  end
  if value == 30 then
    return "Business Reject Reason: Invalid Client Data Id (30)"
  end
  if value == 31 then
    return "Business Reject Reason: Sponsored Access (31)"
  end
  if value == 32 then
    return "Business Reject Reason: Quote Operation Rejected (32)"
  end
  if value == 33 then
    return "Business Reject Reason: Invalid Security (33)"
  end

  return "Business Reject Reason: Unknown("..value..")"
end

-- Dissect: Business Reject Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.business_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.business_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.business_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.business_reject_reason, range, value, display)

  return offset + length, value
end

-- Calculation Method
bme_bmefixedincome_orderentry_bmegate_v1_6.calculation_method = {}

-- Size: Calculation Method
bme_bmefixedincome_orderentry_bmegate_v1_6.calculation_method.size = 1

-- Display: Calculation Method
bme_bmefixedincome_orderentry_bmegate_v1_6.calculation_method.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.calculation_method.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.calculation_method.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.calculation_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.calculation_method, range, value, display)

  return offset + length, value
end

-- Cancellation Type
bme_bmefixedincome_orderentry_bmegate_v1_6.cancellation_type = {}

-- Size: Cancellation Type
bme_bmefixedincome_orderentry_bmegate_v1_6.cancellation_type.size = 1

-- Display: Cancellation Type
bme_bmefixedincome_orderentry_bmegate_v1_6.cancellation_type.display = function(value)
  if value == "S" then
    return "Cancellation Type: Standard (S)"
  end
  if value == "P" then
    return "Cancellation Type: Panic (P)"
  end

  return "Cancellation Type: Unknown("..value..")"
end

-- Dissect: Cancellation Type
bme_bmefixedincome_orderentry_bmegate_v1_6.cancellation_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.cancellation_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.cancellation_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.cancellation_type, range, value, display)

  return offset + length, value
end

-- Ccp Code
bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code = {}

-- Size: Ccp Code
bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code.size = 1

-- Display: Ccp Code
bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code.display = function(value)
  if value == "1" then
    return "Ccp Code: Bme Clearing… Others To Be Defined (1)"
  end
  if value == 0 then
    return "Ccp Code: Not Applicable"
  end

  return "Ccp Code: Unknown("..value..")"
end

-- Dissect: Ccp Code
bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ccp_code, range, value, display)

  return offset + length, value
end

-- Ccp Code 2
bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code_2 = {}

-- Size: Ccp Code 2
bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code_2.size = 1

-- Display: Ccp Code 2
bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code_2.display = function(value)
  if value == "1" then
    return "Ccp Code 2: Bme Clearing… Others To Be Defined (1)"
  end
  if value == 0 then
    return "Ccp Code 2: Not Applicable"
  end

  return "Ccp Code 2: Unknown("..value..")"
end

-- Dissect: Ccp Code 2
bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code_2.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ccp_code_2, range, value, display)

  return offset + length, value
end

-- Cfi Code
bme_bmefixedincome_orderentry_bmegate_v1_6.cfi_code = {}

-- Size: Cfi Code
bme_bmefixedincome_orderentry_bmegate_v1_6.cfi_code.size = 6

-- Display: Cfi Code
bme_bmefixedincome_orderentry_bmegate_v1_6.cfi_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cfi Code: No Value"
  end

  return "Cfi Code: "..value
end

-- Dissect: Cfi Code
bme_bmefixedincome_orderentry_bmegate_v1_6.cfi_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.cfi_code.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.cfi_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Client Data Id
bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id = {}

-- Size: Client Data Id
bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.size = 2

-- Display: Client Data Id
bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Client Data Id: No Value"
  end

  return "Client Data Id: "..value
end

-- Dissect: Client Data Id
bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.client_data_id, range, value, display)

  return offset + length, value
end

-- Client Data Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id_2 = {}

-- Size: Client Data Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id_2.size = 2

-- Display: Client Data Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id_2.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Client Data Id 2: No Value"
  end

  return "Client Data Id 2: "..value
end

-- Dissect: Client Data Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.client_data_id_2, range, value, display)

  return offset + length, value
end

-- Client Data Reference
bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_reference = {}

-- Size: Client Data Reference
bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_reference.size = 15

-- Display: Client Data Reference
bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_reference.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Client Data Reference: No Value"
  end

  return "Client Data Reference: "..value
end

-- Dissect: Client Data Reference
bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_reference.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_reference.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.client_data_reference, range, value, display)

  return offset + length, value
end

-- Client Id
bme_bmefixedincome_orderentry_bmegate_v1_6.client_id = {}

-- Size: Client Id
bme_bmefixedincome_orderentry_bmegate_v1_6.client_id.size = 4

-- Display: Client Id
bme_bmefixedincome_orderentry_bmegate_v1_6.client_id.display = function(value)
  return "Client Id: "..value
end

-- Dissect: Client Id
bme_bmefixedincome_orderentry_bmegate_v1_6.client_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.client_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.client_id, range, value, display)

  return offset + length, value
end

-- Client Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.client_id_2 = {}

-- Size: Client Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.client_id_2.size = 4

-- Display: Client Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.client_id_2.display = function(value)
  return "Client Id 2: "..value
end

-- Dissect: Client Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.client_id_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.client_id_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.client_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.client_id_2, range, value, display)

  return offset + length, value
end

-- Contract Multiplier
bme_bmefixedincome_orderentry_bmegate_v1_6.contract_multiplier = {}

-- Size: Contract Multiplier
bme_bmefixedincome_orderentry_bmegate_v1_6.contract_multiplier.size = 8

-- Display: Contract Multiplier
bme_bmefixedincome_orderentry_bmegate_v1_6.contract_multiplier.display = function(value)
  return "Contract Multiplier: "..value
end

-- Translate: Contract Multiplier
bme_bmefixedincome_orderentry_bmegate_v1_6.contract_multiplier.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Contract Multiplier
bme_bmefixedincome_orderentry_bmegate_v1_6.contract_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.contract_multiplier.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.contract_multiplier.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.contract_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Coupon Payment Date
bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_payment_date = {}

-- Size: Coupon Payment Date
bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_payment_date.size = 4

-- Display: Coupon Payment Date
bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_payment_date.display = function(value)
  return string.format("Coupon Payment Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Coupon Payment Date
bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_payment_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_payment_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_payment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.coupon_payment_date, range, value, display)

  return offset + length, value
end

-- Coupon Periodicity
bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_periodicity = {}

-- Size: Coupon Periodicity
bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_periodicity.size = 1

-- Display: Coupon Periodicity
bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_periodicity.display = function(value)
  return "Coupon Periodicity: "..value
end

-- Dissect: Coupon Periodicity
bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_periodicity.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_periodicity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_periodicity.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.coupon_periodicity, range, value, display)

  return offset + length, value
end

-- Coupon Quotation
bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_quotation = {}

-- Size: Coupon Quotation
bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_quotation.size = 1

-- Display: Coupon Quotation
bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_quotation.display = function(value)
  if value == 0 then
    return "Coupon Quotation: False (0)"
  end
  if value == 1 then
    return "Coupon Quotation: True (1)"
  end
  if value == 255 then
    return "Coupon Quotation: No Value"
  end

  return "Coupon Quotation: Unknown("..value..")"
end

-- Dissect: Coupon Quotation
bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_quotation.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_quotation.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_quotation.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.coupon_quotation, range, value, display)

  return offset + length, value
end

-- Coupon Rate
bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_rate = {}

-- Size: Coupon Rate
bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_rate.size = 8

-- Display: Coupon Rate
bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_rate.display = function(value)
  return "Coupon Rate: "..value
end

-- Translate: Coupon Rate
bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_rate.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Coupon Rate
bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_rate.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_rate.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_rate.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.coupon_rate, range, value, display)

  return offset + length, value
end

-- Coupon Type
bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_type = {}

-- Size: Coupon Type
bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_type.size = 1

-- Display: Coupon Type
bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_type.display = function(value)
  if value == "F" then
    return "Coupon Type: Fixed (F)"
  end
  if value == "V" then
    return "Coupon Type: Variable (V)"
  end
  if value == " " then
    return "Coupon Type: Not Applicable (<whitespace>)"
  end

  return "Coupon Type: Unknown("..value..")"
end

-- Dissect: Coupon Type
bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.coupon_type, range, value, display)

  return offset + length, value
end

-- Cross Id
bme_bmefixedincome_orderentry_bmegate_v1_6.cross_id = {}

-- Size: Cross Id
bme_bmefixedincome_orderentry_bmegate_v1_6.cross_id.size = 4

-- Display: Cross Id
bme_bmefixedincome_orderentry_bmegate_v1_6.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
bme_bmefixedincome_orderentry_bmegate_v1_6.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.cross_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Cross Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.cross_id_2 = {}

-- Size: Cross Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.cross_id_2.size = 4

-- Display: Cross Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.cross_id_2.display = function(value)
  return "Cross Id 2: "..value
end

-- Dissect: Cross Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.cross_id_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.cross_id_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.cross_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.cross_id_2, range, value, display)

  return offset + length, value
end

-- Currency
bme_bmefixedincome_orderentry_bmegate_v1_6.currency = {}

-- Size: Currency
bme_bmefixedincome_orderentry_bmegate_v1_6.currency.size = 3

-- Display: Currency
bme_bmefixedincome_orderentry_bmegate_v1_6.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
bme_bmefixedincome_orderentry_bmegate_v1_6.currency.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.currency.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.currency, range, value, display)

  return offset + length, value
end

-- Cxl Rej Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.cxl_rej_reason = {}

-- Size: Cxl Rej Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.cxl_rej_reason.size = 1

-- Display: Cxl Rej Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.cxl_rej_reason.display = function(value)
  if value == "1" then
    return "Cxl Rej Reason: By Trader (1)"
  end
  if value == "3" then
    return "Cxl Rej Reason: By Supervisor (3)"
  end
  if value == "4" then
    return "Cxl Rej Reason: Volume Modification Incorrect New Volume Total Volume Filled (4)"
  end
  if value == "5" then
    return "Cxl Rej Reason: Not Executed Immediately (5)"
  end
  if value == "6" then
    return "Cxl Rej Reason: Security Not Current Or Not Tradeable For This Member (6)"
  end
  if value == "7" then
    return "Cxl Rej Reason: By Limits (7)"
  end
  if value == "8" then
    return "Cxl Rej Reason: Cancelled By Market Status (8)"
  end
  if value == "9" then
    return "Cxl Rej Reason: Invalid Data (9)"
  end
  if value == "E" then
    return "Cxl Rej Reason: Disconnection Of The Client Application (E)"
  end
  if value == "F" then
    return "Cxl Rej Reason: Quote Parameters Missing (F)"
  end
  if value == "G" then
    return "Cxl Rej Reason: By Permissions (G)"
  end
  if value == "H" then
    return "Cxl Rej Reason: Quote Or Cl Ord Id Incorrect (H)"
  end
  if value == "Q" then
    return "Cxl Rej Reason: Quote Cancelled By Substitution (Q)"
  end
  if value == "X" then
    return "Cxl Rej Reason: By End Of Validity Of The Order (X)"
  end
  if value == "Z" then
    return "Cxl Rej Reason: Other (Z)"
  end
  if value == "b" then
    return "Cxl Rej Reason: By Minimum Trading Volume (b)"
  end
  if value == "c" then
    return "Cxl Rej Reason: Price Not According To The Size Typology (c)"
  end
  if value == "d" then
    return "Cxl Rej Reason: The Order Volumemust Be A Multiple Of The Trading Lot Size (d)"
  end
  if value == "g" then
    return "Cxl Rej Reason: Incorrect Price (g)"
  end
  if value == "h" then
    return "Cxl Rej Reason: Incorrect Volume (h)"
  end
  if value == "i" then
    return "Cxl Rej Reason: Incorrect Date (i)"
  end
  if value == "k" then
    return "Cxl Rej Reason: By Contract Status (k)"
  end
  if value == "o" then
    return "Cxl Rej Reason: By Selfmatch Prevention (o)"
  end
  if value == "x" then
    return "Cxl Rej Reason: Invalid Ork Fields (x)"
  end

  return "Cxl Rej Reason: Unknown("..value..")"
end

-- Dissect: Cxl Rej Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.cxl_rej_reason.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.cxl_rej_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.cxl_rej_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.cxl_rej_reason, range, value, display)

  return offset + length, value
end

-- Cxl Rej Response To
bme_bmefixedincome_orderentry_bmegate_v1_6.cxl_rej_response_to = {}

-- Size: Cxl Rej Response To
bme_bmefixedincome_orderentry_bmegate_v1_6.cxl_rej_response_to.size = 1

-- Display: Cxl Rej Response To
bme_bmefixedincome_orderentry_bmegate_v1_6.cxl_rej_response_to.display = function(value)
  if value == "1" then
    return "Cxl Rej Response To: Simple Order Modification (1)"
  end
  if value == "2" then
    return "Cxl Rej Response To: Order Cancellation Request (2)"
  end

  return "Cxl Rej Response To: Unknown("..value..")"
end

-- Dissect: Cxl Rej Response To
bme_bmefixedincome_orderentry_bmegate_v1_6.cxl_rej_response_to.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.cxl_rej_response_to.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.cxl_rej_response_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.cxl_rej_response_to, range, value, display)

  return offset + length, value
end

-- Data Code
bme_bmefixedincome_orderentry_bmegate_v1_6.data_code = {}

-- Size: Data Code
bme_bmefixedincome_orderentry_bmegate_v1_6.data_code.size = 1

-- Display: Data Code
bme_bmefixedincome_orderentry_bmegate_v1_6.data_code.display = function(value)
  if value == "D" then
    return "Data Code: Average Price (D)"
  end
  if value == "d" then
    return "Data Code: Previous Forward Price (d)"
  end
  if value == "E" then
    return "Data Code: Published Cash Amount (E)"
  end
  if value == "e" then
    return "Data Code: Order Modality Cash Amount (e)"
  end
  if value == "f" then
    return "Data Code: End Of Session Indicator (f)"
  end
  if value == "G" then
    return "Data Code: First (G)"
  end
  if value == "H" then
    return "Data Code: High (H)"
  end
  if value == "h" then
    return "Data Code: Maximum Bid (h)"
  end
  if value == "J" then
    return "Data Code: Not Published Volume (J)"
  end
  if value == "M" then
    return "Data Code: Last (M)"
  end
  if value == "N" then
    return "Data Code: Number Of Trades (N)"
  end
  if value == "Q" then
    return "Data Code: Previous Closing Price (Q)"
  end
  if value == "R" then
    return "Data Code: Opening Volatility (R)"
  end
  if value == "V" then
    return "Data Code: Published Volume (V)"
  end
  if value == "v" then
    return "Data Code: Published Volume Order Modality (v)"
  end
  if value == "W" then
    return "Data Code: Volume Of Last Trade (W)"
  end
  if value == "Z" then
    return "Data Code: Low (Z)"
  end
  if value == "z" then
    return "Data Code: Minimum Ask (z)"
  end
  if value == "j" then
    return "Data Code: Closing Price (j)"
  end
  if value == "k" then
    return "Data Code: Closing Yield (k)"
  end
  if value == "l" then
    return "Data Code: Volatility (l)"
  end
  if value == "m" then
    return "Data Code: Delta (m)"
  end
  if value == "n" then
    return "Data Code: Forward Price (n)"
  end

  return "Data Code: Unknown("..value..")"
end

-- Dissect: Data Code
bme_bmefixedincome_orderentry_bmegate_v1_6.data_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.data_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.data_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.data_code, range, value, display)

  return offset + length, value
end

-- Data Count
bme_bmefixedincome_orderentry_bmegate_v1_6.data_count = {}

-- Size: Data Count
bme_bmefixedincome_orderentry_bmegate_v1_6.data_count.size = 1

-- Display: Data Count
bme_bmefixedincome_orderentry_bmegate_v1_6.data_count.display = function(value)
  return "Data Count: "..value
end

-- Dissect: Data Count
bme_bmefixedincome_orderentry_bmegate_v1_6.data_count.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.data_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.data_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.data_count, range, value, display)

  return offset + length, value
end

-- Data Value
bme_bmefixedincome_orderentry_bmegate_v1_6.data_value = {}

-- Size: Data Value
bme_bmefixedincome_orderentry_bmegate_v1_6.data_value.size = 8

-- Display: Data Value
bme_bmefixedincome_orderentry_bmegate_v1_6.data_value.display = function(value)
  return "Data Value: "..value
end

-- Dissect: Data Value
bme_bmefixedincome_orderentry_bmegate_v1_6.data_value.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.data_value.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.data_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.data_value, range, value, display)

  return offset + length, value
end

-- Date Last Coupon Was Paid
bme_bmefixedincome_orderentry_bmegate_v1_6.date_last_coupon_was_paid = {}

-- Size: Date Last Coupon Was Paid
bme_bmefixedincome_orderentry_bmegate_v1_6.date_last_coupon_was_paid.size = 4

-- Display: Date Last Coupon Was Paid
bme_bmefixedincome_orderentry_bmegate_v1_6.date_last_coupon_was_paid.display = function(value)
  return string.format("Date Last Coupon Was Paid: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Date Last Coupon Was Paid
bme_bmefixedincome_orderentry_bmegate_v1_6.date_last_coupon_was_paid.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.date_last_coupon_was_paid.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.date_last_coupon_was_paid.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.date_last_coupon_was_paid, range, value, display)

  return offset + length, value
end

-- Dea Flag
bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag = {}

-- Size: Dea Flag
bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag.size = 1

-- Display: Dea Flag
bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag.display = function(value)
  if value == 0 then
    return "Dea Flag: False (0)"
  end
  if value == 1 then
    return "Dea Flag: True (1)"
  end
  if value == 255 then
    return "Dea Flag: No Value"
  end

  return "Dea Flag: Unknown("..value..")"
end

-- Dissect: Dea Flag
bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.dea_flag, range, value, display)

  return offset + length, value
end

-- Dea Flag 2
bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag_2 = {}

-- Size: Dea Flag 2
bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag_2.size = 1

-- Display: Dea Flag 2
bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag_2.display = function(value)
  if value == 0 then
    return "Dea Flag 2: False (0)"
  end
  if value == 1 then
    return "Dea Flag 2: True (1)"
  end
  if value == 255 then
    return "Dea Flag 2: No Value"
  end

  return "Dea Flag 2: Unknown("..value..")"
end

-- Dissect: Dea Flag 2
bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.dea_flag_2, range, value, display)

  return offset + length, value
end

-- Decisor Id
bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id = {}

-- Size: Decisor Id
bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id.size = 4

-- Display: Decisor Id
bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id.display = function(value)
  return "Decisor Id: "..value
end

-- Dissect: Decisor Id
bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.decisor_id, range, value, display)

  return offset + length, value
end

-- Decisor Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id_2 = {}

-- Size: Decisor Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id_2.size = 4

-- Display: Decisor Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id_2.display = function(value)
  return "Decisor Id 2: "..value
end

-- Dissect: Decisor Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.decisor_id_2, range, value, display)

  return offset + length, value
end

-- Deferral Waiver
bme_bmefixedincome_orderentry_bmegate_v1_6.deferral_waiver = {}

-- Size: Deferral Waiver
bme_bmefixedincome_orderentry_bmegate_v1_6.deferral_waiver.size = 1

-- Display: Deferral Waiver
bme_bmefixedincome_orderentry_bmegate_v1_6.deferral_waiver.display = function(value)
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
    return "Deferral Waiver: Deferral For ETCs ETNs SFPs Emission Allowances DEFF (G)"
  end

  return "Deferral Waiver: Unknown("..value..")"
end

-- Dissect: Deferral Waiver
bme_bmefixedincome_orderentry_bmegate_v1_6.deferral_waiver.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.deferral_waiver.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.deferral_waiver.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.deferral_waiver, range, value, display)

  return offset + length, value
end

-- Designation
bme_bmefixedincome_orderentry_bmegate_v1_6.designation = {}

-- Size: Designation
bme_bmefixedincome_orderentry_bmegate_v1_6.designation.size = 1

-- Display: Designation
bme_bmefixedincome_orderentry_bmegate_v1_6.designation.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.designation.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.designation.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.designation.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.designation, range, value, display)

  return offset + length, value
end

-- Display Qty
bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty = {}

-- Size: Display Qty
bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty.size = 4

-- Display: Display Qty
bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty.display = function(value)
  return "Display Qty: "..value
end

-- Dissect: Display Qty
bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Display Qty 2
bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty_2 = {}

-- Size: Display Qty 2
bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty_2.size = 4

-- Display: Display Qty 2
bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty_2.display = function(value)
  return "Display Qty 2: "..value
end

-- Dissect: Display Qty 2
bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.display_qty_2, range, value, display)

  return offset + length, value
end

-- End Cash
bme_bmefixedincome_orderentry_bmegate_v1_6.end_cash = {}

-- Size: End Cash
bme_bmefixedincome_orderentry_bmegate_v1_6.end_cash.size = 8

-- Display: End Cash
bme_bmefixedincome_orderentry_bmegate_v1_6.end_cash.display = function(value)
  return "End Cash: "..value
end

-- Translate: End Cash
bme_bmefixedincome_orderentry_bmegate_v1_6.end_cash.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: End Cash
bme_bmefixedincome_orderentry_bmegate_v1_6.end_cash.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.end_cash.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.end_cash.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.end_cash.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.end_cash, range, value, display)

  return offset + length, value
end

-- Entry Date
bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date = {}

-- Size: Entry Date
bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date.size = 4

-- Display: Entry Date
bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date.display = function(value)
  return string.format("Entry Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Entry Date
bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.entry_date, range, value, display)

  return offset + length, value
end

-- Entry Date 2
bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date_2 = {}

-- Size: Entry Date 2
bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date_2.size = 4

-- Display: Entry Date 2
bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date_2.display = function(value)
  return string.format("Entry Date 2: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Entry Date 2
bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date_2.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.entry_date_2, range, value, display)

  return offset + length, value
end

-- Environment Code
bme_bmefixedincome_orderentry_bmegate_v1_6.environment_code = {}

-- Size: Environment Code
bme_bmefixedincome_orderentry_bmegate_v1_6.environment_code.size = 2

-- Display: Environment Code
bme_bmefixedincome_orderentry_bmegate_v1_6.environment_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Environment Code: No Value"
  end

  return "Environment Code: "..value
end

-- Dissect: Environment Code
bme_bmefixedincome_orderentry_bmegate_v1_6.environment_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.environment_code.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.environment_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.environment_code, range, value, display)

  return offset + length, value
end

-- Exec Ref Id
bme_bmefixedincome_orderentry_bmegate_v1_6.exec_ref_id = {}

-- Size: Exec Ref Id
bme_bmefixedincome_orderentry_bmegate_v1_6.exec_ref_id.size = 4

-- Display: Exec Ref Id
bme_bmefixedincome_orderentry_bmegate_v1_6.exec_ref_id.display = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
bme_bmefixedincome_orderentry_bmegate_v1_6.exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Exec Type
bme_bmefixedincome_orderentry_bmegate_v1_6.exec_type = {}

-- Size: Exec Type
bme_bmefixedincome_orderentry_bmegate_v1_6.exec_type.size = 1

-- Display: Exec Type
bme_bmefixedincome_orderentry_bmegate_v1_6.exec_type.display = function(value)
  if value == "A" then
    return "Exec Type: New Order Confirmation (A)"
  end
  if value == "B" then
    return "Exec Type: Order Cancellation (B)"
  end
  if value == "C" then
    return "Exec Type: Order Refresh Due To Change Of Book (C)"
  end
  if value == "M" then
    return "Exec Type: Order Modification (M)"
  end
  if value == "G" then
    return "Exec Type: Order Modification Deleting Intermediated Member (G)"
  end
  if value == "F" then
    return "Exec Type: Order Modification Changing Intermediated Member (F)"
  end
  if value == "R" then
    return "Exec Type: Order Refresh (R)"
  end
  if value == "D" then
    return "Exec Type: Stop Order Triggered Attheclose Order Activation (D)"
  end
  if value == "8" then
    return "Exec Type: Order Rejection (8)"
  end
  if value == "N" then
    return "Exec Type: Order Pending Validation (N)"
  end
  if value == "P" then
    return "Exec Type: Order Modification Pending Validation (P)"
  end
  if value == "V" then
    return "Exec Type: Order Refresh Due To New Display Qty (V)"
  end
  if value == "I" then
    return "Exec Type: Beginning Of Day Order Refresh (I)"
  end
  if value == "X" then
    return "Exec Type: Expired Order (X)"
  end
  if value == "W" then
    return "Exec Type: Order Status (W)"
  end

  return "Exec Type: Unknown("..value..")"
end

-- Dissect: Exec Type
bme_bmefixedincome_orderentry_bmegate_v1_6.exec_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.exec_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.exec_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Exec Type 2
bme_bmefixedincome_orderentry_bmegate_v1_6.exec_type_2 = {}

-- Size: Exec Type 2
bme_bmefixedincome_orderentry_bmegate_v1_6.exec_type_2.size = 1

-- Display: Exec Type 2
bme_bmefixedincome_orderentry_bmegate_v1_6.exec_type_2.display = function(value)
  if value == "A" then
    return "Exec Type 2: New Order Confirmation (A)"
  end
  if value == "B" then
    return "Exec Type 2: Order Cancellation (B)"
  end
  if value == "M" then
    return "Exec Type 2: Order Modification (M)"
  end
  if value == "R" then
    return "Exec Type 2: Order Refresh (R)"
  end
  if value == "8" then
    return "Exec Type 2: Order Rejection (8)"
  end
  if value == "X" then
    return "Exec Type 2: Expired Order (X)"
  end
  if value == "W" then
    return "Exec Type 2: Order Status (W)"
  end

  return "Exec Type 2: Unknown("..value..")"
end

-- Dissect: Exec Type 2
bme_bmefixedincome_orderentry_bmegate_v1_6.exec_type_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.exec_type_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.exec_type_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.exec_type_2, range, value, display)

  return offset + length, value
end

-- Executor Id
bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id = {}

-- Size: Executor Id
bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id.size = 4

-- Display: Executor Id
bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id.display = function(value)
  return "Executor Id: "..value
end

-- Dissect: Executor Id
bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.executor_id, range, value, display)

  return offset + length, value
end

-- Executor Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id_2 = {}

-- Size: Executor Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id_2.size = 4

-- Display: Executor Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id_2.display = function(value)
  return "Executor Id 2: "..value
end

-- Dissect: Executor Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.executor_id_2, range, value, display)

  return offset + length, value
end

-- Expected Sequence Number
bme_bmefixedincome_orderentry_bmegate_v1_6.expected_sequence_number = {}

-- Size: Expected Sequence Number
bme_bmefixedincome_orderentry_bmegate_v1_6.expected_sequence_number.size = 4

-- Display: Expected Sequence Number
bme_bmefixedincome_orderentry_bmegate_v1_6.expected_sequence_number.display = function(value)
  return "Expected Sequence Number: "..value
end

-- Dissect: Expected Sequence Number
bme_bmefixedincome_orderentry_bmegate_v1_6.expected_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.expected_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.expected_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.expected_sequence_number, range, value, display)

  return offset + length, value
end

-- Facial
bme_bmefixedincome_orderentry_bmegate_v1_6.facial = {}

-- Size: Facial
bme_bmefixedincome_orderentry_bmegate_v1_6.facial.size = 8

-- Display: Facial
bme_bmefixedincome_orderentry_bmegate_v1_6.facial.display = function(value)
  return "Facial: "..value
end

-- Translate: Facial
bme_bmefixedincome_orderentry_bmegate_v1_6.facial.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Facial
bme_bmefixedincome_orderentry_bmegate_v1_6.facial.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.facial.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.facial.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.facial.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.facial, range, value, display)

  return offset + length, value
end

-- First Trading Date
bme_bmefixedincome_orderentry_bmegate_v1_6.first_trading_date = {}

-- Size: First Trading Date
bme_bmefixedincome_orderentry_bmegate_v1_6.first_trading_date.size = 4

-- Display: First Trading Date
bme_bmefixedincome_orderentry_bmegate_v1_6.first_trading_date.display = function(value)
  return string.format("First Trading Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: First Trading Date
bme_bmefixedincome_orderentry_bmegate_v1_6.first_trading_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.first_trading_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.first_trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.first_trading_date, range, value, display)

  return offset + length, value
end

-- Fisn
bme_bmefixedincome_orderentry_bmegate_v1_6.fisn = {}

-- Size: Fisn
bme_bmefixedincome_orderentry_bmegate_v1_6.fisn.size = 35

-- Display: Fisn
bme_bmefixedincome_orderentry_bmegate_v1_6.fisn.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fisn: No Value"
  end

  return "Fisn: "..value
end

-- Dissect: Fisn
bme_bmefixedincome_orderentry_bmegate_v1_6.fisn.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.fisn.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.fisn.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.fisn, range, value, display)

  return offset + length, value
end

-- Gross Trade Amt
bme_bmefixedincome_orderentry_bmegate_v1_6.gross_trade_amt = {}

-- Size: Gross Trade Amt
bme_bmefixedincome_orderentry_bmegate_v1_6.gross_trade_amt.size = 8

-- Display: Gross Trade Amt
bme_bmefixedincome_orderentry_bmegate_v1_6.gross_trade_amt.display = function(value)
  return "Gross Trade Amt: "..value
end

-- Translate: Gross Trade Amt
bme_bmefixedincome_orderentry_bmegate_v1_6.gross_trade_amt.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Gross Trade Amt
bme_bmefixedincome_orderentry_bmegate_v1_6.gross_trade_amt.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.gross_trade_amt.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.gross_trade_amt.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.gross_trade_amt.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.gross_trade_amt, range, value, display)

  return offset + length, value
end

-- Heart Bt Int
bme_bmefixedincome_orderentry_bmegate_v1_6.heart_bt_int = {}

-- Size: Heart Bt Int
bme_bmefixedincome_orderentry_bmegate_v1_6.heart_bt_int.size = 1

-- Display: Heart Bt Int
bme_bmefixedincome_orderentry_bmegate_v1_6.heart_bt_int.display = function(value)
  return "Heart Bt Int: "..value
end

-- Dissect: Heart Bt Int
bme_bmefixedincome_orderentry_bmegate_v1_6.heart_bt_int.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.heart_bt_int.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.heart_bt_int.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.heart_bt_int, range, value, display)

  return offset + length, value
end

-- High Limit Price
bme_bmefixedincome_orderentry_bmegate_v1_6.high_limit_price = {}

-- Size: High Limit Price
bme_bmefixedincome_orderentry_bmegate_v1_6.high_limit_price.size = 8

-- Display: High Limit Price
bme_bmefixedincome_orderentry_bmegate_v1_6.high_limit_price.display = function(value)
  return "High Limit Price: "..value
end

-- Translate: High Limit Price
bme_bmefixedincome_orderentry_bmegate_v1_6.high_limit_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: High Limit Price
bme_bmefixedincome_orderentry_bmegate_v1_6.high_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.high_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.high_limit_price.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.high_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.high_limit_price, range, value, display)

  return offset + length, value
end

-- Interest Accrual Date
bme_bmefixedincome_orderentry_bmegate_v1_6.interest_accrual_date = {}

-- Size: Interest Accrual Date
bme_bmefixedincome_orderentry_bmegate_v1_6.interest_accrual_date.size = 4

-- Display: Interest Accrual Date
bme_bmefixedincome_orderentry_bmegate_v1_6.interest_accrual_date.display = function(value)
  return string.format("Interest Accrual Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Interest Accrual Date
bme_bmefixedincome_orderentry_bmegate_v1_6.interest_accrual_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.interest_accrual_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.interest_accrual_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.interest_accrual_date, range, value, display)

  return offset + length, value
end

-- Ioi Price
bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_price = {}

-- Size: Ioi Price
bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_price.size = 8

-- Display: Ioi Price
bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_price.display = function(value)
  return "Ioi Price: "..value
end

-- Translate: Ioi Price
bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ioi Price
bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_price.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ioi_price, range, value, display)

  return offset + length, value
end

-- Ioi Qty
bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_qty = {}

-- Size: Ioi Qty
bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_qty.size = 4

-- Display: Ioi Qty
bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_qty.display = function(value)
  return "Ioi Qty: "..value
end

-- Dissect: Ioi Qty
bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_qty.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ioi_qty, range, value, display)

  return offset + length, value
end

-- Ioi Trans Type
bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_trans_type = {}

-- Size: Ioi Trans Type
bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_trans_type.size = 1

-- Display: Ioi Trans Type
bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_trans_type.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_trans_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_trans_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_trans_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ioi_trans_type, range, value, display)

  return offset + length, value
end

-- Ioiid
bme_bmefixedincome_orderentry_bmegate_v1_6.ioiid = {}

-- Size: Ioiid
bme_bmefixedincome_orderentry_bmegate_v1_6.ioiid.size = 4

-- Display: Ioiid
bme_bmefixedincome_orderentry_bmegate_v1_6.ioiid.display = function(value)
  return "Ioiid: "..value
end

-- Dissect: Ioiid
bme_bmefixedincome_orderentry_bmegate_v1_6.ioiid.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.ioiid.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.ioiid.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ioiid, range, value, display)

  return offset + length, value
end

-- Issue Date
bme_bmefixedincome_orderentry_bmegate_v1_6.issue_date = {}

-- Size: Issue Date
bme_bmefixedincome_orderentry_bmegate_v1_6.issue_date.size = 4

-- Display: Issue Date
bme_bmefixedincome_orderentry_bmegate_v1_6.issue_date.display = function(value)
  return string.format("Issue Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Issue Date
bme_bmefixedincome_orderentry_bmegate_v1_6.issue_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.issue_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.issue_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.issue_date, range, value, display)

  return offset + length, value
end

-- Issuer
bme_bmefixedincome_orderentry_bmegate_v1_6.issuer = {}

-- Size: Issuer
bme_bmefixedincome_orderentry_bmegate_v1_6.issuer.size = 12

-- Display: Issuer
bme_bmefixedincome_orderentry_bmegate_v1_6.issuer.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Issuer: No Value"
  end

  return "Issuer: "..value
end

-- Dissect: Issuer
bme_bmefixedincome_orderentry_bmegate_v1_6.issuer.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.issuer.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.issuer.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.issuer, range, value, display)

  return offset + length, value
end

-- Issuer Lei
bme_bmefixedincome_orderentry_bmegate_v1_6.issuer_lei = {}

-- Size: Issuer Lei
bme_bmefixedincome_orderentry_bmegate_v1_6.issuer_lei.size = 20

-- Display: Issuer Lei
bme_bmefixedincome_orderentry_bmegate_v1_6.issuer_lei.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Issuer Lei: No Value"
  end

  return "Issuer Lei: "..value
end

-- Dissect: Issuer Lei
bme_bmefixedincome_orderentry_bmegate_v1_6.issuer_lei.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.issuer_lei.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.issuer_lei.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.issuer_lei, range, value, display)

  return offset + length, value
end

-- Last Capacity
bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity = {}

-- Size: Last Capacity
bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity.size = 1

-- Display: Last Capacity
bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity.display = function(value)
  if value == "D" then
    return "Last Capacity: Dealing On Own Account (D)"
  end
  if value == "M" then
    return "Last Capacity: Matched Principal (M)"
  end
  if value == "A" then
    return "Last Capacity: Any Other Trading Capacity Blanco (A)"
  end

  return "Last Capacity: Unknown("..value..")"
end

-- Dissect: Last Capacity
bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.last_capacity, range, value, display)

  return offset + length, value
end

-- Last Capacity 2
bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity_2 = {}

-- Size: Last Capacity 2
bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity_2.size = 1

-- Display: Last Capacity 2
bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity_2.display = function(value)
  if value == "D" then
    return "Last Capacity 2: Dealing On Own Account (D)"
  end
  if value == "M" then
    return "Last Capacity 2: Matched Principal (M)"
  end
  if value == "A" then
    return "Last Capacity 2: Any Other Trading Capacity Blanco (A)"
  end

  return "Last Capacity 2: Unknown("..value..")"
end

-- Dissect: Last Capacity 2
bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.last_capacity_2, range, value, display)

  return offset + length, value
end

-- Last Change Flag
bme_bmefixedincome_orderentry_bmegate_v1_6.last_change_flag = {}

-- Size: Last Change Flag
bme_bmefixedincome_orderentry_bmegate_v1_6.last_change_flag.size = 1

-- Display: Last Change Flag
bme_bmefixedincome_orderentry_bmegate_v1_6.last_change_flag.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.last_change_flag.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.last_change_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.last_change_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.last_change_flag, range, value, display)

  return offset + length, value
end

-- Last Px
bme_bmefixedincome_orderentry_bmegate_v1_6.last_px = {}

-- Size: Last Px
bme_bmefixedincome_orderentry_bmegate_v1_6.last_px.size = 8

-- Display: Last Px
bme_bmefixedincome_orderentry_bmegate_v1_6.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
bme_bmefixedincome_orderentry_bmegate_v1_6.last_px.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Px
bme_bmefixedincome_orderentry_bmegate_v1_6.last_px.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.last_px.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Qty
bme_bmefixedincome_orderentry_bmegate_v1_6.last_qty = {}

-- Size: Last Qty
bme_bmefixedincome_orderentry_bmegate_v1_6.last_qty.size = 4

-- Display: Last Qty
bme_bmefixedincome_orderentry_bmegate_v1_6.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
bme_bmefixedincome_orderentry_bmegate_v1_6.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.last_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Li Spost
bme_bmefixedincome_orderentry_bmegate_v1_6.li_spost = {}

-- Size: Li Spost
bme_bmefixedincome_orderentry_bmegate_v1_6.li_spost.size = 8

-- Display: Li Spost
bme_bmefixedincome_orderentry_bmegate_v1_6.li_spost.display = function(value)
  return "Li Spost: "..value
end

-- Translate: Li Spost
bme_bmefixedincome_orderentry_bmegate_v1_6.li_spost.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Li Spost
bme_bmefixedincome_orderentry_bmegate_v1_6.li_spost.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.li_spost.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.li_spost.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.li_spost.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.li_spost, range, value, display)

  return offset + length, value
end

-- Li Spre
bme_bmefixedincome_orderentry_bmegate_v1_6.li_spre = {}

-- Size: Li Spre
bme_bmefixedincome_orderentry_bmegate_v1_6.li_spre.size = 8

-- Display: Li Spre
bme_bmefixedincome_orderentry_bmegate_v1_6.li_spre.display = function(value)
  return "Li Spre: "..value
end

-- Translate: Li Spre
bme_bmefixedincome_orderentry_bmegate_v1_6.li_spre.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Li Spre
bme_bmefixedincome_orderentry_bmegate_v1_6.li_spre.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.li_spre.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.li_spre.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.li_spre.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.li_spre, range, value, display)

  return offset + length, value
end

-- Liquid Instrument
bme_bmefixedincome_orderentry_bmegate_v1_6.liquid_instrument = {}

-- Size: Liquid Instrument
bme_bmefixedincome_orderentry_bmegate_v1_6.liquid_instrument.size = 1

-- Display: Liquid Instrument
bme_bmefixedincome_orderentry_bmegate_v1_6.liquid_instrument.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.liquid_instrument.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.liquid_instrument.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.liquid_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.liquid_instrument, range, value, display)

  return offset + length, value
end

-- Liquidity Provision Activity
bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity = {}

-- Size: Liquidity Provision Activity
bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity.size = 1

-- Display: Liquidity Provision Activity
bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity.display = function(value)
  if value == 0 then
    return "Liquidity Provision Activity: False (0)"
  end
  if value == 1 then
    return "Liquidity Provision Activity: True (1)"
  end
  if value == 255 then
    return "Liquidity Provision Activity: No Value"
  end

  return "Liquidity Provision Activity: Unknown("..value..")"
end

-- Dissect: Liquidity Provision Activity
bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.liquidity_provision_activity, range, value, display)

  return offset + length, value
end

-- Liquidity Provision Activity 2
bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity_2 = {}

-- Size: Liquidity Provision Activity 2
bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity_2.size = 1

-- Display: Liquidity Provision Activity 2
bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity_2.display = function(value)
  if value == 0 then
    return "Liquidity Provision Activity 2: False (0)"
  end
  if value == 1 then
    return "Liquidity Provision Activity 2: True (1)"
  end
  if value == 255 then
    return "Liquidity Provision Activity 2: No Value"
  end

  return "Liquidity Provision Activity 2: Unknown("..value..")"
end

-- Dissect: Liquidity Provision Activity 2
bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.liquidity_provision_activity_2, range, value, display)

  return offset + length, value
end

-- Logout Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.logout_reason = {}

-- Size: Logout Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.logout_reason.size = 1

-- Display: Logout Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.logout_reason.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.logout_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Low Limit Price
bme_bmefixedincome_orderentry_bmegate_v1_6.low_limit_price = {}

-- Size: Low Limit Price
bme_bmefixedincome_orderentry_bmegate_v1_6.low_limit_price.size = 8

-- Display: Low Limit Price
bme_bmefixedincome_orderentry_bmegate_v1_6.low_limit_price.display = function(value)
  return "Low Limit Price: "..value
end

-- Translate: Low Limit Price
bme_bmefixedincome_orderentry_bmegate_v1_6.low_limit_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Low Limit Price
bme_bmefixedincome_orderentry_bmegate_v1_6.low_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.low_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.low_limit_price.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.low_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.low_limit_price, range, value, display)

  return offset + length, value
end

-- Market Id
bme_bmefixedincome_orderentry_bmegate_v1_6.market_id = {}

-- Size: Market Id
bme_bmefixedincome_orderentry_bmegate_v1_6.market_id.size = 4

-- Display: Market Id
bme_bmefixedincome_orderentry_bmegate_v1_6.market_id.display = function(value)
  if value == "BMEX" then
    return "Market Id: BMEX (BMEX)"
  end
  if value == "XNAF" then
    return "Market Id: XNAF (XNAF)"
  end

  return "Market Id: Unknown("..value..")"
end

-- Dissect: Market Id
bme_bmefixedincome_orderentry_bmegate_v1_6.market_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.market_id.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Mechanism
bme_bmefixedincome_orderentry_bmegate_v1_6.market_mechanism = {}

-- Size: Market Mechanism
bme_bmefixedincome_orderentry_bmegate_v1_6.market_mechanism.size = 1

-- Display: Market Mechanism
bme_bmefixedincome_orderentry_bmegate_v1_6.market_mechanism.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.market_mechanism.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.market_mechanism.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.market_mechanism.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.market_mechanism, range, value, display)

  return offset + length, value
end

-- Market Segment Id
bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id = {}

-- Size: Market Segment Id
bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id.size = 4

-- Display: Market Segment Id
bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Mass Cancel Reject Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.mass_cancel_reject_reason = {}

-- Size: Mass Cancel Reject Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.mass_cancel_reject_reason.size = 1

-- Display: Mass Cancel Reject Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.mass_cancel_reject_reason.display = function(value)
  if value == "G" then
    return "Mass Cancel Reject Reason: No Permission (G)"
  end
  if value == "8" then
    return "Mass Cancel Reject Reason: Cancelled Because Of Market State (8)"
  end
  if value == "9" then
    return "Mass Cancel Reject Reason: Invalid Data (9)"
  end

  return "Mass Cancel Reject Reason: Unknown("..value..")"
end

-- Dissect: Mass Cancel Reject Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.mass_cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.mass_cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.mass_cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.mass_cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Maturity
bme_bmefixedincome_orderentry_bmegate_v1_6.maturity = {}

-- Size: Maturity
bme_bmefixedincome_orderentry_bmegate_v1_6.maturity.size = 8

-- Display: Maturity
bme_bmefixedincome_orderentry_bmegate_v1_6.maturity.display = function(value)
  return "Maturity: "..value
end

-- Translate: Maturity
bme_bmefixedincome_orderentry_bmegate_v1_6.maturity.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Maturity
bme_bmefixedincome_orderentry_bmegate_v1_6.maturity.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.maturity.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.maturity.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.maturity.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.maturity, range, value, display)

  return offset + length, value
end

-- Maturity Date
bme_bmefixedincome_orderentry_bmegate_v1_6.maturity_date = {}

-- Size: Maturity Date
bme_bmefixedincome_orderentry_bmegate_v1_6.maturity_date.size = 4

-- Display: Maturity Date
bme_bmefixedincome_orderentry_bmegate_v1_6.maturity_date.display = function(value)
  return string.format("Maturity Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Maturity Date
bme_bmefixedincome_orderentry_bmegate_v1_6.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Member
bme_bmefixedincome_orderentry_bmegate_v1_6.member = {}

-- Size: Member
bme_bmefixedincome_orderentry_bmegate_v1_6.member.size = 4

-- Display: Member
bme_bmefixedincome_orderentry_bmegate_v1_6.member.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Member: No Value"
  end

  return "Member: "..value
end

-- Dissect: Member
bme_bmefixedincome_orderentry_bmegate_v1_6.member.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.member.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.member.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.member, range, value, display)

  return offset + length, value
end

-- Member 2
bme_bmefixedincome_orderentry_bmegate_v1_6.member_2 = {}

-- Size: Member 2
bme_bmefixedincome_orderentry_bmegate_v1_6.member_2.size = 4

-- Display: Member 2
bme_bmefixedincome_orderentry_bmegate_v1_6.member_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Member 2: No Value"
  end

  return "Member 2: "..value
end

-- Dissect: Member 2
bme_bmefixedincome_orderentry_bmegate_v1_6.member_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.member_2.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.member_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.member_2, range, value, display)

  return offset + length, value
end

-- Message Size
bme_bmefixedincome_orderentry_bmegate_v1_6.message_size = {}

-- Size: Message Size
bme_bmefixedincome_orderentry_bmegate_v1_6.message_size.size = 2

-- Display: Message Size
bme_bmefixedincome_orderentry_bmegate_v1_6.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
bme_bmefixedincome_orderentry_bmegate_v1_6.message_size.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
bme_bmefixedincome_orderentry_bmegate_v1_6.message_type = {}

-- Size: Message Type
bme_bmefixedincome_orderentry_bmegate_v1_6.message_type.size = 1

-- Display: Message Type
bme_bmefixedincome_orderentry_bmegate_v1_6.message_type.display = function(value)
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
  if value == 0x41 then
    return "Message Type: Logon Message (0x41)"
  end
  if value == 0x35 then
    return "Message Type: Logout Message (0x35)"
  end
  if value == 0x0D then
    return "Message Type: Reject Message (0x0D)"
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
  if value == 0x01 then
    return "Message Type: Order Cancellation Market Member Message (0x01)"
  end
  if value == 0x05 then
    return "Message Type: Quote Cancellation Market Member Message (0x05)"
  end
  if value == 0x36 then
    return "Message Type: Indication Of Interest Message (0x36)"
  end
  if value == 0x6F then
    return "Message Type: Order And Quote Client Data Message (0x6F)"
  end
  if value == 0x44 then
    return "Message Type: Simple New Order Message (0x44)"
  end
  if value == 0x45 then
    return "Message Type: Simple New Order With Client Data Message (0x45)"
  end
  if value == 0x47 then
    return "Message Type: Simple Order Modification Message (0x47)"
  end
  if value == 0x48 then
    return "Message Type: Simple Order Modification With Client Data Message (0x48)"
  end
  if value == 0x46 then
    return "Message Type: Order Cancellation Request Message (0x46)"
  end
  if value == 0x53 then
    return "Message Type: New Quote Message (0x53)"
  end
  if value == 0x61 then
    return "Message Type: Quote Modification Request Message (0x61)"
  end
  if value == 0x5A then
    return "Message Type: Quote Cancellation Request Message (0x5A)"
  end
  if value == 0x71 then
    return "Message Type: Mass Orderquote Cancellation Message (0x71)"
  end
  if value == 0x87 then
    return "Message Type: Order And Quote Client Data Parameters Ack Nack Message (0x87)"
  end
  if value == 0x02 then
    return "Message Type: Simple Order Status Message (0x02)"
  end
  if value == 0x06 then
    return "Message Type: Quote Status Message (0x06)"
  end
  if value == 0x39 then
    return "Message Type: Order Cancel Reject Message (0x39)"
  end
  if value == 0x72 then
    return "Message Type: Mass Orderquote Cancellation Completion Message (0x72)"
  end
  if value == 0x73 then
    return "Message Type: Mass Orderquote Cancellation Reject Message (0x73)"
  end
  if value == 0x6A then
    return "Message Type: Business Message Reject Message (0x6A)"
  end
  if value == 0x17 then
    return "Message Type: Execution Private Information 2 Legs Message (0x17)"
  end
  if value == 0x1A then
    return "Message Type: Trade Trade Amendment Or Cancellation 1 Leg Buy Private Information Message (0x1A)"
  end
  if value == 0x1C then
    return "Message Type: Trade Trade Amendment Or Cancellation 1 Leg Sell Private Information Message (0x1C)"
  end
  if value == 0x1E then
    return "Message Type: Trade Trade Amendment Or Cancellation 2 Legs Private Information Message (0x1E)"
  end
  if value == 0x12 then
    return "Message Type: Execution Private Information 1 Leg Buy Order Entry Message (0x12)"
  end
  if value == 0x14 then
    return "Message Type: Execution Private Information 1 Leg Sell Order Entry Message (0x14)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
bme_bmefixedincome_orderentry_bmegate_v1_6.message_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.message_type, range, value, display)

  return offset + length, value
end

-- Min Price Increment
bme_bmefixedincome_orderentry_bmegate_v1_6.min_price_increment = {}

-- Size: Min Price Increment
bme_bmefixedincome_orderentry_bmegate_v1_6.min_price_increment.size = 8

-- Display: Min Price Increment
bme_bmefixedincome_orderentry_bmegate_v1_6.min_price_increment.display = function(value)
  return "Min Price Increment: "..value
end

-- Translate: Min Price Increment
bme_bmefixedincome_orderentry_bmegate_v1_6.min_price_increment.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Min Price Increment
bme_bmefixedincome_orderentry_bmegate_v1_6.min_price_increment.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.min_price_increment.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.min_price_increment.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.min_price_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.min_price_increment, range, value, display)

  return offset + length, value
end

-- Min Trade Vol
bme_bmefixedincome_orderentry_bmegate_v1_6.min_trade_vol = {}

-- Size: Min Trade Vol
bme_bmefixedincome_orderentry_bmegate_v1_6.min_trade_vol.size = 4

-- Display: Min Trade Vol
bme_bmefixedincome_orderentry_bmegate_v1_6.min_trade_vol.display = function(value)
  return "Min Trade Vol: "..value
end

-- Dissect: Min Trade Vol
bme_bmefixedincome_orderentry_bmegate_v1_6.min_trade_vol.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.min_trade_vol.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.min_trade_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.min_trade_vol, range, value, display)

  return offset + length, value
end

-- Modality Mask B 4
bme_bmefixedincome_orderentry_bmegate_v1_6.modality_mask_b_4 = {}

-- Size: Modality Mask B 4
bme_bmefixedincome_orderentry_bmegate_v1_6.modality_mask_b_4.size = 4

-- Display: Modality Mask B 4
bme_bmefixedincome_orderentry_bmegate_v1_6.modality_mask_b_4.display = function(value)
  return "Modality Mask B 4: "..value
end

-- Dissect: Modality Mask B 4
bme_bmefixedincome_orderentry_bmegate_v1_6.modality_mask_b_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.modality_mask_b_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.modality_mask_b_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.modality_mask_b_4, range, value, display)

  return offset + length, value
end

-- Msg Rejected Reference
bme_bmefixedincome_orderentry_bmegate_v1_6.msg_rejected_reference = {}

-- Size: Msg Rejected Reference
bme_bmefixedincome_orderentry_bmegate_v1_6.msg_rejected_reference.size = 7

-- Display: Msg Rejected Reference
bme_bmefixedincome_orderentry_bmegate_v1_6.msg_rejected_reference.display = function(value)
  return "Msg Rejected Reference: "..value
end

-- Dissect: Msg Rejected Reference
bme_bmefixedincome_orderentry_bmegate_v1_6.msg_rejected_reference.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.msg_rejected_reference.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.msg_rejected_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.msg_rejected_reference, range, value, display)

  return offset + length, value
end

-- Network Status Value
bme_bmefixedincome_orderentry_bmegate_v1_6.network_status_value = {}

-- Size: Network Status Value
bme_bmefixedincome_orderentry_bmegate_v1_6.network_status_value.size = 1

-- Display: Network Status Value
bme_bmefixedincome_orderentry_bmegate_v1_6.network_status_value.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.network_status_value.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.network_status_value.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.network_status_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.network_status_value, range, value, display)

  return offset + length, value
end

-- News Text
bme_bmefixedincome_orderentry_bmegate_v1_6.news_text = {}

-- Size: News Text
bme_bmefixedincome_orderentry_bmegate_v1_6.news_text.size = 78

-- Display: News Text
bme_bmefixedincome_orderentry_bmegate_v1_6.news_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "News Text: No Value"
  end

  return "News Text: "..value
end

-- Dissect: News Text
bme_bmefixedincome_orderentry_bmegate_v1_6.news_text.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.news_text.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.news_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.news_text, range, value, display)

  return offset + length, value
end

-- Next Redemption Date
bme_bmefixedincome_orderentry_bmegate_v1_6.next_redemption_date = {}

-- Size: Next Redemption Date
bme_bmefixedincome_orderentry_bmegate_v1_6.next_redemption_date.size = 4

-- Display: Next Redemption Date
bme_bmefixedincome_orderentry_bmegate_v1_6.next_redemption_date.display = function(value)
  return string.format("Next Redemption Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Next Redemption Date
bme_bmefixedincome_orderentry_bmegate_v1_6.next_redemption_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.next_redemption_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.next_redemption_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.next_redemption_date, range, value, display)

  return offset + length, value
end

-- Non Availability Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.non_availability_reason = {}

-- Size: Non Availability Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.non_availability_reason.size = 1

-- Display: Non Availability Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.non_availability_reason.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.non_availability_reason.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.non_availability_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.non_availability_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.non_availability_reason, range, value, display)

  return offset + length, value
end

-- Number Of Decimals
bme_bmefixedincome_orderentry_bmegate_v1_6.number_of_decimals = {}

-- Size: Number Of Decimals
bme_bmefixedincome_orderentry_bmegate_v1_6.number_of_decimals.size = 1

-- Display: Number Of Decimals
bme_bmefixedincome_orderentry_bmegate_v1_6.number_of_decimals.display = function(value)
  return "Number Of Decimals: "..value
end

-- Dissect: Number Of Decimals
bme_bmefixedincome_orderentry_bmegate_v1_6.number_of_decimals.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.number_of_decimals.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.number_of_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.number_of_decimals, range, value, display)

  return offset + length, value
end

-- Ord Rej Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.ord_rej_reason = {}

-- Size: Ord Rej Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.ord_rej_reason.size = 1

-- Display: Ord Rej Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.ord_rej_reason.display = function(value)
  if value == "1" then
    return "Ord Rej Reason: By Trader (1)"
  end
  if value == "3" then
    return "Ord Rej Reason: By Supervisor (3)"
  end
  if value == "4" then
    return "Ord Rej Reason: Volume Modification Incorrect New Volume Total Volume Filled (4)"
  end
  if value == "5" then
    return "Ord Rej Reason: Not Executed Immediately (5)"
  end
  if value == "6" then
    return "Ord Rej Reason: Security Not Current Or Not Tradeable For This Member (6)"
  end
  if value == "7" then
    return "Ord Rej Reason: By Limits (7)"
  end
  if value == "8" then
    return "Ord Rej Reason: Cancelled By Market Status (8)"
  end
  if value == "9" then
    return "Ord Rej Reason: Invalid Data (9)"
  end
  if value == "E" then
    return "Ord Rej Reason: Disconnection Of The Client Application (E)"
  end
  if value == "F" then
    return "Ord Rej Reason: Quote Parameters Missing (F)"
  end
  if value == "G" then
    return "Ord Rej Reason: By Permissions (G)"
  end
  if value == "H" then
    return "Ord Rej Reason: Quote Or Cl Ord Id Incorrect (H)"
  end
  if value == "Q" then
    return "Ord Rej Reason: Quote Cancelled By Substitution (Q)"
  end
  if value == "X" then
    return "Ord Rej Reason: By End Of Validity Of The Order (X)"
  end
  if value == "Z" then
    return "Ord Rej Reason: Other (Z)"
  end
  if value == "b" then
    return "Ord Rej Reason: By Minimum Trading Volume (b)"
  end
  if value == "c" then
    return "Ord Rej Reason: Price Not According To The Size Typology (c)"
  end
  if value == "d" then
    return "Ord Rej Reason: The Order Volumemust Be A Multiple Of The Trading Lot Size (d)"
  end
  if value == "g" then
    return "Ord Rej Reason: Incorrect Price (g)"
  end
  if value == "h" then
    return "Ord Rej Reason: Incorrect Volume (h)"
  end
  if value == "i" then
    return "Ord Rej Reason: Incorrect Date (i)"
  end
  if value == "k" then
    return "Ord Rej Reason: By Contract Status (k)"
  end
  if value == "o" then
    return "Ord Rej Reason: By Selfmatch Prevention (o)"
  end
  if value == "x" then
    return "Ord Rej Reason: Invalid Ork Fields (x)"
  end
  if value == "L" then
    return "Ord Rej Reason: Priority Change Due To Change In Price (L)"
  end
  if value == "M" then
    return "Ord Rej Reason: Priority Change Due To Volume Increase (M)"
  end
  if value == "N" then
    return "Ord Rej Reason: Priority Change Due To New Client Account Capacity (N)"
  end
  if value == "P" then
    return "Ord Rej Reason: Priority Change Due To Both Price Change And Volume Increase (P)"
  end
  if value == "R" then
    return "Ord Rej Reason: Priority Change Due To Both Price And Client Account (R)"
  end
  if value == "S" then
    return "Ord Rej Reason: Priority Change Due To Both Volume Increase And Client Account (S)"
  end
  if value == "T" then
    return "Ord Rej Reason: Modification Without Priority Change (T)"
  end
  if value == "U" then
    return "Ord Rej Reason: Stop Order Triggered At The Close Order Activation (U)"
  end
  if value == "V" then
    return "Ord Rej Reason: Not A Member Of Pit (V)"
  end
  if value == "Y" then
    return "Ord Rej Reason: New Volume Shown (Y)"
  end
  if value == "q" then
    return "Ord Rej Reason: Not Executed Due To Exceded Volume Cap (q)"
  end

  return "Ord Rej Reason: Unknown("..value..")"
end

-- Dissect: Ord Rej Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.ord_rej_reason.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.ord_rej_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.ord_rej_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ord_rej_reason, range, value, display)

  return offset + length, value
end

-- Ord Rej Reason 2
bme_bmefixedincome_orderentry_bmegate_v1_6.ord_rej_reason_2 = {}

-- Size: Ord Rej Reason 2
bme_bmefixedincome_orderentry_bmegate_v1_6.ord_rej_reason_2.size = 1

-- Display: Ord Rej Reason 2
bme_bmefixedincome_orderentry_bmegate_v1_6.ord_rej_reason_2.display = function(value)
  if value == "1" then
    return "Ord Rej Reason 2: By Trader (1)"
  end
  if value == "3" then
    return "Ord Rej Reason 2: By Supervisor (3)"
  end
  if value == "4" then
    return "Ord Rej Reason 2: Volume Modification Incorrect New Volume Total Volume Filled (4)"
  end
  if value == "5" then
    return "Ord Rej Reason 2: Not Executed Immediately (5)"
  end
  if value == "6" then
    return "Ord Rej Reason 2: Security Not Current Or Not Tradeable For This Member (6)"
  end
  if value == "7" then
    return "Ord Rej Reason 2: By Limits (7)"
  end
  if value == "8" then
    return "Ord Rej Reason 2: Cancelled By Market Status (8)"
  end
  if value == "9" then
    return "Ord Rej Reason 2: Invalid Data (9)"
  end
  if value == "E" then
    return "Ord Rej Reason 2: Disconnection Of The Client Application (E)"
  end
  if value == "F" then
    return "Ord Rej Reason 2: Quote Parameters Missing (F)"
  end
  if value == "G" then
    return "Ord Rej Reason 2: By Permissions (G)"
  end
  if value == "H" then
    return "Ord Rej Reason 2: Quote Or Cl Ord Id Incorrect (H)"
  end
  if value == "Q" then
    return "Ord Rej Reason 2: Quote Cancelled By Substitution (Q)"
  end
  if value == "X" then
    return "Ord Rej Reason 2: By End Of Validity Of The Order (X)"
  end
  if value == "Z" then
    return "Ord Rej Reason 2: Other (Z)"
  end
  if value == "b" then
    return "Ord Rej Reason 2: By Minimum Trading Volume (b)"
  end
  if value == "c" then
    return "Ord Rej Reason 2: Price Not According To The Size Typology (c)"
  end
  if value == "d" then
    return "Ord Rej Reason 2: The Order Volumemust Be A Multiple Of The Trading Lot Size (d)"
  end
  if value == "g" then
    return "Ord Rej Reason 2: Incorrect Price (g)"
  end
  if value == "h" then
    return "Ord Rej Reason 2: Incorrect Volume (h)"
  end
  if value == "i" then
    return "Ord Rej Reason 2: Incorrect Date (i)"
  end
  if value == "k" then
    return "Ord Rej Reason 2: By Contract Status (k)"
  end
  if value == "o" then
    return "Ord Rej Reason 2: By Selfmatch Prevention (o)"
  end
  if value == "x" then
    return "Ord Rej Reason 2: Invalid Ork Fields (x)"
  end
  if value == "L" then
    return "Ord Rej Reason 2: Priority Change Due To Change In Price (L)"
  end
  if value == "M" then
    return "Ord Rej Reason 2: Priority Change Due To Volume Increase (M)"
  end
  if value == "N" then
    return "Ord Rej Reason 2: Priority Change Due To New Client Account Capacity (N)"
  end
  if value == "P" then
    return "Ord Rej Reason 2: Priority Change Due To Both Price Change And Volume Increase (P)"
  end
  if value == "R" then
    return "Ord Rej Reason 2: Priority Change Due To Both Price And Client Account (R)"
  end
  if value == "S" then
    return "Ord Rej Reason 2: Priority Change Due To Both Volume Increase And Client Account (S)"
  end
  if value == "T" then
    return "Ord Rej Reason 2: Modification Without Priority Change (T)"
  end
  if value == "U" then
    return "Ord Rej Reason 2: Stop Order Triggered At The Close Order Activation (U)"
  end
  if value == "V" then
    return "Ord Rej Reason 2: Not A Member Of Pit (V)"
  end
  if value == "Y" then
    return "Ord Rej Reason 2: New Volume Shown (Y)"
  end
  if value == "q" then
    return "Ord Rej Reason 2: Not Executed Due To Exceded Volume Cap (q)"
  end

  return "Ord Rej Reason 2: Unknown("..value..")"
end

-- Dissect: Ord Rej Reason 2
bme_bmefixedincome_orderentry_bmegate_v1_6.ord_rej_reason_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.ord_rej_reason_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.ord_rej_reason_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ord_rej_reason_2, range, value, display)

  return offset + length, value
end

-- Ord Status
bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status = {}

-- Size: Ord Status
bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status.size = 1

-- Display: Ord Status
bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status.display = function(value)
  if value == "0" then
    return "Ord Status: Pending No Volume Filled (0)"
  end
  if value == "8" then
    return "Ord Status: Rejected (8)"
  end
  if value == "1" then
    return "Ord Status: Parcially Filled (1)"
  end
  if value == "2" then
    return "Ord Status: Totally Filled (2)"
  end
  if value == "4" then
    return "Ord Status: Cancelled Not Filled (4)"
  end
  if value == "P" then
    return "Ord Status: Cancelled Partially Filled (P)"
  end
  if value == "A" then
    return "Ord Status: Nonworking Order Pending Validation (A)"
  end
  if value == "S" then
    return "Ord Status: Nonworking Order Pending Activation (S)"
  end
  if value == "C" then
    return "Ord Status: Expired (C)"
  end

  return "Ord Status: Unknown("..value..")"
end

-- Dissect: Ord Status
bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Ord Status 2
bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status_2 = {}

-- Size: Ord Status 2
bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status_2.size = 1

-- Display: Ord Status 2
bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status_2.display = function(value)
  if value == "0" then
    return "Ord Status 2: Pending No Volume Filled (0)"
  end
  if value == "8" then
    return "Ord Status 2: Rejected (8)"
  end
  if value == "1" then
    return "Ord Status 2: Parcially Filled (1)"
  end
  if value == "2" then
    return "Ord Status 2: Totally Filled (2)"
  end
  if value == "4" then
    return "Ord Status 2: Cancelled Not Filled (4)"
  end
  if value == "P" then
    return "Ord Status 2: Cancelled Partially Filled (P)"
  end
  if value == "A" then
    return "Ord Status 2: Nonworking Order Pending Validation (A)"
  end
  if value == "S" then
    return "Ord Status 2: Nonworking Order Pending Activation (S)"
  end

  return "Ord Status 2: Unknown("..value..")"
end

-- Dissect: Ord Status 2
bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ord_status_2, range, value, display)

  return offset + length, value
end

-- Order Id
bme_bmefixedincome_orderentry_bmegate_v1_6.order_id = {}

-- Size: Order Id
bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.size = 4

-- Display: Order Id
bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.order_id_2 = {}

-- Size: Order Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.order_id_2.size = 4

-- Display: Order Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.order_id_2.display = function(value)
  return "Order Id 2: "..value
end

-- Dissect: Order Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.order_id_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.order_id_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.order_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_id_2, range, value, display)

  return offset + length, value
end

-- Order Number Of Decimals
bme_bmefixedincome_orderentry_bmegate_v1_6.order_number_of_decimals = {}

-- Size: Order Number Of Decimals
bme_bmefixedincome_orderentry_bmegate_v1_6.order_number_of_decimals.size = 1

-- Display: Order Number Of Decimals
bme_bmefixedincome_orderentry_bmegate_v1_6.order_number_of_decimals.display = function(value)
  return "Order Number Of Decimals: "..value
end

-- Dissect: Order Number Of Decimals
bme_bmefixedincome_orderentry_bmegate_v1_6.order_number_of_decimals.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.order_number_of_decimals.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.order_number_of_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_number_of_decimals, range, value, display)

  return offset + length, value
end

-- Order Or Quote Cancel
bme_bmefixedincome_orderentry_bmegate_v1_6.order_or_quote_cancel = {}

-- Size: Order Or Quote Cancel
bme_bmefixedincome_orderentry_bmegate_v1_6.order_or_quote_cancel.size = 1

-- Display: Order Or Quote Cancel
bme_bmefixedincome_orderentry_bmegate_v1_6.order_or_quote_cancel.display = function(value)
  if value == "N" then
    return "Order Or Quote Cancel: Orders Only (N)"
  end
  if value == "Q" then
    return "Order Or Quote Cancel: Quotes Only (Q)"
  end
  if value == "T" then
    return "Order Or Quote Cancel: Total Cancellation Orders And Quotes (T)"
  end

  return "Order Or Quote Cancel: Unknown("..value..")"
end

-- Dissect: Order Or Quote Cancel
bme_bmefixedincome_orderentry_bmegate_v1_6.order_or_quote_cancel.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.order_or_quote_cancel.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.order_or_quote_cancel.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_or_quote_cancel, range, value, display)

  return offset + length, value
end

-- Order Qty
bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty = {}

-- Size: Order Qty
bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.size = 4

-- Display: Order Qty
bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Order Qty 2
bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty_2 = {}

-- Size: Order Qty 2
bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty_2.size = 4

-- Display: Order Qty 2
bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty_2.display = function(value)
  return "Order Qty 2: "..value
end

-- Dissect: Order Qty 2
bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_qty_2, range, value, display)

  return offset + length, value
end

-- Order Security Code
bme_bmefixedincome_orderentry_bmegate_v1_6.order_security_code = {}

-- Size: Order Security Code
bme_bmefixedincome_orderentry_bmegate_v1_6.order_security_code.size = 4

-- Display: Order Security Code
bme_bmefixedincome_orderentry_bmegate_v1_6.order_security_code.display = function(value)
  return "Order Security Code: "..value
end

-- Dissect: Order Security Code
bme_bmefixedincome_orderentry_bmegate_v1_6.order_security_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.order_security_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.order_security_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_security_code, range, value, display)

  return offset + length, value
end

-- Order Security Code 2
bme_bmefixedincome_orderentry_bmegate_v1_6.order_security_code_2 = {}

-- Size: Order Security Code 2
bme_bmefixedincome_orderentry_bmegate_v1_6.order_security_code_2.size = 4

-- Display: Order Security Code 2
bme_bmefixedincome_orderentry_bmegate_v1_6.order_security_code_2.display = function(value)
  return "Order Security Code 2: "..value
end

-- Dissect: Order Security Code 2
bme_bmefixedincome_orderentry_bmegate_v1_6.order_security_code_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.order_security_code_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.order_security_code_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_security_code_2, range, value, display)

  return offset + length, value
end

-- Order Static Range
bme_bmefixedincome_orderentry_bmegate_v1_6.order_static_range = {}

-- Size: Order Static Range
bme_bmefixedincome_orderentry_bmegate_v1_6.order_static_range.size = 8

-- Display: Order Static Range
bme_bmefixedincome_orderentry_bmegate_v1_6.order_static_range.display = function(value)
  return "Order Static Range: "..value
end

-- Translate: Order Static Range
bme_bmefixedincome_orderentry_bmegate_v1_6.order_static_range.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Order Static Range
bme_bmefixedincome_orderentry_bmegate_v1_6.order_static_range.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.order_static_range.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.order_static_range.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.order_static_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_static_range, range, value, display)

  return offset + length, value
end

-- Password
bme_bmefixedincome_orderentry_bmegate_v1_6.password = {}

-- Size: Password
bme_bmefixedincome_orderentry_bmegate_v1_6.password.size = 10

-- Display: Password
bme_bmefixedincome_orderentry_bmegate_v1_6.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
bme_bmefixedincome_orderentry_bmegate_v1_6.password.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.password.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.password, range, value, display)

  return offset + length, value
end

-- Persistence
bme_bmefixedincome_orderentry_bmegate_v1_6.persistence = {}

-- Size: Persistence
bme_bmefixedincome_orderentry_bmegate_v1_6.persistence.size = 1

-- Display: Persistence
bme_bmefixedincome_orderentry_bmegate_v1_6.persistence.display = function(value)
  if value == "C" then
    return "Persistence: Cancel On Disconnection (C)"
  end
  if value == "P" then
    return "Persistence: Persist On Disconnection (P)"
  end

  return "Persistence: Unknown("..value..")"
end

-- Dissect: Persistence
bme_bmefixedincome_orderentry_bmegate_v1_6.persistence.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.persistence.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.persistence.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.persistence, range, value, display)

  return offset + length, value
end

-- Persistence 2
bme_bmefixedincome_orderentry_bmegate_v1_6.persistence_2 = {}

-- Size: Persistence 2
bme_bmefixedincome_orderentry_bmegate_v1_6.persistence_2.size = 1

-- Display: Persistence 2
bme_bmefixedincome_orderentry_bmegate_v1_6.persistence_2.display = function(value)
  if value == "C" then
    return "Persistence 2: Cancel On Disconnection (C)"
  end
  if value == "P" then
    return "Persistence 2: Persist On Disconnection (P)"
  end

  return "Persistence 2: Unknown("..value..")"
end

-- Dissect: Persistence 2
bme_bmefixedincome_orderentry_bmegate_v1_6.persistence_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.persistence_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.persistence_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.persistence_2, range, value, display)

  return offset + length, value
end

-- Post Deferral Publication Type
bme_bmefixedincome_orderentry_bmegate_v1_6.post_deferral_publication_type = {}

-- Size: Post Deferral Publication Type
bme_bmefixedincome_orderentry_bmegate_v1_6.post_deferral_publication_type.size = 1

-- Display: Post Deferral Publication Type
bme_bmefixedincome_orderentry_bmegate_v1_6.post_deferral_publication_type.display = function(value)
  if value == " " then
    return "Post Deferral Publication Type: Not Applicable No Relevant Deferral Or Enrichment Type (<whitespace>)"
  end

  return "Post Deferral Publication Type: Unknown("..value..")"
end

-- Dissect: Post Deferral Publication Type
bme_bmefixedincome_orderentry_bmegate_v1_6.post_deferral_publication_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.post_deferral_publication_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.post_deferral_publication_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.post_deferral_publication_type, range, value, display)

  return offset + length, value
end

-- Pre Trade Transparency Waiver
bme_bmefixedincome_orderentry_bmegate_v1_6.pre_trade_transparency_waiver = {}

-- Size: Pre Trade Transparency Waiver
bme_bmefixedincome_orderentry_bmegate_v1_6.pre_trade_transparency_waiver.size = 1

-- Display: Pre Trade Transparency Waiver
bme_bmefixedincome_orderentry_bmegate_v1_6.pre_trade_transparency_waiver.display = function(value)
  if value == " " then
    return "Pre Trade Transparency Waiver: Negotiated Trade Nego (<whitespace>)"
  end

  return "Pre Trade Transparency Waiver: Unknown("..value..")"
end

-- Dissect: Pre Trade Transparency Waiver
bme_bmefixedincome_orderentry_bmegate_v1_6.pre_trade_transparency_waiver.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.pre_trade_transparency_waiver.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.pre_trade_transparency_waiver.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.pre_trade_transparency_waiver, range, value, display)

  return offset + length, value
end

-- Price
bme_bmefixedincome_orderentry_bmegate_v1_6.price = {}

-- Size: Price
bme_bmefixedincome_orderentry_bmegate_v1_6.price.size = 8

-- Display: Price
bme_bmefixedincome_orderentry_bmegate_v1_6.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
bme_bmefixedincome_orderentry_bmegate_v1_6.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
bme_bmefixedincome_orderentry_bmegate_v1_6.price.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.price.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.price, range, value, display)

  return offset + length, value
end

-- Price 2
bme_bmefixedincome_orderentry_bmegate_v1_6.price_2 = {}

-- Size: Price 2
bme_bmefixedincome_orderentry_bmegate_v1_6.price_2.size = 8

-- Display: Price 2
bme_bmefixedincome_orderentry_bmegate_v1_6.price_2.display = function(value)
  return "Price 2: "..value
end

-- Translate: Price 2
bme_bmefixedincome_orderentry_bmegate_v1_6.price_2.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price 2
bme_bmefixedincome_orderentry_bmegate_v1_6.price_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.price_2.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.price_2.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price Type
bme_bmefixedincome_orderentry_bmegate_v1_6.price_type = {}

-- Size: Price Type
bme_bmefixedincome_orderentry_bmegate_v1_6.price_type.size = 1

-- Display: Price Type
bme_bmefixedincome_orderentry_bmegate_v1_6.price_type.display = function(value)
  if value == "1" then
    return "Price Type: Price (1)"
  end
  if value == "2" then
    return "Price Type: Rate (2)"
  end

  return "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
bme_bmefixedincome_orderentry_bmegate_v1_6.price_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.price_type, range, value, display)

  return offset + length, value
end

-- Priority
bme_bmefixedincome_orderentry_bmegate_v1_6.priority = {}

-- Size: Priority
bme_bmefixedincome_orderentry_bmegate_v1_6.priority.size = 4

-- Display: Priority
bme_bmefixedincome_orderentry_bmegate_v1_6.priority.display = function(value)
  return "Priority: "..value
end

-- Dissect: Priority
bme_bmefixedincome_orderentry_bmegate_v1_6.priority.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.priority.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.priority, range, value, display)

  return offset + length, value
end

-- Priority 2
bme_bmefixedincome_orderentry_bmegate_v1_6.priority_2 = {}

-- Size: Priority 2
bme_bmefixedincome_orderentry_bmegate_v1_6.priority_2.size = 4

-- Display: Priority 2
bme_bmefixedincome_orderentry_bmegate_v1_6.priority_2.display = function(value)
  return "Priority 2: "..value
end

-- Dissect: Priority 2
bme_bmefixedincome_orderentry_bmegate_v1_6.priority_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.priority_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.priority_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.priority_2, range, value, display)

  return offset + length, value
end

-- Protocol Version
bme_bmefixedincome_orderentry_bmegate_v1_6.protocol_version = {}

-- Size: Protocol Version
bme_bmefixedincome_orderentry_bmegate_v1_6.protocol_version.size = 6

-- Display: Protocol Version
bme_bmefixedincome_orderentry_bmegate_v1_6.protocol_version.display = function(value)
  if value == "BBP001" then
    return "Protocol Version: BBP001 (BBP001)"
  end

  return "Protocol Version: Unknown("..value..")"
end

-- Dissect: Protocol Version
bme_bmefixedincome_orderentry_bmegate_v1_6.protocol_version.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.protocol_version.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.protocol_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Publish Date And Time
bme_bmefixedincome_orderentry_bmegate_v1_6.publish_date_and_time = {}

-- Size: Publish Date And Time
bme_bmefixedincome_orderentry_bmegate_v1_6.publish_date_and_time.size = 8

-- Display: Publish Date And Time
bme_bmefixedincome_orderentry_bmegate_v1_6.publish_date_and_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Publish Date And Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Publish Date And Time
bme_bmefixedincome_orderentry_bmegate_v1_6.publish_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.publish_date_and_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.publish_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.publish_date_and_time, range, value, display)

  return offset + length, value
end

-- Received Dept Id
bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id = {}

-- Size: Received Dept Id
bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id.size = 1

-- Display: Received Dept Id
bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id.display = function(value)
  if value == "I" then
    return "Received Dept Id: Orders Placed Through The Internet (I)"
  end
  if value == "B" then
    return "Received Dept Id: Orders Placed Through The Bank Branch Network (B)"
  end
  if value == "T" then
    return "Received Dept Id: Orders Placed Through Automatic Trading Systems (T)"
  end
  if value == "C" then
    return "Received Dept Id: Orders Placed By Important Clients (C)"
  end
  if value == "O" then
    return "Received Dept Id: Others (O)"
  end
  if value == " " then
    return "Received Dept Id: Na Workstation (<whitespace>)"
  end

  return "Received Dept Id: Unknown("..value..")"
end

-- Dissect: Received Dept Id
bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.received_dept_id, range, value, display)

  return offset + length, value
end

-- Received Dept Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id_2 = {}

-- Size: Received Dept Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id_2.size = 1

-- Display: Received Dept Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id_2.display = function(value)
  if value == "I" then
    return "Received Dept Id 2: Orders Placed Through The Internet (I)"
  end
  if value == "B" then
    return "Received Dept Id 2: Orders Placed Through The Bank Branch Network (B)"
  end
  if value == "T" then
    return "Received Dept Id 2: Orders Placed Through Automatic Trading Systems (T)"
  end
  if value == "C" then
    return "Received Dept Id 2: Orders Placed By Important Clients (C)"
  end
  if value == "O" then
    return "Received Dept Id 2: Others (O)"
  end
  if value == " " then
    return "Received Dept Id 2: Na Workstation (<whitespace>)"
  end

  return "Received Dept Id 2: Unknown("..value..")"
end

-- Dissect: Received Dept Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.received_dept_id_2, range, value, display)

  return offset + length, value
end

-- Ref Msg Type
bme_bmefixedincome_orderentry_bmegate_v1_6.ref_msg_type = {}

-- Size: Ref Msg Type
bme_bmefixedincome_orderentry_bmegate_v1_6.ref_msg_type.size = 1

-- Display: Ref Msg Type
bme_bmefixedincome_orderentry_bmegate_v1_6.ref_msg_type.display = function(value)
  return "Ref Msg Type: "..value
end

-- Dissect: Ref Msg Type
bme_bmefixedincome_orderentry_bmegate_v1_6.ref_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.ref_msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.ref_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.ref_msg_type, range, value, display)

  return offset + length, value
end

-- Reference Price
bme_bmefixedincome_orderentry_bmegate_v1_6.reference_price = {}

-- Size: Reference Price
bme_bmefixedincome_orderentry_bmegate_v1_6.reference_price.size = 8

-- Display: Reference Price
bme_bmefixedincome_orderentry_bmegate_v1_6.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
bme_bmefixedincome_orderentry_bmegate_v1_6.reference_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Reference Price
bme_bmefixedincome_orderentry_bmegate_v1_6.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.reference_price.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Request Id
bme_bmefixedincome_orderentry_bmegate_v1_6.request_id = {}

-- Size: Request Id
bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size = 4

-- Display: Request Id
bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.display = function(value)
  return "Request Id: "..value
end

-- Dissect: Request Id
bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.request_id, range, value, display)

  return offset + length, value
end

-- Request Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.request_id_2 = {}

-- Size: Request Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.request_id_2.size = 4

-- Display: Request Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.request_id_2.display = function(value)
  return "Request Id 2: "..value
end

-- Dissect: Request Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.request_id_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.request_id_2, range, value, display)

  return offset + length, value
end

-- Round Lot
bme_bmefixedincome_orderentry_bmegate_v1_6.round_lot = {}

-- Size: Round Lot
bme_bmefixedincome_orderentry_bmegate_v1_6.round_lot.size = 4

-- Display: Round Lot
bme_bmefixedincome_orderentry_bmegate_v1_6.round_lot.display = function(value)
  return "Round Lot: "..value
end

-- Dissect: Round Lot
bme_bmefixedincome_orderentry_bmegate_v1_6.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.round_lot.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Secondary Exec Id
bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id = {}

-- Size: Secondary Exec Id
bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id.size = 4

-- Display: Secondary Exec Id
bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id.display = function(value)
  return "Secondary Exec Id: "..value
end

-- Dissect: Secondary Exec Id
bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.secondary_exec_id, range, value, display)

  return offset + length, value
end

-- Secondary Exec Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id_2 = {}

-- Size: Secondary Exec Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id_2.size = 4

-- Display: Secondary Exec Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id_2.display = function(value)
  return "Secondary Exec Id 2: "..value
end

-- Dissect: Secondary Exec Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.secondary_exec_id_2, range, value, display)

  return offset + length, value
end

-- Secondary Order Id
bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id = {}

-- Size: Secondary Order Id
bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.size = 4

-- Display: Secondary Order Id
bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.display = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Secondary Order Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id_2 = {}

-- Size: Secondary Order Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id_2.size = 4

-- Display: Secondary Order Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id_2.display = function(value)
  return "Secondary Order Id 2: "..value
end

-- Dissect: Secondary Order Id 2
bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.secondary_order_id_2, range, value, display)

  return offset + length, value
end

-- Security Code
bme_bmefixedincome_orderentry_bmegate_v1_6.security_code = {}

-- Size: Security Code
bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size = 4

-- Display: Security Code
bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Security Code: No Value"
  end

  return "Security Code: "..value
end

-- Dissect: Security Code
bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.security_code, range, value, display)

  return offset + length, value
end

-- Security Description
bme_bmefixedincome_orderentry_bmegate_v1_6.security_description = {}

-- Size: Security Description
bme_bmefixedincome_orderentry_bmegate_v1_6.security_description.size = 80

-- Display: Security Description
bme_bmefixedincome_orderentry_bmegate_v1_6.security_description.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Description: No Value"
  end

  return "Security Description: "..value
end

-- Dissect: Security Description
bme_bmefixedincome_orderentry_bmegate_v1_6.security_description.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.security_description.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.security_description.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.security_description, range, value, display)

  return offset + length, value
end

-- Security Group
bme_bmefixedincome_orderentry_bmegate_v1_6.security_group = {}

-- Size: Security Group
bme_bmefixedincome_orderentry_bmegate_v1_6.security_group.size = 2

-- Display: Security Group
bme_bmefixedincome_orderentry_bmegate_v1_6.security_group.display = function(value)
  if value == "CR" then
    return "Security Group: MERF Corporates (CR)"
  end
  if value == "DB" then
    return "Security Group: Bilbao Stock Exchange Debt (DB)"
  end
  if value == "DC" then
    return "Security Group: Barcelona Stock Exchange Debt (DC)"
  end
  if value == "CP" then
    return "Security Group: AIAF SEND Corporates (CP)"
  end
  if value == "DE" then
    return "Security Group: AIAF Spanish Treasury Debt (DE)"
  end
  if value == "DT" then
    return "Security Group: AIAF DLT Issues (DT)"
  end
  if value == "EX" then
    return "Security Group: AIAF Non Spanish Issues (EX)"
  end
  if value == "MA" then
    return "Security Group: MARF Corporates (MA)"
  end
  if value == "DS" then
    return "Security Group: Senaf Spanish Treasury Debt (DS)"
  end

  return "Security Group: Unknown("..value..")"
end

-- Dissect: Security Group
bme_bmefixedincome_orderentry_bmegate_v1_6.security_group.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.security_group.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.security_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.security_group, range, value, display)

  return offset + length, value
end

-- Security Name
bme_bmefixedincome_orderentry_bmegate_v1_6.security_name = {}

-- Size: Security Name
bme_bmefixedincome_orderentry_bmegate_v1_6.security_name.size = 40

-- Display: Security Name
bme_bmefixedincome_orderentry_bmegate_v1_6.security_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Name: No Value"
  end

  return "Security Name: "..value
end

-- Dissect: Security Name
bme_bmefixedincome_orderentry_bmegate_v1_6.security_name.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.security_name.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.security_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.security_name, range, value, display)

  return offset + length, value
end

-- Security Status
bme_bmefixedincome_orderentry_bmegate_v1_6.security_status = {}

-- Size: Security Status
bme_bmefixedincome_orderentry_bmegate_v1_6.security_status.size = 1

-- Display: Security Status
bme_bmefixedincome_orderentry_bmegate_v1_6.security_status.display = function(value)
  if value == "1" then
    return "Security Status: Active (1)"
  end
  if value == "2" then
    return "Security Status: Inactive Provissionaly Assumed (2)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
bme_bmefixedincome_orderentry_bmegate_v1_6.security_status.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.security_status, range, value, display)

  return offset + length, value
end

-- Security Trading Status
bme_bmefixedincome_orderentry_bmegate_v1_6.security_trading_status = {}

-- Size: Security Trading Status
bme_bmefixedincome_orderentry_bmegate_v1_6.security_trading_status.size = 1

-- Display: Security Trading Status
bme_bmefixedincome_orderentry_bmegate_v1_6.security_trading_status.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.security_trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Security Type
bme_bmefixedincome_orderentry_bmegate_v1_6.security_type = {}

-- Size: Security Type
bme_bmefixedincome_orderentry_bmegate_v1_6.security_type.size = 2

-- Display: Security Type
bme_bmefixedincome_orderentry_bmegate_v1_6.security_type.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.security_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.security_type.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.security_type, range, value, display)

  return offset + length, value
end

-- Sequence Number
bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number = {}

-- Size: Sequence Number
bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size = 4

-- Display: Sequence Number
bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequence Number To
bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number_to = {}

-- Size: Sequence Number To
bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number_to.size = 4

-- Display: Sequence Number To
bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number_to.display = function(value)
  return "Sequence Number To: "..value
end

-- Dissect: Sequence Number To
bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number_to.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number_to.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.sequence_number_to, range, value, display)

  return offset + length, value
end

-- Session Date
bme_bmefixedincome_orderentry_bmegate_v1_6.session_date = {}

-- Size: Session Date
bme_bmefixedincome_orderentry_bmegate_v1_6.session_date.size = 4

-- Display: Session Date
bme_bmefixedincome_orderentry_bmegate_v1_6.session_date.display = function(value)
  return string.format("Session Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Session Date
bme_bmefixedincome_orderentry_bmegate_v1_6.session_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.session_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.session_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.session_date, range, value, display)

  return offset + length, value
end

-- Session Reject Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.session_reject_reason = {}

-- Size: Session Reject Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.session_reject_reason.size = 1

-- Display: Session Reject Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.session_reject_reason.display = function(value)
  if value == 11 then
    return "Session Reject Reason: Invalid Msg Type (11)"
  end
  if value == 30 then
    return "Session Reject Reason: Wrong Message Size (30)"
  end
  if value == 31 then
    return "Session Reject Reason: Throttle Limit Exceeded (31)"
  end
  if value == 33 then
    return "Session Reject Reason: Invalid Client Session Status (33)"
  end
  if value == 99 then
    return "Session Reject Reason: Other (99)"
  end

  return "Session Reject Reason: Unknown("..value..")"
end

-- Dissect: Session Reject Reason
bme_bmefixedincome_orderentry_bmegate_v1_6.session_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.session_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.session_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.session_reject_reason, range, value, display)

  return offset + length, value
end

-- Settl Date
bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date = {}

-- Size: Settl Date
bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date.size = 4

-- Display: Settl Date
bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date.display = function(value)
  return string.format("Settl Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Settl Date
bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.settl_date, range, value, display)

  return offset + length, value
end

-- Settl Date 2
bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date_2 = {}

-- Size: Settl Date 2
bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date_2.size = 4

-- Display: Settl Date 2
bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date_2.display = function(value)
  return string.format("Settl Date 2: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Settl Date 2
bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date_2.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.settl_date_2, range, value, display)

  return offset + length, value
end

-- Settlement System
bme_bmefixedincome_orderentry_bmegate_v1_6.settlement_system = {}

-- Size: Settlement System
bme_bmefixedincome_orderentry_bmegate_v1_6.settlement_system.size = 1

-- Display: Settlement System
bme_bmefixedincome_orderentry_bmegate_v1_6.settlement_system.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.settlement_system.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.settlement_system.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.settlement_system.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.settlement_system, range, value, display)

  return offset + length, value
end

-- Side
bme_bmefixedincome_orderentry_bmegate_v1_6.side = {}

-- Size: Side
bme_bmefixedincome_orderentry_bmegate_v1_6.side.size = 1

-- Display: Side
bme_bmefixedincome_orderentry_bmegate_v1_6.side.display = function(value)
  if value == "1" then
    return "Side: Buy (1)"
  end
  if value == "2" then
    return "Side: Sell (2)"
  end
  if value == "7" then
    return "Side: Undisclosed (7)"
  end
  if value == ? then
    return "Side: No Value"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
bme_bmefixedincome_orderentry_bmegate_v1_6.side.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.side, range, value, display)

  return offset + length, value
end

-- Software Name
bme_bmefixedincome_orderentry_bmegate_v1_6.software_name = {}

-- Size: Software Name
bme_bmefixedincome_orderentry_bmegate_v1_6.software_name.size = 25

-- Display: Software Name
bme_bmefixedincome_orderentry_bmegate_v1_6.software_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Software Name: No Value"
  end

  return "Software Name: "..value
end

-- Dissect: Software Name
bme_bmefixedincome_orderentry_bmegate_v1_6.software_name.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.software_name.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.software_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.software_name, range, value, display)

  return offset + length, value
end

-- Spread To Index
bme_bmefixedincome_orderentry_bmegate_v1_6.spread_to_index = {}

-- Size: Spread To Index
bme_bmefixedincome_orderentry_bmegate_v1_6.spread_to_index.size = 8

-- Display: Spread To Index
bme_bmefixedincome_orderentry_bmegate_v1_6.spread_to_index.display = function(value)
  return "Spread To Index: "..value
end

-- Translate: Spread To Index
bme_bmefixedincome_orderentry_bmegate_v1_6.spread_to_index.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Spread To Index
bme_bmefixedincome_orderentry_bmegate_v1_6.spread_to_index.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.spread_to_index.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.spread_to_index.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.spread_to_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.spread_to_index, range, value, display)

  return offset + length, value
end

-- Sst Ipost
bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipost = {}

-- Size: Sst Ipost
bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipost.size = 8

-- Display: Sst Ipost
bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipost.display = function(value)
  return "Sst Ipost: "..value
end

-- Translate: Sst Ipost
bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipost.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Sst Ipost
bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipost.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipost.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipost.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipost.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.sst_ipost, range, value, display)

  return offset + length, value
end

-- Sst Ipre
bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipre = {}

-- Size: Sst Ipre
bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipre.size = 8

-- Display: Sst Ipre
bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipre.display = function(value)
  return "Sst Ipre: "..value
end

-- Translate: Sst Ipre
bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipre.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Sst Ipre
bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipre.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipre.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipre.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipre.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.sst_ipre, range, value, display)

  return offset + length, value
end

-- Start Date
bme_bmefixedincome_orderentry_bmegate_v1_6.start_date = {}

-- Size: Start Date
bme_bmefixedincome_orderentry_bmegate_v1_6.start_date.size = 4

-- Display: Start Date
bme_bmefixedincome_orderentry_bmegate_v1_6.start_date.display = function(value)
  return string.format("Start Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Start Date
bme_bmefixedincome_orderentry_bmegate_v1_6.start_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.start_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.start_date, range, value, display)

  return offset + length, value
end

-- Static Range Type
bme_bmefixedincome_orderentry_bmegate_v1_6.static_range_type = {}

-- Size: Static Range Type
bme_bmefixedincome_orderentry_bmegate_v1_6.static_range_type.size = 1

-- Display: Static Range Type
bme_bmefixedincome_orderentry_bmegate_v1_6.static_range_type.display = function(value)
  if value == "P" then
    return "Static Range Type: Percentage (P)"
  end
  if value == "T" then
    return "Static Range Type: Price (T)"
  end

  return "Static Range Type: Unknown("..value..")"
end

-- Dissect: Static Range Type
bme_bmefixedincome_orderentry_bmegate_v1_6.static_range_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.static_range_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.static_range_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.static_range_type, range, value, display)

  return offset + length, value
end

-- Status
bme_bmefixedincome_orderentry_bmegate_v1_6.status = {}

-- Size: Status
bme_bmefixedincome_orderentry_bmegate_v1_6.status.size = 1

-- Display: Status
bme_bmefixedincome_orderentry_bmegate_v1_6.status.display = function(value)
  if value == 0 then
    return "Status: False (0)"
  end
  if value == 1 then
    return "Status: True (1)"
  end
  if value == 255 then
    return "Status: No Value"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
bme_bmefixedincome_orderentry_bmegate_v1_6.status.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.status, range, value, display)

  return offset + length, value
end

-- Strippable
bme_bmefixedincome_orderentry_bmegate_v1_6.strippable = {}

-- Size: Strippable
bme_bmefixedincome_orderentry_bmegate_v1_6.strippable.size = 1

-- Display: Strippable
bme_bmefixedincome_orderentry_bmegate_v1_6.strippable.display = function(value)
  if value == 0 then
    return "Strippable: False (0)"
  end
  if value == 1 then
    return "Strippable: True (1)"
  end
  if value == 255 then
    return "Strippable: No Value"
  end

  return "Strippable: Unknown("..value..")"
end

-- Dissect: Strippable
bme_bmefixedincome_orderentry_bmegate_v1_6.strippable.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.strippable.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.strippable.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.strippable, range, value, display)

  return offset + length, value
end

-- Sub Member
bme_bmefixedincome_orderentry_bmegate_v1_6.sub_member = {}

-- Size: Sub Member
bme_bmefixedincome_orderentry_bmegate_v1_6.sub_member.size = 1

-- Display: Sub Member
bme_bmefixedincome_orderentry_bmegate_v1_6.sub_member.display = function(value)
  return "Sub Member: "..value
end

-- Dissect: Sub Member
bme_bmefixedincome_orderentry_bmegate_v1_6.sub_member.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.sub_member.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.sub_member.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.sub_member, range, value, display)

  return offset + length, value
end

-- Sub Member 2
bme_bmefixedincome_orderentry_bmegate_v1_6.sub_member_2 = {}

-- Size: Sub Member 2
bme_bmefixedincome_orderentry_bmegate_v1_6.sub_member_2.size = 1

-- Display: Sub Member 2
bme_bmefixedincome_orderentry_bmegate_v1_6.sub_member_2.display = function(value)
  return "Sub Member 2: "..value
end

-- Dissect: Sub Member 2
bme_bmefixedincome_orderentry_bmegate_v1_6.sub_member_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.sub_member_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.sub_member_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.sub_member_2, range, value, display)

  return offset + length, value
end

-- Subscriptions
bme_bmefixedincome_orderentry_bmegate_v1_6.subscriptions = {}

-- Size: Subscriptions
bme_bmefixedincome_orderentry_bmegate_v1_6.subscriptions.size = 1

-- Display: Subscriptions
bme_bmefixedincome_orderentry_bmegate_v1_6.subscriptions.display = function(value)
  return "Subscriptions: "..value
end

-- Dissect: Subscriptions
bme_bmefixedincome_orderentry_bmegate_v1_6.subscriptions.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.subscriptions.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.subscriptions.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.subscriptions, range, value, display)

  return offset + length, value
end

-- Symbol
bme_bmefixedincome_orderentry_bmegate_v1_6.symbol = {}

-- Size: Symbol
bme_bmefixedincome_orderentry_bmegate_v1_6.symbol.size = 22

-- Display: Symbol
bme_bmefixedincome_orderentry_bmegate_v1_6.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
bme_bmefixedincome_orderentry_bmegate_v1_6.symbol.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.symbol.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Isin
bme_bmefixedincome_orderentry_bmegate_v1_6.symbol_isin = {}

-- Size: Symbol Isin
bme_bmefixedincome_orderentry_bmegate_v1_6.symbol_isin.size = 12

-- Display: Symbol Isin
bme_bmefixedincome_orderentry_bmegate_v1_6.symbol_isin.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Isin: No Value"
  end

  return "Symbol Isin: "..value
end

-- Dissect: Symbol Isin
bme_bmefixedincome_orderentry_bmegate_v1_6.symbol_isin.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.symbol_isin.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.symbol_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.symbol_isin, range, value, display)

  return offset + length, value
end

-- Test Production Ind
bme_bmefixedincome_orderentry_bmegate_v1_6.test_production_ind = {}

-- Size: Test Production Ind
bme_bmefixedincome_orderentry_bmegate_v1_6.test_production_ind.size = 1

-- Display: Test Production Ind
bme_bmefixedincome_orderentry_bmegate_v1_6.test_production_ind.display = function(value)
  if value == "T" then
    return "Test Production Ind: Test (T)"
  end
  if value == "P" then
    return "Test Production Ind: Production (P)"
  end

  return "Test Production Ind: Unknown("..value..")"
end

-- Dissect: Test Production Ind
bme_bmefixedincome_orderentry_bmegate_v1_6.test_production_ind.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.test_production_ind.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.test_production_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.test_production_ind, range, value, display)

  return offset + length, value
end

-- Text C 58
bme_bmefixedincome_orderentry_bmegate_v1_6.text_c_58 = {}

-- Size: Text C 58
bme_bmefixedincome_orderentry_bmegate_v1_6.text_c_58.size = 58

-- Display: Text C 58
bme_bmefixedincome_orderentry_bmegate_v1_6.text_c_58.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text C 58: No Value"
  end

  return "Text C 58: "..value
end

-- Dissect: Text C 58
bme_bmefixedincome_orderentry_bmegate_v1_6.text_c_58.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.text_c_58.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.text_c_58.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.text_c_58, range, value, display)

  return offset + length, value
end

-- Text C 65
bme_bmefixedincome_orderentry_bmegate_v1_6.text_c_65 = {}

-- Size: Text C 65
bme_bmefixedincome_orderentry_bmegate_v1_6.text_c_65.size = 65

-- Display: Text C 65
bme_bmefixedincome_orderentry_bmegate_v1_6.text_c_65.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text C 65: No Value"
  end

  return "Text C 65: "..value
end

-- Dissect: Text C 65
bme_bmefixedincome_orderentry_bmegate_v1_6.text_c_65.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.text_c_65.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.text_c_65.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.text_c_65, range, value, display)

  return offset + length, value
end

-- Time In Force
bme_bmefixedincome_orderentry_bmegate_v1_6.time_in_force = {}

-- Size: Time In Force
bme_bmefixedincome_orderentry_bmegate_v1_6.time_in_force.size = 1

-- Display: Time In Force
bme_bmefixedincome_orderentry_bmegate_v1_6.time_in_force.display = function(value)
  if value == "0" then
    return "Time In Force: Day (0)"
  end
  if value == "3" then
    return "Time In Force: Immediate Or Cancel IOC (3)"
  end
  if value == "4" then
    return "Time In Force: Fill Or Kill FOK (4)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
bme_bmefixedincome_orderentry_bmegate_v1_6.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Trad Ses Status
bme_bmefixedincome_orderentry_bmegate_v1_6.trad_ses_status = {}

-- Size: Trad Ses Status
bme_bmefixedincome_orderentry_bmegate_v1_6.trad_ses_status.size = 1

-- Display: Trad Ses Status
bme_bmefixedincome_orderentry_bmegate_v1_6.trad_ses_status.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.trad_ses_status.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.trad_ses_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.trad_ses_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trad_ses_status, range, value, display)

  return offset + length, value
end

-- Trade Date
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_date = {}

-- Size: Trade Date
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_date.size = 8

-- Display: Trade Date
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_date.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Trade Date: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trade Date
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trade Price Condition
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_price_condition = {}

-- Size: Trade Price Condition
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_price_condition.size = 1

-- Display: Trade Price Condition
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_price_condition.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_price_condition.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_price_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_price_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trade_price_condition, range, value, display)

  return offset + length, value
end

-- Trade Session Date
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_session_date = {}

-- Size: Trade Session Date
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_session_date.size = 4

-- Display: Trade Session Date
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_session_date.display = function(value)
  return string.format("Trade Session Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Trade Session Date
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_session_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_session_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_session_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trade_session_date, range, value, display)

  return offset + length, value
end

-- Trade Type
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_type = {}

-- Size: Trade Type
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_type.size = 1

-- Display: Trade Type
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_type.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trader
bme_bmefixedincome_orderentry_bmegate_v1_6.trader = {}

-- Size: Trader
bme_bmefixedincome_orderentry_bmegate_v1_6.trader.size = 3

-- Display: Trader
bme_bmefixedincome_orderentry_bmegate_v1_6.trader.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trader: No Value"
  end

  return "Trader: "..value
end

-- Dissect: Trader
bme_bmefixedincome_orderentry_bmegate_v1_6.trader.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.trader.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trader, range, value, display)

  return offset + length, value
end

-- Trader 2
bme_bmefixedincome_orderentry_bmegate_v1_6.trader_2 = {}

-- Size: Trader 2
bme_bmefixedincome_orderentry_bmegate_v1_6.trader_2.size = 3

-- Display: Trader 2
bme_bmefixedincome_orderentry_bmegate_v1_6.trader_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trader 2: No Value"
  end

  return "Trader 2: "..value
end

-- Dissect: Trader 2
bme_bmefixedincome_orderentry_bmegate_v1_6.trader_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.trader_2.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.trader_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trader_2, range, value, display)

  return offset + length, value
end

-- Trading Obligation
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_obligation = {}

-- Size: Trading Obligation
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_obligation.size = 1

-- Display: Trading Obligation
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_obligation.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_obligation.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_obligation.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_obligation.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trading_obligation, range, value, display)

  return offset + length, value
end

-- Trading Scope B 1
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_scope_b_1 = {}

-- Size: Trading Scope B 1
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_scope_b_1.size = 1

-- Display: Trading Scope B 1
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_scope_b_1.display = function(value)
  return "Trading Scope B 1: "..value
end

-- Dissect: Trading Scope B 1
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_scope_b_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_scope_b_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_scope_b_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trading_scope_b_1, range, value, display)

  return offset + length, value
end

-- Trading Session Id
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_id = {}

-- Size: Trading Session Id
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_id.size = 1

-- Display: Trading Session Id
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_id.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Trading Session Sub Id
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_sub_id = {}

-- Size: Trading Session Sub Id
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_sub_id.size = 1

-- Display: Trading Session Sub Id
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_sub_id.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Trading Unit
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_unit = {}

-- Size: Trading Unit
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_unit.size = 1

-- Display: Trading Unit
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_unit.display = function(value)
  return "Trading Unit: "..value
end

-- Dissect: Trading Unit
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_unit.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trading_unit, range, value, display)

  return offset + length, value
end

-- Transaction Category
bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_category = {}

-- Size: Transaction Category
bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_category.size = 1

-- Display: Transaction Category
bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_category.display = function(value)
  if value == " " then
    return "Transaction Category: Normal Category (<whitespace>)"
  end
  if value == "Z" then
    return "Transaction Category: Package Trade Excluding Exchange For Physicals Tpac (Z)"
  end

  return "Transaction Category: Unknown("..value..")"
end

-- Dissect: Transaction Category
bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Transaction Date And Time
bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time = {}

-- Size: Transaction Date And Time
bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.size = 8

-- Display: Transaction Date And Time
bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transaction Date And Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transaction Date And Time
bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.transaction_date_and_time, range, value, display)

  return offset + length, value
end

-- Trd Match Id
bme_bmefixedincome_orderentry_bmegate_v1_6.trd_match_id = {}

-- Size: Trd Match Id
bme_bmefixedincome_orderentry_bmegate_v1_6.trd_match_id.size = 4

-- Display: Trd Match Id
bme_bmefixedincome_orderentry_bmegate_v1_6.trd_match_id.display = function(value)
  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
bme_bmefixedincome_orderentry_bmegate_v1_6.trd_match_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.trd_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.trd_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Type Of Redemption
bme_bmefixedincome_orderentry_bmegate_v1_6.type_of_redemption = {}

-- Size: Type Of Redemption
bme_bmefixedincome_orderentry_bmegate_v1_6.type_of_redemption.size = 2

-- Display: Type Of Redemption
bme_bmefixedincome_orderentry_bmegate_v1_6.type_of_redemption.display = function(value)
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
bme_bmefixedincome_orderentry_bmegate_v1_6.type_of_redemption.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.type_of_redemption.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.type_of_redemption.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.type_of_redemption, range, value, display)

  return offset + length, value
end

-- Username
bme_bmefixedincome_orderentry_bmegate_v1_6.username = {}

-- Size: Username
bme_bmefixedincome_orderentry_bmegate_v1_6.username.size = 7

-- Display: Username
bme_bmefixedincome_orderentry_bmegate_v1_6.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
bme_bmefixedincome_orderentry_bmegate_v1_6.username.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.username.size
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

  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.username, range, value, display)

  return offset + length, value
end

-- Volume Issued
bme_bmefixedincome_orderentry_bmegate_v1_6.volume_issued = {}

-- Size: Volume Issued
bme_bmefixedincome_orderentry_bmegate_v1_6.volume_issued.size = 8

-- Display: Volume Issued
bme_bmefixedincome_orderentry_bmegate_v1_6.volume_issued.display = function(value)
  return "Volume Issued: "..value
end

-- Translate: Volume Issued
bme_bmefixedincome_orderentry_bmegate_v1_6.volume_issued.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Volume Issued
bme_bmefixedincome_orderentry_bmegate_v1_6.volume_issued.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmefixedincome_orderentry_bmegate_v1_6.volume_issued.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmefixedincome_orderentry_bmegate_v1_6.volume_issued.translate(raw)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.volume_issued.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.volume_issued, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Bme BmeFixedIncome OrderEntry BmeGate 1.6
-----------------------------------------------------------------------

-- Execution Private Information 1 Leg Sell Order Entry Message
bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_1_leg_sell_order_entry_message = {}

-- Size: Execution Private Information 1 Leg Sell Order Entry Message
bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_1_leg_sell_order_entry_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trd_match_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trade_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.last_px.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.last_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.gross_trade_amt.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.designation.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.market_mechanism.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.algo_flag.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.alt_last_px.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_amt.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_p_8.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_category.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.priority.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.size

-- Display: Execution Private Information 1 Leg Sell Order Entry Message
bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_1_leg_sell_order_entry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Private Information 1 Leg Sell Order Entry Message
bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_1_leg_sell_order_entry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: U
  index, trd_match_id = bme_bmefixedincome_orderentry_bmegate_v1_6.trd_match_id.dissect(buffer, index, packet, parent)

  -- Trade Type: C
  index, trade_type = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_type.dissect(buffer, index, packet, parent)

  -- Last Px: P
  index, last_px = bme_bmefixedincome_orderentry_bmegate_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Q
  index, last_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.last_qty.dissect(buffer, index, packet, parent)

  -- Gross Trade Amt: A
  index, gross_trade_amt = bme_bmefixedincome_orderentry_bmegate_v1_6.gross_trade_amt.dissect(buffer, index, packet, parent)

  -- Designation: C
  index, designation = bme_bmefixedincome_orderentry_bmegate_v1_6.designation.dissect(buffer, index, packet, parent)

  -- Market Mechanism: C
  index, market_mechanism = bme_bmefixedincome_orderentry_bmegate_v1_6.market_mechanism.dissect(buffer, index, packet, parent)

  -- Algo Flag: F
  index, algo_flag = bme_bmefixedincome_orderentry_bmegate_v1_6.algo_flag.dissect(buffer, index, packet, parent)

  -- Alt Last Px: P
  index, alt_last_px = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_last_px.dissect(buffer, index, packet, parent)

  -- Accrued Interest Amt: A
  index, accrued_interest_amt = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_amt.dissect(buffer, index, packet, parent)

  -- Accrued Interest Rate P 8: P
  index, accrued_interest_rate_p_8 = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_p_8.dissect(buffer, index, packet, parent)

  -- Settl Date: D
  index, settl_date = bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date.dissect(buffer, index, packet, parent)

  -- Transaction Category: C
  index, transaction_category = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_category.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Entry Date: D
  index, entry_date = bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date.dissect(buffer, index, packet, parent)

  -- Priority: U
  index, priority = bme_bmefixedincome_orderentry_bmegate_v1_6.priority.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_bmefixedincome_orderentry_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Display Qty: Q
  index, display_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty.dissect(buffer, index, packet, parent)

  -- Alt Price: P
  index, alt_price = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: U
  index, secondary_exec_id = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Q
  index, order_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Status: C
  index, ord_status = bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status.dissect(buffer, index, packet, parent)

  -- Ccp Code: C
  index, ccp_code = bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator: C
  index, aggressor_indicator = bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator.dissect(buffer, index, packet, parent)

  -- Request Id: U
  index, request_id = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Private Information 1 Leg Sell Order Entry Message
bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_1_leg_sell_order_entry_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.execution_private_information_1_leg_sell_order_entry_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_1_leg_sell_order_entry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_1_leg_sell_order_entry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_1_leg_sell_order_entry_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Private Information 1 Leg Buy Order Entry Message
bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_1_leg_buy_order_entry_message = {}

-- Size: Execution Private Information 1 Leg Buy Order Entry Message
bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_1_leg_buy_order_entry_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trd_match_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trade_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.last_px.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.last_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.gross_trade_amt.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.designation.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.market_mechanism.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.algo_flag.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.alt_last_px.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_amt.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_p_8.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_category.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.priority.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.size

-- Display: Execution Private Information 1 Leg Buy Order Entry Message
bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_1_leg_buy_order_entry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Private Information 1 Leg Buy Order Entry Message
bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_1_leg_buy_order_entry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: U
  index, trd_match_id = bme_bmefixedincome_orderentry_bmegate_v1_6.trd_match_id.dissect(buffer, index, packet, parent)

  -- Trade Type: C
  index, trade_type = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_type.dissect(buffer, index, packet, parent)

  -- Last Px: P
  index, last_px = bme_bmefixedincome_orderentry_bmegate_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Q
  index, last_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.last_qty.dissect(buffer, index, packet, parent)

  -- Gross Trade Amt: A
  index, gross_trade_amt = bme_bmefixedincome_orderentry_bmegate_v1_6.gross_trade_amt.dissect(buffer, index, packet, parent)

  -- Designation: C
  index, designation = bme_bmefixedincome_orderentry_bmegate_v1_6.designation.dissect(buffer, index, packet, parent)

  -- Market Mechanism: C
  index, market_mechanism = bme_bmefixedincome_orderentry_bmegate_v1_6.market_mechanism.dissect(buffer, index, packet, parent)

  -- Algo Flag: F
  index, algo_flag = bme_bmefixedincome_orderentry_bmegate_v1_6.algo_flag.dissect(buffer, index, packet, parent)

  -- Alt Last Px: P
  index, alt_last_px = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_last_px.dissect(buffer, index, packet, parent)

  -- Accrued Interest Amt: A
  index, accrued_interest_amt = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_amt.dissect(buffer, index, packet, parent)

  -- Accrued Interest Rate P 8: P
  index, accrued_interest_rate_p_8 = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_p_8.dissect(buffer, index, packet, parent)

  -- Settl Date: D
  index, settl_date = bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date.dissect(buffer, index, packet, parent)

  -- Transaction Category: C
  index, transaction_category = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_category.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Entry Date: D
  index, entry_date = bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date.dissect(buffer, index, packet, parent)

  -- Priority: U
  index, priority = bme_bmefixedincome_orderentry_bmegate_v1_6.priority.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_bmefixedincome_orderentry_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Display Qty: Q
  index, display_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty.dissect(buffer, index, packet, parent)

  -- Alt Price: P
  index, alt_price = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: U
  index, secondary_exec_id = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Q
  index, order_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Status: C
  index, ord_status = bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status.dissect(buffer, index, packet, parent)

  -- Ccp Code: C
  index, ccp_code = bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator: C
  index, aggressor_indicator = bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator.dissect(buffer, index, packet, parent)

  -- Request Id: U
  index, request_id = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Private Information 1 Leg Buy Order Entry Message
bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_1_leg_buy_order_entry_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.execution_private_information_1_leg_buy_order_entry_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_1_leg_buy_order_entry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_1_leg_buy_order_entry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_1_leg_buy_order_entry_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Trade Amendment Or Cancellation 2 Legs Private Information Message
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_2_legs_private_information_message = {}

-- Size: Trade Trade Amendment Or Cancellation 2 Legs Private Information Message
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_2_legs_private_information_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trd_match_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trade_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.last_px.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.last_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.gross_trade_amt.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.designation.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.market_mechanism.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.algo_flag.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.alt_last_px.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_amt.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_p_8.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_category.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.last_change_flag.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.bencrfpt_flag.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trade_price_condition.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.pre_trade_transparency_waiver.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.deferral_waiver.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.post_deferral_publication_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.publish_date_and_time.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trade_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trade_session_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.end_cash.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.exec_ref_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.broker_trader.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.broker_text.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.priority.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account_member.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.persistence.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.member.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trader.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.sub_member.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.cross_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.priority_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.price_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_id_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_id_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account_member_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.persistence_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.member_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trader_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.sub_member_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.cross_id_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_security_code_2.size

-- Display: Trade Trade Amendment Or Cancellation 2 Legs Private Information Message
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_2_legs_private_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Trade Amendment Or Cancellation 2 Legs Private Information Message
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_2_legs_private_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: U
  index, trd_match_id = bme_bmefixedincome_orderentry_bmegate_v1_6.trd_match_id.dissect(buffer, index, packet, parent)

  -- Trade Type: C
  index, trade_type = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_type.dissect(buffer, index, packet, parent)

  -- Last Px: P
  index, last_px = bme_bmefixedincome_orderentry_bmegate_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Q
  index, last_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.last_qty.dissect(buffer, index, packet, parent)

  -- Gross Trade Amt: A
  index, gross_trade_amt = bme_bmefixedincome_orderentry_bmegate_v1_6.gross_trade_amt.dissect(buffer, index, packet, parent)

  -- Designation: C
  index, designation = bme_bmefixedincome_orderentry_bmegate_v1_6.designation.dissect(buffer, index, packet, parent)

  -- Market Mechanism: C
  index, market_mechanism = bme_bmefixedincome_orderentry_bmegate_v1_6.market_mechanism.dissect(buffer, index, packet, parent)

  -- Algo Flag: F
  index, algo_flag = bme_bmefixedincome_orderentry_bmegate_v1_6.algo_flag.dissect(buffer, index, packet, parent)

  -- Alt Last Px: P
  index, alt_last_px = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_last_px.dissect(buffer, index, packet, parent)

  -- Accrued Interest Amt: A
  index, accrued_interest_amt = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_amt.dissect(buffer, index, packet, parent)

  -- Accrued Interest Rate P 8: P
  index, accrued_interest_rate_p_8 = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_p_8.dissect(buffer, index, packet, parent)

  -- Settl Date: D
  index, settl_date = bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date.dissect(buffer, index, packet, parent)

  -- Transaction Category: C
  index, transaction_category = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_category.dissect(buffer, index, packet, parent)

  -- Last Change Flag: B
  index, last_change_flag = bme_bmefixedincome_orderentry_bmegate_v1_6.last_change_flag.dissect(buffer, index, packet, parent)

  -- Bencrfpt Flag: C
  index, bencrfpt_flag = bme_bmefixedincome_orderentry_bmegate_v1_6.bencrfpt_flag.dissect(buffer, index, packet, parent)

  -- Trade Price Condition: C
  index, trade_price_condition = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_price_condition.dissect(buffer, index, packet, parent)

  -- Pre Trade Transparency Waiver: C
  index, pre_trade_transparency_waiver = bme_bmefixedincome_orderentry_bmegate_v1_6.pre_trade_transparency_waiver.dissect(buffer, index, packet, parent)

  -- Deferral Waiver: C
  index, deferral_waiver = bme_bmefixedincome_orderentry_bmegate_v1_6.deferral_waiver.dissect(buffer, index, packet, parent)

  -- Post Deferral Publication Type: C
  index, post_deferral_publication_type = bme_bmefixedincome_orderentry_bmegate_v1_6.post_deferral_publication_type.dissect(buffer, index, packet, parent)

  -- Publish Date And Time: T
  index, publish_date_and_time = bme_bmefixedincome_orderentry_bmegate_v1_6.publish_date_and_time.dissect(buffer, index, packet, parent)

  -- Trade Date: T
  index, trade_date = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Trade Session Date: D
  index, trade_session_date = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_session_date.dissect(buffer, index, packet, parent)

  -- Settl Date 2: D
  index, settl_date_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date_2.dissect(buffer, index, packet, parent)

  -- End Cash: A
  index, end_cash = bme_bmefixedincome_orderentry_bmegate_v1_6.end_cash.dissect(buffer, index, packet, parent)

  -- Amended Trade Type: C
  index, amended_trade_type = bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_type.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: U
  index, exec_ref_id = bme_bmefixedincome_orderentry_bmegate_v1_6.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Amended Trade Date: D
  index, amended_trade_date = bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_date.dissect(buffer, index, packet, parent)

  -- Broker Trader: C
  index, broker_trader = bme_bmefixedincome_orderentry_bmegate_v1_6.broker_trader.dissect(buffer, index, packet, parent)

  -- Broker Text: C
  index, broker_text = bme_bmefixedincome_orderentry_bmegate_v1_6.broker_text.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Entry Date: D
  index, entry_date = bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date.dissect(buffer, index, packet, parent)

  -- Priority: U
  index, priority = bme_bmefixedincome_orderentry_bmegate_v1_6.priority.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_bmefixedincome_orderentry_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Display Qty: Q
  index, display_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty.dissect(buffer, index, packet, parent)

  -- Alt Price: P
  index, alt_price = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: U
  index, secondary_exec_id = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Q
  index, order_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Status: C
  index, ord_status = bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status.dissect(buffer, index, packet, parent)

  -- Ccp Code: C
  index, ccp_code = bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator: C
  index, aggressor_indicator = bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator.dissect(buffer, index, packet, parent)

  -- Request Id: U
  index, request_id = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: F
  index, algorithmic_trade_indicator = bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator.dissect(buffer, index, packet, parent)

  -- Client Id: U
  index, client_id = bme_bmefixedincome_orderentry_bmegate_v1_6.client_id.dissect(buffer, index, packet, parent)

  -- Account Bolsa: C
  index, account_bolsa = bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa.dissect(buffer, index, packet, parent)

  -- Account: C
  index, account = bme_bmefixedincome_orderentry_bmegate_v1_6.account.dissect(buffer, index, packet, parent)

  -- Dea Flag: F
  index, dea_flag = bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag.dissect(buffer, index, packet, parent)

  -- Decisor Id: U
  index, decisor_id = bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id.dissect(buffer, index, packet, parent)

  -- Executor Id: U
  index, executor_id = bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id.dissect(buffer, index, packet, parent)

  -- Liquidity Provision Activity: F
  index, liquidity_provision_activity = bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity.dissect(buffer, index, packet, parent)

  -- Account Member: C
  index, account_member = bme_bmefixedincome_orderentry_bmegate_v1_6.account_member.dissect(buffer, index, packet, parent)

  -- Last Capacity: C
  index, last_capacity = bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity.dissect(buffer, index, packet, parent)

  -- Received Dept Id: C
  index, received_dept_id = bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id.dissect(buffer, index, packet, parent)

  -- Persistence: C
  index, persistence = bme_bmefixedincome_orderentry_bmegate_v1_6.persistence.dissect(buffer, index, packet, parent)

  -- Member: C
  index, member = bme_bmefixedincome_orderentry_bmegate_v1_6.member.dissect(buffer, index, packet, parent)

  -- Trader: C
  index, trader = bme_bmefixedincome_orderentry_bmegate_v1_6.trader.dissect(buffer, index, packet, parent)

  -- Sub Member: C
  index, sub_member = bme_bmefixedincome_orderentry_bmegate_v1_6.sub_member.dissect(buffer, index, packet, parent)

  -- Cross Id: U
  index, cross_id = bme_bmefixedincome_orderentry_bmegate_v1_6.cross_id.dissect(buffer, index, packet, parent)

  -- Order Security Code: U
  index, order_security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.order_security_code.dissect(buffer, index, packet, parent)

  -- Secondary Order Id 2: U
  index, secondary_order_id_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id_2.dissect(buffer, index, packet, parent)

  -- Entry Date 2: D
  index, entry_date_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date_2.dissect(buffer, index, packet, parent)

  -- Priority 2: U
  index, priority_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.priority_2.dissect(buffer, index, packet, parent)

  -- Price 2: P
  index, price_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.price_2.dissect(buffer, index, packet, parent)

  -- Display Qty 2: Q
  index, display_qty_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty_2.dissect(buffer, index, packet, parent)

  -- Alt Price 2: P
  index, alt_price_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price_2.dissect(buffer, index, packet, parent)

  -- Order Id 2: U
  index, order_id_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.order_id_2.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id 2: U
  index, secondary_exec_id_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id_2.dissect(buffer, index, packet, parent)

  -- Order Qty 2: Q
  index, order_qty_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty_2.dissect(buffer, index, packet, parent)

  -- Ord Status 2: C
  index, ord_status_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status_2.dissect(buffer, index, packet, parent)

  -- Ccp Code 2: C
  index, ccp_code_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code_2.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator 2: C
  index, aggressor_indicator_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator_2.dissect(buffer, index, packet, parent)

  -- Request Id 2: U
  index, request_id_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id_2.dissect(buffer, index, packet, parent)

  -- Client Data Id 2: U
  index, client_data_id_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id_2.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator 2: F
  index, algorithmic_trade_indicator_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator_2.dissect(buffer, index, packet, parent)

  -- Client Id 2: U
  index, client_id_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.client_id_2.dissect(buffer, index, packet, parent)

  -- Account Bolsa 2: C
  index, account_bolsa_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa_2.dissect(buffer, index, packet, parent)

  -- Account 2: C
  index, account_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.account_2.dissect(buffer, index, packet, parent)

  -- Dea Flag 2: F
  index, dea_flag_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag_2.dissect(buffer, index, packet, parent)

  -- Decisor Id 2: U
  index, decisor_id_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id_2.dissect(buffer, index, packet, parent)

  -- Executor Id 2: U
  index, executor_id_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id_2.dissect(buffer, index, packet, parent)

  -- Liquidity Provision Activity 2: F
  index, liquidity_provision_activity_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity_2.dissect(buffer, index, packet, parent)

  -- Account Member 2: C
  index, account_member_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.account_member_2.dissect(buffer, index, packet, parent)

  -- Last Capacity 2: C
  index, last_capacity_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity_2.dissect(buffer, index, packet, parent)

  -- Received Dept Id 2: C
  index, received_dept_id_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id_2.dissect(buffer, index, packet, parent)

  -- Persistence 2: C
  index, persistence_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.persistence_2.dissect(buffer, index, packet, parent)

  -- Member 2: C
  index, member_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.member_2.dissect(buffer, index, packet, parent)

  -- Trader 2: C
  index, trader_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.trader_2.dissect(buffer, index, packet, parent)

  -- Sub Member 2: C
  index, sub_member_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.sub_member_2.dissect(buffer, index, packet, parent)

  -- Cross Id 2: U
  index, cross_id_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.cross_id_2.dissect(buffer, index, packet, parent)

  -- Order Security Code 2: U
  index, order_security_code_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.order_security_code_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Trade Amendment Or Cancellation 2 Legs Private Information Message
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_2_legs_private_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trade_trade_amendment_or_cancellation_2_legs_private_information_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_2_legs_private_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_2_legs_private_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_2_legs_private_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Trade Amendment Or Cancellation 1 Leg Sell Private Information Message
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_sell_private_information_message = {}

-- Size: Trade Trade Amendment Or Cancellation 1 Leg Sell Private Information Message
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_sell_private_information_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trd_match_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trade_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.last_px.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.last_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.gross_trade_amt.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.designation.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.market_mechanism.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.algo_flag.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.alt_last_px.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_amt.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_p_8.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_category.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.last_change_flag.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.bencrfpt_flag.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trade_price_condition.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.pre_trade_transparency_waiver.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.deferral_waiver.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.post_deferral_publication_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.publish_date_and_time.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trade_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trade_session_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.end_cash.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.exec_ref_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.broker_trader.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.broker_text.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.priority.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account_member.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.persistence.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.member.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trader.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.sub_member.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.cross_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_security_code.size

-- Display: Trade Trade Amendment Or Cancellation 1 Leg Sell Private Information Message
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_sell_private_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Trade Amendment Or Cancellation 1 Leg Sell Private Information Message
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_sell_private_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: U
  index, trd_match_id = bme_bmefixedincome_orderentry_bmegate_v1_6.trd_match_id.dissect(buffer, index, packet, parent)

  -- Trade Type: C
  index, trade_type = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_type.dissect(buffer, index, packet, parent)

  -- Last Px: P
  index, last_px = bme_bmefixedincome_orderentry_bmegate_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Q
  index, last_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.last_qty.dissect(buffer, index, packet, parent)

  -- Gross Trade Amt: A
  index, gross_trade_amt = bme_bmefixedincome_orderentry_bmegate_v1_6.gross_trade_amt.dissect(buffer, index, packet, parent)

  -- Designation: C
  index, designation = bme_bmefixedincome_orderentry_bmegate_v1_6.designation.dissect(buffer, index, packet, parent)

  -- Market Mechanism: C
  index, market_mechanism = bme_bmefixedincome_orderentry_bmegate_v1_6.market_mechanism.dissect(buffer, index, packet, parent)

  -- Algo Flag: F
  index, algo_flag = bme_bmefixedincome_orderentry_bmegate_v1_6.algo_flag.dissect(buffer, index, packet, parent)

  -- Alt Last Px: P
  index, alt_last_px = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_last_px.dissect(buffer, index, packet, parent)

  -- Accrued Interest Amt: A
  index, accrued_interest_amt = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_amt.dissect(buffer, index, packet, parent)

  -- Accrued Interest Rate P 8: P
  index, accrued_interest_rate_p_8 = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_p_8.dissect(buffer, index, packet, parent)

  -- Settl Date: D
  index, settl_date = bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date.dissect(buffer, index, packet, parent)

  -- Transaction Category: C
  index, transaction_category = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_category.dissect(buffer, index, packet, parent)

  -- Last Change Flag: B
  index, last_change_flag = bme_bmefixedincome_orderentry_bmegate_v1_6.last_change_flag.dissect(buffer, index, packet, parent)

  -- Bencrfpt Flag: C
  index, bencrfpt_flag = bme_bmefixedincome_orderentry_bmegate_v1_6.bencrfpt_flag.dissect(buffer, index, packet, parent)

  -- Trade Price Condition: C
  index, trade_price_condition = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_price_condition.dissect(buffer, index, packet, parent)

  -- Pre Trade Transparency Waiver: C
  index, pre_trade_transparency_waiver = bme_bmefixedincome_orderentry_bmegate_v1_6.pre_trade_transparency_waiver.dissect(buffer, index, packet, parent)

  -- Deferral Waiver: C
  index, deferral_waiver = bme_bmefixedincome_orderentry_bmegate_v1_6.deferral_waiver.dissect(buffer, index, packet, parent)

  -- Post Deferral Publication Type: C
  index, post_deferral_publication_type = bme_bmefixedincome_orderentry_bmegate_v1_6.post_deferral_publication_type.dissect(buffer, index, packet, parent)

  -- Publish Date And Time: T
  index, publish_date_and_time = bme_bmefixedincome_orderentry_bmegate_v1_6.publish_date_and_time.dissect(buffer, index, packet, parent)

  -- Trade Date: T
  index, trade_date = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Trade Session Date: D
  index, trade_session_date = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_session_date.dissect(buffer, index, packet, parent)

  -- Settl Date 2: D
  index, settl_date_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date_2.dissect(buffer, index, packet, parent)

  -- End Cash: A
  index, end_cash = bme_bmefixedincome_orderentry_bmegate_v1_6.end_cash.dissect(buffer, index, packet, parent)

  -- Amended Trade Type: C
  index, amended_trade_type = bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_type.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: U
  index, exec_ref_id = bme_bmefixedincome_orderentry_bmegate_v1_6.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Amended Trade Date: D
  index, amended_trade_date = bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_date.dissect(buffer, index, packet, parent)

  -- Broker Trader: C
  index, broker_trader = bme_bmefixedincome_orderentry_bmegate_v1_6.broker_trader.dissect(buffer, index, packet, parent)

  -- Broker Text: C
  index, broker_text = bme_bmefixedincome_orderentry_bmegate_v1_6.broker_text.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Entry Date: D
  index, entry_date = bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date.dissect(buffer, index, packet, parent)

  -- Priority: U
  index, priority = bme_bmefixedincome_orderentry_bmegate_v1_6.priority.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_bmefixedincome_orderentry_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Display Qty: Q
  index, display_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty.dissect(buffer, index, packet, parent)

  -- Alt Price: P
  index, alt_price = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: U
  index, secondary_exec_id = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Q
  index, order_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Status: C
  index, ord_status = bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status.dissect(buffer, index, packet, parent)

  -- Ccp Code: C
  index, ccp_code = bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator: C
  index, aggressor_indicator = bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator.dissect(buffer, index, packet, parent)

  -- Request Id: U
  index, request_id = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: F
  index, algorithmic_trade_indicator = bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator.dissect(buffer, index, packet, parent)

  -- Client Id: U
  index, client_id = bme_bmefixedincome_orderentry_bmegate_v1_6.client_id.dissect(buffer, index, packet, parent)

  -- Account Bolsa: C
  index, account_bolsa = bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa.dissect(buffer, index, packet, parent)

  -- Account: C
  index, account = bme_bmefixedincome_orderentry_bmegate_v1_6.account.dissect(buffer, index, packet, parent)

  -- Dea Flag: F
  index, dea_flag = bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag.dissect(buffer, index, packet, parent)

  -- Decisor Id: U
  index, decisor_id = bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id.dissect(buffer, index, packet, parent)

  -- Executor Id: U
  index, executor_id = bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id.dissect(buffer, index, packet, parent)

  -- Liquidity Provision Activity: F
  index, liquidity_provision_activity = bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity.dissect(buffer, index, packet, parent)

  -- Account Member: C
  index, account_member = bme_bmefixedincome_orderentry_bmegate_v1_6.account_member.dissect(buffer, index, packet, parent)

  -- Last Capacity: C
  index, last_capacity = bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity.dissect(buffer, index, packet, parent)

  -- Received Dept Id: C
  index, received_dept_id = bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id.dissect(buffer, index, packet, parent)

  -- Persistence: C
  index, persistence = bme_bmefixedincome_orderentry_bmegate_v1_6.persistence.dissect(buffer, index, packet, parent)

  -- Member: C
  index, member = bme_bmefixedincome_orderentry_bmegate_v1_6.member.dissect(buffer, index, packet, parent)

  -- Trader: C
  index, trader = bme_bmefixedincome_orderentry_bmegate_v1_6.trader.dissect(buffer, index, packet, parent)

  -- Sub Member: C
  index, sub_member = bme_bmefixedincome_orderentry_bmegate_v1_6.sub_member.dissect(buffer, index, packet, parent)

  -- Cross Id: U
  index, cross_id = bme_bmefixedincome_orderentry_bmegate_v1_6.cross_id.dissect(buffer, index, packet, parent)

  -- Order Security Code: U
  index, order_security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.order_security_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Trade Amendment Or Cancellation 1 Leg Sell Private Information Message
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_sell_private_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trade_trade_amendment_or_cancellation_1_leg_sell_private_information_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_sell_private_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_sell_private_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_sell_private_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Trade Amendment Or Cancellation 1 Leg Buy Private Information Message
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_buy_private_information_message = {}

-- Size: Trade Trade Amendment Or Cancellation 1 Leg Buy Private Information Message
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_buy_private_information_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trd_match_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trade_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.last_px.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.last_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.gross_trade_amt.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.designation.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.market_mechanism.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.algo_flag.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.alt_last_px.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_amt.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_p_8.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_category.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.last_change_flag.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.bencrfpt_flag.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trade_price_condition.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.pre_trade_transparency_waiver.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.deferral_waiver.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.post_deferral_publication_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.publish_date_and_time.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trade_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trade_session_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.end_cash.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.exec_ref_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.broker_trader.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.broker_text.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.priority.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account_member.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.persistence.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.member.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trader.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.sub_member.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.cross_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_security_code.size

-- Display: Trade Trade Amendment Or Cancellation 1 Leg Buy Private Information Message
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_buy_private_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Trade Amendment Or Cancellation 1 Leg Buy Private Information Message
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_buy_private_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: U
  index, trd_match_id = bme_bmefixedincome_orderentry_bmegate_v1_6.trd_match_id.dissect(buffer, index, packet, parent)

  -- Trade Type: C
  index, trade_type = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_type.dissect(buffer, index, packet, parent)

  -- Last Px: P
  index, last_px = bme_bmefixedincome_orderentry_bmegate_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Q
  index, last_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.last_qty.dissect(buffer, index, packet, parent)

  -- Gross Trade Amt: A
  index, gross_trade_amt = bme_bmefixedincome_orderentry_bmegate_v1_6.gross_trade_amt.dissect(buffer, index, packet, parent)

  -- Designation: C
  index, designation = bme_bmefixedincome_orderentry_bmegate_v1_6.designation.dissect(buffer, index, packet, parent)

  -- Market Mechanism: C
  index, market_mechanism = bme_bmefixedincome_orderentry_bmegate_v1_6.market_mechanism.dissect(buffer, index, packet, parent)

  -- Algo Flag: F
  index, algo_flag = bme_bmefixedincome_orderentry_bmegate_v1_6.algo_flag.dissect(buffer, index, packet, parent)

  -- Alt Last Px: P
  index, alt_last_px = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_last_px.dissect(buffer, index, packet, parent)

  -- Accrued Interest Amt: A
  index, accrued_interest_amt = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_amt.dissect(buffer, index, packet, parent)

  -- Accrued Interest Rate P 8: P
  index, accrued_interest_rate_p_8 = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_p_8.dissect(buffer, index, packet, parent)

  -- Settl Date: D
  index, settl_date = bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date.dissect(buffer, index, packet, parent)

  -- Transaction Category: C
  index, transaction_category = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_category.dissect(buffer, index, packet, parent)

  -- Last Change Flag: B
  index, last_change_flag = bme_bmefixedincome_orderentry_bmegate_v1_6.last_change_flag.dissect(buffer, index, packet, parent)

  -- Bencrfpt Flag: C
  index, bencrfpt_flag = bme_bmefixedincome_orderentry_bmegate_v1_6.bencrfpt_flag.dissect(buffer, index, packet, parent)

  -- Trade Price Condition: C
  index, trade_price_condition = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_price_condition.dissect(buffer, index, packet, parent)

  -- Pre Trade Transparency Waiver: C
  index, pre_trade_transparency_waiver = bme_bmefixedincome_orderentry_bmegate_v1_6.pre_trade_transparency_waiver.dissect(buffer, index, packet, parent)

  -- Deferral Waiver: C
  index, deferral_waiver = bme_bmefixedincome_orderentry_bmegate_v1_6.deferral_waiver.dissect(buffer, index, packet, parent)

  -- Post Deferral Publication Type: C
  index, post_deferral_publication_type = bme_bmefixedincome_orderentry_bmegate_v1_6.post_deferral_publication_type.dissect(buffer, index, packet, parent)

  -- Publish Date And Time: T
  index, publish_date_and_time = bme_bmefixedincome_orderentry_bmegate_v1_6.publish_date_and_time.dissect(buffer, index, packet, parent)

  -- Trade Date: T
  index, trade_date = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Trade Session Date: D
  index, trade_session_date = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_session_date.dissect(buffer, index, packet, parent)

  -- Settl Date 2: D
  index, settl_date_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date_2.dissect(buffer, index, packet, parent)

  -- End Cash: A
  index, end_cash = bme_bmefixedincome_orderentry_bmegate_v1_6.end_cash.dissect(buffer, index, packet, parent)

  -- Amended Trade Type: C
  index, amended_trade_type = bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_type.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: U
  index, exec_ref_id = bme_bmefixedincome_orderentry_bmegate_v1_6.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Amended Trade Date: D
  index, amended_trade_date = bme_bmefixedincome_orderentry_bmegate_v1_6.amended_trade_date.dissect(buffer, index, packet, parent)

  -- Broker Trader: C
  index, broker_trader = bme_bmefixedincome_orderentry_bmegate_v1_6.broker_trader.dissect(buffer, index, packet, parent)

  -- Broker Text: C
  index, broker_text = bme_bmefixedincome_orderentry_bmegate_v1_6.broker_text.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Entry Date: D
  index, entry_date = bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date.dissect(buffer, index, packet, parent)

  -- Priority: U
  index, priority = bme_bmefixedincome_orderentry_bmegate_v1_6.priority.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_bmefixedincome_orderentry_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Display Qty: Q
  index, display_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty.dissect(buffer, index, packet, parent)

  -- Alt Price: P
  index, alt_price = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: U
  index, secondary_exec_id = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Q
  index, order_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Status: C
  index, ord_status = bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status.dissect(buffer, index, packet, parent)

  -- Ccp Code: C
  index, ccp_code = bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator: C
  index, aggressor_indicator = bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator.dissect(buffer, index, packet, parent)

  -- Request Id: U
  index, request_id = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: F
  index, algorithmic_trade_indicator = bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator.dissect(buffer, index, packet, parent)

  -- Client Id: U
  index, client_id = bme_bmefixedincome_orderentry_bmegate_v1_6.client_id.dissect(buffer, index, packet, parent)

  -- Account Bolsa: C
  index, account_bolsa = bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa.dissect(buffer, index, packet, parent)

  -- Account: C
  index, account = bme_bmefixedincome_orderentry_bmegate_v1_6.account.dissect(buffer, index, packet, parent)

  -- Dea Flag: F
  index, dea_flag = bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag.dissect(buffer, index, packet, parent)

  -- Decisor Id: U
  index, decisor_id = bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id.dissect(buffer, index, packet, parent)

  -- Executor Id: U
  index, executor_id = bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id.dissect(buffer, index, packet, parent)

  -- Liquidity Provision Activity: F
  index, liquidity_provision_activity = bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity.dissect(buffer, index, packet, parent)

  -- Account Member: C
  index, account_member = bme_bmefixedincome_orderentry_bmegate_v1_6.account_member.dissect(buffer, index, packet, parent)

  -- Last Capacity: C
  index, last_capacity = bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity.dissect(buffer, index, packet, parent)

  -- Received Dept Id: C
  index, received_dept_id = bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id.dissect(buffer, index, packet, parent)

  -- Persistence: C
  index, persistence = bme_bmefixedincome_orderentry_bmegate_v1_6.persistence.dissect(buffer, index, packet, parent)

  -- Member: C
  index, member = bme_bmefixedincome_orderentry_bmegate_v1_6.member.dissect(buffer, index, packet, parent)

  -- Trader: C
  index, trader = bme_bmefixedincome_orderentry_bmegate_v1_6.trader.dissect(buffer, index, packet, parent)

  -- Sub Member: C
  index, sub_member = bme_bmefixedincome_orderentry_bmegate_v1_6.sub_member.dissect(buffer, index, packet, parent)

  -- Cross Id: U
  index, cross_id = bme_bmefixedincome_orderentry_bmegate_v1_6.cross_id.dissect(buffer, index, packet, parent)

  -- Order Security Code: U
  index, order_security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.order_security_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Trade Amendment Or Cancellation 1 Leg Buy Private Information Message
bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_buy_private_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trade_trade_amendment_or_cancellation_1_leg_buy_private_information_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_buy_private_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_buy_private_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_buy_private_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Private Information 2 Legs Message
bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_2_legs_message = {}

-- Size: Execution Private Information 2 Legs Message
bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_2_legs_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trd_match_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trade_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.last_px.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.last_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.gross_trade_amt.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.designation.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.market_mechanism.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.algo_flag.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.alt_last_px.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_amt.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_p_8.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_category.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.priority.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.priority_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.price_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_id_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id_2.size

-- Display: Execution Private Information 2 Legs Message
bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_2_legs_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Private Information 2 Legs Message
bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_2_legs_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: U
  index, trd_match_id = bme_bmefixedincome_orderentry_bmegate_v1_6.trd_match_id.dissect(buffer, index, packet, parent)

  -- Trade Type: C
  index, trade_type = bme_bmefixedincome_orderentry_bmegate_v1_6.trade_type.dissect(buffer, index, packet, parent)

  -- Last Px: P
  index, last_px = bme_bmefixedincome_orderentry_bmegate_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Q
  index, last_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.last_qty.dissect(buffer, index, packet, parent)

  -- Gross Trade Amt: A
  index, gross_trade_amt = bme_bmefixedincome_orderentry_bmegate_v1_6.gross_trade_amt.dissect(buffer, index, packet, parent)

  -- Designation: C
  index, designation = bme_bmefixedincome_orderentry_bmegate_v1_6.designation.dissect(buffer, index, packet, parent)

  -- Market Mechanism: C
  index, market_mechanism = bme_bmefixedincome_orderentry_bmegate_v1_6.market_mechanism.dissect(buffer, index, packet, parent)

  -- Algo Flag: F
  index, algo_flag = bme_bmefixedincome_orderentry_bmegate_v1_6.algo_flag.dissect(buffer, index, packet, parent)

  -- Alt Last Px: P
  index, alt_last_px = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_last_px.dissect(buffer, index, packet, parent)

  -- Accrued Interest Amt: A
  index, accrued_interest_amt = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_amt.dissect(buffer, index, packet, parent)

  -- Accrued Interest Rate P 8: P
  index, accrued_interest_rate_p_8 = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_p_8.dissect(buffer, index, packet, parent)

  -- Settl Date: D
  index, settl_date = bme_bmefixedincome_orderentry_bmegate_v1_6.settl_date.dissect(buffer, index, packet, parent)

  -- Transaction Category: C
  index, transaction_category = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_category.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Entry Date: D
  index, entry_date = bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date.dissect(buffer, index, packet, parent)

  -- Priority: U
  index, priority = bme_bmefixedincome_orderentry_bmegate_v1_6.priority.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_bmefixedincome_orderentry_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Display Qty: Q
  index, display_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty.dissect(buffer, index, packet, parent)

  -- Alt Price: P
  index, alt_price = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: U
  index, secondary_exec_id = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Q
  index, order_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Status: C
  index, ord_status = bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status.dissect(buffer, index, packet, parent)

  -- Ccp Code: C
  index, ccp_code = bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator: C
  index, aggressor_indicator = bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator.dissect(buffer, index, packet, parent)

  -- Request Id: U
  index, request_id = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  -- Secondary Order Id 2: U
  index, secondary_order_id_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id_2.dissect(buffer, index, packet, parent)

  -- Entry Date 2: D
  index, entry_date_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date_2.dissect(buffer, index, packet, parent)

  -- Priority 2: U
  index, priority_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.priority_2.dissect(buffer, index, packet, parent)

  -- Price 2: P
  index, price_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.price_2.dissect(buffer, index, packet, parent)

  -- Display Qty 2: Q
  index, display_qty_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty_2.dissect(buffer, index, packet, parent)

  -- Alt Price 2: P
  index, alt_price_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price_2.dissect(buffer, index, packet, parent)

  -- Order Id 2: U
  index, order_id_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.order_id_2.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id 2: U
  index, secondary_exec_id_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id_2.dissect(buffer, index, packet, parent)

  -- Order Qty 2: Q
  index, order_qty_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty_2.dissect(buffer, index, packet, parent)

  -- Ord Status 2: C
  index, ord_status_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status_2.dissect(buffer, index, packet, parent)

  -- Ccp Code 2: C
  index, ccp_code_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.ccp_code_2.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator 2: C
  index, aggressor_indicator_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.aggressor_indicator_2.dissect(buffer, index, packet, parent)

  -- Request Id 2: U
  index, request_id_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id_2.dissect(buffer, index, packet, parent)

  -- Client Data Id 2: U
  index, client_data_id_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Private Information 2 Legs Message
bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_2_legs_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.execution_private_information_2_legs_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_2_legs_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_2_legs_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_2_legs_message.fields(buffer, offset, packet, parent)
  end
end

-- Business Message Reject Message
bme_bmefixedincome_orderentry_bmegate_v1_6.business_message_reject_message = {}

-- Size: Business Message Reject Message
bme_bmefixedincome_orderentry_bmegate_v1_6.business_message_reject_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ref_msg_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.business_reject_reason.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.text_c_65.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size

-- Display: Business Message Reject Message
bme_bmefixedincome_orderentry_bmegate_v1_6.business_message_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Message Reject Message
bme_bmefixedincome_orderentry_bmegate_v1_6.business_message_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Ref Msg Type: U
  index, ref_msg_type = bme_bmefixedincome_orderentry_bmegate_v1_6.ref_msg_type.dissect(buffer, index, packet, parent)

  -- Business Reject Reason: U
  index, business_reject_reason = bme_bmefixedincome_orderentry_bmegate_v1_6.business_reject_reason.dissect(buffer, index, packet, parent)

  -- Text C 65: C
  index, text_c_65 = bme_bmefixedincome_orderentry_bmegate_v1_6.text_c_65.dissect(buffer, index, packet, parent)

  -- Request Id: U
  index, request_id = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Message Reject Message
bme_bmefixedincome_orderentry_bmegate_v1_6.business_message_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.business_message_reject_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.business_message_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.business_message_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.business_message_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Orderquote Cancellation Reject Message
bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_reject_message = {}

-- Size: Mass Orderquote Cancellation Reject Message
bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_reject_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trading_unit.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.mass_cancel_reject_reason.size

-- Display: Mass Orderquote Cancellation Reject Message
bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Orderquote Cancellation Reject Message
bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Trading Unit: U
  index, trading_unit = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_unit.dissect(buffer, index, packet, parent)

  -- Mass Cancel Reject Reason: C
  index, mass_cancel_reject_reason = bme_bmefixedincome_orderentry_bmegate_v1_6.mass_cancel_reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Orderquote Cancellation Reject Message
bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.mass_orderquote_cancellation_reject_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Orderquote Cancellation Completion Message
bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_completion_message = {}

-- Size: Mass Orderquote Cancellation Completion Message
bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_completion_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trading_unit.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.cancellation_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_or_quote_cancel.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size

-- Display: Mass Orderquote Cancellation Completion Message
bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_completion_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Orderquote Cancellation Completion Message
bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_completion_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Trading Unit: U
  index, trading_unit = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_unit.dissect(buffer, index, packet, parent)

  -- Cancellation Type: C
  index, cancellation_type = bme_bmefixedincome_orderentry_bmegate_v1_6.cancellation_type.dissect(buffer, index, packet, parent)

  -- Order Or Quote Cancel: C
  index, order_or_quote_cancel = bme_bmefixedincome_orderentry_bmegate_v1_6.order_or_quote_cancel.dissect(buffer, index, packet, parent)

  -- Request Id: U
  index, request_id = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Orderquote Cancellation Completion Message
bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_completion_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.mass_orderquote_cancellation_completion_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_completion_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_completion_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_completion_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Reject Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancel_reject_message = {}

-- Size: Order Cancel Reject Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancel_reject_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.cxl_rej_response_to.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.cxl_rej_reason.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size

-- Display: Order Cancel Reject Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Reject Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Ord Status: C
  index, ord_status = bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status.dissect(buffer, index, packet, parent)

  -- Cxl Rej Response To: C
  index, cxl_rej_response_to = bme_bmefixedincome_orderentry_bmegate_v1_6.cxl_rej_response_to.dissect(buffer, index, packet, parent)

  -- Cxl Rej Reason: C
  index, cxl_rej_reason = bme_bmefixedincome_orderentry_bmegate_v1_6.cxl_rej_reason.dissect(buffer, index, packet, parent)

  -- Request Id: U
  index, request_id = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Reject Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_cancel_reject_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.quote_status_message = {}

-- Size: Quote Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.quote_status_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.priority.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.priority_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.price_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ord_rej_reason.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.exec_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_id_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ord_rej_reason_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.exec_type_2.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.size

-- Display: Quote Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.quote_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.quote_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Secondary Order Id 2: U
  index, secondary_order_id_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id_2.dissect(buffer, index, packet, parent)

  -- Priority: U
  index, priority = bme_bmefixedincome_orderentry_bmegate_v1_6.priority.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_bmefixedincome_orderentry_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Display Qty: Q
  index, display_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty.dissect(buffer, index, packet, parent)

  -- Alt Price: P
  index, alt_price = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price.dissect(buffer, index, packet, parent)

  -- Priority 2: U
  index, priority_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.priority_2.dissect(buffer, index, packet, parent)

  -- Price 2: P
  index, price_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.price_2.dissect(buffer, index, packet, parent)

  -- Display Qty 2: Q
  index, display_qty_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty_2.dissect(buffer, index, packet, parent)

  -- Alt Price 2: P
  index, alt_price_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price_2.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: U
  index, secondary_exec_id = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Q
  index, order_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Status: C
  index, ord_status = bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status.dissect(buffer, index, packet, parent)

  -- Ord Rej Reason: C
  index, ord_rej_reason = bme_bmefixedincome_orderentry_bmegate_v1_6.ord_rej_reason.dissect(buffer, index, packet, parent)

  -- Exec Type: C
  index, exec_type = bme_bmefixedincome_orderentry_bmegate_v1_6.exec_type.dissect(buffer, index, packet, parent)

  -- Order Id 2: U
  index, order_id_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.order_id_2.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id 2: U
  index, secondary_exec_id_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id_2.dissect(buffer, index, packet, parent)

  -- Order Qty 2: Q
  index, order_qty_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty_2.dissect(buffer, index, packet, parent)

  -- Ord Status 2: C
  index, ord_status_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status_2.dissect(buffer, index, packet, parent)

  -- Ord Rej Reason 2: C
  index, ord_rej_reason_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.ord_rej_reason_2.dissect(buffer, index, packet, parent)

  -- Exec Type 2: C
  index, exec_type_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.exec_type_2.dissect(buffer, index, packet, parent)

  -- Request Id: U
  index, request_id = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.quote_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.quote_status_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.quote_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.quote_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.quote_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Order Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_status_message = {}

-- Size: Simple Order Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_status_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.side.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.priority.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ord_rej_reason.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.exec_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.size

-- Display: Simple Order Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Order Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Entry Date: D
  index, entry_date = bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date.dissect(buffer, index, packet, parent)

  -- Side: C
  index, side = bme_bmefixedincome_orderentry_bmegate_v1_6.side.dissect(buffer, index, packet, parent)

  -- Priority: U
  index, priority = bme_bmefixedincome_orderentry_bmegate_v1_6.priority.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_bmefixedincome_orderentry_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Display Qty: Q
  index, display_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.display_qty.dissect(buffer, index, packet, parent)

  -- Alt Price: P
  index, alt_price = bme_bmefixedincome_orderentry_bmegate_v1_6.alt_price.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: U
  index, secondary_exec_id = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_exec_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Q
  index, order_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Status: C
  index, ord_status = bme_bmefixedincome_orderentry_bmegate_v1_6.ord_status.dissect(buffer, index, packet, parent)

  -- Ord Rej Reason: C
  index, ord_rej_reason = bme_bmefixedincome_orderentry_bmegate_v1_6.ord_rej_reason.dissect(buffer, index, packet, parent)

  -- Exec Type: C
  index, exec_type = bme_bmefixedincome_orderentry_bmegate_v1_6.exec_type.dissect(buffer, index, packet, parent)

  -- Request Id: U
  index, request_id = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Order Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.simple_order_status_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Order And Quote Client Data Parameters Ack Nack Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_and_quote_client_data_parameters_ack_nack_message = {}

-- Size: Order And Quote Client Data Parameters Ack Nack Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_and_quote_client_data_parameters_ack_nack_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.status.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account_member.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.persistence.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_reference.size

-- Display: Order And Quote Client Data Parameters Ack Nack Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_and_quote_client_data_parameters_ack_nack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order And Quote Client Data Parameters Ack Nack Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_and_quote_client_data_parameters_ack_nack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Request Id: U
  index, request_id = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Status: F
  index, status = bme_bmefixedincome_orderentry_bmegate_v1_6.status.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: F
  index, algorithmic_trade_indicator = bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator.dissect(buffer, index, packet, parent)

  -- Client Id: U
  index, client_id = bme_bmefixedincome_orderentry_bmegate_v1_6.client_id.dissect(buffer, index, packet, parent)

  -- Account Bolsa: C
  index, account_bolsa = bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa.dissect(buffer, index, packet, parent)

  -- Account: C
  index, account = bme_bmefixedincome_orderentry_bmegate_v1_6.account.dissect(buffer, index, packet, parent)

  -- Dea Flag: F
  index, dea_flag = bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag.dissect(buffer, index, packet, parent)

  -- Decisor Id: U
  index, decisor_id = bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id.dissect(buffer, index, packet, parent)

  -- Executor Id: U
  index, executor_id = bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id.dissect(buffer, index, packet, parent)

  -- Liquidity Provision Activity: F
  index, liquidity_provision_activity = bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity.dissect(buffer, index, packet, parent)

  -- Account Member: C
  index, account_member = bme_bmefixedincome_orderentry_bmegate_v1_6.account_member.dissect(buffer, index, packet, parent)

  -- Last Capacity: C
  index, last_capacity = bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity.dissect(buffer, index, packet, parent)

  -- Received Dept Id: C
  index, received_dept_id = bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id.dissect(buffer, index, packet, parent)

  -- Persistence: C
  index, persistence = bme_bmefixedincome_orderentry_bmegate_v1_6.persistence.dissect(buffer, index, packet, parent)

  -- Client Data Reference: C
  index, client_data_reference = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_reference.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order And Quote Client Data Parameters Ack Nack Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_and_quote_client_data_parameters_ack_nack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_and_quote_client_data_parameters_ack_nack_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.order_and_quote_client_data_parameters_ack_nack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.order_and_quote_client_data_parameters_ack_nack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.order_and_quote_client_data_parameters_ack_nack_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Orderquote Cancellation Message
bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_message = {}

-- Size: Mass Orderquote Cancellation Message
bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.side.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.cancellation_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.issuer.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account_member.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_or_quote_cancel.size

-- Display: Mass Orderquote Cancellation Message
bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Orderquote Cancellation Message
bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: U
  index, request_id = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Account: C
  index, account = bme_bmefixedincome_orderentry_bmegate_v1_6.account.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Side: C
  index, side = bme_bmefixedincome_orderentry_bmegate_v1_6.side.dissect(buffer, index, packet, parent)

  -- Cancellation Type: C
  index, cancellation_type = bme_bmefixedincome_orderentry_bmegate_v1_6.cancellation_type.dissect(buffer, index, packet, parent)

  -- Issuer: C
  index, issuer = bme_bmefixedincome_orderentry_bmegate_v1_6.issuer.dissect(buffer, index, packet, parent)

  -- Account Bolsa: C
  index, account_bolsa = bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa.dissect(buffer, index, packet, parent)

  -- Account Member: C
  index, account_member = bme_bmefixedincome_orderentry_bmegate_v1_6.account_member.dissect(buffer, index, packet, parent)

  -- Order Or Quote Cancel: C
  index, order_or_quote_cancel = bme_bmefixedincome_orderentry_bmegate_v1_6.order_or_quote_cancel.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Orderquote Cancellation Message
bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.mass_orderquote_cancellation_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Cancellation Request Message
bme_bmefixedincome_orderentry_bmegate_v1_6.quote_cancellation_request_message = {}

-- Size: Quote Cancellation Request Message
bme_bmefixedincome_orderentry_bmegate_v1_6.quote_cancellation_request_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.size

-- Display: Quote Cancellation Request Message
bme_bmefixedincome_orderentry_bmegate_v1_6.quote_cancellation_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancellation Request Message
bme_bmefixedincome_orderentry_bmegate_v1_6.quote_cancellation_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: U
  index, request_id = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancellation Request Message
bme_bmefixedincome_orderentry_bmegate_v1_6.quote_cancellation_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.quote_cancellation_request_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.quote_cancellation_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.quote_cancellation_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.quote_cancellation_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Modification Request Message
bme_bmefixedincome_orderentry_bmegate_v1_6.quote_modification_request_message = {}

-- Size: Quote Modification Request Message
bme_bmefixedincome_orderentry_bmegate_v1_6.quote_modification_request_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.bid_px_1.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ask_px_1.size

-- Display: Quote Modification Request Message
bme_bmefixedincome_orderentry_bmegate_v1_6.quote_modification_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Modification Request Message
bme_bmefixedincome_orderentry_bmegate_v1_6.quote_modification_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: U
  index, request_id = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  -- Bid Px 1: P
  index, bid_px_1 = bme_bmefixedincome_orderentry_bmegate_v1_6.bid_px_1.dissect(buffer, index, packet, parent)

  -- Ask Px 1: P
  index, ask_px_1 = bme_bmefixedincome_orderentry_bmegate_v1_6.ask_px_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Modification Request Message
bme_bmefixedincome_orderentry_bmegate_v1_6.quote_modification_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.quote_modification_request_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.quote_modification_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.quote_modification_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.quote_modification_request_message.fields(buffer, offset, packet, parent)
  end
end

-- New Quote Message
bme_bmefixedincome_orderentry_bmegate_v1_6.new_quote_message = {}

-- Size: New Quote Message
bme_bmefixedincome_orderentry_bmegate_v1_6.new_quote_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.bid_size_1.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.bid_px_1.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ask_size_1.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ask_px_1.size

-- Display: New Quote Message
bme_bmefixedincome_orderentry_bmegate_v1_6.new_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Quote Message
bme_bmefixedincome_orderentry_bmegate_v1_6.new_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: U
  index, request_id = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  -- Bid Size 1: Q
  index, bid_size_1 = bme_bmefixedincome_orderentry_bmegate_v1_6.bid_size_1.dissect(buffer, index, packet, parent)

  -- Bid Px 1: P
  index, bid_px_1 = bme_bmefixedincome_orderentry_bmegate_v1_6.bid_px_1.dissect(buffer, index, packet, parent)

  -- Ask Size 1: Q
  index, ask_size_1 = bme_bmefixedincome_orderentry_bmegate_v1_6.ask_size_1.dissect(buffer, index, packet, parent)

  -- Ask Px 1: P
  index, ask_px_1 = bme_bmefixedincome_orderentry_bmegate_v1_6.ask_px_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Quote Message
bme_bmefixedincome_orderentry_bmegate_v1_6.new_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.new_quote_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.new_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.new_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.new_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation Request Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancellation_request_message = {}

-- Size: Order Cancellation Request Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancellation_request_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.size

-- Display: Order Cancellation Request Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancellation_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Request Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancellation_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: U
  index, request_id = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation Request Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancellation_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_cancellation_request_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancellation_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancellation_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancellation_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Order Modification With Client Data Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_modification_with_client_data_message = {}

-- Size: Simple Order Modification With Client Data Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_modification_with_client_data_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.side.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account_member.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.persistence.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_reference.size

-- Display: Simple Order Modification With Client Data Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_modification_with_client_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Order Modification With Client Data Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_modification_with_client_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: U
  index, request_id = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Side: C
  index, side = bme_bmefixedincome_orderentry_bmegate_v1_6.side.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_bmefixedincome_orderentry_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Q
  index, order_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: F
  index, algorithmic_trade_indicator = bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator.dissect(buffer, index, packet, parent)

  -- Client Id: U
  index, client_id = bme_bmefixedincome_orderentry_bmegate_v1_6.client_id.dissect(buffer, index, packet, parent)

  -- Account Bolsa: C
  index, account_bolsa = bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa.dissect(buffer, index, packet, parent)

  -- Account: C
  index, account = bme_bmefixedincome_orderentry_bmegate_v1_6.account.dissect(buffer, index, packet, parent)

  -- Dea Flag: F
  index, dea_flag = bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag.dissect(buffer, index, packet, parent)

  -- Decisor Id: U
  index, decisor_id = bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id.dissect(buffer, index, packet, parent)

  -- Executor Id: U
  index, executor_id = bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id.dissect(buffer, index, packet, parent)

  -- Liquidity Provision Activity: F
  index, liquidity_provision_activity = bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity.dissect(buffer, index, packet, parent)

  -- Account Member: C
  index, account_member = bme_bmefixedincome_orderentry_bmegate_v1_6.account_member.dissect(buffer, index, packet, parent)

  -- Last Capacity: C
  index, last_capacity = bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity.dissect(buffer, index, packet, parent)

  -- Received Dept Id: C
  index, received_dept_id = bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id.dissect(buffer, index, packet, parent)

  -- Persistence: C
  index, persistence = bme_bmefixedincome_orderentry_bmegate_v1_6.persistence.dissect(buffer, index, packet, parent)

  -- Client Data Reference: C
  index, client_data_reference = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_reference.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Order Modification With Client Data Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_modification_with_client_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.simple_order_modification_with_client_data_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_modification_with_client_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_modification_with_client_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_modification_with_client_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Order Modification Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_modification_message = {}

-- Size: Simple Order Modification Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_modification_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.side.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.size

-- Display: Simple Order Modification Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_modification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Order Modification Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_modification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: U
  index, request_id = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Side: C
  index, side = bme_bmefixedincome_orderentry_bmegate_v1_6.side.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_bmefixedincome_orderentry_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Q
  index, order_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Order Modification Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_modification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.simple_order_modification_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_modification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_modification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_modification_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple New Order With Client Data Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_new_order_with_client_data_message = {}

-- Size: Simple New Order With Client Data Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_new_order_with_client_data_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.side.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.time_in_force.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account_member.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.persistence.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_reference.size

-- Display: Simple New Order With Client Data Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_new_order_with_client_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple New Order With Client Data Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_new_order_with_client_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: U
  index, request_id = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Side: C
  index, side = bme_bmefixedincome_orderentry_bmegate_v1_6.side.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_bmefixedincome_orderentry_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Q
  index, order_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.dissect(buffer, index, packet, parent)

  -- Time In Force: C
  index, time_in_force = bme_bmefixedincome_orderentry_bmegate_v1_6.time_in_force.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: F
  index, algorithmic_trade_indicator = bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator.dissect(buffer, index, packet, parent)

  -- Client Id: U
  index, client_id = bme_bmefixedincome_orderentry_bmegate_v1_6.client_id.dissect(buffer, index, packet, parent)

  -- Account Bolsa: C
  index, account_bolsa = bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa.dissect(buffer, index, packet, parent)

  -- Account: C
  index, account = bme_bmefixedincome_orderentry_bmegate_v1_6.account.dissect(buffer, index, packet, parent)

  -- Dea Flag: F
  index, dea_flag = bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag.dissect(buffer, index, packet, parent)

  -- Decisor Id: U
  index, decisor_id = bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id.dissect(buffer, index, packet, parent)

  -- Executor Id: U
  index, executor_id = bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id.dissect(buffer, index, packet, parent)

  -- Liquidity Provision Activity: F
  index, liquidity_provision_activity = bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity.dissect(buffer, index, packet, parent)

  -- Account Member: C
  index, account_member = bme_bmefixedincome_orderentry_bmegate_v1_6.account_member.dissect(buffer, index, packet, parent)

  -- Last Capacity: C
  index, last_capacity = bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity.dissect(buffer, index, packet, parent)

  -- Received Dept Id: C
  index, received_dept_id = bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id.dissect(buffer, index, packet, parent)

  -- Persistence: C
  index, persistence = bme_bmefixedincome_orderentry_bmegate_v1_6.persistence.dissect(buffer, index, packet, parent)

  -- Client Data Reference: C
  index, client_data_reference = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_reference.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple New Order With Client Data Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_new_order_with_client_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.simple_new_order_with_client_data_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.simple_new_order_with_client_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.simple_new_order_with_client_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.simple_new_order_with_client_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple New Order Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_new_order_message = {}

-- Size: Simple New Order Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_new_order_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.side.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.time_in_force.size

-- Display: Simple New Order Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple New Order Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: U
  index, request_id = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Side: C
  index, side = bme_bmefixedincome_orderentry_bmegate_v1_6.side.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_bmefixedincome_orderentry_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Q
  index, order_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.order_qty.dissect(buffer, index, packet, parent)

  -- Time In Force: C
  index, time_in_force = bme_bmefixedincome_orderentry_bmegate_v1_6.time_in_force.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple New Order Message
bme_bmefixedincome_orderentry_bmegate_v1_6.simple_new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.simple_new_order_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.simple_new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.simple_new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.simple_new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Order And Quote Client Data Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_and_quote_client_data_message = {}

-- Size: Order And Quote Client Data Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_and_quote_client_data_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.account_member.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.persistence.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_reference.size

-- Display: Order And Quote Client Data Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_and_quote_client_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order And Quote Client Data Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_and_quote_client_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: U
  index, request_id = bme_bmefixedincome_orderentry_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: F
  index, algorithmic_trade_indicator = bme_bmefixedincome_orderentry_bmegate_v1_6.algorithmic_trade_indicator.dissect(buffer, index, packet, parent)

  -- Client Id: U
  index, client_id = bme_bmefixedincome_orderentry_bmegate_v1_6.client_id.dissect(buffer, index, packet, parent)

  -- Account Bolsa: C
  index, account_bolsa = bme_bmefixedincome_orderentry_bmegate_v1_6.account_bolsa.dissect(buffer, index, packet, parent)

  -- Account: C
  index, account = bme_bmefixedincome_orderentry_bmegate_v1_6.account.dissect(buffer, index, packet, parent)

  -- Dea Flag: F
  index, dea_flag = bme_bmefixedincome_orderentry_bmegate_v1_6.dea_flag.dissect(buffer, index, packet, parent)

  -- Decisor Id: U
  index, decisor_id = bme_bmefixedincome_orderentry_bmegate_v1_6.decisor_id.dissect(buffer, index, packet, parent)

  -- Executor Id: U
  index, executor_id = bme_bmefixedincome_orderentry_bmegate_v1_6.executor_id.dissect(buffer, index, packet, parent)

  -- Liquidity Provision Activity: F
  index, liquidity_provision_activity = bme_bmefixedincome_orderentry_bmegate_v1_6.liquidity_provision_activity.dissect(buffer, index, packet, parent)

  -- Account Member: C
  index, account_member = bme_bmefixedincome_orderentry_bmegate_v1_6.account_member.dissect(buffer, index, packet, parent)

  -- Last Capacity: C
  index, last_capacity = bme_bmefixedincome_orderentry_bmegate_v1_6.last_capacity.dissect(buffer, index, packet, parent)

  -- Received Dept Id: C
  index, received_dept_id = bme_bmefixedincome_orderentry_bmegate_v1_6.received_dept_id.dissect(buffer, index, packet, parent)

  -- Persistence: C
  index, persistence = bme_bmefixedincome_orderentry_bmegate_v1_6.persistence.dissect(buffer, index, packet, parent)

  -- Client Data Reference: C
  index, client_data_reference = bme_bmefixedincome_orderentry_bmegate_v1_6.client_data_reference.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order And Quote Client Data Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_and_quote_client_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_and_quote_client_data_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.order_and_quote_client_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.order_and_quote_client_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.order_and_quote_client_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Indication Of Interest Message
bme_bmefixedincome_orderentry_bmegate_v1_6.indication_of_interest_message = {}

-- Size: Indication Of Interest Message
bme_bmefixedincome_orderentry_bmegate_v1_6.indication_of_interest_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ioiid.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_trans_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.side.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_qty.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_id.size

-- Display: Indication Of Interest Message
bme_bmefixedincome_orderentry_bmegate_v1_6.indication_of_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indication Of Interest Message
bme_bmefixedincome_orderentry_bmegate_v1_6.indication_of_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Ioiid: U
  index, ioiid = bme_bmefixedincome_orderentry_bmegate_v1_6.ioiid.dissect(buffer, index, packet, parent)

  -- Ioi Trans Type: C
  index, ioi_trans_type = bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_trans_type.dissect(buffer, index, packet, parent)

  -- Side: C
  index, side = bme_bmefixedincome_orderentry_bmegate_v1_6.side.dissect(buffer, index, packet, parent)

  -- Ioi Qty: Q
  index, ioi_qty = bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_qty.dissect(buffer, index, packet, parent)

  -- Ioi Price: P
  index, ioi_price = bme_bmefixedincome_orderentry_bmegate_v1_6.ioi_price.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indication Of Interest Message
bme_bmefixedincome_orderentry_bmegate_v1_6.indication_of_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.indication_of_interest_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.indication_of_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.indication_of_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.indication_of_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Cancellation Market Member Message
bme_bmefixedincome_orderentry_bmegate_v1_6.quote_cancellation_market_member_message = {}

-- Size: Quote Cancellation Market Member Message
bme_bmefixedincome_orderentry_bmegate_v1_6.quote_cancellation_market_member_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id_2.size

-- Display: Quote Cancellation Market Member Message
bme_bmefixedincome_orderentry_bmegate_v1_6.quote_cancellation_market_member_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancellation Market Member Message
bme_bmefixedincome_orderentry_bmegate_v1_6.quote_cancellation_market_member_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Secondary Order Id 2: U
  index, secondary_order_id_2 = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancellation Market Member Message
bme_bmefixedincome_orderentry_bmegate_v1_6.quote_cancellation_market_member_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.quote_cancellation_market_member_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.quote_cancellation_market_member_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.quote_cancellation_market_member_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.quote_cancellation_market_member_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation Market Member Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancellation_market_member_message = {}

-- Size: Order Cancellation Market Member Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancellation_market_member_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date.size

-- Display: Order Cancellation Market Member Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancellation_market_member_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Market Member Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancellation_market_member_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_bmefixedincome_orderentry_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Entry Date: D
  index, entry_date = bme_bmefixedincome_orderentry_bmegate_v1_6.entry_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation Market Member Message
bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancellation_market_member_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.order_cancellation_market_member_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancellation_market_member_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancellation_market_member_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancellation_market_member_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.security_status_message = {}

-- Size: Security Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.security_status_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.reference_price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_trading_status.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.non_availability_reason.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.high_limit_price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.low_limit_price.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.static_range_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_static_range.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.block_static_range.size

-- Display: Security Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Reference Price: P
  index, reference_price = bme_bmefixedincome_orderentry_bmegate_v1_6.reference_price.dissect(buffer, index, packet, parent)

  -- Security Trading Status: U
  index, security_trading_status = bme_bmefixedincome_orderentry_bmegate_v1_6.security_trading_status.dissect(buffer, index, packet, parent)

  -- Non Availability Reason: U
  index, non_availability_reason = bme_bmefixedincome_orderentry_bmegate_v1_6.non_availability_reason.dissect(buffer, index, packet, parent)

  -- High Limit Price: P
  index, high_limit_price = bme_bmefixedincome_orderentry_bmegate_v1_6.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: P
  index, low_limit_price = bme_bmefixedincome_orderentry_bmegate_v1_6.low_limit_price.dissect(buffer, index, packet, parent)

  -- Static Range Type: C
  index, static_range_type = bme_bmefixedincome_orderentry_bmegate_v1_6.static_range_type.dissect(buffer, index, packet, parent)

  -- Order Static Range: P
  index, order_static_range = bme_bmefixedincome_orderentry_bmegate_v1_6.order_static_range.dissect(buffer, index, packet, parent)

  -- Block Static Range: P
  index, block_static_range = bme_bmefixedincome_orderentry_bmegate_v1_6.block_static_range.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.security_status_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Security List Update Report Message
bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_update_report_message = {}

-- Size: Security List Update Report Message
bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_update_report_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.market_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.symbol.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.symbol_isin.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.fisn.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.issuer_lei.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_group.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.cfi_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.maturity_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.issue_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.contract_multiplier.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.li_spre.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipre.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.li_spost.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipost.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.liquid_instrument.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.admission_requested_by_issuer.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.min_trade_vol.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.round_lot.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.currency.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.modality_mask_b_4.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_description.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trading_obligation.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_name.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_status.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_payment_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.min_price_increment.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.number_of_decimals.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_number_of_decimals.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_rate.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.issuer.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trading_scope_b_1.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.first_trading_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.settlement_system.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.maturity.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_periodicity.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.strippable.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.volume_issued.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.alive_volume.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_quotation.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_calculation_procedure.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.next_redemption_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.type_of_redemption.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.facial.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.calculation_method.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.date_last_coupon_was_paid.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.bond_seniority.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.interest_accrual_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.start_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.price_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.spread_to_index.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_curve_points_units.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_curve_points_value.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_security_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_r_8.size

-- Display: Security List Update Report Message
bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_update_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Update Report Message
bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_update_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Market Id: C
  index, market_id = bme_bmefixedincome_orderentry_bmegate_v1_6.market_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Symbol: C
  index, symbol = bme_bmefixedincome_orderentry_bmegate_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Isin: C
  index, symbol_isin = bme_bmefixedincome_orderentry_bmegate_v1_6.symbol_isin.dissect(buffer, index, packet, parent)

  -- Fisn: C
  index, fisn = bme_bmefixedincome_orderentry_bmegate_v1_6.fisn.dissect(buffer, index, packet, parent)

  -- Issuer Lei: C
  index, issuer_lei = bme_bmefixedincome_orderentry_bmegate_v1_6.issuer_lei.dissect(buffer, index, packet, parent)

  -- Security Group: C
  index, security_group = bme_bmefixedincome_orderentry_bmegate_v1_6.security_group.dissect(buffer, index, packet, parent)

  -- Cfi Code: C
  index, cfi_code = bme_bmefixedincome_orderentry_bmegate_v1_6.cfi_code.dissect(buffer, index, packet, parent)

  -- Security Type: C
  index, security_type = bme_bmefixedincome_orderentry_bmegate_v1_6.security_type.dissect(buffer, index, packet, parent)

  -- Maturity Date: D
  index, maturity_date = bme_bmefixedincome_orderentry_bmegate_v1_6.maturity_date.dissect(buffer, index, packet, parent)

  -- Issue Date: D
  index, issue_date = bme_bmefixedincome_orderentry_bmegate_v1_6.issue_date.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: A
  index, contract_multiplier = bme_bmefixedincome_orderentry_bmegate_v1_6.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Li Spre: A
  index, li_spre = bme_bmefixedincome_orderentry_bmegate_v1_6.li_spre.dissect(buffer, index, packet, parent)

  -- Sst Ipre: A
  index, sst_ipre = bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipre.dissect(buffer, index, packet, parent)

  -- Li Spost: A
  index, li_spost = bme_bmefixedincome_orderentry_bmegate_v1_6.li_spost.dissect(buffer, index, packet, parent)

  -- Sst Ipost: A
  index, sst_ipost = bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipost.dissect(buffer, index, packet, parent)

  -- Liquid Instrument: F
  index, liquid_instrument = bme_bmefixedincome_orderentry_bmegate_v1_6.liquid_instrument.dissect(buffer, index, packet, parent)

  -- Admission Requested By Issuer: F
  index, admission_requested_by_issuer = bme_bmefixedincome_orderentry_bmegate_v1_6.admission_requested_by_issuer.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: Q
  index, min_trade_vol = bme_bmefixedincome_orderentry_bmegate_v1_6.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Round Lot: Q
  index, round_lot = bme_bmefixedincome_orderentry_bmegate_v1_6.round_lot.dissect(buffer, index, packet, parent)

  -- Currency: C
  index, currency = bme_bmefixedincome_orderentry_bmegate_v1_6.currency.dissect(buffer, index, packet, parent)

  -- Modality Mask B 4: B
  index, modality_mask_b_4 = bme_bmefixedincome_orderentry_bmegate_v1_6.modality_mask_b_4.dissect(buffer, index, packet, parent)

  -- Security Description: C
  index, security_description = bme_bmefixedincome_orderentry_bmegate_v1_6.security_description.dissect(buffer, index, packet, parent)

  -- Trading Obligation: F
  index, trading_obligation = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_obligation.dissect(buffer, index, packet, parent)

  -- Security Name: C
  index, security_name = bme_bmefixedincome_orderentry_bmegate_v1_6.security_name.dissect(buffer, index, packet, parent)

  -- Security Status: C
  index, security_status = bme_bmefixedincome_orderentry_bmegate_v1_6.security_status.dissect(buffer, index, packet, parent)

  -- Coupon Payment Date: D
  index, coupon_payment_date = bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_payment_date.dissect(buffer, index, packet, parent)

  -- Min Price Increment: P
  index, min_price_increment = bme_bmefixedincome_orderentry_bmegate_v1_6.min_price_increment.dissect(buffer, index, packet, parent)

  -- Number Of Decimals: U
  index, number_of_decimals = bme_bmefixedincome_orderentry_bmegate_v1_6.number_of_decimals.dissect(buffer, index, packet, parent)

  -- Order Number Of Decimals: U
  index, order_number_of_decimals = bme_bmefixedincome_orderentry_bmegate_v1_6.order_number_of_decimals.dissect(buffer, index, packet, parent)

  -- Coupon Rate: R
  index, coupon_rate = bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_rate.dissect(buffer, index, packet, parent)

  -- Issuer: C
  index, issuer = bme_bmefixedincome_orderentry_bmegate_v1_6.issuer.dissect(buffer, index, packet, parent)

  -- Trading Scope B 1: B
  index, trading_scope_b_1 = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_scope_b_1.dissect(buffer, index, packet, parent)

  -- First Trading Date: D
  index, first_trading_date = bme_bmefixedincome_orderentry_bmegate_v1_6.first_trading_date.dissect(buffer, index, packet, parent)

  -- Settlement System: C
  index, settlement_system = bme_bmefixedincome_orderentry_bmegate_v1_6.settlement_system.dissect(buffer, index, packet, parent)

  -- Maturity: P
  index, maturity = bme_bmefixedincome_orderentry_bmegate_v1_6.maturity.dissect(buffer, index, packet, parent)

  -- Coupon Periodicity: U
  index, coupon_periodicity = bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_periodicity.dissect(buffer, index, packet, parent)

  -- Benchmark: F
  index, benchmark = bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark.dissect(buffer, index, packet, parent)

  -- Strippable: F
  index, strippable = bme_bmefixedincome_orderentry_bmegate_v1_6.strippable.dissect(buffer, index, packet, parent)

  -- Volume Issued: A
  index, volume_issued = bme_bmefixedincome_orderentry_bmegate_v1_6.volume_issued.dissect(buffer, index, packet, parent)

  -- Alive Volume: A
  index, alive_volume = bme_bmefixedincome_orderentry_bmegate_v1_6.alive_volume.dissect(buffer, index, packet, parent)

  -- Coupon Type: C
  index, coupon_type = bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_type.dissect(buffer, index, packet, parent)

  -- Coupon Quotation: F
  index, coupon_quotation = bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_quotation.dissect(buffer, index, packet, parent)

  -- Accrued Interest Calculation Procedure: C
  index, accrued_interest_calculation_procedure = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_calculation_procedure.dissect(buffer, index, packet, parent)

  -- Next Redemption Date: D
  index, next_redemption_date = bme_bmefixedincome_orderentry_bmegate_v1_6.next_redemption_date.dissect(buffer, index, packet, parent)

  -- Type Of Redemption: C
  index, type_of_redemption = bme_bmefixedincome_orderentry_bmegate_v1_6.type_of_redemption.dissect(buffer, index, packet, parent)

  -- Facial: R
  index, facial = bme_bmefixedincome_orderentry_bmegate_v1_6.facial.dissect(buffer, index, packet, parent)

  -- Calculation Method: C
  index, calculation_method = bme_bmefixedincome_orderentry_bmegate_v1_6.calculation_method.dissect(buffer, index, packet, parent)

  -- Date Last Coupon Was Paid: D
  index, date_last_coupon_was_paid = bme_bmefixedincome_orderentry_bmegate_v1_6.date_last_coupon_was_paid.dissect(buffer, index, packet, parent)

  -- Bond Seniority: C
  index, bond_seniority = bme_bmefixedincome_orderentry_bmegate_v1_6.bond_seniority.dissect(buffer, index, packet, parent)

  -- Interest Accrual Date: D
  index, interest_accrual_date = bme_bmefixedincome_orderentry_bmegate_v1_6.interest_accrual_date.dissect(buffer, index, packet, parent)

  -- Start Date: D
  index, start_date = bme_bmefixedincome_orderentry_bmegate_v1_6.start_date.dissect(buffer, index, packet, parent)

  -- Price Type: C
  index, price_type = bme_bmefixedincome_orderentry_bmegate_v1_6.price_type.dissect(buffer, index, packet, parent)

  -- Spread To Index: R
  index, spread_to_index = bme_bmefixedincome_orderentry_bmegate_v1_6.spread_to_index.dissect(buffer, index, packet, parent)

  -- Benchmark Curve Points Units: C
  index, benchmark_curve_points_units = bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_curve_points_units.dissect(buffer, index, packet, parent)

  -- Benchmark Curve Points Value: U
  index, benchmark_curve_points_value = bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_curve_points_value.dissect(buffer, index, packet, parent)

  -- Benchmark Security Id: C
  index, benchmark_security_id = bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_security_id.dissect(buffer, index, packet, parent)

  -- Accrued Interest Rate R 8: R
  index, accrued_interest_rate_r_8 = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_r_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security List Update Report Message
bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_update_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.security_list_update_report_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_update_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_update_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_update_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Security List Message
bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_message = {}

-- Size: Security List Message
bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.market_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.symbol.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.symbol_isin.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.fisn.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.issuer_lei.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_group.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.cfi_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.maturity_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.issue_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.contract_multiplier.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.li_spre.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipre.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.li_spost.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipost.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.liquid_instrument.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.admission_requested_by_issuer.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.min_trade_vol.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.round_lot.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.currency.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.modality_mask_b_4.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_description.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trading_obligation.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_name.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_status.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_payment_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.min_price_increment.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.number_of_decimals.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.order_number_of_decimals.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_rate.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.issuer.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trading_scope_b_1.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.first_trading_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.settlement_system.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.maturity.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_periodicity.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.strippable.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.volume_issued.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.alive_volume.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_quotation.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_calculation_procedure.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.next_redemption_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.type_of_redemption.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.facial.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.calculation_method.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.date_last_coupon_was_paid.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.bond_seniority.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.interest_accrual_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.start_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.price_type.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.spread_to_index.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_curve_points_units.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_curve_points_value.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_security_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_r_8.size

-- Display: Security List Message
bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Message
bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Market Id: C
  index, market_id = bme_bmefixedincome_orderentry_bmegate_v1_6.market_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Symbol: C
  index, symbol = bme_bmefixedincome_orderentry_bmegate_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Isin: C
  index, symbol_isin = bme_bmefixedincome_orderentry_bmegate_v1_6.symbol_isin.dissect(buffer, index, packet, parent)

  -- Fisn: C
  index, fisn = bme_bmefixedincome_orderentry_bmegate_v1_6.fisn.dissect(buffer, index, packet, parent)

  -- Issuer Lei: C
  index, issuer_lei = bme_bmefixedincome_orderentry_bmegate_v1_6.issuer_lei.dissect(buffer, index, packet, parent)

  -- Security Group: C
  index, security_group = bme_bmefixedincome_orderentry_bmegate_v1_6.security_group.dissect(buffer, index, packet, parent)

  -- Cfi Code: C
  index, cfi_code = bme_bmefixedincome_orderentry_bmegate_v1_6.cfi_code.dissect(buffer, index, packet, parent)

  -- Security Type: C
  index, security_type = bme_bmefixedincome_orderentry_bmegate_v1_6.security_type.dissect(buffer, index, packet, parent)

  -- Maturity Date: D
  index, maturity_date = bme_bmefixedincome_orderentry_bmegate_v1_6.maturity_date.dissect(buffer, index, packet, parent)

  -- Issue Date: D
  index, issue_date = bme_bmefixedincome_orderentry_bmegate_v1_6.issue_date.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: A
  index, contract_multiplier = bme_bmefixedincome_orderentry_bmegate_v1_6.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Li Spre: A
  index, li_spre = bme_bmefixedincome_orderentry_bmegate_v1_6.li_spre.dissect(buffer, index, packet, parent)

  -- Sst Ipre: A
  index, sst_ipre = bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipre.dissect(buffer, index, packet, parent)

  -- Li Spost: A
  index, li_spost = bme_bmefixedincome_orderentry_bmegate_v1_6.li_spost.dissect(buffer, index, packet, parent)

  -- Sst Ipost: A
  index, sst_ipost = bme_bmefixedincome_orderentry_bmegate_v1_6.sst_ipost.dissect(buffer, index, packet, parent)

  -- Liquid Instrument: F
  index, liquid_instrument = bme_bmefixedincome_orderentry_bmegate_v1_6.liquid_instrument.dissect(buffer, index, packet, parent)

  -- Admission Requested By Issuer: F
  index, admission_requested_by_issuer = bme_bmefixedincome_orderentry_bmegate_v1_6.admission_requested_by_issuer.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: Q
  index, min_trade_vol = bme_bmefixedincome_orderentry_bmegate_v1_6.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Round Lot: Q
  index, round_lot = bme_bmefixedincome_orderentry_bmegate_v1_6.round_lot.dissect(buffer, index, packet, parent)

  -- Currency: C
  index, currency = bme_bmefixedincome_orderentry_bmegate_v1_6.currency.dissect(buffer, index, packet, parent)

  -- Modality Mask B 4: B
  index, modality_mask_b_4 = bme_bmefixedincome_orderentry_bmegate_v1_6.modality_mask_b_4.dissect(buffer, index, packet, parent)

  -- Security Description: C
  index, security_description = bme_bmefixedincome_orderentry_bmegate_v1_6.security_description.dissect(buffer, index, packet, parent)

  -- Trading Obligation: F
  index, trading_obligation = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_obligation.dissect(buffer, index, packet, parent)

  -- Security Name: C
  index, security_name = bme_bmefixedincome_orderentry_bmegate_v1_6.security_name.dissect(buffer, index, packet, parent)

  -- Security Status: C
  index, security_status = bme_bmefixedincome_orderentry_bmegate_v1_6.security_status.dissect(buffer, index, packet, parent)

  -- Coupon Payment Date: D
  index, coupon_payment_date = bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_payment_date.dissect(buffer, index, packet, parent)

  -- Min Price Increment: P
  index, min_price_increment = bme_bmefixedincome_orderentry_bmegate_v1_6.min_price_increment.dissect(buffer, index, packet, parent)

  -- Number Of Decimals: U
  index, number_of_decimals = bme_bmefixedincome_orderentry_bmegate_v1_6.number_of_decimals.dissect(buffer, index, packet, parent)

  -- Order Number Of Decimals: U
  index, order_number_of_decimals = bme_bmefixedincome_orderentry_bmegate_v1_6.order_number_of_decimals.dissect(buffer, index, packet, parent)

  -- Coupon Rate: R
  index, coupon_rate = bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_rate.dissect(buffer, index, packet, parent)

  -- Issuer: C
  index, issuer = bme_bmefixedincome_orderentry_bmegate_v1_6.issuer.dissect(buffer, index, packet, parent)

  -- Trading Scope B 1: B
  index, trading_scope_b_1 = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_scope_b_1.dissect(buffer, index, packet, parent)

  -- First Trading Date: D
  index, first_trading_date = bme_bmefixedincome_orderentry_bmegate_v1_6.first_trading_date.dissect(buffer, index, packet, parent)

  -- Settlement System: C
  index, settlement_system = bme_bmefixedincome_orderentry_bmegate_v1_6.settlement_system.dissect(buffer, index, packet, parent)

  -- Maturity: P
  index, maturity = bme_bmefixedincome_orderentry_bmegate_v1_6.maturity.dissect(buffer, index, packet, parent)

  -- Coupon Periodicity: U
  index, coupon_periodicity = bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_periodicity.dissect(buffer, index, packet, parent)

  -- Benchmark: F
  index, benchmark = bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark.dissect(buffer, index, packet, parent)

  -- Strippable: F
  index, strippable = bme_bmefixedincome_orderentry_bmegate_v1_6.strippable.dissect(buffer, index, packet, parent)

  -- Volume Issued: A
  index, volume_issued = bme_bmefixedincome_orderentry_bmegate_v1_6.volume_issued.dissect(buffer, index, packet, parent)

  -- Alive Volume: A
  index, alive_volume = bme_bmefixedincome_orderentry_bmegate_v1_6.alive_volume.dissect(buffer, index, packet, parent)

  -- Coupon Type: C
  index, coupon_type = bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_type.dissect(buffer, index, packet, parent)

  -- Coupon Quotation: F
  index, coupon_quotation = bme_bmefixedincome_orderentry_bmegate_v1_6.coupon_quotation.dissect(buffer, index, packet, parent)

  -- Accrued Interest Calculation Procedure: C
  index, accrued_interest_calculation_procedure = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_calculation_procedure.dissect(buffer, index, packet, parent)

  -- Next Redemption Date: D
  index, next_redemption_date = bme_bmefixedincome_orderentry_bmegate_v1_6.next_redemption_date.dissect(buffer, index, packet, parent)

  -- Type Of Redemption: C
  index, type_of_redemption = bme_bmefixedincome_orderentry_bmegate_v1_6.type_of_redemption.dissect(buffer, index, packet, parent)

  -- Facial: R
  index, facial = bme_bmefixedincome_orderentry_bmegate_v1_6.facial.dissect(buffer, index, packet, parent)

  -- Calculation Method: C
  index, calculation_method = bme_bmefixedincome_orderentry_bmegate_v1_6.calculation_method.dissect(buffer, index, packet, parent)

  -- Date Last Coupon Was Paid: D
  index, date_last_coupon_was_paid = bme_bmefixedincome_orderentry_bmegate_v1_6.date_last_coupon_was_paid.dissect(buffer, index, packet, parent)

  -- Bond Seniority: C
  index, bond_seniority = bme_bmefixedincome_orderentry_bmegate_v1_6.bond_seniority.dissect(buffer, index, packet, parent)

  -- Interest Accrual Date: D
  index, interest_accrual_date = bme_bmefixedincome_orderentry_bmegate_v1_6.interest_accrual_date.dissect(buffer, index, packet, parent)

  -- Start Date: D
  index, start_date = bme_bmefixedincome_orderentry_bmegate_v1_6.start_date.dissect(buffer, index, packet, parent)

  -- Price Type: C
  index, price_type = bme_bmefixedincome_orderentry_bmegate_v1_6.price_type.dissect(buffer, index, packet, parent)

  -- Spread To Index: R
  index, spread_to_index = bme_bmefixedincome_orderentry_bmegate_v1_6.spread_to_index.dissect(buffer, index, packet, parent)

  -- Benchmark Curve Points Units: C
  index, benchmark_curve_points_units = bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_curve_points_units.dissect(buffer, index, packet, parent)

  -- Benchmark Curve Points Value: U
  index, benchmark_curve_points_value = bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_curve_points_value.dissect(buffer, index, packet, parent)

  -- Benchmark Security Id: C
  index, benchmark_security_id = bme_bmefixedincome_orderentry_bmegate_v1_6.benchmark_security_id.dissect(buffer, index, packet, parent)

  -- Accrued Interest Rate R 8: R
  index, accrued_interest_rate_r_8 = bme_bmefixedincome_orderentry_bmegate_v1_6.accrued_interest_rate_r_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security List Message
bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.security_list_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_message.fields(buffer, offset, packet, parent)
  end
end

-- Statistics Repeating Group
bme_bmefixedincome_orderentry_bmegate_v1_6.statistics_repeating_group = {}

-- Size: Statistics Repeating Group
bme_bmefixedincome_orderentry_bmegate_v1_6.statistics_repeating_group.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.data_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.data_value.size

-- Display: Statistics Repeating Group
bme_bmefixedincome_orderentry_bmegate_v1_6.statistics_repeating_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Repeating Group
bme_bmefixedincome_orderentry_bmegate_v1_6.statistics_repeating_group.fields = function(buffer, offset, packet, parent, statistics_repeating_group_index)
  local index = offset

  -- Implicit Statistics Repeating Group Index
  if statistics_repeating_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.statistics_repeating_group_index, statistics_repeating_group_index)
    iteration:set_generated()
  end

  -- Data Code: C
  index, data_code = bme_bmefixedincome_orderentry_bmegate_v1_6.data_code.dissect(buffer, index, packet, parent)

  -- Data Value: 8 Byte Signed Fixed Width Integer
  index, data_value = bme_bmefixedincome_orderentry_bmegate_v1_6.data_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Repeating Group
bme_bmefixedincome_orderentry_bmegate_v1_6.statistics_repeating_group.dissect = function(buffer, offset, packet, parent, statistics_repeating_group_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.statistics_repeating_group, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.statistics_repeating_group.fields(buffer, offset, packet, parent, statistics_repeating_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.statistics_repeating_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.statistics_repeating_group.fields(buffer, offset, packet, parent, statistics_repeating_group_index)
  end
end

-- Statistics Message
bme_bmefixedincome_orderentry_bmegate_v1_6.statistics_message = {}

-- Calculate size of: Statistics Message
bme_bmefixedincome_orderentry_bmegate_v1_6.statistics_message.size = function(buffer, offset)
  local index = 0

  index = index + bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size

  index = index + bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size

  index = index + bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.size

  index = index + bme_bmefixedincome_orderentry_bmegate_v1_6.data_count.size

  -- Calculate field size from count
  local statistics_repeating_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + statistics_repeating_group_count * 9

  return index
end

-- Display: Statistics Message
bme_bmefixedincome_orderentry_bmegate_v1_6.statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Message
bme_bmefixedincome_orderentry_bmegate_v1_6.statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Data Count: U
  index, data_count = bme_bmefixedincome_orderentry_bmegate_v1_6.data_count.dissect(buffer, index, packet, parent)

  -- Repeating: Statistics Repeating Group
  for statistics_repeating_group_index = 1, data_count do
    index, statistics_repeating_group = bme_bmefixedincome_orderentry_bmegate_v1_6.statistics_repeating_group.dissect(buffer, index, packet, parent, statistics_repeating_group_index)
  end

  return index
end

-- Dissect: Statistics Message
bme_bmefixedincome_orderentry_bmegate_v1_6.statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.statistics_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Security List Cancellation Report Message
bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_cancellation_report_message = {}

-- Size: Security List Cancellation Report Message
bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_cancellation_report_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.market_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.symbol.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.symbol_isin.size

-- Display: Security List Cancellation Report Message
bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_cancellation_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Cancellation Report Message
bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_cancellation_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Market Id: C
  index, market_id = bme_bmefixedincome_orderentry_bmegate_v1_6.market_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_bmefixedincome_orderentry_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmefixedincome_orderentry_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Symbol: C
  index, symbol = bme_bmefixedincome_orderentry_bmegate_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Isin: C
  index, symbol_isin = bme_bmefixedincome_orderentry_bmegate_v1_6.symbol_isin.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security List Cancellation Report Message
bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_cancellation_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.security_list_cancellation_report_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_cancellation_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_cancellation_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_cancellation_report_message.fields(buffer, offset, packet, parent)
  end
end

-- News Message
bme_bmefixedincome_orderentry_bmegate_v1_6.news_message = {}

-- Size: News Message
bme_bmefixedincome_orderentry_bmegate_v1_6.news_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.news_text.size

-- Display: News Message
bme_bmefixedincome_orderentry_bmegate_v1_6.news_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: News Message
bme_bmefixedincome_orderentry_bmegate_v1_6.news_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- News Text: C
  index, news_text = bme_bmefixedincome_orderentry_bmegate_v1_6.news_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: News Message
bme_bmefixedincome_orderentry_bmegate_v1_6.news_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.news_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.news_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.news_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.news_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_status_message = {}

-- Size: Trading Session Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_status_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_sub_id.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.trad_ses_status.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.size

-- Display: Trading Session Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: U
  index, trading_session_sub_id = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Trad Ses Status: U
  index, trad_ses_status = bme_bmefixedincome_orderentry_bmegate_v1_6.trad_ses_status.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmefixedincome_orderentry_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.trading_session_status_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Reject Message
bme_bmefixedincome_orderentry_bmegate_v1_6.reject_message = {}

-- Size: Reject Message
bme_bmefixedincome_orderentry_bmegate_v1_6.reject_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.session_reject_reason.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.text_c_58.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.msg_rejected_reference.size

-- Display: Reject Message
bme_bmefixedincome_orderentry_bmegate_v1_6.reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject Message
bme_bmefixedincome_orderentry_bmegate_v1_6.reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Session Reject Reason: U
  index, session_reject_reason = bme_bmefixedincome_orderentry_bmegate_v1_6.session_reject_reason.dissect(buffer, index, packet, parent)

  -- Text C 58: C
  index, text_c_58 = bme_bmefixedincome_orderentry_bmegate_v1_6.text_c_58.dissect(buffer, index, packet, parent)

  -- Msg Rejected Reference: (raw data)
  index, msg_rejected_reference = bme_bmefixedincome_orderentry_bmegate_v1_6.msg_rejected_reference.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject Message
bme_bmefixedincome_orderentry_bmegate_v1_6.reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.reject_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Logout Message
bme_bmefixedincome_orderentry_bmegate_v1_6.logout_message = {}

-- Display: Logout Message
bme_bmefixedincome_orderentry_bmegate_v1_6.logout_message.display = function(packet, parent, length)
  return "Logout Message"
end


-- Dissect: Logout Message
bme_bmefixedincome_orderentry_bmegate_v1_6.logout_message.dissect = function(buffer, offset, packet, parent)
  local display = bme_bmefixedincome_orderentry_bmegate_v1_6.logout_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logon Message
bme_bmefixedincome_orderentry_bmegate_v1_6.logon_message = {}

-- Size: Logon Message
bme_bmefixedincome_orderentry_bmegate_v1_6.logon_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.username.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.password.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.software_name.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.expected_sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.subscriptions.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.protocol_version.size

-- Display: Logon Message
bme_bmefixedincome_orderentry_bmegate_v1_6.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
bme_bmefixedincome_orderentry_bmegate_v1_6.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: C
  index, username = bme_bmefixedincome_orderentry_bmegate_v1_6.username.dissect(buffer, index, packet, parent)

  -- Password: C
  index, password = bme_bmefixedincome_orderentry_bmegate_v1_6.password.dissect(buffer, index, packet, parent)

  -- Software Name: C
  index, software_name = bme_bmefixedincome_orderentry_bmegate_v1_6.software_name.dissect(buffer, index, packet, parent)

  -- Expected Sequence Number: U
  index, expected_sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.expected_sequence_number.dissect(buffer, index, packet, parent)

  -- Subscriptions: B
  index, subscriptions = bme_bmefixedincome_orderentry_bmegate_v1_6.subscriptions.dissect(buffer, index, packet, parent)

  -- Protocol Version: C
  index, protocol_version = bme_bmefixedincome_orderentry_bmegate_v1_6.protocol_version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
bme_bmefixedincome_orderentry_bmegate_v1_6.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.logon_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Network Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.network_status_message = {}

-- Size: Network Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.network_status_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.network_status_value.size

-- Display: Network Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.network_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Network Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.network_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Network Status Value: U
  index, network_status_value = bme_bmefixedincome_orderentry_bmegate_v1_6.network_status_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Network Status Message
bme_bmefixedincome_orderentry_bmegate_v1_6.network_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.network_status_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.network_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.network_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.network_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
bme_bmefixedincome_orderentry_bmegate_v1_6.heartbeat_message = {}

-- Size: Heartbeat Message
bme_bmefixedincome_orderentry_bmegate_v1_6.heartbeat_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size

-- Display: Heartbeat Message
bme_bmefixedincome_orderentry_bmegate_v1_6.heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Message
bme_bmefixedincome_orderentry_bmegate_v1_6.heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Message
bme_bmefixedincome_orderentry_bmegate_v1_6.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.heartbeat_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Logout Response Message
bme_bmefixedincome_orderentry_bmegate_v1_6.logout_response_message = {}

-- Size: Logout Response Message
bme_bmefixedincome_orderentry_bmegate_v1_6.logout_response_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.logout_reason.size

-- Display: Logout Response Message
bme_bmefixedincome_orderentry_bmegate_v1_6.logout_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Response Message
bme_bmefixedincome_orderentry_bmegate_v1_6.logout_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Logout Reason: U
  index, logout_reason = bme_bmefixedincome_orderentry_bmegate_v1_6.logout_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Response Message
bme_bmefixedincome_orderentry_bmegate_v1_6.logout_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.logout_response_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.logout_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.logout_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.logout_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Response Message
bme_bmefixedincome_orderentry_bmegate_v1_6.logon_response_message = {}

-- Size: Logon Response Message
bme_bmefixedincome_orderentry_bmegate_v1_6.logon_response_message.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.heart_bt_int.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.protocol_version.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.test_production_ind.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.environment_code.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.session_date.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.expected_sequence_number.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number_to.size

-- Display: Logon Response Message
bme_bmefixedincome_orderentry_bmegate_v1_6.logon_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Response Message
bme_bmefixedincome_orderentry_bmegate_v1_6.logon_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Heart Bt Int: U
  index, heart_bt_int = bme_bmefixedincome_orderentry_bmegate_v1_6.heart_bt_int.dissect(buffer, index, packet, parent)

  -- Protocol Version: C
  index, protocol_version = bme_bmefixedincome_orderentry_bmegate_v1_6.protocol_version.dissect(buffer, index, packet, parent)

  -- Test Production Ind: C
  index, test_production_ind = bme_bmefixedincome_orderentry_bmegate_v1_6.test_production_ind.dissect(buffer, index, packet, parent)

  -- Environment Code: C
  index, environment_code = bme_bmefixedincome_orderentry_bmegate_v1_6.environment_code.dissect(buffer, index, packet, parent)

  -- Session Date: D
  index, session_date = bme_bmefixedincome_orderentry_bmegate_v1_6.session_date.dissect(buffer, index, packet, parent)

  -- Expected Sequence Number: U
  index, expected_sequence_number = bme_bmefixedincome_orderentry_bmegate_v1_6.expected_sequence_number.dissect(buffer, index, packet, parent)

  -- Sequence Number To: U
  index, sequence_number_to = bme_bmefixedincome_orderentry_bmegate_v1_6.sequence_number_to.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Response Message
bme_bmefixedincome_orderentry_bmegate_v1_6.logon_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.logon_response_message, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.logon_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.logon_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.logon_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
bme_bmefixedincome_orderentry_bmegate_v1_6.payload = {}

-- Dissect: Payload
bme_bmefixedincome_orderentry_bmegate_v1_6.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Logon Response Message
  if message_type == 0x08 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.logon_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Response Message
  if message_type == 0x0B then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.logout_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if message_type == 0x30 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.heartbeat_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Network Status Message
  if message_type == 0x0A then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.network_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Message
  if message_type == 0x41 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.logon_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if message_type == 0x35 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.logout_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reject Message
  if message_type == 0x0D then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Status Message
  if message_type == 0x68 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.trading_session_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect News Message
  if message_type == 0x42 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.news_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security List Cancellation Report Message
  if message_type == 0x78 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_cancellation_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Message
  if message_type == 0x84 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security List Message
  if message_type == 0x79 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security List Update Report Message
  if message_type == 0x80 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.security_list_update_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 0x66 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancellation Market Member Message
  if message_type == 0x01 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancellation_market_member_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Cancellation Market Member Message
  if message_type == 0x05 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.quote_cancellation_market_member_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Indication Of Interest Message
  if message_type == 0x36 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.indication_of_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order And Quote Client Data Message
  if message_type == 0x6F then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.order_and_quote_client_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple New Order Message
  if message_type == 0x44 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.simple_new_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple New Order With Client Data Message
  if message_type == 0x45 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.simple_new_order_with_client_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Order Modification Message
  if message_type == 0x47 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_modification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Order Modification With Client Data Message
  if message_type == 0x48 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_modification_with_client_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancellation Request Message
  if message_type == 0x46 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancellation_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Quote Message
  if message_type == 0x53 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.new_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Modification Request Message
  if message_type == 0x61 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.quote_modification_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Cancellation Request Message
  if message_type == 0x5A then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.quote_cancellation_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Orderquote Cancellation Message
  if message_type == 0x71 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order And Quote Client Data Parameters Ack Nack Message
  if message_type == 0x87 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.order_and_quote_client_data_parameters_ack_nack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Order Status Message
  if message_type == 0x02 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.simple_order_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Status Message
  if message_type == 0x06 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.quote_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Reject Message
  if message_type == 0x39 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.order_cancel_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Orderquote Cancellation Completion Message
  if message_type == 0x72 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_completion_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Orderquote Cancellation Reject Message
  if message_type == 0x73 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.mass_orderquote_cancellation_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Business Message Reject Message
  if message_type == 0x6A then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.business_message_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Private Information 2 Legs Message
  if message_type == 0x17 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_2_legs_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Trade Amendment Or Cancellation 1 Leg Buy Private Information Message
  if message_type == 0x1A then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_buy_private_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Trade Amendment Or Cancellation 1 Leg Sell Private Information Message
  if message_type == 0x1C then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_sell_private_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Trade Amendment Or Cancellation 2 Legs Private Information Message
  if message_type == 0x1E then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.trade_trade_amendment_or_cancellation_2_legs_private_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Private Information 1 Leg Buy Order Entry Message
  if message_type == 0x12 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_1_leg_buy_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Private Information 1 Leg Sell Order Entry Message
  if message_type == 0x14 then
    return bme_bmefixedincome_orderentry_bmegate_v1_6.execution_private_information_1_leg_sell_order_entry_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
bme_bmefixedincome_orderentry_bmegate_v1_6.message_header = {}

-- Size: Message Header
bme_bmefixedincome_orderentry_bmegate_v1_6.message_header.size =
  bme_bmefixedincome_orderentry_bmegate_v1_6.message_size.size + 
  bme_bmefixedincome_orderentry_bmegate_v1_6.message_type.size

-- Display: Message Header
bme_bmefixedincome_orderentry_bmegate_v1_6.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
bme_bmefixedincome_orderentry_bmegate_v1_6.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: U
  index, message_size = bme_bmefixedincome_orderentry_bmegate_v1_6.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: U
  index, message_type = bme_bmefixedincome_orderentry_bmegate_v1_6.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
bme_bmefixedincome_orderentry_bmegate_v1_6.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.message_header, buffer(offset, 0))
    local index = bme_bmefixedincome_orderentry_bmegate_v1_6.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmefixedincome_orderentry_bmegate_v1_6.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
bme_bmefixedincome_orderentry_bmegate_v1_6.message = {}

-- Display: Message
bme_bmefixedincome_orderentry_bmegate_v1_6.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
bme_bmefixedincome_orderentry_bmegate_v1_6.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = bme_bmefixedincome_orderentry_bmegate_v1_6.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 40 branches
  index = bme_bmefixedincome_orderentry_bmegate_v1_6.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
bme_bmefixedincome_orderentry_bmegate_v1_6.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6.fields.message, buffer(offset, 0))
    local current = bme_bmefixedincome_orderentry_bmegate_v1_6.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = bme_bmefixedincome_orderentry_bmegate_v1_6.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bme_bmefixedincome_orderentry_bmegate_v1_6.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Packet
bme_bmefixedincome_orderentry_bmegate_v1_6.packet = {}

-- Verify required size of Tcp packet
bme_bmefixedincome_orderentry_bmegate_v1_6.packet.requiredsize = function(buffer)
  return buffer:len() >= bme_bmefixedincome_orderentry_bmegate_v1_6.message_header.size
end

-- Dissect Packet
bme_bmefixedincome_orderentry_bmegate_v1_6.packet.dissect = function(buffer, packet, parent)
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
    index, message = bme_bmefixedincome_orderentry_bmegate_v1_6.message.dissect(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_bme_bmefixedincome_orderentry_bmegate_v1_6.init()
end

-- Dissector for Bme BmeFixedIncome OrderEntry BmeGate 1.6
function omi_bme_bmefixedincome_orderentry_bmegate_v1_6.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_bme_bmefixedincome_orderentry_bmegate_v1_6.name

  -- Dissect protocol
  local protocol = parent:add(omi_bme_bmefixedincome_orderentry_bmegate_v1_6, buffer(), omi_bme_bmefixedincome_orderentry_bmegate_v1_6.description, "("..buffer:len().." Bytes)")
  return bme_bmefixedincome_orderentry_bmegate_v1_6.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Bme BmeFixedIncome OrderEntry BmeGate 1.6 (Tcp)
local function omi_bme_bmefixedincome_orderentry_bmegate_v1_6_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bme_bmefixedincome_orderentry_bmegate_v1_6.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bme_bmefixedincome_orderentry_bmegate_v1_6
  omi_bme_bmefixedincome_orderentry_bmegate_v1_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Bme BmeFixedIncome OrderEntry BmeGate 1.6
omi_bme_bmefixedincome_orderentry_bmegate_v1_6:register_heuristic("tcp", omi_bme_bmefixedincome_orderentry_bmegate_v1_6_tcp_heuristic)

-- Register Bme BmeFixedIncome OrderEntry BmeGate 1.6 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_bme_bmefixedincome_orderentry_bmegate_v1_6)

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
