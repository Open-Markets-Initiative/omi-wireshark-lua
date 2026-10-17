-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bme Meff MarketAndOrder BmeGate 1.6 Protocol
local omi_bme_meff_marketandorder_bmegate_v1_6 = Proto("Omi.Bme.Meff.MarketAndOrder.BmeGate.v1.6", "Bme Meff MarketAndOrder BmeGate 1.6")

-- Protocol table
local bme_meff_marketandorder_bmegate_v1_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bme Meff MarketAndOrder BmeGate 1.6 Fields
omi_bme_meff_marketandorder_bmegate_v1_6.fields.account = ProtoField.new("Account", "bme.meff.marketandorder.bmegate.v1.6.account", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.account_2 = ProtoField.new("Account 2", "bme.meff.marketandorder.bmegate.v1.6.account2", ftypes.STRING, nil, nil, nil, "Account")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.adjustments_rule = ProtoField.new("Adjustments Rule", "bme.meff.marketandorder.bmegate.v1.6.adjustmentsrule", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.admission_requested_by_issuer = ProtoField.new("Admission Requested By Issuer", "bme.meff.marketandorder.bmegate.v1.6.admissionrequestedbyissuer", ftypes.UINT8, nil, nil, nil, "Security request for admission to trading by the issuer")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.aggressor_indicator = ProtoField.new("Aggressor Indicator", "bme.meff.marketandorder.bmegate.v1.6.aggressorindicator", ftypes.STRING, nil, nil, nil, "Passive or aggressive indicator")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.aggressor_indicator_2 = ProtoField.new("Aggressor Indicator 2", "bme.meff.marketandorder.bmegate.v1.6.aggressorindicator2", ftypes.STRING, nil, nil, nil, "Passive or aggressive indicator")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.algo_flag = ProtoField.new("Algo Flag", "bme.meff.marketandorder.bmegate.v1.6.algoflag", ftypes.UINT8, nil, nil, nil, "Algorithmic flag indicator")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.algorithmic_trade_indicator = ProtoField.new("Algorithmic Trade Indicator", "bme.meff.marketandorder.bmegate.v1.6.algorithmictradeindicator", ftypes.UINT8, nil, nil, nil, "Algorithmic flag indicator")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.algorithmic_trade_indicator_2 = ProtoField.new("Algorithmic Trade Indicator 2", "bme.meff.marketandorder.bmegate.v1.6.algorithmictradeindicator2", ftypes.UINT8, nil, nil, nil, "Algorithmic flag indicator")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.alloc_text = ProtoField.new("Alloc Text", "bme.meff.marketandorder.bmegate.v1.6.alloctext", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.alloc_text_2 = ProtoField.new("Alloc Text 2", "bme.meff.marketandorder.bmegate.v1.6.alloctext2", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.amended_trade_date = ProtoField.new("Amended Trade Date", "bme.meff.marketandorder.bmegate.v1.6.amendedtradedate", ftypes.INT32, nil, nil, nil, "Date of the amended/cancelled trade")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.amended_trade_type = ProtoField.new("Amended Trade Type", "bme.meff.marketandorder.bmegate.v1.6.amendedtradetype", ftypes.STRING, nil, nil, nil, "Trade type of the amended/cancelled trade")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_orders_1 = ProtoField.new("Ask Orders 1", "bme.meff.marketandorder.bmegate.v1.6.askorders1", ftypes.UINT16, nil, nil, nil, "Sell number of orders")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_orders_2 = ProtoField.new("Ask Orders 2", "bme.meff.marketandorder.bmegate.v1.6.askorders2", ftypes.UINT16, nil, nil, nil, "Sell number of orders level 2")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_orders_3 = ProtoField.new("Ask Orders 3", "bme.meff.marketandorder.bmegate.v1.6.askorders3", ftypes.UINT16, nil, nil, nil, "Sell number of orders level 3")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_orders_4 = ProtoField.new("Ask Orders 4", "bme.meff.marketandorder.bmegate.v1.6.askorders4", ftypes.UINT16, nil, nil, nil, "Sell number of orders level 4")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_orders_5 = ProtoField.new("Ask Orders 5", "bme.meff.marketandorder.bmegate.v1.6.askorders5", ftypes.UINT16, nil, nil, nil, "Sell number of orders level 5")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_px_1 = ProtoField.new("Ask Px 1", "bme.meff.marketandorder.bmegate.v1.6.askpx1", ftypes.DOUBLE, nil, nil, nil, "Sell price")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_px_2 = ProtoField.new("Ask Px 2", "bme.meff.marketandorder.bmegate.v1.6.askpx2", ftypes.DOUBLE, nil, nil, nil, "Sell price level 2")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_px_3 = ProtoField.new("Ask Px 3", "bme.meff.marketandorder.bmegate.v1.6.askpx3", ftypes.DOUBLE, nil, nil, nil, "Sell price level 3")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_px_4 = ProtoField.new("Ask Px 4", "bme.meff.marketandorder.bmegate.v1.6.askpx4", ftypes.DOUBLE, nil, nil, nil, "Sell price level 4")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_px_5 = ProtoField.new("Ask Px 5", "bme.meff.marketandorder.bmegate.v1.6.askpx5", ftypes.DOUBLE, nil, nil, nil, "Sell price level 5")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_size_1 = ProtoField.new("Ask Size 1", "bme.meff.marketandorder.bmegate.v1.6.asksize1", ftypes.UINT32, nil, nil, nil, "Sell volume")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_size_2 = ProtoField.new("Ask Size 2", "bme.meff.marketandorder.bmegate.v1.6.asksize2", ftypes.UINT32, nil, nil, nil, "Sell volume level 2")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_size_3 = ProtoField.new("Ask Size 3", "bme.meff.marketandorder.bmegate.v1.6.asksize3", ftypes.UINT32, nil, nil, nil, "Sell volume level 3")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_size_4 = ProtoField.new("Ask Size 4", "bme.meff.marketandorder.bmegate.v1.6.asksize4", ftypes.UINT32, nil, nil, nil, "Sell volume level 4")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_size_5 = ProtoField.new("Ask Size 5", "bme.meff.marketandorder.bmegate.v1.6.asksize5", ftypes.UINT32, nil, nil, nil, "Sell volume level 5")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.base_currency = ProtoField.new("Base Currency", "bme.meff.marketandorder.bmegate.v1.6.basecurrency", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.base_product = ProtoField.new("Base Product", "bme.meff.marketandorder.bmegate.v1.6.baseproduct", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.bencrfpt_flag = ProtoField.new("Bencrfpt Flag", "bme.meff.marketandorder.bmegate.v1.6.bencrfptflag", ftypes.STRING, nil, nil, nil, "Benchmark or Reference Price Indicator MMT")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_orders_1 = ProtoField.new("Bid Orders 1", "bme.meff.marketandorder.bmegate.v1.6.bidorders1", ftypes.UINT16, nil, nil, nil, "Buy number of orders")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_orders_2 = ProtoField.new("Bid Orders 2", "bme.meff.marketandorder.bmegate.v1.6.bidorders2", ftypes.UINT16, nil, nil, nil, "Buy number of orders level 2")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_orders_3 = ProtoField.new("Bid Orders 3", "bme.meff.marketandorder.bmegate.v1.6.bidorders3", ftypes.UINT16, nil, nil, nil, "Buy number of orders level 3")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_orders_4 = ProtoField.new("Bid Orders 4", "bme.meff.marketandorder.bmegate.v1.6.bidorders4", ftypes.UINT16, nil, nil, nil, "Buy number of orders level 4")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_orders_5 = ProtoField.new("Bid Orders 5", "bme.meff.marketandorder.bmegate.v1.6.bidorders5", ftypes.UINT16, nil, nil, nil, "Buy number of orders level 5")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_px_1 = ProtoField.new("Bid Px 1", "bme.meff.marketandorder.bmegate.v1.6.bidpx1", ftypes.DOUBLE, nil, nil, nil, "Buy price")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_px_2 = ProtoField.new("Bid Px 2", "bme.meff.marketandorder.bmegate.v1.6.bidpx2", ftypes.DOUBLE, nil, nil, nil, "Buy price level 2")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_px_3 = ProtoField.new("Bid Px 3", "bme.meff.marketandorder.bmegate.v1.6.bidpx3", ftypes.DOUBLE, nil, nil, nil, "Buy price level 3")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_px_4 = ProtoField.new("Bid Px 4", "bme.meff.marketandorder.bmegate.v1.6.bidpx4", ftypes.DOUBLE, nil, nil, nil, "Buy price level 4")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_px_5 = ProtoField.new("Bid Px 5", "bme.meff.marketandorder.bmegate.v1.6.bidpx5", ftypes.DOUBLE, nil, nil, nil, "Buy price level 5")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_size_1 = ProtoField.new("Bid Size 1", "bme.meff.marketandorder.bmegate.v1.6.bidsize1", ftypes.UINT32, nil, nil, nil, "Buy volume")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_size_2 = ProtoField.new("Bid Size 2", "bme.meff.marketandorder.bmegate.v1.6.bidsize2", ftypes.UINT32, nil, nil, nil, "Buy volume level 2")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_size_3 = ProtoField.new("Bid Size 3", "bme.meff.marketandorder.bmegate.v1.6.bidsize3", ftypes.UINT32, nil, nil, nil, "Buy volume level 3")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_size_4 = ProtoField.new("Bid Size 4", "bme.meff.marketandorder.bmegate.v1.6.bidsize4", ftypes.UINT32, nil, nil, nil, "Buy volume level 4")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_size_5 = ProtoField.new("Bid Size 5", "bme.meff.marketandorder.bmegate.v1.6.bidsize5", ftypes.UINT32, nil, nil, nil, "Buy volume level 5")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.broker = ProtoField.new("Broker", "bme.meff.marketandorder.bmegate.v1.6.broker", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.broker_text = ProtoField.new("Broker Text", "bme.meff.marketandorder.bmegate.v1.6.brokertext", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.broker_trader = ProtoField.new("Broker Trader", "bme.meff.marketandorder.bmegate.v1.6.brokertrader", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.business_reject_reason = ProtoField.new("Business Reject Reason", "bme.meff.marketandorder.bmegate.v1.6.businessrejectreason", ftypes.UINT8, nil, nil, nil, "Reason for rejection")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.buy_rf_qs_number = ProtoField.new("Buy Rf Qs Number", "bme.meff.marketandorder.bmegate.v1.6.buyrfqsnumber", ftypes.UINT16, nil, nil, nil, "Number of buying RFQs")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.cancel_pre_amendment = ProtoField.new("Cancel Pre Amendment", "bme.meff.marketandorder.bmegate.v1.6.cancelpreamendment", ftypes.UINT8, nil, nil, nil, "CancelPreAmendment flag indicator")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ccp_code = ProtoField.new("Ccp Code", "bme.meff.marketandorder.bmegate.v1.6.ccpcode", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ccp_code_2 = ProtoField.new("Ccp Code 2", "bme.meff.marketandorder.bmegate.v1.6.ccpcode2", ftypes.STRING, nil, nil, nil, "CCP Code")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ccv = ProtoField.new("Ccv", "bme.meff.marketandorder.bmegate.v1.6.ccv", ftypes.STRING, nil, nil, nil, "Securities Account code in CSD")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ccv_2 = ProtoField.new("Ccv 2", "bme.meff.marketandorder.bmegate.v1.6.ccv2", ftypes.STRING, nil, nil, nil, "Securities Account code in CSD")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.cfi_code = ProtoField.new("Cfi Code", "bme.meff.marketandorder.bmegate.v1.6.cficode", ftypes.STRING, nil, nil, nil, "CFICode")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.client_data_id = ProtoField.new("Client Data Id", "bme.meff.marketandorder.bmegate.v1.6.clientdataid", ftypes.UINT16, nil, nil, nil, "Client Data ID (to be used as a shortcode in orders and quotes)")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.client_data_id_2_b_2 = ProtoField.new("Client Data Id 2 B 2", "bme.meff.marketandorder.bmegate.v1.6.clientdataid2b2", ftypes.UINT16, nil, nil, nil, "Client Data ID (to be used as a shortcode in orders and quotes)")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.client_data_id_2_u_2 = ProtoField.new("Client Data Id 2 U 2", "bme.meff.marketandorder.bmegate.v1.6.clientdataid2u2", ftypes.UINT16, nil, nil, nil, "Client Data ID (to be used as a shortcode in orders and quotes)")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.client_data_reference = ProtoField.new("Client Data Reference", "bme.meff.marketandorder.bmegate.v1.6.clientdatareference", ftypes.STRING, nil, nil, nil, "Free to use by clients")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.client_id = ProtoField.new("Client Id", "bme.meff.marketandorder.bmegate.v1.6.clientid", ftypes.UINT32, nil, nil, nil, "Mifid II ClientID")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.client_id_2 = ProtoField.new("Client Id 2", "bme.meff.marketandorder.bmegate.v1.6.clientid2", ftypes.UINT32, nil, nil, nil, "Mifid II ClientID")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.commodity_derivative_indicator = ProtoField.new("Commodity Derivative Indicator", "bme.meff.marketandorder.bmegate.v1.6.commodityderivativeindicator", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "bme.meff.marketandorder.bmegate.v1.6.contractmultiplier", ftypes.DOUBLE, nil, nil, nil, "Conversion factor between price units and monetary units")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.cross_id = ProtoField.new("Cross Id", "bme.meff.marketandorder.bmegate.v1.6.crossid", ftypes.UINT32, nil, nil, nil, "Cross Trade Unique Identifier")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.cross_id_2 = ProtoField.new("Cross Id 2", "bme.meff.marketandorder.bmegate.v1.6.crossid2", ftypes.UINT32, nil, nil, nil, "Cross Trade Unique Identifier")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.currency = ProtoField.new("Currency", "bme.meff.marketandorder.bmegate.v1.6.currency", ftypes.STRING, nil, nil, nil, "Currency code")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.cxl_rej_reason = ProtoField.new("Cxl Rej Reason", "bme.meff.marketandorder.bmegate.v1.6.cxlrejreason", ftypes.STRING, nil, nil, nil, "Rejection motive")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.cxl_rej_response_to = ProtoField.new("Cxl Rej Response To", "bme.meff.marketandorder.bmegate.v1.6.cxlrejresponseto", ftypes.STRING, nil, nil, nil, "Type of message responded to")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.data_code = ProtoField.new("Data Code", "bme.meff.marketandorder.bmegate.v1.6.datacode", ftypes.STRING, nil, nil, nil, "Data field code")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.data_count = ProtoField.new("Data Count", "bme.meff.marketandorder.bmegate.v1.6.datacount", ftypes.UINT8, nil, nil, nil, "Number of data values")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.dea_flag = ProtoField.new("Dea Flag", "bme.meff.marketandorder.bmegate.v1.6.deaflag", ftypes.UINT8, nil, nil, nil, "Direct Electronic Access indicator")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.dea_flag_2 = ProtoField.new("Dea Flag 2", "bme.meff.marketandorder.bmegate.v1.6.deaflag2", ftypes.UINT8, nil, nil, nil, "Direct Electronic Access indicator")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.decisor_id = ProtoField.new("Decisor Id", "bme.meff.marketandorder.bmegate.v1.6.decisorid", ftypes.UINT32, nil, nil, nil, "MIFID II DecisorID")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.decisor_id_2 = ProtoField.new("Decisor Id 2", "bme.meff.marketandorder.bmegate.v1.6.decisorid2", ftypes.UINT32, nil, nil, nil, "MIFID II DecisorID")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.deferral_waiver = ProtoField.new("Deferral Waiver", "bme.meff.marketandorder.bmegate.v1.6.deferralwaiver", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.delta_protection_time = ProtoField.new("Delta Protection Time", "bme.meff.marketandorder.bmegate.v1.6.deltaprotectiontime", ftypes.UINT8, nil, nil, nil, "Number of seconds for Delta Protection control")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.delta_protection_volume = ProtoField.new("Delta Protection Volume", "bme.meff.marketandorder.bmegate.v1.6.deltaprotectionvolume", ftypes.UINT32, nil, nil, nil, "Total maximum volume during DeltaProtectionTime")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.designation = ProtoField.new("Designation", "bme.meff.marketandorder.bmegate.v1.6.designation", ftypes.STRING, nil, nil, nil, "Trade situation")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.display_qty = ProtoField.new("Display Qty", "bme.meff.marketandorder.bmegate.v1.6.displayqty", ftypes.UINT32, nil, nil, nil, "Visible pending volume")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.display_qty_2 = ProtoField.new("Display Qty 2", "bme.meff.marketandorder.bmegate.v1.6.displayqty2", ftypes.UINT32, nil, nil, nil, "Visible pending volume")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.end_maturity_month_year = ProtoField.new("End Maturity Month Year", "bme.meff.marketandorder.bmegate.v1.6.endmaturitymonthyear", ftypes.STRING, nil, nil, nil, "Maturity Interval End Date")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.entry_date = ProtoField.new("Entry Date", "bme.meff.marketandorder.bmegate.v1.6.entrydate", ftypes.INT32, nil, nil, nil, "System order entry date (when System Order Number was assigned)")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.entry_date_2 = ProtoField.new("Entry Date 2", "bme.meff.marketandorder.bmegate.v1.6.entrydate2", ftypes.INT32, nil, nil, nil, "System order entry date (when System Order Number was assigned)")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.environment_code = ProtoField.new("Environment Code", "bme.meff.marketandorder.bmegate.v1.6.environmentcode", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "bme.meff.marketandorder.bmegate.v1.6.execrefid", ftypes.UINT32, nil, nil, nil, "System Trade Number of the amended/cancelled trade")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.exec_type = ProtoField.new("Exec Type", "bme.meff.marketandorder.bmegate.v1.6.exectype", ftypes.STRING, nil, nil, nil, "Confirmation type")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.exec_type_2 = ProtoField.new("Exec Type 2", "bme.meff.marketandorder.bmegate.v1.6.exectype2", ftypes.STRING, nil, nil, nil, "Confirmation type")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.executor_id = ProtoField.new("Executor Id", "bme.meff.marketandorder.bmegate.v1.6.executorid", ftypes.UINT32, nil, nil, nil, "Mifid II ExecutorID")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.executor_id_2 = ProtoField.new("Executor Id 2", "bme.meff.marketandorder.bmegate.v1.6.executorid2", ftypes.UINT32, nil, nil, nil, "Mifid II ExecutorID")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.exercise_style = ProtoField.new("Exercise Style", "bme.meff.marketandorder.bmegate.v1.6.exercisestyle", ftypes.STRING, nil, nil, nil, "Exercise Style (Options)")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.expected_sequence_number = ProtoField.new("Expected Sequence Number", "bme.meff.marketandorder.bmegate.v1.6.expectedsequencenumber", ftypes.UINT32, nil, nil, nil, "Requested sequence number")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.external_member = ProtoField.new("External Member", "bme.meff.marketandorder.bmegate.v1.6.externalmember", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.external_member_2 = ProtoField.new("External Member 2", "bme.meff.marketandorder.bmegate.v1.6.externalmember2", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.family_code = ProtoField.new("Family Code", "bme.meff.marketandorder.bmegate.v1.6.familycode", ftypes.STRING, nil, nil, nil, "Family of instruments code")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.firm_mnemonic = ProtoField.new("Firm Mnemonic", "bme.meff.marketandorder.bmegate.v1.6.firmmnemonic", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.firm_mnemonic_2 = ProtoField.new("Firm Mnemonic 2", "bme.meff.marketandorder.bmegate.v1.6.firmmnemonic2", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.fisn = ProtoField.new("Fisn", "bme.meff.marketandorder.bmegate.v1.6.fisn", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.flexible_indicator = ProtoField.new("Flexible Indicator", "bme.meff.marketandorder.bmegate.v1.6.flexibleindicator", ftypes.STRING, nil, nil, nil, "Flexible Expiry Indicator")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.further_sub_product = ProtoField.new("Further Sub Product", "bme.meff.marketandorder.bmegate.v1.6.furthersubproduct", ftypes.STRING, nil, nil, nil, "Further SubProduct")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.give_in_member = ProtoField.new("Give In Member", "bme.meff.marketandorder.bmegate.v1.6.giveinmember", ftypes.STRING, nil, nil, nil, "Give-in member")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.give_in_member_2 = ProtoField.new("Give In Member 2", "bme.meff.marketandorder.bmegate.v1.6.giveinmember2", ftypes.STRING, nil, nil, nil, "Give-in member")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.gross_trade_amt = ProtoField.new("Gross Trade Amt", "bme.meff.marketandorder.bmegate.v1.6.grosstradeamt", ftypes.DOUBLE, nil, nil, nil, "Premium / Trade amount")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "bme.meff.marketandorder.bmegate.v1.6.heartbtint", ftypes.UINT8, nil, nil, nil, "Interval at which messages are sent to verify the connection (Heartbeat message) expressed in seconds")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.high_limit_price = ProtoField.new("High Limit Price", "bme.meff.marketandorder.bmegate.v1.6.highlimitprice", ftypes.DOUBLE)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ioi_price = ProtoField.new("Ioi Price", "bme.meff.marketandorder.bmegate.v1.6.ioiprice", ftypes.DOUBLE, nil, nil, nil, "Requested indicative price")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ioi_qlty_ind = ProtoField.new("Ioi Qlty Ind", "bme.meff.marketandorder.bmegate.v1.6.ioiqltyind", ftypes.STRING, nil, nil, nil, "Request type")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ioi_qty = ProtoField.new("Ioi Qty", "bme.meff.marketandorder.bmegate.v1.6.ioiqty", ftypes.UINT32, nil, nil, nil, "Requested indicative volume")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ioi_trans_type = ProtoField.new("Ioi Trans Type", "bme.meff.marketandorder.bmegate.v1.6.ioitranstype", ftypes.STRING, nil, nil, nil, "Message type")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ioiid = ProtoField.new("Ioiid", "bme.meff.marketandorder.bmegate.v1.6.ioiid", ftypes.UINT32, nil, nil, nil, "RFQ identifier")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.issue_date = ProtoField.new("Issue Date", "bme.meff.marketandorder.bmegate.v1.6.issuedate", ftypes.INT32, nil, nil, nil, "Date security issued")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.issuer_lei = ProtoField.new("Issuer Lei", "bme.meff.marketandorder.bmegate.v1.6.issuerlei", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.last_capacity = ProtoField.new("Last Capacity", "bme.meff.marketandorder.bmegate.v1.6.lastcapacity", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.last_capacity_2 = ProtoField.new("Last Capacity 2", "bme.meff.marketandorder.bmegate.v1.6.lastcapacity2", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.last_change_flag_b_1 = ProtoField.new("Last Change Flag B 1", "bme.meff.marketandorder.bmegate.v1.6.lastchangeflagb1", ftypes.UINT8, nil, nil, nil, "Indicates if this trade changes the instrument Last price")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.last_change_flag_f_1 = ProtoField.new("Last Change Flag F 1", "bme.meff.marketandorder.bmegate.v1.6.lastchangeflagf1", ftypes.UINT8, nil, nil, nil, "Indicates if this trade changes the instrument Last price")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.last_px = ProtoField.new("Last Px", "bme.meff.marketandorder.bmegate.v1.6.lastpx", ftypes.DOUBLE, nil, nil, nil, "Trade price")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.last_qty = ProtoField.new("Last Qty", "bme.meff.marketandorder.bmegate.v1.6.lastqty", ftypes.UINT32, nil, nil, nil, "Current trade volume")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.last_trading_day = ProtoField.new("Last Trading Day", "bme.meff.marketandorder.bmegate.v1.6.lasttradingday", ftypes.INT32)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_price_1 = ProtoField.new("Leg Price 1", "bme.meff.marketandorder.bmegate.v1.6.legprice1", ftypes.DOUBLE, nil, nil, nil, "Price in strategy or time spread")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_price_2 = ProtoField.new("Leg Price 2", "bme.meff.marketandorder.bmegate.v1.6.legprice2", ftypes.DOUBLE, nil, nil, nil, "Price in strategy or time spread")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_price_3 = ProtoField.new("Leg Price 3", "bme.meff.marketandorder.bmegate.v1.6.legprice3", ftypes.DOUBLE, nil, nil, nil, "Price in strategy or time spread")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_price_4 = ProtoField.new("Leg Price 4", "bme.meff.marketandorder.bmegate.v1.6.legprice4", ftypes.DOUBLE, nil, nil, nil, "Price in strategy or time spread")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_price_5 = ProtoField.new("Leg Price 5", "bme.meff.marketandorder.bmegate.v1.6.legprice5", ftypes.DOUBLE, nil, nil, nil, "Price in strategy or time spread")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_ratio_qty_1 = ProtoField.new("Leg Ratio Qty 1", "bme.meff.marketandorder.bmegate.v1.6.legratioqty1", ftypes.UINT32, nil, nil, nil, "Ratio in strategy or time spread")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_ratio_qty_2 = ProtoField.new("Leg Ratio Qty 2", "bme.meff.marketandorder.bmegate.v1.6.legratioqty2", ftypes.UINT32, nil, nil, nil, "Ratio in strategy or time spread")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_ratio_qty_3 = ProtoField.new("Leg Ratio Qty 3", "bme.meff.marketandorder.bmegate.v1.6.legratioqty3", ftypes.UINT32, nil, nil, nil, "Ratio in strategy or time spread")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_ratio_qty_4 = ProtoField.new("Leg Ratio Qty 4", "bme.meff.marketandorder.bmegate.v1.6.legratioqty4", ftypes.UINT32, nil, nil, nil, "Ratio in strategy or time spread")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_ratio_qty_5 = ProtoField.new("Leg Ratio Qty 5", "bme.meff.marketandorder.bmegate.v1.6.legratioqty5", ftypes.UINT32, nil, nil, nil, "Ratio in strategy or time spread")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_side_1 = ProtoField.new("Leg Side 1", "bme.meff.marketandorder.bmegate.v1.6.legside1", ftypes.STRING, nil, nil, nil, "Side in strategy or time spread")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_side_2 = ProtoField.new("Leg Side 2", "bme.meff.marketandorder.bmegate.v1.6.legside2", ftypes.STRING, nil, nil, nil, "Side in strategy or time spread")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_side_3 = ProtoField.new("Leg Side 3", "bme.meff.marketandorder.bmegate.v1.6.legside3", ftypes.STRING, nil, nil, nil, "Side in strategy or time spread")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_side_4 = ProtoField.new("Leg Side 4", "bme.meff.marketandorder.bmegate.v1.6.legside4", ftypes.STRING, nil, nil, nil, "Side in strategy or time spread")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_side_5 = ProtoField.new("Leg Side 5", "bme.meff.marketandorder.bmegate.v1.6.legside5", ftypes.STRING, nil, nil, nil, "Side in strategy or time spread")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_symbol_1 = ProtoField.new("Leg Symbol 1", "bme.meff.marketandorder.bmegate.v1.6.legsymbol1", ftypes.STRING, nil, nil, nil, "Symbol in strategy or time spread")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_symbol_2 = ProtoField.new("Leg Symbol 2", "bme.meff.marketandorder.bmegate.v1.6.legsymbol2", ftypes.STRING, nil, nil, nil, "Symbol in strategy or time spread")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_symbol_3 = ProtoField.new("Leg Symbol 3", "bme.meff.marketandorder.bmegate.v1.6.legsymbol3", ftypes.STRING, nil, nil, nil, "Symbol in strategy or time spread")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_symbol_4 = ProtoField.new("Leg Symbol 4", "bme.meff.marketandorder.bmegate.v1.6.legsymbol4", ftypes.STRING, nil, nil, nil, "Symbol in strategy or time spread")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_symbol_5 = ProtoField.new("Leg Symbol 5", "bme.meff.marketandorder.bmegate.v1.6.legsymbol5", ftypes.STRING, nil, nil, nil, "Symbol in strategy or time spread")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.li_spost = ProtoField.new("Li Spost", "bme.meff.marketandorder.bmegate.v1.6.lispost", ftypes.DOUBLE, nil, nil, nil, "LIS posttransparency threshold")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.li_spre = ProtoField.new("Li Spre", "bme.meff.marketandorder.bmegate.v1.6.lispre", ftypes.DOUBLE, nil, nil, nil, "LIS pretransparency threshold")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.liquid_instrument = ProtoField.new("Liquid Instrument", "bme.meff.marketandorder.bmegate.v1.6.liquidinstrument", ftypes.UINT8)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.liquidity_provision_activity = ProtoField.new("Liquidity Provision Activity", "bme.meff.marketandorder.bmegate.v1.6.liquidityprovisionactivity", ftypes.UINT8, nil, nil, nil, "Liquidity Provision Activity Flag")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.liquidity_provision_activity_2 = ProtoField.new("Liquidity Provision Activity 2", "bme.meff.marketandorder.bmegate.v1.6.liquidityprovisionactivity2", ftypes.UINT8, nil, nil, nil, "Liquidity Provision Activity Flag")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.logout_reason = ProtoField.new("Logout Reason", "bme.meff.marketandorder.bmegate.v1.6.logoutreason", ftypes.UINT8)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.low_limit_price = ProtoField.new("Low Limit Price", "bme.meff.marketandorder.bmegate.v1.6.lowlimitprice", ftypes.DOUBLE)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.market_id = ProtoField.new("Market Id", "bme.meff.marketandorder.bmegate.v1.6.marketid", ftypes.STRING, nil, nil, nil, "Operating MIC Code")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.market_mechanism = ProtoField.new("Market Mechanism", "bme.meff.marketandorder.bmegate.v1.6.marketmechanism", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.market_segment_id = ProtoField.new("Market Segment Id", "bme.meff.marketandorder.bmegate.v1.6.marketsegmentid", ftypes.STRING, nil, nil, nil, "Segment MIC Code")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.mass_cancel_reject_reason = ProtoField.new("Mass Cancel Reject Reason", "bme.meff.marketandorder.bmegate.v1.6.masscancelrejectreason", ftypes.STRING, nil, nil, nil, "Rejection motive")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.maturity_date = ProtoField.new("Maturity Date", "bme.meff.marketandorder.bmegate.v1.6.maturitydate", ftypes.INT32, nil, nil, nil, "Expiration date")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "bme.meff.marketandorder.bmegate.v1.6.maturitymonthyear", ftypes.STRING, nil, nil, nil, "Maturity")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.maturity_month_year_increment = ProtoField.new("Maturity Month Year Increment", "bme.meff.marketandorder.bmegate.v1.6.maturitymonthyearincrement", ftypes.UINT8, nil, nil, nil, "Number of MaturityMonthYear Increment Units")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.maturity_month_year_increment_units = ProtoField.new("Maturity Month Year Increment Units", "bme.meff.marketandorder.bmegate.v1.6.maturitymonthyearincrementunits", ftypes.STRING, nil, nil, nil, "MaturityMonthYear Increment Units")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.maximum_order_size = ProtoField.new("Maximum Order Size", "bme.meff.marketandorder.bmegate.v1.6.maximumordersize", ftypes.DOUBLE, nil, nil, nil, "Nominal limit cap above which orders are not permitted")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.member = ProtoField.new("Member", "bme.meff.marketandorder.bmegate.v1.6.member", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.member_2 = ProtoField.new("Member 2", "bme.meff.marketandorder.bmegate.v1.6.member2", ftypes.STRING, nil, nil, nil, "Member")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.message_size = ProtoField.new("Message Size", "bme.meff.marketandorder.bmegate.v1.6.messagesize", ftypes.UINT16, nil, nil, nil, "Length of message, including this field")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.message_type = ProtoField.new("Message Type", "bme.meff.marketandorder.bmegate.v1.6.messagetype", ftypes.UINT8, nil, nil, nil, "Message type. Section 3.3 assigns the message code of the equivalent Fix protocol message where there is one, so Logon is 0x41, and gives the rest a hexadecimal value below 0x20 or at or above 0x80")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.mid_buy_price = ProtoField.new("Mid Buy Price", "bme.meff.marketandorder.bmegate.v1.6.midbuyprice", ftypes.DOUBLE, nil, nil, nil, "Mid price of buying RFQs")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.mid_buy_volume = ProtoField.new("Mid Buy Volume", "bme.meff.marketandorder.bmegate.v1.6.midbuyvolume", ftypes.UINT32, nil, nil, nil, "Mid volume of buying RFQs")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.mid_sell_price = ProtoField.new("Mid Sell Price", "bme.meff.marketandorder.bmegate.v1.6.midsellprice", ftypes.DOUBLE, nil, nil, nil, "Mid price of selling RFQs")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.mid_sell_volume = ProtoField.new("Mid Sell Volume", "bme.meff.marketandorder.bmegate.v1.6.midsellvolume", ftypes.UINT32, nil, nil, nil, "Mid volume of selling RFQs")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.min_price_increment = ProtoField.new("Min Price Increment", "bme.meff.marketandorder.bmegate.v1.6.minpriceincrement", ftypes.DOUBLE, nil, nil, nil, "Minimum Price Increment")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.min_trade_vol = ProtoField.new("Min Trade Vol", "bme.meff.marketandorder.bmegate.v1.6.mintradevol", ftypes.UINT32, nil, nil, nil, "Minimum Tradeable Volume")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.modality_mask_b_4 = ProtoField.new("Modality Mask B 4", "bme.meff.marketandorder.bmegate.v1.6.modalitymaskb4", ftypes.UINT32, nil, nil, nil, "Modality mask ∑ 2^(ModalityCode - 100) ModalityCode valid values are the TradingSessionID values listed in Table 25 - TradingSessionID in “BMEGate Codification Tables”")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.msg_rejected_reference = ProtoField.new("Msg Rejected Reference", "bme.meff.marketandorder.bmegate.v1.6.msgrejectedreference", ftypes.BYTES, nil, nil, nil, "Provides the seven first bytes of the message being rejected")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.network_status_value = ProtoField.new("Network Status Value", "bme.meff.marketandorder.bmegate.v1.6.networkstatusvalue", ftypes.UINT8, nil, nil, nil, "Connection status")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.news_text = ProtoField.new("News Text", "bme.meff.marketandorder.bmegate.v1.6.newstext", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.non_availability_reason = ProtoField.new("Non Availability Reason", "bme.meff.marketandorder.bmegate.v1.6.nonavailabilityreason", ftypes.UINT8, nil, nil, nil, "Reason security halted")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.number_of_decimals = ProtoField.new("Number Of Decimals", "bme.meff.marketandorder.bmegate.v1.6.numberofdecimals", ftypes.UINT8)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.opt_attribute = ProtoField.new("Opt Attribute", "bme.meff.marketandorder.bmegate.v1.6.optattribute", ftypes.STRING, nil, nil, nil, "Security version number, provided to support versioning of securities as a result of corporate actions or events")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ord_rej_reason = ProtoField.new("Ord Rej Reason", "bme.meff.marketandorder.bmegate.v1.6.ordrejreason", ftypes.STRING, nil, nil, nil, "When OrdStatus = 4/8 it contains the reason for Cancellation/Reject")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ord_rej_reason_2 = ProtoField.new("Ord Rej Reason 2", "bme.meff.marketandorder.bmegate.v1.6.ordrejreason2", ftypes.STRING, nil, nil, nil, "When OrdStatus = 4/8 it contains the reason for Cancellation/Reject")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ord_status = ProtoField.new("Ord Status", "bme.meff.marketandorder.bmegate.v1.6.ordstatus", ftypes.STRING, nil, nil, nil, "Order Status")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ord_status_2 = ProtoField.new("Ord Status 2", "bme.meff.marketandorder.bmegate.v1.6.ordstatus2", ftypes.STRING, nil, nil, nil, "Order Status")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_id = ProtoField.new("Order Id", "bme.meff.marketandorder.bmegate.v1.6.orderid", ftypes.UINT32, nil, nil, nil, "Application Order ID (unique at security level)")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_id_2 = ProtoField.new("Order Id 2", "bme.meff.marketandorder.bmegate.v1.6.orderid2", ftypes.UINT32, nil, nil, nil, "Application Order ID (unique at security level)")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_number_of_decimals = ProtoField.new("Order Number Of Decimals", "bme.meff.marketandorder.bmegate.v1.6.ordernumberofdecimals", ftypes.UINT8, nil, nil, nil, "Number of Decimals in Order Entry")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_or_quote_cancel = ProtoField.new("Order Or Quote Cancel", "bme.meff.marketandorder.bmegate.v1.6.orderorquotecancel", ftypes.STRING, nil, nil, nil, "Cancellation of orders and/or quotes indicator")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_qty = ProtoField.new("Order Qty", "bme.meff.marketandorder.bmegate.v1.6.orderqty", ftypes.UINT32, nil, nil, nil, "Total order volume")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_qty_2 = ProtoField.new("Order Qty 2", "bme.meff.marketandorder.bmegate.v1.6.orderqty2", ftypes.UINT32, nil, nil, nil, "Total order volume")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_security_code = ProtoField.new("Order Security Code", "bme.meff.marketandorder.bmegate.v1.6.ordersecuritycode", ftypes.UINT32, nil, nil, nil, "Order instrument (or Book) code")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_security_code_2 = ProtoField.new("Order Security Code 2", "bme.meff.marketandorder.bmegate.v1.6.ordersecuritycode2", ftypes.UINT32, nil, nil, nil, "Order instrument (or Book) code")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.password = ProtoField.new("Password", "bme.meff.marketandorder.bmegate.v1.6.password", ftypes.STRING, nil, nil, nil, "User password")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.persistence = ProtoField.new("Persistence", "bme.meff.marketandorder.bmegate.v1.6.persistence", ftypes.STRING, nil, nil, nil, "Persistence type")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.persistence_2 = ProtoField.new("Persistence 2", "bme.meff.marketandorder.bmegate.v1.6.persistence2", ftypes.STRING, nil, nil, nil, "Persistence type")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.post_deferral_publication_type = ProtoField.new("Post Deferral Publication Type", "bme.meff.marketandorder.bmegate.v1.6.postdeferralpublicationtype", ftypes.STRING, nil, nil, nil, "Post-deferral publication type")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.pre_trade_transparency_waiver = ProtoField.new("Pre Trade Transparency Waiver", "bme.meff.marketandorder.bmegate.v1.6.pretradetransparencywaiver", ftypes.STRING, nil, nil, nil, "Pre-trade transparency waiver")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.price = ProtoField.new("Price", "bme.meff.marketandorder.bmegate.v1.6.price", ftypes.DOUBLE, nil, nil, nil, "Limit price")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.price_2 = ProtoField.new("Price 2", "bme.meff.marketandorder.bmegate.v1.6.price2", ftypes.DOUBLE, nil, nil, nil, "Limit price")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.priority = ProtoField.new("Priority", "bme.meff.marketandorder.bmegate.v1.6.priority", ftypes.UINT32)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.priority_2 = ProtoField.new("Priority 2", "bme.meff.marketandorder.bmegate.v1.6.priority2", ftypes.UINT32, nil, nil, nil, "Priority")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.product_type = ProtoField.new("Product Type", "bme.meff.marketandorder.bmegate.v1.6.producttype", ftypes.STRING, nil, nil, nil, "Derivative type")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.protocol_version = ProtoField.new("Protocol Version", "bme.meff.marketandorder.bmegate.v1.6.protocolversion", ftypes.STRING, nil, nil, nil, "Identification of the binary protocol version")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.publish_date_and_time = ProtoField.new("Publish Date And Time", "bme.meff.marketandorder.bmegate.v1.6.publishdateandtime", ftypes.INT64, nil, nil, nil, "Publication Date and Time in nanoseconds since 1-jan-1970 UTC")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.put_or_call = ProtoField.new("Put Or Call", "bme.meff.marketandorder.bmegate.v1.6.putorcall", ftypes.STRING, nil, nil, nil, "Indicates whether the contract is a put or a call")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.quoted_currency = ProtoField.new("Quoted Currency", "bme.meff.marketandorder.bmegate.v1.6.quotedcurrency", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.ref_msg_type = ProtoField.new("Ref Msg Type", "bme.meff.marketandorder.bmegate.v1.6.refmsgtype", ftypes.UINT8, nil, nil, nil, "Type of message responded to")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.request_id = ProtoField.new("Request Id", "bme.meff.marketandorder.bmegate.v1.6.requestid", ftypes.UINT32, nil, nil, nil, "Request ID (for application feedback)")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.request_id_2 = ProtoField.new("Request Id 2", "bme.meff.marketandorder.bmegate.v1.6.requestid2", ftypes.UINT32, nil, nil, nil, "Request ID (for application feedback)")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.retail_cl_ask_flag_1 = ProtoField.new("Retail Cl Ask Flag 1", "bme.meff.marketandorder.bmegate.v1.6.retailclaskflag1", ftypes.UINT8, nil, nil, nil, "The price is retail or has part of retail")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.retail_cl_bid_flag_1 = ProtoField.new("Retail Cl Bid Flag 1", "bme.meff.marketandorder.bmegate.v1.6.retailclbidflag1", ftypes.UINT8, nil, nil, nil, "The price is retail or has part of retail")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.retail_cl_flag = ProtoField.new("Retail Cl Flag", "bme.meff.marketandorder.bmegate.v1.6.retailclflag", ftypes.UINT8, nil, nil, nil, "Retail Client Indicator")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.retail_cl_flag_2 = ProtoField.new("Retail Cl Flag 2", "bme.meff.marketandorder.bmegate.v1.6.retailclflag2", ftypes.UINT8, nil, nil, nil, "Retail Client Indicator")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.rfqid = ProtoField.new("Rfqid", "bme.meff.marketandorder.bmegate.v1.6.rfqid", ftypes.UINT32, nil, nil, nil, "RFQ identifier")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.risk_reduction = ProtoField.new("Risk Reduction", "bme.meff.marketandorder.bmegate.v1.6.riskreduction", ftypes.UINT8, nil, nil, nil, "“Risk reducing” indicator for Commodity derivatives")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.risk_reduction_2 = ProtoField.new("Risk Reduction 2", "bme.meff.marketandorder.bmegate.v1.6.riskreduction2", ftypes.UINT8, nil, nil, nil, "“Risk reducing” indicator for Commodity derivatives")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.round_lot = ProtoField.new("Round Lot", "bme.meff.marketandorder.bmegate.v1.6.roundlot", ftypes.UINT32, nil, nil, nil, "Lot Size")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.sec_description = ProtoField.new("Sec Description", "bme.meff.marketandorder.bmegate.v1.6.secdescription", ftypes.STRING, nil, nil, nil, "Underlying security description")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.secondary_exec_id = ProtoField.new("Secondary Exec Id", "bme.meff.marketandorder.bmegate.v1.6.secondaryexecid", ftypes.UINT32, nil, nil, nil, "History number")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.secondary_exec_id_2 = ProtoField.new("Secondary Exec Id 2", "bme.meff.marketandorder.bmegate.v1.6.secondaryexecid2", ftypes.UINT32, nil, nil, nil, "History number")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "bme.meff.marketandorder.bmegate.v1.6.secondaryorderid", ftypes.UINT32, nil, nil, nil, "System Order Number")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.secondary_order_id_2 = ProtoField.new("Secondary Order Id 2", "bme.meff.marketandorder.bmegate.v1.6.secondaryorderid2", ftypes.UINT32, nil, nil, nil, "System Order Number")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.security_code = ProtoField.new("Security Code", "bme.meff.marketandorder.bmegate.v1.6.securitycode", ftypes.UINT32, nil, nil, nil, "Instrument (or Book) code")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.security_description = ProtoField.new("Security Description", "bme.meff.marketandorder.bmegate.v1.6.securitydescription", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.security_group = ProtoField.new("Security Group", "bme.meff.marketandorder.bmegate.v1.6.securitygroup", ftypes.STRING, nil, nil, nil, "Underlying code")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.security_sub_type = ProtoField.new("Security Sub Type", "bme.meff.marketandorder.bmegate.v1.6.securitysubtype", ftypes.STRING, nil, nil, nil, "Strategy type")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.security_trading_status = ProtoField.new("Security Trading Status", "bme.meff.marketandorder.bmegate.v1.6.securitytradingstatus", ftypes.UINT8)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.security_type = ProtoField.new("Security Type", "bme.meff.marketandorder.bmegate.v1.6.securitytype", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.self_match_prevention = ProtoField.new("Self Match Prevention", "bme.meff.marketandorder.bmegate.v1.6.selfmatchprevention", ftypes.UINT8, nil, nil, nil, "Indicates whether the security admits self- match prevention")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.self_match_prevention_id = ProtoField.new("Self Match Prevention Id", "bme.meff.marketandorder.bmegate.v1.6.selfmatchpreventionid", ftypes.UINT16)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.self_match_prevention_id_2 = ProtoField.new("Self Match Prevention Id 2", "bme.meff.marketandorder.bmegate.v1.6.selfmatchpreventionid2", ftypes.UINT16)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.self_match_prevention_type = ProtoField.new("Self Match Prevention Type", "bme.meff.marketandorder.bmegate.v1.6.selfmatchpreventiontype", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.self_match_prevention_type_2 = ProtoField.new("Self Match Prevention Type 2", "bme.meff.marketandorder.bmegate.v1.6.selfmatchpreventiontype2", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.sell_rf_qs_number = ProtoField.new("Sell Rf Qs Number", "bme.meff.marketandorder.bmegate.v1.6.sellrfqsnumber", ftypes.UINT16, nil, nil, nil, "Number of selling RFQs")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.sequence_number = ProtoField.new("Sequence Number", "bme.meff.marketandorder.bmegate.v1.6.sequencenumber", ftypes.UINT32, nil, nil, nil, "Message sequence number")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.sequence_number_to = ProtoField.new("Sequence Number To", "bme.meff.marketandorder.bmegate.v1.6.sequencenumberto", ftypes.UINT32, nil, nil, nil, "Actual sequence number corresponding to the Snapshot")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.session_date = ProtoField.new("Session Date", "bme.meff.marketandorder.bmegate.v1.6.sessiondate", ftypes.INT32)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.session_reject_reason = ProtoField.new("Session Reject Reason", "bme.meff.marketandorder.bmegate.v1.6.sessionrejectreason", ftypes.UINT8, nil, nil, nil, "Code indicating the rejection motive")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.settl_method = ProtoField.new("Settl Method", "bme.meff.marketandorder.bmegate.v1.6.settlmethod", ftypes.STRING, nil, nil, nil, "Settlement Method")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.side = ProtoField.new("Side", "bme.meff.marketandorder.bmegate.v1.6.side", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.software_name = ProtoField.new("Software Name", "bme.meff.marketandorder.bmegate.v1.6.softwarename", ftypes.STRING, nil, nil, nil, "Descriptive string of the software name used")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.sst_ipost = ProtoField.new("Sst Ipost", "bme.meff.marketandorder.bmegate.v1.6.sstipost", ftypes.DOUBLE, nil, nil, nil, "SSTI posttransparency threshold")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.sst_ipre = ProtoField.new("Sst Ipre", "bme.meff.marketandorder.bmegate.v1.6.sstipre", ftypes.DOUBLE, nil, nil, nil, "SSTI pretransparency threshold")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.start_maturity_month_year = ProtoField.new("Start Maturity Month Year", "bme.meff.marketandorder.bmegate.v1.6.startmaturitymonthyear", ftypes.STRING, nil, nil, nil, "Maturity Interval Initial Date")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.status = ProtoField.new("Status", "bme.meff.marketandorder.bmegate.v1.6.status", ftypes.UINT8, nil, nil, nil, "Request accepted or rejected")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.stock_when_underlying_is_dividend = ProtoField.new("Stock When Underlying Is Dividend", "bme.meff.marketandorder.bmegate.v1.6.stockwhenunderlyingisdividend", ftypes.STRING, nil, nil, nil, "Stock when Underlying is a Dividend")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.strategy_trd_match_id = ProtoField.new("Strategy Trd Match Id", "bme.meff.marketandorder.bmegate.v1.6.strategytrdmatchid", ftypes.UINT32, nil, nil, nil, "System Trade Number of the time-spread or strategy")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.strike_price = ProtoField.new("Strike Price", "bme.meff.marketandorder.bmegate.v1.6.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Exercise price")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.strike_value = ProtoField.new("Strike Value", "bme.meff.marketandorder.bmegate.v1.6.strikevalue", ftypes.DOUBLE, nil, nil, nil, "Trading Unit")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.sub_member = ProtoField.new("Sub Member", "bme.meff.marketandorder.bmegate.v1.6.submember", ftypes.STRING, nil, nil, nil, "Submember code")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.sub_member_2 = ProtoField.new("Sub Member 2", "bme.meff.marketandorder.bmegate.v1.6.submember2", ftypes.STRING, nil, nil, nil, "Submember code")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.sub_product = ProtoField.new("Sub Product", "bme.meff.marketandorder.bmegate.v1.6.subproduct", ftypes.STRING, nil, nil, nil, "SubProduct")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.subscriptions = ProtoField.new("Subscriptions", "bme.meff.marketandorder.bmegate.v1.6.subscriptions", ftypes.UINT8, nil, nil, nil, "Bit mask: 0: Snapshot mode (only relevant in the Market and Order channel) 1: Public orders (only relevant in the Market & Order channel) 2: Public trades (only relevant in the Market & Order channel) 3: RFQ information (only relevant in the Market & Order channel) and Indications of Interest (relevant in the Market & Order channel and in the Order channel) 4: Security List (only relevant in the Order channel) 5: Trading Session Status and News (only relevant in the Order channel) 6: Security Status / Family Status (only relevant in the Order channel) 7: Statistics (only relevant in the Order channel)")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.symbol = ProtoField.new("Symbol", "bme.meff.marketandorder.bmegate.v1.6.symbol", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.symbol_isin = ProtoField.new("Symbol Isin", "bme.meff.marketandorder.bmegate.v1.6.symbolisin", ftypes.STRING, nil, nil, nil, "Instrument ISIN")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.test_production_ind = ProtoField.new("Test Production Ind", "bme.meff.marketandorder.bmegate.v1.6.testproductionind", ftypes.STRING, nil, nil, nil, "T: Test P: Production")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.text_c_58 = ProtoField.new("Text C 58", "bme.meff.marketandorder.bmegate.v1.6.textc58", ftypes.STRING, nil, nil, nil, "Explanation of rejection")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.text_c_65 = ProtoField.new("Text C 65", "bme.meff.marketandorder.bmegate.v1.6.textc65", ftypes.STRING, nil, nil, nil, "Explanation of rejection")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.time_in_force = ProtoField.new("Time In Force", "bme.meff.marketandorder.bmegate.v1.6.timeinforce", ftypes.STRING, nil, nil, nil, "GTD orders are not supported")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.trad_ses_status = ProtoField.new("Trad Ses Status", "bme.meff.marketandorder.bmegate.v1.6.tradsesstatus", ftypes.UINT8, nil, nil, nil, "Trading session status")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.trade_date = ProtoField.new("Trade Date", "bme.meff.marketandorder.bmegate.v1.6.tradedate", ftypes.INT64, nil, nil, nil, "Trade date and time")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.trade_price_condition = ProtoField.new("Trade Price Condition", "bme.meff.marketandorder.bmegate.v1.6.tradepricecondition", ftypes.STRING, nil, nil, nil, "MMT 3.8")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.trade_session_date = ProtoField.new("Trade Session Date", "bme.meff.marketandorder.bmegate.v1.6.tradesessiondate", ftypes.INT32)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.trade_type = ProtoField.new("Trade Type", "bme.meff.marketandorder.bmegate.v1.6.tradetype", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.trader = ProtoField.new("Trader", "bme.meff.marketandorder.bmegate.v1.6.trader", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.trader_2 = ProtoField.new("Trader 2", "bme.meff.marketandorder.bmegate.v1.6.trader2", ftypes.STRING, nil, nil, nil, "Trader")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.trading_obligation = ProtoField.new("Trading Obligation", "bme.meff.marketandorder.bmegate.v1.6.tradingobligation", ftypes.UINT8)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.trading_session_id = ProtoField.new("Trading Session Id", "bme.meff.marketandorder.bmegate.v1.6.tradingsessionid", ftypes.UINT8, nil, nil, nil, "Trading mode")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "bme.meff.marketandorder.bmegate.v1.6.tradingsessionsubid", ftypes.UINT8, nil, nil, nil, "Session phase")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.trading_unit = ProtoField.new("Trading Unit", "bme.meff.marketandorder.bmegate.v1.6.tradingunit", ftypes.UINT8, nil, nil, nil, "Trading unit ID in the central systems")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.transaction_category = ProtoField.new("Transaction Category", "bme.meff.marketandorder.bmegate.v1.6.transactioncategory", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.transaction_date_and_time = ProtoField.new("Transaction Date And Time", "bme.meff.marketandorder.bmegate.v1.6.transactiondateandtime", ftypes.INT64, nil, nil, nil, "Transaction Date and Time in nanoseconds since 1-jan-1970 UTC")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.trd_match_id = ProtoField.new("Trd Match Id", "bme.meff.marketandorder.bmegate.v1.6.trdmatchid", ftypes.UINT32, nil, nil, nil, "System Trade Number")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.underlying_asset = ProtoField.new("Underlying Asset", "bme.meff.marketandorder.bmegate.v1.6.underlyingasset", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.underlying_currency = ProtoField.new("Underlying Currency", "bme.meff.marketandorder.bmegate.v1.6.underlyingcurrency", ftypes.STRING, nil, nil, nil, "Underlying Strike Currency")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.underlying_isin = ProtoField.new("Underlying Isin", "bme.meff.marketandorder.bmegate.v1.6.underlyingisin", ftypes.STRING, nil, nil, nil, "Underlying ISIN Code")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.underlying_security_issuer_lei = ProtoField.new("Underlying Security Issuer Lei", "bme.meff.marketandorder.bmegate.v1.6.underlyingsecurityissuerlei", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "bme.meff.marketandorder.bmegate.v1.6.underlyingsymbol", ftypes.STRING)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.unit_of_measure = ProtoField.new("Unit Of Measure", "bme.meff.marketandorder.bmegate.v1.6.unitofmeasure", ftypes.STRING, nil, nil, nil, "Unif of Measure")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.username = ProtoField.new("Username", "bme.meff.marketandorder.bmegate.v1.6.username", ftypes.STRING, nil, nil, nil, "Identifier of the user as assigned by BME")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.x_rolling_buyer_markup = ProtoField.new("X Rolling Buyer Markup", "bme.meff.marketandorder.bmegate.v1.6.xrollingbuyermarkup", ftypes.DOUBLE, nil, nil, nil, "xRolling buyer rate markup")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.x_rolling_closing_type = ProtoField.new("X Rolling Closing Type", "bme.meff.marketandorder.bmegate.v1.6.xrollingclosingtype", ftypes.STRING, nil, nil, nil, "xRolling Closing Type")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.x_rolling_dividend_pay_date_diff = ProtoField.new("X Rolling Dividend Pay Date Diff", "bme.meff.marketandorder.bmegate.v1.6.xrollingdividendpaydatediff", ftypes.UINT16, nil, nil, nil, "xRolling Dividend Payment Date difference")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.x_rolling_dividend_percentage = ProtoField.new("X Rolling Dividend Percentage", "bme.meff.marketandorder.bmegate.v1.6.xrollingdividendpercentage", ftypes.DOUBLE, nil, nil, nil, "xRolling Dividend payment percentage")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.x_rolling_reference_buyer_rate = ProtoField.new("X Rolling Reference Buyer Rate", "bme.meff.marketandorder.bmegate.v1.6.xrollingreferencebuyerrate", ftypes.STRING, nil, nil, nil, "xRolling reference financing buyer rate")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.x_rolling_reference_seller_rate = ProtoField.new("X Rolling Reference Seller Rate", "bme.meff.marketandorder.bmegate.v1.6.xrollingreferencesellerrate", ftypes.STRING, nil, nil, nil, "xRolling reference financing seller rate")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.x_rolling_seller_markup = ProtoField.new("X Rolling Seller Markup", "bme.meff.marketandorder.bmegate.v1.6.xrollingsellermarkup", ftypes.DOUBLE, nil, nil, nil, "xRolling reference financing seller rate")

-- Bme Meff MarketAndOrder BmeGate 1.6 Framing
omi_bme_meff_marketandorder_bmegate_v1_6.fields.message = ProtoField.new("Message", "bme.meff.marketandorder.bmegate.v1.6.message", ftypes.STRING, nil, nil, nil, "Bme BmeGate Message")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.message_header = ProtoField.new("Message Header", "bme.meff.marketandorder.bmegate.v1.6.messageheader", ftypes.STRING, nil, nil, nil, "What every message carries, in either direction: its length and its type. Section 2.1 gives a published message a third field, the sequence number that lets a listener continue an interrupted session without gaps and without repeated messages, and the message tables state it as the message's own first field - which is where it is declared, since a client's Logon, Replay Request and Logout do not carry one")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.packet = ProtoField.new("Packet", "bme.meff.marketandorder.bmegate.v1.6.packet", ftypes.STRING, nil, nil, nil, "A Bme binary feed carries no packet header of its own: section 2.1 states that every feed is a series of sequenced messages, each stating its own length, so a segment holds whole messages to its end")

-- Bme Meff MarketAndOrder 1.6 Application Messages
omi_bme_meff_marketandorder_bmegate_v1_6.fields.business_message_reject_message = ProtoField.new("Business Message Reject Message", "bme.meff.marketandorder.bmegate.v1.6.businessmessagerejectmessage", ftypes.STRING, nil, nil, nil, "It may be sent by the server to inform about the rejection of a supported message that is syntactically correct in an unsupported situation")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.delta_protection_parameters_ack_nack_message = ProtoField.new("Delta Protection Parameters Ack Nack Message", "bme.meff.marketandorder.bmegate.v1.6.deltaprotectionparametersacknackmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to confirm a Delta Protection Parameters message")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.delta_protection_parameters_message = ProtoField.new("Delta Protection Parameters Message", "bme.meff.marketandorder.bmegate.v1.6.deltaprotectionparametersmessage", ftypes.STRING, nil, nil, nil, "Sent by the client in Derivatives to set attributes for delta protection. Valid")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.execution_private_information_1_leg_buy_market_order_message = ProtoField.new("Execution Private Information 1 Leg Buy Market Order Message", "bme.meff.marketandorder.bmegate.v1.6.executionprivateinformation1legbuymarketordermessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about a trade where the user is involved as Buyer. In the order where the member is not involved, only the market information is sent, so that the application can update the books")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.execution_private_information_1_leg_sell_market_order_message = ProtoField.new("Execution Private Information 1 Leg Sell Market Order Message", "bme.meff.marketandorder.bmegate.v1.6.executionprivateinformation1legsellmarketordermessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about a trade where the user is involved as Seller. In the order where the member is not involved, only the market information is sent, so that the application can update the books")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.execution_private_information_2_legs_message = ProtoField.new("Execution Private Information 2 Legs Message", "bme.meff.marketandorder.bmegate.v1.6.executionprivateinformation2legsmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about a trade where two orders of the user are involved both as Buyer and Seller. T Le y")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.family_status_message = ProtoField.new("Family Status Message", "bme.meff.marketandorder.bmegate.v1.6.familystatusmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server in the Derivatives environment to inform about the status a Family of products")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "bme.meff.marketandorder.bmegate.v1.6.heartbeatmessage", ftypes.STRING, nil, nil, nil, "The Heartbeat message is used by the Server to indicate that the communication is active. In the Heartbeat message, the SequenceNumber of the previously received message will be repeated")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.indication_of_interest_message = ProtoField.new("Indication Of Interest Message", "bme.meff.marketandorder.bmegate.v1.6.indicationofinterestmessage", ftypes.STRING, nil, nil, nil, "Used by the Server to notify an indication of interest on a specific instrument. This functionality is available in Fixed Income and Derivatives")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.logon_message = ProtoField.new("Logon Message", "bme.meff.marketandorder.bmegate.v1.6.logonmessage", ftypes.STRING, nil, nil, nil, "The Logon message is used to start a session by the client application")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.logon_response_message = ProtoField.new("Logon Response Message", "bme.meff.marketandorder.bmegate.v1.6.logonresponsemessage", ftypes.STRING, nil, nil, nil, "The Logon Response message is used by the Server to accept a new session. In this message the sequence number will always be 0")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.logout_message = ProtoField.new("Logout Message", "bme.meff.marketandorder.bmegate.v1.6.logoutmessage", ftypes.BYTES)
omi_bme_meff_marketandorder_bmegate_v1_6.fields.logout_response_message = ProtoField.new("Logout Response Message", "bme.meff.marketandorder.bmegate.v1.6.logoutresponsemessage", ftypes.STRING, nil, nil, nil, "The Logout message is used by the Server to notify the end of a session, whether it is solicited or unsolicited. It may also be the answer to a failed logon attempt (see Logon message)")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.mass_orderquote_cancellation_completion_message = ProtoField.new("Mass Orderquote Cancellation Completion Message", "bme.meff.marketandorder.bmegate.v1.6.massorderquotecancellationcompletionmessage", ftypes.STRING, nil, nil, nil, "Message reporting the completion of a valid mass order cancellation request. More than one message may be sent for a single RequestID")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.mass_orderquote_cancellation_message = ProtoField.new("Mass Orderquote Cancellation Message", "bme.meff.marketandorder.bmegate.v1.6.massorderquotecancellationmessage", ftypes.STRING, nil, nil, nil, "Message sent by the client to request the cancellation of multiple orders and or quotes, based on the specified selection criteria")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.mass_orderquote_cancellation_reject_message = ProtoField.new("Mass Orderquote Cancellation Reject Message", "bme.meff.marketandorder.bmegate.v1.6.massorderquotecancellationrejectmessage", ftypes.STRING, nil, nil, nil, "Message reporting the rejection of a mass order cancellation request. More than one message may be sent for a single RequestID")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.network_status_message = ProtoField.new("Network Status Message", "bme.meff.marketandorder.bmegate.v1.6.networkstatusmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server with information about the connectivity between the Server and the central systems. In the Network Status message, the SequenceNumber of the previously received message will be repeated")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.new_quote_message = ProtoField.new("New Quote Message", "bme.meff.marketandorder.bmegate.v1.6.newquotemessage", ftypes.STRING, nil, nil, nil, "Message sent by the client application to create a new quote. A new quote by the same user on the same SecurityCode and with the same ClientDataID cancels the previous one")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.news_message = ProtoField.new("News Message", "bme.meff.marketandorder.bmegate.v1.6.newsmessage", ftypes.STRING, nil, nil, nil, "Used by the Server to communicate a Market Surveillance or system-wide text message")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_and_quote_client_data_message = ProtoField.new("Order And Quote Client Data Message", "bme.meff.marketandorder.bmegate.v1.6.orderandquoteclientdatamessage", ftypes.STRING, nil, nil, nil, "Sent by the client to set default attributes for subsequent orders and quotes. Please note that in Fixed Income it is possible to enter orders on behalf of other members (AccountMember), based on the corresponding brokerage permissions")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_and_quote_client_data_parameters_ack_nack_message = ProtoField.new("Order And Quote Client Data Parameters Ack Nack Message", "bme.meff.marketandorder.bmegate.v1.6.orderandquoteclientdataparametersacknackmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to confirm an Order and Quote Client Data Parameters message. T Le y")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_book_clear_message = ProtoField.new("Order Book Clear Message", "bme.meff.marketandorder.bmegate.v1.6.orderbookclearmessage", ftypes.STRING, nil, nil, nil, "Message sent by the UDP full-depth server whenever the information about order prices must be reset. In particular, it is sent by the server when the trading mode changes from auction to open market and vice versa")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_cancel_reject_message = ProtoField.new("Order Cancel Reject Message", "bme.meff.marketandorder.bmegate.v1.6.ordercancelrejectmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about the rejection of a Simple order modification (MsgType = 0x47) or an Order cancellation request (MsgType = 0x46)")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_cancellation_market_member_message = ProtoField.new("Order Cancellation Market Member Message", "bme.meff.marketandorder.bmegate.v1.6.ordercancellationmarketmembermessage", ftypes.STRING, nil, nil, nil, "Used by the Server to communicate information order cancellation. The same message is used in Full-Depth data feeds (for order cancellations of any user), in the Order Entry Server (for cancellations of user orders) and in the Market & Order Server (for order cancellations of any user)")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_cancellation_request_message = ProtoField.new("Order Cancellation Request Message", "bme.meff.marketandorder.bmegate.v1.6.ordercancellationrequestmessage", ftypes.STRING, nil, nil, nil, "Message sent by the client to cancel an order. The field OrderID must contain a reference to the order that is to be cancelled")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_market_pre_transparency_information_message = ProtoField.new("Order Market Pre Transparency Information Message", "bme.meff.marketandorder.bmegate.v1.6.ordermarketpretransparencyinformationmessage", ftypes.STRING, nil, nil, nil, "Used by the Server to communicate information about all active visible orders. During a session, any order is uniquely identified by the SecondaryOrderID")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.quote_cancellation_market_member_message = ProtoField.new("Quote Cancellation Market Member Message", "bme.meff.marketandorder.bmegate.v1.6.quotecancellationmarketmembermessage", ftypes.STRING, nil, nil, nil, "Used by the Server to communicate information about quote cancellation. The same message is used in Full-Depth data feeds (for quote cancellations of any user), in the Order Entry Server (for cancellations of user quotes) and in the Market & Order Server (for quote cancellations of any user)")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.quote_cancellation_request_message = ProtoField.new("Quote Cancellation Request Message", "bme.meff.marketandorder.bmegate.v1.6.quotecancellationrequestmessage", ftypes.STRING, nil, nil, nil, "Message sent by the client to cancel a quote")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.quote_market_pre_transparency_information_message = ProtoField.new("Quote Market Pre Transparency Information Message", "bme.meff.marketandorder.bmegate.v1.6.quotemarketpretransparencyinformationmessage", ftypes.STRING, nil, nil, nil, "Used by the Server to communicate information about active quotes. In a session, a Quote is univoquely identified by its two orders: SecurityCode and SecondaryOrderID (buy order) and SecondaryOrderID2 (sell order)")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.quote_modification_request_message = ProtoField.new("Quote Modification Request Message", "bme.meff.marketandorder.bmegate.v1.6.quotemodificationrequestmessage", ftypes.STRING, nil, nil, nil, "Message sent by the client to modify a quote. Field ClientDataID is required in RF to identify a quote")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.quote_status_message = ProtoField.new("Quote Status Message", "bme.meff.marketandorder.bmegate.v1.6.quotestatusmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about the status of a Quote. T Le y n")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.reject_message = ProtoField.new("Reject Message", "bme.meff.marketandorder.bmegate.v1.6.rejectmessage", ftypes.STRING, nil, nil, nil, "It may be sent by the server to inform about the rejection of an unsupported or syntactically incorrect message. In the Reject message, the SequenceNumber of the previously received message will be repeated")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.rfq_market_pre_transparency_information_message = ProtoField.new("Rfq Market Pre Transparency Information Message", "bme.meff.marketandorder.bmegate.v1.6.rfqmarketpretransparencyinformationmessage", ftypes.STRING, nil, nil, nil, "Used by the server to communicate price information about RFQs. The contents of the RFQID field match those of the field IOIID in the corresponding Indication of Interest message")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.security_list_cancellation_report_message = ProtoField.new("Security List Cancellation Report Message", "bme.meff.marketandorder.bmegate.v1.6.securitylistcancellationreportmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server for cancelling previously defined securities")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.security_list_message = ProtoField.new("Security List Message", "bme.meff.marketandorder.bmegate.v1.6.securitylistmessage", ftypes.STRING, nil, nil, nil, "T Le y n")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.security_list_update_report_message = ProtoField.new("Security List Update Report Message", "bme.meff.marketandorder.bmegate.v1.6.securitylistupdatereportmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server for reporting updates, during the session, to the security definition. T Le y n")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.security_status_message = ProtoField.new("Security Status Message", "bme.meff.marketandorder.bmegate.v1.6.securitystatusmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server to inform on the status of one security")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.simple_new_order_message = ProtoField.new("Simple New Order Message", "bme.meff.marketandorder.bmegate.v1.6.simplenewordermessage", ftypes.STRING, nil, nil, nil, "Message sent by the client to enter a new order")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.simple_new_order_with_client_data_message = ProtoField.new("Simple New Order With Client Data Message", "bme.meff.marketandorder.bmegate.v1.6.simpleneworderwithclientdatamessage", ftypes.STRING, nil, nil, nil, "Message sent by the client to enter a new order and, at the same time, the values for the Client Data parmeters. Note that no ClientDataID may be assigned")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.simple_order_modification_message = ProtoField.new("Simple Order Modification Message", "bme.meff.marketandorder.bmegate.v1.6.simpleordermodificationmessage", ftypes.STRING, nil, nil, nil, "Message sent by the client to modify an order. The field OrderID must contain the client reference of the order that is to be modified")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.simple_order_modification_with_client_data_message = ProtoField.new("Simple Order Modification With Client Data Message", "bme.meff.marketandorder.bmegate.v1.6.simpleordermodificationwithclientdatamessage", ftypes.STRING, nil, nil, nil, "Message sent by the client to modify an order. The field OrderID must contain the client reference of the order that is to be modified")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.simple_order_status_message = ProtoField.new("Simple Order Status Message", "bme.meff.marketandorder.bmegate.v1.6.simpleorderstatusmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about the order status. Please note that the first fields of this message are the same as the ones for Order Market Pre- Transparency Information (Msg Type = 0x03) (see section 5.4.12)")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.statistics_message = ProtoField.new("Statistics Message", "bme.meff.marketandorder.bmegate.v1.6.statisticsmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server to inform about closing prices and other statistics. Le n")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.topofbook_message = ProtoField.new("Topofbook Message", "bme.meff.marketandorder.bmegate.v1.6.topofbookmessage", ftypes.STRING, nil, nil, nil, "Used by the UDP Servers to communicate Top-of-book price information during auctions. When there is an indicative match price, the fields BidPx1 and AskPx1 will have the same value")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.trade_market_post_transparency_information_full_depth_message = ProtoField.new("Trade Market Post Transparency Information Full Depth Message", "bme.meff.marketandorder.bmegate.v1.6.trademarketposttransparencyinformationfulldepthmessage", ftypes.STRING, nil, nil, nil, "Used by the server to communicate trade information related to trades resulting from order matching. The message also contains the situation in which the relevant orders will remain in the books")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.trade_market_post_transparency_information_topofbook_message = ProtoField.new("Trade Market Post Transparency Information Topofbook Message", "bme.meff.marketandorder.bmegate.v1.6.trademarketposttransparencyinformationtopofbookmessage", ftypes.STRING, nil, nil, nil, "Used by the server to communicate trade information related to trades resulting from order matching in channels C/D and E/F. It is also used in channels A/B when the trade is the result of order matching at the end of an auction period (where only top-of-book information is shown)")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.trade_trade_amendment_or_cancellation_1_leg_buy_private_information_message = ProtoField.new("Trade Trade Amendment Or Cancellation 1 Leg Buy Private Information Message", "bme.meff.marketandorder.bmegate.v1.6.tradetradeamendmentorcancellation1legbuyprivateinformationmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about a trade produced due to any reason other than order matching, also to inform about trades produced due to order matching in a Dark pool. The user is involved in the trade as Seller")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.trade_trade_amendment_or_cancellation_1_leg_sell_private_information_message = ProtoField.new("Trade Trade Amendment Or Cancellation 1 Leg Sell Private Information Message", "bme.meff.marketandorder.bmegate.v1.6.tradetradeamendmentorcancellation1legsellprivateinformationmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about a trade produced due to any reason other than order matching, also to inform about trades produced due to order matching in a Dark pool. The user is involved in the trade as Seller")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.trade_trade_amendment_or_cancellation_2_legs_private_information_message = ProtoField.new("Trade Trade Amendment Or Cancellation 2 Legs Private Information Message", "bme.meff.marketandorder.bmegate.v1.6.tradetradeamendmentorcancellation2legsprivateinformationmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about a trade produced due to any reason other than order matching, also to inform about trades produced due to order matching in a Dark pool. The user is involved in the trade both as Buyer and Seller")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.trade_trade_amendment_or_cancellation_message = ProtoField.new("Trade Trade Amendment Or Cancellation Message", "bme.meff.marketandorder.bmegate.v1.6.tradetradeamendmentorcancellationmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about a trade produced due to any reason other than order matching, also to inform about trades produced due to order matching in a Dark pool. In this message, all fields with the suffix 2 refer to the sell order, and the ones without the suffix refer either to both legs or the buy order")
omi_bme_meff_marketandorder_bmegate_v1_6.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "bme.meff.marketandorder.bmegate.v1.6.tradingsessionstatusmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about the session status in each Trading Mode")

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Bme Meff MarketAndOrder BmeGate 1.6 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register Bme Meff MarketAndOrder BmeGate 1.6 Show Options
omi_bme_meff_marketandorder_bmegate_v1_6.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_bme_meff_marketandorder_bmegate_v1_6.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_bme_meff_marketandorder_bmegate_v1_6.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

-- Handle changed preferences
function omi_bme_meff_marketandorder_bmegate_v1_6.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_bme_meff_marketandorder_bmegate_v1_6.prefs.show_application_messages then
    show.application_messages = omi_bme_meff_marketandorder_bmegate_v1_6.prefs.show_application_messages
  end
  if show.headers ~= omi_bme_meff_marketandorder_bmegate_v1_6.prefs.show_headers then
    show.headers = omi_bme_meff_marketandorder_bmegate_v1_6.prefs.show_headers
  end
  if show.structs ~= omi_bme_meff_marketandorder_bmegate_v1_6.prefs.show_structs then
    show.structs = omi_bme_meff_marketandorder_bmegate_v1_6.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Bme Meff MarketAndOrder BmeGate 1.6 Fields
-----------------------------------------------------------------------

-- Account
bme_meff_marketandorder_bmegate_v1_6.account = {}

-- Size: Account
bme_meff_marketandorder_bmegate_v1_6.account.size = 5

-- Display: Account
bme_meff_marketandorder_bmegate_v1_6.account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
bme_meff_marketandorder_bmegate_v1_6.account.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.account.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.account, range, value, display)

  return offset + length, value
end

-- Account 2
bme_meff_marketandorder_bmegate_v1_6.account_2 = {}

-- Size: Account 2
bme_meff_marketandorder_bmegate_v1_6.account_2.size = 5

-- Display: Account 2
bme_meff_marketandorder_bmegate_v1_6.account_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account 2: No Value"
  end

  return "Account 2: "..value
end

-- Dissect: Account 2
bme_meff_marketandorder_bmegate_v1_6.account_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.account_2.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.account_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.account_2, range, value, display)

  return offset + length, value
end

-- Adjustments Rule
bme_meff_marketandorder_bmegate_v1_6.adjustments_rule = {}

-- Size: Adjustments Rule
bme_meff_marketandorder_bmegate_v1_6.adjustments_rule.size = 1

-- Display: Adjustments Rule
bme_meff_marketandorder_bmegate_v1_6.adjustments_rule.display = function(value)
  if value == "E" then
    return "Adjustments Rule: Extraordinary Dividend Adjustments Only (E)"
  end
  if value == "T" then
    return "Adjustments Rule: Total (T)"
  end

  return "Adjustments Rule: Unknown("..value..")"
end

-- Dissect: Adjustments Rule
bme_meff_marketandorder_bmegate_v1_6.adjustments_rule.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.adjustments_rule.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.adjustments_rule.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.adjustments_rule, range, value, display)

  return offset + length, value
end

-- Admission Requested By Issuer
bme_meff_marketandorder_bmegate_v1_6.admission_requested_by_issuer = {}

-- Size: Admission Requested By Issuer
bme_meff_marketandorder_bmegate_v1_6.admission_requested_by_issuer.size = 1

-- Display: Admission Requested By Issuer
bme_meff_marketandorder_bmegate_v1_6.admission_requested_by_issuer.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.admission_requested_by_issuer.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.admission_requested_by_issuer.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.admission_requested_by_issuer.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.admission_requested_by_issuer, range, value, display)

  return offset + length, value
end

-- Aggressor Indicator
bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator = {}

-- Size: Aggressor Indicator
bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator.size = 1

-- Display: Aggressor Indicator
bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator.display = function(value)
  if value == " " then
    return "Aggressor Indicator: Na (<whitespace>)"
  end
  if value == "P" then
    return "Aggressor Indicator: Passive (P)"
  end
  if value == "A" then
    return "Aggressor Indicator: Aggresive (A)"
  end

  return "Aggressor Indicator: Unknown("..value..")"
end

-- Dissect: Aggressor Indicator
bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.aggressor_indicator, range, value, display)

  return offset + length, value
end

-- Aggressor Indicator 2
bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator_2 = {}

-- Size: Aggressor Indicator 2
bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator_2.size = 1

-- Display: Aggressor Indicator 2
bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator_2.display = function(value)
  if value == " " then
    return "Aggressor Indicator 2: Na (<whitespace>)"
  end
  if value == "P" then
    return "Aggressor Indicator 2: Passive (P)"
  end
  if value == "A" then
    return "Aggressor Indicator 2: Aggressive (A)"
  end

  return "Aggressor Indicator 2: Unknown("..value..")"
end

-- Dissect: Aggressor Indicator 2
bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.aggressor_indicator_2, range, value, display)

  return offset + length, value
end

-- Algo Flag
bme_meff_marketandorder_bmegate_v1_6.algo_flag = {}

-- Size: Algo Flag
bme_meff_marketandorder_bmegate_v1_6.algo_flag.size = 1

-- Display: Algo Flag
bme_meff_marketandorder_bmegate_v1_6.algo_flag.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.algo_flag.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.algo_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.algo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.algo_flag, range, value, display)

  return offset + length, value
end

-- Algorithmic Trade Indicator
bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator = {}

-- Size: Algorithmic Trade Indicator
bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator.size = 1

-- Display: Algorithmic Trade Indicator
bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator.display = function(value)
  if value == 0 then
    return "Algorithmic Trade Indicator: False (0)"
  end
  if value == 1 then
    return "Algorithmic Trade Indicator: True (1)"
  end
  if value == 255 then
    return "Algorithmic Trade Indicator: Undefined (255)"
  end

  return "Algorithmic Trade Indicator: Unknown("..value..")"
end

-- Dissect: Algorithmic Trade Indicator
bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.algorithmic_trade_indicator, range, value, display)

  return offset + length, value
end

-- Algorithmic Trade Indicator 2
bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator_2 = {}

-- Size: Algorithmic Trade Indicator 2
bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator_2.size = 1

-- Display: Algorithmic Trade Indicator 2
bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator_2.display = function(value)
  if value == 0 then
    return "Algorithmic Trade Indicator 2: False (0)"
  end
  if value == 1 then
    return "Algorithmic Trade Indicator 2: True (1)"
  end
  if value == 255 then
    return "Algorithmic Trade Indicator 2: Undefined (255)"
  end

  return "Algorithmic Trade Indicator 2: Unknown("..value..")"
end

-- Dissect: Algorithmic Trade Indicator 2
bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.algorithmic_trade_indicator_2, range, value, display)

  return offset + length, value
end

-- Alloc Text
bme_meff_marketandorder_bmegate_v1_6.alloc_text = {}

-- Size: Alloc Text
bme_meff_marketandorder_bmegate_v1_6.alloc_text.size = 18

-- Display: Alloc Text
bme_meff_marketandorder_bmegate_v1_6.alloc_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Alloc Text: No Value"
  end

  return "Alloc Text: "..value
end

-- Dissect: Alloc Text
bme_meff_marketandorder_bmegate_v1_6.alloc_text.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.alloc_text.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.alloc_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.alloc_text, range, value, display)

  return offset + length, value
end

-- Alloc Text 2
bme_meff_marketandorder_bmegate_v1_6.alloc_text_2 = {}

-- Size: Alloc Text 2
bme_meff_marketandorder_bmegate_v1_6.alloc_text_2.size = 18

-- Display: Alloc Text 2
bme_meff_marketandorder_bmegate_v1_6.alloc_text_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Alloc Text 2: No Value"
  end

  return "Alloc Text 2: "..value
end

-- Dissect: Alloc Text 2
bme_meff_marketandorder_bmegate_v1_6.alloc_text_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.alloc_text_2.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.alloc_text_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.alloc_text_2, range, value, display)

  return offset + length, value
end

-- Amended Trade Date
bme_meff_marketandorder_bmegate_v1_6.amended_trade_date = {}

-- Size: Amended Trade Date
bme_meff_marketandorder_bmegate_v1_6.amended_trade_date.size = 4

-- Display: Amended Trade Date
bme_meff_marketandorder_bmegate_v1_6.amended_trade_date.display = function(value)
  return string.format("Amended Trade Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Amended Trade Date
bme_meff_marketandorder_bmegate_v1_6.amended_trade_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.amended_trade_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_meff_marketandorder_bmegate_v1_6.amended_trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.amended_trade_date, range, value, display)

  return offset + length, value
end

-- Amended Trade Type
bme_meff_marketandorder_bmegate_v1_6.amended_trade_type = {}

-- Size: Amended Trade Type
bme_meff_marketandorder_bmegate_v1_6.amended_trade_type.size = 1

-- Display: Amended Trade Type
bme_meff_marketandorder_bmegate_v1_6.amended_trade_type.display = function(value)
  if value == "H" then
    return "Amended Trade Type: Cross Trade During Trading Hours (H)"
  end
  if value == "L" then
    return "Amended Trade Type: Delta (L)"
  end
  if value == "M" then
    return "Amended Trade Type: Market (M)"
  end
  if value == "R" then
    return "Amended Trade Type: Strategy Trades Time Spread Futures And Strategies (R)"
  end
  if value == "S" then
    return "Amended Trade Type: Components Of Trade R (S)"
  end
  if value == "W" then
    return "Amended Trade Type: Trade Amendment (W)"
  end
  if value == "X" then
    return "Amended Trade Type: Countertrade (X)"
  end
  if value == "3" then
    return "Amended Trade Type: Rfq (3)"
  end
  if value == "4" then
    return "Amended Trade Type: Rfq X Rolling (4)"
  end
  if value == "6" then
    return "Amended Trade Type: Rfq X Rolling During Auction (6)"
  end
  if value == "8" then
    return "Amended Trade Type: Rfq X Rolling Amendment (8)"
  end
  if value == "9" then
    return "Amended Trade Type: Rfq X Rolling During Auction Amendment (9)"
  end

  return "Amended Trade Type: Unknown("..value..")"
end

-- Dissect: Amended Trade Type
bme_meff_marketandorder_bmegate_v1_6.amended_trade_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.amended_trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.amended_trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.amended_trade_type, range, value, display)

  return offset + length, value
end

-- Ask Orders 1
bme_meff_marketandorder_bmegate_v1_6.ask_orders_1 = {}

-- Size: Ask Orders 1
bme_meff_marketandorder_bmegate_v1_6.ask_orders_1.size = 2

-- Display: Ask Orders 1
bme_meff_marketandorder_bmegate_v1_6.ask_orders_1.display = function(value)
  return "Ask Orders 1: "..value
end

-- Dissect: Ask Orders 1
bme_meff_marketandorder_bmegate_v1_6.ask_orders_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ask_orders_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.ask_orders_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_orders_1, range, value, display)

  return offset + length, value
end

-- Ask Orders 2
bme_meff_marketandorder_bmegate_v1_6.ask_orders_2 = {}

-- Size: Ask Orders 2
bme_meff_marketandorder_bmegate_v1_6.ask_orders_2.size = 2

-- Display: Ask Orders 2
bme_meff_marketandorder_bmegate_v1_6.ask_orders_2.display = function(value)
  return "Ask Orders 2: "..value
end

-- Dissect: Ask Orders 2
bme_meff_marketandorder_bmegate_v1_6.ask_orders_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ask_orders_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.ask_orders_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_orders_2, range, value, display)

  return offset + length, value
end

-- Ask Orders 3
bme_meff_marketandorder_bmegate_v1_6.ask_orders_3 = {}

-- Size: Ask Orders 3
bme_meff_marketandorder_bmegate_v1_6.ask_orders_3.size = 2

-- Display: Ask Orders 3
bme_meff_marketandorder_bmegate_v1_6.ask_orders_3.display = function(value)
  return "Ask Orders 3: "..value
end

-- Dissect: Ask Orders 3
bme_meff_marketandorder_bmegate_v1_6.ask_orders_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ask_orders_3.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.ask_orders_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_orders_3, range, value, display)

  return offset + length, value
end

-- Ask Orders 4
bme_meff_marketandorder_bmegate_v1_6.ask_orders_4 = {}

-- Size: Ask Orders 4
bme_meff_marketandorder_bmegate_v1_6.ask_orders_4.size = 2

-- Display: Ask Orders 4
bme_meff_marketandorder_bmegate_v1_6.ask_orders_4.display = function(value)
  return "Ask Orders 4: "..value
end

-- Dissect: Ask Orders 4
bme_meff_marketandorder_bmegate_v1_6.ask_orders_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ask_orders_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.ask_orders_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_orders_4, range, value, display)

  return offset + length, value
end

-- Ask Orders 5
bme_meff_marketandorder_bmegate_v1_6.ask_orders_5 = {}

-- Size: Ask Orders 5
bme_meff_marketandorder_bmegate_v1_6.ask_orders_5.size = 2

-- Display: Ask Orders 5
bme_meff_marketandorder_bmegate_v1_6.ask_orders_5.display = function(value)
  return "Ask Orders 5: "..value
end

-- Dissect: Ask Orders 5
bme_meff_marketandorder_bmegate_v1_6.ask_orders_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ask_orders_5.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.ask_orders_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_orders_5, range, value, display)

  return offset + length, value
end

-- Ask Px 1
bme_meff_marketandorder_bmegate_v1_6.ask_px_1 = {}

-- Size: Ask Px 1
bme_meff_marketandorder_bmegate_v1_6.ask_px_1.size = 8

-- Display: Ask Px 1
bme_meff_marketandorder_bmegate_v1_6.ask_px_1.display = function(value)
  return "Ask Px 1: "..value
end

-- Translate: Ask Px 1
bme_meff_marketandorder_bmegate_v1_6.ask_px_1.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ask Px 1
bme_meff_marketandorder_bmegate_v1_6.ask_px_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ask_px_1.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.ask_px_1.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.ask_px_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_px_1, range, value, display)

  return offset + length, value
end

-- Ask Px 2
bme_meff_marketandorder_bmegate_v1_6.ask_px_2 = {}

-- Size: Ask Px 2
bme_meff_marketandorder_bmegate_v1_6.ask_px_2.size = 8

-- Display: Ask Px 2
bme_meff_marketandorder_bmegate_v1_6.ask_px_2.display = function(value)
  return "Ask Px 2: "..value
end

-- Translate: Ask Px 2
bme_meff_marketandorder_bmegate_v1_6.ask_px_2.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ask Px 2
bme_meff_marketandorder_bmegate_v1_6.ask_px_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ask_px_2.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.ask_px_2.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.ask_px_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_px_2, range, value, display)

  return offset + length, value
end

-- Ask Px 3
bme_meff_marketandorder_bmegate_v1_6.ask_px_3 = {}

-- Size: Ask Px 3
bme_meff_marketandorder_bmegate_v1_6.ask_px_3.size = 8

-- Display: Ask Px 3
bme_meff_marketandorder_bmegate_v1_6.ask_px_3.display = function(value)
  return "Ask Px 3: "..value
end

-- Translate: Ask Px 3
bme_meff_marketandorder_bmegate_v1_6.ask_px_3.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ask Px 3
bme_meff_marketandorder_bmegate_v1_6.ask_px_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ask_px_3.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.ask_px_3.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.ask_px_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_px_3, range, value, display)

  return offset + length, value
end

-- Ask Px 4
bme_meff_marketandorder_bmegate_v1_6.ask_px_4 = {}

-- Size: Ask Px 4
bme_meff_marketandorder_bmegate_v1_6.ask_px_4.size = 8

-- Display: Ask Px 4
bme_meff_marketandorder_bmegate_v1_6.ask_px_4.display = function(value)
  return "Ask Px 4: "..value
end

-- Translate: Ask Px 4
bme_meff_marketandorder_bmegate_v1_6.ask_px_4.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ask Px 4
bme_meff_marketandorder_bmegate_v1_6.ask_px_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ask_px_4.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.ask_px_4.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.ask_px_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_px_4, range, value, display)

  return offset + length, value
end

-- Ask Px 5
bme_meff_marketandorder_bmegate_v1_6.ask_px_5 = {}

-- Size: Ask Px 5
bme_meff_marketandorder_bmegate_v1_6.ask_px_5.size = 8

-- Display: Ask Px 5
bme_meff_marketandorder_bmegate_v1_6.ask_px_5.display = function(value)
  return "Ask Px 5: "..value
end

-- Translate: Ask Px 5
bme_meff_marketandorder_bmegate_v1_6.ask_px_5.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ask Px 5
bme_meff_marketandorder_bmegate_v1_6.ask_px_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ask_px_5.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.ask_px_5.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.ask_px_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_px_5, range, value, display)

  return offset + length, value
end

-- Ask Size 1
bme_meff_marketandorder_bmegate_v1_6.ask_size_1 = {}

-- Size: Ask Size 1
bme_meff_marketandorder_bmegate_v1_6.ask_size_1.size = 4

-- Display: Ask Size 1
bme_meff_marketandorder_bmegate_v1_6.ask_size_1.display = function(value)
  return "Ask Size 1: "..value
end

-- Dissect: Ask Size 1
bme_meff_marketandorder_bmegate_v1_6.ask_size_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ask_size_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.ask_size_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_size_1, range, value, display)

  return offset + length, value
end

-- Ask Size 2
bme_meff_marketandorder_bmegate_v1_6.ask_size_2 = {}

-- Size: Ask Size 2
bme_meff_marketandorder_bmegate_v1_6.ask_size_2.size = 4

-- Display: Ask Size 2
bme_meff_marketandorder_bmegate_v1_6.ask_size_2.display = function(value)
  return "Ask Size 2: "..value
end

-- Dissect: Ask Size 2
bme_meff_marketandorder_bmegate_v1_6.ask_size_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ask_size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.ask_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_size_2, range, value, display)

  return offset + length, value
end

-- Ask Size 3
bme_meff_marketandorder_bmegate_v1_6.ask_size_3 = {}

-- Size: Ask Size 3
bme_meff_marketandorder_bmegate_v1_6.ask_size_3.size = 4

-- Display: Ask Size 3
bme_meff_marketandorder_bmegate_v1_6.ask_size_3.display = function(value)
  return "Ask Size 3: "..value
end

-- Dissect: Ask Size 3
bme_meff_marketandorder_bmegate_v1_6.ask_size_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ask_size_3.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.ask_size_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_size_3, range, value, display)

  return offset + length, value
end

-- Ask Size 4
bme_meff_marketandorder_bmegate_v1_6.ask_size_4 = {}

-- Size: Ask Size 4
bme_meff_marketandorder_bmegate_v1_6.ask_size_4.size = 4

-- Display: Ask Size 4
bme_meff_marketandorder_bmegate_v1_6.ask_size_4.display = function(value)
  return "Ask Size 4: "..value
end

-- Dissect: Ask Size 4
bme_meff_marketandorder_bmegate_v1_6.ask_size_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ask_size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.ask_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_size_4, range, value, display)

  return offset + length, value
end

-- Ask Size 5
bme_meff_marketandorder_bmegate_v1_6.ask_size_5 = {}

-- Size: Ask Size 5
bme_meff_marketandorder_bmegate_v1_6.ask_size_5.size = 4

-- Display: Ask Size 5
bme_meff_marketandorder_bmegate_v1_6.ask_size_5.display = function(value)
  return "Ask Size 5: "..value
end

-- Dissect: Ask Size 5
bme_meff_marketandorder_bmegate_v1_6.ask_size_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ask_size_5.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.ask_size_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ask_size_5, range, value, display)

  return offset + length, value
end

-- Base Currency
bme_meff_marketandorder_bmegate_v1_6.base_currency = {}

-- Size: Base Currency
bme_meff_marketandorder_bmegate_v1_6.base_currency.size = 3

-- Display: Base Currency
bme_meff_marketandorder_bmegate_v1_6.base_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Base Currency: No Value"
  end

  return "Base Currency: "..value
end

-- Dissect: Base Currency
bme_meff_marketandorder_bmegate_v1_6.base_currency.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.base_currency.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.base_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.base_currency, range, value, display)

  return offset + length, value
end

-- Base Product
bme_meff_marketandorder_bmegate_v1_6.base_product = {}

-- Size: Base Product
bme_meff_marketandorder_bmegate_v1_6.base_product.size = 4

-- Display: Base Product
bme_meff_marketandorder_bmegate_v1_6.base_product.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Base Product: No Value"
  end

  return "Base Product: "..value
end

-- Dissect: Base Product
bme_meff_marketandorder_bmegate_v1_6.base_product.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.base_product.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.base_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.base_product, range, value, display)

  return offset + length, value
end

-- Bencrfpt Flag
bme_meff_marketandorder_bmegate_v1_6.bencrfpt_flag = {}

-- Size: Bencrfpt Flag
bme_meff_marketandorder_bmegate_v1_6.bencrfpt_flag.size = 1

-- Display: Bencrfpt Flag
bme_meff_marketandorder_bmegate_v1_6.bencrfpt_flag.display = function(value)
  if value == " " then
    return "Bencrfpt Flag: Normal Trade (<whitespace>)"
  end
  if value == "6" then
    return "Bencrfpt Flag: Benchmark Trade Benc (6)"
  end

  return "Bencrfpt Flag: Unknown("..value..")"
end

-- Dissect: Bencrfpt Flag
bme_meff_marketandorder_bmegate_v1_6.bencrfpt_flag.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.bencrfpt_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.bencrfpt_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.bencrfpt_flag, range, value, display)

  return offset + length, value
end

-- Bid Orders 1
bme_meff_marketandorder_bmegate_v1_6.bid_orders_1 = {}

-- Size: Bid Orders 1
bme_meff_marketandorder_bmegate_v1_6.bid_orders_1.size = 2

-- Display: Bid Orders 1
bme_meff_marketandorder_bmegate_v1_6.bid_orders_1.display = function(value)
  return "Bid Orders 1: "..value
end

-- Dissect: Bid Orders 1
bme_meff_marketandorder_bmegate_v1_6.bid_orders_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.bid_orders_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.bid_orders_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_orders_1, range, value, display)

  return offset + length, value
end

-- Bid Orders 2
bme_meff_marketandorder_bmegate_v1_6.bid_orders_2 = {}

-- Size: Bid Orders 2
bme_meff_marketandorder_bmegate_v1_6.bid_orders_2.size = 2

-- Display: Bid Orders 2
bme_meff_marketandorder_bmegate_v1_6.bid_orders_2.display = function(value)
  return "Bid Orders 2: "..value
end

-- Dissect: Bid Orders 2
bme_meff_marketandorder_bmegate_v1_6.bid_orders_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.bid_orders_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.bid_orders_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_orders_2, range, value, display)

  return offset + length, value
end

-- Bid Orders 3
bme_meff_marketandorder_bmegate_v1_6.bid_orders_3 = {}

-- Size: Bid Orders 3
bme_meff_marketandorder_bmegate_v1_6.bid_orders_3.size = 2

-- Display: Bid Orders 3
bme_meff_marketandorder_bmegate_v1_6.bid_orders_3.display = function(value)
  return "Bid Orders 3: "..value
end

-- Dissect: Bid Orders 3
bme_meff_marketandorder_bmegate_v1_6.bid_orders_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.bid_orders_3.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.bid_orders_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_orders_3, range, value, display)

  return offset + length, value
end

-- Bid Orders 4
bme_meff_marketandorder_bmegate_v1_6.bid_orders_4 = {}

-- Size: Bid Orders 4
bme_meff_marketandorder_bmegate_v1_6.bid_orders_4.size = 2

-- Display: Bid Orders 4
bme_meff_marketandorder_bmegate_v1_6.bid_orders_4.display = function(value)
  return "Bid Orders 4: "..value
end

-- Dissect: Bid Orders 4
bme_meff_marketandorder_bmegate_v1_6.bid_orders_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.bid_orders_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.bid_orders_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_orders_4, range, value, display)

  return offset + length, value
end

-- Bid Orders 5
bme_meff_marketandorder_bmegate_v1_6.bid_orders_5 = {}

-- Size: Bid Orders 5
bme_meff_marketandorder_bmegate_v1_6.bid_orders_5.size = 2

-- Display: Bid Orders 5
bme_meff_marketandorder_bmegate_v1_6.bid_orders_5.display = function(value)
  return "Bid Orders 5: "..value
end

-- Dissect: Bid Orders 5
bme_meff_marketandorder_bmegate_v1_6.bid_orders_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.bid_orders_5.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.bid_orders_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_orders_5, range, value, display)

  return offset + length, value
end

-- Bid Px 1
bme_meff_marketandorder_bmegate_v1_6.bid_px_1 = {}

-- Size: Bid Px 1
bme_meff_marketandorder_bmegate_v1_6.bid_px_1.size = 8

-- Display: Bid Px 1
bme_meff_marketandorder_bmegate_v1_6.bid_px_1.display = function(value)
  return "Bid Px 1: "..value
end

-- Translate: Bid Px 1
bme_meff_marketandorder_bmegate_v1_6.bid_px_1.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Px 1
bme_meff_marketandorder_bmegate_v1_6.bid_px_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.bid_px_1.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.bid_px_1.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.bid_px_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_px_1, range, value, display)

  return offset + length, value
end

-- Bid Px 2
bme_meff_marketandorder_bmegate_v1_6.bid_px_2 = {}

-- Size: Bid Px 2
bme_meff_marketandorder_bmegate_v1_6.bid_px_2.size = 8

-- Display: Bid Px 2
bme_meff_marketandorder_bmegate_v1_6.bid_px_2.display = function(value)
  return "Bid Px 2: "..value
end

-- Translate: Bid Px 2
bme_meff_marketandorder_bmegate_v1_6.bid_px_2.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Px 2
bme_meff_marketandorder_bmegate_v1_6.bid_px_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.bid_px_2.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.bid_px_2.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.bid_px_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_px_2, range, value, display)

  return offset + length, value
end

-- Bid Px 3
bme_meff_marketandorder_bmegate_v1_6.bid_px_3 = {}

-- Size: Bid Px 3
bme_meff_marketandorder_bmegate_v1_6.bid_px_3.size = 8

-- Display: Bid Px 3
bme_meff_marketandorder_bmegate_v1_6.bid_px_3.display = function(value)
  return "Bid Px 3: "..value
end

-- Translate: Bid Px 3
bme_meff_marketandorder_bmegate_v1_6.bid_px_3.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Px 3
bme_meff_marketandorder_bmegate_v1_6.bid_px_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.bid_px_3.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.bid_px_3.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.bid_px_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_px_3, range, value, display)

  return offset + length, value
end

-- Bid Px 4
bme_meff_marketandorder_bmegate_v1_6.bid_px_4 = {}

-- Size: Bid Px 4
bme_meff_marketandorder_bmegate_v1_6.bid_px_4.size = 8

-- Display: Bid Px 4
bme_meff_marketandorder_bmegate_v1_6.bid_px_4.display = function(value)
  return "Bid Px 4: "..value
end

-- Translate: Bid Px 4
bme_meff_marketandorder_bmegate_v1_6.bid_px_4.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Px 4
bme_meff_marketandorder_bmegate_v1_6.bid_px_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.bid_px_4.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.bid_px_4.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.bid_px_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_px_4, range, value, display)

  return offset + length, value
end

-- Bid Px 5
bme_meff_marketandorder_bmegate_v1_6.bid_px_5 = {}

-- Size: Bid Px 5
bme_meff_marketandorder_bmegate_v1_6.bid_px_5.size = 8

-- Display: Bid Px 5
bme_meff_marketandorder_bmegate_v1_6.bid_px_5.display = function(value)
  return "Bid Px 5: "..value
end

-- Translate: Bid Px 5
bme_meff_marketandorder_bmegate_v1_6.bid_px_5.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Px 5
bme_meff_marketandorder_bmegate_v1_6.bid_px_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.bid_px_5.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.bid_px_5.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.bid_px_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_px_5, range, value, display)

  return offset + length, value
end

-- Bid Size 1
bme_meff_marketandorder_bmegate_v1_6.bid_size_1 = {}

-- Size: Bid Size 1
bme_meff_marketandorder_bmegate_v1_6.bid_size_1.size = 4

-- Display: Bid Size 1
bme_meff_marketandorder_bmegate_v1_6.bid_size_1.display = function(value)
  return "Bid Size 1: "..value
end

-- Dissect: Bid Size 1
bme_meff_marketandorder_bmegate_v1_6.bid_size_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.bid_size_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.bid_size_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_size_1, range, value, display)

  return offset + length, value
end

-- Bid Size 2
bme_meff_marketandorder_bmegate_v1_6.bid_size_2 = {}

-- Size: Bid Size 2
bme_meff_marketandorder_bmegate_v1_6.bid_size_2.size = 4

-- Display: Bid Size 2
bme_meff_marketandorder_bmegate_v1_6.bid_size_2.display = function(value)
  return "Bid Size 2: "..value
end

-- Dissect: Bid Size 2
bme_meff_marketandorder_bmegate_v1_6.bid_size_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.bid_size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.bid_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_size_2, range, value, display)

  return offset + length, value
end

-- Bid Size 3
bme_meff_marketandorder_bmegate_v1_6.bid_size_3 = {}

-- Size: Bid Size 3
bme_meff_marketandorder_bmegate_v1_6.bid_size_3.size = 4

-- Display: Bid Size 3
bme_meff_marketandorder_bmegate_v1_6.bid_size_3.display = function(value)
  return "Bid Size 3: "..value
end

-- Dissect: Bid Size 3
bme_meff_marketandorder_bmegate_v1_6.bid_size_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.bid_size_3.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.bid_size_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_size_3, range, value, display)

  return offset + length, value
end

-- Bid Size 4
bme_meff_marketandorder_bmegate_v1_6.bid_size_4 = {}

-- Size: Bid Size 4
bme_meff_marketandorder_bmegate_v1_6.bid_size_4.size = 4

-- Display: Bid Size 4
bme_meff_marketandorder_bmegate_v1_6.bid_size_4.display = function(value)
  return "Bid Size 4: "..value
end

-- Dissect: Bid Size 4
bme_meff_marketandorder_bmegate_v1_6.bid_size_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.bid_size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.bid_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_size_4, range, value, display)

  return offset + length, value
end

-- Bid Size 5
bme_meff_marketandorder_bmegate_v1_6.bid_size_5 = {}

-- Size: Bid Size 5
bme_meff_marketandorder_bmegate_v1_6.bid_size_5.size = 4

-- Display: Bid Size 5
bme_meff_marketandorder_bmegate_v1_6.bid_size_5.display = function(value)
  return "Bid Size 5: "..value
end

-- Dissect: Bid Size 5
bme_meff_marketandorder_bmegate_v1_6.bid_size_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.bid_size_5.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.bid_size_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.bid_size_5, range, value, display)

  return offset + length, value
end

-- Broker
bme_meff_marketandorder_bmegate_v1_6.broker = {}

-- Size: Broker
bme_meff_marketandorder_bmegate_v1_6.broker.size = 4

-- Display: Broker
bme_meff_marketandorder_bmegate_v1_6.broker.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Broker: No Value"
  end

  return "Broker: "..value
end

-- Dissect: Broker
bme_meff_marketandorder_bmegate_v1_6.broker.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.broker.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.broker, range, value, display)

  return offset + length, value
end

-- Broker Text
bme_meff_marketandorder_bmegate_v1_6.broker_text = {}

-- Size: Broker Text
bme_meff_marketandorder_bmegate_v1_6.broker_text.size = 15

-- Display: Broker Text
bme_meff_marketandorder_bmegate_v1_6.broker_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Broker Text: No Value"
  end

  return "Broker Text: "..value
end

-- Dissect: Broker Text
bme_meff_marketandorder_bmegate_v1_6.broker_text.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.broker_text.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.broker_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.broker_text, range, value, display)

  return offset + length, value
end

-- Broker Trader
bme_meff_marketandorder_bmegate_v1_6.broker_trader = {}

-- Size: Broker Trader
bme_meff_marketandorder_bmegate_v1_6.broker_trader.size = 3

-- Display: Broker Trader
bme_meff_marketandorder_bmegate_v1_6.broker_trader.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Broker Trader: No Value"
  end

  return "Broker Trader: "..value
end

-- Dissect: Broker Trader
bme_meff_marketandorder_bmegate_v1_6.broker_trader.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.broker_trader.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.broker_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.broker_trader, range, value, display)

  return offset + length, value
end

-- Business Reject Reason
bme_meff_marketandorder_bmegate_v1_6.business_reject_reason = {}

-- Size: Business Reject Reason
bme_meff_marketandorder_bmegate_v1_6.business_reject_reason.size = 1

-- Display: Business Reject Reason
bme_meff_marketandorder_bmegate_v1_6.business_reject_reason.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.business_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.business_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.business_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.business_reject_reason, range, value, display)

  return offset + length, value
end

-- Buy Rf Qs Number
bme_meff_marketandorder_bmegate_v1_6.buy_rf_qs_number = {}

-- Size: Buy Rf Qs Number
bme_meff_marketandorder_bmegate_v1_6.buy_rf_qs_number.size = 2

-- Display: Buy Rf Qs Number
bme_meff_marketandorder_bmegate_v1_6.buy_rf_qs_number.display = function(value)
  return "Buy Rf Qs Number: "..value
end

-- Dissect: Buy Rf Qs Number
bme_meff_marketandorder_bmegate_v1_6.buy_rf_qs_number.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.buy_rf_qs_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.buy_rf_qs_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.buy_rf_qs_number, range, value, display)

  return offset + length, value
end

-- Cancel Pre Amendment
bme_meff_marketandorder_bmegate_v1_6.cancel_pre_amendment = {}

-- Size: Cancel Pre Amendment
bme_meff_marketandorder_bmegate_v1_6.cancel_pre_amendment.size = 1

-- Display: Cancel Pre Amendment
bme_meff_marketandorder_bmegate_v1_6.cancel_pre_amendment.display = function(value)
  if value == 0 then
    return "Cancel Pre Amendment: False (0)"
  end
  if value == 1 then
    return "Cancel Pre Amendment: True (1)"
  end
  if value == 255 then
    return "Cancel Pre Amendment: Undefined (255)"
  end

  return "Cancel Pre Amendment: Unknown("..value..")"
end

-- Dissect: Cancel Pre Amendment
bme_meff_marketandorder_bmegate_v1_6.cancel_pre_amendment.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.cancel_pre_amendment.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.cancel_pre_amendment.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.cancel_pre_amendment, range, value, display)

  return offset + length, value
end

-- Ccp Code
bme_meff_marketandorder_bmegate_v1_6.ccp_code = {}

-- Size: Ccp Code
bme_meff_marketandorder_bmegate_v1_6.ccp_code.size = 1

-- Display: Ccp Code
bme_meff_marketandorder_bmegate_v1_6.ccp_code.display = function(value)
  if value == "0" then
    return "Ccp Code: Na (0)"
  end
  if value == "1" then
    return "Ccp Code: Bme Clearing… Others To Be Defined (1)"
  end

  return "Ccp Code: Unknown("..value..")"
end

-- Dissect: Ccp Code
bme_meff_marketandorder_bmegate_v1_6.ccp_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ccp_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.ccp_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ccp_code, range, value, display)

  return offset + length, value
end

-- Ccp Code 2
bme_meff_marketandorder_bmegate_v1_6.ccp_code_2 = {}

-- Size: Ccp Code 2
bme_meff_marketandorder_bmegate_v1_6.ccp_code_2.size = 1

-- Display: Ccp Code 2
bme_meff_marketandorder_bmegate_v1_6.ccp_code_2.display = function(value)
  if value == "0" then
    return "Ccp Code 2: Na (0)"
  end
  if value == "1" then
    return "Ccp Code 2: Bme Clearing… Others To Be Defined (1)"
  end

  return "Ccp Code 2: Unknown("..value..")"
end

-- Dissect: Ccp Code 2
bme_meff_marketandorder_bmegate_v1_6.ccp_code_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ccp_code_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.ccp_code_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ccp_code_2, range, value, display)

  return offset + length, value
end

-- Ccv
bme_meff_marketandorder_bmegate_v1_6.ccv = {}

-- Size: Ccv
bme_meff_marketandorder_bmegate_v1_6.ccv.size = 20

-- Display: Ccv
bme_meff_marketandorder_bmegate_v1_6.ccv.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Ccv: No Value"
  end

  return "Ccv: "..value
end

-- Dissect: Ccv
bme_meff_marketandorder_bmegate_v1_6.ccv.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ccv.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.ccv.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ccv, range, value, display)

  return offset + length, value
end

-- Ccv 2
bme_meff_marketandorder_bmegate_v1_6.ccv_2 = {}

-- Size: Ccv 2
bme_meff_marketandorder_bmegate_v1_6.ccv_2.size = 20

-- Display: Ccv 2
bme_meff_marketandorder_bmegate_v1_6.ccv_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Ccv 2: No Value"
  end

  return "Ccv 2: "..value
end

-- Dissect: Ccv 2
bme_meff_marketandorder_bmegate_v1_6.ccv_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ccv_2.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.ccv_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ccv_2, range, value, display)

  return offset + length, value
end

-- Cfi Code
bme_meff_marketandorder_bmegate_v1_6.cfi_code = {}

-- Size: Cfi Code
bme_meff_marketandorder_bmegate_v1_6.cfi_code.size = 6

-- Display: Cfi Code
bme_meff_marketandorder_bmegate_v1_6.cfi_code.display = function(value)
  if value == "FFICSX" then
    return "Cfi Code: Standard Financial Future On An Index Cash Settlement (FFICSX)"
  end
  if value == "FFICNX" then
    return "Cfi Code: Nonstandardized Financial Future On An Index Cash Settlement (FFICNX)"
  end
  if value == "KEXXXX" then
    return "Cfi Code: Strategies (KEXXXX)"
  end
  if value == "OCEFCS" then
    return "Cfi Code: Standardized European Call Option On An Index Cash Settlement (OCEFCS)"
  end
  if value == "OCEFCN" then
    return "Cfi Code: Nonstandardized European Call Option On An Index Cash Settlement (OCEFCN)"
  end
  if value == "OPEFCS" then
    return "Cfi Code: Standardized European Put Option On An Index Cash Settlement (OPEFCS)"
  end
  if value == "OPEFCN" then
    return "Cfi Code: Nonstandardized European Put Option On An Index Cash Settlement (OPEFCN)"
  end
  if value == "TIECPX" then
    return "Cfi Code: Referential Instrument (TIECPX)"
  end
  if value == "FFSPSX" then
    return "Cfi Code: Standardized Financial Future On Stocks Physical Delivery (FFSPSX)"
  end
  if value == "FFSPNX" then
    return "Cfi Code: Nonstandardized Financial Future On Stocks Physical Delivery (FFSPNX)"
  end
  if value == "FFSCSX" then
    return "Cfi Code: Standardized Financial Future On Stocks Cash Settlement (FFSCSX)"
  end
  if value == "FFSCNX" then
    return "Cfi Code: Nonstandardized Financial Future On Stocks Cash Settlement (FFSCNX)"
  end
  if value == "FFVCSX" then
    return "Cfi Code: Standardized Financial Future On Dividends Cash Settlement (FFVCSX)"
  end
  if value == "FFVCNX" then
    return "Cfi Code: Nonstandardized Financial Future On Dividends Cash Settlement (FFVCNX)"
  end
  if value == "OCASPS" then
    return "Cfi Code: Standardized American Call Option On Stocks Physical Delivery (OCASPS)"
  end
  if value == "OCASPN" then
    return "Cfi Code: Nonstandardized American Call Option On Stocks Physical Delivery (OCASPN)"
  end
  if value == "OPASPS" then
    return "Cfi Code: Standardized American Put Option On Stocks Physical Delivery (OPASPS)"
  end
  if value == "OPASPN" then
    return "Cfi Code: Nonstandardized American Put Option On Stocks Physical Delivery (OPASPN)"
  end
  if value == "OCESPS" then
    return "Cfi Code: Standardized European Call Option On Stocks Physical Delivery (OCESPS)"
  end
  if value == "OCESPN" then
    return "Cfi Code: Nonstandardized European Call Option On Stocks Physical Delivery (OCESPN)"
  end
  if value == "OPESPS" then
    return "Cfi Code: Standardized European Put Option On Stocks Physical Delivery (OPESPS)"
  end
  if value == "OPESPN" then
    return "Cfi Code: Nonstandardized European Put Option On Stocks Physical Delivery (OPESPN)"
  end
  if value == "OCESCS" then
    return "Cfi Code: Standardized European Call Option On Stocks Cash Settlement (OCESCS)"
  end
  if value == "OCESCN" then
    return "Cfi Code: Nonstandardized European Call Option On Stocks Cash Settlement (OCESCN)"
  end
  if value == "OPESCS" then
    return "Cfi Code: Standardized European Put Option On Stocks Cash Settlement (OPESCS)"
  end
  if value == "OPESCN" then
    return "Cfi Code: Nonstandardized European Put Option On Stocks Cash Settlement (OPESCN)"
  end
  if value == "ESXXXX" then
    return "Cfi Code: Stocks Cash (ESXXXX)"
  end
  if value == "TDSXXX" then
    return "Cfi Code: Referential Instrument Dividend (TDSXXX)"
  end
  if value == "FFDPSX" then
    return "Cfi Code: Standardized Financial Future On Fixed Income Physical Delivery (FFDPSX)"
  end
  if value == "FFDCSX" then
    return "Cfi Code: Standardized Financial Future On Fixed Income Cash Settlement (FFDCSX)"
  end
  if value == "KMXXXX" then
    return "Cfi Code: Timespread Of Futures On Fixed Income Physical Delivery (KMXXXX)"
  end
  if value == "OCEDPS" then
    return "Cfi Code: Standardized European Call Option On Fixed Income Physical Delivery (OCEDPS)"
  end
  if value == "OPEDPS" then
    return "Cfi Code: Standardized European Put Option On Fixed Income Physical Delivery (OPEDPS)"
  end
  if value == "OCEDPN" then
    return "Cfi Code: Nonstandardized European Call Option On Fixed Income Physical Delivery (OCEDPN)"
  end
  if value == "OPEDPN" then
    return "Cfi Code: Nonstandardized European Put Option On Fixed Income Physical Delivery (OPEDPN)"
  end
  if value == "OCEDCS" then
    return "Cfi Code: Standardized European Call Option On Fixed Income Cash Settlement (OCEDCS)"
  end
  if value == "OPEDCS" then
    return "Cfi Code: Standardized European Put Option On Fixed Income Cash Settlement (OPEDCS)"
  end
  if value == "OCEDCN" then
    return "Cfi Code: Nonstandardized European Call Option On Fixed Income Cash Settlement (OCEDCN)"
  end
  if value == "OPEDCN" then
    return "Cfi Code: Nonstandardized European Put Option On Fixed Income Cash Settlement (OPEDCN)"
  end
  if value == "FFCCSX" then
    return "Cfi Code: Standardized Financial Future Currency Cash Settlement (FFCCSX)"
  end
  if value == "IFXXXP" then
    return "Cfi Code: Currency Spot (IFXXXP)"
  end
  if value == "FCHCSX" then
    return "Cfi Code: Standardized Yearly Future On Energy Cash Settlement (FCHCSX)"
  end

  return "Cfi Code: Unknown("..value..")"
end

-- Dissect: Cfi Code
bme_meff_marketandorder_bmegate_v1_6.cfi_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.cfi_code.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.cfi_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Client Data Id
bme_meff_marketandorder_bmegate_v1_6.client_data_id = {}

-- Size: Client Data Id
bme_meff_marketandorder_bmegate_v1_6.client_data_id.size = 2

-- Display: Client Data Id
bme_meff_marketandorder_bmegate_v1_6.client_data_id.display = function(value)
  if value == 1 then
    return "Client Data Id: 65535 In Response Messages 0 Means No Client Data Id Used (1)"
  end

  return "Client Data Id: Unknown("..value..")"
end

-- Dissect: Client Data Id
bme_meff_marketandorder_bmegate_v1_6.client_data_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.client_data_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.client_data_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.client_data_id, range, value, display)

  return offset + length, value
end

-- Client Data Id 2 B 2
bme_meff_marketandorder_bmegate_v1_6.client_data_id_2_b_2 = {}

-- Size: Client Data Id 2 B 2
bme_meff_marketandorder_bmegate_v1_6.client_data_id_2_b_2.size = 2

-- Display: Client Data Id 2 B 2
bme_meff_marketandorder_bmegate_v1_6.client_data_id_2_b_2.display = function(value)
  return "Client Data Id 2 B 2: "..value
end

-- Dissect: Client Data Id 2 B 2
bme_meff_marketandorder_bmegate_v1_6.client_data_id_2_b_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.client_data_id_2_b_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.client_data_id_2_b_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.client_data_id_2_b_2, range, value, display)

  return offset + length, value
end

-- Client Data Id 2 U 2
bme_meff_marketandorder_bmegate_v1_6.client_data_id_2_u_2 = {}

-- Size: Client Data Id 2 U 2
bme_meff_marketandorder_bmegate_v1_6.client_data_id_2_u_2.size = 2

-- Display: Client Data Id 2 U 2
bme_meff_marketandorder_bmegate_v1_6.client_data_id_2_u_2.display = function(value)
  return "Client Data Id 2 U 2: "..value
end

-- Dissect: Client Data Id 2 U 2
bme_meff_marketandorder_bmegate_v1_6.client_data_id_2_u_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.client_data_id_2_u_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.client_data_id_2_u_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.client_data_id_2_u_2, range, value, display)

  return offset + length, value
end

-- Client Data Reference
bme_meff_marketandorder_bmegate_v1_6.client_data_reference = {}

-- Size: Client Data Reference
bme_meff_marketandorder_bmegate_v1_6.client_data_reference.size = 15

-- Display: Client Data Reference
bme_meff_marketandorder_bmegate_v1_6.client_data_reference.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Client Data Reference: No Value"
  end

  return "Client Data Reference: "..value
end

-- Dissect: Client Data Reference
bme_meff_marketandorder_bmegate_v1_6.client_data_reference.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.client_data_reference.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.client_data_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.client_data_reference, range, value, display)

  return offset + length, value
end

-- Client Id
bme_meff_marketandorder_bmegate_v1_6.client_id = {}

-- Size: Client Id
bme_meff_marketandorder_bmegate_v1_6.client_id.size = 4

-- Display: Client Id
bme_meff_marketandorder_bmegate_v1_6.client_id.display = function(value)
  return "Client Id: "..value
end

-- Dissect: Client Id
bme_meff_marketandorder_bmegate_v1_6.client_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.client_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.client_id, range, value, display)

  return offset + length, value
end

-- Client Id 2
bme_meff_marketandorder_bmegate_v1_6.client_id_2 = {}

-- Size: Client Id 2
bme_meff_marketandorder_bmegate_v1_6.client_id_2.size = 4

-- Display: Client Id 2
bme_meff_marketandorder_bmegate_v1_6.client_id_2.display = function(value)
  return "Client Id 2: "..value
end

-- Dissect: Client Id 2
bme_meff_marketandorder_bmegate_v1_6.client_id_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.client_id_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.client_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.client_id_2, range, value, display)

  return offset + length, value
end

-- Commodity Derivative Indicator
bme_meff_marketandorder_bmegate_v1_6.commodity_derivative_indicator = {}

-- Size: Commodity Derivative Indicator
bme_meff_marketandorder_bmegate_v1_6.commodity_derivative_indicator.size = 1

-- Display: Commodity Derivative Indicator
bme_meff_marketandorder_bmegate_v1_6.commodity_derivative_indicator.display = function(value)
  if value == "S" then
    return "Commodity Derivative Indicator: Commodity Derivative (S)"
  end
  if value == "N" then
    return "Commodity Derivative Indicator: Non Derivative (N)"
  end
  if value == "D" then
    return "Commodity Derivative Indicator: Derivative (D)"
  end

  return "Commodity Derivative Indicator: Unknown("..value..")"
end

-- Dissect: Commodity Derivative Indicator
bme_meff_marketandorder_bmegate_v1_6.commodity_derivative_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.commodity_derivative_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.commodity_derivative_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.commodity_derivative_indicator, range, value, display)

  return offset + length, value
end

-- Contract Multiplier
bme_meff_marketandorder_bmegate_v1_6.contract_multiplier = {}

-- Size: Contract Multiplier
bme_meff_marketandorder_bmegate_v1_6.contract_multiplier.size = 8

-- Display: Contract Multiplier
bme_meff_marketandorder_bmegate_v1_6.contract_multiplier.display = function(value)
  return "Contract Multiplier: "..value
end

-- Translate: Contract Multiplier
bme_meff_marketandorder_bmegate_v1_6.contract_multiplier.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Contract Multiplier
bme_meff_marketandorder_bmegate_v1_6.contract_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.contract_multiplier.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.contract_multiplier.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.contract_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Cross Id
bme_meff_marketandorder_bmegate_v1_6.cross_id = {}

-- Size: Cross Id
bme_meff_marketandorder_bmegate_v1_6.cross_id.size = 4

-- Display: Cross Id
bme_meff_marketandorder_bmegate_v1_6.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
bme_meff_marketandorder_bmegate_v1_6.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.cross_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Cross Id 2
bme_meff_marketandorder_bmegate_v1_6.cross_id_2 = {}

-- Size: Cross Id 2
bme_meff_marketandorder_bmegate_v1_6.cross_id_2.size = 4

-- Display: Cross Id 2
bme_meff_marketandorder_bmegate_v1_6.cross_id_2.display = function(value)
  return "Cross Id 2: "..value
end

-- Dissect: Cross Id 2
bme_meff_marketandorder_bmegate_v1_6.cross_id_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.cross_id_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.cross_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.cross_id_2, range, value, display)

  return offset + length, value
end

-- Currency
bme_meff_marketandorder_bmegate_v1_6.currency = {}

-- Size: Currency
bme_meff_marketandorder_bmegate_v1_6.currency.size = 3

-- Display: Currency
bme_meff_marketandorder_bmegate_v1_6.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
bme_meff_marketandorder_bmegate_v1_6.currency.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.currency.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.currency, range, value, display)

  return offset + length, value
end

-- Cxl Rej Reason
bme_meff_marketandorder_bmegate_v1_6.cxl_rej_reason = {}

-- Size: Cxl Rej Reason
bme_meff_marketandorder_bmegate_v1_6.cxl_rej_reason.size = 1

-- Display: Cxl Rej Reason
bme_meff_marketandorder_bmegate_v1_6.cxl_rej_reason.display = function(value)
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
  if value == "B" then
    return "Cxl Rej Reason: Price Filters (B)"
  end
  if value == "C" then
    return "Cxl Rej Reason: Volume Filters (C)"
  end
  if value == "D" then
    return "Cxl Rej Reason: Clearing Member Status (D)"
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
  if value == "I" then
    return "Cxl Rej Reason: Delta Protection Number Of Contracts (I)"
  end
  if value == "J" then
    return "Cxl Rej Reason: Delta Protection Maximum Absolute Delta (J)"
  end
  if value == "K" then
    return "Cxl Rej Reason: Delta Protection Máximum Accumulate Delta (K)"
  end
  if value == "O" then
    return "Cxl Rej Reason: By Volatility Auction Filters (O)"
  end
  if value == "Q" then
    return "Cxl Rej Reason: Quote Cancelled By Substitution (Q)"
  end
  if value == "W" then
    return "Cxl Rej Reason: Not Prices For Processing The Order (W)"
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
  if value == "e" then
    return "Cxl Rej Reason: Order Rejected For Triggering Auction (e)"
  end
  if value == "g" then
    return "Cxl Rej Reason: Incorrect Price Or Triggered Price (g)"
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
  if value == "l" then
    return "Cxl Rej Reason: By Intraday Futures Trading Limit (l)"
  end
  if value == "m" then
    return "Cxl Rej Reason: Kill Button (m)"
  end
  if value == "n" then
    return "Cxl Rej Reason: By Hft Filter Limit Maximum Number Of Contracts Matched (n)"
  end
  if value == "o" then
    return "Cxl Rej Reason: By Selfmatch Prevention (o)"
  end
  if value == "p" then
    return "Cxl Rej Reason: Auction Price Order Cancelled At The End Of The Auction (p)"
  end
  if value == "x" then
    return "Cxl Rej Reason: Invalid Ork Fields (x)"
  end

  return "Cxl Rej Reason: Unknown("..value..")"
end

-- Dissect: Cxl Rej Reason
bme_meff_marketandorder_bmegate_v1_6.cxl_rej_reason.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.cxl_rej_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.cxl_rej_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.cxl_rej_reason, range, value, display)

  return offset + length, value
end

-- Cxl Rej Response To
bme_meff_marketandorder_bmegate_v1_6.cxl_rej_response_to = {}

-- Size: Cxl Rej Response To
bme_meff_marketandorder_bmegate_v1_6.cxl_rej_response_to.size = 1

-- Display: Cxl Rej Response To
bme_meff_marketandorder_bmegate_v1_6.cxl_rej_response_to.display = function(value)
  if value == "1" then
    return "Cxl Rej Response To: Simple Order Modification (1)"
  end
  if value == "2" then
    return "Cxl Rej Response To: Order Cancellation Request (2)"
  end

  return "Cxl Rej Response To: Unknown("..value..")"
end

-- Dissect: Cxl Rej Response To
bme_meff_marketandorder_bmegate_v1_6.cxl_rej_response_to.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.cxl_rej_response_to.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.cxl_rej_response_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.cxl_rej_response_to, range, value, display)

  return offset + length, value
end

-- Data Code
bme_meff_marketandorder_bmegate_v1_6.data_code = {}

-- Size: Data Code
bme_meff_marketandorder_bmegate_v1_6.data_code.size = 1

-- Display: Data Code
bme_meff_marketandorder_bmegate_v1_6.data_code.display = function(value)
  return "Data Code: "..value
end

-- Dissect: Data Code
bme_meff_marketandorder_bmegate_v1_6.data_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.data_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.data_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.data_code, range, value, display)

  return offset + length, value
end

-- Data Count
bme_meff_marketandorder_bmegate_v1_6.data_count = {}

-- Size: Data Count
bme_meff_marketandorder_bmegate_v1_6.data_count.size = 1

-- Display: Data Count
bme_meff_marketandorder_bmegate_v1_6.data_count.display = function(value)
  return "Data Count: "..value
end

-- Dissect: Data Count
bme_meff_marketandorder_bmegate_v1_6.data_count.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.data_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.data_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.data_count, range, value, display)

  return offset + length, value
end

-- Dea Flag
bme_meff_marketandorder_bmegate_v1_6.dea_flag = {}

-- Size: Dea Flag
bme_meff_marketandorder_bmegate_v1_6.dea_flag.size = 1

-- Display: Dea Flag
bme_meff_marketandorder_bmegate_v1_6.dea_flag.display = function(value)
  if value == 0 then
    return "Dea Flag: False (0)"
  end
  if value == 1 then
    return "Dea Flag: True (1)"
  end
  if value == 255 then
    return "Dea Flag: Undefined (255)"
  end

  return "Dea Flag: Unknown("..value..")"
end

-- Dissect: Dea Flag
bme_meff_marketandorder_bmegate_v1_6.dea_flag.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.dea_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.dea_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.dea_flag, range, value, display)

  return offset + length, value
end

-- Dea Flag 2
bme_meff_marketandorder_bmegate_v1_6.dea_flag_2 = {}

-- Size: Dea Flag 2
bme_meff_marketandorder_bmegate_v1_6.dea_flag_2.size = 1

-- Display: Dea Flag 2
bme_meff_marketandorder_bmegate_v1_6.dea_flag_2.display = function(value)
  if value == 0 then
    return "Dea Flag 2: False (0)"
  end
  if value == 1 then
    return "Dea Flag 2: True (1)"
  end
  if value == 255 then
    return "Dea Flag 2: Undefined (255)"
  end

  return "Dea Flag 2: Unknown("..value..")"
end

-- Dissect: Dea Flag 2
bme_meff_marketandorder_bmegate_v1_6.dea_flag_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.dea_flag_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.dea_flag_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.dea_flag_2, range, value, display)

  return offset + length, value
end

-- Decisor Id
bme_meff_marketandorder_bmegate_v1_6.decisor_id = {}

-- Size: Decisor Id
bme_meff_marketandorder_bmegate_v1_6.decisor_id.size = 4

-- Display: Decisor Id
bme_meff_marketandorder_bmegate_v1_6.decisor_id.display = function(value)
  return "Decisor Id: "..value
end

-- Dissect: Decisor Id
bme_meff_marketandorder_bmegate_v1_6.decisor_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.decisor_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.decisor_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.decisor_id, range, value, display)

  return offset + length, value
end

-- Decisor Id 2
bme_meff_marketandorder_bmegate_v1_6.decisor_id_2 = {}

-- Size: Decisor Id 2
bme_meff_marketandorder_bmegate_v1_6.decisor_id_2.size = 4

-- Display: Decisor Id 2
bme_meff_marketandorder_bmegate_v1_6.decisor_id_2.display = function(value)
  return "Decisor Id 2: "..value
end

-- Dissect: Decisor Id 2
bme_meff_marketandorder_bmegate_v1_6.decisor_id_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.decisor_id_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.decisor_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.decisor_id_2, range, value, display)

  return offset + length, value
end

-- Deferral Waiver
bme_meff_marketandorder_bmegate_v1_6.deferral_waiver = {}

-- Size: Deferral Waiver
bme_meff_marketandorder_bmegate_v1_6.deferral_waiver.size = 1

-- Display: Deferral Waiver
bme_meff_marketandorder_bmegate_v1_6.deferral_waiver.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.deferral_waiver.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.deferral_waiver.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.deferral_waiver.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.deferral_waiver, range, value, display)

  return offset + length, value
end

-- Delta Protection Time
bme_meff_marketandorder_bmegate_v1_6.delta_protection_time = {}

-- Size: Delta Protection Time
bme_meff_marketandorder_bmegate_v1_6.delta_protection_time.size = 1

-- Display: Delta Protection Time
bme_meff_marketandorder_bmegate_v1_6.delta_protection_time.display = function(value)
  if value == 0 then
    return "Delta Protection Time: 60 (0)"
  end

  return "Delta Protection Time: Unknown("..value..")"
end

-- Dissect: Delta Protection Time
bme_meff_marketandorder_bmegate_v1_6.delta_protection_time.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.delta_protection_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.delta_protection_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.delta_protection_time, range, value, display)

  return offset + length, value
end

-- Delta Protection Volume
bme_meff_marketandorder_bmegate_v1_6.delta_protection_volume = {}

-- Size: Delta Protection Volume
bme_meff_marketandorder_bmegate_v1_6.delta_protection_volume.size = 4

-- Display: Delta Protection Volume
bme_meff_marketandorder_bmegate_v1_6.delta_protection_volume.display = function(value)
  return "Delta Protection Volume: "..value
end

-- Dissect: Delta Protection Volume
bme_meff_marketandorder_bmegate_v1_6.delta_protection_volume.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.delta_protection_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.delta_protection_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.delta_protection_volume, range, value, display)

  return offset + length, value
end

-- Designation
bme_meff_marketandorder_bmegate_v1_6.designation = {}

-- Size: Designation
bme_meff_marketandorder_bmegate_v1_6.designation.size = 1

-- Display: Designation
bme_meff_marketandorder_bmegate_v1_6.designation.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.designation.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.designation.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.designation.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.designation, range, value, display)

  return offset + length, value
end

-- Display Qty
bme_meff_marketandorder_bmegate_v1_6.display_qty = {}

-- Size: Display Qty
bme_meff_marketandorder_bmegate_v1_6.display_qty.size = 4

-- Display: Display Qty
bme_meff_marketandorder_bmegate_v1_6.display_qty.display = function(value)
  return "Display Qty: "..value
end

-- Dissect: Display Qty
bme_meff_marketandorder_bmegate_v1_6.display_qty.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.display_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Display Qty 2
bme_meff_marketandorder_bmegate_v1_6.display_qty_2 = {}

-- Size: Display Qty 2
bme_meff_marketandorder_bmegate_v1_6.display_qty_2.size = 4

-- Display: Display Qty 2
bme_meff_marketandorder_bmegate_v1_6.display_qty_2.display = function(value)
  return "Display Qty 2: "..value
end

-- Dissect: Display Qty 2
bme_meff_marketandorder_bmegate_v1_6.display_qty_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.display_qty_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.display_qty_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.display_qty_2, range, value, display)

  return offset + length, value
end

-- End Maturity Month Year
bme_meff_marketandorder_bmegate_v1_6.end_maturity_month_year = {}

-- Size: End Maturity Month Year
bme_meff_marketandorder_bmegate_v1_6.end_maturity_month_year.size = 8

-- Display: End Maturity Month Year
bme_meff_marketandorder_bmegate_v1_6.end_maturity_month_year.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "End Maturity Month Year: No Value"
  end

  return "End Maturity Month Year: "..value
end

-- Dissect: End Maturity Month Year
bme_meff_marketandorder_bmegate_v1_6.end_maturity_month_year.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.end_maturity_month_year.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.end_maturity_month_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.end_maturity_month_year, range, value, display)

  return offset + length, value
end

-- Entry Date
bme_meff_marketandorder_bmegate_v1_6.entry_date = {}

-- Size: Entry Date
bme_meff_marketandorder_bmegate_v1_6.entry_date.size = 4

-- Display: Entry Date
bme_meff_marketandorder_bmegate_v1_6.entry_date.display = function(value)
  return string.format("Entry Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Entry Date
bme_meff_marketandorder_bmegate_v1_6.entry_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.entry_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_meff_marketandorder_bmegate_v1_6.entry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.entry_date, range, value, display)

  return offset + length, value
end

-- Entry Date 2
bme_meff_marketandorder_bmegate_v1_6.entry_date_2 = {}

-- Size: Entry Date 2
bme_meff_marketandorder_bmegate_v1_6.entry_date_2.size = 4

-- Display: Entry Date 2
bme_meff_marketandorder_bmegate_v1_6.entry_date_2.display = function(value)
  return string.format("Entry Date 2: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Entry Date 2
bme_meff_marketandorder_bmegate_v1_6.entry_date_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.entry_date_2.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_meff_marketandorder_bmegate_v1_6.entry_date_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.entry_date_2, range, value, display)

  return offset + length, value
end

-- Environment Code
bme_meff_marketandorder_bmegate_v1_6.environment_code = {}

-- Size: Environment Code
bme_meff_marketandorder_bmegate_v1_6.environment_code.size = 2

-- Display: Environment Code
bme_meff_marketandorder_bmegate_v1_6.environment_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Environment Code: No Value"
  end

  return "Environment Code: "..value
end

-- Dissect: Environment Code
bme_meff_marketandorder_bmegate_v1_6.environment_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.environment_code.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.environment_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.environment_code, range, value, display)

  return offset + length, value
end

-- Exec Ref Id
bme_meff_marketandorder_bmegate_v1_6.exec_ref_id = {}

-- Size: Exec Ref Id
bme_meff_marketandorder_bmegate_v1_6.exec_ref_id.size = 4

-- Display: Exec Ref Id
bme_meff_marketandorder_bmegate_v1_6.exec_ref_id.display = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
bme_meff_marketandorder_bmegate_v1_6.exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Exec Type
bme_meff_marketandorder_bmegate_v1_6.exec_type = {}

-- Size: Exec Type
bme_meff_marketandorder_bmegate_v1_6.exec_type.size = 1

-- Display: Exec Type
bme_meff_marketandorder_bmegate_v1_6.exec_type.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.exec_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.exec_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.exec_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Exec Type 2
bme_meff_marketandorder_bmegate_v1_6.exec_type_2 = {}

-- Size: Exec Type 2
bme_meff_marketandorder_bmegate_v1_6.exec_type_2.size = 1

-- Display: Exec Type 2
bme_meff_marketandorder_bmegate_v1_6.exec_type_2.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.exec_type_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.exec_type_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.exec_type_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.exec_type_2, range, value, display)

  return offset + length, value
end

-- Executor Id
bme_meff_marketandorder_bmegate_v1_6.executor_id = {}

-- Size: Executor Id
bme_meff_marketandorder_bmegate_v1_6.executor_id.size = 4

-- Display: Executor Id
bme_meff_marketandorder_bmegate_v1_6.executor_id.display = function(value)
  return "Executor Id: "..value
end

-- Dissect: Executor Id
bme_meff_marketandorder_bmegate_v1_6.executor_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.executor_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.executor_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.executor_id, range, value, display)

  return offset + length, value
end

-- Executor Id 2
bme_meff_marketandorder_bmegate_v1_6.executor_id_2 = {}

-- Size: Executor Id 2
bme_meff_marketandorder_bmegate_v1_6.executor_id_2.size = 4

-- Display: Executor Id 2
bme_meff_marketandorder_bmegate_v1_6.executor_id_2.display = function(value)
  return "Executor Id 2: "..value
end

-- Dissect: Executor Id 2
bme_meff_marketandorder_bmegate_v1_6.executor_id_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.executor_id_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.executor_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.executor_id_2, range, value, display)

  return offset + length, value
end

-- Exercise Style
bme_meff_marketandorder_bmegate_v1_6.exercise_style = {}

-- Size: Exercise Style
bme_meff_marketandorder_bmegate_v1_6.exercise_style.size = 1

-- Display: Exercise Style
bme_meff_marketandorder_bmegate_v1_6.exercise_style.display = function(value)
  if value == "A" then
    return "Exercise Style: American (A)"
  end
  if value == "E" then
    return "Exercise Style: European (E)"
  end
  if value == "V" then
    return "Exercise Style: European Automatic (V)"
  end

  return "Exercise Style: Unknown("..value..")"
end

-- Dissect: Exercise Style
bme_meff_marketandorder_bmegate_v1_6.exercise_style.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.exercise_style.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.exercise_style.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.exercise_style, range, value, display)

  return offset + length, value
end

-- Expected Sequence Number
bme_meff_marketandorder_bmegate_v1_6.expected_sequence_number = {}

-- Size: Expected Sequence Number
bme_meff_marketandorder_bmegate_v1_6.expected_sequence_number.size = 4

-- Display: Expected Sequence Number
bme_meff_marketandorder_bmegate_v1_6.expected_sequence_number.display = function(value)
  return "Expected Sequence Number: "..value
end

-- Dissect: Expected Sequence Number
bme_meff_marketandorder_bmegate_v1_6.expected_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.expected_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.expected_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.expected_sequence_number, range, value, display)

  return offset + length, value
end

-- External Member
bme_meff_marketandorder_bmegate_v1_6.external_member = {}

-- Size: External Member
bme_meff_marketandorder_bmegate_v1_6.external_member.size = 4

-- Display: External Member
bme_meff_marketandorder_bmegate_v1_6.external_member.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "External Member: No Value"
  end

  return "External Member: "..value
end

-- Dissect: External Member
bme_meff_marketandorder_bmegate_v1_6.external_member.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.external_member.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.external_member.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.external_member, range, value, display)

  return offset + length, value
end

-- External Member 2
bme_meff_marketandorder_bmegate_v1_6.external_member_2 = {}

-- Size: External Member 2
bme_meff_marketandorder_bmegate_v1_6.external_member_2.size = 4

-- Display: External Member 2
bme_meff_marketandorder_bmegate_v1_6.external_member_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "External Member 2: No Value"
  end

  return "External Member 2: "..value
end

-- Dissect: External Member 2
bme_meff_marketandorder_bmegate_v1_6.external_member_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.external_member_2.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.external_member_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.external_member_2, range, value, display)

  return offset + length, value
end

-- Family Code
bme_meff_marketandorder_bmegate_v1_6.family_code = {}

-- Size: Family Code
bme_meff_marketandorder_bmegate_v1_6.family_code.size = 5

-- Display: Family Code
bme_meff_marketandorder_bmegate_v1_6.family_code.display = function(value)
  if value == "EIBXO" then
    return "Family Code: Strategies Options Mini Ibex 35 (EIBXO)"
  end
  if value == "ESTCF" then
    return "Family Code: Strategies Single Stock Futures (ESTCF)"
  end
  if value == "ESTCO" then
    return "Family Code: Strategies Single Stock Options (ESTCO)"
  end
  if value == "ESTXX" then
    return "Family Code: Strategies Futures And Swaps Energy (ESTXX)"
  end
  if value == "FBONO" then
    return "Family Code: Bono E 10 Futures Rf (FBONO)"
  end
  if value == "FENGM" then
    return "Family Code: Fut Energy Monthly (FENGM)"
  end
  if value == "FENGQ" then
    return "Family Code: Fut Energy Quarterly (FENGQ)"
  end
  if value == "FENGW" then
    return "Family Code: Fut Energy Weekly (FENGW)"
  end
  if value == "FENGY" then
    return "Family Code: Fut Energy Annual (FENGY)"
  end
  if value == "FEROL" then
    return "Family Code: Rolling Spot Futures On Stocks (FEROL)"
  end
  if value == "FIBX" then
    return "Family Code: Futures Ibex 35 (FIBX)"
  end
  if value == "FIBXC" then
    return "Family Code: Futures Micro Ibex 35 (FIBXC)"
  end
  if value == "FIBXD" then
    return "Family Code: Futures Ibex Impacto Div (FIBXD)"
  end
  if value == "FIBXM" then
    return "Family Code: Futures Mini Ibex 35 (FIBXM)"
  end
  if value == "FIBXS" then
    return "Family Code: Sector Futures Ibex 35 (FIBXS)"
  end
  if value == "FIROL" then
    return "Family Code: Rolling Spot Futures On Indexes (FIROL)"
  end
  if value == "FSTCD" then
    return "Family Code: Futures S Div Acc (FSTCD)"
  end
  if value == "FSTCE" then
    return "Family Code: 25 Stock Dividend Futures (FSTCE)"
  end
  if value == "FSTCK" then
    return "Family Code: Futures S Acciones (FSTCK)"
  end
  if value == "FXRL1" then
    return "Family Code: Rolling Spot Futures On Currencies 1 (FXRL1)"
  end
  if value == "FXRL2" then
    return "Family Code: Rolling Spot Futures On Currencies 2 (FXRL2)"
  end
  if value == "FXRL3" then
    return "Family Code: Rolling Spot Futures On Currencies 3 (FXRL3)"
  end
  if value == "OIBXM" then
    return "Family Code: Options Mini Ibex 35 (OIBXM)"
  end
  if value == "OSTCK" then
    return "Family Code: Single Stock Options (OSTCK)"
  end
  if value == "SENGD" then
    return "Family Code: Swaps Ener Daily (SENGD)"
  end
  if value == "SENGM" then
    return "Family Code: Swaps Ener Monthly (SENGM)"
  end
  if value == "SENGQ" then
    return "Family Code: Swaps Ener Quarterly (SENGQ)"
  end
  if value == "SENGW" then
    return "Family Code: Swaps Ener Weekly (SENGW)"
  end
  if value == "SENGY" then
    return "Family Code: Swaps Ener Annual (SENGY)"
  end
  if value == "TBONO" then
    return "Family Code: Bono E 10 Timespread Rf (TBONO)"
  end
  if value == "TIBX" then
    return "Family Code: Timespread Ibex 35 (TIBX)"
  end
  if value == "TIBXD" then
    return "Family Code: Timespread Ibex Impacto Div (TIBXD)"
  end
  if value == "TIBXM" then
    return "Family Code: Timespread Mini Ibex 35 (TIBXM)"
  end
  if value == "TSTCD" then
    return "Family Code: Timespread On Stock Dividens (TSTCD)"
  end
  if value == "TSTCK" then
    return "Family Code: Timespread Single Stock (TSTCK)"
  end
  if value == "TIBXS" then
    return "Family Code: Time Spread On Ibex Sector (TIBXS)"
  end
  if value == "TIBXC" then
    return "Family Code: Timespread On Micro Ibex 35 (TIBXC)"
  end
  if value == "00001" then
    return "Family Code: Ibex (00001)"
  end
  if value == "00002" then
    return "Family Code: Latibex (00002)"
  end
  if value == "00003" then
    return "Family Code: Ftse (00003)"
  end
  if value == "00004" then
    return "Family Code: Strategies On Stocks (00004)"
  end
  if value == "00005" then
    return "Family Code: Ma B (00005)"
  end
  if value == "00006" then
    return "Family Code: Strategies On Derivatives (00006)"
  end
  if value == "00007" then
    return "Family Code: Fixed Income (00007)"
  end
  if value == "00101" then
    return "Family Code: Barcelona (00101)"
  end
  if value == "00102" then
    return "Family Code: Bilbao (00102)"
  end
  if value == "00103" then
    return "Family Code: Madrid (00103)"
  end
  if value == "00104" then
    return "Family Code: Valencia (00104)"
  end

  return "Family Code: Unknown("..value..")"
end

-- Dissect: Family Code
bme_meff_marketandorder_bmegate_v1_6.family_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.family_code.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.family_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.family_code, range, value, display)

  return offset + length, value
end

-- Firm Mnemonic
bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic = {}

-- Size: Firm Mnemonic
bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic.size = 10

-- Display: Firm Mnemonic
bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Firm Mnemonic: No Value"
  end

  return "Firm Mnemonic: "..value
end

-- Dissect: Firm Mnemonic
bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.firm_mnemonic, range, value, display)

  return offset + length, value
end

-- Firm Mnemonic 2
bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic_2 = {}

-- Size: Firm Mnemonic 2
bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic_2.size = 10

-- Display: Firm Mnemonic 2
bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Firm Mnemonic 2: No Value"
  end

  return "Firm Mnemonic 2: "..value
end

-- Dissect: Firm Mnemonic 2
bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic_2.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.firm_mnemonic_2, range, value, display)

  return offset + length, value
end

-- Fisn
bme_meff_marketandorder_bmegate_v1_6.fisn = {}

-- Size: Fisn
bme_meff_marketandorder_bmegate_v1_6.fisn.size = 35

-- Display: Fisn
bme_meff_marketandorder_bmegate_v1_6.fisn.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fisn: No Value"
  end

  return "Fisn: "..value
end

-- Dissect: Fisn
bme_meff_marketandorder_bmegate_v1_6.fisn.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.fisn.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.fisn.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.fisn, range, value, display)

  return offset + length, value
end

-- Flexible Indicator
bme_meff_marketandorder_bmegate_v1_6.flexible_indicator = {}

-- Size: Flexible Indicator
bme_meff_marketandorder_bmegate_v1_6.flexible_indicator.size = 1

-- Display: Flexible Indicator
bme_meff_marketandorder_bmegate_v1_6.flexible_indicator.display = function(value)
  if value == "Y" then
    return "Flexible Indicator: Flexible (Y)"
  end
  if value == "N" then
    return "Flexible Indicator: Standard (N)"
  end

  return "Flexible Indicator: Unknown("..value..")"
end

-- Dissect: Flexible Indicator
bme_meff_marketandorder_bmegate_v1_6.flexible_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.flexible_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.flexible_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.flexible_indicator, range, value, display)

  return offset + length, value
end

-- Further Sub Product
bme_meff_marketandorder_bmegate_v1_6.further_sub_product = {}

-- Size: Further Sub Product
bme_meff_marketandorder_bmegate_v1_6.further_sub_product.size = 4

-- Display: Further Sub Product
bme_meff_marketandorder_bmegate_v1_6.further_sub_product.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Further Sub Product: No Value"
  end

  return "Further Sub Product: "..value
end

-- Dissect: Further Sub Product
bme_meff_marketandorder_bmegate_v1_6.further_sub_product.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.further_sub_product.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.further_sub_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.further_sub_product, range, value, display)

  return offset + length, value
end

-- Give In Member
bme_meff_marketandorder_bmegate_v1_6.give_in_member = {}

-- Size: Give In Member
bme_meff_marketandorder_bmegate_v1_6.give_in_member.size = 4

-- Display: Give In Member
bme_meff_marketandorder_bmegate_v1_6.give_in_member.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Give In Member: No Value"
  end

  return "Give In Member: "..value
end

-- Dissect: Give In Member
bme_meff_marketandorder_bmegate_v1_6.give_in_member.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.give_in_member.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.give_in_member.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.give_in_member, range, value, display)

  return offset + length, value
end

-- Give In Member 2
bme_meff_marketandorder_bmegate_v1_6.give_in_member_2 = {}

-- Size: Give In Member 2
bme_meff_marketandorder_bmegate_v1_6.give_in_member_2.size = 4

-- Display: Give In Member 2
bme_meff_marketandorder_bmegate_v1_6.give_in_member_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Give In Member 2: No Value"
  end

  return "Give In Member 2: "..value
end

-- Dissect: Give In Member 2
bme_meff_marketandorder_bmegate_v1_6.give_in_member_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.give_in_member_2.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.give_in_member_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.give_in_member_2, range, value, display)

  return offset + length, value
end

-- Gross Trade Amt
bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt = {}

-- Size: Gross Trade Amt
bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.size = 8

-- Display: Gross Trade Amt
bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.display = function(value)
  return "Gross Trade Amt: "..value
end

-- Translate: Gross Trade Amt
bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Gross Trade Amt
bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.gross_trade_amt, range, value, display)

  return offset + length, value
end

-- Heart Bt Int
bme_meff_marketandorder_bmegate_v1_6.heart_bt_int = {}

-- Size: Heart Bt Int
bme_meff_marketandorder_bmegate_v1_6.heart_bt_int.size = 1

-- Display: Heart Bt Int
bme_meff_marketandorder_bmegate_v1_6.heart_bt_int.display = function(value)
  return "Heart Bt Int: "..value
end

-- Dissect: Heart Bt Int
bme_meff_marketandorder_bmegate_v1_6.heart_bt_int.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.heart_bt_int.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.heart_bt_int.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.heart_bt_int, range, value, display)

  return offset + length, value
end

-- High Limit Price
bme_meff_marketandorder_bmegate_v1_6.high_limit_price = {}

-- Size: High Limit Price
bme_meff_marketandorder_bmegate_v1_6.high_limit_price.size = 8

-- Display: High Limit Price
bme_meff_marketandorder_bmegate_v1_6.high_limit_price.display = function(value)
  return "High Limit Price: "..value
end

-- Translate: High Limit Price
bme_meff_marketandorder_bmegate_v1_6.high_limit_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: High Limit Price
bme_meff_marketandorder_bmegate_v1_6.high_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.high_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.high_limit_price.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.high_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.high_limit_price, range, value, display)

  return offset + length, value
end

-- Ioi Price
bme_meff_marketandorder_bmegate_v1_6.ioi_price = {}

-- Size: Ioi Price
bme_meff_marketandorder_bmegate_v1_6.ioi_price.size = 8

-- Display: Ioi Price
bme_meff_marketandorder_bmegate_v1_6.ioi_price.display = function(value)
  return "Ioi Price: "..value
end

-- Translate: Ioi Price
bme_meff_marketandorder_bmegate_v1_6.ioi_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ioi Price
bme_meff_marketandorder_bmegate_v1_6.ioi_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ioi_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.ioi_price.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.ioi_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ioi_price, range, value, display)

  return offset + length, value
end

-- Ioi Qlty Ind
bme_meff_marketandorder_bmegate_v1_6.ioi_qlty_ind = {}

-- Size: Ioi Qlty Ind
bme_meff_marketandorder_bmegate_v1_6.ioi_qlty_ind.size = 1

-- Display: Ioi Qlty Ind
bme_meff_marketandorder_bmegate_v1_6.ioi_qlty_ind.display = function(value)
  if value == "H" then
    return "Ioi Qlty Ind: High Rfq Requested (H)"
  end
  if value == "M" then
    return "Ioi Qlty Ind: Medium Order Requested (M)"
  end

  return "Ioi Qlty Ind: Unknown("..value..")"
end

-- Dissect: Ioi Qlty Ind
bme_meff_marketandorder_bmegate_v1_6.ioi_qlty_ind.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ioi_qlty_ind.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.ioi_qlty_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ioi_qlty_ind, range, value, display)

  return offset + length, value
end

-- Ioi Qty
bme_meff_marketandorder_bmegate_v1_6.ioi_qty = {}

-- Size: Ioi Qty
bme_meff_marketandorder_bmegate_v1_6.ioi_qty.size = 4

-- Display: Ioi Qty
bme_meff_marketandorder_bmegate_v1_6.ioi_qty.display = function(value)
  return "Ioi Qty: "..value
end

-- Dissect: Ioi Qty
bme_meff_marketandorder_bmegate_v1_6.ioi_qty.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ioi_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.ioi_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ioi_qty, range, value, display)

  return offset + length, value
end

-- Ioi Trans Type
bme_meff_marketandorder_bmegate_v1_6.ioi_trans_type = {}

-- Size: Ioi Trans Type
bme_meff_marketandorder_bmegate_v1_6.ioi_trans_type.size = 1

-- Display: Ioi Trans Type
bme_meff_marketandorder_bmegate_v1_6.ioi_trans_type.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.ioi_trans_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ioi_trans_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.ioi_trans_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ioi_trans_type, range, value, display)

  return offset + length, value
end

-- Ioiid
bme_meff_marketandorder_bmegate_v1_6.ioiid = {}

-- Size: Ioiid
bme_meff_marketandorder_bmegate_v1_6.ioiid.size = 4

-- Display: Ioiid
bme_meff_marketandorder_bmegate_v1_6.ioiid.display = function(value)
  return "Ioiid: "..value
end

-- Dissect: Ioiid
bme_meff_marketandorder_bmegate_v1_6.ioiid.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ioiid.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.ioiid.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ioiid, range, value, display)

  return offset + length, value
end

-- Issue Date
bme_meff_marketandorder_bmegate_v1_6.issue_date = {}

-- Size: Issue Date
bme_meff_marketandorder_bmegate_v1_6.issue_date.size = 4

-- Display: Issue Date
bme_meff_marketandorder_bmegate_v1_6.issue_date.display = function(value)
  return string.format("Issue Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Issue Date
bme_meff_marketandorder_bmegate_v1_6.issue_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.issue_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_meff_marketandorder_bmegate_v1_6.issue_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.issue_date, range, value, display)

  return offset + length, value
end

-- Issuer Lei
bme_meff_marketandorder_bmegate_v1_6.issuer_lei = {}

-- Size: Issuer Lei
bme_meff_marketandorder_bmegate_v1_6.issuer_lei.size = 20

-- Display: Issuer Lei
bme_meff_marketandorder_bmegate_v1_6.issuer_lei.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Issuer Lei: No Value"
  end

  return "Issuer Lei: "..value
end

-- Dissect: Issuer Lei
bme_meff_marketandorder_bmegate_v1_6.issuer_lei.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.issuer_lei.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.issuer_lei.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.issuer_lei, range, value, display)

  return offset + length, value
end

-- Last Capacity
bme_meff_marketandorder_bmegate_v1_6.last_capacity = {}

-- Size: Last Capacity
bme_meff_marketandorder_bmegate_v1_6.last_capacity.size = 1

-- Display: Last Capacity
bme_meff_marketandorder_bmegate_v1_6.last_capacity.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.last_capacity.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.last_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.last_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.last_capacity, range, value, display)

  return offset + length, value
end

-- Last Capacity 2
bme_meff_marketandorder_bmegate_v1_6.last_capacity_2 = {}

-- Size: Last Capacity 2
bme_meff_marketandorder_bmegate_v1_6.last_capacity_2.size = 1

-- Display: Last Capacity 2
bme_meff_marketandorder_bmegate_v1_6.last_capacity_2.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.last_capacity_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.last_capacity_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.last_capacity_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.last_capacity_2, range, value, display)

  return offset + length, value
end

-- Last Change Flag B 1
bme_meff_marketandorder_bmegate_v1_6.last_change_flag_b_1 = {}

-- Size: Last Change Flag B 1
bme_meff_marketandorder_bmegate_v1_6.last_change_flag_b_1.size = 1

-- Display: Last Change Flag B 1
bme_meff_marketandorder_bmegate_v1_6.last_change_flag_b_1.display = function(value)
  return "Last Change Flag B 1: "..value
end

-- Dissect: Last Change Flag B 1
bme_meff_marketandorder_bmegate_v1_6.last_change_flag_b_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.last_change_flag_b_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.last_change_flag_b_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.last_change_flag_b_1, range, value, display)

  return offset + length, value
end

-- Last Change Flag F 1
bme_meff_marketandorder_bmegate_v1_6.last_change_flag_f_1 = {}

-- Size: Last Change Flag F 1
bme_meff_marketandorder_bmegate_v1_6.last_change_flag_f_1.size = 1

-- Display: Last Change Flag F 1
bme_meff_marketandorder_bmegate_v1_6.last_change_flag_f_1.display = function(value)
  return "Last Change Flag F 1: "..value
end

-- Dissect: Last Change Flag F 1
bme_meff_marketandorder_bmegate_v1_6.last_change_flag_f_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.last_change_flag_f_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.last_change_flag_f_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.last_change_flag_f_1, range, value, display)

  return offset + length, value
end

-- Last Px
bme_meff_marketandorder_bmegate_v1_6.last_px = {}

-- Size: Last Px
bme_meff_marketandorder_bmegate_v1_6.last_px.size = 8

-- Display: Last Px
bme_meff_marketandorder_bmegate_v1_6.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
bme_meff_marketandorder_bmegate_v1_6.last_px.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Px
bme_meff_marketandorder_bmegate_v1_6.last_px.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.last_px.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Qty
bme_meff_marketandorder_bmegate_v1_6.last_qty = {}

-- Size: Last Qty
bme_meff_marketandorder_bmegate_v1_6.last_qty.size = 4

-- Display: Last Qty
bme_meff_marketandorder_bmegate_v1_6.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
bme_meff_marketandorder_bmegate_v1_6.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.last_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Last Trading Day
bme_meff_marketandorder_bmegate_v1_6.last_trading_day = {}

-- Size: Last Trading Day
bme_meff_marketandorder_bmegate_v1_6.last_trading_day.size = 4

-- Display: Last Trading Day
bme_meff_marketandorder_bmegate_v1_6.last_trading_day.display = function(value)
  return string.format("Last Trading Day: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Last Trading Day
bme_meff_marketandorder_bmegate_v1_6.last_trading_day.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.last_trading_day.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_meff_marketandorder_bmegate_v1_6.last_trading_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.last_trading_day, range, value, display)

  return offset + length, value
end

-- Leg Price 1
bme_meff_marketandorder_bmegate_v1_6.leg_price_1 = {}

-- Size: Leg Price 1
bme_meff_marketandorder_bmegate_v1_6.leg_price_1.size = 8

-- Display: Leg Price 1
bme_meff_marketandorder_bmegate_v1_6.leg_price_1.display = function(value)
  return "Leg Price 1: "..value
end

-- Translate: Leg Price 1
bme_meff_marketandorder_bmegate_v1_6.leg_price_1.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Leg Price 1
bme_meff_marketandorder_bmegate_v1_6.leg_price_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.leg_price_1.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.leg_price_1.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.leg_price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_price_1, range, value, display)

  return offset + length, value
end

-- Leg Price 2
bme_meff_marketandorder_bmegate_v1_6.leg_price_2 = {}

-- Size: Leg Price 2
bme_meff_marketandorder_bmegate_v1_6.leg_price_2.size = 8

-- Display: Leg Price 2
bme_meff_marketandorder_bmegate_v1_6.leg_price_2.display = function(value)
  return "Leg Price 2: "..value
end

-- Translate: Leg Price 2
bme_meff_marketandorder_bmegate_v1_6.leg_price_2.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Leg Price 2
bme_meff_marketandorder_bmegate_v1_6.leg_price_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.leg_price_2.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.leg_price_2.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.leg_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_price_2, range, value, display)

  return offset + length, value
end

-- Leg Price 3
bme_meff_marketandorder_bmegate_v1_6.leg_price_3 = {}

-- Size: Leg Price 3
bme_meff_marketandorder_bmegate_v1_6.leg_price_3.size = 8

-- Display: Leg Price 3
bme_meff_marketandorder_bmegate_v1_6.leg_price_3.display = function(value)
  return "Leg Price 3: "..value
end

-- Translate: Leg Price 3
bme_meff_marketandorder_bmegate_v1_6.leg_price_3.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Leg Price 3
bme_meff_marketandorder_bmegate_v1_6.leg_price_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.leg_price_3.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.leg_price_3.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.leg_price_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_price_3, range, value, display)

  return offset + length, value
end

-- Leg Price 4
bme_meff_marketandorder_bmegate_v1_6.leg_price_4 = {}

-- Size: Leg Price 4
bme_meff_marketandorder_bmegate_v1_6.leg_price_4.size = 8

-- Display: Leg Price 4
bme_meff_marketandorder_bmegate_v1_6.leg_price_4.display = function(value)
  return "Leg Price 4: "..value
end

-- Translate: Leg Price 4
bme_meff_marketandorder_bmegate_v1_6.leg_price_4.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Leg Price 4
bme_meff_marketandorder_bmegate_v1_6.leg_price_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.leg_price_4.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.leg_price_4.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.leg_price_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_price_4, range, value, display)

  return offset + length, value
end

-- Leg Price 5
bme_meff_marketandorder_bmegate_v1_6.leg_price_5 = {}

-- Size: Leg Price 5
bme_meff_marketandorder_bmegate_v1_6.leg_price_5.size = 8

-- Display: Leg Price 5
bme_meff_marketandorder_bmegate_v1_6.leg_price_5.display = function(value)
  return "Leg Price 5: "..value
end

-- Translate: Leg Price 5
bme_meff_marketandorder_bmegate_v1_6.leg_price_5.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Leg Price 5
bme_meff_marketandorder_bmegate_v1_6.leg_price_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.leg_price_5.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.leg_price_5.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.leg_price_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_price_5, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty 1
bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_1 = {}

-- Size: Leg Ratio Qty 1
bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_1.size = 4

-- Display: Leg Ratio Qty 1
bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_1.display = function(value)
  return "Leg Ratio Qty 1: "..value
end

-- Dissect: Leg Ratio Qty 1
bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_ratio_qty_1, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty 2
bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_2 = {}

-- Size: Leg Ratio Qty 2
bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_2.size = 4

-- Display: Leg Ratio Qty 2
bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_2.display = function(value)
  return "Leg Ratio Qty 2: "..value
end

-- Dissect: Leg Ratio Qty 2
bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_ratio_qty_2, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty 3
bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_3 = {}

-- Size: Leg Ratio Qty 3
bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_3.size = 4

-- Display: Leg Ratio Qty 3
bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_3.display = function(value)
  return "Leg Ratio Qty 3: "..value
end

-- Dissect: Leg Ratio Qty 3
bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_3.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_ratio_qty_3, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty 4
bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_4 = {}

-- Size: Leg Ratio Qty 4
bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_4.size = 4

-- Display: Leg Ratio Qty 4
bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_4.display = function(value)
  return "Leg Ratio Qty 4: "..value
end

-- Dissect: Leg Ratio Qty 4
bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_ratio_qty_4, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty 5
bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_5 = {}

-- Size: Leg Ratio Qty 5
bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_5.size = 4

-- Display: Leg Ratio Qty 5
bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_5.display = function(value)
  return "Leg Ratio Qty 5: "..value
end

-- Dissect: Leg Ratio Qty 5
bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_5.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_ratio_qty_5, range, value, display)

  return offset + length, value
end

-- Leg Side 1
bme_meff_marketandorder_bmegate_v1_6.leg_side_1 = {}

-- Size: Leg Side 1
bme_meff_marketandorder_bmegate_v1_6.leg_side_1.size = 1

-- Display: Leg Side 1
bme_meff_marketandorder_bmegate_v1_6.leg_side_1.display = function(value)
  if value == "1" then
    return "Leg Side 1: Buy (1)"
  end
  if value == "2" then
    return "Leg Side 1: Sell (2)"
  end

  return "Leg Side 1: Unknown("..value..")"
end

-- Dissect: Leg Side 1
bme_meff_marketandorder_bmegate_v1_6.leg_side_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.leg_side_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.leg_side_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_side_1, range, value, display)

  return offset + length, value
end

-- Leg Side 2
bme_meff_marketandorder_bmegate_v1_6.leg_side_2 = {}

-- Size: Leg Side 2
bme_meff_marketandorder_bmegate_v1_6.leg_side_2.size = 1

-- Display: Leg Side 2
bme_meff_marketandorder_bmegate_v1_6.leg_side_2.display = function(value)
  if value == "1" then
    return "Leg Side 2: Buy (1)"
  end
  if value == "2" then
    return "Leg Side 2: Sell (2)"
  end

  return "Leg Side 2: Unknown("..value..")"
end

-- Dissect: Leg Side 2
bme_meff_marketandorder_bmegate_v1_6.leg_side_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.leg_side_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.leg_side_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_side_2, range, value, display)

  return offset + length, value
end

-- Leg Side 3
bme_meff_marketandorder_bmegate_v1_6.leg_side_3 = {}

-- Size: Leg Side 3
bme_meff_marketandorder_bmegate_v1_6.leg_side_3.size = 1

-- Display: Leg Side 3
bme_meff_marketandorder_bmegate_v1_6.leg_side_3.display = function(value)
  if value == "1" then
    return "Leg Side 3: Buy (1)"
  end
  if value == "2" then
    return "Leg Side 3: Sell (2)"
  end

  return "Leg Side 3: Unknown("..value..")"
end

-- Dissect: Leg Side 3
bme_meff_marketandorder_bmegate_v1_6.leg_side_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.leg_side_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.leg_side_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_side_3, range, value, display)

  return offset + length, value
end

-- Leg Side 4
bme_meff_marketandorder_bmegate_v1_6.leg_side_4 = {}

-- Size: Leg Side 4
bme_meff_marketandorder_bmegate_v1_6.leg_side_4.size = 1

-- Display: Leg Side 4
bme_meff_marketandorder_bmegate_v1_6.leg_side_4.display = function(value)
  if value == "1" then
    return "Leg Side 4: Buy (1)"
  end
  if value == "2" then
    return "Leg Side 4: Sell (2)"
  end

  return "Leg Side 4: Unknown("..value..")"
end

-- Dissect: Leg Side 4
bme_meff_marketandorder_bmegate_v1_6.leg_side_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.leg_side_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.leg_side_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_side_4, range, value, display)

  return offset + length, value
end

-- Leg Side 5
bme_meff_marketandorder_bmegate_v1_6.leg_side_5 = {}

-- Size: Leg Side 5
bme_meff_marketandorder_bmegate_v1_6.leg_side_5.size = 1

-- Display: Leg Side 5
bme_meff_marketandorder_bmegate_v1_6.leg_side_5.display = function(value)
  if value == "1" then
    return "Leg Side 5: Buy (1)"
  end
  if value == "2" then
    return "Leg Side 5: Sell (2)"
  end

  return "Leg Side 5: Unknown("..value..")"
end

-- Dissect: Leg Side 5
bme_meff_marketandorder_bmegate_v1_6.leg_side_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.leg_side_5.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.leg_side_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_side_5, range, value, display)

  return offset + length, value
end

-- Leg Symbol 1
bme_meff_marketandorder_bmegate_v1_6.leg_symbol_1 = {}

-- Size: Leg Symbol 1
bme_meff_marketandorder_bmegate_v1_6.leg_symbol_1.size = 22

-- Display: Leg Symbol 1
bme_meff_marketandorder_bmegate_v1_6.leg_symbol_1.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Symbol 1: No Value"
  end

  return "Leg Symbol 1: "..value
end

-- Dissect: Leg Symbol 1
bme_meff_marketandorder_bmegate_v1_6.leg_symbol_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.leg_symbol_1.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.leg_symbol_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_symbol_1, range, value, display)

  return offset + length, value
end

-- Leg Symbol 2
bme_meff_marketandorder_bmegate_v1_6.leg_symbol_2 = {}

-- Size: Leg Symbol 2
bme_meff_marketandorder_bmegate_v1_6.leg_symbol_2.size = 22

-- Display: Leg Symbol 2
bme_meff_marketandorder_bmegate_v1_6.leg_symbol_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Symbol 2: No Value"
  end

  return "Leg Symbol 2: "..value
end

-- Dissect: Leg Symbol 2
bme_meff_marketandorder_bmegate_v1_6.leg_symbol_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.leg_symbol_2.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.leg_symbol_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_symbol_2, range, value, display)

  return offset + length, value
end

-- Leg Symbol 3
bme_meff_marketandorder_bmegate_v1_6.leg_symbol_3 = {}

-- Size: Leg Symbol 3
bme_meff_marketandorder_bmegate_v1_6.leg_symbol_3.size = 22

-- Display: Leg Symbol 3
bme_meff_marketandorder_bmegate_v1_6.leg_symbol_3.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Symbol 3: No Value"
  end

  return "Leg Symbol 3: "..value
end

-- Dissect: Leg Symbol 3
bme_meff_marketandorder_bmegate_v1_6.leg_symbol_3.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.leg_symbol_3.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.leg_symbol_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_symbol_3, range, value, display)

  return offset + length, value
end

-- Leg Symbol 4
bme_meff_marketandorder_bmegate_v1_6.leg_symbol_4 = {}

-- Size: Leg Symbol 4
bme_meff_marketandorder_bmegate_v1_6.leg_symbol_4.size = 22

-- Display: Leg Symbol 4
bme_meff_marketandorder_bmegate_v1_6.leg_symbol_4.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Symbol 4: No Value"
  end

  return "Leg Symbol 4: "..value
end

-- Dissect: Leg Symbol 4
bme_meff_marketandorder_bmegate_v1_6.leg_symbol_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.leg_symbol_4.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.leg_symbol_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_symbol_4, range, value, display)

  return offset + length, value
end

-- Leg Symbol 5
bme_meff_marketandorder_bmegate_v1_6.leg_symbol_5 = {}

-- Size: Leg Symbol 5
bme_meff_marketandorder_bmegate_v1_6.leg_symbol_5.size = 22

-- Display: Leg Symbol 5
bme_meff_marketandorder_bmegate_v1_6.leg_symbol_5.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Symbol 5: No Value"
  end

  return "Leg Symbol 5: "..value
end

-- Dissect: Leg Symbol 5
bme_meff_marketandorder_bmegate_v1_6.leg_symbol_5.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.leg_symbol_5.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.leg_symbol_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.leg_symbol_5, range, value, display)

  return offset + length, value
end

-- Li Spost
bme_meff_marketandorder_bmegate_v1_6.li_spost = {}

-- Size: Li Spost
bme_meff_marketandorder_bmegate_v1_6.li_spost.size = 8

-- Display: Li Spost
bme_meff_marketandorder_bmegate_v1_6.li_spost.display = function(value)
  return "Li Spost: "..value
end

-- Translate: Li Spost
bme_meff_marketandorder_bmegate_v1_6.li_spost.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Li Spost
bme_meff_marketandorder_bmegate_v1_6.li_spost.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.li_spost.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.li_spost.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.li_spost.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.li_spost, range, value, display)

  return offset + length, value
end

-- Li Spre
bme_meff_marketandorder_bmegate_v1_6.li_spre = {}

-- Size: Li Spre
bme_meff_marketandorder_bmegate_v1_6.li_spre.size = 8

-- Display: Li Spre
bme_meff_marketandorder_bmegate_v1_6.li_spre.display = function(value)
  return "Li Spre: "..value
end

-- Translate: Li Spre
bme_meff_marketandorder_bmegate_v1_6.li_spre.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Li Spre
bme_meff_marketandorder_bmegate_v1_6.li_spre.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.li_spre.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.li_spre.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.li_spre.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.li_spre, range, value, display)

  return offset + length, value
end

-- Liquid Instrument
bme_meff_marketandorder_bmegate_v1_6.liquid_instrument = {}

-- Size: Liquid Instrument
bme_meff_marketandorder_bmegate_v1_6.liquid_instrument.size = 1

-- Display: Liquid Instrument
bme_meff_marketandorder_bmegate_v1_6.liquid_instrument.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.liquid_instrument.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.liquid_instrument.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.liquid_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.liquid_instrument, range, value, display)

  return offset + length, value
end

-- Liquidity Provision Activity
bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity = {}

-- Size: Liquidity Provision Activity
bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity.size = 1

-- Display: Liquidity Provision Activity
bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity.display = function(value)
  if value == 0 then
    return "Liquidity Provision Activity: False (0)"
  end
  if value == 1 then
    return "Liquidity Provision Activity: True (1)"
  end
  if value == 255 then
    return "Liquidity Provision Activity: Undefined (255)"
  end

  return "Liquidity Provision Activity: Unknown("..value..")"
end

-- Dissect: Liquidity Provision Activity
bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.liquidity_provision_activity, range, value, display)

  return offset + length, value
end

-- Liquidity Provision Activity 2
bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity_2 = {}

-- Size: Liquidity Provision Activity 2
bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity_2.size = 1

-- Display: Liquidity Provision Activity 2
bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity_2.display = function(value)
  if value == 0 then
    return "Liquidity Provision Activity 2: False (0)"
  end
  if value == 1 then
    return "Liquidity Provision Activity 2: True (1)"
  end
  if value == 255 then
    return "Liquidity Provision Activity 2: Undefined (255)"
  end

  return "Liquidity Provision Activity 2: Unknown("..value..")"
end

-- Dissect: Liquidity Provision Activity 2
bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.liquidity_provision_activity_2, range, value, display)

  return offset + length, value
end

-- Logout Reason
bme_meff_marketandorder_bmegate_v1_6.logout_reason = {}

-- Size: Logout Reason
bme_meff_marketandorder_bmegate_v1_6.logout_reason.size = 1

-- Display: Logout Reason
bme_meff_marketandorder_bmegate_v1_6.logout_reason.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.logout_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Low Limit Price
bme_meff_marketandorder_bmegate_v1_6.low_limit_price = {}

-- Size: Low Limit Price
bme_meff_marketandorder_bmegate_v1_6.low_limit_price.size = 8

-- Display: Low Limit Price
bme_meff_marketandorder_bmegate_v1_6.low_limit_price.display = function(value)
  return "Low Limit Price: "..value
end

-- Translate: Low Limit Price
bme_meff_marketandorder_bmegate_v1_6.low_limit_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Low Limit Price
bme_meff_marketandorder_bmegate_v1_6.low_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.low_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.low_limit_price.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.low_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.low_limit_price, range, value, display)

  return offset + length, value
end

-- Market Id
bme_meff_marketandorder_bmegate_v1_6.market_id = {}

-- Size: Market Id
bme_meff_marketandorder_bmegate_v1_6.market_id.size = 4

-- Display: Market Id
bme_meff_marketandorder_bmegate_v1_6.market_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Market Id: No Value"
  end

  return "Market Id: "..value
end

-- Dissect: Market Id
bme_meff_marketandorder_bmegate_v1_6.market_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.market_id.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Mechanism
bme_meff_marketandorder_bmegate_v1_6.market_mechanism = {}

-- Size: Market Mechanism
bme_meff_marketandorder_bmegate_v1_6.market_mechanism.size = 1

-- Display: Market Mechanism
bme_meff_marketandorder_bmegate_v1_6.market_mechanism.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.market_mechanism.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.market_mechanism.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.market_mechanism.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.market_mechanism, range, value, display)

  return offset + length, value
end

-- Market Segment Id
bme_meff_marketandorder_bmegate_v1_6.market_segment_id = {}

-- Size: Market Segment Id
bme_meff_marketandorder_bmegate_v1_6.market_segment_id.size = 4

-- Display: Market Segment Id
bme_meff_marketandorder_bmegate_v1_6.market_segment_id.display = function(value)
  if value == "XMRV" then
    return "Market Segment Id: Meff Financial Derivatives (XMRV)"
  end
  if value == "XMPW" then
    return "Market Segment Id: Meff Energy Derivatives (XMPW)"
  end
  if value == "XMFX" then
    return "Market Segment Id: Meff Fx Financial Derivatives (XMFX)"
  end

  return "Market Segment Id: Unknown("..value..")"
end

-- Dissect: Market Segment Id
bme_meff_marketandorder_bmegate_v1_6.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.market_segment_id.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Mass Cancel Reject Reason
bme_meff_marketandorder_bmegate_v1_6.mass_cancel_reject_reason = {}

-- Size: Mass Cancel Reject Reason
bme_meff_marketandorder_bmegate_v1_6.mass_cancel_reject_reason.size = 1

-- Display: Mass Cancel Reject Reason
bme_meff_marketandorder_bmegate_v1_6.mass_cancel_reject_reason.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.mass_cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.mass_cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.mass_cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.mass_cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Maturity Date
bme_meff_marketandorder_bmegate_v1_6.maturity_date = {}

-- Size: Maturity Date
bme_meff_marketandorder_bmegate_v1_6.maturity_date.size = 4

-- Display: Maturity Date
bme_meff_marketandorder_bmegate_v1_6.maturity_date.display = function(value)
  return string.format("Maturity Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Maturity Date
bme_meff_marketandorder_bmegate_v1_6.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_meff_marketandorder_bmegate_v1_6.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Maturity Month Year
bme_meff_marketandorder_bmegate_v1_6.maturity_month_year = {}

-- Size: Maturity Month Year
bme_meff_marketandorder_bmegate_v1_6.maturity_month_year.size = 8

-- Display: Maturity Month Year
bme_meff_marketandorder_bmegate_v1_6.maturity_month_year.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Maturity Month Year: No Value"
  end

  return "Maturity Month Year: "..value
end

-- Dissect: Maturity Month Year
bme_meff_marketandorder_bmegate_v1_6.maturity_month_year.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.maturity_month_year.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.maturity_month_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.maturity_month_year, range, value, display)

  return offset + length, value
end

-- Maturity Month Year Increment
bme_meff_marketandorder_bmegate_v1_6.maturity_month_year_increment = {}

-- Size: Maturity Month Year Increment
bme_meff_marketandorder_bmegate_v1_6.maturity_month_year_increment.size = 1

-- Display: Maturity Month Year Increment
bme_meff_marketandorder_bmegate_v1_6.maturity_month_year_increment.display = function(value)
  return "Maturity Month Year Increment: "..value
end

-- Dissect: Maturity Month Year Increment
bme_meff_marketandorder_bmegate_v1_6.maturity_month_year_increment.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.maturity_month_year_increment.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.maturity_month_year_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.maturity_month_year_increment, range, value, display)

  return offset + length, value
end

-- Maturity Month Year Increment Units
bme_meff_marketandorder_bmegate_v1_6.maturity_month_year_increment_units = {}

-- Size: Maturity Month Year Increment Units
bme_meff_marketandorder_bmegate_v1_6.maturity_month_year_increment_units.size = 1

-- Display: Maturity Month Year Increment Units
bme_meff_marketandorder_bmegate_v1_6.maturity_month_year_increment_units.display = function(value)
  if value == "0" then
    return "Maturity Month Year Increment Units: Months (0)"
  end
  if value == "1" then
    return "Maturity Month Year Increment Units: Days (1)"
  end
  if value == "2" then
    return "Maturity Month Year Increment Units: Weeks (2)"
  end
  if value == "3" then
    return "Maturity Month Year Increment Units: Years (3)"
  end

  return "Maturity Month Year Increment Units: Unknown("..value..")"
end

-- Dissect: Maturity Month Year Increment Units
bme_meff_marketandorder_bmegate_v1_6.maturity_month_year_increment_units.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.maturity_month_year_increment_units.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.maturity_month_year_increment_units.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.maturity_month_year_increment_units, range, value, display)

  return offset + length, value
end

-- Maximum Order Size
bme_meff_marketandorder_bmegate_v1_6.maximum_order_size = {}

-- Size: Maximum Order Size
bme_meff_marketandorder_bmegate_v1_6.maximum_order_size.size = 8

-- Display: Maximum Order Size
bme_meff_marketandorder_bmegate_v1_6.maximum_order_size.display = function(value)
  return "Maximum Order Size: "..value
end

-- Translate: Maximum Order Size
bme_meff_marketandorder_bmegate_v1_6.maximum_order_size.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Maximum Order Size
bme_meff_marketandorder_bmegate_v1_6.maximum_order_size.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.maximum_order_size.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.maximum_order_size.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.maximum_order_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.maximum_order_size, range, value, display)

  return offset + length, value
end

-- Member
bme_meff_marketandorder_bmegate_v1_6.member = {}

-- Size: Member
bme_meff_marketandorder_bmegate_v1_6.member.size = 4

-- Display: Member
bme_meff_marketandorder_bmegate_v1_6.member.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Member: No Value"
  end

  return "Member: "..value
end

-- Dissect: Member
bme_meff_marketandorder_bmegate_v1_6.member.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.member.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.member.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.member, range, value, display)

  return offset + length, value
end

-- Member 2
bme_meff_marketandorder_bmegate_v1_6.member_2 = {}

-- Size: Member 2
bme_meff_marketandorder_bmegate_v1_6.member_2.size = 4

-- Display: Member 2
bme_meff_marketandorder_bmegate_v1_6.member_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Member 2: No Value"
  end

  return "Member 2: "..value
end

-- Dissect: Member 2
bme_meff_marketandorder_bmegate_v1_6.member_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.member_2.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.member_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.member_2, range, value, display)

  return offset + length, value
end

-- Message Size
bme_meff_marketandorder_bmegate_v1_6.message_size = {}

-- Size: Message Size
bme_meff_marketandorder_bmegate_v1_6.message_size.size = 2

-- Display: Message Size
bme_meff_marketandorder_bmegate_v1_6.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
bme_meff_marketandorder_bmegate_v1_6.message_size.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
bme_meff_marketandorder_bmegate_v1_6.message_type = {}

-- Size: Message Type
bme_meff_marketandorder_bmegate_v1_6.message_type.size = 1

-- Display: Message Type
bme_meff_marketandorder_bmegate_v1_6.message_type.display = function(value)
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
  if value == 0x89 then
    return "Message Type: Family Status Message (0x89)"
  end
  if value == 0x81 then
    return "Message Type: Order Book Clear Message (0x81)"
  end
  if value == 0x03 then
    return "Message Type: Order Market Pre Transparency Information Message (0x03)"
  end
  if value == 0x07 then
    return "Message Type: Quote Market Pre Transparency Information Message (0x07)"
  end
  if value == 0x01 then
    return "Message Type: Order Cancellation Market Member Message (0x01)"
  end
  if value == 0x05 then
    return "Message Type: Quote Cancellation Market Member Message (0x05)"
  end
  if value == 0x10 then
    return "Message Type: Trade Market Post Transparency Information Topofbook Message (0x10)"
  end
  if value == 0x18 then
    return "Message Type: Trade Trade Amendment Or Cancellation Message (0x18)"
  end
  if value == 0x11 then
    return "Message Type: Trade Market Post Transparency Information Full Depth Message (0x11)"
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
  if value == 0x6F then
    return "Message Type: Order And Quote Client Data Message (0x6F)"
  end
  if value == 0x86 then
    return "Message Type: Delta Protection Parameters Message (0x86)"
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
  if value == 0x88 then
    return "Message Type: Delta Protection Parameters Ack Nack Message (0x88)"
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
  if value == 0x13 then
    return "Message Type: Execution Private Information 1 Leg Buy Market Order Message (0x13)"
  end
  if value == 0x15 then
    return "Message Type: Execution Private Information 1 Leg Sell Market Order Message (0x15)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
bme_meff_marketandorder_bmegate_v1_6.message_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mid Buy Price
bme_meff_marketandorder_bmegate_v1_6.mid_buy_price = {}

-- Size: Mid Buy Price
bme_meff_marketandorder_bmegate_v1_6.mid_buy_price.size = 8

-- Display: Mid Buy Price
bme_meff_marketandorder_bmegate_v1_6.mid_buy_price.display = function(value)
  return "Mid Buy Price: "..value
end

-- Translate: Mid Buy Price
bme_meff_marketandorder_bmegate_v1_6.mid_buy_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Mid Buy Price
bme_meff_marketandorder_bmegate_v1_6.mid_buy_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.mid_buy_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.mid_buy_price.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.mid_buy_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.mid_buy_price, range, value, display)

  return offset + length, value
end

-- Mid Buy Volume
bme_meff_marketandorder_bmegate_v1_6.mid_buy_volume = {}

-- Size: Mid Buy Volume
bme_meff_marketandorder_bmegate_v1_6.mid_buy_volume.size = 4

-- Display: Mid Buy Volume
bme_meff_marketandorder_bmegate_v1_6.mid_buy_volume.display = function(value)
  return "Mid Buy Volume: "..value
end

-- Dissect: Mid Buy Volume
bme_meff_marketandorder_bmegate_v1_6.mid_buy_volume.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.mid_buy_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.mid_buy_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.mid_buy_volume, range, value, display)

  return offset + length, value
end

-- Mid Sell Price
bme_meff_marketandorder_bmegate_v1_6.mid_sell_price = {}

-- Size: Mid Sell Price
bme_meff_marketandorder_bmegate_v1_6.mid_sell_price.size = 8

-- Display: Mid Sell Price
bme_meff_marketandorder_bmegate_v1_6.mid_sell_price.display = function(value)
  return "Mid Sell Price: "..value
end

-- Translate: Mid Sell Price
bme_meff_marketandorder_bmegate_v1_6.mid_sell_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Mid Sell Price
bme_meff_marketandorder_bmegate_v1_6.mid_sell_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.mid_sell_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.mid_sell_price.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.mid_sell_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.mid_sell_price, range, value, display)

  return offset + length, value
end

-- Mid Sell Volume
bme_meff_marketandorder_bmegate_v1_6.mid_sell_volume = {}

-- Size: Mid Sell Volume
bme_meff_marketandorder_bmegate_v1_6.mid_sell_volume.size = 4

-- Display: Mid Sell Volume
bme_meff_marketandorder_bmegate_v1_6.mid_sell_volume.display = function(value)
  return "Mid Sell Volume: "..value
end

-- Dissect: Mid Sell Volume
bme_meff_marketandorder_bmegate_v1_6.mid_sell_volume.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.mid_sell_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.mid_sell_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.mid_sell_volume, range, value, display)

  return offset + length, value
end

-- Min Price Increment
bme_meff_marketandorder_bmegate_v1_6.min_price_increment = {}

-- Size: Min Price Increment
bme_meff_marketandorder_bmegate_v1_6.min_price_increment.size = 8

-- Display: Min Price Increment
bme_meff_marketandorder_bmegate_v1_6.min_price_increment.display = function(value)
  return "Min Price Increment: "..value
end

-- Translate: Min Price Increment
bme_meff_marketandorder_bmegate_v1_6.min_price_increment.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Min Price Increment
bme_meff_marketandorder_bmegate_v1_6.min_price_increment.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.min_price_increment.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.min_price_increment.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.min_price_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.min_price_increment, range, value, display)

  return offset + length, value
end

-- Min Trade Vol
bme_meff_marketandorder_bmegate_v1_6.min_trade_vol = {}

-- Size: Min Trade Vol
bme_meff_marketandorder_bmegate_v1_6.min_trade_vol.size = 4

-- Display: Min Trade Vol
bme_meff_marketandorder_bmegate_v1_6.min_trade_vol.display = function(value)
  return "Min Trade Vol: "..value
end

-- Dissect: Min Trade Vol
bme_meff_marketandorder_bmegate_v1_6.min_trade_vol.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.min_trade_vol.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.min_trade_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.min_trade_vol, range, value, display)

  return offset + length, value
end

-- Modality Mask B 4
bme_meff_marketandorder_bmegate_v1_6.modality_mask_b_4 = {}

-- Size: Modality Mask B 4
bme_meff_marketandorder_bmegate_v1_6.modality_mask_b_4.size = 4

-- Display: Modality Mask B 4
bme_meff_marketandorder_bmegate_v1_6.modality_mask_b_4.display = function(value)
  return "Modality Mask B 4: "..value
end

-- Dissect: Modality Mask B 4
bme_meff_marketandorder_bmegate_v1_6.modality_mask_b_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.modality_mask_b_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.modality_mask_b_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.modality_mask_b_4, range, value, display)

  return offset + length, value
end

-- Msg Rejected Reference
bme_meff_marketandorder_bmegate_v1_6.msg_rejected_reference = {}

-- Size: Msg Rejected Reference
bme_meff_marketandorder_bmegate_v1_6.msg_rejected_reference.size = 7

-- Display: Msg Rejected Reference
bme_meff_marketandorder_bmegate_v1_6.msg_rejected_reference.display = function(value)
  return "Msg Rejected Reference: "..value
end

-- Dissect: Msg Rejected Reference
bme_meff_marketandorder_bmegate_v1_6.msg_rejected_reference.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.msg_rejected_reference.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bme_meff_marketandorder_bmegate_v1_6.msg_rejected_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.msg_rejected_reference, range, value, display)

  return offset + length, value
end

-- Network Status Value
bme_meff_marketandorder_bmegate_v1_6.network_status_value = {}

-- Size: Network Status Value
bme_meff_marketandorder_bmegate_v1_6.network_status_value.size = 1

-- Display: Network Status Value
bme_meff_marketandorder_bmegate_v1_6.network_status_value.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.network_status_value.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.network_status_value.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.network_status_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.network_status_value, range, value, display)

  return offset + length, value
end

-- News Text
bme_meff_marketandorder_bmegate_v1_6.news_text = {}

-- Size: News Text
bme_meff_marketandorder_bmegate_v1_6.news_text.size = 78

-- Display: News Text
bme_meff_marketandorder_bmegate_v1_6.news_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "News Text: No Value"
  end

  return "News Text: "..value
end

-- Dissect: News Text
bme_meff_marketandorder_bmegate_v1_6.news_text.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.news_text.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.news_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.news_text, range, value, display)

  return offset + length, value
end

-- Non Availability Reason
bme_meff_marketandorder_bmegate_v1_6.non_availability_reason = {}

-- Size: Non Availability Reason
bme_meff_marketandorder_bmegate_v1_6.non_availability_reason.size = 1

-- Display: Non Availability Reason
bme_meff_marketandorder_bmegate_v1_6.non_availability_reason.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.non_availability_reason.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.non_availability_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.non_availability_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.non_availability_reason, range, value, display)

  return offset + length, value
end

-- Number Of Decimals
bme_meff_marketandorder_bmegate_v1_6.number_of_decimals = {}

-- Size: Number Of Decimals
bme_meff_marketandorder_bmegate_v1_6.number_of_decimals.size = 1

-- Display: Number Of Decimals
bme_meff_marketandorder_bmegate_v1_6.number_of_decimals.display = function(value)
  return "Number Of Decimals: "..value
end

-- Dissect: Number Of Decimals
bme_meff_marketandorder_bmegate_v1_6.number_of_decimals.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.number_of_decimals.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.number_of_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.number_of_decimals, range, value, display)

  return offset + length, value
end

-- Opt Attribute
bme_meff_marketandorder_bmegate_v1_6.opt_attribute = {}

-- Size: Opt Attribute
bme_meff_marketandorder_bmegate_v1_6.opt_attribute.size = 1

-- Display: Opt Attribute
bme_meff_marketandorder_bmegate_v1_6.opt_attribute.display = function(value)
  return "Opt Attribute: "..value
end

-- Dissect: Opt Attribute
bme_meff_marketandorder_bmegate_v1_6.opt_attribute.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.opt_attribute.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.opt_attribute.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.opt_attribute, range, value, display)

  return offset + length, value
end

-- Ord Rej Reason
bme_meff_marketandorder_bmegate_v1_6.ord_rej_reason = {}

-- Size: Ord Rej Reason
bme_meff_marketandorder_bmegate_v1_6.ord_rej_reason.size = 1

-- Display: Ord Rej Reason
bme_meff_marketandorder_bmegate_v1_6.ord_rej_reason.display = function(value)
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
  if value == "B" then
    return "Ord Rej Reason: Price Filters (B)"
  end
  if value == "C" then
    return "Ord Rej Reason: Volume Filters (C)"
  end
  if value == "D" then
    return "Ord Rej Reason: Clearing Member Status (D)"
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
  if value == "I" then
    return "Ord Rej Reason: Delta Protection Number Of Contracts (I)"
  end
  if value == "J" then
    return "Ord Rej Reason: Delta Protection Maximum Absolute Delta (J)"
  end
  if value == "K" then
    return "Ord Rej Reason: Delta Protection Máximum Accumulate Delta (K)"
  end
  if value == "O" then
    return "Ord Rej Reason: By Volatility Auction Filters (O)"
  end
  if value == "Q" then
    return "Ord Rej Reason: Quote Cancelled By Substitution (Q)"
  end
  if value == "W" then
    return "Ord Rej Reason: Not Prices For Processing The Order (W)"
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
  if value == "e" then
    return "Ord Rej Reason: Order Rejected For Triggering Auction (e)"
  end
  if value == "g" then
    return "Ord Rej Reason: Incorrect Price Or Triggered Price (g)"
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
  if value == "l" then
    return "Ord Rej Reason: By Intraday Futures Trading Limit (l)"
  end
  if value == "m" then
    return "Ord Rej Reason: Kill Button (m)"
  end
  if value == "n" then
    return "Ord Rej Reason: By Hft Filter Limit Maximum Number Of Contracts Matched (n)"
  end
  if value == "o" then
    return "Ord Rej Reason: By Selfmatch Prevention (o)"
  end
  if value == "p" then
    return "Ord Rej Reason: Auction Price Order Cancelled At The End Of The Auction (p)"
  end
  if value == "x" then
    return "Ord Rej Reason: Invalid Ork Fields (x)"
  end

  return "Ord Rej Reason: Unknown("..value..")"
end

-- Dissect: Ord Rej Reason
bme_meff_marketandorder_bmegate_v1_6.ord_rej_reason.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ord_rej_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.ord_rej_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ord_rej_reason, range, value, display)

  return offset + length, value
end

-- Ord Rej Reason 2
bme_meff_marketandorder_bmegate_v1_6.ord_rej_reason_2 = {}

-- Size: Ord Rej Reason 2
bme_meff_marketandorder_bmegate_v1_6.ord_rej_reason_2.size = 1

-- Display: Ord Rej Reason 2
bme_meff_marketandorder_bmegate_v1_6.ord_rej_reason_2.display = function(value)
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
  if value == "B" then
    return "Ord Rej Reason 2: Price Filters (B)"
  end
  if value == "C" then
    return "Ord Rej Reason 2: Volume Filters (C)"
  end
  if value == "D" then
    return "Ord Rej Reason 2: Clearing Member Status (D)"
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
  if value == "I" then
    return "Ord Rej Reason 2: Delta Protection Number Of Contracts (I)"
  end
  if value == "J" then
    return "Ord Rej Reason 2: Delta Protection Maximum Absolute Delta (J)"
  end
  if value == "K" then
    return "Ord Rej Reason 2: Delta Protection Máximum Accumulate Delta (K)"
  end
  if value == "O" then
    return "Ord Rej Reason 2: By Volatility Auction Filters (O)"
  end
  if value == "Q" then
    return "Ord Rej Reason 2: Quote Cancelled By Substitution (Q)"
  end
  if value == "W" then
    return "Ord Rej Reason 2: Not Prices For Processing The Order (W)"
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
  if value == "e" then
    return "Ord Rej Reason 2: Order Rejected For Triggering Auction (e)"
  end
  if value == "g" then
    return "Ord Rej Reason 2: Incorrect Price Or Triggered Price (g)"
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
  if value == "l" then
    return "Ord Rej Reason 2: By Intraday Futures Trading Limit (l)"
  end
  if value == "m" then
    return "Ord Rej Reason 2: Kill Button (m)"
  end
  if value == "n" then
    return "Ord Rej Reason 2: By Hft Filter Limit Maximum Number Of Contracts Matched (n)"
  end
  if value == "o" then
    return "Ord Rej Reason 2: By Selfmatch Prevention (o)"
  end
  if value == "p" then
    return "Ord Rej Reason 2: Auction Price Order Cancelled At The End Of The Auction (p)"
  end
  if value == "x" then
    return "Ord Rej Reason 2: Invalid Ork Fields (x)"
  end

  return "Ord Rej Reason 2: Unknown("..value..")"
end

-- Dissect: Ord Rej Reason 2
bme_meff_marketandorder_bmegate_v1_6.ord_rej_reason_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ord_rej_reason_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.ord_rej_reason_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ord_rej_reason_2, range, value, display)

  return offset + length, value
end

-- Ord Status
bme_meff_marketandorder_bmegate_v1_6.ord_status = {}

-- Size: Ord Status
bme_meff_marketandorder_bmegate_v1_6.ord_status.size = 1

-- Display: Ord Status
bme_meff_marketandorder_bmegate_v1_6.ord_status.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.ord_status.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ord_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.ord_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Ord Status 2
bme_meff_marketandorder_bmegate_v1_6.ord_status_2 = {}

-- Size: Ord Status 2
bme_meff_marketandorder_bmegate_v1_6.ord_status_2.size = 1

-- Display: Ord Status 2
bme_meff_marketandorder_bmegate_v1_6.ord_status_2.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.ord_status_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ord_status_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.ord_status_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ord_status_2, range, value, display)

  return offset + length, value
end

-- Order Id
bme_meff_marketandorder_bmegate_v1_6.order_id = {}

-- Size: Order Id
bme_meff_marketandorder_bmegate_v1_6.order_id.size = 4

-- Display: Order Id
bme_meff_marketandorder_bmegate_v1_6.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
bme_meff_marketandorder_bmegate_v1_6.order_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Id 2
bme_meff_marketandorder_bmegate_v1_6.order_id_2 = {}

-- Size: Order Id 2
bme_meff_marketandorder_bmegate_v1_6.order_id_2.size = 4

-- Display: Order Id 2
bme_meff_marketandorder_bmegate_v1_6.order_id_2.display = function(value)
  return "Order Id 2: "..value
end

-- Dissect: Order Id 2
bme_meff_marketandorder_bmegate_v1_6.order_id_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.order_id_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.order_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_id_2, range, value, display)

  return offset + length, value
end

-- Order Number Of Decimals
bme_meff_marketandorder_bmegate_v1_6.order_number_of_decimals = {}

-- Size: Order Number Of Decimals
bme_meff_marketandorder_bmegate_v1_6.order_number_of_decimals.size = 1

-- Display: Order Number Of Decimals
bme_meff_marketandorder_bmegate_v1_6.order_number_of_decimals.display = function(value)
  return "Order Number Of Decimals: "..value
end

-- Dissect: Order Number Of Decimals
bme_meff_marketandorder_bmegate_v1_6.order_number_of_decimals.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.order_number_of_decimals.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.order_number_of_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_number_of_decimals, range, value, display)

  return offset + length, value
end

-- Order Or Quote Cancel
bme_meff_marketandorder_bmegate_v1_6.order_or_quote_cancel = {}

-- Size: Order Or Quote Cancel
bme_meff_marketandorder_bmegate_v1_6.order_or_quote_cancel.size = 1

-- Display: Order Or Quote Cancel
bme_meff_marketandorder_bmegate_v1_6.order_or_quote_cancel.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.order_or_quote_cancel.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.order_or_quote_cancel.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.order_or_quote_cancel.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_or_quote_cancel, range, value, display)

  return offset + length, value
end

-- Order Qty
bme_meff_marketandorder_bmegate_v1_6.order_qty = {}

-- Size: Order Qty
bme_meff_marketandorder_bmegate_v1_6.order_qty.size = 4

-- Display: Order Qty
bme_meff_marketandorder_bmegate_v1_6.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
bme_meff_marketandorder_bmegate_v1_6.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Order Qty 2
bme_meff_marketandorder_bmegate_v1_6.order_qty_2 = {}

-- Size: Order Qty 2
bme_meff_marketandorder_bmegate_v1_6.order_qty_2.size = 4

-- Display: Order Qty 2
bme_meff_marketandorder_bmegate_v1_6.order_qty_2.display = function(value)
  return "Order Qty 2: "..value
end

-- Dissect: Order Qty 2
bme_meff_marketandorder_bmegate_v1_6.order_qty_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.order_qty_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.order_qty_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_qty_2, range, value, display)

  return offset + length, value
end

-- Order Security Code
bme_meff_marketandorder_bmegate_v1_6.order_security_code = {}

-- Size: Order Security Code
bme_meff_marketandorder_bmegate_v1_6.order_security_code.size = 4

-- Display: Order Security Code
bme_meff_marketandorder_bmegate_v1_6.order_security_code.display = function(value)
  return "Order Security Code: "..value
end

-- Dissect: Order Security Code
bme_meff_marketandorder_bmegate_v1_6.order_security_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.order_security_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.order_security_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_security_code, range, value, display)

  return offset + length, value
end

-- Order Security Code 2
bme_meff_marketandorder_bmegate_v1_6.order_security_code_2 = {}

-- Size: Order Security Code 2
bme_meff_marketandorder_bmegate_v1_6.order_security_code_2.size = 4

-- Display: Order Security Code 2
bme_meff_marketandorder_bmegate_v1_6.order_security_code_2.display = function(value)
  return "Order Security Code 2: "..value
end

-- Dissect: Order Security Code 2
bme_meff_marketandorder_bmegate_v1_6.order_security_code_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.order_security_code_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.order_security_code_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_security_code_2, range, value, display)

  return offset + length, value
end

-- Password
bme_meff_marketandorder_bmegate_v1_6.password = {}

-- Size: Password
bme_meff_marketandorder_bmegate_v1_6.password.size = 10

-- Display: Password
bme_meff_marketandorder_bmegate_v1_6.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
bme_meff_marketandorder_bmegate_v1_6.password.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.password.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.password, range, value, display)

  return offset + length, value
end

-- Persistence
bme_meff_marketandorder_bmegate_v1_6.persistence = {}

-- Size: Persistence
bme_meff_marketandorder_bmegate_v1_6.persistence.size = 1

-- Display: Persistence
bme_meff_marketandorder_bmegate_v1_6.persistence.display = function(value)
  if value == "C" then
    return "Persistence: Cancel On Disconnection (C)"
  end
  if value == "P" then
    return "Persistence: Persist On Disconnection (P)"
  end

  return "Persistence: Unknown("..value..")"
end

-- Dissect: Persistence
bme_meff_marketandorder_bmegate_v1_6.persistence.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.persistence.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.persistence.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.persistence, range, value, display)

  return offset + length, value
end

-- Persistence 2
bme_meff_marketandorder_bmegate_v1_6.persistence_2 = {}

-- Size: Persistence 2
bme_meff_marketandorder_bmegate_v1_6.persistence_2.size = 1

-- Display: Persistence 2
bme_meff_marketandorder_bmegate_v1_6.persistence_2.display = function(value)
  if value == "C" then
    return "Persistence 2: Cancel On Disconnection (C)"
  end
  if value == "P" then
    return "Persistence 2: Persist On Disconnection (P)"
  end

  return "Persistence 2: Unknown("..value..")"
end

-- Dissect: Persistence 2
bme_meff_marketandorder_bmegate_v1_6.persistence_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.persistence_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.persistence_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.persistence_2, range, value, display)

  return offset + length, value
end

-- Post Deferral Publication Type
bme_meff_marketandorder_bmegate_v1_6.post_deferral_publication_type = {}

-- Size: Post Deferral Publication Type
bme_meff_marketandorder_bmegate_v1_6.post_deferral_publication_type.size = 1

-- Display: Post Deferral Publication Type
bme_meff_marketandorder_bmegate_v1_6.post_deferral_publication_type.display = function(value)
  if value == " " then
    return "Post Deferral Publication Type: Not Applicable No Relevant Deferral Or Enrichment Type (<whitespace>)"
  end
  if value == "8" then
    return "Post Deferral Publication Type: Full Details Of Earlier Daily Aggregated Trade Datf (8)"
  end

  return "Post Deferral Publication Type: Unknown("..value..")"
end

-- Dissect: Post Deferral Publication Type
bme_meff_marketandorder_bmegate_v1_6.post_deferral_publication_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.post_deferral_publication_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.post_deferral_publication_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.post_deferral_publication_type, range, value, display)

  return offset + length, value
end

-- Pre Trade Transparency Waiver
bme_meff_marketandorder_bmegate_v1_6.pre_trade_transparency_waiver = {}

-- Size: Pre Trade Transparency Waiver
bme_meff_marketandorder_bmegate_v1_6.pre_trade_transparency_waiver.size = 1

-- Display: Pre Trade Transparency Waiver
bme_meff_marketandorder_bmegate_v1_6.pre_trade_transparency_waiver.display = function(value)
  if value == " " then
    return "Pre Trade Transparency Waiver: Negotiated Trade Nego (<whitespace>)"
  end

  return "Pre Trade Transparency Waiver: Unknown("..value..")"
end

-- Dissect: Pre Trade Transparency Waiver
bme_meff_marketandorder_bmegate_v1_6.pre_trade_transparency_waiver.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.pre_trade_transparency_waiver.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.pre_trade_transparency_waiver.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.pre_trade_transparency_waiver, range, value, display)

  return offset + length, value
end

-- Price
bme_meff_marketandorder_bmegate_v1_6.price = {}

-- Size: Price
bme_meff_marketandorder_bmegate_v1_6.price.size = 8

-- Display: Price
bme_meff_marketandorder_bmegate_v1_6.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
bme_meff_marketandorder_bmegate_v1_6.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
bme_meff_marketandorder_bmegate_v1_6.price.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.price.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.price, range, value, display)

  return offset + length, value
end

-- Price 2
bme_meff_marketandorder_bmegate_v1_6.price_2 = {}

-- Size: Price 2
bme_meff_marketandorder_bmegate_v1_6.price_2.size = 8

-- Display: Price 2
bme_meff_marketandorder_bmegate_v1_6.price_2.display = function(value)
  return "Price 2: "..value
end

-- Translate: Price 2
bme_meff_marketandorder_bmegate_v1_6.price_2.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price 2
bme_meff_marketandorder_bmegate_v1_6.price_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.price_2.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.price_2.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.price_2, range, value, display)

  return offset + length, value
end

-- Priority
bme_meff_marketandorder_bmegate_v1_6.priority = {}

-- Size: Priority
bme_meff_marketandorder_bmegate_v1_6.priority.size = 4

-- Display: Priority
bme_meff_marketandorder_bmegate_v1_6.priority.display = function(value)
  return "Priority: "..value
end

-- Dissect: Priority
bme_meff_marketandorder_bmegate_v1_6.priority.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.priority.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.priority, range, value, display)

  return offset + length, value
end

-- Priority 2
bme_meff_marketandorder_bmegate_v1_6.priority_2 = {}

-- Size: Priority 2
bme_meff_marketandorder_bmegate_v1_6.priority_2.size = 4

-- Display: Priority 2
bme_meff_marketandorder_bmegate_v1_6.priority_2.display = function(value)
  return "Priority 2: "..value
end

-- Dissect: Priority 2
bme_meff_marketandorder_bmegate_v1_6.priority_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.priority_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.priority_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.priority_2, range, value, display)

  return offset + length, value
end

-- Product Type
bme_meff_marketandorder_bmegate_v1_6.product_type = {}

-- Size: Product Type
bme_meff_marketandorder_bmegate_v1_6.product_type.size = 1

-- Display: Product Type
bme_meff_marketandorder_bmegate_v1_6.product_type.display = function(value)
  return "Product Type: "..value
end

-- Dissect: Product Type
bme_meff_marketandorder_bmegate_v1_6.product_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.product_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.product_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.product_type, range, value, display)

  return offset + length, value
end

-- Protocol Version
bme_meff_marketandorder_bmegate_v1_6.protocol_version = {}

-- Size: Protocol Version
bme_meff_marketandorder_bmegate_v1_6.protocol_version.size = 6

-- Display: Protocol Version
bme_meff_marketandorder_bmegate_v1_6.protocol_version.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Protocol Version: No Value"
  end

  return "Protocol Version: "..value
end

-- Dissect: Protocol Version
bme_meff_marketandorder_bmegate_v1_6.protocol_version.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.protocol_version.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.protocol_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Publish Date And Time
bme_meff_marketandorder_bmegate_v1_6.publish_date_and_time = {}

-- Size: Publish Date And Time
bme_meff_marketandorder_bmegate_v1_6.publish_date_and_time.size = 8

-- Display: Publish Date And Time
bme_meff_marketandorder_bmegate_v1_6.publish_date_and_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Publish Date And Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Publish Date And Time
bme_meff_marketandorder_bmegate_v1_6.publish_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.publish_date_and_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bme_meff_marketandorder_bmegate_v1_6.publish_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.publish_date_and_time, range, value, display)

  return offset + length, value
end

-- Put Or Call
bme_meff_marketandorder_bmegate_v1_6.put_or_call = {}

-- Size: Put Or Call
bme_meff_marketandorder_bmegate_v1_6.put_or_call.size = 1

-- Display: Put Or Call
bme_meff_marketandorder_bmegate_v1_6.put_or_call.display = function(value)
  if value == "C" then
    return "Put Or Call: Call (C)"
  end
  if value == "P" then
    return "Put Or Call: Put (P)"
  end
  if value == "O" then
    return "Put Or Call: Other (O)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
bme_meff_marketandorder_bmegate_v1_6.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.put_or_call.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Quoted Currency
bme_meff_marketandorder_bmegate_v1_6.quoted_currency = {}

-- Size: Quoted Currency
bme_meff_marketandorder_bmegate_v1_6.quoted_currency.size = 3

-- Display: Quoted Currency
bme_meff_marketandorder_bmegate_v1_6.quoted_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Quoted Currency: No Value"
  end

  return "Quoted Currency: "..value
end

-- Dissect: Quoted Currency
bme_meff_marketandorder_bmegate_v1_6.quoted_currency.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.quoted_currency.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.quoted_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.quoted_currency, range, value, display)

  return offset + length, value
end

-- Ref Msg Type
bme_meff_marketandorder_bmegate_v1_6.ref_msg_type = {}

-- Size: Ref Msg Type
bme_meff_marketandorder_bmegate_v1_6.ref_msg_type.size = 1

-- Display: Ref Msg Type
bme_meff_marketandorder_bmegate_v1_6.ref_msg_type.display = function(value)
  return "Ref Msg Type: "..value
end

-- Dissect: Ref Msg Type
bme_meff_marketandorder_bmegate_v1_6.ref_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.ref_msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.ref_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.ref_msg_type, range, value, display)

  return offset + length, value
end

-- Request Id
bme_meff_marketandorder_bmegate_v1_6.request_id = {}

-- Size: Request Id
bme_meff_marketandorder_bmegate_v1_6.request_id.size = 4

-- Display: Request Id
bme_meff_marketandorder_bmegate_v1_6.request_id.display = function(value)
  return "Request Id: "..value
end

-- Dissect: Request Id
bme_meff_marketandorder_bmegate_v1_6.request_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.request_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.request_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.request_id, range, value, display)

  return offset + length, value
end

-- Request Id 2
bme_meff_marketandorder_bmegate_v1_6.request_id_2 = {}

-- Size: Request Id 2
bme_meff_marketandorder_bmegate_v1_6.request_id_2.size = 4

-- Display: Request Id 2
bme_meff_marketandorder_bmegate_v1_6.request_id_2.display = function(value)
  return "Request Id 2: "..value
end

-- Dissect: Request Id 2
bme_meff_marketandorder_bmegate_v1_6.request_id_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.request_id_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.request_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.request_id_2, range, value, display)

  return offset + length, value
end

-- Retail Cl Ask Flag 1
bme_meff_marketandorder_bmegate_v1_6.retail_cl_ask_flag_1 = {}

-- Size: Retail Cl Ask Flag 1
bme_meff_marketandorder_bmegate_v1_6.retail_cl_ask_flag_1.size = 1

-- Display: Retail Cl Ask Flag 1
bme_meff_marketandorder_bmegate_v1_6.retail_cl_ask_flag_1.display = function(value)
  if value == 0 then
    return "Retail Cl Ask Flag 1: False (0)"
  end
  if value == 1 then
    return "Retail Cl Ask Flag 1: True (1)"
  end
  if value == 255 then
    return "Retail Cl Ask Flag 1: Undefined (255)"
  end

  return "Retail Cl Ask Flag 1: Unknown("..value..")"
end

-- Dissect: Retail Cl Ask Flag 1
bme_meff_marketandorder_bmegate_v1_6.retail_cl_ask_flag_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.retail_cl_ask_flag_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.retail_cl_ask_flag_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.retail_cl_ask_flag_1, range, value, display)

  return offset + length, value
end

-- Retail Cl Bid Flag 1
bme_meff_marketandorder_bmegate_v1_6.retail_cl_bid_flag_1 = {}

-- Size: Retail Cl Bid Flag 1
bme_meff_marketandorder_bmegate_v1_6.retail_cl_bid_flag_1.size = 1

-- Display: Retail Cl Bid Flag 1
bme_meff_marketandorder_bmegate_v1_6.retail_cl_bid_flag_1.display = function(value)
  if value == 0 then
    return "Retail Cl Bid Flag 1: False (0)"
  end
  if value == 1 then
    return "Retail Cl Bid Flag 1: True (1)"
  end
  if value == 255 then
    return "Retail Cl Bid Flag 1: Undefined (255)"
  end

  return "Retail Cl Bid Flag 1: Unknown("..value..")"
end

-- Dissect: Retail Cl Bid Flag 1
bme_meff_marketandorder_bmegate_v1_6.retail_cl_bid_flag_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.retail_cl_bid_flag_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.retail_cl_bid_flag_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.retail_cl_bid_flag_1, range, value, display)

  return offset + length, value
end

-- Retail Cl Flag
bme_meff_marketandorder_bmegate_v1_6.retail_cl_flag = {}

-- Size: Retail Cl Flag
bme_meff_marketandorder_bmegate_v1_6.retail_cl_flag.size = 1

-- Display: Retail Cl Flag
bme_meff_marketandorder_bmegate_v1_6.retail_cl_flag.display = function(value)
  if value == 0 then
    return "Retail Cl Flag: False (0)"
  end
  if value == 1 then
    return "Retail Cl Flag: True (1)"
  end
  if value == 255 then
    return "Retail Cl Flag: Undefined (255)"
  end

  return "Retail Cl Flag: Unknown("..value..")"
end

-- Dissect: Retail Cl Flag
bme_meff_marketandorder_bmegate_v1_6.retail_cl_flag.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.retail_cl_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.retail_cl_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.retail_cl_flag, range, value, display)

  return offset + length, value
end

-- Retail Cl Flag 2
bme_meff_marketandorder_bmegate_v1_6.retail_cl_flag_2 = {}

-- Size: Retail Cl Flag 2
bme_meff_marketandorder_bmegate_v1_6.retail_cl_flag_2.size = 1

-- Display: Retail Cl Flag 2
bme_meff_marketandorder_bmegate_v1_6.retail_cl_flag_2.display = function(value)
  if value == 0 then
    return "Retail Cl Flag 2: False (0)"
  end
  if value == 1 then
    return "Retail Cl Flag 2: True (1)"
  end
  if value == 255 then
    return "Retail Cl Flag 2: Undefined (255)"
  end

  return "Retail Cl Flag 2: Unknown("..value..")"
end

-- Dissect: Retail Cl Flag 2
bme_meff_marketandorder_bmegate_v1_6.retail_cl_flag_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.retail_cl_flag_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.retail_cl_flag_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.retail_cl_flag_2, range, value, display)

  return offset + length, value
end

-- Rfqid
bme_meff_marketandorder_bmegate_v1_6.rfqid = {}

-- Size: Rfqid
bme_meff_marketandorder_bmegate_v1_6.rfqid.size = 4

-- Display: Rfqid
bme_meff_marketandorder_bmegate_v1_6.rfqid.display = function(value)
  return "Rfqid: "..value
end

-- Dissect: Rfqid
bme_meff_marketandorder_bmegate_v1_6.rfqid.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.rfqid.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.rfqid.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.rfqid, range, value, display)

  return offset + length, value
end

-- Risk Reduction
bme_meff_marketandorder_bmegate_v1_6.risk_reduction = {}

-- Size: Risk Reduction
bme_meff_marketandorder_bmegate_v1_6.risk_reduction.size = 1

-- Display: Risk Reduction
bme_meff_marketandorder_bmegate_v1_6.risk_reduction.display = function(value)
  if value == 0 then
    return "Risk Reduction: False (0)"
  end
  if value == 1 then
    return "Risk Reduction: True (1)"
  end
  if value == 255 then
    return "Risk Reduction: Undefined (255)"
  end

  return "Risk Reduction: Unknown("..value..")"
end

-- Dissect: Risk Reduction
bme_meff_marketandorder_bmegate_v1_6.risk_reduction.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.risk_reduction.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.risk_reduction.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.risk_reduction, range, value, display)

  return offset + length, value
end

-- Risk Reduction 2
bme_meff_marketandorder_bmegate_v1_6.risk_reduction_2 = {}

-- Size: Risk Reduction 2
bme_meff_marketandorder_bmegate_v1_6.risk_reduction_2.size = 1

-- Display: Risk Reduction 2
bme_meff_marketandorder_bmegate_v1_6.risk_reduction_2.display = function(value)
  if value == 0 then
    return "Risk Reduction 2: False (0)"
  end
  if value == 1 then
    return "Risk Reduction 2: True (1)"
  end
  if value == 255 then
    return "Risk Reduction 2: Undefined (255)"
  end

  return "Risk Reduction 2: Unknown("..value..")"
end

-- Dissect: Risk Reduction 2
bme_meff_marketandorder_bmegate_v1_6.risk_reduction_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.risk_reduction_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.risk_reduction_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.risk_reduction_2, range, value, display)

  return offset + length, value
end

-- Round Lot
bme_meff_marketandorder_bmegate_v1_6.round_lot = {}

-- Size: Round Lot
bme_meff_marketandorder_bmegate_v1_6.round_lot.size = 4

-- Display: Round Lot
bme_meff_marketandorder_bmegate_v1_6.round_lot.display = function(value)
  return "Round Lot: "..value
end

-- Dissect: Round Lot
bme_meff_marketandorder_bmegate_v1_6.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.round_lot.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Sec Description
bme_meff_marketandorder_bmegate_v1_6.sec_description = {}

-- Size: Sec Description
bme_meff_marketandorder_bmegate_v1_6.sec_description.size = 20

-- Display: Sec Description
bme_meff_marketandorder_bmegate_v1_6.sec_description.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sec Description: No Value"
  end

  return "Sec Description: "..value
end

-- Dissect: Sec Description
bme_meff_marketandorder_bmegate_v1_6.sec_description.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.sec_description.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.sec_description.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.sec_description, range, value, display)

  return offset + length, value
end

-- Secondary Exec Id
bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id = {}

-- Size: Secondary Exec Id
bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id.size = 4

-- Display: Secondary Exec Id
bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id.display = function(value)
  return "Secondary Exec Id: "..value
end

-- Dissect: Secondary Exec Id
bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.secondary_exec_id, range, value, display)

  return offset + length, value
end

-- Secondary Exec Id 2
bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id_2 = {}

-- Size: Secondary Exec Id 2
bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id_2.size = 4

-- Display: Secondary Exec Id 2
bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id_2.display = function(value)
  return "Secondary Exec Id 2: "..value
end

-- Dissect: Secondary Exec Id 2
bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.secondary_exec_id_2, range, value, display)

  return offset + length, value
end

-- Secondary Order Id
bme_meff_marketandorder_bmegate_v1_6.secondary_order_id = {}

-- Size: Secondary Order Id
bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.size = 4

-- Display: Secondary Order Id
bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.display = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Secondary Order Id 2
bme_meff_marketandorder_bmegate_v1_6.secondary_order_id_2 = {}

-- Size: Secondary Order Id 2
bme_meff_marketandorder_bmegate_v1_6.secondary_order_id_2.size = 4

-- Display: Secondary Order Id 2
bme_meff_marketandorder_bmegate_v1_6.secondary_order_id_2.display = function(value)
  return "Secondary Order Id 2: "..value
end

-- Dissect: Secondary Order Id 2
bme_meff_marketandorder_bmegate_v1_6.secondary_order_id_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.secondary_order_id_2, range, value, display)

  return offset + length, value
end

-- Security Code
bme_meff_marketandorder_bmegate_v1_6.security_code = {}

-- Size: Security Code
bme_meff_marketandorder_bmegate_v1_6.security_code.size = 4

-- Display: Security Code
bme_meff_marketandorder_bmegate_v1_6.security_code.display = function(value)
  return "Security Code: "..value
end

-- Dissect: Security Code
bme_meff_marketandorder_bmegate_v1_6.security_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.security_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.security_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.security_code, range, value, display)

  return offset + length, value
end

-- Security Description
bme_meff_marketandorder_bmegate_v1_6.security_description = {}

-- Size: Security Description
bme_meff_marketandorder_bmegate_v1_6.security_description.size = 80

-- Display: Security Description
bme_meff_marketandorder_bmegate_v1_6.security_description.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Description: No Value"
  end

  return "Security Description: "..value
end

-- Dissect: Security Description
bme_meff_marketandorder_bmegate_v1_6.security_description.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.security_description.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.security_description.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.security_description, range, value, display)

  return offset + length, value
end

-- Security Group
bme_meff_marketandorder_bmegate_v1_6.security_group = {}

-- Size: Security Group
bme_meff_marketandorder_bmegate_v1_6.security_group.size = 2

-- Display: Security Group
bme_meff_marketandorder_bmegate_v1_6.security_group.display = function(value)
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

  return "Security Group: Unknown("..value..")"
end

-- Dissect: Security Group
bme_meff_marketandorder_bmegate_v1_6.security_group.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.security_group.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.security_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.security_group, range, value, display)

  return offset + length, value
end

-- Security Sub Type
bme_meff_marketandorder_bmegate_v1_6.security_sub_type = {}

-- Size: Security Sub Type
bme_meff_marketandorder_bmegate_v1_6.security_sub_type.size = 12

-- Display: Security Sub Type
bme_meff_marketandorder_bmegate_v1_6.security_sub_type.display = function(value)
  if value == "BER" then
    return "Security Sub Type: Put Spread (BER)"
  end
  if value == "BER +U" then
    return "Security Sub Type: Put Spread U (BER +U)"
  end
  if value == "BLT" then
    return "Security Sub Type: Call Calendar (BLT)"
  end
  if value == "BLT +U" then
    return "Security Sub Type: Call Calendar U (BLT +U)"
  end
  if value == "BLT –U" then
    return "Security Sub Type: Call Calendar U (BLT –U)"
  end
  if value == "BRT" then
    return "Security Sub Type: Put Calendar (BRT)"
  end
  if value == "BRT +U" then
    return "Security Sub Type: Put Calendar U (BRT +U)"
  end
  if value == "BRT –U" then
    return "Security Sub Type: Put Calendar U (BRT –U)"
  end
  if value == "BUL" then
    return "Security Sub Type: Call Spread (BUL)"
  end
  if value == "BUL –U" then
    return "Security Sub Type: Call Spread U (BUL –U)"
  end
  if value == "CALL-U" then
    return "Security Sub Type: Call U (CALL-U)"
  end
  if value == "FUT –U" then
    return "Security Sub Type: Future U (FUT –U)"
  end
  if value == "PUT +U" then
    return "Security Sub Type: Put U (PUT +U)"
  end
  if value == "RBER" then
    return "Security Sub Type: 21 Ratio Put Spread (RBER)"
  end
  if value == "RBER+U" then
    return "Security Sub Type: 21 Ratio Put Spread U (RBER+U)"
  end
  if value == "RBER-U" then
    return "Security Sub Type: 21 Ratio Put Spread U (RBER-U)"
  end
  if value == "RBUL" then
    return "Security Sub Type: 21 Ratio Call Spread (RBUL)"
  end
  if value == "RBUL+U" then
    return "Security Sub Type: 21 Ratio Call Spread U (RBUL+U)"
  end
  if value == "RBUL-U" then
    return "Security Sub Type: 21 Ratio Call Spread U (RBUL-U)"
  end
  if value == "RSK" then
    return "Security Sub Type: Risky (RSK)"
  end
  if value == "RSK –U" then
    return "Security Sub Type: Risky U (RSK –U)"
  end
  if value == "STD" then
    return "Security Sub Type: Straddle (STD)"
  end
  if value == "STD +U" then
    return "Security Sub Type: Straddle U (STD +U)"
  end
  if value == "STD –U" then
    return "Security Sub Type: Straddle U (STD –U)"
  end
  if value == "STG" then
    return "Security Sub Type: Strangle (STG)"
  end
  if value == "STG +U" then
    return "Security Sub Type: Strangle U (STG +U)"
  end
  if value == "STG -U" then
    return "Security Sub Type: Strangle U (STG -U)"
  end
  if value == "SYNT" then
    return "Security Sub Type: Synthetic (SYNT)"
  end
  if value == "SYNT-U" then
    return "Security Sub Type: Synthetic U (SYNT-U)"
  end
  if value == "OPEN" then
    return "Security Sub Type: Open Strategy (OPEN)"
  end
  if value == "OPEN+U" then
    return "Security Sub Type: Open Strategy U (OPEN+U)"
  end
  if value == "OPEN-U" then
    return "Security Sub Type: Open Strategy U (OPEN-U)"
  end
  if value == "ROLL" then
    return "Security Sub Type: Time Spread (ROLL)"
  end

  return "Security Sub Type: Unknown("..value..")"
end

-- Dissect: Security Sub Type
bme_meff_marketandorder_bmegate_v1_6.security_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.security_sub_type.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.security_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.security_sub_type, range, value, display)

  return offset + length, value
end

-- Security Trading Status
bme_meff_marketandorder_bmegate_v1_6.security_trading_status = {}

-- Size: Security Trading Status
bme_meff_marketandorder_bmegate_v1_6.security_trading_status.size = 1

-- Display: Security Trading Status
bme_meff_marketandorder_bmegate_v1_6.security_trading_status.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.security_trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Security Type
bme_meff_marketandorder_bmegate_v1_6.security_type = {}

-- Size: Security Type
bme_meff_marketandorder_bmegate_v1_6.security_type.size = 2

-- Display: Security Type
bme_meff_marketandorder_bmegate_v1_6.security_type.display = function(value)
  if value == "E" then
    return "Security Type: Strategy (E)"
  end
  if value == "F" then
    return "Security Type: Future (F)"
  end
  if value == "O" then
    return "Security Type: Option (O)"
  end
  if value == "R" then
    return "Security Type: Time Spread (R)"
  end
  if value == "W" then
    return "Security Type: Swap (W)"
  end
  if value == "X" then
    return "Security Type: Other (X)"
  end
  if value == "G" then
    return "Security Type: X Rolling (G)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
bme_meff_marketandorder_bmegate_v1_6.security_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.security_type.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.security_type, range, value, display)

  return offset + length, value
end

-- Self Match Prevention
bme_meff_marketandorder_bmegate_v1_6.self_match_prevention = {}

-- Size: Self Match Prevention
bme_meff_marketandorder_bmegate_v1_6.self_match_prevention.size = 1

-- Display: Self Match Prevention
bme_meff_marketandorder_bmegate_v1_6.self_match_prevention.display = function(value)
  if value == 0 then
    return "Self Match Prevention: False (0)"
  end
  if value == 1 then
    return "Self Match Prevention: True (1)"
  end
  if value == 255 then
    return "Self Match Prevention: Undefined (255)"
  end

  return "Self Match Prevention: Unknown("..value..")"
end

-- Dissect: Self Match Prevention
bme_meff_marketandorder_bmegate_v1_6.self_match_prevention.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.self_match_prevention, range, value, display)

  return offset + length, value
end

-- Self Match Prevention Id
bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id = {}

-- Size: Self Match Prevention Id
bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id.size = 2

-- Display: Self Match Prevention Id
bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id.display = function(value)
  return "Self Match Prevention Id: "..value
end

-- Dissect: Self Match Prevention Id
bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.self_match_prevention_id, range, value, display)

  return offset + length, value
end

-- Self Match Prevention Id 2
bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id_2 = {}

-- Size: Self Match Prevention Id 2
bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id_2.size = 2

-- Display: Self Match Prevention Id 2
bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id_2.display = function(value)
  return "Self Match Prevention Id 2: "..value
end

-- Dissect: Self Match Prevention Id 2
bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.self_match_prevention_id_2, range, value, display)

  return offset + length, value
end

-- Self Match Prevention Type
bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type = {}

-- Size: Self Match Prevention Type
bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type.size = 1

-- Display: Self Match Prevention Type
bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type.display = function(value)
  if value == " " then
    return "Self Match Prevention Type: Na Or Default Behaviour Aggressive Order Is Rejected (<whitespace>)"
  end
  if value == "1" then
    return "Self Match Prevention Type: Reject Aggressive Order (1)"
  end
  if value == "2" then
    return "Self Match Prevention Type: Cancel Pasive Order (2)"
  end
  if value == "3" then
    return "Self Match Prevention Type: Cancel Both Passive And Aggressive Order (3)"
  end
  if value == "4" then
    return "Self Match Prevention Type: No Order Gets Cancelled Both Aggressive And Passive Orders Remain Only Valid For Spain At Mid Direct Orders (4)"
  end

  return "Self Match Prevention Type: Unknown("..value..")"
end

-- Dissect: Self Match Prevention Type
bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.self_match_prevention_type, range, value, display)

  return offset + length, value
end

-- Self Match Prevention Type 2
bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type_2 = {}

-- Size: Self Match Prevention Type 2
bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type_2.size = 1

-- Display: Self Match Prevention Type 2
bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type_2.display = function(value)
  if value == " " then
    return "Self Match Prevention Type 2: Na Or Default Behaviour Aggressive Order Is Rejected (<whitespace>)"
  end
  if value == "1" then
    return "Self Match Prevention Type 2: Reject Aggressive Order (1)"
  end
  if value == "2" then
    return "Self Match Prevention Type 2: Cancel 139 Assive Order (2)"
  end
  if value == "3" then
    return "Self Match Prevention Type 2: Cancel Both Passive And Aggressive Order (3)"
  end
  if value == "4" then
    return "Self Match Prevention Type 2: No Order Gets Cancelled Both Aggressive And Passive Orders Remain Only Valid For Spain At Mid Direct Orders (4)"
  end

  return "Self Match Prevention Type 2: Unknown("..value..")"
end

-- Dissect: Self Match Prevention Type 2
bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.self_match_prevention_type_2, range, value, display)

  return offset + length, value
end

-- Sell Rf Qs Number
bme_meff_marketandorder_bmegate_v1_6.sell_rf_qs_number = {}

-- Size: Sell Rf Qs Number
bme_meff_marketandorder_bmegate_v1_6.sell_rf_qs_number.size = 2

-- Display: Sell Rf Qs Number
bme_meff_marketandorder_bmegate_v1_6.sell_rf_qs_number.display = function(value)
  return "Sell Rf Qs Number: "..value
end

-- Dissect: Sell Rf Qs Number
bme_meff_marketandorder_bmegate_v1_6.sell_rf_qs_number.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.sell_rf_qs_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.sell_rf_qs_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.sell_rf_qs_number, range, value, display)

  return offset + length, value
end

-- Sequence Number
bme_meff_marketandorder_bmegate_v1_6.sequence_number = {}

-- Size: Sequence Number
bme_meff_marketandorder_bmegate_v1_6.sequence_number.size = 4

-- Display: Sequence Number
bme_meff_marketandorder_bmegate_v1_6.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequence Number To
bme_meff_marketandorder_bmegate_v1_6.sequence_number_to = {}

-- Size: Sequence Number To
bme_meff_marketandorder_bmegate_v1_6.sequence_number_to.size = 4

-- Display: Sequence Number To
bme_meff_marketandorder_bmegate_v1_6.sequence_number_to.display = function(value)
  return "Sequence Number To: "..value
end

-- Dissect: Sequence Number To
bme_meff_marketandorder_bmegate_v1_6.sequence_number_to.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.sequence_number_to.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.sequence_number_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.sequence_number_to, range, value, display)

  return offset + length, value
end

-- Session Date
bme_meff_marketandorder_bmegate_v1_6.session_date = {}

-- Size: Session Date
bme_meff_marketandorder_bmegate_v1_6.session_date.size = 4

-- Display: Session Date
bme_meff_marketandorder_bmegate_v1_6.session_date.display = function(value)
  return string.format("Session Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Session Date
bme_meff_marketandorder_bmegate_v1_6.session_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.session_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_meff_marketandorder_bmegate_v1_6.session_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.session_date, range, value, display)

  return offset + length, value
end

-- Session Reject Reason
bme_meff_marketandorder_bmegate_v1_6.session_reject_reason = {}

-- Size: Session Reject Reason
bme_meff_marketandorder_bmegate_v1_6.session_reject_reason.size = 1

-- Display: Session Reject Reason
bme_meff_marketandorder_bmegate_v1_6.session_reject_reason.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.session_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.session_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.session_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.session_reject_reason, range, value, display)

  return offset + length, value
end

-- Settl Method
bme_meff_marketandorder_bmegate_v1_6.settl_method = {}

-- Size: Settl Method
bme_meff_marketandorder_bmegate_v1_6.settl_method.size = 1

-- Display: Settl Method
bme_meff_marketandorder_bmegate_v1_6.settl_method.display = function(value)
  if value == "C" then
    return "Settl Method: Cash (C)"
  end
  if value == "P" then
    return "Settl Method: Physical (P)"
  end

  return "Settl Method: Unknown("..value..")"
end

-- Dissect: Settl Method
bme_meff_marketandorder_bmegate_v1_6.settl_method.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.settl_method.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.settl_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.settl_method, range, value, display)

  return offset + length, value
end

-- Side
bme_meff_marketandorder_bmegate_v1_6.side = {}

-- Size: Side
bme_meff_marketandorder_bmegate_v1_6.side.size = 1

-- Display: Side
bme_meff_marketandorder_bmegate_v1_6.side.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.side.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.side, range, value, display)

  return offset + length, value
end

-- Software Name
bme_meff_marketandorder_bmegate_v1_6.software_name = {}

-- Size: Software Name
bme_meff_marketandorder_bmegate_v1_6.software_name.size = 25

-- Display: Software Name
bme_meff_marketandorder_bmegate_v1_6.software_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Software Name: No Value"
  end

  return "Software Name: "..value
end

-- Dissect: Software Name
bme_meff_marketandorder_bmegate_v1_6.software_name.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.software_name.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.software_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.software_name, range, value, display)

  return offset + length, value
end

-- Sst Ipost
bme_meff_marketandorder_bmegate_v1_6.sst_ipost = {}

-- Size: Sst Ipost
bme_meff_marketandorder_bmegate_v1_6.sst_ipost.size = 8

-- Display: Sst Ipost
bme_meff_marketandorder_bmegate_v1_6.sst_ipost.display = function(value)
  return "Sst Ipost: "..value
end

-- Translate: Sst Ipost
bme_meff_marketandorder_bmegate_v1_6.sst_ipost.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Sst Ipost
bme_meff_marketandorder_bmegate_v1_6.sst_ipost.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.sst_ipost.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.sst_ipost.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.sst_ipost.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.sst_ipost, range, value, display)

  return offset + length, value
end

-- Sst Ipre
bme_meff_marketandorder_bmegate_v1_6.sst_ipre = {}

-- Size: Sst Ipre
bme_meff_marketandorder_bmegate_v1_6.sst_ipre.size = 8

-- Display: Sst Ipre
bme_meff_marketandorder_bmegate_v1_6.sst_ipre.display = function(value)
  return "Sst Ipre: "..value
end

-- Translate: Sst Ipre
bme_meff_marketandorder_bmegate_v1_6.sst_ipre.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Sst Ipre
bme_meff_marketandorder_bmegate_v1_6.sst_ipre.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.sst_ipre.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.sst_ipre.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.sst_ipre.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.sst_ipre, range, value, display)

  return offset + length, value
end

-- Start Maturity Month Year
bme_meff_marketandorder_bmegate_v1_6.start_maturity_month_year = {}

-- Size: Start Maturity Month Year
bme_meff_marketandorder_bmegate_v1_6.start_maturity_month_year.size = 8

-- Display: Start Maturity Month Year
bme_meff_marketandorder_bmegate_v1_6.start_maturity_month_year.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Start Maturity Month Year: No Value"
  end

  return "Start Maturity Month Year: "..value
end

-- Dissect: Start Maturity Month Year
bme_meff_marketandorder_bmegate_v1_6.start_maturity_month_year.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.start_maturity_month_year.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.start_maturity_month_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.start_maturity_month_year, range, value, display)

  return offset + length, value
end

-- Status
bme_meff_marketandorder_bmegate_v1_6.status = {}

-- Size: Status
bme_meff_marketandorder_bmegate_v1_6.status.size = 1

-- Display: Status
bme_meff_marketandorder_bmegate_v1_6.status.display = function(value)
  if value == 0 then
    return "Status: False (0)"
  end
  if value == 1 then
    return "Status: True (1)"
  end
  if value == 255 then
    return "Status: Undefined (255)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
bme_meff_marketandorder_bmegate_v1_6.status.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.status, range, value, display)

  return offset + length, value
end

-- Stock When Underlying Is Dividend
bme_meff_marketandorder_bmegate_v1_6.stock_when_underlying_is_dividend = {}

-- Size: Stock When Underlying Is Dividend
bme_meff_marketandorder_bmegate_v1_6.stock_when_underlying_is_dividend.size = 22

-- Display: Stock When Underlying Is Dividend
bme_meff_marketandorder_bmegate_v1_6.stock_when_underlying_is_dividend.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Stock When Underlying Is Dividend: No Value"
  end

  return "Stock When Underlying Is Dividend: "..value
end

-- Dissect: Stock When Underlying Is Dividend
bme_meff_marketandorder_bmegate_v1_6.stock_when_underlying_is_dividend.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.stock_when_underlying_is_dividend.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.stock_when_underlying_is_dividend.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.stock_when_underlying_is_dividend, range, value, display)

  return offset + length, value
end

-- Strategy Trd Match Id
bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id = {}

-- Size: Strategy Trd Match Id
bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id.size = 4

-- Display: Strategy Trd Match Id
bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id.display = function(value)
  return "Strategy Trd Match Id: "..value
end

-- Dissect: Strategy Trd Match Id
bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.strategy_trd_match_id, range, value, display)

  return offset + length, value
end

-- Strike Price
bme_meff_marketandorder_bmegate_v1_6.strike_price = {}

-- Size: Strike Price
bme_meff_marketandorder_bmegate_v1_6.strike_price.size = 8

-- Display: Strike Price
bme_meff_marketandorder_bmegate_v1_6.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
bme_meff_marketandorder_bmegate_v1_6.strike_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Strike Price
bme_meff_marketandorder_bmegate_v1_6.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.strike_price.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Strike Value
bme_meff_marketandorder_bmegate_v1_6.strike_value = {}

-- Size: Strike Value
bme_meff_marketandorder_bmegate_v1_6.strike_value.size = 8

-- Display: Strike Value
bme_meff_marketandorder_bmegate_v1_6.strike_value.display = function(value)
  return "Strike Value: "..value
end

-- Translate: Strike Value
bme_meff_marketandorder_bmegate_v1_6.strike_value.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Strike Value
bme_meff_marketandorder_bmegate_v1_6.strike_value.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.strike_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.strike_value.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.strike_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.strike_value, range, value, display)

  return offset + length, value
end

-- Sub Member
bme_meff_marketandorder_bmegate_v1_6.sub_member = {}

-- Size: Sub Member
bme_meff_marketandorder_bmegate_v1_6.sub_member.size = 1

-- Display: Sub Member
bme_meff_marketandorder_bmegate_v1_6.sub_member.display = function(value)
  return "Sub Member: "..value
end

-- Dissect: Sub Member
bme_meff_marketandorder_bmegate_v1_6.sub_member.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.sub_member.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.sub_member.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.sub_member, range, value, display)

  return offset + length, value
end

-- Sub Member 2
bme_meff_marketandorder_bmegate_v1_6.sub_member_2 = {}

-- Size: Sub Member 2
bme_meff_marketandorder_bmegate_v1_6.sub_member_2.size = 1

-- Display: Sub Member 2
bme_meff_marketandorder_bmegate_v1_6.sub_member_2.display = function(value)
  return "Sub Member 2: "..value
end

-- Dissect: Sub Member 2
bme_meff_marketandorder_bmegate_v1_6.sub_member_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.sub_member_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.sub_member_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.sub_member_2, range, value, display)

  return offset + length, value
end

-- Sub Product
bme_meff_marketandorder_bmegate_v1_6.sub_product = {}

-- Size: Sub Product
bme_meff_marketandorder_bmegate_v1_6.sub_product.size = 4

-- Display: Sub Product
bme_meff_marketandorder_bmegate_v1_6.sub_product.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sub Product: No Value"
  end

  return "Sub Product: "..value
end

-- Dissect: Sub Product
bme_meff_marketandorder_bmegate_v1_6.sub_product.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.sub_product.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.sub_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.sub_product, range, value, display)

  return offset + length, value
end

-- Subscriptions
bme_meff_marketandorder_bmegate_v1_6.subscriptions = {}

-- Size: Subscriptions
bme_meff_marketandorder_bmegate_v1_6.subscriptions.size = 1

-- Display: Subscriptions
bme_meff_marketandorder_bmegate_v1_6.subscriptions.display = function(value)
  return "Subscriptions: "..value
end

-- Dissect: Subscriptions
bme_meff_marketandorder_bmegate_v1_6.subscriptions.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.subscriptions.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.subscriptions.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.subscriptions, range, value, display)

  return offset + length, value
end

-- Symbol
bme_meff_marketandorder_bmegate_v1_6.symbol = {}

-- Size: Symbol
bme_meff_marketandorder_bmegate_v1_6.symbol.size = 22

-- Display: Symbol
bme_meff_marketandorder_bmegate_v1_6.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
bme_meff_marketandorder_bmegate_v1_6.symbol.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.symbol.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Isin
bme_meff_marketandorder_bmegate_v1_6.symbol_isin = {}

-- Size: Symbol Isin
bme_meff_marketandorder_bmegate_v1_6.symbol_isin.size = 12

-- Display: Symbol Isin
bme_meff_marketandorder_bmegate_v1_6.symbol_isin.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Isin: No Value"
  end

  return "Symbol Isin: "..value
end

-- Dissect: Symbol Isin
bme_meff_marketandorder_bmegate_v1_6.symbol_isin.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.symbol_isin.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.symbol_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.symbol_isin, range, value, display)

  return offset + length, value
end

-- Test Production Ind
bme_meff_marketandorder_bmegate_v1_6.test_production_ind = {}

-- Size: Test Production Ind
bme_meff_marketandorder_bmegate_v1_6.test_production_ind.size = 1

-- Display: Test Production Ind
bme_meff_marketandorder_bmegate_v1_6.test_production_ind.display = function(value)
  return "Test Production Ind: "..value
end

-- Dissect: Test Production Ind
bme_meff_marketandorder_bmegate_v1_6.test_production_ind.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.test_production_ind.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.test_production_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.test_production_ind, range, value, display)

  return offset + length, value
end

-- Text C 58
bme_meff_marketandorder_bmegate_v1_6.text_c_58 = {}

-- Size: Text C 58
bme_meff_marketandorder_bmegate_v1_6.text_c_58.size = 58

-- Display: Text C 58
bme_meff_marketandorder_bmegate_v1_6.text_c_58.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text C 58: No Value"
  end

  return "Text C 58: "..value
end

-- Dissect: Text C 58
bme_meff_marketandorder_bmegate_v1_6.text_c_58.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.text_c_58.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.text_c_58.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.text_c_58, range, value, display)

  return offset + length, value
end

-- Text C 65
bme_meff_marketandorder_bmegate_v1_6.text_c_65 = {}

-- Size: Text C 65
bme_meff_marketandorder_bmegate_v1_6.text_c_65.size = 65

-- Display: Text C 65
bme_meff_marketandorder_bmegate_v1_6.text_c_65.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text C 65: No Value"
  end

  return "Text C 65: "..value
end

-- Dissect: Text C 65
bme_meff_marketandorder_bmegate_v1_6.text_c_65.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.text_c_65.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.text_c_65.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.text_c_65, range, value, display)

  return offset + length, value
end

-- Time In Force
bme_meff_marketandorder_bmegate_v1_6.time_in_force = {}

-- Size: Time In Force
bme_meff_marketandorder_bmegate_v1_6.time_in_force.size = 1

-- Display: Time In Force
bme_meff_marketandorder_bmegate_v1_6.time_in_force.display = function(value)
  return "Time In Force: "..value
end

-- Dissect: Time In Force
bme_meff_marketandorder_bmegate_v1_6.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Trad Ses Status
bme_meff_marketandorder_bmegate_v1_6.trad_ses_status = {}

-- Size: Trad Ses Status
bme_meff_marketandorder_bmegate_v1_6.trad_ses_status.size = 1

-- Display: Trad Ses Status
bme_meff_marketandorder_bmegate_v1_6.trad_ses_status.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.trad_ses_status.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.trad_ses_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.trad_ses_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.trad_ses_status, range, value, display)

  return offset + length, value
end

-- Trade Date
bme_meff_marketandorder_bmegate_v1_6.trade_date = {}

-- Size: Trade Date
bme_meff_marketandorder_bmegate_v1_6.trade_date.size = 8

-- Display: Trade Date
bme_meff_marketandorder_bmegate_v1_6.trade_date.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Trade Date: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trade Date
bme_meff_marketandorder_bmegate_v1_6.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bme_meff_marketandorder_bmegate_v1_6.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trade Price Condition
bme_meff_marketandorder_bmegate_v1_6.trade_price_condition = {}

-- Size: Trade Price Condition
bme_meff_marketandorder_bmegate_v1_6.trade_price_condition.size = 1

-- Display: Trade Price Condition
bme_meff_marketandorder_bmegate_v1_6.trade_price_condition.display = function(value)
  if value == " " then
    return "Trade Price Condition: Plain Vanilla Trade (<whitespace>)"
  end
  if value == "5" then
    return "Trade Price Condition: Non Price Forming Trade Formerly Defined As A Technical Trade Npft (5)"
  end

  return "Trade Price Condition: Unknown("..value..")"
end

-- Dissect: Trade Price Condition
bme_meff_marketandorder_bmegate_v1_6.trade_price_condition.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.trade_price_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.trade_price_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.trade_price_condition, range, value, display)

  return offset + length, value
end

-- Trade Session Date
bme_meff_marketandorder_bmegate_v1_6.trade_session_date = {}

-- Size: Trade Session Date
bme_meff_marketandorder_bmegate_v1_6.trade_session_date.size = 4

-- Display: Trade Session Date
bme_meff_marketandorder_bmegate_v1_6.trade_session_date.display = function(value)
  return string.format("Trade Session Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Trade Session Date
bme_meff_marketandorder_bmegate_v1_6.trade_session_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.trade_session_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_meff_marketandorder_bmegate_v1_6.trade_session_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.trade_session_date, range, value, display)

  return offset + length, value
end

-- Trade Type
bme_meff_marketandorder_bmegate_v1_6.trade_type = {}

-- Size: Trade Type
bme_meff_marketandorder_bmegate_v1_6.trade_type.size = 1

-- Display: Trade Type
bme_meff_marketandorder_bmegate_v1_6.trade_type.display = function(value)
  if value == "H" then
    return "Trade Type: Cross Trade During Trading Hours (H)"
  end
  if value == "L" then
    return "Trade Type: Delta (L)"
  end
  if value == "M" then
    return "Trade Type: Market (M)"
  end
  if value == "R" then
    return "Trade Type: Strategy Trades Time Spread Futures And Strategies (R)"
  end
  if value == "S" then
    return "Trade Type: Components Of Trade R (S)"
  end
  if value == "W" then
    return "Trade Type: Trade Amendment (W)"
  end
  if value == "X" then
    return "Trade Type: Countertrade (X)"
  end
  if value == "3" then
    return "Trade Type: Rfq (3)"
  end
  if value == "4" then
    return "Trade Type: Rfq X Rolling (4)"
  end
  if value == "6" then
    return "Trade Type: Rfq X Rolling During Auction (6)"
  end
  if value == "8" then
    return "Trade Type: Rfq X Rolling Amendment (8)"
  end
  if value == "9" then
    return "Trade Type: Rfq X Rolling During Auction Amendment (9)"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
bme_meff_marketandorder_bmegate_v1_6.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trader
bme_meff_marketandorder_bmegate_v1_6.trader = {}

-- Size: Trader
bme_meff_marketandorder_bmegate_v1_6.trader.size = 3

-- Display: Trader
bme_meff_marketandorder_bmegate_v1_6.trader.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trader: No Value"
  end

  return "Trader: "..value
end

-- Dissect: Trader
bme_meff_marketandorder_bmegate_v1_6.trader.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.trader.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.trader, range, value, display)

  return offset + length, value
end

-- Trader 2
bme_meff_marketandorder_bmegate_v1_6.trader_2 = {}

-- Size: Trader 2
bme_meff_marketandorder_bmegate_v1_6.trader_2.size = 3

-- Display: Trader 2
bme_meff_marketandorder_bmegate_v1_6.trader_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trader 2: No Value"
  end

  return "Trader 2: "..value
end

-- Dissect: Trader 2
bme_meff_marketandorder_bmegate_v1_6.trader_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.trader_2.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.trader_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.trader_2, range, value, display)

  return offset + length, value
end

-- Trading Obligation
bme_meff_marketandorder_bmegate_v1_6.trading_obligation = {}

-- Size: Trading Obligation
bme_meff_marketandorder_bmegate_v1_6.trading_obligation.size = 1

-- Display: Trading Obligation
bme_meff_marketandorder_bmegate_v1_6.trading_obligation.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.trading_obligation.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.trading_obligation.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.trading_obligation.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.trading_obligation, range, value, display)

  return offset + length, value
end

-- Trading Session Id
bme_meff_marketandorder_bmegate_v1_6.trading_session_id = {}

-- Size: Trading Session Id
bme_meff_marketandorder_bmegate_v1_6.trading_session_id.size = 1

-- Display: Trading Session Id
bme_meff_marketandorder_bmegate_v1_6.trading_session_id.display = function(value)
  if value == 100 then
    return "Trading Session Id: Continuous Trading (100)"
  end
  if value == 102 then
    return "Trading Session Id: Block Trades (102)"
  end
  if value == 105 then
    return "Trading Session Id: Normal Hours (105)"
  end
  if value == 106 then
    return "Trading Session Id: Delta And Basis Trade (106)"
  end
  if value == 107 then
    return "Trading Session Id: Bono Hours (107)"
  end
  if value == 108 then
    return "Trading Session Id: Cross Trades Normal Hours (108)"
  end
  if value == 109 then
    return "Trading Session Id: Cross Trades Bono Hours (109)"
  end
  if value == 115 then
    return "Trading Session Id: Rfq Ibex Futures Hours (115)"
  end
  if value == 116 then
    return "Trading Session Id: Rfq Normal Hours (116)"
  end
  if value == 117 then
    return "Trading Session Id: Rfq Bono Hours (117)"
  end
  if value == 118 then
    return "Trading Session Id: X Rolling On Stocks (118)"
  end

  return "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id
bme_meff_marketandorder_bmegate_v1_6.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Trading Session Sub Id
bme_meff_marketandorder_bmegate_v1_6.trading_session_sub_id = {}

-- Size: Trading Session Sub Id
bme_meff_marketandorder_bmegate_v1_6.trading_session_sub_id.size = 1

-- Display: Trading Session Sub Id
bme_meff_marketandorder_bmegate_v1_6.trading_session_sub_id.display = function(value)
  if value == 1 then
    return "Trading Session Sub Id: Pre Trading Not Started (1)"
  end
  if value == 2 then
    return "Trading Session Sub Id: Scheduled Opening Auction (2)"
  end
  if value == 3 then
    return "Trading Session Sub Id: Continuous Trading (3)"
  end
  if value == 4 then
    return "Trading Session Sub Id: Scheduled Closing Auction (4)"
  end
  if value == 5 then
    return "Trading Session Sub Id: Post Trading (5)"
  end
  if value == 6 then
    return "Trading Session Sub Id: Scheduled Intraday Auction (6)"
  end
  if value == 9 then
    return "Trading Session Sub Id: Unscheduled Intraday Auction (9)"
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
bme_meff_marketandorder_bmegate_v1_6.trading_session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.trading_session_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.trading_session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Trading Unit
bme_meff_marketandorder_bmegate_v1_6.trading_unit = {}

-- Size: Trading Unit
bme_meff_marketandorder_bmegate_v1_6.trading_unit.size = 1

-- Display: Trading Unit
bme_meff_marketandorder_bmegate_v1_6.trading_unit.display = function(value)
  return "Trading Unit: "..value
end

-- Dissect: Trading Unit
bme_meff_marketandorder_bmegate_v1_6.trading_unit.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.trading_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.trading_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.trading_unit, range, value, display)

  return offset + length, value
end

-- Transaction Category
bme_meff_marketandorder_bmegate_v1_6.transaction_category = {}

-- Size: Transaction Category
bme_meff_marketandorder_bmegate_v1_6.transaction_category.size = 1

-- Display: Transaction Category
bme_meff_marketandorder_bmegate_v1_6.transaction_category.display = function(value)
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
bme_meff_marketandorder_bmegate_v1_6.transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.transaction_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Transaction Date And Time
bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time = {}

-- Size: Transaction Date And Time
bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size = 8

-- Display: Transaction Date And Time
bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transaction Date And Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transaction Date And Time
bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.transaction_date_and_time, range, value, display)

  return offset + length, value
end

-- Trd Match Id
bme_meff_marketandorder_bmegate_v1_6.trd_match_id = {}

-- Size: Trd Match Id
bme_meff_marketandorder_bmegate_v1_6.trd_match_id.size = 4

-- Display: Trd Match Id
bme_meff_marketandorder_bmegate_v1_6.trd_match_id.display = function(value)
  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
bme_meff_marketandorder_bmegate_v1_6.trd_match_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.trd_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.trd_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Underlying Asset
bme_meff_marketandorder_bmegate_v1_6.underlying_asset = {}

-- Size: Underlying Asset
bme_meff_marketandorder_bmegate_v1_6.underlying_asset.size = 22

-- Display: Underlying Asset
bme_meff_marketandorder_bmegate_v1_6.underlying_asset.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Asset: No Value"
  end

  return "Underlying Asset: "..value
end

-- Dissect: Underlying Asset
bme_meff_marketandorder_bmegate_v1_6.underlying_asset.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.underlying_asset.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.underlying_asset.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.underlying_asset, range, value, display)

  return offset + length, value
end

-- Underlying Currency
bme_meff_marketandorder_bmegate_v1_6.underlying_currency = {}

-- Size: Underlying Currency
bme_meff_marketandorder_bmegate_v1_6.underlying_currency.size = 3

-- Display: Underlying Currency
bme_meff_marketandorder_bmegate_v1_6.underlying_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Currency: No Value"
  end

  return "Underlying Currency: "..value
end

-- Dissect: Underlying Currency
bme_meff_marketandorder_bmegate_v1_6.underlying_currency.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.underlying_currency.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.underlying_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.underlying_currency, range, value, display)

  return offset + length, value
end

-- Underlying Isin
bme_meff_marketandorder_bmegate_v1_6.underlying_isin = {}

-- Size: Underlying Isin
bme_meff_marketandorder_bmegate_v1_6.underlying_isin.size = 12

-- Display: Underlying Isin
bme_meff_marketandorder_bmegate_v1_6.underlying_isin.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Isin: No Value"
  end

  return "Underlying Isin: "..value
end

-- Dissect: Underlying Isin
bme_meff_marketandorder_bmegate_v1_6.underlying_isin.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.underlying_isin.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.underlying_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.underlying_isin, range, value, display)

  return offset + length, value
end

-- Underlying Security Issuer Lei
bme_meff_marketandorder_bmegate_v1_6.underlying_security_issuer_lei = {}

-- Size: Underlying Security Issuer Lei
bme_meff_marketandorder_bmegate_v1_6.underlying_security_issuer_lei.size = 20

-- Display: Underlying Security Issuer Lei
bme_meff_marketandorder_bmegate_v1_6.underlying_security_issuer_lei.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Security Issuer Lei: No Value"
  end

  return "Underlying Security Issuer Lei: "..value
end

-- Dissect: Underlying Security Issuer Lei
bme_meff_marketandorder_bmegate_v1_6.underlying_security_issuer_lei.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.underlying_security_issuer_lei.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.underlying_security_issuer_lei.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.underlying_security_issuer_lei, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
bme_meff_marketandorder_bmegate_v1_6.underlying_symbol = {}

-- Size: Underlying Symbol
bme_meff_marketandorder_bmegate_v1_6.underlying_symbol.size = 22

-- Display: Underlying Symbol
bme_meff_marketandorder_bmegate_v1_6.underlying_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Symbol: No Value"
  end

  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
bme_meff_marketandorder_bmegate_v1_6.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.underlying_symbol.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unit Of Measure
bme_meff_marketandorder_bmegate_v1_6.unit_of_measure = {}

-- Size: Unit Of Measure
bme_meff_marketandorder_bmegate_v1_6.unit_of_measure.size = 20

-- Display: Unit Of Measure
bme_meff_marketandorder_bmegate_v1_6.unit_of_measure.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Unit Of Measure: No Value"
  end

  return "Unit Of Measure: "..value
end

-- Dissect: Unit Of Measure
bme_meff_marketandorder_bmegate_v1_6.unit_of_measure.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.unit_of_measure.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.unit_of_measure.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.unit_of_measure, range, value, display)

  return offset + length, value
end

-- Username
bme_meff_marketandorder_bmegate_v1_6.username = {}

-- Size: Username
bme_meff_marketandorder_bmegate_v1_6.username.size = 7

-- Display: Username
bme_meff_marketandorder_bmegate_v1_6.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
bme_meff_marketandorder_bmegate_v1_6.username.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.username.size
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

  local display = bme_meff_marketandorder_bmegate_v1_6.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.username, range, value, display)

  return offset + length, value
end

-- X Rolling Buyer Markup
bme_meff_marketandorder_bmegate_v1_6.x_rolling_buyer_markup = {}

-- Size: X Rolling Buyer Markup
bme_meff_marketandorder_bmegate_v1_6.x_rolling_buyer_markup.size = 8

-- Display: X Rolling Buyer Markup
bme_meff_marketandorder_bmegate_v1_6.x_rolling_buyer_markup.display = function(value)
  return "X Rolling Buyer Markup: "..value
end

-- Translate: X Rolling Buyer Markup
bme_meff_marketandorder_bmegate_v1_6.x_rolling_buyer_markup.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: X Rolling Buyer Markup
bme_meff_marketandorder_bmegate_v1_6.x_rolling_buyer_markup.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.x_rolling_buyer_markup.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.x_rolling_buyer_markup.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.x_rolling_buyer_markup.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.x_rolling_buyer_markup, range, value, display)

  return offset + length, value
end

-- X Rolling Closing Type
bme_meff_marketandorder_bmegate_v1_6.x_rolling_closing_type = {}

-- Size: X Rolling Closing Type
bme_meff_marketandorder_bmegate_v1_6.x_rolling_closing_type.size = 1

-- Display: X Rolling Closing Type
bme_meff_marketandorder_bmegate_v1_6.x_rolling_closing_type.display = function(value)
  if value == "M" then
    return "X Rolling Closing Type: Market Default Value Value To Be Used In Flex X Rolling With A Closed Expiry Date And No Possibility To Modify It (M)"
  end
  if value == "1" then
    return "X Rolling Closing Type: By Buyer (1)"
  end
  if value == "2" then
    return "X Rolling Closing Type: By Seller (2)"
  end

  return "X Rolling Closing Type: Unknown("..value..")"
end

-- Dissect: X Rolling Closing Type
bme_meff_marketandorder_bmegate_v1_6.x_rolling_closing_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.x_rolling_closing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.x_rolling_closing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.x_rolling_closing_type, range, value, display)

  return offset + length, value
end

-- X Rolling Dividend Pay Date Diff
bme_meff_marketandorder_bmegate_v1_6.x_rolling_dividend_pay_date_diff = {}

-- Size: X Rolling Dividend Pay Date Diff
bme_meff_marketandorder_bmegate_v1_6.x_rolling_dividend_pay_date_diff.size = 2

-- Display: X Rolling Dividend Pay Date Diff
bme_meff_marketandorder_bmegate_v1_6.x_rolling_dividend_pay_date_diff.display = function(value)
  return "X Rolling Dividend Pay Date Diff: "..value
end

-- Dissect: X Rolling Dividend Pay Date Diff
bme_meff_marketandorder_bmegate_v1_6.x_rolling_dividend_pay_date_diff.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.x_rolling_dividend_pay_date_diff.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_meff_marketandorder_bmegate_v1_6.x_rolling_dividend_pay_date_diff.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.x_rolling_dividend_pay_date_diff, range, value, display)

  return offset + length, value
end

-- X Rolling Dividend Percentage
bme_meff_marketandorder_bmegate_v1_6.x_rolling_dividend_percentage = {}

-- Size: X Rolling Dividend Percentage
bme_meff_marketandorder_bmegate_v1_6.x_rolling_dividend_percentage.size = 8

-- Display: X Rolling Dividend Percentage
bme_meff_marketandorder_bmegate_v1_6.x_rolling_dividend_percentage.display = function(value)
  return "X Rolling Dividend Percentage: "..value
end

-- Translate: X Rolling Dividend Percentage
bme_meff_marketandorder_bmegate_v1_6.x_rolling_dividend_percentage.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: X Rolling Dividend Percentage
bme_meff_marketandorder_bmegate_v1_6.x_rolling_dividend_percentage.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.x_rolling_dividend_percentage.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.x_rolling_dividend_percentage.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.x_rolling_dividend_percentage.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.x_rolling_dividend_percentage, range, value, display)

  return offset + length, value
end

-- X Rolling Reference Buyer Rate
bme_meff_marketandorder_bmegate_v1_6.x_rolling_reference_buyer_rate = {}

-- Size: X Rolling Reference Buyer Rate
bme_meff_marketandorder_bmegate_v1_6.x_rolling_reference_buyer_rate.size = 1

-- Display: X Rolling Reference Buyer Rate
bme_meff_marketandorder_bmegate_v1_6.x_rolling_reference_buyer_rate.display = function(value)
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
    return "X Rolling Reference Buyer Rate: Na Used In Flex In The Financing Leg (<whitespace>)"
  end

  return "X Rolling Reference Buyer Rate: Unknown("..value..")"
end

-- Dissect: X Rolling Reference Buyer Rate
bme_meff_marketandorder_bmegate_v1_6.x_rolling_reference_buyer_rate.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.x_rolling_reference_buyer_rate.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.x_rolling_reference_buyer_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.x_rolling_reference_buyer_rate, range, value, display)

  return offset + length, value
end

-- X Rolling Reference Seller Rate
bme_meff_marketandorder_bmegate_v1_6.x_rolling_reference_seller_rate = {}

-- Size: X Rolling Reference Seller Rate
bme_meff_marketandorder_bmegate_v1_6.x_rolling_reference_seller_rate.size = 1

-- Display: X Rolling Reference Seller Rate
bme_meff_marketandorder_bmegate_v1_6.x_rolling_reference_seller_rate.display = function(value)
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
    return "X Rolling Reference Seller Rate: Na Used In Flex In The Financing Leg (<whitespace>)"
  end

  return "X Rolling Reference Seller Rate: Unknown("..value..")"
end

-- Dissect: X Rolling Reference Seller Rate
bme_meff_marketandorder_bmegate_v1_6.x_rolling_reference_seller_rate.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.x_rolling_reference_seller_rate.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_meff_marketandorder_bmegate_v1_6.x_rolling_reference_seller_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.x_rolling_reference_seller_rate, range, value, display)

  return offset + length, value
end

-- X Rolling Seller Markup
bme_meff_marketandorder_bmegate_v1_6.x_rolling_seller_markup = {}

-- Size: X Rolling Seller Markup
bme_meff_marketandorder_bmegate_v1_6.x_rolling_seller_markup.size = 8

-- Display: X Rolling Seller Markup
bme_meff_marketandorder_bmegate_v1_6.x_rolling_seller_markup.display = function(value)
  return "X Rolling Seller Markup: "..value
end

-- Translate: X Rolling Seller Markup
bme_meff_marketandorder_bmegate_v1_6.x_rolling_seller_markup.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: X Rolling Seller Markup
bme_meff_marketandorder_bmegate_v1_6.x_rolling_seller_markup.dissect = function(buffer, offset, packet, parent)
  local length = bme_meff_marketandorder_bmegate_v1_6.x_rolling_seller_markup.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_meff_marketandorder_bmegate_v1_6.x_rolling_seller_markup.translate(raw)
  local display = bme_meff_marketandorder_bmegate_v1_6.x_rolling_seller_markup.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.x_rolling_seller_markup, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Bme Meff MarketAndOrder BmeGate 1.6
-----------------------------------------------------------------------

-- Execution Private Information 1 Leg Sell Market Order Message
bme_meff_marketandorder_bmegate_v1_6.execution_private_information_1_leg_sell_market_order_message = {}

-- Size: Execution Private Information 1 Leg Sell Market Order Message
bme_meff_marketandorder_bmegate_v1_6.execution_private_information_1_leg_sell_market_order_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_segment_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trading_session_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trd_match_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trade_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_px.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.size + 
  bme_meff_marketandorder_bmegate_v1_6.designation.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_mechanism.size + 
  bme_meff_marketandorder_bmegate_v1_6.algo_flag.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_category.size + 
  bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.entry_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.priority.size + 
  bme_meff_marketandorder_bmegate_v1_6.price.size + 
  bme_meff_marketandorder_bmegate_v1_6.display_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.retail_cl_flag.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_order_id_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.entry_date_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.priority_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.price_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.display_qty_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_id_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_qty_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.ord_status_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.ccp_code_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.request_id_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_data_id_2_b_2.size

-- Display: Execution Private Information 1 Leg Sell Market Order Message
bme_meff_marketandorder_bmegate_v1_6.execution_private_information_1_leg_sell_market_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Private Information 1 Leg Sell Market Order Message
bme_meff_marketandorder_bmegate_v1_6.execution_private_information_1_leg_sell_market_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_meff_marketandorder_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_meff_marketandorder_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: U
  index, trd_match_id = bme_meff_marketandorder_bmegate_v1_6.trd_match_id.dissect(buffer, index, packet, parent)

  -- Trade Type: C
  index, trade_type = bme_meff_marketandorder_bmegate_v1_6.trade_type.dissect(buffer, index, packet, parent)

  -- Last Px: P
  index, last_px = bme_meff_marketandorder_bmegate_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Q
  index, last_qty = bme_meff_marketandorder_bmegate_v1_6.last_qty.dissect(buffer, index, packet, parent)

  -- Gross Trade Amt: A
  index, gross_trade_amt = bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.dissect(buffer, index, packet, parent)

  -- Designation: C
  index, designation = bme_meff_marketandorder_bmegate_v1_6.designation.dissect(buffer, index, packet, parent)

  -- Market Mechanism: C
  index, market_mechanism = bme_meff_marketandorder_bmegate_v1_6.market_mechanism.dissect(buffer, index, packet, parent)

  -- Algo Flag: F
  index, algo_flag = bme_meff_marketandorder_bmegate_v1_6.algo_flag.dissect(buffer, index, packet, parent)

  -- Transaction Category: C
  index, transaction_category = bme_meff_marketandorder_bmegate_v1_6.transaction_category.dissect(buffer, index, packet, parent)

  -- Strategy Trd Match Id: U
  index, strategy_trd_match_id = bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Entry Date: D
  index, entry_date = bme_meff_marketandorder_bmegate_v1_6.entry_date.dissect(buffer, index, packet, parent)

  -- Priority: U
  index, priority = bme_meff_marketandorder_bmegate_v1_6.priority.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_meff_marketandorder_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Display Qty: Q
  index, display_qty = bme_meff_marketandorder_bmegate_v1_6.display_qty.dissect(buffer, index, packet, parent)

  -- Retail Cl Flag: F
  index, retail_cl_flag = bme_meff_marketandorder_bmegate_v1_6.retail_cl_flag.dissect(buffer, index, packet, parent)

  -- Secondary Order Id 2: U
  index, secondary_order_id_2 = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id_2.dissect(buffer, index, packet, parent)

  -- Entry Date 2: D
  index, entry_date_2 = bme_meff_marketandorder_bmegate_v1_6.entry_date_2.dissect(buffer, index, packet, parent)

  -- Priority 2: U
  index, priority_2 = bme_meff_marketandorder_bmegate_v1_6.priority_2.dissect(buffer, index, packet, parent)

  -- Price 2: P
  index, price_2 = bme_meff_marketandorder_bmegate_v1_6.price_2.dissect(buffer, index, packet, parent)

  -- Display Qty 2: Q
  index, display_qty_2 = bme_meff_marketandorder_bmegate_v1_6.display_qty_2.dissect(buffer, index, packet, parent)

  -- Order Id 2: U
  index, order_id_2 = bme_meff_marketandorder_bmegate_v1_6.order_id_2.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id 2: U
  index, secondary_exec_id_2 = bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id_2.dissect(buffer, index, packet, parent)

  -- Order Qty 2: Q
  index, order_qty_2 = bme_meff_marketandorder_bmegate_v1_6.order_qty_2.dissect(buffer, index, packet, parent)

  -- Ord Status 2: C
  index, ord_status_2 = bme_meff_marketandorder_bmegate_v1_6.ord_status_2.dissect(buffer, index, packet, parent)

  -- Ccp Code 2: C
  index, ccp_code_2 = bme_meff_marketandorder_bmegate_v1_6.ccp_code_2.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator 2: C
  index, aggressor_indicator_2 = bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator_2.dissect(buffer, index, packet, parent)

  -- Request Id 2: U
  index, request_id_2 = bme_meff_marketandorder_bmegate_v1_6.request_id_2.dissect(buffer, index, packet, parent)

  -- Client Data Id 2 B 2: B
  index, client_data_id_2_b_2 = bme_meff_marketandorder_bmegate_v1_6.client_data_id_2_b_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Private Information 1 Leg Sell Market Order Message
bme_meff_marketandorder_bmegate_v1_6.execution_private_information_1_leg_sell_market_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.execution_private_information_1_leg_sell_market_order_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.execution_private_information_1_leg_sell_market_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.execution_private_information_1_leg_sell_market_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.execution_private_information_1_leg_sell_market_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Private Information 1 Leg Buy Market Order Message
bme_meff_marketandorder_bmegate_v1_6.execution_private_information_1_leg_buy_market_order_message = {}

-- Size: Execution Private Information 1 Leg Buy Market Order Message
bme_meff_marketandorder_bmegate_v1_6.execution_private_information_1_leg_buy_market_order_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_segment_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trading_session_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trd_match_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trade_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_px.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.size + 
  bme_meff_marketandorder_bmegate_v1_6.designation.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_mechanism.size + 
  bme_meff_marketandorder_bmegate_v1_6.algo_flag.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_category.size + 
  bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.entry_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.priority.size + 
  bme_meff_marketandorder_bmegate_v1_6.price.size + 
  bme_meff_marketandorder_bmegate_v1_6.display_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.ord_status.size + 
  bme_meff_marketandorder_bmegate_v1_6.ccp_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator.size + 
  bme_meff_marketandorder_bmegate_v1_6.request_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_data_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_order_id_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.entry_date_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.priority_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.price_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.display_qty_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.retail_cl_flag_2.size

-- Display: Execution Private Information 1 Leg Buy Market Order Message
bme_meff_marketandorder_bmegate_v1_6.execution_private_information_1_leg_buy_market_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Private Information 1 Leg Buy Market Order Message
bme_meff_marketandorder_bmegate_v1_6.execution_private_information_1_leg_buy_market_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_meff_marketandorder_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_meff_marketandorder_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: U
  index, trd_match_id = bme_meff_marketandorder_bmegate_v1_6.trd_match_id.dissect(buffer, index, packet, parent)

  -- Trade Type: C
  index, trade_type = bme_meff_marketandorder_bmegate_v1_6.trade_type.dissect(buffer, index, packet, parent)

  -- Last Px: P
  index, last_px = bme_meff_marketandorder_bmegate_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Q
  index, last_qty = bme_meff_marketandorder_bmegate_v1_6.last_qty.dissect(buffer, index, packet, parent)

  -- Gross Trade Amt: A
  index, gross_trade_amt = bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.dissect(buffer, index, packet, parent)

  -- Designation: C
  index, designation = bme_meff_marketandorder_bmegate_v1_6.designation.dissect(buffer, index, packet, parent)

  -- Market Mechanism: C
  index, market_mechanism = bme_meff_marketandorder_bmegate_v1_6.market_mechanism.dissect(buffer, index, packet, parent)

  -- Algo Flag: F
  index, algo_flag = bme_meff_marketandorder_bmegate_v1_6.algo_flag.dissect(buffer, index, packet, parent)

  -- Transaction Category: C
  index, transaction_category = bme_meff_marketandorder_bmegate_v1_6.transaction_category.dissect(buffer, index, packet, parent)

  -- Strategy Trd Match Id: U
  index, strategy_trd_match_id = bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Entry Date: D
  index, entry_date = bme_meff_marketandorder_bmegate_v1_6.entry_date.dissect(buffer, index, packet, parent)

  -- Priority: U
  index, priority = bme_meff_marketandorder_bmegate_v1_6.priority.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_meff_marketandorder_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Display Qty: Q
  index, display_qty = bme_meff_marketandorder_bmegate_v1_6.display_qty.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_meff_marketandorder_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: U
  index, secondary_exec_id = bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Q
  index, order_qty = bme_meff_marketandorder_bmegate_v1_6.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Status: C
  index, ord_status = bme_meff_marketandorder_bmegate_v1_6.ord_status.dissect(buffer, index, packet, parent)

  -- Ccp Code: C
  index, ccp_code = bme_meff_marketandorder_bmegate_v1_6.ccp_code.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator: C
  index, aggressor_indicator = bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator.dissect(buffer, index, packet, parent)

  -- Request Id: U
  index, request_id = bme_meff_marketandorder_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_meff_marketandorder_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  -- Secondary Order Id 2: U
  index, secondary_order_id_2 = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id_2.dissect(buffer, index, packet, parent)

  -- Entry Date 2: D
  index, entry_date_2 = bme_meff_marketandorder_bmegate_v1_6.entry_date_2.dissect(buffer, index, packet, parent)

  -- Priority 2: U
  index, priority_2 = bme_meff_marketandorder_bmegate_v1_6.priority_2.dissect(buffer, index, packet, parent)

  -- Price 2: P
  index, price_2 = bme_meff_marketandorder_bmegate_v1_6.price_2.dissect(buffer, index, packet, parent)

  -- Display Qty 2: Q
  index, display_qty_2 = bme_meff_marketandorder_bmegate_v1_6.display_qty_2.dissect(buffer, index, packet, parent)

  -- Retail Cl Flag 2: F
  index, retail_cl_flag_2 = bme_meff_marketandorder_bmegate_v1_6.retail_cl_flag_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Private Information 1 Leg Buy Market Order Message
bme_meff_marketandorder_bmegate_v1_6.execution_private_information_1_leg_buy_market_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.execution_private_information_1_leg_buy_market_order_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.execution_private_information_1_leg_buy_market_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.execution_private_information_1_leg_buy_market_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.execution_private_information_1_leg_buy_market_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Trade Amendment Or Cancellation 2 Legs Private Information Message
bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_2_legs_private_information_message = {}

-- Size: Trade Trade Amendment Or Cancellation 2 Legs Private Information Message
bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_2_legs_private_information_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_segment_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trading_session_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trd_match_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trade_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_px.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.size + 
  bme_meff_marketandorder_bmegate_v1_6.designation.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_mechanism.size + 
  bme_meff_marketandorder_bmegate_v1_6.algo_flag.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_category.size + 
  bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_change_flag_b_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.bencrfpt_flag.size + 
  bme_meff_marketandorder_bmegate_v1_6.trade_price_condition.size + 
  bme_meff_marketandorder_bmegate_v1_6.pre_trade_transparency_waiver.size + 
  bme_meff_marketandorder_bmegate_v1_6.deferral_waiver.size + 
  bme_meff_marketandorder_bmegate_v1_6.post_deferral_publication_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.publish_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.trade_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.trade_session_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.amended_trade_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.exec_ref_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.amended_trade_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.broker.size + 
  bme_meff_marketandorder_bmegate_v1_6.broker_trader.size + 
  bme_meff_marketandorder_bmegate_v1_6.broker_text.size + 
  bme_meff_marketandorder_bmegate_v1_6.cancel_pre_amendment.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.entry_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.priority.size + 
  bme_meff_marketandorder_bmegate_v1_6.price.size + 
  bme_meff_marketandorder_bmegate_v1_6.display_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.ord_status.size + 
  bme_meff_marketandorder_bmegate_v1_6.ccp_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator.size + 
  bme_meff_marketandorder_bmegate_v1_6.request_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_data_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.account.size + 
  bme_meff_marketandorder_bmegate_v1_6.dea_flag.size + 
  bme_meff_marketandorder_bmegate_v1_6.decisor_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.executor_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity.size + 
  bme_meff_marketandorder_bmegate_v1_6.give_in_member.size + 
  bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic.size + 
  bme_meff_marketandorder_bmegate_v1_6.alloc_text.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_capacity.size + 
  bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.persistence.size + 
  bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.member.size + 
  bme_meff_marketandorder_bmegate_v1_6.trader.size + 
  bme_meff_marketandorder_bmegate_v1_6.sub_member.size + 
  bme_meff_marketandorder_bmegate_v1_6.cross_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.ccv.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.external_member.size + 
  bme_meff_marketandorder_bmegate_v1_6.risk_reduction.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_order_id_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.entry_date_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.priority_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.price_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.display_qty_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_id_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_qty_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.ord_status_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.ccp_code_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.request_id_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_data_id_2_u_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_id_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.account_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.dea_flag_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.decisor_id_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.executor_id_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.give_in_member_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.alloc_text_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_capacity_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.persistence_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.member_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.trader_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.sub_member_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.cross_id_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.ccv_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_security_code_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.external_member_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.risk_reduction_2.size

-- Display: Trade Trade Amendment Or Cancellation 2 Legs Private Information Message
bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_2_legs_private_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Trade Amendment Or Cancellation 2 Legs Private Information Message
bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_2_legs_private_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_meff_marketandorder_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_meff_marketandorder_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: U
  index, trd_match_id = bme_meff_marketandorder_bmegate_v1_6.trd_match_id.dissect(buffer, index, packet, parent)

  -- Trade Type: C
  index, trade_type = bme_meff_marketandorder_bmegate_v1_6.trade_type.dissect(buffer, index, packet, parent)

  -- Last Px: P
  index, last_px = bme_meff_marketandorder_bmegate_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Q
  index, last_qty = bme_meff_marketandorder_bmegate_v1_6.last_qty.dissect(buffer, index, packet, parent)

  -- Gross Trade Amt: A
  index, gross_trade_amt = bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.dissect(buffer, index, packet, parent)

  -- Designation: C
  index, designation = bme_meff_marketandorder_bmegate_v1_6.designation.dissect(buffer, index, packet, parent)

  -- Market Mechanism: C
  index, market_mechanism = bme_meff_marketandorder_bmegate_v1_6.market_mechanism.dissect(buffer, index, packet, parent)

  -- Algo Flag: F
  index, algo_flag = bme_meff_marketandorder_bmegate_v1_6.algo_flag.dissect(buffer, index, packet, parent)

  -- Transaction Category: C
  index, transaction_category = bme_meff_marketandorder_bmegate_v1_6.transaction_category.dissect(buffer, index, packet, parent)

  -- Strategy Trd Match Id: U
  index, strategy_trd_match_id = bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id.dissect(buffer, index, packet, parent)

  -- Last Change Flag B 1: B
  index, last_change_flag_b_1 = bme_meff_marketandorder_bmegate_v1_6.last_change_flag_b_1.dissect(buffer, index, packet, parent)

  -- Bencrfpt Flag: C
  index, bencrfpt_flag = bme_meff_marketandorder_bmegate_v1_6.bencrfpt_flag.dissect(buffer, index, packet, parent)

  -- Trade Price Condition: C
  index, trade_price_condition = bme_meff_marketandorder_bmegate_v1_6.trade_price_condition.dissect(buffer, index, packet, parent)

  -- Pre Trade Transparency Waiver: C
  index, pre_trade_transparency_waiver = bme_meff_marketandorder_bmegate_v1_6.pre_trade_transparency_waiver.dissect(buffer, index, packet, parent)

  -- Deferral Waiver: C
  index, deferral_waiver = bme_meff_marketandorder_bmegate_v1_6.deferral_waiver.dissect(buffer, index, packet, parent)

  -- Post Deferral Publication Type: C
  index, post_deferral_publication_type = bme_meff_marketandorder_bmegate_v1_6.post_deferral_publication_type.dissect(buffer, index, packet, parent)

  -- Publish Date And Time: T
  index, publish_date_and_time = bme_meff_marketandorder_bmegate_v1_6.publish_date_and_time.dissect(buffer, index, packet, parent)

  -- Trade Date: T
  index, trade_date = bme_meff_marketandorder_bmegate_v1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Trade Session Date: D
  index, trade_session_date = bme_meff_marketandorder_bmegate_v1_6.trade_session_date.dissect(buffer, index, packet, parent)

  -- Amended Trade Type: C
  index, amended_trade_type = bme_meff_marketandorder_bmegate_v1_6.amended_trade_type.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: U
  index, exec_ref_id = bme_meff_marketandorder_bmegate_v1_6.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Amended Trade Date: D
  index, amended_trade_date = bme_meff_marketandorder_bmegate_v1_6.amended_trade_date.dissect(buffer, index, packet, parent)

  -- Broker: C
  index, broker = bme_meff_marketandorder_bmegate_v1_6.broker.dissect(buffer, index, packet, parent)

  -- Broker Trader: C
  index, broker_trader = bme_meff_marketandorder_bmegate_v1_6.broker_trader.dissect(buffer, index, packet, parent)

  -- Broker Text: C
  index, broker_text = bme_meff_marketandorder_bmegate_v1_6.broker_text.dissect(buffer, index, packet, parent)

  -- Cancel Pre Amendment: F
  index, cancel_pre_amendment = bme_meff_marketandorder_bmegate_v1_6.cancel_pre_amendment.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Entry Date: D
  index, entry_date = bme_meff_marketandorder_bmegate_v1_6.entry_date.dissect(buffer, index, packet, parent)

  -- Priority: U
  index, priority = bme_meff_marketandorder_bmegate_v1_6.priority.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_meff_marketandorder_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Display Qty: Q
  index, display_qty = bme_meff_marketandorder_bmegate_v1_6.display_qty.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_meff_marketandorder_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: U
  index, secondary_exec_id = bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Q
  index, order_qty = bme_meff_marketandorder_bmegate_v1_6.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Status: C
  index, ord_status = bme_meff_marketandorder_bmegate_v1_6.ord_status.dissect(buffer, index, packet, parent)

  -- Ccp Code: C
  index, ccp_code = bme_meff_marketandorder_bmegate_v1_6.ccp_code.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator: C
  index, aggressor_indicator = bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator.dissect(buffer, index, packet, parent)

  -- Request Id: U
  index, request_id = bme_meff_marketandorder_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_meff_marketandorder_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: F
  index, algorithmic_trade_indicator = bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator.dissect(buffer, index, packet, parent)

  -- Client Id: U
  index, client_id = bme_meff_marketandorder_bmegate_v1_6.client_id.dissect(buffer, index, packet, parent)

  -- Account: C
  index, account = bme_meff_marketandorder_bmegate_v1_6.account.dissect(buffer, index, packet, parent)

  -- Dea Flag: F
  index, dea_flag = bme_meff_marketandorder_bmegate_v1_6.dea_flag.dissect(buffer, index, packet, parent)

  -- Decisor Id: U
  index, decisor_id = bme_meff_marketandorder_bmegate_v1_6.decisor_id.dissect(buffer, index, packet, parent)

  -- Executor Id: U
  index, executor_id = bme_meff_marketandorder_bmegate_v1_6.executor_id.dissect(buffer, index, packet, parent)

  -- Liquidity Provision Activity: F
  index, liquidity_provision_activity = bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity.dissect(buffer, index, packet, parent)

  -- Give In Member: C
  index, give_in_member = bme_meff_marketandorder_bmegate_v1_6.give_in_member.dissect(buffer, index, packet, parent)

  -- Firm Mnemonic: C
  index, firm_mnemonic = bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic.dissect(buffer, index, packet, parent)

  -- Alloc Text: C
  index, alloc_text = bme_meff_marketandorder_bmegate_v1_6.alloc_text.dissect(buffer, index, packet, parent)

  -- Last Capacity: C
  index, last_capacity = bme_meff_marketandorder_bmegate_v1_6.last_capacity.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Id: U
  index, self_match_prevention_id = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id.dissect(buffer, index, packet, parent)

  -- Persistence: C
  index, persistence = bme_meff_marketandorder_bmegate_v1_6.persistence.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Type: C
  index, self_match_prevention_type = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type.dissect(buffer, index, packet, parent)

  -- Member: C
  index, member = bme_meff_marketandorder_bmegate_v1_6.member.dissect(buffer, index, packet, parent)

  -- Trader: C
  index, trader = bme_meff_marketandorder_bmegate_v1_6.trader.dissect(buffer, index, packet, parent)

  -- Sub Member: C
  index, sub_member = bme_meff_marketandorder_bmegate_v1_6.sub_member.dissect(buffer, index, packet, parent)

  -- Cross Id: U
  index, cross_id = bme_meff_marketandorder_bmegate_v1_6.cross_id.dissect(buffer, index, packet, parent)

  -- Ccv: C
  index, ccv = bme_meff_marketandorder_bmegate_v1_6.ccv.dissect(buffer, index, packet, parent)

  -- Order Security Code: U
  index, order_security_code = bme_meff_marketandorder_bmegate_v1_6.order_security_code.dissect(buffer, index, packet, parent)

  -- External Member: C
  index, external_member = bme_meff_marketandorder_bmegate_v1_6.external_member.dissect(buffer, index, packet, parent)

  -- Risk Reduction: F
  index, risk_reduction = bme_meff_marketandorder_bmegate_v1_6.risk_reduction.dissect(buffer, index, packet, parent)

  -- Secondary Order Id 2: U
  index, secondary_order_id_2 = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id_2.dissect(buffer, index, packet, parent)

  -- Entry Date 2: D
  index, entry_date_2 = bme_meff_marketandorder_bmegate_v1_6.entry_date_2.dissect(buffer, index, packet, parent)

  -- Priority 2: U
  index, priority_2 = bme_meff_marketandorder_bmegate_v1_6.priority_2.dissect(buffer, index, packet, parent)

  -- Price 2: P
  index, price_2 = bme_meff_marketandorder_bmegate_v1_6.price_2.dissect(buffer, index, packet, parent)

  -- Display Qty 2: Q
  index, display_qty_2 = bme_meff_marketandorder_bmegate_v1_6.display_qty_2.dissect(buffer, index, packet, parent)

  -- Order Id 2: U
  index, order_id_2 = bme_meff_marketandorder_bmegate_v1_6.order_id_2.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id 2: U
  index, secondary_exec_id_2 = bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id_2.dissect(buffer, index, packet, parent)

  -- Order Qty 2: Q
  index, order_qty_2 = bme_meff_marketandorder_bmegate_v1_6.order_qty_2.dissect(buffer, index, packet, parent)

  -- Ord Status 2: C
  index, ord_status_2 = bme_meff_marketandorder_bmegate_v1_6.ord_status_2.dissect(buffer, index, packet, parent)

  -- Ccp Code 2: C
  index, ccp_code_2 = bme_meff_marketandorder_bmegate_v1_6.ccp_code_2.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator 2: C
  index, aggressor_indicator_2 = bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator_2.dissect(buffer, index, packet, parent)

  -- Request Id 2: U
  index, request_id_2 = bme_meff_marketandorder_bmegate_v1_6.request_id_2.dissect(buffer, index, packet, parent)

  -- Client Data Id 2 U 2: U
  index, client_data_id_2_u_2 = bme_meff_marketandorder_bmegate_v1_6.client_data_id_2_u_2.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator 2: F
  index, algorithmic_trade_indicator_2 = bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator_2.dissect(buffer, index, packet, parent)

  -- Client Id 2: U
  index, client_id_2 = bme_meff_marketandorder_bmegate_v1_6.client_id_2.dissect(buffer, index, packet, parent)

  -- Account 2: C
  index, account_2 = bme_meff_marketandorder_bmegate_v1_6.account_2.dissect(buffer, index, packet, parent)

  -- Dea Flag 2: F
  index, dea_flag_2 = bme_meff_marketandorder_bmegate_v1_6.dea_flag_2.dissect(buffer, index, packet, parent)

  -- Decisor Id 2: U
  index, decisor_id_2 = bme_meff_marketandorder_bmegate_v1_6.decisor_id_2.dissect(buffer, index, packet, parent)

  -- Executor Id 2: U
  index, executor_id_2 = bme_meff_marketandorder_bmegate_v1_6.executor_id_2.dissect(buffer, index, packet, parent)

  -- Liquidity Provision Activity 2: F
  index, liquidity_provision_activity_2 = bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity_2.dissect(buffer, index, packet, parent)

  -- Give In Member 2: C
  index, give_in_member_2 = bme_meff_marketandorder_bmegate_v1_6.give_in_member_2.dissect(buffer, index, packet, parent)

  -- Firm Mnemonic 2: C
  index, firm_mnemonic_2 = bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic_2.dissect(buffer, index, packet, parent)

  -- Alloc Text 2: C
  index, alloc_text_2 = bme_meff_marketandorder_bmegate_v1_6.alloc_text_2.dissect(buffer, index, packet, parent)

  -- Last Capacity 2: C
  index, last_capacity_2 = bme_meff_marketandorder_bmegate_v1_6.last_capacity_2.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Id 2: U
  index, self_match_prevention_id_2 = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id_2.dissect(buffer, index, packet, parent)

  -- Persistence 2: C
  index, persistence_2 = bme_meff_marketandorder_bmegate_v1_6.persistence_2.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Type 2: C
  index, self_match_prevention_type_2 = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type_2.dissect(buffer, index, packet, parent)

  -- Member 2: C
  index, member_2 = bme_meff_marketandorder_bmegate_v1_6.member_2.dissect(buffer, index, packet, parent)

  -- Trader 2: C
  index, trader_2 = bme_meff_marketandorder_bmegate_v1_6.trader_2.dissect(buffer, index, packet, parent)

  -- Sub Member 2: C
  index, sub_member_2 = bme_meff_marketandorder_bmegate_v1_6.sub_member_2.dissect(buffer, index, packet, parent)

  -- Cross Id 2: U
  index, cross_id_2 = bme_meff_marketandorder_bmegate_v1_6.cross_id_2.dissect(buffer, index, packet, parent)

  -- Ccv 2: C
  index, ccv_2 = bme_meff_marketandorder_bmegate_v1_6.ccv_2.dissect(buffer, index, packet, parent)

  -- Order Security Code 2: U
  index, order_security_code_2 = bme_meff_marketandorder_bmegate_v1_6.order_security_code_2.dissect(buffer, index, packet, parent)

  -- External Member 2: C
  index, external_member_2 = bme_meff_marketandorder_bmegate_v1_6.external_member_2.dissect(buffer, index, packet, parent)

  -- Risk Reduction 2: F
  index, risk_reduction_2 = bme_meff_marketandorder_bmegate_v1_6.risk_reduction_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Trade Amendment Or Cancellation 2 Legs Private Information Message
bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_2_legs_private_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.trade_trade_amendment_or_cancellation_2_legs_private_information_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_2_legs_private_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_2_legs_private_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_2_legs_private_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Trade Amendment Or Cancellation 1 Leg Sell Private Information Message
bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_sell_private_information_message = {}

-- Size: Trade Trade Amendment Or Cancellation 1 Leg Sell Private Information Message
bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_sell_private_information_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_segment_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trading_session_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trd_match_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trade_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_px.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.size + 
  bme_meff_marketandorder_bmegate_v1_6.designation.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_mechanism.size + 
  bme_meff_marketandorder_bmegate_v1_6.algo_flag.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_category.size + 
  bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_change_flag_b_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.bencrfpt_flag.size + 
  bme_meff_marketandorder_bmegate_v1_6.trade_price_condition.size + 
  bme_meff_marketandorder_bmegate_v1_6.pre_trade_transparency_waiver.size + 
  bme_meff_marketandorder_bmegate_v1_6.deferral_waiver.size + 
  bme_meff_marketandorder_bmegate_v1_6.post_deferral_publication_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.publish_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.trade_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.trade_session_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.amended_trade_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.exec_ref_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.amended_trade_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.broker.size + 
  bme_meff_marketandorder_bmegate_v1_6.broker_trader.size + 
  bme_meff_marketandorder_bmegate_v1_6.broker_text.size + 
  bme_meff_marketandorder_bmegate_v1_6.cancel_pre_amendment.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.entry_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.priority.size + 
  bme_meff_marketandorder_bmegate_v1_6.price.size + 
  bme_meff_marketandorder_bmegate_v1_6.display_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.ord_status.size + 
  bme_meff_marketandorder_bmegate_v1_6.ccp_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator.size + 
  bme_meff_marketandorder_bmegate_v1_6.request_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_data_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.account.size + 
  bme_meff_marketandorder_bmegate_v1_6.dea_flag.size + 
  bme_meff_marketandorder_bmegate_v1_6.decisor_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.executor_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity.size + 
  bme_meff_marketandorder_bmegate_v1_6.give_in_member.size + 
  bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic.size + 
  bme_meff_marketandorder_bmegate_v1_6.alloc_text.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_capacity.size + 
  bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.persistence.size + 
  bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.member.size + 
  bme_meff_marketandorder_bmegate_v1_6.trader.size + 
  bme_meff_marketandorder_bmegate_v1_6.sub_member.size + 
  bme_meff_marketandorder_bmegate_v1_6.cross_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.ccv.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.external_member.size + 
  bme_meff_marketandorder_bmegate_v1_6.risk_reduction.size

-- Display: Trade Trade Amendment Or Cancellation 1 Leg Sell Private Information Message
bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_sell_private_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Trade Amendment Or Cancellation 1 Leg Sell Private Information Message
bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_sell_private_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_meff_marketandorder_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_meff_marketandorder_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: U
  index, trd_match_id = bme_meff_marketandorder_bmegate_v1_6.trd_match_id.dissect(buffer, index, packet, parent)

  -- Trade Type: C
  index, trade_type = bme_meff_marketandorder_bmegate_v1_6.trade_type.dissect(buffer, index, packet, parent)

  -- Last Px: P
  index, last_px = bme_meff_marketandorder_bmegate_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Q
  index, last_qty = bme_meff_marketandorder_bmegate_v1_6.last_qty.dissect(buffer, index, packet, parent)

  -- Gross Trade Amt: A
  index, gross_trade_amt = bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.dissect(buffer, index, packet, parent)

  -- Designation: C
  index, designation = bme_meff_marketandorder_bmegate_v1_6.designation.dissect(buffer, index, packet, parent)

  -- Market Mechanism: C
  index, market_mechanism = bme_meff_marketandorder_bmegate_v1_6.market_mechanism.dissect(buffer, index, packet, parent)

  -- Algo Flag: F
  index, algo_flag = bme_meff_marketandorder_bmegate_v1_6.algo_flag.dissect(buffer, index, packet, parent)

  -- Transaction Category: C
  index, transaction_category = bme_meff_marketandorder_bmegate_v1_6.transaction_category.dissect(buffer, index, packet, parent)

  -- Strategy Trd Match Id: U
  index, strategy_trd_match_id = bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id.dissect(buffer, index, packet, parent)

  -- Last Change Flag B 1: B
  index, last_change_flag_b_1 = bme_meff_marketandorder_bmegate_v1_6.last_change_flag_b_1.dissect(buffer, index, packet, parent)

  -- Bencrfpt Flag: C
  index, bencrfpt_flag = bme_meff_marketandorder_bmegate_v1_6.bencrfpt_flag.dissect(buffer, index, packet, parent)

  -- Trade Price Condition: C
  index, trade_price_condition = bme_meff_marketandorder_bmegate_v1_6.trade_price_condition.dissect(buffer, index, packet, parent)

  -- Pre Trade Transparency Waiver: C
  index, pre_trade_transparency_waiver = bme_meff_marketandorder_bmegate_v1_6.pre_trade_transparency_waiver.dissect(buffer, index, packet, parent)

  -- Deferral Waiver: C
  index, deferral_waiver = bme_meff_marketandorder_bmegate_v1_6.deferral_waiver.dissect(buffer, index, packet, parent)

  -- Post Deferral Publication Type: C
  index, post_deferral_publication_type = bme_meff_marketandorder_bmegate_v1_6.post_deferral_publication_type.dissect(buffer, index, packet, parent)

  -- Publish Date And Time: T
  index, publish_date_and_time = bme_meff_marketandorder_bmegate_v1_6.publish_date_and_time.dissect(buffer, index, packet, parent)

  -- Trade Date: T
  index, trade_date = bme_meff_marketandorder_bmegate_v1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Trade Session Date: D
  index, trade_session_date = bme_meff_marketandorder_bmegate_v1_6.trade_session_date.dissect(buffer, index, packet, parent)

  -- Amended Trade Type: C
  index, amended_trade_type = bme_meff_marketandorder_bmegate_v1_6.amended_trade_type.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: U
  index, exec_ref_id = bme_meff_marketandorder_bmegate_v1_6.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Amended Trade Date: D
  index, amended_trade_date = bme_meff_marketandorder_bmegate_v1_6.amended_trade_date.dissect(buffer, index, packet, parent)

  -- Broker: C
  index, broker = bme_meff_marketandorder_bmegate_v1_6.broker.dissect(buffer, index, packet, parent)

  -- Broker Trader: C
  index, broker_trader = bme_meff_marketandorder_bmegate_v1_6.broker_trader.dissect(buffer, index, packet, parent)

  -- Broker Text: C
  index, broker_text = bme_meff_marketandorder_bmegate_v1_6.broker_text.dissect(buffer, index, packet, parent)

  -- Cancel Pre Amendment: F
  index, cancel_pre_amendment = bme_meff_marketandorder_bmegate_v1_6.cancel_pre_amendment.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Entry Date: D
  index, entry_date = bme_meff_marketandorder_bmegate_v1_6.entry_date.dissect(buffer, index, packet, parent)

  -- Priority: U
  index, priority = bme_meff_marketandorder_bmegate_v1_6.priority.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_meff_marketandorder_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Display Qty: Q
  index, display_qty = bme_meff_marketandorder_bmegate_v1_6.display_qty.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_meff_marketandorder_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: U
  index, secondary_exec_id = bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Q
  index, order_qty = bme_meff_marketandorder_bmegate_v1_6.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Status: C
  index, ord_status = bme_meff_marketandorder_bmegate_v1_6.ord_status.dissect(buffer, index, packet, parent)

  -- Ccp Code: C
  index, ccp_code = bme_meff_marketandorder_bmegate_v1_6.ccp_code.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator: C
  index, aggressor_indicator = bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator.dissect(buffer, index, packet, parent)

  -- Request Id: U
  index, request_id = bme_meff_marketandorder_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_meff_marketandorder_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: F
  index, algorithmic_trade_indicator = bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator.dissect(buffer, index, packet, parent)

  -- Client Id: U
  index, client_id = bme_meff_marketandorder_bmegate_v1_6.client_id.dissect(buffer, index, packet, parent)

  -- Account: C
  index, account = bme_meff_marketandorder_bmegate_v1_6.account.dissect(buffer, index, packet, parent)

  -- Dea Flag: F
  index, dea_flag = bme_meff_marketandorder_bmegate_v1_6.dea_flag.dissect(buffer, index, packet, parent)

  -- Decisor Id: U
  index, decisor_id = bme_meff_marketandorder_bmegate_v1_6.decisor_id.dissect(buffer, index, packet, parent)

  -- Executor Id: U
  index, executor_id = bme_meff_marketandorder_bmegate_v1_6.executor_id.dissect(buffer, index, packet, parent)

  -- Liquidity Provision Activity: F
  index, liquidity_provision_activity = bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity.dissect(buffer, index, packet, parent)

  -- Give In Member: C
  index, give_in_member = bme_meff_marketandorder_bmegate_v1_6.give_in_member.dissect(buffer, index, packet, parent)

  -- Firm Mnemonic: C
  index, firm_mnemonic = bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic.dissect(buffer, index, packet, parent)

  -- Alloc Text: C
  index, alloc_text = bme_meff_marketandorder_bmegate_v1_6.alloc_text.dissect(buffer, index, packet, parent)

  -- Last Capacity: C
  index, last_capacity = bme_meff_marketandorder_bmegate_v1_6.last_capacity.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Id: U
  index, self_match_prevention_id = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id.dissect(buffer, index, packet, parent)

  -- Persistence: C
  index, persistence = bme_meff_marketandorder_bmegate_v1_6.persistence.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Type: C
  index, self_match_prevention_type = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type.dissect(buffer, index, packet, parent)

  -- Member: C
  index, member = bme_meff_marketandorder_bmegate_v1_6.member.dissect(buffer, index, packet, parent)

  -- Trader: C
  index, trader = bme_meff_marketandorder_bmegate_v1_6.trader.dissect(buffer, index, packet, parent)

  -- Sub Member: C
  index, sub_member = bme_meff_marketandorder_bmegate_v1_6.sub_member.dissect(buffer, index, packet, parent)

  -- Cross Id: U
  index, cross_id = bme_meff_marketandorder_bmegate_v1_6.cross_id.dissect(buffer, index, packet, parent)

  -- Ccv: C
  index, ccv = bme_meff_marketandorder_bmegate_v1_6.ccv.dissect(buffer, index, packet, parent)

  -- Order Security Code: U
  index, order_security_code = bme_meff_marketandorder_bmegate_v1_6.order_security_code.dissect(buffer, index, packet, parent)

  -- External Member: C
  index, external_member = bme_meff_marketandorder_bmegate_v1_6.external_member.dissect(buffer, index, packet, parent)

  -- Risk Reduction: F
  index, risk_reduction = bme_meff_marketandorder_bmegate_v1_6.risk_reduction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Trade Amendment Or Cancellation 1 Leg Sell Private Information Message
bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_sell_private_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.trade_trade_amendment_or_cancellation_1_leg_sell_private_information_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_sell_private_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_sell_private_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_sell_private_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Trade Amendment Or Cancellation 1 Leg Buy Private Information Message
bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_buy_private_information_message = {}

-- Size: Trade Trade Amendment Or Cancellation 1 Leg Buy Private Information Message
bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_buy_private_information_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_segment_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trading_session_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trd_match_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trade_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_px.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.size + 
  bme_meff_marketandorder_bmegate_v1_6.designation.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_mechanism.size + 
  bme_meff_marketandorder_bmegate_v1_6.algo_flag.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_category.size + 
  bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_change_flag_b_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.bencrfpt_flag.size + 
  bme_meff_marketandorder_bmegate_v1_6.trade_price_condition.size + 
  bme_meff_marketandorder_bmegate_v1_6.pre_trade_transparency_waiver.size + 
  bme_meff_marketandorder_bmegate_v1_6.deferral_waiver.size + 
  bme_meff_marketandorder_bmegate_v1_6.post_deferral_publication_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.publish_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.trade_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.trade_session_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.amended_trade_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.exec_ref_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.amended_trade_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.broker.size + 
  bme_meff_marketandorder_bmegate_v1_6.broker_trader.size + 
  bme_meff_marketandorder_bmegate_v1_6.broker_text.size + 
  bme_meff_marketandorder_bmegate_v1_6.cancel_pre_amendment.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.entry_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.priority.size + 
  bme_meff_marketandorder_bmegate_v1_6.price.size + 
  bme_meff_marketandorder_bmegate_v1_6.display_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.ord_status.size + 
  bme_meff_marketandorder_bmegate_v1_6.ccp_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator.size + 
  bme_meff_marketandorder_bmegate_v1_6.request_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_data_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.account.size + 
  bme_meff_marketandorder_bmegate_v1_6.dea_flag.size + 
  bme_meff_marketandorder_bmegate_v1_6.decisor_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.executor_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity.size + 
  bme_meff_marketandorder_bmegate_v1_6.give_in_member.size + 
  bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic.size + 
  bme_meff_marketandorder_bmegate_v1_6.alloc_text.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_capacity.size + 
  bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.persistence.size + 
  bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.member.size + 
  bme_meff_marketandorder_bmegate_v1_6.trader.size + 
  bme_meff_marketandorder_bmegate_v1_6.sub_member.size + 
  bme_meff_marketandorder_bmegate_v1_6.cross_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.ccv.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.external_member.size + 
  bme_meff_marketandorder_bmegate_v1_6.risk_reduction.size

-- Display: Trade Trade Amendment Or Cancellation 1 Leg Buy Private Information Message
bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_buy_private_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Trade Amendment Or Cancellation 1 Leg Buy Private Information Message
bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_buy_private_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_meff_marketandorder_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_meff_marketandorder_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: U
  index, trd_match_id = bme_meff_marketandorder_bmegate_v1_6.trd_match_id.dissect(buffer, index, packet, parent)

  -- Trade Type: C
  index, trade_type = bme_meff_marketandorder_bmegate_v1_6.trade_type.dissect(buffer, index, packet, parent)

  -- Last Px: P
  index, last_px = bme_meff_marketandorder_bmegate_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Q
  index, last_qty = bme_meff_marketandorder_bmegate_v1_6.last_qty.dissect(buffer, index, packet, parent)

  -- Gross Trade Amt: A
  index, gross_trade_amt = bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.dissect(buffer, index, packet, parent)

  -- Designation: C
  index, designation = bme_meff_marketandorder_bmegate_v1_6.designation.dissect(buffer, index, packet, parent)

  -- Market Mechanism: C
  index, market_mechanism = bme_meff_marketandorder_bmegate_v1_6.market_mechanism.dissect(buffer, index, packet, parent)

  -- Algo Flag: F
  index, algo_flag = bme_meff_marketandorder_bmegate_v1_6.algo_flag.dissect(buffer, index, packet, parent)

  -- Transaction Category: C
  index, transaction_category = bme_meff_marketandorder_bmegate_v1_6.transaction_category.dissect(buffer, index, packet, parent)

  -- Strategy Trd Match Id: U
  index, strategy_trd_match_id = bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id.dissect(buffer, index, packet, parent)

  -- Last Change Flag B 1: B
  index, last_change_flag_b_1 = bme_meff_marketandorder_bmegate_v1_6.last_change_flag_b_1.dissect(buffer, index, packet, parent)

  -- Bencrfpt Flag: C
  index, bencrfpt_flag = bme_meff_marketandorder_bmegate_v1_6.bencrfpt_flag.dissect(buffer, index, packet, parent)

  -- Trade Price Condition: C
  index, trade_price_condition = bme_meff_marketandorder_bmegate_v1_6.trade_price_condition.dissect(buffer, index, packet, parent)

  -- Pre Trade Transparency Waiver: C
  index, pre_trade_transparency_waiver = bme_meff_marketandorder_bmegate_v1_6.pre_trade_transparency_waiver.dissect(buffer, index, packet, parent)

  -- Deferral Waiver: C
  index, deferral_waiver = bme_meff_marketandorder_bmegate_v1_6.deferral_waiver.dissect(buffer, index, packet, parent)

  -- Post Deferral Publication Type: C
  index, post_deferral_publication_type = bme_meff_marketandorder_bmegate_v1_6.post_deferral_publication_type.dissect(buffer, index, packet, parent)

  -- Publish Date And Time: T
  index, publish_date_and_time = bme_meff_marketandorder_bmegate_v1_6.publish_date_and_time.dissect(buffer, index, packet, parent)

  -- Trade Date: T
  index, trade_date = bme_meff_marketandorder_bmegate_v1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Trade Session Date: D
  index, trade_session_date = bme_meff_marketandorder_bmegate_v1_6.trade_session_date.dissect(buffer, index, packet, parent)

  -- Amended Trade Type: C
  index, amended_trade_type = bme_meff_marketandorder_bmegate_v1_6.amended_trade_type.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: U
  index, exec_ref_id = bme_meff_marketandorder_bmegate_v1_6.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Amended Trade Date: D
  index, amended_trade_date = bme_meff_marketandorder_bmegate_v1_6.amended_trade_date.dissect(buffer, index, packet, parent)

  -- Broker: C
  index, broker = bme_meff_marketandorder_bmegate_v1_6.broker.dissect(buffer, index, packet, parent)

  -- Broker Trader: C
  index, broker_trader = bme_meff_marketandorder_bmegate_v1_6.broker_trader.dissect(buffer, index, packet, parent)

  -- Broker Text: C
  index, broker_text = bme_meff_marketandorder_bmegate_v1_6.broker_text.dissect(buffer, index, packet, parent)

  -- Cancel Pre Amendment: F
  index, cancel_pre_amendment = bme_meff_marketandorder_bmegate_v1_6.cancel_pre_amendment.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Entry Date: D
  index, entry_date = bme_meff_marketandorder_bmegate_v1_6.entry_date.dissect(buffer, index, packet, parent)

  -- Priority: U
  index, priority = bme_meff_marketandorder_bmegate_v1_6.priority.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_meff_marketandorder_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Display Qty: Q
  index, display_qty = bme_meff_marketandorder_bmegate_v1_6.display_qty.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_meff_marketandorder_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: U
  index, secondary_exec_id = bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Q
  index, order_qty = bme_meff_marketandorder_bmegate_v1_6.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Status: C
  index, ord_status = bme_meff_marketandorder_bmegate_v1_6.ord_status.dissect(buffer, index, packet, parent)

  -- Ccp Code: C
  index, ccp_code = bme_meff_marketandorder_bmegate_v1_6.ccp_code.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator: C
  index, aggressor_indicator = bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator.dissect(buffer, index, packet, parent)

  -- Request Id: U
  index, request_id = bme_meff_marketandorder_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_meff_marketandorder_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: F
  index, algorithmic_trade_indicator = bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator.dissect(buffer, index, packet, parent)

  -- Client Id: U
  index, client_id = bme_meff_marketandorder_bmegate_v1_6.client_id.dissect(buffer, index, packet, parent)

  -- Account: C
  index, account = bme_meff_marketandorder_bmegate_v1_6.account.dissect(buffer, index, packet, parent)

  -- Dea Flag: F
  index, dea_flag = bme_meff_marketandorder_bmegate_v1_6.dea_flag.dissect(buffer, index, packet, parent)

  -- Decisor Id: U
  index, decisor_id = bme_meff_marketandorder_bmegate_v1_6.decisor_id.dissect(buffer, index, packet, parent)

  -- Executor Id: U
  index, executor_id = bme_meff_marketandorder_bmegate_v1_6.executor_id.dissect(buffer, index, packet, parent)

  -- Liquidity Provision Activity: F
  index, liquidity_provision_activity = bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity.dissect(buffer, index, packet, parent)

  -- Give In Member: C
  index, give_in_member = bme_meff_marketandorder_bmegate_v1_6.give_in_member.dissect(buffer, index, packet, parent)

  -- Firm Mnemonic: C
  index, firm_mnemonic = bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic.dissect(buffer, index, packet, parent)

  -- Alloc Text: C
  index, alloc_text = bme_meff_marketandorder_bmegate_v1_6.alloc_text.dissect(buffer, index, packet, parent)

  -- Last Capacity: C
  index, last_capacity = bme_meff_marketandorder_bmegate_v1_6.last_capacity.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Id: U
  index, self_match_prevention_id = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id.dissect(buffer, index, packet, parent)

  -- Persistence: C
  index, persistence = bme_meff_marketandorder_bmegate_v1_6.persistence.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Type: C
  index, self_match_prevention_type = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type.dissect(buffer, index, packet, parent)

  -- Member: C
  index, member = bme_meff_marketandorder_bmegate_v1_6.member.dissect(buffer, index, packet, parent)

  -- Trader: C
  index, trader = bme_meff_marketandorder_bmegate_v1_6.trader.dissect(buffer, index, packet, parent)

  -- Sub Member: C
  index, sub_member = bme_meff_marketandorder_bmegate_v1_6.sub_member.dissect(buffer, index, packet, parent)

  -- Cross Id: U
  index, cross_id = bme_meff_marketandorder_bmegate_v1_6.cross_id.dissect(buffer, index, packet, parent)

  -- Ccv: C
  index, ccv = bme_meff_marketandorder_bmegate_v1_6.ccv.dissect(buffer, index, packet, parent)

  -- Order Security Code: U
  index, order_security_code = bme_meff_marketandorder_bmegate_v1_6.order_security_code.dissect(buffer, index, packet, parent)

  -- External Member: C
  index, external_member = bme_meff_marketandorder_bmegate_v1_6.external_member.dissect(buffer, index, packet, parent)

  -- Risk Reduction: F
  index, risk_reduction = bme_meff_marketandorder_bmegate_v1_6.risk_reduction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Trade Amendment Or Cancellation 1 Leg Buy Private Information Message
bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_buy_private_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.trade_trade_amendment_or_cancellation_1_leg_buy_private_information_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_buy_private_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_buy_private_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_buy_private_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Private Information 2 Legs Message
bme_meff_marketandorder_bmegate_v1_6.execution_private_information_2_legs_message = {}

-- Size: Execution Private Information 2 Legs Message
bme_meff_marketandorder_bmegate_v1_6.execution_private_information_2_legs_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_segment_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trading_session_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trd_match_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trade_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_px.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.size + 
  bme_meff_marketandorder_bmegate_v1_6.designation.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_mechanism.size + 
  bme_meff_marketandorder_bmegate_v1_6.algo_flag.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_category.size + 
  bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.entry_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.priority.size + 
  bme_meff_marketandorder_bmegate_v1_6.price.size + 
  bme_meff_marketandorder_bmegate_v1_6.display_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.ord_status.size + 
  bme_meff_marketandorder_bmegate_v1_6.ccp_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator.size + 
  bme_meff_marketandorder_bmegate_v1_6.request_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_data_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_order_id_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.entry_date_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.priority_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.price_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.display_qty_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_id_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_qty_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.ord_status_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.ccp_code_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.request_id_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_data_id_2_u_2.size

-- Display: Execution Private Information 2 Legs Message
bme_meff_marketandorder_bmegate_v1_6.execution_private_information_2_legs_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Private Information 2 Legs Message
bme_meff_marketandorder_bmegate_v1_6.execution_private_information_2_legs_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_meff_marketandorder_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_meff_marketandorder_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: U
  index, trd_match_id = bme_meff_marketandorder_bmegate_v1_6.trd_match_id.dissect(buffer, index, packet, parent)

  -- Trade Type: C
  index, trade_type = bme_meff_marketandorder_bmegate_v1_6.trade_type.dissect(buffer, index, packet, parent)

  -- Last Px: P
  index, last_px = bme_meff_marketandorder_bmegate_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Q
  index, last_qty = bme_meff_marketandorder_bmegate_v1_6.last_qty.dissect(buffer, index, packet, parent)

  -- Gross Trade Amt: A
  index, gross_trade_amt = bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.dissect(buffer, index, packet, parent)

  -- Designation: C
  index, designation = bme_meff_marketandorder_bmegate_v1_6.designation.dissect(buffer, index, packet, parent)

  -- Market Mechanism: C
  index, market_mechanism = bme_meff_marketandorder_bmegate_v1_6.market_mechanism.dissect(buffer, index, packet, parent)

  -- Algo Flag: F
  index, algo_flag = bme_meff_marketandorder_bmegate_v1_6.algo_flag.dissect(buffer, index, packet, parent)

  -- Transaction Category: C
  index, transaction_category = bme_meff_marketandorder_bmegate_v1_6.transaction_category.dissect(buffer, index, packet, parent)

  -- Strategy Trd Match Id: U
  index, strategy_trd_match_id = bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Entry Date: D
  index, entry_date = bme_meff_marketandorder_bmegate_v1_6.entry_date.dissect(buffer, index, packet, parent)

  -- Priority: U
  index, priority = bme_meff_marketandorder_bmegate_v1_6.priority.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_meff_marketandorder_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Display Qty: Q
  index, display_qty = bme_meff_marketandorder_bmegate_v1_6.display_qty.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_meff_marketandorder_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: U
  index, secondary_exec_id = bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Q
  index, order_qty = bme_meff_marketandorder_bmegate_v1_6.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Status: C
  index, ord_status = bme_meff_marketandorder_bmegate_v1_6.ord_status.dissect(buffer, index, packet, parent)

  -- Ccp Code: C
  index, ccp_code = bme_meff_marketandorder_bmegate_v1_6.ccp_code.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator: C
  index, aggressor_indicator = bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator.dissect(buffer, index, packet, parent)

  -- Request Id: U
  index, request_id = bme_meff_marketandorder_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_meff_marketandorder_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  -- Secondary Order Id 2: U
  index, secondary_order_id_2 = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id_2.dissect(buffer, index, packet, parent)

  -- Entry Date 2: D
  index, entry_date_2 = bme_meff_marketandorder_bmegate_v1_6.entry_date_2.dissect(buffer, index, packet, parent)

  -- Priority 2: U
  index, priority_2 = bme_meff_marketandorder_bmegate_v1_6.priority_2.dissect(buffer, index, packet, parent)

  -- Price 2: P
  index, price_2 = bme_meff_marketandorder_bmegate_v1_6.price_2.dissect(buffer, index, packet, parent)

  -- Display Qty 2: Q
  index, display_qty_2 = bme_meff_marketandorder_bmegate_v1_6.display_qty_2.dissect(buffer, index, packet, parent)

  -- Order Id 2: U
  index, order_id_2 = bme_meff_marketandorder_bmegate_v1_6.order_id_2.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id 2: U
  index, secondary_exec_id_2 = bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id_2.dissect(buffer, index, packet, parent)

  -- Order Qty 2: Q
  index, order_qty_2 = bme_meff_marketandorder_bmegate_v1_6.order_qty_2.dissect(buffer, index, packet, parent)

  -- Ord Status 2: C
  index, ord_status_2 = bme_meff_marketandorder_bmegate_v1_6.ord_status_2.dissect(buffer, index, packet, parent)

  -- Ccp Code 2: C
  index, ccp_code_2 = bme_meff_marketandorder_bmegate_v1_6.ccp_code_2.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator 2: C
  index, aggressor_indicator_2 = bme_meff_marketandorder_bmegate_v1_6.aggressor_indicator_2.dissect(buffer, index, packet, parent)

  -- Request Id 2: U
  index, request_id_2 = bme_meff_marketandorder_bmegate_v1_6.request_id_2.dissect(buffer, index, packet, parent)

  -- Client Data Id 2 U 2: U
  index, client_data_id_2_u_2 = bme_meff_marketandorder_bmegate_v1_6.client_data_id_2_u_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Private Information 2 Legs Message
bme_meff_marketandorder_bmegate_v1_6.execution_private_information_2_legs_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.execution_private_information_2_legs_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.execution_private_information_2_legs_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.execution_private_information_2_legs_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.execution_private_information_2_legs_message.fields(buffer, offset, packet, parent)
  end
end

-- Business Message Reject Message
bme_meff_marketandorder_bmegate_v1_6.business_message_reject_message = {}

-- Size: Business Message Reject Message
bme_meff_marketandorder_bmegate_v1_6.business_message_reject_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.ref_msg_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.business_reject_reason.size + 
  bme_meff_marketandorder_bmegate_v1_6.text_c_65.size

-- Display: Business Message Reject Message
bme_meff_marketandorder_bmegate_v1_6.business_message_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Message Reject Message
bme_meff_marketandorder_bmegate_v1_6.business_message_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Ref Msg Type: U
  index, ref_msg_type = bme_meff_marketandorder_bmegate_v1_6.ref_msg_type.dissect(buffer, index, packet, parent)

  -- Business Reject Reason: U
  index, business_reject_reason = bme_meff_marketandorder_bmegate_v1_6.business_reject_reason.dissect(buffer, index, packet, parent)

  -- Text C 65: C
  index, text_c_65 = bme_meff_marketandorder_bmegate_v1_6.text_c_65.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Message Reject Message
bme_meff_marketandorder_bmegate_v1_6.business_message_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.business_message_reject_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.business_message_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.business_message_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.business_message_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Orderquote Cancellation Reject Message
bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_reject_message = {}

-- Size: Mass Orderquote Cancellation Reject Message
bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_reject_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.trading_unit.size + 
  bme_meff_marketandorder_bmegate_v1_6.mass_cancel_reject_reason.size

-- Display: Mass Orderquote Cancellation Reject Message
bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Orderquote Cancellation Reject Message
bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Trading Unit: U
  index, trading_unit = bme_meff_marketandorder_bmegate_v1_6.trading_unit.dissect(buffer, index, packet, parent)

  -- Mass Cancel Reject Reason: C
  index, mass_cancel_reject_reason = bme_meff_marketandorder_bmegate_v1_6.mass_cancel_reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Orderquote Cancellation Reject Message
bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.mass_orderquote_cancellation_reject_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Orderquote Cancellation Completion Message
bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_completion_message = {}

-- Size: Mass Orderquote Cancellation Completion Message
bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_completion_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.trading_unit.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_or_quote_cancel.size + 
  bme_meff_marketandorder_bmegate_v1_6.request_id.size

-- Display: Mass Orderquote Cancellation Completion Message
bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_completion_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Orderquote Cancellation Completion Message
bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_completion_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Trading Unit: U
  index, trading_unit = bme_meff_marketandorder_bmegate_v1_6.trading_unit.dissect(buffer, index, packet, parent)

  -- Order Or Quote Cancel: C
  index, order_or_quote_cancel = bme_meff_marketandorder_bmegate_v1_6.order_or_quote_cancel.dissect(buffer, index, packet, parent)

  -- Request Id: U
  index, request_id = bme_meff_marketandorder_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Orderquote Cancellation Completion Message
bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_completion_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.mass_orderquote_cancellation_completion_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_completion_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_completion_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_completion_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Reject Message
bme_meff_marketandorder_bmegate_v1_6.order_cancel_reject_message = {}

-- Size: Order Cancel Reject Message
bme_meff_marketandorder_bmegate_v1_6.order_cancel_reject_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.ord_status.size + 
  bme_meff_marketandorder_bmegate_v1_6.cxl_rej_response_to.size + 
  bme_meff_marketandorder_bmegate_v1_6.cxl_rej_reason.size

-- Display: Order Cancel Reject Message
bme_meff_marketandorder_bmegate_v1_6.order_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Reject Message
bme_meff_marketandorder_bmegate_v1_6.order_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_meff_marketandorder_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Ord Status: C
  index, ord_status = bme_meff_marketandorder_bmegate_v1_6.ord_status.dissect(buffer, index, packet, parent)

  -- Cxl Rej Response To: C
  index, cxl_rej_response_to = bme_meff_marketandorder_bmegate_v1_6.cxl_rej_response_to.dissect(buffer, index, packet, parent)

  -- Cxl Rej Reason: C
  index, cxl_rej_reason = bme_meff_marketandorder_bmegate_v1_6.cxl_rej_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Reject Message
bme_meff_marketandorder_bmegate_v1_6.order_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_cancel_reject_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.order_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.order_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.order_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Status Message
bme_meff_marketandorder_bmegate_v1_6.quote_status_message = {}

-- Size: Quote Status Message
bme_meff_marketandorder_bmegate_v1_6.quote_status_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_order_id_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.priority.size + 
  bme_meff_marketandorder_bmegate_v1_6.price.size + 
  bme_meff_marketandorder_bmegate_v1_6.display_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.priority_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.price_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.display_qty_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.ord_status.size + 
  bme_meff_marketandorder_bmegate_v1_6.ord_rej_reason.size + 
  bme_meff_marketandorder_bmegate_v1_6.exec_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_id_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_qty_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.ord_status_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.ord_rej_reason_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.exec_type_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.request_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_data_id.size

-- Display: Quote Status Message
bme_meff_marketandorder_bmegate_v1_6.quote_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Status Message
bme_meff_marketandorder_bmegate_v1_6.quote_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Secondary Order Id 2: U
  index, secondary_order_id_2 = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id_2.dissect(buffer, index, packet, parent)

  -- Priority: U
  index, priority = bme_meff_marketandorder_bmegate_v1_6.priority.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_meff_marketandorder_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Display Qty: Q
  index, display_qty = bme_meff_marketandorder_bmegate_v1_6.display_qty.dissect(buffer, index, packet, parent)

  -- Priority 2: U
  index, priority_2 = bme_meff_marketandorder_bmegate_v1_6.priority_2.dissect(buffer, index, packet, parent)

  -- Price 2: P
  index, price_2 = bme_meff_marketandorder_bmegate_v1_6.price_2.dissect(buffer, index, packet, parent)

  -- Display Qty 2: Q
  index, display_qty_2 = bme_meff_marketandorder_bmegate_v1_6.display_qty_2.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_meff_marketandorder_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: U
  index, secondary_exec_id = bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Q
  index, order_qty = bme_meff_marketandorder_bmegate_v1_6.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Status: C
  index, ord_status = bme_meff_marketandorder_bmegate_v1_6.ord_status.dissect(buffer, index, packet, parent)

  -- Ord Rej Reason: C
  index, ord_rej_reason = bme_meff_marketandorder_bmegate_v1_6.ord_rej_reason.dissect(buffer, index, packet, parent)

  -- Exec Type: C
  index, exec_type = bme_meff_marketandorder_bmegate_v1_6.exec_type.dissect(buffer, index, packet, parent)

  -- Order Id 2: U
  index, order_id_2 = bme_meff_marketandorder_bmegate_v1_6.order_id_2.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id 2: U
  index, secondary_exec_id_2 = bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id_2.dissect(buffer, index, packet, parent)

  -- Order Qty 2: Q
  index, order_qty_2 = bme_meff_marketandorder_bmegate_v1_6.order_qty_2.dissect(buffer, index, packet, parent)

  -- Ord Status 2: C
  index, ord_status_2 = bme_meff_marketandorder_bmegate_v1_6.ord_status_2.dissect(buffer, index, packet, parent)

  -- Ord Rej Reason 2: C
  index, ord_rej_reason_2 = bme_meff_marketandorder_bmegate_v1_6.ord_rej_reason_2.dissect(buffer, index, packet, parent)

  -- Exec Type 2: C
  index, exec_type_2 = bme_meff_marketandorder_bmegate_v1_6.exec_type_2.dissect(buffer, index, packet, parent)

  -- Request Id: U
  index, request_id = bme_meff_marketandorder_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_meff_marketandorder_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Status Message
bme_meff_marketandorder_bmegate_v1_6.quote_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.quote_status_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.quote_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.quote_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.quote_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Order Status Message
bme_meff_marketandorder_bmegate_v1_6.simple_order_status_message = {}

-- Size: Simple Order Status Message
bme_meff_marketandorder_bmegate_v1_6.simple_order_status_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.entry_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.side.size + 
  bme_meff_marketandorder_bmegate_v1_6.priority.size + 
  bme_meff_marketandorder_bmegate_v1_6.price.size + 
  bme_meff_marketandorder_bmegate_v1_6.display_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.ord_status.size + 
  bme_meff_marketandorder_bmegate_v1_6.ord_rej_reason.size + 
  bme_meff_marketandorder_bmegate_v1_6.exec_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.request_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_data_id.size

-- Display: Simple Order Status Message
bme_meff_marketandorder_bmegate_v1_6.simple_order_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Order Status Message
bme_meff_marketandorder_bmegate_v1_6.simple_order_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Entry Date: D
  index, entry_date = bme_meff_marketandorder_bmegate_v1_6.entry_date.dissect(buffer, index, packet, parent)

  -- Side: C
  index, side = bme_meff_marketandorder_bmegate_v1_6.side.dissect(buffer, index, packet, parent)

  -- Priority: U
  index, priority = bme_meff_marketandorder_bmegate_v1_6.priority.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_meff_marketandorder_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Display Qty: Q
  index, display_qty = bme_meff_marketandorder_bmegate_v1_6.display_qty.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_meff_marketandorder_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: U
  index, secondary_exec_id = bme_meff_marketandorder_bmegate_v1_6.secondary_exec_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Q
  index, order_qty = bme_meff_marketandorder_bmegate_v1_6.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Status: C
  index, ord_status = bme_meff_marketandorder_bmegate_v1_6.ord_status.dissect(buffer, index, packet, parent)

  -- Ord Rej Reason: C
  index, ord_rej_reason = bme_meff_marketandorder_bmegate_v1_6.ord_rej_reason.dissect(buffer, index, packet, parent)

  -- Exec Type: C
  index, exec_type = bme_meff_marketandorder_bmegate_v1_6.exec_type.dissect(buffer, index, packet, parent)

  -- Request Id: U
  index, request_id = bme_meff_marketandorder_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_meff_marketandorder_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Order Status Message
bme_meff_marketandorder_bmegate_v1_6.simple_order_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.simple_order_status_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.simple_order_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.simple_order_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.simple_order_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Delta Protection Parameters Ack Nack Message
bme_meff_marketandorder_bmegate_v1_6.delta_protection_parameters_ack_nack_message = {}

-- Size: Delta Protection Parameters Ack Nack Message
bme_meff_marketandorder_bmegate_v1_6.delta_protection_parameters_ack_nack_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.request_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.status.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_group.size + 
  bme_meff_marketandorder_bmegate_v1_6.product_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.delta_protection_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.delta_protection_volume.size

-- Display: Delta Protection Parameters Ack Nack Message
bme_meff_marketandorder_bmegate_v1_6.delta_protection_parameters_ack_nack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delta Protection Parameters Ack Nack Message
bme_meff_marketandorder_bmegate_v1_6.delta_protection_parameters_ack_nack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Request Id: U
  index, request_id = bme_meff_marketandorder_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Status: F
  index, status = bme_meff_marketandorder_bmegate_v1_6.status.dissect(buffer, index, packet, parent)

  -- Security Group: C
  index, security_group = bme_meff_marketandorder_bmegate_v1_6.security_group.dissect(buffer, index, packet, parent)

  -- Product Type: C
  index, product_type = bme_meff_marketandorder_bmegate_v1_6.product_type.dissect(buffer, index, packet, parent)

  -- Delta Protection Time: U
  index, delta_protection_time = bme_meff_marketandorder_bmegate_v1_6.delta_protection_time.dissect(buffer, index, packet, parent)

  -- Delta Protection Volume: Q
  index, delta_protection_volume = bme_meff_marketandorder_bmegate_v1_6.delta_protection_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delta Protection Parameters Ack Nack Message
bme_meff_marketandorder_bmegate_v1_6.delta_protection_parameters_ack_nack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.delta_protection_parameters_ack_nack_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.delta_protection_parameters_ack_nack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.delta_protection_parameters_ack_nack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.delta_protection_parameters_ack_nack_message.fields(buffer, offset, packet, parent)
  end
end

-- Order And Quote Client Data Parameters Ack Nack Message
bme_meff_marketandorder_bmegate_v1_6.order_and_quote_client_data_parameters_ack_nack_message = {}

-- Size: Order And Quote Client Data Parameters Ack Nack Message
bme_meff_marketandorder_bmegate_v1_6.order_and_quote_client_data_parameters_ack_nack_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.request_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.status.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_data_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.account.size + 
  bme_meff_marketandorder_bmegate_v1_6.dea_flag.size + 
  bme_meff_marketandorder_bmegate_v1_6.decisor_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.executor_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity.size + 
  bme_meff_marketandorder_bmegate_v1_6.give_in_member.size + 
  bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic.size + 
  bme_meff_marketandorder_bmegate_v1_6.alloc_text.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_capacity.size + 
  bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.persistence.size + 
  bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_data_reference.size

-- Display: Order And Quote Client Data Parameters Ack Nack Message
bme_meff_marketandorder_bmegate_v1_6.order_and_quote_client_data_parameters_ack_nack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order And Quote Client Data Parameters Ack Nack Message
bme_meff_marketandorder_bmegate_v1_6.order_and_quote_client_data_parameters_ack_nack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Request Id: U
  index, request_id = bme_meff_marketandorder_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Status: F
  index, status = bme_meff_marketandorder_bmegate_v1_6.status.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_meff_marketandorder_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: F
  index, algorithmic_trade_indicator = bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator.dissect(buffer, index, packet, parent)

  -- Client Id: U
  index, client_id = bme_meff_marketandorder_bmegate_v1_6.client_id.dissect(buffer, index, packet, parent)

  -- Account: C
  index, account = bme_meff_marketandorder_bmegate_v1_6.account.dissect(buffer, index, packet, parent)

  -- Dea Flag: F
  index, dea_flag = bme_meff_marketandorder_bmegate_v1_6.dea_flag.dissect(buffer, index, packet, parent)

  -- Decisor Id: U
  index, decisor_id = bme_meff_marketandorder_bmegate_v1_6.decisor_id.dissect(buffer, index, packet, parent)

  -- Executor Id: U
  index, executor_id = bme_meff_marketandorder_bmegate_v1_6.executor_id.dissect(buffer, index, packet, parent)

  -- Liquidity Provision Activity: F
  index, liquidity_provision_activity = bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity.dissect(buffer, index, packet, parent)

  -- Give In Member: C
  index, give_in_member = bme_meff_marketandorder_bmegate_v1_6.give_in_member.dissect(buffer, index, packet, parent)

  -- Firm Mnemonic: C
  index, firm_mnemonic = bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic.dissect(buffer, index, packet, parent)

  -- Alloc Text: C
  index, alloc_text = bme_meff_marketandorder_bmegate_v1_6.alloc_text.dissect(buffer, index, packet, parent)

  -- Last Capacity: C
  index, last_capacity = bme_meff_marketandorder_bmegate_v1_6.last_capacity.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Id: U
  index, self_match_prevention_id = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id.dissect(buffer, index, packet, parent)

  -- Persistence: C
  index, persistence = bme_meff_marketandorder_bmegate_v1_6.persistence.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Type: C
  index, self_match_prevention_type = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type.dissect(buffer, index, packet, parent)

  -- Client Data Reference: C
  index, client_data_reference = bme_meff_marketandorder_bmegate_v1_6.client_data_reference.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order And Quote Client Data Parameters Ack Nack Message
bme_meff_marketandorder_bmegate_v1_6.order_and_quote_client_data_parameters_ack_nack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_and_quote_client_data_parameters_ack_nack_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.order_and_quote_client_data_parameters_ack_nack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.order_and_quote_client_data_parameters_ack_nack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.order_and_quote_client_data_parameters_ack_nack_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Orderquote Cancellation Message
bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_message = {}

-- Size: Mass Orderquote Cancellation Message
bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_message.size =
  bme_meff_marketandorder_bmegate_v1_6.request_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.account.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_group.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.product_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.side.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_or_quote_cancel.size

-- Display: Mass Orderquote Cancellation Message
bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Orderquote Cancellation Message
bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: U
  index, request_id = bme_meff_marketandorder_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Account: C
  index, account = bme_meff_marketandorder_bmegate_v1_6.account.dissect(buffer, index, packet, parent)

  -- Security Group: C
  index, security_group = bme_meff_marketandorder_bmegate_v1_6.security_group.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Product Type: C
  index, product_type = bme_meff_marketandorder_bmegate_v1_6.product_type.dissect(buffer, index, packet, parent)

  -- Side: C
  index, side = bme_meff_marketandorder_bmegate_v1_6.side.dissect(buffer, index, packet, parent)

  -- Order Or Quote Cancel: C
  index, order_or_quote_cancel = bme_meff_marketandorder_bmegate_v1_6.order_or_quote_cancel.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Orderquote Cancellation Message
bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.mass_orderquote_cancellation_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Cancellation Request Message
bme_meff_marketandorder_bmegate_v1_6.quote_cancellation_request_message = {}

-- Size: Quote Cancellation Request Message
bme_meff_marketandorder_bmegate_v1_6.quote_cancellation_request_message.size =
  bme_meff_marketandorder_bmegate_v1_6.request_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_data_id.size

-- Display: Quote Cancellation Request Message
bme_meff_marketandorder_bmegate_v1_6.quote_cancellation_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancellation Request Message
bme_meff_marketandorder_bmegate_v1_6.quote_cancellation_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: U
  index, request_id = bme_meff_marketandorder_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_meff_marketandorder_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancellation Request Message
bme_meff_marketandorder_bmegate_v1_6.quote_cancellation_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.quote_cancellation_request_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.quote_cancellation_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.quote_cancellation_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.quote_cancellation_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Modification Request Message
bme_meff_marketandorder_bmegate_v1_6.quote_modification_request_message = {}

-- Size: Quote Modification Request Message
bme_meff_marketandorder_bmegate_v1_6.quote_modification_request_message.size =
  bme_meff_marketandorder_bmegate_v1_6.request_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_data_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.bid_px_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.ask_px_1.size

-- Display: Quote Modification Request Message
bme_meff_marketandorder_bmegate_v1_6.quote_modification_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Modification Request Message
bme_meff_marketandorder_bmegate_v1_6.quote_modification_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: U
  index, request_id = bme_meff_marketandorder_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_meff_marketandorder_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  -- Bid Px 1: P
  index, bid_px_1 = bme_meff_marketandorder_bmegate_v1_6.bid_px_1.dissect(buffer, index, packet, parent)

  -- Ask Px 1: P
  index, ask_px_1 = bme_meff_marketandorder_bmegate_v1_6.ask_px_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Modification Request Message
bme_meff_marketandorder_bmegate_v1_6.quote_modification_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.quote_modification_request_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.quote_modification_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.quote_modification_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.quote_modification_request_message.fields(buffer, offset, packet, parent)
  end
end

-- New Quote Message
bme_meff_marketandorder_bmegate_v1_6.new_quote_message = {}

-- Size: New Quote Message
bme_meff_marketandorder_bmegate_v1_6.new_quote_message.size =
  bme_meff_marketandorder_bmegate_v1_6.request_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_data_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.bid_size_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.bid_px_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.ask_size_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.ask_px_1.size

-- Display: New Quote Message
bme_meff_marketandorder_bmegate_v1_6.new_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Quote Message
bme_meff_marketandorder_bmegate_v1_6.new_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: U
  index, request_id = bme_meff_marketandorder_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_meff_marketandorder_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  -- Bid Size 1: Q
  index, bid_size_1 = bme_meff_marketandorder_bmegate_v1_6.bid_size_1.dissect(buffer, index, packet, parent)

  -- Bid Px 1: P
  index, bid_px_1 = bme_meff_marketandorder_bmegate_v1_6.bid_px_1.dissect(buffer, index, packet, parent)

  -- Ask Size 1: Q
  index, ask_size_1 = bme_meff_marketandorder_bmegate_v1_6.ask_size_1.dissect(buffer, index, packet, parent)

  -- Ask Px 1: P
  index, ask_px_1 = bme_meff_marketandorder_bmegate_v1_6.ask_px_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Quote Message
bme_meff_marketandorder_bmegate_v1_6.new_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.new_quote_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.new_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.new_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.new_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation Request Message
bme_meff_marketandorder_bmegate_v1_6.order_cancellation_request_message = {}

-- Size: Order Cancellation Request Message
bme_meff_marketandorder_bmegate_v1_6.order_cancellation_request_message.size =
  bme_meff_marketandorder_bmegate_v1_6.request_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_id.size

-- Display: Order Cancellation Request Message
bme_meff_marketandorder_bmegate_v1_6.order_cancellation_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Request Message
bme_meff_marketandorder_bmegate_v1_6.order_cancellation_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: U
  index, request_id = bme_meff_marketandorder_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_meff_marketandorder_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation Request Message
bme_meff_marketandorder_bmegate_v1_6.order_cancellation_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_cancellation_request_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.order_cancellation_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.order_cancellation_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.order_cancellation_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Order Modification With Client Data Message
bme_meff_marketandorder_bmegate_v1_6.simple_order_modification_with_client_data_message = {}

-- Size: Simple Order Modification With Client Data Message
bme_meff_marketandorder_bmegate_v1_6.simple_order_modification_with_client_data_message.size =
  bme_meff_marketandorder_bmegate_v1_6.request_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.side.size + 
  bme_meff_marketandorder_bmegate_v1_6.price.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.account.size + 
  bme_meff_marketandorder_bmegate_v1_6.dea_flag.size + 
  bme_meff_marketandorder_bmegate_v1_6.decisor_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.executor_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity.size + 
  bme_meff_marketandorder_bmegate_v1_6.give_in_member.size + 
  bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic.size + 
  bme_meff_marketandorder_bmegate_v1_6.alloc_text.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_capacity.size + 
  bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.persistence.size + 
  bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_data_reference.size

-- Display: Simple Order Modification With Client Data Message
bme_meff_marketandorder_bmegate_v1_6.simple_order_modification_with_client_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Order Modification With Client Data Message
bme_meff_marketandorder_bmegate_v1_6.simple_order_modification_with_client_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: U
  index, request_id = bme_meff_marketandorder_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_meff_marketandorder_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Side: C
  index, side = bme_meff_marketandorder_bmegate_v1_6.side.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_meff_marketandorder_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Q
  index, order_qty = bme_meff_marketandorder_bmegate_v1_6.order_qty.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: F
  index, algorithmic_trade_indicator = bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator.dissect(buffer, index, packet, parent)

  -- Client Id: U
  index, client_id = bme_meff_marketandorder_bmegate_v1_6.client_id.dissect(buffer, index, packet, parent)

  -- Account: C
  index, account = bme_meff_marketandorder_bmegate_v1_6.account.dissect(buffer, index, packet, parent)

  -- Dea Flag: F
  index, dea_flag = bme_meff_marketandorder_bmegate_v1_6.dea_flag.dissect(buffer, index, packet, parent)

  -- Decisor Id: U
  index, decisor_id = bme_meff_marketandorder_bmegate_v1_6.decisor_id.dissect(buffer, index, packet, parent)

  -- Executor Id: U
  index, executor_id = bme_meff_marketandorder_bmegate_v1_6.executor_id.dissect(buffer, index, packet, parent)

  -- Liquidity Provision Activity: F
  index, liquidity_provision_activity = bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity.dissect(buffer, index, packet, parent)

  -- Give In Member: C
  index, give_in_member = bme_meff_marketandorder_bmegate_v1_6.give_in_member.dissect(buffer, index, packet, parent)

  -- Firm Mnemonic: C
  index, firm_mnemonic = bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic.dissect(buffer, index, packet, parent)

  -- Alloc Text: C
  index, alloc_text = bme_meff_marketandorder_bmegate_v1_6.alloc_text.dissect(buffer, index, packet, parent)

  -- Last Capacity: C
  index, last_capacity = bme_meff_marketandorder_bmegate_v1_6.last_capacity.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Id: U
  index, self_match_prevention_id = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id.dissect(buffer, index, packet, parent)

  -- Persistence: C
  index, persistence = bme_meff_marketandorder_bmegate_v1_6.persistence.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Type: C
  index, self_match_prevention_type = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type.dissect(buffer, index, packet, parent)

  -- Client Data Reference: C
  index, client_data_reference = bme_meff_marketandorder_bmegate_v1_6.client_data_reference.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Order Modification With Client Data Message
bme_meff_marketandorder_bmegate_v1_6.simple_order_modification_with_client_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.simple_order_modification_with_client_data_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.simple_order_modification_with_client_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.simple_order_modification_with_client_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.simple_order_modification_with_client_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Order Modification Message
bme_meff_marketandorder_bmegate_v1_6.simple_order_modification_message = {}

-- Size: Simple Order Modification Message
bme_meff_marketandorder_bmegate_v1_6.simple_order_modification_message.size =
  bme_meff_marketandorder_bmegate_v1_6.request_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.side.size + 
  bme_meff_marketandorder_bmegate_v1_6.price.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_data_id.size

-- Display: Simple Order Modification Message
bme_meff_marketandorder_bmegate_v1_6.simple_order_modification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Order Modification Message
bme_meff_marketandorder_bmegate_v1_6.simple_order_modification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: U
  index, request_id = bme_meff_marketandorder_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_meff_marketandorder_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Side: C
  index, side = bme_meff_marketandorder_bmegate_v1_6.side.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_meff_marketandorder_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Q
  index, order_qty = bme_meff_marketandorder_bmegate_v1_6.order_qty.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_meff_marketandorder_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Order Modification Message
bme_meff_marketandorder_bmegate_v1_6.simple_order_modification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.simple_order_modification_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.simple_order_modification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.simple_order_modification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.simple_order_modification_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple New Order With Client Data Message
bme_meff_marketandorder_bmegate_v1_6.simple_new_order_with_client_data_message = {}

-- Size: Simple New Order With Client Data Message
bme_meff_marketandorder_bmegate_v1_6.simple_new_order_with_client_data_message.size =
  bme_meff_marketandorder_bmegate_v1_6.request_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.side.size + 
  bme_meff_marketandorder_bmegate_v1_6.price.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.time_in_force.size + 
  bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.account.size + 
  bme_meff_marketandorder_bmegate_v1_6.dea_flag.size + 
  bme_meff_marketandorder_bmegate_v1_6.decisor_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.executor_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity.size + 
  bme_meff_marketandorder_bmegate_v1_6.give_in_member.size + 
  bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic.size + 
  bme_meff_marketandorder_bmegate_v1_6.alloc_text.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_capacity.size + 
  bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.persistence.size + 
  bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_data_reference.size

-- Display: Simple New Order With Client Data Message
bme_meff_marketandorder_bmegate_v1_6.simple_new_order_with_client_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple New Order With Client Data Message
bme_meff_marketandorder_bmegate_v1_6.simple_new_order_with_client_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: U
  index, request_id = bme_meff_marketandorder_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_meff_marketandorder_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Side: C
  index, side = bme_meff_marketandorder_bmegate_v1_6.side.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_meff_marketandorder_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Q
  index, order_qty = bme_meff_marketandorder_bmegate_v1_6.order_qty.dissect(buffer, index, packet, parent)

  -- Time In Force: C
  index, time_in_force = bme_meff_marketandorder_bmegate_v1_6.time_in_force.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: F
  index, algorithmic_trade_indicator = bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator.dissect(buffer, index, packet, parent)

  -- Client Id: U
  index, client_id = bme_meff_marketandorder_bmegate_v1_6.client_id.dissect(buffer, index, packet, parent)

  -- Account: C
  index, account = bme_meff_marketandorder_bmegate_v1_6.account.dissect(buffer, index, packet, parent)

  -- Dea Flag: F
  index, dea_flag = bme_meff_marketandorder_bmegate_v1_6.dea_flag.dissect(buffer, index, packet, parent)

  -- Decisor Id: U
  index, decisor_id = bme_meff_marketandorder_bmegate_v1_6.decisor_id.dissect(buffer, index, packet, parent)

  -- Executor Id: U
  index, executor_id = bme_meff_marketandorder_bmegate_v1_6.executor_id.dissect(buffer, index, packet, parent)

  -- Liquidity Provision Activity: F
  index, liquidity_provision_activity = bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity.dissect(buffer, index, packet, parent)

  -- Give In Member: C
  index, give_in_member = bme_meff_marketandorder_bmegate_v1_6.give_in_member.dissect(buffer, index, packet, parent)

  -- Firm Mnemonic: C
  index, firm_mnemonic = bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic.dissect(buffer, index, packet, parent)

  -- Alloc Text: C
  index, alloc_text = bme_meff_marketandorder_bmegate_v1_6.alloc_text.dissect(buffer, index, packet, parent)

  -- Last Capacity: C
  index, last_capacity = bme_meff_marketandorder_bmegate_v1_6.last_capacity.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Id: U
  index, self_match_prevention_id = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id.dissect(buffer, index, packet, parent)

  -- Persistence: C
  index, persistence = bme_meff_marketandorder_bmegate_v1_6.persistence.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Type: C
  index, self_match_prevention_type = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type.dissect(buffer, index, packet, parent)

  -- Client Data Reference: C
  index, client_data_reference = bme_meff_marketandorder_bmegate_v1_6.client_data_reference.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple New Order With Client Data Message
bme_meff_marketandorder_bmegate_v1_6.simple_new_order_with_client_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.simple_new_order_with_client_data_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.simple_new_order_with_client_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.simple_new_order_with_client_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.simple_new_order_with_client_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple New Order Message
bme_meff_marketandorder_bmegate_v1_6.simple_new_order_message = {}

-- Size: Simple New Order Message
bme_meff_marketandorder_bmegate_v1_6.simple_new_order_message.size =
  bme_meff_marketandorder_bmegate_v1_6.request_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_data_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.side.size + 
  bme_meff_marketandorder_bmegate_v1_6.price.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.time_in_force.size

-- Display: Simple New Order Message
bme_meff_marketandorder_bmegate_v1_6.simple_new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple New Order Message
bme_meff_marketandorder_bmegate_v1_6.simple_new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: U
  index, request_id = bme_meff_marketandorder_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_meff_marketandorder_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  -- Order Id: U
  index, order_id = bme_meff_marketandorder_bmegate_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Side: C
  index, side = bme_meff_marketandorder_bmegate_v1_6.side.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_meff_marketandorder_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Q
  index, order_qty = bme_meff_marketandorder_bmegate_v1_6.order_qty.dissect(buffer, index, packet, parent)

  -- Time In Force: C
  index, time_in_force = bme_meff_marketandorder_bmegate_v1_6.time_in_force.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple New Order Message
bme_meff_marketandorder_bmegate_v1_6.simple_new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.simple_new_order_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.simple_new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.simple_new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.simple_new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Delta Protection Parameters Message
bme_meff_marketandorder_bmegate_v1_6.delta_protection_parameters_message = {}

-- Size: Delta Protection Parameters Message
bme_meff_marketandorder_bmegate_v1_6.delta_protection_parameters_message.size =
  bme_meff_marketandorder_bmegate_v1_6.request_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_group.size + 
  bme_meff_marketandorder_bmegate_v1_6.product_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.delta_protection_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.delta_protection_volume.size

-- Display: Delta Protection Parameters Message
bme_meff_marketandorder_bmegate_v1_6.delta_protection_parameters_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delta Protection Parameters Message
bme_meff_marketandorder_bmegate_v1_6.delta_protection_parameters_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: U
  index, request_id = bme_meff_marketandorder_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Security Group: C
  index, security_group = bme_meff_marketandorder_bmegate_v1_6.security_group.dissect(buffer, index, packet, parent)

  -- Product Type: C
  index, product_type = bme_meff_marketandorder_bmegate_v1_6.product_type.dissect(buffer, index, packet, parent)

  -- Delta Protection Time: U
  index, delta_protection_time = bme_meff_marketandorder_bmegate_v1_6.delta_protection_time.dissect(buffer, index, packet, parent)

  -- Delta Protection Volume: Q
  index, delta_protection_volume = bme_meff_marketandorder_bmegate_v1_6.delta_protection_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delta Protection Parameters Message
bme_meff_marketandorder_bmegate_v1_6.delta_protection_parameters_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.delta_protection_parameters_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.delta_protection_parameters_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.delta_protection_parameters_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.delta_protection_parameters_message.fields(buffer, offset, packet, parent)
  end
end

-- Order And Quote Client Data Message
bme_meff_marketandorder_bmegate_v1_6.order_and_quote_client_data_message = {}

-- Size: Order And Quote Client Data Message
bme_meff_marketandorder_bmegate_v1_6.order_and_quote_client_data_message.size =
  bme_meff_marketandorder_bmegate_v1_6.request_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_data_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.account.size + 
  bme_meff_marketandorder_bmegate_v1_6.dea_flag.size + 
  bme_meff_marketandorder_bmegate_v1_6.decisor_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.executor_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity.size + 
  bme_meff_marketandorder_bmegate_v1_6.give_in_member.size + 
  bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic.size + 
  bme_meff_marketandorder_bmegate_v1_6.alloc_text.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_capacity.size + 
  bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.persistence.size + 
  bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.client_data_reference.size

-- Display: Order And Quote Client Data Message
bme_meff_marketandorder_bmegate_v1_6.order_and_quote_client_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order And Quote Client Data Message
bme_meff_marketandorder_bmegate_v1_6.order_and_quote_client_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Id: U
  index, request_id = bme_meff_marketandorder_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Client Data Id: U
  index, client_data_id = bme_meff_marketandorder_bmegate_v1_6.client_data_id.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: F
  index, algorithmic_trade_indicator = bme_meff_marketandorder_bmegate_v1_6.algorithmic_trade_indicator.dissect(buffer, index, packet, parent)

  -- Client Id: U
  index, client_id = bme_meff_marketandorder_bmegate_v1_6.client_id.dissect(buffer, index, packet, parent)

  -- Account: C
  index, account = bme_meff_marketandorder_bmegate_v1_6.account.dissect(buffer, index, packet, parent)

  -- Dea Flag: F
  index, dea_flag = bme_meff_marketandorder_bmegate_v1_6.dea_flag.dissect(buffer, index, packet, parent)

  -- Decisor Id: U
  index, decisor_id = bme_meff_marketandorder_bmegate_v1_6.decisor_id.dissect(buffer, index, packet, parent)

  -- Executor Id: U
  index, executor_id = bme_meff_marketandorder_bmegate_v1_6.executor_id.dissect(buffer, index, packet, parent)

  -- Liquidity Provision Activity: F
  index, liquidity_provision_activity = bme_meff_marketandorder_bmegate_v1_6.liquidity_provision_activity.dissect(buffer, index, packet, parent)

  -- Give In Member: C
  index, give_in_member = bme_meff_marketandorder_bmegate_v1_6.give_in_member.dissect(buffer, index, packet, parent)

  -- Firm Mnemonic: C
  index, firm_mnemonic = bme_meff_marketandorder_bmegate_v1_6.firm_mnemonic.dissect(buffer, index, packet, parent)

  -- Alloc Text: C
  index, alloc_text = bme_meff_marketandorder_bmegate_v1_6.alloc_text.dissect(buffer, index, packet, parent)

  -- Last Capacity: C
  index, last_capacity = bme_meff_marketandorder_bmegate_v1_6.last_capacity.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Id: U
  index, self_match_prevention_id = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_id.dissect(buffer, index, packet, parent)

  -- Persistence: C
  index, persistence = bme_meff_marketandorder_bmegate_v1_6.persistence.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Type: C
  index, self_match_prevention_type = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention_type.dissect(buffer, index, packet, parent)

  -- Client Data Reference: C
  index, client_data_reference = bme_meff_marketandorder_bmegate_v1_6.client_data_reference.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order And Quote Client Data Message
bme_meff_marketandorder_bmegate_v1_6.order_and_quote_client_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_and_quote_client_data_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.order_and_quote_client_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.order_and_quote_client_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.order_and_quote_client_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Topofbook Message
bme_meff_marketandorder_bmegate_v1_6.topofbook_message = {}

-- Size: Topofbook Message
bme_meff_marketandorder_bmegate_v1_6.topofbook_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.bid_orders_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.bid_size_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.bid_px_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.retail_cl_bid_flag_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.ask_orders_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.ask_size_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.ask_px_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.retail_cl_ask_flag_1.size

-- Display: Topofbook Message
bme_meff_marketandorder_bmegate_v1_6.topofbook_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Topofbook Message
bme_meff_marketandorder_bmegate_v1_6.topofbook_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Bid Orders 1: U
  index, bid_orders_1 = bme_meff_marketandorder_bmegate_v1_6.bid_orders_1.dissect(buffer, index, packet, parent)

  -- Bid Size 1: Q
  index, bid_size_1 = bme_meff_marketandorder_bmegate_v1_6.bid_size_1.dissect(buffer, index, packet, parent)

  -- Bid Px 1: P
  index, bid_px_1 = bme_meff_marketandorder_bmegate_v1_6.bid_px_1.dissect(buffer, index, packet, parent)

  -- Retail Cl Bid Flag 1: F
  index, retail_cl_bid_flag_1 = bme_meff_marketandorder_bmegate_v1_6.retail_cl_bid_flag_1.dissect(buffer, index, packet, parent)

  -- Ask Orders 1: U
  index, ask_orders_1 = bme_meff_marketandorder_bmegate_v1_6.ask_orders_1.dissect(buffer, index, packet, parent)

  -- Ask Size 1: Q
  index, ask_size_1 = bme_meff_marketandorder_bmegate_v1_6.ask_size_1.dissect(buffer, index, packet, parent)

  -- Ask Px 1: P
  index, ask_px_1 = bme_meff_marketandorder_bmegate_v1_6.ask_px_1.dissect(buffer, index, packet, parent)

  -- Retail Cl Ask Flag 1: F
  index, retail_cl_ask_flag_1 = bme_meff_marketandorder_bmegate_v1_6.retail_cl_ask_flag_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Topofbook Message
bme_meff_marketandorder_bmegate_v1_6.topofbook_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.topofbook_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.topofbook_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.topofbook_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.topofbook_message.fields(buffer, offset, packet, parent)
  end
end

-- Rfq Market Pre Transparency Information Message
bme_meff_marketandorder_bmegate_v1_6.rfq_market_pre_transparency_information_message = {}

-- Size: Rfq Market Pre Transparency Information Message
bme_meff_marketandorder_bmegate_v1_6.rfq_market_pre_transparency_information_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.rfqid.size + 
  bme_meff_marketandorder_bmegate_v1_6.trading_session_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.mid_buy_price.size + 
  bme_meff_marketandorder_bmegate_v1_6.mid_buy_volume.size + 
  bme_meff_marketandorder_bmegate_v1_6.buy_rf_qs_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.mid_sell_price.size + 
  bme_meff_marketandorder_bmegate_v1_6.mid_sell_volume.size + 
  bme_meff_marketandorder_bmegate_v1_6.sell_rf_qs_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.bid_orders_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.bid_size_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.bid_px_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.ask_orders_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.ask_size_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.ask_px_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.bid_orders_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.bid_size_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.bid_px_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.ask_orders_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.ask_size_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.ask_px_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.bid_orders_3.size + 
  bme_meff_marketandorder_bmegate_v1_6.bid_size_3.size + 
  bme_meff_marketandorder_bmegate_v1_6.bid_px_3.size + 
  bme_meff_marketandorder_bmegate_v1_6.ask_orders_3.size + 
  bme_meff_marketandorder_bmegate_v1_6.ask_size_3.size + 
  bme_meff_marketandorder_bmegate_v1_6.ask_px_3.size + 
  bme_meff_marketandorder_bmegate_v1_6.bid_orders_4.size + 
  bme_meff_marketandorder_bmegate_v1_6.bid_size_4.size + 
  bme_meff_marketandorder_bmegate_v1_6.bid_px_4.size + 
  bme_meff_marketandorder_bmegate_v1_6.ask_orders_4.size + 
  bme_meff_marketandorder_bmegate_v1_6.ask_size_4.size + 
  bme_meff_marketandorder_bmegate_v1_6.ask_px_4.size + 
  bme_meff_marketandorder_bmegate_v1_6.bid_orders_5.size + 
  bme_meff_marketandorder_bmegate_v1_6.bid_size_5.size + 
  bme_meff_marketandorder_bmegate_v1_6.bid_px_5.size + 
  bme_meff_marketandorder_bmegate_v1_6.ask_orders_5.size + 
  bme_meff_marketandorder_bmegate_v1_6.ask_size_5.size + 
  bme_meff_marketandorder_bmegate_v1_6.ask_px_5.size

-- Display: Rfq Market Pre Transparency Information Message
bme_meff_marketandorder_bmegate_v1_6.rfq_market_pre_transparency_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rfq Market Pre Transparency Information Message
bme_meff_marketandorder_bmegate_v1_6.rfq_market_pre_transparency_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Rfqid: U
  index, rfqid = bme_meff_marketandorder_bmegate_v1_6.rfqid.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_meff_marketandorder_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Mid Buy Price: P
  index, mid_buy_price = bme_meff_marketandorder_bmegate_v1_6.mid_buy_price.dissect(buffer, index, packet, parent)

  -- Mid Buy Volume: Q
  index, mid_buy_volume = bme_meff_marketandorder_bmegate_v1_6.mid_buy_volume.dissect(buffer, index, packet, parent)

  -- Buy Rf Qs Number: U
  index, buy_rf_qs_number = bme_meff_marketandorder_bmegate_v1_6.buy_rf_qs_number.dissect(buffer, index, packet, parent)

  -- Mid Sell Price: P
  index, mid_sell_price = bme_meff_marketandorder_bmegate_v1_6.mid_sell_price.dissect(buffer, index, packet, parent)

  -- Mid Sell Volume: Q
  index, mid_sell_volume = bme_meff_marketandorder_bmegate_v1_6.mid_sell_volume.dissect(buffer, index, packet, parent)

  -- Sell Rf Qs Number: U
  index, sell_rf_qs_number = bme_meff_marketandorder_bmegate_v1_6.sell_rf_qs_number.dissect(buffer, index, packet, parent)

  -- Bid Orders 1: U
  index, bid_orders_1 = bme_meff_marketandorder_bmegate_v1_6.bid_orders_1.dissect(buffer, index, packet, parent)

  -- Bid Size 1: Q
  index, bid_size_1 = bme_meff_marketandorder_bmegate_v1_6.bid_size_1.dissect(buffer, index, packet, parent)

  -- Bid Px 1: P
  index, bid_px_1 = bme_meff_marketandorder_bmegate_v1_6.bid_px_1.dissect(buffer, index, packet, parent)

  -- Ask Orders 1: U
  index, ask_orders_1 = bme_meff_marketandorder_bmegate_v1_6.ask_orders_1.dissect(buffer, index, packet, parent)

  -- Ask Size 1: Q
  index, ask_size_1 = bme_meff_marketandorder_bmegate_v1_6.ask_size_1.dissect(buffer, index, packet, parent)

  -- Ask Px 1: P
  index, ask_px_1 = bme_meff_marketandorder_bmegate_v1_6.ask_px_1.dissect(buffer, index, packet, parent)

  -- Bid Orders 2: U
  index, bid_orders_2 = bme_meff_marketandorder_bmegate_v1_6.bid_orders_2.dissect(buffer, index, packet, parent)

  -- Bid Size 2: Q
  index, bid_size_2 = bme_meff_marketandorder_bmegate_v1_6.bid_size_2.dissect(buffer, index, packet, parent)

  -- Bid Px 2: P
  index, bid_px_2 = bme_meff_marketandorder_bmegate_v1_6.bid_px_2.dissect(buffer, index, packet, parent)

  -- Ask Orders 2: U
  index, ask_orders_2 = bme_meff_marketandorder_bmegate_v1_6.ask_orders_2.dissect(buffer, index, packet, parent)

  -- Ask Size 2: Q
  index, ask_size_2 = bme_meff_marketandorder_bmegate_v1_6.ask_size_2.dissect(buffer, index, packet, parent)

  -- Ask Px 2: P
  index, ask_px_2 = bme_meff_marketandorder_bmegate_v1_6.ask_px_2.dissect(buffer, index, packet, parent)

  -- Bid Orders 3: U
  index, bid_orders_3 = bme_meff_marketandorder_bmegate_v1_6.bid_orders_3.dissect(buffer, index, packet, parent)

  -- Bid Size 3: Q
  index, bid_size_3 = bme_meff_marketandorder_bmegate_v1_6.bid_size_3.dissect(buffer, index, packet, parent)

  -- Bid Px 3: P
  index, bid_px_3 = bme_meff_marketandorder_bmegate_v1_6.bid_px_3.dissect(buffer, index, packet, parent)

  -- Ask Orders 3: U
  index, ask_orders_3 = bme_meff_marketandorder_bmegate_v1_6.ask_orders_3.dissect(buffer, index, packet, parent)

  -- Ask Size 3: Q
  index, ask_size_3 = bme_meff_marketandorder_bmegate_v1_6.ask_size_3.dissect(buffer, index, packet, parent)

  -- Ask Px 3: P
  index, ask_px_3 = bme_meff_marketandorder_bmegate_v1_6.ask_px_3.dissect(buffer, index, packet, parent)

  -- Bid Orders 4: U
  index, bid_orders_4 = bme_meff_marketandorder_bmegate_v1_6.bid_orders_4.dissect(buffer, index, packet, parent)

  -- Bid Size 4: Q
  index, bid_size_4 = bme_meff_marketandorder_bmegate_v1_6.bid_size_4.dissect(buffer, index, packet, parent)

  -- Bid Px 4: P
  index, bid_px_4 = bme_meff_marketandorder_bmegate_v1_6.bid_px_4.dissect(buffer, index, packet, parent)

  -- Ask Orders 4: U
  index, ask_orders_4 = bme_meff_marketandorder_bmegate_v1_6.ask_orders_4.dissect(buffer, index, packet, parent)

  -- Ask Size 4: Q
  index, ask_size_4 = bme_meff_marketandorder_bmegate_v1_6.ask_size_4.dissect(buffer, index, packet, parent)

  -- Ask Px 4: P
  index, ask_px_4 = bme_meff_marketandorder_bmegate_v1_6.ask_px_4.dissect(buffer, index, packet, parent)

  -- Bid Orders 5: U
  index, bid_orders_5 = bme_meff_marketandorder_bmegate_v1_6.bid_orders_5.dissect(buffer, index, packet, parent)

  -- Bid Size 5: Q
  index, bid_size_5 = bme_meff_marketandorder_bmegate_v1_6.bid_size_5.dissect(buffer, index, packet, parent)

  -- Bid Px 5: P
  index, bid_px_5 = bme_meff_marketandorder_bmegate_v1_6.bid_px_5.dissect(buffer, index, packet, parent)

  -- Ask Orders 5: U
  index, ask_orders_5 = bme_meff_marketandorder_bmegate_v1_6.ask_orders_5.dissect(buffer, index, packet, parent)

  -- Ask Size 5: Q
  index, ask_size_5 = bme_meff_marketandorder_bmegate_v1_6.ask_size_5.dissect(buffer, index, packet, parent)

  -- Ask Px 5: P
  index, ask_px_5 = bme_meff_marketandorder_bmegate_v1_6.ask_px_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Market Pre Transparency Information Message
bme_meff_marketandorder_bmegate_v1_6.rfq_market_pre_transparency_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.rfq_market_pre_transparency_information_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.rfq_market_pre_transparency_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.rfq_market_pre_transparency_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.rfq_market_pre_transparency_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Indication Of Interest Message
bme_meff_marketandorder_bmegate_v1_6.indication_of_interest_message = {}

-- Size: Indication Of Interest Message
bme_meff_marketandorder_bmegate_v1_6.indication_of_interest_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.ioiid.size + 
  bme_meff_marketandorder_bmegate_v1_6.ioi_trans_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.side.size + 
  bme_meff_marketandorder_bmegate_v1_6.ioi_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.ioi_price.size + 
  bme_meff_marketandorder_bmegate_v1_6.ioi_qlty_ind.size + 
  bme_meff_marketandorder_bmegate_v1_6.trading_session_id.size

-- Display: Indication Of Interest Message
bme_meff_marketandorder_bmegate_v1_6.indication_of_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indication Of Interest Message
bme_meff_marketandorder_bmegate_v1_6.indication_of_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Ioiid: U
  index, ioiid = bme_meff_marketandorder_bmegate_v1_6.ioiid.dissect(buffer, index, packet, parent)

  -- Ioi Trans Type: C
  index, ioi_trans_type = bme_meff_marketandorder_bmegate_v1_6.ioi_trans_type.dissect(buffer, index, packet, parent)

  -- Side: C
  index, side = bme_meff_marketandorder_bmegate_v1_6.side.dissect(buffer, index, packet, parent)

  -- Ioi Qty: Q
  index, ioi_qty = bme_meff_marketandorder_bmegate_v1_6.ioi_qty.dissect(buffer, index, packet, parent)

  -- Ioi Price: P
  index, ioi_price = bme_meff_marketandorder_bmegate_v1_6.ioi_price.dissect(buffer, index, packet, parent)

  -- Ioi Qlty Ind: C
  index, ioi_qlty_ind = bme_meff_marketandorder_bmegate_v1_6.ioi_qlty_ind.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_meff_marketandorder_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indication Of Interest Message
bme_meff_marketandorder_bmegate_v1_6.indication_of_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.indication_of_interest_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.indication_of_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.indication_of_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.indication_of_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Market Post Transparency Information Full Depth Message
bme_meff_marketandorder_bmegate_v1_6.trade_market_post_transparency_information_full_depth_message = {}

-- Size: Trade Market Post Transparency Information Full Depth Message
bme_meff_marketandorder_bmegate_v1_6.trade_market_post_transparency_information_full_depth_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_segment_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trading_session_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trd_match_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trade_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_px.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.size + 
  bme_meff_marketandorder_bmegate_v1_6.designation.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_mechanism.size + 
  bme_meff_marketandorder_bmegate_v1_6.algo_flag.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_category.size + 
  bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.entry_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.priority.size + 
  bme_meff_marketandorder_bmegate_v1_6.price.size + 
  bme_meff_marketandorder_bmegate_v1_6.display_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.retail_cl_flag.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_order_id_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.entry_date_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.priority_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.price_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.display_qty_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.retail_cl_flag_2.size

-- Display: Trade Market Post Transparency Information Full Depth Message
bme_meff_marketandorder_bmegate_v1_6.trade_market_post_transparency_information_full_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Market Post Transparency Information Full Depth Message
bme_meff_marketandorder_bmegate_v1_6.trade_market_post_transparency_information_full_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_meff_marketandorder_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_meff_marketandorder_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: U
  index, trd_match_id = bme_meff_marketandorder_bmegate_v1_6.trd_match_id.dissect(buffer, index, packet, parent)

  -- Trade Type: C
  index, trade_type = bme_meff_marketandorder_bmegate_v1_6.trade_type.dissect(buffer, index, packet, parent)

  -- Last Px: P
  index, last_px = bme_meff_marketandorder_bmegate_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Q
  index, last_qty = bme_meff_marketandorder_bmegate_v1_6.last_qty.dissect(buffer, index, packet, parent)

  -- Gross Trade Amt: A
  index, gross_trade_amt = bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.dissect(buffer, index, packet, parent)

  -- Designation: C
  index, designation = bme_meff_marketandorder_bmegate_v1_6.designation.dissect(buffer, index, packet, parent)

  -- Market Mechanism: C
  index, market_mechanism = bme_meff_marketandorder_bmegate_v1_6.market_mechanism.dissect(buffer, index, packet, parent)

  -- Algo Flag: F
  index, algo_flag = bme_meff_marketandorder_bmegate_v1_6.algo_flag.dissect(buffer, index, packet, parent)

  -- Transaction Category: C
  index, transaction_category = bme_meff_marketandorder_bmegate_v1_6.transaction_category.dissect(buffer, index, packet, parent)

  -- Strategy Trd Match Id: U
  index, strategy_trd_match_id = bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Entry Date: D
  index, entry_date = bme_meff_marketandorder_bmegate_v1_6.entry_date.dissect(buffer, index, packet, parent)

  -- Priority: U
  index, priority = bme_meff_marketandorder_bmegate_v1_6.priority.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_meff_marketandorder_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Display Qty: Q
  index, display_qty = bme_meff_marketandorder_bmegate_v1_6.display_qty.dissect(buffer, index, packet, parent)

  -- Retail Cl Flag: F
  index, retail_cl_flag = bme_meff_marketandorder_bmegate_v1_6.retail_cl_flag.dissect(buffer, index, packet, parent)

  -- Secondary Order Id 2: U
  index, secondary_order_id_2 = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id_2.dissect(buffer, index, packet, parent)

  -- Entry Date 2: D
  index, entry_date_2 = bme_meff_marketandorder_bmegate_v1_6.entry_date_2.dissect(buffer, index, packet, parent)

  -- Priority 2: U
  index, priority_2 = bme_meff_marketandorder_bmegate_v1_6.priority_2.dissect(buffer, index, packet, parent)

  -- Price 2: P
  index, price_2 = bme_meff_marketandorder_bmegate_v1_6.price_2.dissect(buffer, index, packet, parent)

  -- Display Qty 2: Q
  index, display_qty_2 = bme_meff_marketandorder_bmegate_v1_6.display_qty_2.dissect(buffer, index, packet, parent)

  -- Retail Cl Flag 2: F
  index, retail_cl_flag_2 = bme_meff_marketandorder_bmegate_v1_6.retail_cl_flag_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Market Post Transparency Information Full Depth Message
bme_meff_marketandorder_bmegate_v1_6.trade_market_post_transparency_information_full_depth_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.trade_market_post_transparency_information_full_depth_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.trade_market_post_transparency_information_full_depth_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.trade_market_post_transparency_information_full_depth_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.trade_market_post_transparency_information_full_depth_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Trade Amendment Or Cancellation Message
bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_message = {}

-- Size: Trade Trade Amendment Or Cancellation Message
bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_segment_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trading_session_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trd_match_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trade_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_px.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.size + 
  bme_meff_marketandorder_bmegate_v1_6.designation.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_mechanism.size + 
  bme_meff_marketandorder_bmegate_v1_6.algo_flag.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_category.size + 
  bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_change_flag_f_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.bencrfpt_flag.size + 
  bme_meff_marketandorder_bmegate_v1_6.trade_price_condition.size + 
  bme_meff_marketandorder_bmegate_v1_6.pre_trade_transparency_waiver.size + 
  bme_meff_marketandorder_bmegate_v1_6.deferral_waiver.size + 
  bme_meff_marketandorder_bmegate_v1_6.post_deferral_publication_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.publish_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.trade_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.trade_session_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.amended_trade_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.exec_ref_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.amended_trade_date.size

-- Display: Trade Trade Amendment Or Cancellation Message
bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Trade Amendment Or Cancellation Message
bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_meff_marketandorder_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_meff_marketandorder_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: U
  index, trd_match_id = bme_meff_marketandorder_bmegate_v1_6.trd_match_id.dissect(buffer, index, packet, parent)

  -- Trade Type: C
  index, trade_type = bme_meff_marketandorder_bmegate_v1_6.trade_type.dissect(buffer, index, packet, parent)

  -- Last Px: P
  index, last_px = bme_meff_marketandorder_bmegate_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Q
  index, last_qty = bme_meff_marketandorder_bmegate_v1_6.last_qty.dissect(buffer, index, packet, parent)

  -- Gross Trade Amt: A
  index, gross_trade_amt = bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.dissect(buffer, index, packet, parent)

  -- Designation: C
  index, designation = bme_meff_marketandorder_bmegate_v1_6.designation.dissect(buffer, index, packet, parent)

  -- Market Mechanism: C
  index, market_mechanism = bme_meff_marketandorder_bmegate_v1_6.market_mechanism.dissect(buffer, index, packet, parent)

  -- Algo Flag: F
  index, algo_flag = bme_meff_marketandorder_bmegate_v1_6.algo_flag.dissect(buffer, index, packet, parent)

  -- Transaction Category: C
  index, transaction_category = bme_meff_marketandorder_bmegate_v1_6.transaction_category.dissect(buffer, index, packet, parent)

  -- Strategy Trd Match Id: U
  index, strategy_trd_match_id = bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id.dissect(buffer, index, packet, parent)

  -- Last Change Flag F 1: F
  index, last_change_flag_f_1 = bme_meff_marketandorder_bmegate_v1_6.last_change_flag_f_1.dissect(buffer, index, packet, parent)

  -- Bencrfpt Flag: C
  index, bencrfpt_flag = bme_meff_marketandorder_bmegate_v1_6.bencrfpt_flag.dissect(buffer, index, packet, parent)

  -- Trade Price Condition: C
  index, trade_price_condition = bme_meff_marketandorder_bmegate_v1_6.trade_price_condition.dissect(buffer, index, packet, parent)

  -- Pre Trade Transparency Waiver: C
  index, pre_trade_transparency_waiver = bme_meff_marketandorder_bmegate_v1_6.pre_trade_transparency_waiver.dissect(buffer, index, packet, parent)

  -- Deferral Waiver: C
  index, deferral_waiver = bme_meff_marketandorder_bmegate_v1_6.deferral_waiver.dissect(buffer, index, packet, parent)

  -- Post Deferral Publication Type: C
  index, post_deferral_publication_type = bme_meff_marketandorder_bmegate_v1_6.post_deferral_publication_type.dissect(buffer, index, packet, parent)

  -- Publish Date And Time: T
  index, publish_date_and_time = bme_meff_marketandorder_bmegate_v1_6.publish_date_and_time.dissect(buffer, index, packet, parent)

  -- Trade Date: T
  index, trade_date = bme_meff_marketandorder_bmegate_v1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Trade Session Date: D
  index, trade_session_date = bme_meff_marketandorder_bmegate_v1_6.trade_session_date.dissect(buffer, index, packet, parent)

  -- Amended Trade Type: C
  index, amended_trade_type = bme_meff_marketandorder_bmegate_v1_6.amended_trade_type.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: U
  index, exec_ref_id = bme_meff_marketandorder_bmegate_v1_6.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Amended Trade Date: D
  index, amended_trade_date = bme_meff_marketandorder_bmegate_v1_6.amended_trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Trade Amendment Or Cancellation Message
bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.trade_trade_amendment_or_cancellation_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Market Post Transparency Information Topofbook Message
bme_meff_marketandorder_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message = {}

-- Size: Trade Market Post Transparency Information Topofbook Message
bme_meff_marketandorder_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_segment_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trading_session_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trd_match_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trade_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_px.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.size + 
  bme_meff_marketandorder_bmegate_v1_6.designation.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_mechanism.size + 
  bme_meff_marketandorder_bmegate_v1_6.algo_flag.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_category.size + 
  bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id.size

-- Display: Trade Market Post Transparency Information Topofbook Message
bme_meff_marketandorder_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Market Post Transparency Information Topofbook Message
bme_meff_marketandorder_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_meff_marketandorder_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_meff_marketandorder_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: U
  index, trd_match_id = bme_meff_marketandorder_bmegate_v1_6.trd_match_id.dissect(buffer, index, packet, parent)

  -- Trade Type: C
  index, trade_type = bme_meff_marketandorder_bmegate_v1_6.trade_type.dissect(buffer, index, packet, parent)

  -- Last Px: P
  index, last_px = bme_meff_marketandorder_bmegate_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Q
  index, last_qty = bme_meff_marketandorder_bmegate_v1_6.last_qty.dissect(buffer, index, packet, parent)

  -- Gross Trade Amt: A
  index, gross_trade_amt = bme_meff_marketandorder_bmegate_v1_6.gross_trade_amt.dissect(buffer, index, packet, parent)

  -- Designation: C
  index, designation = bme_meff_marketandorder_bmegate_v1_6.designation.dissect(buffer, index, packet, parent)

  -- Market Mechanism: C
  index, market_mechanism = bme_meff_marketandorder_bmegate_v1_6.market_mechanism.dissect(buffer, index, packet, parent)

  -- Algo Flag: F
  index, algo_flag = bme_meff_marketandorder_bmegate_v1_6.algo_flag.dissect(buffer, index, packet, parent)

  -- Transaction Category: C
  index, transaction_category = bme_meff_marketandorder_bmegate_v1_6.transaction_category.dissect(buffer, index, packet, parent)

  -- Strategy Trd Match Id: U
  index, strategy_trd_match_id = bme_meff_marketandorder_bmegate_v1_6.strategy_trd_match_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Market Post Transparency Information Topofbook Message
bme_meff_marketandorder_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.trade_market_post_transparency_information_topofbook_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Cancellation Market Member Message
bme_meff_marketandorder_bmegate_v1_6.quote_cancellation_market_member_message = {}

-- Size: Quote Cancellation Market Member Message
bme_meff_marketandorder_bmegate_v1_6.quote_cancellation_market_member_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_order_id_2.size

-- Display: Quote Cancellation Market Member Message
bme_meff_marketandorder_bmegate_v1_6.quote_cancellation_market_member_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancellation Market Member Message
bme_meff_marketandorder_bmegate_v1_6.quote_cancellation_market_member_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Secondary Order Id 2: U
  index, secondary_order_id_2 = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancellation Market Member Message
bme_meff_marketandorder_bmegate_v1_6.quote_cancellation_market_member_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.quote_cancellation_market_member_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.quote_cancellation_market_member_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.quote_cancellation_market_member_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.quote_cancellation_market_member_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation Market Member Message
bme_meff_marketandorder_bmegate_v1_6.order_cancellation_market_member_message = {}

-- Size: Order Cancellation Market Member Message
bme_meff_marketandorder_bmegate_v1_6.order_cancellation_market_member_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.entry_date.size

-- Display: Order Cancellation Market Member Message
bme_meff_marketandorder_bmegate_v1_6.order_cancellation_market_member_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Market Member Message
bme_meff_marketandorder_bmegate_v1_6.order_cancellation_market_member_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Entry Date: D
  index, entry_date = bme_meff_marketandorder_bmegate_v1_6.entry_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation Market Member Message
bme_meff_marketandorder_bmegate_v1_6.order_cancellation_market_member_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_cancellation_market_member_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.order_cancellation_market_member_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.order_cancellation_market_member_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.order_cancellation_market_member_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Market Pre Transparency Information Message
bme_meff_marketandorder_bmegate_v1_6.quote_market_pre_transparency_information_message = {}

-- Size: Quote Market Pre Transparency Information Message
bme_meff_marketandorder_bmegate_v1_6.quote_market_pre_transparency_information_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_order_id_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.priority.size + 
  bme_meff_marketandorder_bmegate_v1_6.price.size + 
  bme_meff_marketandorder_bmegate_v1_6.display_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.priority_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.price_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.display_qty_2.size

-- Display: Quote Market Pre Transparency Information Message
bme_meff_marketandorder_bmegate_v1_6.quote_market_pre_transparency_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Market Pre Transparency Information Message
bme_meff_marketandorder_bmegate_v1_6.quote_market_pre_transparency_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Secondary Order Id 2: U
  index, secondary_order_id_2 = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id_2.dissect(buffer, index, packet, parent)

  -- Priority: U
  index, priority = bme_meff_marketandorder_bmegate_v1_6.priority.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_meff_marketandorder_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Display Qty: Q
  index, display_qty = bme_meff_marketandorder_bmegate_v1_6.display_qty.dissect(buffer, index, packet, parent)

  -- Priority 2: U
  index, priority_2 = bme_meff_marketandorder_bmegate_v1_6.priority_2.dissect(buffer, index, packet, parent)

  -- Price 2: P
  index, price_2 = bme_meff_marketandorder_bmegate_v1_6.price_2.dissect(buffer, index, packet, parent)

  -- Display Qty 2: Q
  index, display_qty_2 = bme_meff_marketandorder_bmegate_v1_6.display_qty_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Market Pre Transparency Information Message
bme_meff_marketandorder_bmegate_v1_6.quote_market_pre_transparency_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.quote_market_pre_transparency_information_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.quote_market_pre_transparency_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.quote_market_pre_transparency_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.quote_market_pre_transparency_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Market Pre Transparency Information Message
bme_meff_marketandorder_bmegate_v1_6.order_market_pre_transparency_information_message = {}

-- Size: Order Market Pre Transparency Information Message
bme_meff_marketandorder_bmegate_v1_6.order_market_pre_transparency_information_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.entry_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.side.size + 
  bme_meff_marketandorder_bmegate_v1_6.priority.size + 
  bme_meff_marketandorder_bmegate_v1_6.price.size + 
  bme_meff_marketandorder_bmegate_v1_6.display_qty.size + 
  bme_meff_marketandorder_bmegate_v1_6.retail_cl_flag.size

-- Display: Order Market Pre Transparency Information Message
bme_meff_marketandorder_bmegate_v1_6.order_market_pre_transparency_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Market Pre Transparency Information Message
bme_meff_marketandorder_bmegate_v1_6.order_market_pre_transparency_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_meff_marketandorder_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Entry Date: D
  index, entry_date = bme_meff_marketandorder_bmegate_v1_6.entry_date.dissect(buffer, index, packet, parent)

  -- Side: C
  index, side = bme_meff_marketandorder_bmegate_v1_6.side.dissect(buffer, index, packet, parent)

  -- Priority: U
  index, priority = bme_meff_marketandorder_bmegate_v1_6.priority.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_meff_marketandorder_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Display Qty: Q
  index, display_qty = bme_meff_marketandorder_bmegate_v1_6.display_qty.dissect(buffer, index, packet, parent)

  -- Retail Cl Flag: F
  index, retail_cl_flag = bme_meff_marketandorder_bmegate_v1_6.retail_cl_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Market Pre Transparency Information Message
bme_meff_marketandorder_bmegate_v1_6.order_market_pre_transparency_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_market_pre_transparency_information_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.order_market_pre_transparency_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.order_market_pre_transparency_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.order_market_pre_transparency_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Clear Message
bme_meff_marketandorder_bmegate_v1_6.order_book_clear_message = {}

-- Size: Order Book Clear Message
bme_meff_marketandorder_bmegate_v1_6.order_book_clear_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size

-- Display: Order Book Clear Message
bme_meff_marketandorder_bmegate_v1_6.order_book_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Clear Message
bme_meff_marketandorder_bmegate_v1_6.order_book_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Clear Message
bme_meff_marketandorder_bmegate_v1_6.order_book_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.order_book_clear_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.order_book_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.order_book_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.order_book_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Family Status Message
bme_meff_marketandorder_bmegate_v1_6.family_status_message = {}

-- Size: Family Status Message
bme_meff_marketandorder_bmegate_v1_6.family_status_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_group.size + 
  bme_meff_marketandorder_bmegate_v1_6.family_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_trading_status.size + 
  bme_meff_marketandorder_bmegate_v1_6.non_availability_reason.size

-- Display: Family Status Message
bme_meff_marketandorder_bmegate_v1_6.family_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Family Status Message
bme_meff_marketandorder_bmegate_v1_6.family_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Group: C
  index, security_group = bme_meff_marketandorder_bmegate_v1_6.security_group.dissect(buffer, index, packet, parent)

  -- Family Code: C
  index, family_code = bme_meff_marketandorder_bmegate_v1_6.family_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Security Trading Status: U
  index, security_trading_status = bme_meff_marketandorder_bmegate_v1_6.security_trading_status.dissect(buffer, index, packet, parent)

  -- Non Availability Reason: U
  index, non_availability_reason = bme_meff_marketandorder_bmegate_v1_6.non_availability_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Family Status Message
bme_meff_marketandorder_bmegate_v1_6.family_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.family_status_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.family_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.family_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.family_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Message
bme_meff_marketandorder_bmegate_v1_6.security_status_message = {}

-- Size: Security Status Message
bme_meff_marketandorder_bmegate_v1_6.security_status_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_trading_status.size + 
  bme_meff_marketandorder_bmegate_v1_6.non_availability_reason.size + 
  bme_meff_marketandorder_bmegate_v1_6.high_limit_price.size + 
  bme_meff_marketandorder_bmegate_v1_6.low_limit_price.size

-- Display: Security Status Message
bme_meff_marketandorder_bmegate_v1_6.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
bme_meff_marketandorder_bmegate_v1_6.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Security Trading Status: U
  index, security_trading_status = bme_meff_marketandorder_bmegate_v1_6.security_trading_status.dissect(buffer, index, packet, parent)

  -- Non Availability Reason: U
  index, non_availability_reason = bme_meff_marketandorder_bmegate_v1_6.non_availability_reason.dissect(buffer, index, packet, parent)

  -- High Limit Price: P
  index, high_limit_price = bme_meff_marketandorder_bmegate_v1_6.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: P
  index, low_limit_price = bme_meff_marketandorder_bmegate_v1_6.low_limit_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
bme_meff_marketandorder_bmegate_v1_6.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.security_status_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Security List Update Report Message
bme_meff_marketandorder_bmegate_v1_6.security_list_update_report_message = {}

-- Size: Security List Update Report Message
bme_meff_marketandorder_bmegate_v1_6.security_list_update_report_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_segment_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.symbol.size + 
  bme_meff_marketandorder_bmegate_v1_6.symbol_isin.size + 
  bme_meff_marketandorder_bmegate_v1_6.fisn.size + 
  bme_meff_marketandorder_bmegate_v1_6.issuer_lei.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_group.size + 
  bme_meff_marketandorder_bmegate_v1_6.family_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.cfi_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.maturity_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.issue_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.contract_multiplier.size + 
  bme_meff_marketandorder_bmegate_v1_6.li_spre.size + 
  bme_meff_marketandorder_bmegate_v1_6.sst_ipre.size + 
  bme_meff_marketandorder_bmegate_v1_6.li_spost.size + 
  bme_meff_marketandorder_bmegate_v1_6.sst_ipost.size + 
  bme_meff_marketandorder_bmegate_v1_6.liquid_instrument.size + 
  bme_meff_marketandorder_bmegate_v1_6.admission_requested_by_issuer.size + 
  bme_meff_marketandorder_bmegate_v1_6.min_trade_vol.size + 
  bme_meff_marketandorder_bmegate_v1_6.round_lot.size + 
  bme_meff_marketandorder_bmegate_v1_6.currency.size + 
  bme_meff_marketandorder_bmegate_v1_6.modality_mask_b_4.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_description.size + 
  bme_meff_marketandorder_bmegate_v1_6.trading_obligation.size + 
  bme_meff_marketandorder_bmegate_v1_6.sec_description.size + 
  bme_meff_marketandorder_bmegate_v1_6.underlying_asset.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_sub_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.maturity_month_year.size + 
  bme_meff_marketandorder_bmegate_v1_6.strike_price.size + 
  bme_meff_marketandorder_bmegate_v1_6.strike_value.size + 
  bme_meff_marketandorder_bmegate_v1_6.opt_attribute.size + 
  bme_meff_marketandorder_bmegate_v1_6.min_price_increment.size + 
  bme_meff_marketandorder_bmegate_v1_6.unit_of_measure.size + 
  bme_meff_marketandorder_bmegate_v1_6.settl_method.size + 
  bme_meff_marketandorder_bmegate_v1_6.exercise_style.size + 
  bme_meff_marketandorder_bmegate_v1_6.put_or_call.size + 
  bme_meff_marketandorder_bmegate_v1_6.flexible_indicator.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_trading_day.size + 
  bme_meff_marketandorder_bmegate_v1_6.number_of_decimals.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_number_of_decimals.size + 
  bme_meff_marketandorder_bmegate_v1_6.adjustments_rule.size + 
  bme_meff_marketandorder_bmegate_v1_6.maximum_order_size.size + 
  bme_meff_marketandorder_bmegate_v1_6.self_match_prevention.size + 
  bme_meff_marketandorder_bmegate_v1_6.commodity_derivative_indicator.size + 
  bme_meff_marketandorder_bmegate_v1_6.stock_when_underlying_is_dividend.size + 
  bme_meff_marketandorder_bmegate_v1_6.base_product.size + 
  bme_meff_marketandorder_bmegate_v1_6.sub_product.size + 
  bme_meff_marketandorder_bmegate_v1_6.further_sub_product.size + 
  bme_meff_marketandorder_bmegate_v1_6.base_currency.size + 
  bme_meff_marketandorder_bmegate_v1_6.quoted_currency.size + 
  bme_meff_marketandorder_bmegate_v1_6.maturity_month_year_increment_units.size + 
  bme_meff_marketandorder_bmegate_v1_6.start_maturity_month_year.size + 
  bme_meff_marketandorder_bmegate_v1_6.end_maturity_month_year.size + 
  bme_meff_marketandorder_bmegate_v1_6.maturity_month_year_increment.size + 
  bme_meff_marketandorder_bmegate_v1_6.underlying_symbol.size + 
  bme_meff_marketandorder_bmegate_v1_6.underlying_isin.size + 
  bme_meff_marketandorder_bmegate_v1_6.underlying_currency.size + 
  bme_meff_marketandorder_bmegate_v1_6.underlying_security_issuer_lei.size + 
  bme_meff_marketandorder_bmegate_v1_6.x_rolling_closing_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.x_rolling_reference_buyer_rate.size + 
  bme_meff_marketandorder_bmegate_v1_6.x_rolling_buyer_markup.size + 
  bme_meff_marketandorder_bmegate_v1_6.x_rolling_reference_seller_rate.size + 
  bme_meff_marketandorder_bmegate_v1_6.x_rolling_seller_markup.size + 
  bme_meff_marketandorder_bmegate_v1_6.x_rolling_dividend_percentage.size + 
  bme_meff_marketandorder_bmegate_v1_6.x_rolling_dividend_pay_date_diff.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_symbol_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_side_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_price_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_symbol_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_side_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_price_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_symbol_3.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_3.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_side_3.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_price_3.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_symbol_4.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_4.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_side_4.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_price_4.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_symbol_5.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_5.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_side_5.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_price_5.size

-- Display: Security List Update Report Message
bme_meff_marketandorder_bmegate_v1_6.security_list_update_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Update Report Message
bme_meff_marketandorder_bmegate_v1_6.security_list_update_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Market Id: C
  index, market_id = bme_meff_marketandorder_bmegate_v1_6.market_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_meff_marketandorder_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Symbol: C
  index, symbol = bme_meff_marketandorder_bmegate_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Isin: C
  index, symbol_isin = bme_meff_marketandorder_bmegate_v1_6.symbol_isin.dissect(buffer, index, packet, parent)

  -- Fisn: C
  index, fisn = bme_meff_marketandorder_bmegate_v1_6.fisn.dissect(buffer, index, packet, parent)

  -- Issuer Lei: C
  index, issuer_lei = bme_meff_marketandorder_bmegate_v1_6.issuer_lei.dissect(buffer, index, packet, parent)

  -- Security Group: C
  index, security_group = bme_meff_marketandorder_bmegate_v1_6.security_group.dissect(buffer, index, packet, parent)

  -- Family Code: C
  index, family_code = bme_meff_marketandorder_bmegate_v1_6.family_code.dissect(buffer, index, packet, parent)

  -- Cfi Code: C
  index, cfi_code = bme_meff_marketandorder_bmegate_v1_6.cfi_code.dissect(buffer, index, packet, parent)

  -- Security Type: C
  index, security_type = bme_meff_marketandorder_bmegate_v1_6.security_type.dissect(buffer, index, packet, parent)

  -- Maturity Date: D
  index, maturity_date = bme_meff_marketandorder_bmegate_v1_6.maturity_date.dissect(buffer, index, packet, parent)

  -- Issue Date: D
  index, issue_date = bme_meff_marketandorder_bmegate_v1_6.issue_date.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: A
  index, contract_multiplier = bme_meff_marketandorder_bmegate_v1_6.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Li Spre: A
  index, li_spre = bme_meff_marketandorder_bmegate_v1_6.li_spre.dissect(buffer, index, packet, parent)

  -- Sst Ipre: A
  index, sst_ipre = bme_meff_marketandorder_bmegate_v1_6.sst_ipre.dissect(buffer, index, packet, parent)

  -- Li Spost: A
  index, li_spost = bme_meff_marketandorder_bmegate_v1_6.li_spost.dissect(buffer, index, packet, parent)

  -- Sst Ipost: A
  index, sst_ipost = bme_meff_marketandorder_bmegate_v1_6.sst_ipost.dissect(buffer, index, packet, parent)

  -- Liquid Instrument: F
  index, liquid_instrument = bme_meff_marketandorder_bmegate_v1_6.liquid_instrument.dissect(buffer, index, packet, parent)

  -- Admission Requested By Issuer: F
  index, admission_requested_by_issuer = bme_meff_marketandorder_bmegate_v1_6.admission_requested_by_issuer.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: Q
  index, min_trade_vol = bme_meff_marketandorder_bmegate_v1_6.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Round Lot: Q
  index, round_lot = bme_meff_marketandorder_bmegate_v1_6.round_lot.dissect(buffer, index, packet, parent)

  -- Currency: C
  index, currency = bme_meff_marketandorder_bmegate_v1_6.currency.dissect(buffer, index, packet, parent)

  -- Modality Mask B 4: B
  index, modality_mask_b_4 = bme_meff_marketandorder_bmegate_v1_6.modality_mask_b_4.dissect(buffer, index, packet, parent)

  -- Security Description: C
  index, security_description = bme_meff_marketandorder_bmegate_v1_6.security_description.dissect(buffer, index, packet, parent)

  -- Trading Obligation: F
  index, trading_obligation = bme_meff_marketandorder_bmegate_v1_6.trading_obligation.dissect(buffer, index, packet, parent)

  -- Sec Description: C
  index, sec_description = bme_meff_marketandorder_bmegate_v1_6.sec_description.dissect(buffer, index, packet, parent)

  -- Underlying Asset: C
  index, underlying_asset = bme_meff_marketandorder_bmegate_v1_6.underlying_asset.dissect(buffer, index, packet, parent)

  -- Security Sub Type: C
  index, security_sub_type = bme_meff_marketandorder_bmegate_v1_6.security_sub_type.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: C
  index, maturity_month_year = bme_meff_marketandorder_bmegate_v1_6.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Strike Price: P
  index, strike_price = bme_meff_marketandorder_bmegate_v1_6.strike_price.dissect(buffer, index, packet, parent)

  -- Strike Value: A
  index, strike_value = bme_meff_marketandorder_bmegate_v1_6.strike_value.dissect(buffer, index, packet, parent)

  -- Opt Attribute: C
  index, opt_attribute = bme_meff_marketandorder_bmegate_v1_6.opt_attribute.dissect(buffer, index, packet, parent)

  -- Min Price Increment: P
  index, min_price_increment = bme_meff_marketandorder_bmegate_v1_6.min_price_increment.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: C
  index, unit_of_measure = bme_meff_marketandorder_bmegate_v1_6.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Settl Method: C
  index, settl_method = bme_meff_marketandorder_bmegate_v1_6.settl_method.dissect(buffer, index, packet, parent)

  -- Exercise Style: C
  index, exercise_style = bme_meff_marketandorder_bmegate_v1_6.exercise_style.dissect(buffer, index, packet, parent)

  -- Put Or Call: C
  index, put_or_call = bme_meff_marketandorder_bmegate_v1_6.put_or_call.dissect(buffer, index, packet, parent)

  -- Flexible Indicator: C
  index, flexible_indicator = bme_meff_marketandorder_bmegate_v1_6.flexible_indicator.dissect(buffer, index, packet, parent)

  -- Last Trading Day: D
  index, last_trading_day = bme_meff_marketandorder_bmegate_v1_6.last_trading_day.dissect(buffer, index, packet, parent)

  -- Number Of Decimals: U
  index, number_of_decimals = bme_meff_marketandorder_bmegate_v1_6.number_of_decimals.dissect(buffer, index, packet, parent)

  -- Order Number Of Decimals: U
  index, order_number_of_decimals = bme_meff_marketandorder_bmegate_v1_6.order_number_of_decimals.dissect(buffer, index, packet, parent)

  -- Adjustments Rule: C
  index, adjustments_rule = bme_meff_marketandorder_bmegate_v1_6.adjustments_rule.dissect(buffer, index, packet, parent)

  -- Maximum Order Size: A
  index, maximum_order_size = bme_meff_marketandorder_bmegate_v1_6.maximum_order_size.dissect(buffer, index, packet, parent)

  -- Self Match Prevention: F
  index, self_match_prevention = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention.dissect(buffer, index, packet, parent)

  -- Commodity Derivative Indicator: C
  index, commodity_derivative_indicator = bme_meff_marketandorder_bmegate_v1_6.commodity_derivative_indicator.dissect(buffer, index, packet, parent)

  -- Stock When Underlying Is Dividend: C
  index, stock_when_underlying_is_dividend = bme_meff_marketandorder_bmegate_v1_6.stock_when_underlying_is_dividend.dissect(buffer, index, packet, parent)

  -- Base Product: C
  index, base_product = bme_meff_marketandorder_bmegate_v1_6.base_product.dissect(buffer, index, packet, parent)

  -- Sub Product: C
  index, sub_product = bme_meff_marketandorder_bmegate_v1_6.sub_product.dissect(buffer, index, packet, parent)

  -- Further Sub Product: C
  index, further_sub_product = bme_meff_marketandorder_bmegate_v1_6.further_sub_product.dissect(buffer, index, packet, parent)

  -- Base Currency: C
  index, base_currency = bme_meff_marketandorder_bmegate_v1_6.base_currency.dissect(buffer, index, packet, parent)

  -- Quoted Currency: C
  index, quoted_currency = bme_meff_marketandorder_bmegate_v1_6.quoted_currency.dissect(buffer, index, packet, parent)

  -- Maturity Month Year Increment Units: C
  index, maturity_month_year_increment_units = bme_meff_marketandorder_bmegate_v1_6.maturity_month_year_increment_units.dissect(buffer, index, packet, parent)

  -- Start Maturity Month Year: C
  index, start_maturity_month_year = bme_meff_marketandorder_bmegate_v1_6.start_maturity_month_year.dissect(buffer, index, packet, parent)

  -- End Maturity Month Year: C
  index, end_maturity_month_year = bme_meff_marketandorder_bmegate_v1_6.end_maturity_month_year.dissect(buffer, index, packet, parent)

  -- Maturity Month Year Increment: U
  index, maturity_month_year_increment = bme_meff_marketandorder_bmegate_v1_6.maturity_month_year_increment.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: C
  index, underlying_symbol = bme_meff_marketandorder_bmegate_v1_6.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Underlying Isin: C
  index, underlying_isin = bme_meff_marketandorder_bmegate_v1_6.underlying_isin.dissect(buffer, index, packet, parent)

  -- Underlying Currency: C
  index, underlying_currency = bme_meff_marketandorder_bmegate_v1_6.underlying_currency.dissect(buffer, index, packet, parent)

  -- Underlying Security Issuer Lei: C
  index, underlying_security_issuer_lei = bme_meff_marketandorder_bmegate_v1_6.underlying_security_issuer_lei.dissect(buffer, index, packet, parent)

  -- X Rolling Closing Type: C
  index, x_rolling_closing_type = bme_meff_marketandorder_bmegate_v1_6.x_rolling_closing_type.dissect(buffer, index, packet, parent)

  -- X Rolling Reference Buyer Rate: C
  index, x_rolling_reference_buyer_rate = bme_meff_marketandorder_bmegate_v1_6.x_rolling_reference_buyer_rate.dissect(buffer, index, packet, parent)

  -- X Rolling Buyer Markup: R
  index, x_rolling_buyer_markup = bme_meff_marketandorder_bmegate_v1_6.x_rolling_buyer_markup.dissect(buffer, index, packet, parent)

  -- X Rolling Reference Seller Rate: C
  index, x_rolling_reference_seller_rate = bme_meff_marketandorder_bmegate_v1_6.x_rolling_reference_seller_rate.dissect(buffer, index, packet, parent)

  -- X Rolling Seller Markup: R
  index, x_rolling_seller_markup = bme_meff_marketandorder_bmegate_v1_6.x_rolling_seller_markup.dissect(buffer, index, packet, parent)

  -- X Rolling Dividend Percentage: R
  index, x_rolling_dividend_percentage = bme_meff_marketandorder_bmegate_v1_6.x_rolling_dividend_percentage.dissect(buffer, index, packet, parent)

  -- X Rolling Dividend Pay Date Diff: U
  index, x_rolling_dividend_pay_date_diff = bme_meff_marketandorder_bmegate_v1_6.x_rolling_dividend_pay_date_diff.dissect(buffer, index, packet, parent)

  -- Leg Symbol 1: C
  index, leg_symbol_1 = bme_meff_marketandorder_bmegate_v1_6.leg_symbol_1.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty 1: Q
  index, leg_ratio_qty_1 = bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_1.dissect(buffer, index, packet, parent)

  -- Leg Side 1: C
  index, leg_side_1 = bme_meff_marketandorder_bmegate_v1_6.leg_side_1.dissect(buffer, index, packet, parent)

  -- Leg Price 1: P
  index, leg_price_1 = bme_meff_marketandorder_bmegate_v1_6.leg_price_1.dissect(buffer, index, packet, parent)

  -- Leg Symbol 2: C
  index, leg_symbol_2 = bme_meff_marketandorder_bmegate_v1_6.leg_symbol_2.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty 2: Q
  index, leg_ratio_qty_2 = bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_2.dissect(buffer, index, packet, parent)

  -- Leg Side 2: C
  index, leg_side_2 = bme_meff_marketandorder_bmegate_v1_6.leg_side_2.dissect(buffer, index, packet, parent)

  -- Leg Price 2: P
  index, leg_price_2 = bme_meff_marketandorder_bmegate_v1_6.leg_price_2.dissect(buffer, index, packet, parent)

  -- Leg Symbol 3: C
  index, leg_symbol_3 = bme_meff_marketandorder_bmegate_v1_6.leg_symbol_3.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty 3: Q
  index, leg_ratio_qty_3 = bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_3.dissect(buffer, index, packet, parent)

  -- Leg Side 3: C
  index, leg_side_3 = bme_meff_marketandorder_bmegate_v1_6.leg_side_3.dissect(buffer, index, packet, parent)

  -- Leg Price 3: P
  index, leg_price_3 = bme_meff_marketandorder_bmegate_v1_6.leg_price_3.dissect(buffer, index, packet, parent)

  -- Leg Symbol 4: C
  index, leg_symbol_4 = bme_meff_marketandorder_bmegate_v1_6.leg_symbol_4.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty 4: Q
  index, leg_ratio_qty_4 = bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_4.dissect(buffer, index, packet, parent)

  -- Leg Side 4: C
  index, leg_side_4 = bme_meff_marketandorder_bmegate_v1_6.leg_side_4.dissect(buffer, index, packet, parent)

  -- Leg Price 4: P
  index, leg_price_4 = bme_meff_marketandorder_bmegate_v1_6.leg_price_4.dissect(buffer, index, packet, parent)

  -- Leg Symbol 5: C
  index, leg_symbol_5 = bme_meff_marketandorder_bmegate_v1_6.leg_symbol_5.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty 5: Q
  index, leg_ratio_qty_5 = bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_5.dissect(buffer, index, packet, parent)

  -- Leg Side 5: C
  index, leg_side_5 = bme_meff_marketandorder_bmegate_v1_6.leg_side_5.dissect(buffer, index, packet, parent)

  -- Leg Price 5: P
  index, leg_price_5 = bme_meff_marketandorder_bmegate_v1_6.leg_price_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security List Update Report Message
bme_meff_marketandorder_bmegate_v1_6.security_list_update_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.security_list_update_report_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.security_list_update_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.security_list_update_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.security_list_update_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Security List Message
bme_meff_marketandorder_bmegate_v1_6.security_list_message = {}

-- Size: Security List Message
bme_meff_marketandorder_bmegate_v1_6.security_list_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_segment_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.symbol.size + 
  bme_meff_marketandorder_bmegate_v1_6.symbol_isin.size + 
  bme_meff_marketandorder_bmegate_v1_6.fisn.size + 
  bme_meff_marketandorder_bmegate_v1_6.issuer_lei.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_group.size + 
  bme_meff_marketandorder_bmegate_v1_6.family_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.cfi_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.maturity_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.issue_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.contract_multiplier.size + 
  bme_meff_marketandorder_bmegate_v1_6.li_spre.size + 
  bme_meff_marketandorder_bmegate_v1_6.sst_ipre.size + 
  bme_meff_marketandorder_bmegate_v1_6.li_spost.size + 
  bme_meff_marketandorder_bmegate_v1_6.sst_ipost.size + 
  bme_meff_marketandorder_bmegate_v1_6.liquid_instrument.size + 
  bme_meff_marketandorder_bmegate_v1_6.admission_requested_by_issuer.size + 
  bme_meff_marketandorder_bmegate_v1_6.min_trade_vol.size + 
  bme_meff_marketandorder_bmegate_v1_6.round_lot.size + 
  bme_meff_marketandorder_bmegate_v1_6.currency.size + 
  bme_meff_marketandorder_bmegate_v1_6.modality_mask_b_4.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_description.size + 
  bme_meff_marketandorder_bmegate_v1_6.trading_obligation.size + 
  bme_meff_marketandorder_bmegate_v1_6.sec_description.size + 
  bme_meff_marketandorder_bmegate_v1_6.underlying_asset.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_sub_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.maturity_month_year.size + 
  bme_meff_marketandorder_bmegate_v1_6.strike_price.size + 
  bme_meff_marketandorder_bmegate_v1_6.strike_value.size + 
  bme_meff_marketandorder_bmegate_v1_6.opt_attribute.size + 
  bme_meff_marketandorder_bmegate_v1_6.min_price_increment.size + 
  bme_meff_marketandorder_bmegate_v1_6.unit_of_measure.size + 
  bme_meff_marketandorder_bmegate_v1_6.settl_method.size + 
  bme_meff_marketandorder_bmegate_v1_6.exercise_style.size + 
  bme_meff_marketandorder_bmegate_v1_6.put_or_call.size + 
  bme_meff_marketandorder_bmegate_v1_6.flexible_indicator.size + 
  bme_meff_marketandorder_bmegate_v1_6.last_trading_day.size + 
  bme_meff_marketandorder_bmegate_v1_6.number_of_decimals.size + 
  bme_meff_marketandorder_bmegate_v1_6.order_number_of_decimals.size + 
  bme_meff_marketandorder_bmegate_v1_6.adjustments_rule.size + 
  bme_meff_marketandorder_bmegate_v1_6.maximum_order_size.size + 
  bme_meff_marketandorder_bmegate_v1_6.self_match_prevention.size + 
  bme_meff_marketandorder_bmegate_v1_6.commodity_derivative_indicator.size + 
  bme_meff_marketandorder_bmegate_v1_6.stock_when_underlying_is_dividend.size + 
  bme_meff_marketandorder_bmegate_v1_6.base_product.size + 
  bme_meff_marketandorder_bmegate_v1_6.sub_product.size + 
  bme_meff_marketandorder_bmegate_v1_6.further_sub_product.size + 
  bme_meff_marketandorder_bmegate_v1_6.base_currency.size + 
  bme_meff_marketandorder_bmegate_v1_6.quoted_currency.size + 
  bme_meff_marketandorder_bmegate_v1_6.maturity_month_year_increment_units.size + 
  bme_meff_marketandorder_bmegate_v1_6.start_maturity_month_year.size + 
  bme_meff_marketandorder_bmegate_v1_6.end_maturity_month_year.size + 
  bme_meff_marketandorder_bmegate_v1_6.maturity_month_year_increment.size + 
  bme_meff_marketandorder_bmegate_v1_6.underlying_symbol.size + 
  bme_meff_marketandorder_bmegate_v1_6.underlying_isin.size + 
  bme_meff_marketandorder_bmegate_v1_6.underlying_currency.size + 
  bme_meff_marketandorder_bmegate_v1_6.underlying_security_issuer_lei.size + 
  bme_meff_marketandorder_bmegate_v1_6.x_rolling_closing_type.size + 
  bme_meff_marketandorder_bmegate_v1_6.x_rolling_reference_buyer_rate.size + 
  bme_meff_marketandorder_bmegate_v1_6.x_rolling_buyer_markup.size + 
  bme_meff_marketandorder_bmegate_v1_6.x_rolling_reference_seller_rate.size + 
  bme_meff_marketandorder_bmegate_v1_6.x_rolling_seller_markup.size + 
  bme_meff_marketandorder_bmegate_v1_6.x_rolling_dividend_percentage.size + 
  bme_meff_marketandorder_bmegate_v1_6.x_rolling_dividend_pay_date_diff.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_symbol_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_side_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_price_1.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_symbol_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_side_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_price_2.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_symbol_3.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_3.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_side_3.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_price_3.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_symbol_4.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_4.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_side_4.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_price_4.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_symbol_5.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_5.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_side_5.size + 
  bme_meff_marketandorder_bmegate_v1_6.leg_price_5.size

-- Display: Security List Message
bme_meff_marketandorder_bmegate_v1_6.security_list_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Message
bme_meff_marketandorder_bmegate_v1_6.security_list_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Market Id: C
  index, market_id = bme_meff_marketandorder_bmegate_v1_6.market_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_meff_marketandorder_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Symbol: C
  index, symbol = bme_meff_marketandorder_bmegate_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Isin: C
  index, symbol_isin = bme_meff_marketandorder_bmegate_v1_6.symbol_isin.dissect(buffer, index, packet, parent)

  -- Fisn: C
  index, fisn = bme_meff_marketandorder_bmegate_v1_6.fisn.dissect(buffer, index, packet, parent)

  -- Issuer Lei: C
  index, issuer_lei = bme_meff_marketandorder_bmegate_v1_6.issuer_lei.dissect(buffer, index, packet, parent)

  -- Security Group: C
  index, security_group = bme_meff_marketandorder_bmegate_v1_6.security_group.dissect(buffer, index, packet, parent)

  -- Family Code: C
  index, family_code = bme_meff_marketandorder_bmegate_v1_6.family_code.dissect(buffer, index, packet, parent)

  -- Cfi Code: C
  index, cfi_code = bme_meff_marketandorder_bmegate_v1_6.cfi_code.dissect(buffer, index, packet, parent)

  -- Security Type: C
  index, security_type = bme_meff_marketandorder_bmegate_v1_6.security_type.dissect(buffer, index, packet, parent)

  -- Maturity Date: D
  index, maturity_date = bme_meff_marketandorder_bmegate_v1_6.maturity_date.dissect(buffer, index, packet, parent)

  -- Issue Date: D
  index, issue_date = bme_meff_marketandorder_bmegate_v1_6.issue_date.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: A
  index, contract_multiplier = bme_meff_marketandorder_bmegate_v1_6.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Li Spre: A
  index, li_spre = bme_meff_marketandorder_bmegate_v1_6.li_spre.dissect(buffer, index, packet, parent)

  -- Sst Ipre: A
  index, sst_ipre = bme_meff_marketandorder_bmegate_v1_6.sst_ipre.dissect(buffer, index, packet, parent)

  -- Li Spost: A
  index, li_spost = bme_meff_marketandorder_bmegate_v1_6.li_spost.dissect(buffer, index, packet, parent)

  -- Sst Ipost: A
  index, sst_ipost = bme_meff_marketandorder_bmegate_v1_6.sst_ipost.dissect(buffer, index, packet, parent)

  -- Liquid Instrument: F
  index, liquid_instrument = bme_meff_marketandorder_bmegate_v1_6.liquid_instrument.dissect(buffer, index, packet, parent)

  -- Admission Requested By Issuer: F
  index, admission_requested_by_issuer = bme_meff_marketandorder_bmegate_v1_6.admission_requested_by_issuer.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: Q
  index, min_trade_vol = bme_meff_marketandorder_bmegate_v1_6.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Round Lot: Q
  index, round_lot = bme_meff_marketandorder_bmegate_v1_6.round_lot.dissect(buffer, index, packet, parent)

  -- Currency: C
  index, currency = bme_meff_marketandorder_bmegate_v1_6.currency.dissect(buffer, index, packet, parent)

  -- Modality Mask B 4: B
  index, modality_mask_b_4 = bme_meff_marketandorder_bmegate_v1_6.modality_mask_b_4.dissect(buffer, index, packet, parent)

  -- Security Description: C
  index, security_description = bme_meff_marketandorder_bmegate_v1_6.security_description.dissect(buffer, index, packet, parent)

  -- Trading Obligation: F
  index, trading_obligation = bme_meff_marketandorder_bmegate_v1_6.trading_obligation.dissect(buffer, index, packet, parent)

  -- Sec Description: C
  index, sec_description = bme_meff_marketandorder_bmegate_v1_6.sec_description.dissect(buffer, index, packet, parent)

  -- Underlying Asset: C
  index, underlying_asset = bme_meff_marketandorder_bmegate_v1_6.underlying_asset.dissect(buffer, index, packet, parent)

  -- Security Sub Type: C
  index, security_sub_type = bme_meff_marketandorder_bmegate_v1_6.security_sub_type.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: C
  index, maturity_month_year = bme_meff_marketandorder_bmegate_v1_6.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Strike Price: P
  index, strike_price = bme_meff_marketandorder_bmegate_v1_6.strike_price.dissect(buffer, index, packet, parent)

  -- Strike Value: A
  index, strike_value = bme_meff_marketandorder_bmegate_v1_6.strike_value.dissect(buffer, index, packet, parent)

  -- Opt Attribute: C
  index, opt_attribute = bme_meff_marketandorder_bmegate_v1_6.opt_attribute.dissect(buffer, index, packet, parent)

  -- Min Price Increment: P
  index, min_price_increment = bme_meff_marketandorder_bmegate_v1_6.min_price_increment.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: C
  index, unit_of_measure = bme_meff_marketandorder_bmegate_v1_6.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Settl Method: C
  index, settl_method = bme_meff_marketandorder_bmegate_v1_6.settl_method.dissect(buffer, index, packet, parent)

  -- Exercise Style: C
  index, exercise_style = bme_meff_marketandorder_bmegate_v1_6.exercise_style.dissect(buffer, index, packet, parent)

  -- Put Or Call: C
  index, put_or_call = bme_meff_marketandorder_bmegate_v1_6.put_or_call.dissect(buffer, index, packet, parent)

  -- Flexible Indicator: C
  index, flexible_indicator = bme_meff_marketandorder_bmegate_v1_6.flexible_indicator.dissect(buffer, index, packet, parent)

  -- Last Trading Day: D
  index, last_trading_day = bme_meff_marketandorder_bmegate_v1_6.last_trading_day.dissect(buffer, index, packet, parent)

  -- Number Of Decimals: U
  index, number_of_decimals = bme_meff_marketandorder_bmegate_v1_6.number_of_decimals.dissect(buffer, index, packet, parent)

  -- Order Number Of Decimals: U
  index, order_number_of_decimals = bme_meff_marketandorder_bmegate_v1_6.order_number_of_decimals.dissect(buffer, index, packet, parent)

  -- Adjustments Rule: C
  index, adjustments_rule = bme_meff_marketandorder_bmegate_v1_6.adjustments_rule.dissect(buffer, index, packet, parent)

  -- Maximum Order Size: A
  index, maximum_order_size = bme_meff_marketandorder_bmegate_v1_6.maximum_order_size.dissect(buffer, index, packet, parent)

  -- Self Match Prevention: F
  index, self_match_prevention = bme_meff_marketandorder_bmegate_v1_6.self_match_prevention.dissect(buffer, index, packet, parent)

  -- Commodity Derivative Indicator: C
  index, commodity_derivative_indicator = bme_meff_marketandorder_bmegate_v1_6.commodity_derivative_indicator.dissect(buffer, index, packet, parent)

  -- Stock When Underlying Is Dividend: C
  index, stock_when_underlying_is_dividend = bme_meff_marketandorder_bmegate_v1_6.stock_when_underlying_is_dividend.dissect(buffer, index, packet, parent)

  -- Base Product: C
  index, base_product = bme_meff_marketandorder_bmegate_v1_6.base_product.dissect(buffer, index, packet, parent)

  -- Sub Product: C
  index, sub_product = bme_meff_marketandorder_bmegate_v1_6.sub_product.dissect(buffer, index, packet, parent)

  -- Further Sub Product: C
  index, further_sub_product = bme_meff_marketandorder_bmegate_v1_6.further_sub_product.dissect(buffer, index, packet, parent)

  -- Base Currency: C
  index, base_currency = bme_meff_marketandorder_bmegate_v1_6.base_currency.dissect(buffer, index, packet, parent)

  -- Quoted Currency: C
  index, quoted_currency = bme_meff_marketandorder_bmegate_v1_6.quoted_currency.dissect(buffer, index, packet, parent)

  -- Maturity Month Year Increment Units: C
  index, maturity_month_year_increment_units = bme_meff_marketandorder_bmegate_v1_6.maturity_month_year_increment_units.dissect(buffer, index, packet, parent)

  -- Start Maturity Month Year: C
  index, start_maturity_month_year = bme_meff_marketandorder_bmegate_v1_6.start_maturity_month_year.dissect(buffer, index, packet, parent)

  -- End Maturity Month Year: C
  index, end_maturity_month_year = bme_meff_marketandorder_bmegate_v1_6.end_maturity_month_year.dissect(buffer, index, packet, parent)

  -- Maturity Month Year Increment: U
  index, maturity_month_year_increment = bme_meff_marketandorder_bmegate_v1_6.maturity_month_year_increment.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: C
  index, underlying_symbol = bme_meff_marketandorder_bmegate_v1_6.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Underlying Isin: C
  index, underlying_isin = bme_meff_marketandorder_bmegate_v1_6.underlying_isin.dissect(buffer, index, packet, parent)

  -- Underlying Currency: C
  index, underlying_currency = bme_meff_marketandorder_bmegate_v1_6.underlying_currency.dissect(buffer, index, packet, parent)

  -- Underlying Security Issuer Lei: C
  index, underlying_security_issuer_lei = bme_meff_marketandorder_bmegate_v1_6.underlying_security_issuer_lei.dissect(buffer, index, packet, parent)

  -- X Rolling Closing Type: C
  index, x_rolling_closing_type = bme_meff_marketandorder_bmegate_v1_6.x_rolling_closing_type.dissect(buffer, index, packet, parent)

  -- X Rolling Reference Buyer Rate: C
  index, x_rolling_reference_buyer_rate = bme_meff_marketandorder_bmegate_v1_6.x_rolling_reference_buyer_rate.dissect(buffer, index, packet, parent)

  -- X Rolling Buyer Markup: R
  index, x_rolling_buyer_markup = bme_meff_marketandorder_bmegate_v1_6.x_rolling_buyer_markup.dissect(buffer, index, packet, parent)

  -- X Rolling Reference Seller Rate: C
  index, x_rolling_reference_seller_rate = bme_meff_marketandorder_bmegate_v1_6.x_rolling_reference_seller_rate.dissect(buffer, index, packet, parent)

  -- X Rolling Seller Markup: R
  index, x_rolling_seller_markup = bme_meff_marketandorder_bmegate_v1_6.x_rolling_seller_markup.dissect(buffer, index, packet, parent)

  -- X Rolling Dividend Percentage: R
  index, x_rolling_dividend_percentage = bme_meff_marketandorder_bmegate_v1_6.x_rolling_dividend_percentage.dissect(buffer, index, packet, parent)

  -- X Rolling Dividend Pay Date Diff: U
  index, x_rolling_dividend_pay_date_diff = bme_meff_marketandorder_bmegate_v1_6.x_rolling_dividend_pay_date_diff.dissect(buffer, index, packet, parent)

  -- Leg Symbol 1: C
  index, leg_symbol_1 = bme_meff_marketandorder_bmegate_v1_6.leg_symbol_1.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty 1: Q
  index, leg_ratio_qty_1 = bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_1.dissect(buffer, index, packet, parent)

  -- Leg Side 1: C
  index, leg_side_1 = bme_meff_marketandorder_bmegate_v1_6.leg_side_1.dissect(buffer, index, packet, parent)

  -- Leg Price 1: P
  index, leg_price_1 = bme_meff_marketandorder_bmegate_v1_6.leg_price_1.dissect(buffer, index, packet, parent)

  -- Leg Symbol 2: C
  index, leg_symbol_2 = bme_meff_marketandorder_bmegate_v1_6.leg_symbol_2.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty 2: Q
  index, leg_ratio_qty_2 = bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_2.dissect(buffer, index, packet, parent)

  -- Leg Side 2: C
  index, leg_side_2 = bme_meff_marketandorder_bmegate_v1_6.leg_side_2.dissect(buffer, index, packet, parent)

  -- Leg Price 2: P
  index, leg_price_2 = bme_meff_marketandorder_bmegate_v1_6.leg_price_2.dissect(buffer, index, packet, parent)

  -- Leg Symbol 3: C
  index, leg_symbol_3 = bme_meff_marketandorder_bmegate_v1_6.leg_symbol_3.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty 3: Q
  index, leg_ratio_qty_3 = bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_3.dissect(buffer, index, packet, parent)

  -- Leg Side 3: C
  index, leg_side_3 = bme_meff_marketandorder_bmegate_v1_6.leg_side_3.dissect(buffer, index, packet, parent)

  -- Leg Price 3: P
  index, leg_price_3 = bme_meff_marketandorder_bmegate_v1_6.leg_price_3.dissect(buffer, index, packet, parent)

  -- Leg Symbol 4: C
  index, leg_symbol_4 = bme_meff_marketandorder_bmegate_v1_6.leg_symbol_4.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty 4: Q
  index, leg_ratio_qty_4 = bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_4.dissect(buffer, index, packet, parent)

  -- Leg Side 4: C
  index, leg_side_4 = bme_meff_marketandorder_bmegate_v1_6.leg_side_4.dissect(buffer, index, packet, parent)

  -- Leg Price 4: P
  index, leg_price_4 = bme_meff_marketandorder_bmegate_v1_6.leg_price_4.dissect(buffer, index, packet, parent)

  -- Leg Symbol 5: C
  index, leg_symbol_5 = bme_meff_marketandorder_bmegate_v1_6.leg_symbol_5.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty 5: Q
  index, leg_ratio_qty_5 = bme_meff_marketandorder_bmegate_v1_6.leg_ratio_qty_5.dissect(buffer, index, packet, parent)

  -- Leg Side 5: C
  index, leg_side_5 = bme_meff_marketandorder_bmegate_v1_6.leg_side_5.dissect(buffer, index, packet, parent)

  -- Leg Price 5: P
  index, leg_price_5 = bme_meff_marketandorder_bmegate_v1_6.leg_price_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security List Message
bme_meff_marketandorder_bmegate_v1_6.security_list_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.security_list_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.security_list_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.security_list_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.security_list_message.fields(buffer, offset, packet, parent)
  end
end

-- Statistics Message
bme_meff_marketandorder_bmegate_v1_6.statistics_message = {}

-- Size: Statistics Message
bme_meff_marketandorder_bmegate_v1_6.statistics_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size + 
  bme_meff_marketandorder_bmegate_v1_6.data_count.size + 
  bme_meff_marketandorder_bmegate_v1_6.data_code.size

-- Display: Statistics Message
bme_meff_marketandorder_bmegate_v1_6.statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Message
bme_meff_marketandorder_bmegate_v1_6.statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Data Count: U
  index, data_count = bme_meff_marketandorder_bmegate_v1_6.data_count.dissect(buffer, index, packet, parent)

  -- Data Code: C
  index, data_code = bme_meff_marketandorder_bmegate_v1_6.data_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Message
bme_meff_marketandorder_bmegate_v1_6.statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.statistics_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Security List Cancellation Report Message
bme_meff_marketandorder_bmegate_v1_6.security_list_cancellation_report_message = {}

-- Size: Security List Cancellation Report Message
bme_meff_marketandorder_bmegate_v1_6.security_list_cancellation_report_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.market_segment_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.security_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.symbol.size + 
  bme_meff_marketandorder_bmegate_v1_6.symbol_isin.size

-- Display: Security List Cancellation Report Message
bme_meff_marketandorder_bmegate_v1_6.security_list_cancellation_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Cancellation Report Message
bme_meff_marketandorder_bmegate_v1_6.security_list_cancellation_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Market Id: C
  index, market_id = bme_meff_marketandorder_bmegate_v1_6.market_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_meff_marketandorder_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_meff_marketandorder_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Symbol: C
  index, symbol = bme_meff_marketandorder_bmegate_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Isin: C
  index, symbol_isin = bme_meff_marketandorder_bmegate_v1_6.symbol_isin.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security List Cancellation Report Message
bme_meff_marketandorder_bmegate_v1_6.security_list_cancellation_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.security_list_cancellation_report_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.security_list_cancellation_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.security_list_cancellation_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.security_list_cancellation_report_message.fields(buffer, offset, packet, parent)
  end
end

-- News Message
bme_meff_marketandorder_bmegate_v1_6.news_message = {}

-- Size: News Message
bme_meff_marketandorder_bmegate_v1_6.news_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.news_text.size

-- Display: News Message
bme_meff_marketandorder_bmegate_v1_6.news_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: News Message
bme_meff_marketandorder_bmegate_v1_6.news_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- News Text: C
  index, news_text = bme_meff_marketandorder_bmegate_v1_6.news_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: News Message
bme_meff_marketandorder_bmegate_v1_6.news_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.news_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.news_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.news_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.news_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Status Message
bme_meff_marketandorder_bmegate_v1_6.trading_session_status_message = {}

-- Size: Trading Session Status Message
bme_meff_marketandorder_bmegate_v1_6.trading_session_status_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.trading_session_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trading_session_sub_id.size + 
  bme_meff_marketandorder_bmegate_v1_6.trad_ses_status.size + 
  bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.size

-- Display: Trading Session Status Message
bme_meff_marketandorder_bmegate_v1_6.trading_session_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
bme_meff_marketandorder_bmegate_v1_6.trading_session_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_meff_marketandorder_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: U
  index, trading_session_sub_id = bme_meff_marketandorder_bmegate_v1_6.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Trad Ses Status: U
  index, trad_ses_status = bme_meff_marketandorder_bmegate_v1_6.trad_ses_status.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_meff_marketandorder_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Message
bme_meff_marketandorder_bmegate_v1_6.trading_session_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.trading_session_status_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.trading_session_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.trading_session_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.trading_session_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Reject Message
bme_meff_marketandorder_bmegate_v1_6.reject_message = {}

-- Size: Reject Message
bme_meff_marketandorder_bmegate_v1_6.reject_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.session_reject_reason.size + 
  bme_meff_marketandorder_bmegate_v1_6.text_c_58.size + 
  bme_meff_marketandorder_bmegate_v1_6.msg_rejected_reference.size

-- Display: Reject Message
bme_meff_marketandorder_bmegate_v1_6.reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject Message
bme_meff_marketandorder_bmegate_v1_6.reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Session Reject Reason: U
  index, session_reject_reason = bme_meff_marketandorder_bmegate_v1_6.session_reject_reason.dissect(buffer, index, packet, parent)

  -- Text C 58: C
  index, text_c_58 = bme_meff_marketandorder_bmegate_v1_6.text_c_58.dissect(buffer, index, packet, parent)

  -- Msg Rejected Reference: (raw data)
  index, msg_rejected_reference = bme_meff_marketandorder_bmegate_v1_6.msg_rejected_reference.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject Message
bme_meff_marketandorder_bmegate_v1_6.reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.reject_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Message
bme_meff_marketandorder_bmegate_v1_6.logon_message = {}

-- Size: Logon Message
bme_meff_marketandorder_bmegate_v1_6.logon_message.size =
  bme_meff_marketandorder_bmegate_v1_6.username.size + 
  bme_meff_marketandorder_bmegate_v1_6.password.size + 
  bme_meff_marketandorder_bmegate_v1_6.software_name.size + 
  bme_meff_marketandorder_bmegate_v1_6.expected_sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.subscriptions.size + 
  bme_meff_marketandorder_bmegate_v1_6.protocol_version.size

-- Display: Logon Message
bme_meff_marketandorder_bmegate_v1_6.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
bme_meff_marketandorder_bmegate_v1_6.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: C
  index, username = bme_meff_marketandorder_bmegate_v1_6.username.dissect(buffer, index, packet, parent)

  -- Password: C
  index, password = bme_meff_marketandorder_bmegate_v1_6.password.dissect(buffer, index, packet, parent)

  -- Software Name: C
  index, software_name = bme_meff_marketandorder_bmegate_v1_6.software_name.dissect(buffer, index, packet, parent)

  -- Expected Sequence Number: U
  index, expected_sequence_number = bme_meff_marketandorder_bmegate_v1_6.expected_sequence_number.dissect(buffer, index, packet, parent)

  -- Subscriptions: B
  index, subscriptions = bme_meff_marketandorder_bmegate_v1_6.subscriptions.dissect(buffer, index, packet, parent)

  -- Protocol Version: C
  index, protocol_version = bme_meff_marketandorder_bmegate_v1_6.protocol_version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
bme_meff_marketandorder_bmegate_v1_6.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.logon_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Network Status Message
bme_meff_marketandorder_bmegate_v1_6.network_status_message = {}

-- Size: Network Status Message
bme_meff_marketandorder_bmegate_v1_6.network_status_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.network_status_value.size

-- Display: Network Status Message
bme_meff_marketandorder_bmegate_v1_6.network_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Network Status Message
bme_meff_marketandorder_bmegate_v1_6.network_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Network Status Value: U
  index, network_status_value = bme_meff_marketandorder_bmegate_v1_6.network_status_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Network Status Message
bme_meff_marketandorder_bmegate_v1_6.network_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.network_status_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.network_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.network_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.network_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
bme_meff_marketandorder_bmegate_v1_6.heartbeat_message = {}

-- Size: Heartbeat Message
bme_meff_marketandorder_bmegate_v1_6.heartbeat_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size

-- Display: Heartbeat Message
bme_meff_marketandorder_bmegate_v1_6.heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Message
bme_meff_marketandorder_bmegate_v1_6.heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Message
bme_meff_marketandorder_bmegate_v1_6.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.heartbeat_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Logout Response Message
bme_meff_marketandorder_bmegate_v1_6.logout_response_message = {}

-- Size: Logout Response Message
bme_meff_marketandorder_bmegate_v1_6.logout_response_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.logout_reason.size

-- Display: Logout Response Message
bme_meff_marketandorder_bmegate_v1_6.logout_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Response Message
bme_meff_marketandorder_bmegate_v1_6.logout_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Logout Reason: U
  index, logout_reason = bme_meff_marketandorder_bmegate_v1_6.logout_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Response Message
bme_meff_marketandorder_bmegate_v1_6.logout_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.logout_response_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.logout_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.logout_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.logout_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Response Message
bme_meff_marketandorder_bmegate_v1_6.logon_response_message = {}

-- Size: Logon Response Message
bme_meff_marketandorder_bmegate_v1_6.logon_response_message.size =
  bme_meff_marketandorder_bmegate_v1_6.sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.heart_bt_int.size + 
  bme_meff_marketandorder_bmegate_v1_6.protocol_version.size + 
  bme_meff_marketandorder_bmegate_v1_6.test_production_ind.size + 
  bme_meff_marketandorder_bmegate_v1_6.environment_code.size + 
  bme_meff_marketandorder_bmegate_v1_6.session_date.size + 
  bme_meff_marketandorder_bmegate_v1_6.expected_sequence_number.size + 
  bme_meff_marketandorder_bmegate_v1_6.sequence_number_to.size

-- Display: Logon Response Message
bme_meff_marketandorder_bmegate_v1_6.logon_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Response Message
bme_meff_marketandorder_bmegate_v1_6.logon_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_meff_marketandorder_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Heart Bt Int: U
  index, heart_bt_int = bme_meff_marketandorder_bmegate_v1_6.heart_bt_int.dissect(buffer, index, packet, parent)

  -- Protocol Version: C
  index, protocol_version = bme_meff_marketandorder_bmegate_v1_6.protocol_version.dissect(buffer, index, packet, parent)

  -- Test Production Ind: C
  index, test_production_ind = bme_meff_marketandorder_bmegate_v1_6.test_production_ind.dissect(buffer, index, packet, parent)

  -- Environment Code: C
  index, environment_code = bme_meff_marketandorder_bmegate_v1_6.environment_code.dissect(buffer, index, packet, parent)

  -- Session Date: D
  index, session_date = bme_meff_marketandorder_bmegate_v1_6.session_date.dissect(buffer, index, packet, parent)

  -- Expected Sequence Number: U
  index, expected_sequence_number = bme_meff_marketandorder_bmegate_v1_6.expected_sequence_number.dissect(buffer, index, packet, parent)

  -- Sequence Number To: U
  index, sequence_number_to = bme_meff_marketandorder_bmegate_v1_6.sequence_number_to.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Response Message
bme_meff_marketandorder_bmegate_v1_6.logon_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.logon_response_message, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.logon_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.logon_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.logon_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
bme_meff_marketandorder_bmegate_v1_6.payload = {}

-- Dissect: Payload
bme_meff_marketandorder_bmegate_v1_6.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Logon Response Message
  if message_type == 0x08 then
    return bme_meff_marketandorder_bmegate_v1_6.logon_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Response Message
  if message_type == 0x0B then
    return bme_meff_marketandorder_bmegate_v1_6.logout_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if message_type == 0x30 then
    return bme_meff_marketandorder_bmegate_v1_6.heartbeat_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Network Status Message
  if message_type == 0x0A then
    return bme_meff_marketandorder_bmegate_v1_6.network_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Message
  if message_type == 0x41 then
    return bme_meff_marketandorder_bmegate_v1_6.logon_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if message_type == 0x35 then
    return offset
  end
  -- Dissect Reject Message
  if message_type == 0x0D then
    return bme_meff_marketandorder_bmegate_v1_6.reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Status Message
  if message_type == 0x68 then
    return bme_meff_marketandorder_bmegate_v1_6.trading_session_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect News Message
  if message_type == 0x42 then
    return bme_meff_marketandorder_bmegate_v1_6.news_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security List Cancellation Report Message
  if message_type == 0x78 then
    return bme_meff_marketandorder_bmegate_v1_6.security_list_cancellation_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Message
  if message_type == 0x84 then
    return bme_meff_marketandorder_bmegate_v1_6.statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security List Message
  if message_type == 0x79 then
    return bme_meff_marketandorder_bmegate_v1_6.security_list_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security List Update Report Message
  if message_type == 0x80 then
    return bme_meff_marketandorder_bmegate_v1_6.security_list_update_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 0x66 then
    return bme_meff_marketandorder_bmegate_v1_6.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Family Status Message
  if message_type == 0x89 then
    return bme_meff_marketandorder_bmegate_v1_6.family_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Clear Message
  if message_type == 0x81 then
    return bme_meff_marketandorder_bmegate_v1_6.order_book_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Market Pre Transparency Information Message
  if message_type == 0x03 then
    return bme_meff_marketandorder_bmegate_v1_6.order_market_pre_transparency_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Market Pre Transparency Information Message
  if message_type == 0x07 then
    return bme_meff_marketandorder_bmegate_v1_6.quote_market_pre_transparency_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancellation Market Member Message
  if message_type == 0x01 then
    return bme_meff_marketandorder_bmegate_v1_6.order_cancellation_market_member_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Cancellation Market Member Message
  if message_type == 0x05 then
    return bme_meff_marketandorder_bmegate_v1_6.quote_cancellation_market_member_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Market Post Transparency Information Topofbook Message
  if message_type == 0x10 then
    return bme_meff_marketandorder_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Trade Amendment Or Cancellation Message
  if message_type == 0x18 then
    return bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Market Post Transparency Information Full Depth Message
  if message_type == 0x11 then
    return bme_meff_marketandorder_bmegate_v1_6.trade_market_post_transparency_information_full_depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Indication Of Interest Message
  if message_type == 0x36 then
    return bme_meff_marketandorder_bmegate_v1_6.indication_of_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Market Pre Transparency Information Message
  if message_type == 0x85 then
    return bme_meff_marketandorder_bmegate_v1_6.rfq_market_pre_transparency_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Topofbook Message
  if message_type == 0x82 then
    return bme_meff_marketandorder_bmegate_v1_6.topofbook_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order And Quote Client Data Message
  if message_type == 0x6F then
    return bme_meff_marketandorder_bmegate_v1_6.order_and_quote_client_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delta Protection Parameters Message
  if message_type == 0x86 then
    return bme_meff_marketandorder_bmegate_v1_6.delta_protection_parameters_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple New Order Message
  if message_type == 0x44 then
    return bme_meff_marketandorder_bmegate_v1_6.simple_new_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple New Order With Client Data Message
  if message_type == 0x45 then
    return bme_meff_marketandorder_bmegate_v1_6.simple_new_order_with_client_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Order Modification Message
  if message_type == 0x47 then
    return bme_meff_marketandorder_bmegate_v1_6.simple_order_modification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Order Modification With Client Data Message
  if message_type == 0x48 then
    return bme_meff_marketandorder_bmegate_v1_6.simple_order_modification_with_client_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancellation Request Message
  if message_type == 0x46 then
    return bme_meff_marketandorder_bmegate_v1_6.order_cancellation_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Quote Message
  if message_type == 0x53 then
    return bme_meff_marketandorder_bmegate_v1_6.new_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Modification Request Message
  if message_type == 0x61 then
    return bme_meff_marketandorder_bmegate_v1_6.quote_modification_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Cancellation Request Message
  if message_type == 0x5A then
    return bme_meff_marketandorder_bmegate_v1_6.quote_cancellation_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Orderquote Cancellation Message
  if message_type == 0x71 then
    return bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order And Quote Client Data Parameters Ack Nack Message
  if message_type == 0x87 then
    return bme_meff_marketandorder_bmegate_v1_6.order_and_quote_client_data_parameters_ack_nack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delta Protection Parameters Ack Nack Message
  if message_type == 0x88 then
    return bme_meff_marketandorder_bmegate_v1_6.delta_protection_parameters_ack_nack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Order Status Message
  if message_type == 0x02 then
    return bme_meff_marketandorder_bmegate_v1_6.simple_order_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Status Message
  if message_type == 0x06 then
    return bme_meff_marketandorder_bmegate_v1_6.quote_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Reject Message
  if message_type == 0x39 then
    return bme_meff_marketandorder_bmegate_v1_6.order_cancel_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Orderquote Cancellation Completion Message
  if message_type == 0x72 then
    return bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_completion_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Orderquote Cancellation Reject Message
  if message_type == 0x73 then
    return bme_meff_marketandorder_bmegate_v1_6.mass_orderquote_cancellation_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Business Message Reject Message
  if message_type == 0x6A then
    return bme_meff_marketandorder_bmegate_v1_6.business_message_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Private Information 2 Legs Message
  if message_type == 0x17 then
    return bme_meff_marketandorder_bmegate_v1_6.execution_private_information_2_legs_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Trade Amendment Or Cancellation 1 Leg Buy Private Information Message
  if message_type == 0x1A then
    return bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_buy_private_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Trade Amendment Or Cancellation 1 Leg Sell Private Information Message
  if message_type == 0x1C then
    return bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_1_leg_sell_private_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Trade Amendment Or Cancellation 2 Legs Private Information Message
  if message_type == 0x1E then
    return bme_meff_marketandorder_bmegate_v1_6.trade_trade_amendment_or_cancellation_2_legs_private_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Private Information 1 Leg Buy Market Order Message
  if message_type == 0x13 then
    return bme_meff_marketandorder_bmegate_v1_6.execution_private_information_1_leg_buy_market_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Private Information 1 Leg Sell Market Order Message
  if message_type == 0x15 then
    return bme_meff_marketandorder_bmegate_v1_6.execution_private_information_1_leg_sell_market_order_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
bme_meff_marketandorder_bmegate_v1_6.message_header = {}

-- Size: Message Header
bme_meff_marketandorder_bmegate_v1_6.message_header.size =
  bme_meff_marketandorder_bmegate_v1_6.message_size.size + 
  bme_meff_marketandorder_bmegate_v1_6.message_type.size

-- Display: Message Header
bme_meff_marketandorder_bmegate_v1_6.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
bme_meff_marketandorder_bmegate_v1_6.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: U
  index, message_size = bme_meff_marketandorder_bmegate_v1_6.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: U
  index, message_type = bme_meff_marketandorder_bmegate_v1_6.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
bme_meff_marketandorder_bmegate_v1_6.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.message_header, buffer(offset, 0))
    local index = bme_meff_marketandorder_bmegate_v1_6.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_meff_marketandorder_bmegate_v1_6.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_meff_marketandorder_bmegate_v1_6.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
bme_meff_marketandorder_bmegate_v1_6.message = {}

-- Display: Message
bme_meff_marketandorder_bmegate_v1_6.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
bme_meff_marketandorder_bmegate_v1_6.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = bme_meff_marketandorder_bmegate_v1_6.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 51 branches
  index = bme_meff_marketandorder_bmegate_v1_6.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
bme_meff_marketandorder_bmegate_v1_6.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6.fields.message, buffer(offset, 0))
    local current = bme_meff_marketandorder_bmegate_v1_6.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = bme_meff_marketandorder_bmegate_v1_6.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bme_meff_marketandorder_bmegate_v1_6.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Packet
bme_meff_marketandorder_bmegate_v1_6.packet = {}

-- Verify required size of Tcp packet
bme_meff_marketandorder_bmegate_v1_6.packet.requiredsize = function(buffer)
  return buffer:len() >= bme_meff_marketandorder_bmegate_v1_6.message_header.size
end

-- Dissect Packet
bme_meff_marketandorder_bmegate_v1_6.packet.dissect = function(buffer, packet, parent)
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
    index, message = bme_meff_marketandorder_bmegate_v1_6.message.dissect(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_bme_meff_marketandorder_bmegate_v1_6.init()
end

-- Dissector for Bme Meff MarketAndOrder BmeGate 1.6
function omi_bme_meff_marketandorder_bmegate_v1_6.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_bme_meff_marketandorder_bmegate_v1_6.name

  -- Dissect protocol
  local protocol = parent:add(omi_bme_meff_marketandorder_bmegate_v1_6, buffer(), omi_bme_meff_marketandorder_bmegate_v1_6.description, "("..buffer:len().." Bytes)")
  return bme_meff_marketandorder_bmegate_v1_6.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Bme Meff MarketAndOrder BmeGate 1.6 (Tcp)
local function omi_bme_meff_marketandorder_bmegate_v1_6_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bme_meff_marketandorder_bmegate_v1_6.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bme_meff_marketandorder_bmegate_v1_6
  omi_bme_meff_marketandorder_bmegate_v1_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Bme Meff MarketAndOrder BmeGate 1.6
omi_bme_meff_marketandorder_bmegate_v1_6:register_heuristic("tcp", omi_bme_meff_marketandorder_bmegate_v1_6_tcp_heuristic)

-- Register Bme Meff MarketAndOrder BmeGate 1.6 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_bme_meff_marketandorder_bmegate_v1_6)

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
