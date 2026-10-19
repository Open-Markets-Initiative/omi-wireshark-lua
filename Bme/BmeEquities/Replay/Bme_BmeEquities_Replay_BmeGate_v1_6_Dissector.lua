-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bme BmeEquities Replay BmeGate 1.6 Protocol
local omi_bme_bmeequities_replay_bmegate_v1_6 = Proto("Omi.Bme.BmeEquities.Replay.BmeGate.v1.6", "Bme BmeEquities Replay BmeGate 1.6")

-- Protocol table
local bme_bmeequities_replay_bmegate_v1_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bme BmeEquities Replay BmeGate 1.6 Fields
omi_bme_bmeequities_replay_bmegate_v1_6.fields.admission_requested_by_issuer = ProtoField.new("Admission Requested By Issuer", "bme.bmeequities.replay.bmegate.v1.6.admissionrequestedbyissuer", ftypes.UINT8, nil, nil, nil, "Security request for admission to trading by the issuer")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.adnt = ProtoField.new("Adnt", "bme.bmeequities.replay.bmegate.v1.6.adnt", ftypes.DOUBLE, nil, nil, nil, "Average Daily Number of Trades")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.adt = ProtoField.new("Adt", "bme.bmeequities.replay.bmegate.v1.6.adt", ftypes.DOUBLE, nil, nil, nil, "Average Daily Turnover")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.algo_flag = ProtoField.new("Algo Flag", "bme.bmeequities.replay.bmegate.v1.6.algoflag", ftypes.UINT8, nil, nil, nil, "Algorithmic flag indicator")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.amended_trade_date = ProtoField.new("Amended Trade Date", "bme.bmeequities.replay.bmegate.v1.6.amendedtradedate", ftypes.INT32, nil, nil, nil, "Date of the amended/cancelled trade")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.amended_trade_type = ProtoField.new("Amended Trade Type", "bme.bmeequities.replay.bmegate.v1.6.amendedtradetype", ftypes.STRING, nil, nil, nil, "Trade type of the amended/cancelled trade")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.ask_orders_1 = ProtoField.new("Ask Orders 1", "bme.bmeequities.replay.bmegate.v1.6.askorders1", ftypes.UINT16, nil, nil, nil, "Sell number of orders")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.ask_px_1 = ProtoField.new("Ask Px 1", "bme.bmeequities.replay.bmegate.v1.6.askpx1", ftypes.DOUBLE, nil, nil, nil, "Sell price")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.ask_size_1 = ProtoField.new("Ask Size 1", "bme.bmeequities.replay.bmegate.v1.6.asksize1", ftypes.UINT32, nil, nil, nil, "Sell volume")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.auction_end_time = ProtoField.new("Auction End Time", "bme.bmeequities.replay.bmegate.v1.6.auctionendtime", ftypes.INT64, nil, nil, nil, "Actual UTC time for the end of the auction")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.auction_origin = ProtoField.new("Auction Origin", "bme.bmeequities.replay.bmegate.v1.6.auctionorigin", ftypes.UINT8, nil, nil, nil, "Auction type")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.auction_trigger_price = ProtoField.new("Auction Trigger Price", "bme.bmeequities.replay.bmegate.v1.6.auctiontriggerprice", ftypes.DOUBLE)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.automatic_expiration = ProtoField.new("Automatic Expiration", "bme.bmeequities.replay.bmegate.v1.6.automaticexpiration", ftypes.UINT8)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.average_quarterly_turnover = ProtoField.new("Average Quarterly Turnover", "bme.bmeequities.replay.bmegate.v1.6.averagequarterlyturnover", ftypes.DOUBLE)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.barrier = ProtoField.new("Barrier", "bme.bmeequities.replay.bmegate.v1.6.barrier", ftypes.DOUBLE)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.barrier_2 = ProtoField.new("Barrier 2", "bme.bmeequities.replay.bmegate.v1.6.barrier2", ftypes.DOUBLE, nil, nil, nil, "Second Barrier")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.barrier_return = ProtoField.new("Barrier Return", "bme.bmeequities.replay.bmegate.v1.6.barrierreturn", ftypes.DOUBLE)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.base_product = ProtoField.new("Base Product", "bme.bmeequities.replay.bmegate.v1.6.baseproduct", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.bencrfpt_flag = ProtoField.new("Bencrfpt Flag", "bme.bmeequities.replay.bmegate.v1.6.bencrfptflag", ftypes.STRING, nil, nil, nil, "Benchmark or Reference Price Indicator MMT")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.bid_orders_1 = ProtoField.new("Bid Orders 1", "bme.bmeequities.replay.bmegate.v1.6.bidorders1", ftypes.UINT16, nil, nil, nil, "Buy number of orders")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.bid_px_1 = ProtoField.new("Bid Px 1", "bme.bmeequities.replay.bmegate.v1.6.bidpx1", ftypes.DOUBLE, nil, nil, nil, "Buy price")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.bid_size_1 = ProtoField.new("Bid Size 1", "bme.bmeequities.replay.bmegate.v1.6.bidsize1", ftypes.UINT32, nil, nil, nil, "Buy volume")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.block_oscilation_percentage = ProtoField.new("Block Oscilation Percentage", "bme.bmeequities.replay.bmegate.v1.6.blockoscilationpercentage", ftypes.DOUBLE, nil, nil, nil, "Price fluctuation on bid/ask spread midpoint for agreed blocks")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.block_static_range = ProtoField.new("Block Static Range", "bme.bmeequities.replay.bmegate.v1.6.blockstaticrange", ftypes.DOUBLE, nil, nil, nil, "Static range for parametrised blocks")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.bonus_warrants_with_active_bonus = ProtoField.new("Bonus Warrants With Active Bonus", "bme.bmeequities.replay.bmegate.v1.6.bonuswarrantswithactivebonus", ftypes.UINT8, nil, nil, nil, "Indicates whether the bonus is active or not (bonus)")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.buyer_bolsa_code = ProtoField.new("Buyer Bolsa Code", "bme.bmeequities.replay.bmegate.v1.6.buyerbolsacode", ftypes.STRING, nil, nil, nil, "Stock Exchange code of the buyer")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.cfi_code = ProtoField.new("Cfi Code", "bme.bmeequities.replay.bmegate.v1.6.cficode", ftypes.STRING, nil, nil, nil, "CFICode")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.commodity_derivative_indicator = ProtoField.new("Commodity Derivative Indicator", "bme.bmeequities.replay.bmegate.v1.6.commodityderivativeindicator", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "bme.bmeequities.replay.bmegate.v1.6.contractmultiplier", ftypes.DOUBLE, nil, nil, nil, "Conversion factor between price units and monetary units")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.cp_reg_type = ProtoField.new("Cp Reg Type", "bme.bmeequities.replay.bmegate.v1.6.cpregtype", ftypes.UINT8, nil, nil, nil, "Indicates if it is an institutional security or not")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.currency = ProtoField.new("Currency", "bme.bmeequities.replay.bmegate.v1.6.currency", ftypes.STRING, nil, nil, nil, "Currency code")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.data_code = ProtoField.new("Data Code", "bme.bmeequities.replay.bmegate.v1.6.datacode", ftypes.STRING, nil, nil, nil, "Data field code")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.data_count = ProtoField.new("Data Count", "bme.bmeequities.replay.bmegate.v1.6.datacount", ftypes.UINT8, nil, nil, nil, "Number of data values")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.deferral_waiver = ProtoField.new("Deferral Waiver", "bme.bmeequities.replay.bmegate.v1.6.deferralwaiver", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.designation = ProtoField.new("Designation", "bme.bmeequities.replay.bmegate.v1.6.designation", ftypes.STRING, nil, nil, nil, "Trade situation")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.display_qty = ProtoField.new("Display Qty", "bme.bmeequities.replay.bmegate.v1.6.displayqty", ftypes.UINT32, nil, nil, nil, "Visible pending volume")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.display_qty_2 = ProtoField.new("Display Qty 2", "bme.bmeequities.replay.bmegate.v1.6.displayqty2", ftypes.UINT32, nil, nil, nil, "Visible pending volume")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.double_volume_cap_reached = ProtoField.new("Double Volume Cap Reached", "bme.bmeequities.replay.bmegate.v1.6.doublevolumecapreached", ftypes.UINT8)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.dynamic_price_oscilation_percentage = ProtoField.new("Dynamic Price Oscilation Percentage", "bme.bmeequities.replay.bmegate.v1.6.dynamicpriceoscilationpercentage", ftypes.DOUBLE, nil, nil, nil, "Percentage of dynamic range")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.dynamic_range_multiplier = ProtoField.new("Dynamic Range Multiplier", "bme.bmeequities.replay.bmegate.v1.6.dynamicrangemultiplier", ftypes.UINT8)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.effective_amount_filters_routed_orders = ProtoField.new("Effective Amount Filters Routed Orders", "bme.bmeequities.replay.bmegate.v1.6.effectiveamountfiltersroutedorders", ftypes.DOUBLE, nil, nil, nil, "Effective amount for filters for routed orders")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.entry_date = ProtoField.new("Entry Date", "bme.bmeequities.replay.bmegate.v1.6.entrydate", ftypes.INT32, nil, nil, nil, "System order entry date (when System Order Number was assigned)")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.entry_date_2 = ProtoField.new("Entry Date 2", "bme.bmeequities.replay.bmegate.v1.6.entrydate2", ftypes.INT32, nil, nil, nil, "System order entry date (when System Order Number was assigned)")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.environment_code = ProtoField.new("Environment Code", "bme.bmeequities.replay.bmegate.v1.6.environmentcode", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "bme.bmeequities.replay.bmegate.v1.6.execrefid", ftypes.UINT32, nil, nil, nil, "System Trade Number of the amended/cancelled trade")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.exemption_situation = ProtoField.new("Exemption Situation", "bme.bmeequities.replay.bmegate.v1.6.exemptionsituation", ftypes.STRING, nil, nil, nil, "Type of exemption")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.exercise_style = ProtoField.new("Exercise Style", "bme.bmeequities.replay.bmegate.v1.6.exercisestyle", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.expected_sequence_number = ProtoField.new("Expected Sequence Number", "bme.bmeequities.replay.bmegate.v1.6.expectedsequencenumber", ftypes.UINT32, nil, nil, nil, "Requested sequence number")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.fee_type = ProtoField.new("Fee Type", "bme.bmeequities.replay.bmegate.v1.6.feetype", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.first_trading_date = ProtoField.new("First Trading Date", "bme.bmeequities.replay.bmegate.v1.6.firsttradingdate", ftypes.INT32)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.fisn = ProtoField.new("Fisn", "bme.bmeequities.replay.bmegate.v1.6.fisn", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.further_sub_product = ProtoField.new("Further Sub Product", "bme.bmeequities.replay.bmegate.v1.6.furthersubproduct", ftypes.STRING, nil, nil, nil, "Further SubProduct")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.gross_trade_amt = ProtoField.new("Gross Trade Amt", "bme.bmeequities.replay.bmegate.v1.6.grosstradeamt", ftypes.DOUBLE, nil, nil, nil, "Premium / Trade amount")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "bme.bmeequities.replay.bmegate.v1.6.heartbtint", ftypes.UINT8, nil, nil, nil, "Interval at which messages are sent to verify the connection (Heartbeat message) expressed in seconds")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.high_limit_price = ProtoField.new("High Limit Price", "bme.bmeequities.replay.bmegate.v1.6.highlimitprice", ftypes.DOUBLE)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.investment_fund_category = ProtoField.new("Investment Fund Category", "bme.bmeequities.replay.bmegate.v1.6.investmentfundcategory", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.investment_fund_class = ProtoField.new("Investment Fund Class", "bme.bmeequities.replay.bmegate.v1.6.investmentfundclass", ftypes.UINT8)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.investment_fund_cut_off_time = ProtoField.new("Investment Fund Cut Off Time", "bme.bmeequities.replay.bmegate.v1.6.investmentfundcutofftime", ftypes.INT64)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.investment_fund_depository = ProtoField.new("Investment Fund Depository", "bme.bmeequities.replay.bmegate.v1.6.investmentfunddepository", ftypes.STRING, nil, nil, nil, "Investment Fund Depository Entity Name")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.investment_fund_management_company = ProtoField.new("Investment Fund Management Company", "bme.bmeequities.replay.bmegate.v1.6.investmentfundmanagementcompany", ftypes.STRING, nil, nil, nil, "Investment Fund Management Company Name")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.investment_fund_manager = ProtoField.new("Investment Fund Manager", "bme.bmeequities.replay.bmegate.v1.6.investmentfundmanager", ftypes.STRING, nil, nil, nil, "Investment Fund Manager Denomination")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.investment_fund_minimum_maintenance_amount = ProtoField.new("Investment Fund Minimum Maintenance Amount", "bme.bmeequities.replay.bmegate.v1.6.investmentfundminimummaintenanceamount", ftypes.DOUBLE)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.investment_fund_minimum_subscription_amount = ProtoField.new("Investment Fund Minimum Subscription Amount", "bme.bmeequities.replay.bmegate.v1.6.investmentfundminimumsubscriptionamount", ftypes.DOUBLE)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.investment_fund_number_of_decimals = ProtoField.new("Investment Fund Number Of Decimals", "bme.bmeequities.replay.bmegate.v1.6.investmentfundnumberofdecimals", ftypes.UINT8)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.issue_date = ProtoField.new("Issue Date", "bme.bmeequities.replay.bmegate.v1.6.issuedate", ftypes.INT32, nil, nil, nil, "Date security issued")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.issuer = ProtoField.new("Issuer", "bme.bmeequities.replay.bmegate.v1.6.issuer", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.issuer_lei = ProtoField.new("Issuer Lei", "bme.bmeequities.replay.bmegate.v1.6.issuerlei", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.last_admission_date = ProtoField.new("Last Admission Date", "bme.bmeequities.replay.bmegate.v1.6.lastadmissiondate", ftypes.INT32, nil, nil, nil, "Last Trading Date")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.last_change_flag = ProtoField.new("Last Change Flag", "bme.bmeequities.replay.bmegate.v1.6.lastchangeflag", ftypes.UINT8, nil, nil, nil, "Indicates if this trade changes the instrument Last price")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.last_px = ProtoField.new("Last Px", "bme.bmeequities.replay.bmegate.v1.6.lastpx", ftypes.DOUBLE, nil, nil, nil, "Trade price")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.last_qty = ProtoField.new("Last Qty", "bme.bmeequities.replay.bmegate.v1.6.lastqty", ftypes.UINT32, nil, nil, nil, "Current trade volume")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.last_trading_day = ProtoField.new("Last Trading Day", "bme.bmeequities.replay.bmegate.v1.6.lasttradingday", ftypes.INT32)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.li_spost = ProtoField.new("Li Spost", "bme.bmeequities.replay.bmegate.v1.6.lispost", ftypes.DOUBLE, nil, nil, nil, "LIS posttransparency threshold")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.li_spre = ProtoField.new("Li Spre", "bme.bmeequities.replay.bmegate.v1.6.lispre", ftypes.DOUBLE, nil, nil, nil, "LIS pretransparency threshold")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.liquid_instrument = ProtoField.new("Liquid Instrument", "bme.bmeequities.replay.bmegate.v1.6.liquidinstrument", ftypes.UINT8)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.liquidative_value = ProtoField.new("Liquidative Value", "bme.bmeequities.replay.bmegate.v1.6.liquidativevalue", ftypes.DOUBLE, nil, nil, nil, "Net Asset Value")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.liquidative_value_date = ProtoField.new("Liquidative Value Date", "bme.bmeequities.replay.bmegate.v1.6.liquidativevaluedate", ftypes.INT32, nil, nil, nil, "Date of the Net Asset Value")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.logout_reason = ProtoField.new("Logout Reason", "bme.bmeequities.replay.bmegate.v1.6.logoutreason", ftypes.UINT8)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.low_limit_price = ProtoField.new("Low Limit Price", "bme.bmeequities.replay.bmegate.v1.6.lowlimitprice", ftypes.DOUBLE)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.market_id = ProtoField.new("Market Id", "bme.bmeequities.replay.bmegate.v1.6.marketid", ftypes.STRING, nil, nil, nil, "Operating MIC Code")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.market_mechanism = ProtoField.new("Market Mechanism", "bme.bmeequities.replay.bmegate.v1.6.marketmechanism", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.market_segment_id = ProtoField.new("Market Segment Id", "bme.bmeequities.replay.bmegate.v1.6.marketsegmentid", ftypes.STRING, nil, nil, nil, "Segment MIC Code")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.master_fund_name = ProtoField.new("Master Fund Name", "bme.bmeequities.replay.bmegate.v1.6.masterfundname", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.maturity_date = ProtoField.new("Maturity Date", "bme.bmeequities.replay.bmegate.v1.6.maturitydate", ftypes.INT32, nil, nil, nil, "Expiration date")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "bme.bmeequities.replay.bmegate.v1.6.maturitymonthyear", ftypes.STRING, nil, nil, nil, "Maturity")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.message_size = ProtoField.new("Message Size", "bme.bmeequities.replay.bmegate.v1.6.messagesize", ftypes.UINT16, nil, nil, nil, "Length of message, including this field")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.message_type = ProtoField.new("Message Type", "bme.bmeequities.replay.bmegate.v1.6.messagetype", ftypes.UINT8, nil, nil, nil, "Message type. Section 3.3 assigns the message code of the equivalent Fix protocol message where there is one, so Logon is 0x41, and gives the rest a hexadecimal value below 0x20 or at or above 0x80")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.min_trade_vol = ProtoField.new("Min Trade Vol", "bme.bmeequities.replay.bmegate.v1.6.mintradevol", ftypes.UINT32, nil, nil, nil, "Minimum Tradeable Volume")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.minimum_authorized_shares = ProtoField.new("Minimum Authorized Shares", "bme.bmeequities.replay.bmegate.v1.6.minimumauthorizedshares", ftypes.UINT32)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.minimum_capital = ProtoField.new("Minimum Capital", "bme.bmeequities.replay.bmegate.v1.6.minimumcapital", ftypes.DOUBLE)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.minimum_display_qty = ProtoField.new("Minimum Display Qty", "bme.bmeequities.replay.bmegate.v1.6.minimumdisplayqty", ftypes.UINT32, nil, nil, nil, "Minimum Display Volume")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.modality_mask_b_4 = ProtoField.new("Modality Mask B 4", "bme.bmeequities.replay.bmegate.v1.6.modalitymaskb4", ftypes.UINT32, nil, nil, nil, "Modality mask ∑ 2^(ModalityCode - 100) ModalityCode valid values are the TradingSessionID values listed in Table 25 - TradingSessionID in “BMEGate Codification Tables”")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.msg_rejected_reference = ProtoField.new("Msg Rejected Reference", "bme.bmeequities.replay.bmegate.v1.6.msgrejectedreference", ftypes.BYTES, nil, nil, nil, "Provides the seven first bytes of the message being rejected")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.nav_communication_term = ProtoField.new("Nav Communication Term", "bme.bmeequities.replay.bmegate.v1.6.navcommunicationterm", ftypes.STRING, nil, nil, nil, "Net Asset Value Communication Term")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.net_asset_value_identifier = ProtoField.new("Net Asset Value Identifier", "bme.bmeequities.replay.bmegate.v1.6.netassetvalueidentifier", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.net_asset_value_indicator = ProtoField.new("Net Asset Value Indicator", "bme.bmeequities.replay.bmegate.v1.6.netassetvalueindicator", ftypes.UINT8)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.network_status_value = ProtoField.new("Network Status Value", "bme.bmeequities.replay.bmegate.v1.6.networkstatusvalue", ftypes.UINT8, nil, nil, nil, "Connection status")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.news_text = ProtoField.new("News Text", "bme.bmeequities.replay.bmegate.v1.6.newstext", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.non_availability_reason = ProtoField.new("Non Availability Reason", "bme.bmeequities.replay.bmegate.v1.6.nonavailabilityreason", ftypes.UINT8, nil, nil, nil, "Reason security halted")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.nt_position_limit = ProtoField.new("Nt Position Limit", "bme.bmeequities.replay.bmegate.v1.6.ntpositionlimit", ftypes.UINT64, nil, nil, nil, "Volume of listed securities (Near Term Position Limit)")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.number_of_decimals = ProtoField.new("Number Of Decimals", "bme.bmeequities.replay.bmegate.v1.6.numberofdecimals", ftypes.UINT8)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.number_of_holders = ProtoField.new("Number Of Holders", "bme.bmeequities.replay.bmegate.v1.6.numberofholders", ftypes.UINT32)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.order_number_of_decimals = ProtoField.new("Order Number Of Decimals", "bme.bmeequities.replay.bmegate.v1.6.ordernumberofdecimals", ftypes.UINT8, nil, nil, nil, "Number of Decimals in Order Entry")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.order_static_range = ProtoField.new("Order Static Range", "bme.bmeequities.replay.bmegate.v1.6.orderstaticrange", ftypes.DOUBLE, nil, nil, nil, "Percentage of static range")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.outstanding_capital = ProtoField.new("Outstanding Capital", "bme.bmeequities.replay.bmegate.v1.6.outstandingcapital", ftypes.DOUBLE)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.outstanding_shares = ProtoField.new("Outstanding Shares", "bme.bmeequities.replay.bmegate.v1.6.outstandingshares", ftypes.UINT32, nil, nil, nil, "Outstanding Number of Shares")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.password = ProtoField.new("Password", "bme.bmeequities.replay.bmegate.v1.6.password", ftypes.STRING, nil, nil, nil, "User password")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.position_limit = ProtoField.new("Position Limit", "bme.bmeequities.replay.bmegate.v1.6.positionlimit", ftypes.DOUBLE, nil, nil, nil, "Capital of listed securities")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.pre_trade_transparency_waiver = ProtoField.new("Pre Trade Transparency Waiver", "bme.bmeequities.replay.bmegate.v1.6.pretradetransparencywaiver", ftypes.STRING, nil, nil, nil, "Pre-trade transparency waiver")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.price = ProtoField.new("Price", "bme.bmeequities.replay.bmegate.v1.6.price", ftypes.DOUBLE, nil, nil, nil, "Limit price")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.price_2 = ProtoField.new("Price 2", "bme.bmeequities.replay.bmegate.v1.6.price2", ftypes.DOUBLE, nil, nil, nil, "Limit price")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.price_tick_rule = ProtoField.new("Price Tick Rule", "bme.bmeequities.replay.bmegate.v1.6.pricetickrule", ftypes.UINT8, nil, nil, nil, "Price Tick rules for security")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.priority = ProtoField.new("Priority", "bme.bmeequities.replay.bmegate.v1.6.priority", ftypes.UINT32)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.priority_2 = ProtoField.new("Priority 2", "bme.bmeequities.replay.bmegate.v1.6.priority2", ftypes.UINT32, nil, nil, nil, "Priority")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.protocol_version = ProtoField.new("Protocol Version", "bme.bmeequities.replay.bmegate.v1.6.protocolversion", ftypes.STRING, nil, nil, nil, "Identification of the binary protocol version")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.publish_date_and_time = ProtoField.new("Publish Date And Time", "bme.bmeequities.replay.bmegate.v1.6.publishdateandtime", ftypes.INT64, nil, nil, nil, "Publication Date and Time in nanoseconds since 1-jan-1970 UTC")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.put_or_call = ProtoField.new("Put Or Call", "bme.bmeequities.replay.bmegate.v1.6.putorcall", ftypes.STRING, nil, nil, nil, "Indicates whether the contract is a put or a call")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.reference_price = ProtoField.new("Reference Price", "bme.bmeequities.replay.bmegate.v1.6.referenceprice", ftypes.DOUBLE)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.reference_trading_venue = ProtoField.new("Reference Trading Venue", "bme.bmeequities.replay.bmegate.v1.6.referencetradingvenue", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.request_id = ProtoField.new("Request Id", "bme.bmeequities.replay.bmegate.v1.6.requestid", ftypes.UINT32, nil, nil, nil, "Request ID (for application feedback)")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.retail_flag = ProtoField.new("Retail Flag", "bme.bmeequities.replay.bmegate.v1.6.retailflag", ftypes.UINT8, nil, nil, nil, "Order/Quote only for retailers")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.retail_flag_2 = ProtoField.new("Retail Flag 2", "bme.bmeequities.replay.bmegate.v1.6.retailflag2", ftypes.UINT8, nil, nil, nil, "Order/Quote only for retailers")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.retail_service_flag = ProtoField.new("Retail Service Flag", "bme.bmeequities.replay.bmegate.v1.6.retailserviceflag", ftypes.UINT8, nil, nil, nil, "Availability of Retail Service for the security")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.round_lot = ProtoField.new("Round Lot", "bme.bmeequities.replay.bmegate.v1.6.roundlot", ftypes.UINT32, nil, nil, nil, "Lot Size")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "bme.bmeequities.replay.bmegate.v1.6.secondaryorderid", ftypes.UINT32, nil, nil, nil, "System Order Number")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.secondary_order_id_2 = ProtoField.new("Secondary Order Id 2", "bme.bmeequities.replay.bmegate.v1.6.secondaryorderid2", ftypes.UINT32, nil, nil, nil, "System Order Number")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_code = ProtoField.new("Security Code", "bme.bmeequities.replay.bmegate.v1.6.securitycode", ftypes.UINT32, nil, nil, nil, "Instrument (or Book) code")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_description = ProtoField.new("Security Description", "bme.bmeequities.replay.bmegate.v1.6.securitydescription", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_group = ProtoField.new("Security Group", "bme.bmeequities.replay.bmegate.v1.6.securitygroup", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_name = ProtoField.new("Security Name", "bme.bmeequities.replay.bmegate.v1.6.securityname", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_status = ProtoField.new("Security Status", "bme.bmeequities.replay.bmegate.v1.6.securitystatus", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_sub_type = ProtoField.new("Security Sub Type", "bme.bmeequities.replay.bmegate.v1.6.securitysubtype", ftypes.STRING, nil, nil, nil, "Subtype")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_trading_status = ProtoField.new("Security Trading Status", "bme.bmeequities.replay.bmegate.v1.6.securitytradingstatus", ftypes.UINT8)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_type = ProtoField.new("Security Type", "bme.bmeequities.replay.bmegate.v1.6.securitytype", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.self_match_prevention = ProtoField.new("Self Match Prevention", "bme.bmeequities.replay.bmegate.v1.6.selfmatchprevention", ftypes.UINT8, nil, nil, nil, "Indicates whether the security admits self- match prevention")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.sequence_number = ProtoField.new("Sequence Number", "bme.bmeequities.replay.bmegate.v1.6.sequencenumber", ftypes.UINT32, nil, nil, nil, "Message sequence number")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.sequence_number_from = ProtoField.new("Sequence Number From", "bme.bmeequities.replay.bmegate.v1.6.sequencenumberfrom", ftypes.UINT32, nil, nil, nil, "Sequence number of first message to be replayed")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.sequence_number_to = ProtoField.new("Sequence Number To", "bme.bmeequities.replay.bmegate.v1.6.sequencenumberto", ftypes.UINT32, nil, nil, nil, "Actual sequence number corresponding to the Snapshot")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.session_date = ProtoField.new("Session Date", "bme.bmeequities.replay.bmegate.v1.6.sessiondate", ftypes.INT32)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.session_reject_reason = ProtoField.new("Session Reject Reason", "bme.bmeequities.replay.bmegate.v1.6.sessionrejectreason", ftypes.UINT8, nil, nil, nil, "Code indicating the rejection motive")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.settl_date = ProtoField.new("Settl Date", "bme.bmeequities.replay.bmegate.v1.6.settldate", ftypes.INT32, nil, nil, nil, "Settlement date")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.settlement_system = ProtoField.new("Settlement System", "bme.bmeequities.replay.bmegate.v1.6.settlementsystem", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.sicav_counterparty_member = ProtoField.new("Sicav Counterparty Member", "bme.bmeequities.replay.bmegate.v1.6.sicavcounterpartymember", ftypes.STRING, nil, nil, nil, "SICAV/Fund Counterparty Member")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.sicav_fund_counterparty_side = ProtoField.new("Sicav Fund Counterparty Side", "bme.bmeequities.replay.bmegate.v1.6.sicavfundcounterpartyside", ftypes.STRING, nil, nil, nil, "Indicates the side of the Counterparty member in a SICAV or Mutual Fund")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.side = ProtoField.new("Side", "bme.bmeequities.replay.bmegate.v1.6.side", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.software_name = ProtoField.new("Software Name", "bme.bmeequities.replay.bmegate.v1.6.softwarename", ftypes.STRING, nil, nil, nil, "Descriptive string of the software name used")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.sst_ipost = ProtoField.new("Sst Ipost", "bme.bmeequities.replay.bmegate.v1.6.sstipost", ftypes.DOUBLE, nil, nil, nil, "SSTI posttransparency threshold")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.sst_ipre = ProtoField.new("Sst Ipre", "bme.bmeequities.replay.bmegate.v1.6.sstipre", ftypes.DOUBLE, nil, nil, nil, "SSTI pretransparency threshold")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.static_price = ProtoField.new("Static Price", "bme.bmeequities.replay.bmegate.v1.6.staticprice", ftypes.DOUBLE)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.static_range_type = ProtoField.new("Static Range Type", "bme.bmeequities.replay.bmegate.v1.6.staticrangetype", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.status = ProtoField.new("Status", "bme.bmeequities.replay.bmegate.v1.6.status", ftypes.UINT8, nil, nil, nil, "0x00 = Rejected/NAck")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.strike_price = ProtoField.new("Strike Price", "bme.bmeequities.replay.bmegate.v1.6.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Exercise price")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.strike_value = ProtoField.new("Strike Value", "bme.bmeequities.replay.bmegate.v1.6.strikevalue", ftypes.DOUBLE, nil, nil, nil, "Trading Unit")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.sub_product = ProtoField.new("Sub Product", "bme.bmeequities.replay.bmegate.v1.6.subproduct", ftypes.STRING, nil, nil, nil, "SubProduct")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.subscriptions = ProtoField.new("Subscriptions", "bme.bmeequities.replay.bmegate.v1.6.subscriptions", ftypes.UINT8, nil, nil, nil, "Bit mask: 0: Snapshot mode (only relevant in the Market and Order channel) 1: Public orders (only relevant in the Market & Order channel) 2: Public trades (only relevant in the Market & Order channel) 3: RFQ information (only relevant in the Market & Order channel) and Indications of Interest (relevant in the Market & Order channel and in the Order channel) 4: Security List (only relevant in the Order channel) 5: Trading Session Status and News (only relevant in the Order channel) 6: Security Status / Family Status (only relevant in the Order channel) 7: Statistics (only relevant in the Order channel)")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.symbol = ProtoField.new("Symbol", "bme.bmeequities.replay.bmegate.v1.6.symbol", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.symbol_isin = ProtoField.new("Symbol Isin", "bme.bmeequities.replay.bmegate.v1.6.symbolisin", ftypes.STRING, nil, nil, nil, "Instrument ISIN")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.test_production_ind = ProtoField.new("Test Production Ind", "bme.bmeequities.replay.bmegate.v1.6.testproductionind", ftypes.STRING, nil, nil, nil, "T: Test P: Production")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.text = ProtoField.new("Text", "bme.bmeequities.replay.bmegate.v1.6.text", ftypes.STRING, nil, nil, nil, "Explanation of rejection")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.trad_ses_status = ProtoField.new("Trad Ses Status", "bme.bmeequities.replay.bmegate.v1.6.tradsesstatus", ftypes.UINT8, nil, nil, nil, "Trading session status")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.trade_date = ProtoField.new("Trade Date", "bme.bmeequities.replay.bmegate.v1.6.tradedate", ftypes.INT64, nil, nil, nil, "Trade date and time")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.trade_price_condition = ProtoField.new("Trade Price Condition", "bme.bmeequities.replay.bmegate.v1.6.tradepricecondition", ftypes.STRING, nil, nil, nil, "MMT 3.8")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.trade_session_date = ProtoField.new("Trade Session Date", "bme.bmeequities.replay.bmegate.v1.6.tradesessiondate", ftypes.INT32)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.trade_type = ProtoField.new("Trade Type", "bme.bmeequities.replay.bmegate.v1.6.tradetype", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.trading_obligation = ProtoField.new("Trading Obligation", "bme.bmeequities.replay.bmegate.v1.6.tradingobligation", ftypes.UINT8)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.trading_scope = ProtoField.new("Trading Scope", "bme.bmeequities.replay.bmegate.v1.6.tradingscope", ftypes.UINT8)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.trading_session_id = ProtoField.new("Trading Session Id", "bme.bmeequities.replay.bmegate.v1.6.tradingsessionid", ftypes.UINT8, nil, nil, nil, "Trading mode")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "bme.bmeequities.replay.bmegate.v1.6.tradingsessionsubid", ftypes.UINT8, nil, nil, nil, "Session phase")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.transaction_category = ProtoField.new("Transaction Category", "bme.bmeequities.replay.bmegate.v1.6.transactioncategory", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.transaction_date_and_time = ProtoField.new("Transaction Date And Time", "bme.bmeequities.replay.bmegate.v1.6.transactiondateandtime", ftypes.INT64, nil, nil, nil, "Transaction Date and Time in nanoseconds since 1-jan-1970 UTC")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.trd_match_id = ProtoField.new("Trd Match Id", "bme.bmeequities.replay.bmegate.v1.6.trdmatchid", ftypes.UINT32, nil, nil, nil, "System Trade Number")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.trigger_barrier = ProtoField.new("Trigger Barrier", "bme.bmeequities.replay.bmegate.v1.6.triggerbarrier", ftypes.DOUBLE, nil, nil, nil, "Trigger Lower Barrier")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.trigger_upper_barrier = ProtoField.new("Trigger Upper Barrier", "bme.bmeequities.replay.bmegate.v1.6.triggerupperbarrier", ftypes.DOUBLE)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.underlying_currency = ProtoField.new("Underlying Currency", "bme.bmeequities.replay.bmegate.v1.6.underlyingcurrency", ftypes.STRING, nil, nil, nil, "Underlying Strike Currency")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.underlying_isin = ProtoField.new("Underlying Isin", "bme.bmeequities.replay.bmegate.v1.6.underlyingisin", ftypes.STRING, nil, nil, nil, "Underlying ISIN Code")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "bme.bmeequities.replay.bmegate.v1.6.underlyingsymbol", ftypes.STRING)
omi_bme_bmeequities_replay_bmegate_v1_6.fields.username = ProtoField.new("Username", "bme.bmeequities.replay.bmegate.v1.6.username", ftypes.STRING, nil, nil, nil, "Identifier of the user as assigned by BME")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.volume_float = ProtoField.new("Volume Float", "bme.bmeequities.replay.bmegate.v1.6.volumefloat", ftypes.DOUBLE, nil, nil, nil, "Volume with decimal places")

-- Bme BmeEquities Replay BmeGate 1.6 Framing
omi_bme_bmeequities_replay_bmegate_v1_6.fields.message = ProtoField.new("Message", "bme.bmeequities.replay.bmegate.v1.6.message", ftypes.STRING, nil, nil, nil, "Bme BmeGate Message")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.message_header = ProtoField.new("Message Header", "bme.bmeequities.replay.bmegate.v1.6.messageheader", ftypes.STRING, nil, nil, nil, "What every message carries, in either direction: its length and its type. Section 2.1 gives a published message a third field, the sequence number that lets a listener continue an interrupted session without gaps and without repeated messages, and the message tables state it as the message's own first field - which is where it is declared, since a client's Logon, Replay Request and Logout do not carry one")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.packet = ProtoField.new("Packet", "bme.bmeequities.replay.bmegate.v1.6.packet", ftypes.STRING, nil, nil, nil, "A Bme binary feed carries no packet header of its own: section 2.1 states that every feed is a series of sequenced messages, each stating its own length, so a segment holds whole messages to its end")

-- Bme BmeEquities Replay 1.6 Application Messages
omi_bme_bmeequities_replay_bmegate_v1_6.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "bme.bmeequities.replay.bmegate.v1.6.heartbeatmessage", ftypes.STRING, nil, nil, nil, "The Heartbeat message is used by the Server to indicate that the communication is active. In the Heartbeat message, the SequenceNumber of the previously received message will be repeated")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.logon_message = ProtoField.new("Logon Message", "bme.bmeequities.replay.bmegate.v1.6.logonmessage", ftypes.STRING, nil, nil, nil, "The Logon message is used to start a session by the client application")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.logon_response_message = ProtoField.new("Logon Response Message", "bme.bmeequities.replay.bmegate.v1.6.logonresponsemessage", ftypes.STRING, nil, nil, nil, "The Logon Response message is used by the Server to accept a new session. In this message the sequence number will always be 0")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.logout_message = ProtoField.new("Logout Message", "bme.bmeequities.replay.bmegate.v1.6.logoutmessage", ftypes.BYTES, nil, nil, nil, "The Logout message is used by the client application to request the end of a session")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.logout_response_message = ProtoField.new("Logout Response Message", "bme.bmeequities.replay.bmegate.v1.6.logoutresponsemessage", ftypes.STRING, nil, nil, nil, "The Logout message is used by the Server to notify the end of a session, whether it is solicited or unsolicited. It may also be the answer to a failed logon attempt (see Logon message)")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.network_status_message = ProtoField.new("Network Status Message", "bme.bmeequities.replay.bmegate.v1.6.networkstatusmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server with information about the connectivity between the Server and the central systems. In the Network Status message, the SequenceNumber of the previously received message will be repeated")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.news_message = ProtoField.new("News Message", "bme.bmeequities.replay.bmegate.v1.6.newsmessage", ftypes.STRING, nil, nil, nil, "Used by the Server to communicate a Market Surveillance or system-wide text message")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.order_book_clear_message = ProtoField.new("Order Book Clear Message", "bme.bmeequities.replay.bmegate.v1.6.orderbookclearmessage", ftypes.STRING, nil, nil, nil, "Message sent by the UDP full-depth server whenever the information about order prices must be reset. In particular, it is sent by the server when the trading mode changes from auction to open market and vice versa")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.order_cancellation_market_member_message = ProtoField.new("Order Cancellation Market Member Message", "bme.bmeequities.replay.bmegate.v1.6.ordercancellationmarketmembermessage", ftypes.STRING, nil, nil, nil, "Used by the Server to communicate information order cancellation. The same message is used in Full-Depth data feeds (for order cancellations of any user), in the Order Entry Server (for cancellations of user orders) and in the Market & Order Server (for order cancellations of any user)")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.order_market_pre_transparency_information_message = ProtoField.new("Order Market Pre Transparency Information Message", "bme.bmeequities.replay.bmegate.v1.6.ordermarketpretransparencyinformationmessage", ftypes.STRING, nil, nil, nil, "Used by the Server to communicate information about all active visible orders. During a session, any order is uniquely identified by the SecondaryOrderID")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.quote_cancellation_market_member_message = ProtoField.new("Quote Cancellation Market Member Message", "bme.bmeequities.replay.bmegate.v1.6.quotecancellationmarketmembermessage", ftypes.STRING, nil, nil, nil, "Used by the Server to communicate information about quote cancellation. The same message is used in Full-Depth data feeds (for quote cancellations of any user), in the Order Entry Server (for cancellations of user quotes) and in the Market & Order Server (for quote cancellations of any user)")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.quote_market_pre_transparency_information_message = ProtoField.new("Quote Market Pre Transparency Information Message", "bme.bmeequities.replay.bmegate.v1.6.quotemarketpretransparencyinformationmessage", ftypes.STRING, nil, nil, nil, "Used by the Server to communicate information about active quotes. In a session, a Quote is univoquely identified by its two orders: SecurityCode and SecondaryOrderID (buy order) and SecondaryOrderID2 (sell order)")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.reject_message = ProtoField.new("Reject Message", "bme.bmeequities.replay.bmegate.v1.6.rejectmessage", ftypes.STRING, nil, nil, nil, "It may be sent by the server to inform about the rejection of an unsupported or syntactically incorrect message. In the Reject message, the SequenceNumber of the previously received message will be repeated")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.replay_request_ack_nack_message = ProtoField.new("Replay Request Ack Nack Message", "bme.bmeequities.replay.bmegate.v1.6.replayrequestacknackmessage", ftypes.STRING, nil, nil, nil, "Message sent by the Replay Server as an inmediate answer to a Replay Request (Msg Type = 0x09). In this message the sequence number will always be 0")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.replay_request_message = ProtoField.new("Replay Request Message", "bme.bmeequities.replay.bmegate.v1.6.replayrequestmessage", ftypes.STRING, nil, nil, nil, "Message sent by the client application to request the replay of some specific UDP messages through the TCP Replay channel")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_list_cancellation_report_message = ProtoField.new("Security List Cancellation Report Message", "bme.bmeequities.replay.bmegate.v1.6.securitylistcancellationreportmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server for cancelling previously defined securities")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_list_message = ProtoField.new("Security List Message", "bme.bmeequities.replay.bmegate.v1.6.securitylistmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server for reporting updates, during the session, to the security definition. T Le y n")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_list_update_report_message = ProtoField.new("Security List Update Report Message", "bme.bmeequities.replay.bmegate.v1.6.securitylistupdatereportmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server for reporting updates, during the session, to the security definition. T Le y n")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_status_message = ProtoField.new("Security Status Message", "bme.bmeequities.replay.bmegate.v1.6.securitystatusmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server to inform on the status of one security")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.statistics_message = ProtoField.new("Statistics Message", "bme.bmeequities.replay.bmegate.v1.6.statisticsmessage", ftypes.STRING, nil, nil, nil, "Message sent by the server to inform about closing prices and other statistics. Le n")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.topofbook_message = ProtoField.new("Topofbook Message", "bme.bmeequities.replay.bmegate.v1.6.topofbookmessage", ftypes.STRING, nil, nil, nil, "Used by the UDP Servers to communicate Top-of-book price information during auctions. When there is an indicative match price, the fields BidPx1 and AskPx1 will have the same value")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.trade_market_post_transparency_information_full_depth_message = ProtoField.new("Trade Market Post Transparency Information Full Depth Message", "bme.bmeequities.replay.bmegate.v1.6.trademarketposttransparencyinformationfulldepthmessage", ftypes.STRING, nil, nil, nil, "Used by the server to communicate trade information related to trades resulting from order matching. The message also contains the situation in which the relevant orders will remain in the books")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.trade_market_post_transparency_information_topofbook_message = ProtoField.new("Trade Market Post Transparency Information Topofbook Message", "bme.bmeequities.replay.bmegate.v1.6.trademarketposttransparencyinformationtopofbookmessage", ftypes.STRING, nil, nil, nil, "Used by the server to communicate trade information related to trades resulting from order matching in channels C/D and E/F. It is also used in channels A/B when the trade is the result of order matching at the end of an auction period (where only top-of-book information is shown)")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.trade_trade_amendment_or_cancellation_message = ProtoField.new("Trade Trade Amendment Or Cancellation Message", "bme.bmeequities.replay.bmegate.v1.6.tradetradeamendmentorcancellationmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about a trade produced due to any reason other than order matching, also to inform about trades produced due to order matching in a Dark pool. In this message, all fields with the suffix 2 refer to the sell order, and the ones without the suffix refer either to both legs or the buy order")
omi_bme_bmeequities_replay_bmegate_v1_6.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "bme.bmeequities.replay.bmegate.v1.6.tradingsessionstatusmessage", ftypes.STRING, nil, nil, nil, "Sent by the server to inform about the session status in each Trading Mode")

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Bme BmeEquities Replay BmeGate 1.6 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register Bme BmeEquities Replay BmeGate 1.6 Show Options
omi_bme_bmeequities_replay_bmegate_v1_6.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_bme_bmeequities_replay_bmegate_v1_6.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_bme_bmeequities_replay_bmegate_v1_6.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

-- Handle changed preferences
function omi_bme_bmeequities_replay_bmegate_v1_6.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_bme_bmeequities_replay_bmegate_v1_6.prefs.show_application_messages then
    show.application_messages = omi_bme_bmeequities_replay_bmegate_v1_6.prefs.show_application_messages
  end
  if show.headers ~= omi_bme_bmeequities_replay_bmegate_v1_6.prefs.show_headers then
    show.headers = omi_bme_bmeequities_replay_bmegate_v1_6.prefs.show_headers
  end
  if show.structs ~= omi_bme_bmeequities_replay_bmegate_v1_6.prefs.show_structs then
    show.structs = omi_bme_bmeequities_replay_bmegate_v1_6.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Bme BmeEquities Replay BmeGate 1.6 Fields
-----------------------------------------------------------------------

-- Admission Requested By Issuer
bme_bmeequities_replay_bmegate_v1_6.admission_requested_by_issuer = {}

-- Size: Admission Requested By Issuer
bme_bmeequities_replay_bmegate_v1_6.admission_requested_by_issuer.size = 1

-- Display: Admission Requested By Issuer
bme_bmeequities_replay_bmegate_v1_6.admission_requested_by_issuer.display = function(value)
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
bme_bmeequities_replay_bmegate_v1_6.admission_requested_by_issuer.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.admission_requested_by_issuer.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.admission_requested_by_issuer.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.admission_requested_by_issuer, range, value, display)

  return offset + length, value
end

-- Adnt
bme_bmeequities_replay_bmegate_v1_6.adnt = {}

-- Size: Adnt
bme_bmeequities_replay_bmegate_v1_6.adnt.size = 8

-- Display: Adnt
bme_bmeequities_replay_bmegate_v1_6.adnt.display = function(value)
  return "Adnt: "..value
end

-- Translate: Adnt
bme_bmeequities_replay_bmegate_v1_6.adnt.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Adnt
bme_bmeequities_replay_bmegate_v1_6.adnt.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.adnt.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.adnt.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.adnt.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.adnt, range, value, display)

  return offset + length, value
end

-- Adt
bme_bmeequities_replay_bmegate_v1_6.adt = {}

-- Size: Adt
bme_bmeequities_replay_bmegate_v1_6.adt.size = 8

-- Display: Adt
bme_bmeequities_replay_bmegate_v1_6.adt.display = function(value)
  return "Adt: "..value
end

-- Translate: Adt
bme_bmeequities_replay_bmegate_v1_6.adt.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Adt
bme_bmeequities_replay_bmegate_v1_6.adt.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.adt.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.adt.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.adt.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.adt, range, value, display)

  return offset + length, value
end

-- Algo Flag
bme_bmeequities_replay_bmegate_v1_6.algo_flag = {}

-- Size: Algo Flag
bme_bmeequities_replay_bmegate_v1_6.algo_flag.size = 1

-- Display: Algo Flag
bme_bmeequities_replay_bmegate_v1_6.algo_flag.display = function(value)
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
bme_bmeequities_replay_bmegate_v1_6.algo_flag.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.algo_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.algo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.algo_flag, range, value, display)

  return offset + length, value
end

-- Amended Trade Date
bme_bmeequities_replay_bmegate_v1_6.amended_trade_date = {}

-- Size: Amended Trade Date
bme_bmeequities_replay_bmegate_v1_6.amended_trade_date.size = 4

-- Display: Amended Trade Date
bme_bmeequities_replay_bmegate_v1_6.amended_trade_date.display = function(value)
  return string.format("Amended Trade Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Amended Trade Date
bme_bmeequities_replay_bmegate_v1_6.amended_trade_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.amended_trade_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmeequities_replay_bmegate_v1_6.amended_trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.amended_trade_date, range, value, display)

  return offset + length, value
end

-- Amended Trade Type
bme_bmeequities_replay_bmegate_v1_6.amended_trade_type = {}

-- Size: Amended Trade Type
bme_bmeequities_replay_bmegate_v1_6.amended_trade_type.size = 1

-- Display: Amended Trade Type
bme_bmeequities_replay_bmegate_v1_6.amended_trade_type.display = function(value)
  if value == "M" then
    return "Amended Trade Type: Market (M)"
  end
  if value == "X" then
    return "Amended Trade Type: Cancellation (X)"
  end
  if value == "T" then
    return "Amended Trade Type: Trade Amendment (T)"
  end
  if value == "H" then
    return "Amended Trade Type: Block Trade (H)"
  end
  if value == "1" then
    return "Amended Trade Type: Communicated Application (1)"
  end
  if value == "2" then
    return "Amended Trade Type: Authorised Application Trades (2)"
  end
  if value == "3" then
    return "Amended Trade Type: Authorised Application Corporate Interest (3)"
  end
  if value == "4" then
    return "Amended Trade Type: Authorised Application Execution Of Contracts (4)"
  end
  if value == "5" then
    return "Amended Trade Type: Authorised Application Other Causes (5)"
  end
  if value == "6" then
    return "Amended Trade Type: Validation Communicated (6)"
  end

  return "Amended Trade Type: Unknown("..value..")"
end

-- Dissect: Amended Trade Type
bme_bmeequities_replay_bmegate_v1_6.amended_trade_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.amended_trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmeequities_replay_bmegate_v1_6.amended_trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.amended_trade_type, range, value, display)

  return offset + length, value
end

-- Ask Orders 1
bme_bmeequities_replay_bmegate_v1_6.ask_orders_1 = {}

-- Size: Ask Orders 1
bme_bmeequities_replay_bmegate_v1_6.ask_orders_1.size = 2

-- Display: Ask Orders 1
bme_bmeequities_replay_bmegate_v1_6.ask_orders_1.display = function(value)
  return "Ask Orders 1: "..value
end

-- Dissect: Ask Orders 1
bme_bmeequities_replay_bmegate_v1_6.ask_orders_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.ask_orders_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.ask_orders_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.ask_orders_1, range, value, display)

  return offset + length, value
end

-- Ask Px 1
bme_bmeequities_replay_bmegate_v1_6.ask_px_1 = {}

-- Size: Ask Px 1
bme_bmeequities_replay_bmegate_v1_6.ask_px_1.size = 8

-- Display: Ask Px 1
bme_bmeequities_replay_bmegate_v1_6.ask_px_1.display = function(value)
  return "Ask Px 1: "..value
end

-- Translate: Ask Px 1
bme_bmeequities_replay_bmegate_v1_6.ask_px_1.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ask Px 1
bme_bmeequities_replay_bmegate_v1_6.ask_px_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.ask_px_1.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.ask_px_1.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.ask_px_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.ask_px_1, range, value, display)

  return offset + length, value
end

-- Ask Size 1
bme_bmeequities_replay_bmegate_v1_6.ask_size_1 = {}

-- Size: Ask Size 1
bme_bmeequities_replay_bmegate_v1_6.ask_size_1.size = 4

-- Display: Ask Size 1
bme_bmeequities_replay_bmegate_v1_6.ask_size_1.display = function(value)
  return "Ask Size 1: "..value
end

-- Dissect: Ask Size 1
bme_bmeequities_replay_bmegate_v1_6.ask_size_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.ask_size_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.ask_size_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.ask_size_1, range, value, display)

  return offset + length, value
end

-- Auction End Time
bme_bmeequities_replay_bmegate_v1_6.auction_end_time = {}

-- Size: Auction End Time
bme_bmeequities_replay_bmegate_v1_6.auction_end_time.size = 8

-- Display: Auction End Time
bme_bmeequities_replay_bmegate_v1_6.auction_end_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Auction End Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Auction End Time
bme_bmeequities_replay_bmegate_v1_6.auction_end_time.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.auction_end_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bme_bmeequities_replay_bmegate_v1_6.auction_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.auction_end_time, range, value, display)

  return offset + length, value
end

-- Auction Origin
bme_bmeequities_replay_bmegate_v1_6.auction_origin = {}

-- Size: Auction Origin
bme_bmeequities_replay_bmegate_v1_6.auction_origin.size = 1

-- Display: Auction Origin
bme_bmeequities_replay_bmegate_v1_6.auction_origin.display = function(value)
  if value == 0 then
    return "Auction Origin: No Auction (0)"
  end
  if value == 100 then
    return "Auction Origin: Manual Auction (100)"
  end
  if value == 101 then
    return "Auction Origin: Opening Auction Is Extended (101)"
  end
  if value == 102 then
    return "Auction Origin: Closing Auction Is Extended (102)"
  end
  if value == 103 then
    return "Auction Origin: Volatility Auction (103)"
  end
  if value == 200 then
    return "Auction Origin: Other (200)"
  end

  return "Auction Origin: Unknown("..value..")"
end

-- Dissect: Auction Origin
bme_bmeequities_replay_bmegate_v1_6.auction_origin.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.auction_origin.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.auction_origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.auction_origin, range, value, display)

  return offset + length, value
end

-- Auction Trigger Price
bme_bmeequities_replay_bmegate_v1_6.auction_trigger_price = {}

-- Size: Auction Trigger Price
bme_bmeequities_replay_bmegate_v1_6.auction_trigger_price.size = 8

-- Display: Auction Trigger Price
bme_bmeequities_replay_bmegate_v1_6.auction_trigger_price.display = function(value)
  return "Auction Trigger Price: "..value
end

-- Translate: Auction Trigger Price
bme_bmeequities_replay_bmegate_v1_6.auction_trigger_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Trigger Price
bme_bmeequities_replay_bmegate_v1_6.auction_trigger_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.auction_trigger_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.auction_trigger_price.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.auction_trigger_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.auction_trigger_price, range, value, display)

  return offset + length, value
end

-- Automatic Expiration
bme_bmeequities_replay_bmegate_v1_6.automatic_expiration = {}

-- Size: Automatic Expiration
bme_bmeequities_replay_bmegate_v1_6.automatic_expiration.size = 1

-- Display: Automatic Expiration
bme_bmeequities_replay_bmegate_v1_6.automatic_expiration.display = function(value)
  if value == 0 then
    return "Automatic Expiration: False (0)"
  end
  if value == 1 then
    return "Automatic Expiration: True (1)"
  end
  if value == 255 then
    return "Automatic Expiration: Undefined (255)"
  end

  return "Automatic Expiration: Unknown("..value..")"
end

-- Dissect: Automatic Expiration
bme_bmeequities_replay_bmegate_v1_6.automatic_expiration.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.automatic_expiration.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.automatic_expiration.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.automatic_expiration, range, value, display)

  return offset + length, value
end

-- Average Quarterly Turnover
bme_bmeequities_replay_bmegate_v1_6.average_quarterly_turnover = {}

-- Size: Average Quarterly Turnover
bme_bmeequities_replay_bmegate_v1_6.average_quarterly_turnover.size = 8

-- Display: Average Quarterly Turnover
bme_bmeequities_replay_bmegate_v1_6.average_quarterly_turnover.display = function(value)
  return "Average Quarterly Turnover: "..value
end

-- Translate: Average Quarterly Turnover
bme_bmeequities_replay_bmegate_v1_6.average_quarterly_turnover.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Average Quarterly Turnover
bme_bmeequities_replay_bmegate_v1_6.average_quarterly_turnover.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.average_quarterly_turnover.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.average_quarterly_turnover.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.average_quarterly_turnover.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.average_quarterly_turnover, range, value, display)

  return offset + length, value
end

-- Barrier
bme_bmeequities_replay_bmegate_v1_6.barrier = {}

-- Size: Barrier
bme_bmeequities_replay_bmegate_v1_6.barrier.size = 8

-- Display: Barrier
bme_bmeequities_replay_bmegate_v1_6.barrier.display = function(value)
  return "Barrier: "..value
end

-- Translate: Barrier
bme_bmeequities_replay_bmegate_v1_6.barrier.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Barrier
bme_bmeequities_replay_bmegate_v1_6.barrier.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.barrier.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.barrier.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.barrier.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.barrier, range, value, display)

  return offset + length, value
end

-- Barrier 2
bme_bmeequities_replay_bmegate_v1_6.barrier_2 = {}

-- Size: Barrier 2
bme_bmeequities_replay_bmegate_v1_6.barrier_2.size = 8

-- Display: Barrier 2
bme_bmeequities_replay_bmegate_v1_6.barrier_2.display = function(value)
  return "Barrier 2: "..value
end

-- Translate: Barrier 2
bme_bmeequities_replay_bmegate_v1_6.barrier_2.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Barrier 2
bme_bmeequities_replay_bmegate_v1_6.barrier_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.barrier_2.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.barrier_2.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.barrier_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.barrier_2, range, value, display)

  return offset + length, value
end

-- Barrier Return
bme_bmeequities_replay_bmegate_v1_6.barrier_return = {}

-- Size: Barrier Return
bme_bmeequities_replay_bmegate_v1_6.barrier_return.size = 8

-- Display: Barrier Return
bme_bmeequities_replay_bmegate_v1_6.barrier_return.display = function(value)
  return "Barrier Return: "..value
end

-- Translate: Barrier Return
bme_bmeequities_replay_bmegate_v1_6.barrier_return.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Barrier Return
bme_bmeequities_replay_bmegate_v1_6.barrier_return.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.barrier_return.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.barrier_return.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.barrier_return.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.barrier_return, range, value, display)

  return offset + length, value
end

-- Base Product
bme_bmeequities_replay_bmegate_v1_6.base_product = {}

-- Size: Base Product
bme_bmeequities_replay_bmegate_v1_6.base_product.size = 4

-- Display: Base Product
bme_bmeequities_replay_bmegate_v1_6.base_product.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Base Product: No Value"
  end

  return "Base Product: "..value
end

-- Dissect: Base Product
bme_bmeequities_replay_bmegate_v1_6.base_product.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.base_product.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.base_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.base_product, range, value, display)

  return offset + length, value
end

-- Bencrfpt Flag
bme_bmeequities_replay_bmegate_v1_6.bencrfpt_flag = {}

-- Size: Bencrfpt Flag
bme_bmeequities_replay_bmegate_v1_6.bencrfpt_flag.size = 1

-- Display: Bencrfpt Flag
bme_bmeequities_replay_bmegate_v1_6.bencrfpt_flag.display = function(value)
  if value == " " then
    return "Bencrfpt Flag: Normal Trade (<whitespace>)"
  end
  if value == "6" then
    return "Bencrfpt Flag: Benchmark Trade Benc (6)"
  end
  if value == "3" then
    return "Bencrfpt Flag: Reference Price Trade Rfpt (3)"
  end
  if value == "C" then
    return "Bencrfpt Flag: Contingency Trade Cont (C)"
  end
  if value == "M" then
    return "Bencrfpt Flag: Benc Cont (M)"
  end

  return "Bencrfpt Flag: Unknown("..value..")"
end

-- Dissect: Bencrfpt Flag
bme_bmeequities_replay_bmegate_v1_6.bencrfpt_flag.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.bencrfpt_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmeequities_replay_bmegate_v1_6.bencrfpt_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.bencrfpt_flag, range, value, display)

  return offset + length, value
end

-- Bid Orders 1
bme_bmeequities_replay_bmegate_v1_6.bid_orders_1 = {}

-- Size: Bid Orders 1
bme_bmeequities_replay_bmegate_v1_6.bid_orders_1.size = 2

-- Display: Bid Orders 1
bme_bmeequities_replay_bmegate_v1_6.bid_orders_1.display = function(value)
  return "Bid Orders 1: "..value
end

-- Dissect: Bid Orders 1
bme_bmeequities_replay_bmegate_v1_6.bid_orders_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.bid_orders_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.bid_orders_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.bid_orders_1, range, value, display)

  return offset + length, value
end

-- Bid Px 1
bme_bmeequities_replay_bmegate_v1_6.bid_px_1 = {}

-- Size: Bid Px 1
bme_bmeequities_replay_bmegate_v1_6.bid_px_1.size = 8

-- Display: Bid Px 1
bme_bmeequities_replay_bmegate_v1_6.bid_px_1.display = function(value)
  return "Bid Px 1: "..value
end

-- Translate: Bid Px 1
bme_bmeequities_replay_bmegate_v1_6.bid_px_1.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Px 1
bme_bmeequities_replay_bmegate_v1_6.bid_px_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.bid_px_1.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.bid_px_1.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.bid_px_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.bid_px_1, range, value, display)

  return offset + length, value
end

-- Bid Size 1
bme_bmeequities_replay_bmegate_v1_6.bid_size_1 = {}

-- Size: Bid Size 1
bme_bmeequities_replay_bmegate_v1_6.bid_size_1.size = 4

-- Display: Bid Size 1
bme_bmeequities_replay_bmegate_v1_6.bid_size_1.display = function(value)
  return "Bid Size 1: "..value
end

-- Dissect: Bid Size 1
bme_bmeequities_replay_bmegate_v1_6.bid_size_1.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.bid_size_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.bid_size_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.bid_size_1, range, value, display)

  return offset + length, value
end

-- Block Oscilation Percentage
bme_bmeequities_replay_bmegate_v1_6.block_oscilation_percentage = {}

-- Size: Block Oscilation Percentage
bme_bmeequities_replay_bmegate_v1_6.block_oscilation_percentage.size = 8

-- Display: Block Oscilation Percentage
bme_bmeequities_replay_bmegate_v1_6.block_oscilation_percentage.display = function(value)
  return "Block Oscilation Percentage: "..value
end

-- Translate: Block Oscilation Percentage
bme_bmeequities_replay_bmegate_v1_6.block_oscilation_percentage.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Block Oscilation Percentage
bme_bmeequities_replay_bmegate_v1_6.block_oscilation_percentage.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.block_oscilation_percentage.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.block_oscilation_percentage.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.block_oscilation_percentage.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.block_oscilation_percentage, range, value, display)

  return offset + length, value
end

-- Block Static Range
bme_bmeequities_replay_bmegate_v1_6.block_static_range = {}

-- Size: Block Static Range
bme_bmeequities_replay_bmegate_v1_6.block_static_range.size = 8

-- Display: Block Static Range
bme_bmeequities_replay_bmegate_v1_6.block_static_range.display = function(value)
  return "Block Static Range: "..value
end

-- Translate: Block Static Range
bme_bmeequities_replay_bmegate_v1_6.block_static_range.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Block Static Range
bme_bmeequities_replay_bmegate_v1_6.block_static_range.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.block_static_range.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.block_static_range.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.block_static_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.block_static_range, range, value, display)

  return offset + length, value
end

-- Bonus Warrants With Active Bonus
bme_bmeequities_replay_bmegate_v1_6.bonus_warrants_with_active_bonus = {}

-- Size: Bonus Warrants With Active Bonus
bme_bmeequities_replay_bmegate_v1_6.bonus_warrants_with_active_bonus.size = 1

-- Display: Bonus Warrants With Active Bonus
bme_bmeequities_replay_bmegate_v1_6.bonus_warrants_with_active_bonus.display = function(value)
  if value == 0 then
    return "Bonus Warrants With Active Bonus: False (0)"
  end
  if value == 1 then
    return "Bonus Warrants With Active Bonus: True (1)"
  end
  if value == 255 then
    return "Bonus Warrants With Active Bonus: Undefined (255)"
  end

  return "Bonus Warrants With Active Bonus: Unknown("..value..")"
end

-- Dissect: Bonus Warrants With Active Bonus
bme_bmeequities_replay_bmegate_v1_6.bonus_warrants_with_active_bonus.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.bonus_warrants_with_active_bonus.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.bonus_warrants_with_active_bonus.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.bonus_warrants_with_active_bonus, range, value, display)

  return offset + length, value
end

-- Buyer Bolsa Code
bme_bmeequities_replay_bmegate_v1_6.buyer_bolsa_code = {}

-- Size: Buyer Bolsa Code
bme_bmeequities_replay_bmegate_v1_6.buyer_bolsa_code.size = 1

-- Display: Buyer Bolsa Code
bme_bmeequities_replay_bmegate_v1_6.buyer_bolsa_code.display = function(value)
  if value == "3" then
    return "Buyer Bolsa Code: Valencia (3)"
  end
  if value == "4" then
    return "Buyer Bolsa Code: Barcelona (4)"
  end
  if value == "5" then
    return "Buyer Bolsa Code: Bilbao (5)"
  end
  if value == "6" then
    return "Buyer Bolsa Code: Madrid (6)"
  end

  return "Buyer Bolsa Code: Unknown("..value..")"
end

-- Dissect: Buyer Bolsa Code
bme_bmeequities_replay_bmegate_v1_6.buyer_bolsa_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.buyer_bolsa_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmeequities_replay_bmegate_v1_6.buyer_bolsa_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.buyer_bolsa_code, range, value, display)

  return offset + length, value
end

-- Cfi Code
bme_bmeequities_replay_bmegate_v1_6.cfi_code = {}

-- Size: Cfi Code
bme_bmeequities_replay_bmegate_v1_6.cfi_code.size = 6

-- Display: Cfi Code
bme_bmeequities_replay_bmegate_v1_6.cfi_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cfi Code: No Value"
  end

  return "Cfi Code: "..value
end

-- Dissect: Cfi Code
bme_bmeequities_replay_bmegate_v1_6.cfi_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.cfi_code.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.cfi_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Commodity Derivative Indicator
bme_bmeequities_replay_bmegate_v1_6.commodity_derivative_indicator = {}

-- Size: Commodity Derivative Indicator
bme_bmeequities_replay_bmegate_v1_6.commodity_derivative_indicator.size = 1

-- Display: Commodity Derivative Indicator
bme_bmeequities_replay_bmegate_v1_6.commodity_derivative_indicator.display = function(value)
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
bme_bmeequities_replay_bmegate_v1_6.commodity_derivative_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.commodity_derivative_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmeequities_replay_bmegate_v1_6.commodity_derivative_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.commodity_derivative_indicator, range, value, display)

  return offset + length, value
end

-- Contract Multiplier
bme_bmeequities_replay_bmegate_v1_6.contract_multiplier = {}

-- Size: Contract Multiplier
bme_bmeequities_replay_bmegate_v1_6.contract_multiplier.size = 8

-- Display: Contract Multiplier
bme_bmeequities_replay_bmegate_v1_6.contract_multiplier.display = function(value)
  return "Contract Multiplier: "..value
end

-- Translate: Contract Multiplier
bme_bmeequities_replay_bmegate_v1_6.contract_multiplier.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Contract Multiplier
bme_bmeequities_replay_bmegate_v1_6.contract_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.contract_multiplier.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.contract_multiplier.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.contract_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Cp Reg Type
bme_bmeequities_replay_bmegate_v1_6.cp_reg_type = {}

-- Size: Cp Reg Type
bme_bmeequities_replay_bmegate_v1_6.cp_reg_type.size = 1

-- Display: Cp Reg Type
bme_bmeequities_replay_bmegate_v1_6.cp_reg_type.display = function(value)
  if value == 0 then
    return "Cp Reg Type: False (0)"
  end
  if value == 1 then
    return "Cp Reg Type: True (1)"
  end
  if value == 255 then
    return "Cp Reg Type: Undefined (255)"
  end

  return "Cp Reg Type: Unknown("..value..")"
end

-- Dissect: Cp Reg Type
bme_bmeequities_replay_bmegate_v1_6.cp_reg_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.cp_reg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.cp_reg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.cp_reg_type, range, value, display)

  return offset + length, value
end

-- Currency
bme_bmeequities_replay_bmegate_v1_6.currency = {}

-- Size: Currency
bme_bmeequities_replay_bmegate_v1_6.currency.size = 3

-- Display: Currency
bme_bmeequities_replay_bmegate_v1_6.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
bme_bmeequities_replay_bmegate_v1_6.currency.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.currency.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.currency, range, value, display)

  return offset + length, value
end

-- Data Code
bme_bmeequities_replay_bmegate_v1_6.data_code = {}

-- Size: Data Code
bme_bmeequities_replay_bmegate_v1_6.data_code.size = 1

-- Display: Data Code
bme_bmeequities_replay_bmegate_v1_6.data_code.display = function(value)
  return "Data Code: "..value
end

-- Dissect: Data Code
bme_bmeequities_replay_bmegate_v1_6.data_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.data_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmeequities_replay_bmegate_v1_6.data_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.data_code, range, value, display)

  return offset + length, value
end

-- Data Count
bme_bmeequities_replay_bmegate_v1_6.data_count = {}

-- Size: Data Count
bme_bmeequities_replay_bmegate_v1_6.data_count.size = 1

-- Display: Data Count
bme_bmeequities_replay_bmegate_v1_6.data_count.display = function(value)
  return "Data Count: "..value
end

-- Dissect: Data Count
bme_bmeequities_replay_bmegate_v1_6.data_count.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.data_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.data_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.data_count, range, value, display)

  return offset + length, value
end

-- Deferral Waiver
bme_bmeequities_replay_bmegate_v1_6.deferral_waiver = {}

-- Size: Deferral Waiver
bme_bmeequities_replay_bmegate_v1_6.deferral_waiver.size = 1

-- Display: Deferral Waiver
bme_bmeequities_replay_bmegate_v1_6.deferral_waiver.display = function(value)
  if value == " " then
    return "Deferral Waiver: Immediate Publication (<whitespace>)"
  end

  return "Deferral Waiver: Unknown("..value..")"
end

-- Dissect: Deferral Waiver
bme_bmeequities_replay_bmegate_v1_6.deferral_waiver.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.deferral_waiver.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmeequities_replay_bmegate_v1_6.deferral_waiver.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.deferral_waiver, range, value, display)

  return offset + length, value
end

-- Designation
bme_bmeequities_replay_bmegate_v1_6.designation = {}

-- Size: Designation
bme_bmeequities_replay_bmegate_v1_6.designation.size = 1

-- Display: Designation
bme_bmeequities_replay_bmegate_v1_6.designation.display = function(value)
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
bme_bmeequities_replay_bmegate_v1_6.designation.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.designation.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmeequities_replay_bmegate_v1_6.designation.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.designation, range, value, display)

  return offset + length, value
end

-- Display Qty
bme_bmeequities_replay_bmegate_v1_6.display_qty = {}

-- Size: Display Qty
bme_bmeequities_replay_bmegate_v1_6.display_qty.size = 4

-- Display: Display Qty
bme_bmeequities_replay_bmegate_v1_6.display_qty.display = function(value)
  return "Display Qty: "..value
end

-- Dissect: Display Qty
bme_bmeequities_replay_bmegate_v1_6.display_qty.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.display_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Display Qty 2
bme_bmeequities_replay_bmegate_v1_6.display_qty_2 = {}

-- Size: Display Qty 2
bme_bmeequities_replay_bmegate_v1_6.display_qty_2.size = 4

-- Display: Display Qty 2
bme_bmeequities_replay_bmegate_v1_6.display_qty_2.display = function(value)
  return "Display Qty 2: "..value
end

-- Dissect: Display Qty 2
bme_bmeequities_replay_bmegate_v1_6.display_qty_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.display_qty_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.display_qty_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.display_qty_2, range, value, display)

  return offset + length, value
end

-- Double Volume Cap Reached
bme_bmeequities_replay_bmegate_v1_6.double_volume_cap_reached = {}

-- Size: Double Volume Cap Reached
bme_bmeequities_replay_bmegate_v1_6.double_volume_cap_reached.size = 1

-- Display: Double Volume Cap Reached
bme_bmeequities_replay_bmegate_v1_6.double_volume_cap_reached.display = function(value)
  if value == 0 then
    return "Double Volume Cap Reached: False (0)"
  end
  if value == 1 then
    return "Double Volume Cap Reached: True (1)"
  end
  if value == 255 then
    return "Double Volume Cap Reached: Undefined (255)"
  end

  return "Double Volume Cap Reached: Unknown("..value..")"
end

-- Dissect: Double Volume Cap Reached
bme_bmeequities_replay_bmegate_v1_6.double_volume_cap_reached.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.double_volume_cap_reached.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.double_volume_cap_reached.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.double_volume_cap_reached, range, value, display)

  return offset + length, value
end

-- Dynamic Price Oscilation Percentage
bme_bmeequities_replay_bmegate_v1_6.dynamic_price_oscilation_percentage = {}

-- Size: Dynamic Price Oscilation Percentage
bme_bmeequities_replay_bmegate_v1_6.dynamic_price_oscilation_percentage.size = 8

-- Display: Dynamic Price Oscilation Percentage
bme_bmeequities_replay_bmegate_v1_6.dynamic_price_oscilation_percentage.display = function(value)
  return "Dynamic Price Oscilation Percentage: "..value
end

-- Translate: Dynamic Price Oscilation Percentage
bme_bmeequities_replay_bmegate_v1_6.dynamic_price_oscilation_percentage.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Dynamic Price Oscilation Percentage
bme_bmeequities_replay_bmegate_v1_6.dynamic_price_oscilation_percentage.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.dynamic_price_oscilation_percentage.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.dynamic_price_oscilation_percentage.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.dynamic_price_oscilation_percentage.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.dynamic_price_oscilation_percentage, range, value, display)

  return offset + length, value
end

-- Dynamic Range Multiplier
bme_bmeequities_replay_bmegate_v1_6.dynamic_range_multiplier = {}

-- Size: Dynamic Range Multiplier
bme_bmeequities_replay_bmegate_v1_6.dynamic_range_multiplier.size = 1

-- Display: Dynamic Range Multiplier
bme_bmeequities_replay_bmegate_v1_6.dynamic_range_multiplier.display = function(value)
  return "Dynamic Range Multiplier: "..value
end

-- Dissect: Dynamic Range Multiplier
bme_bmeequities_replay_bmegate_v1_6.dynamic_range_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.dynamic_range_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.dynamic_range_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.dynamic_range_multiplier, range, value, display)

  return offset + length, value
end

-- Effective Amount Filters Routed Orders
bme_bmeequities_replay_bmegate_v1_6.effective_amount_filters_routed_orders = {}

-- Size: Effective Amount Filters Routed Orders
bme_bmeequities_replay_bmegate_v1_6.effective_amount_filters_routed_orders.size = 8

-- Display: Effective Amount Filters Routed Orders
bme_bmeequities_replay_bmegate_v1_6.effective_amount_filters_routed_orders.display = function(value)
  return "Effective Amount Filters Routed Orders: "..value
end

-- Translate: Effective Amount Filters Routed Orders
bme_bmeequities_replay_bmegate_v1_6.effective_amount_filters_routed_orders.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Effective Amount Filters Routed Orders
bme_bmeequities_replay_bmegate_v1_6.effective_amount_filters_routed_orders.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.effective_amount_filters_routed_orders.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.effective_amount_filters_routed_orders.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.effective_amount_filters_routed_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.effective_amount_filters_routed_orders, range, value, display)

  return offset + length, value
end

-- Entry Date
bme_bmeequities_replay_bmegate_v1_6.entry_date = {}

-- Size: Entry Date
bme_bmeequities_replay_bmegate_v1_6.entry_date.size = 4

-- Display: Entry Date
bme_bmeequities_replay_bmegate_v1_6.entry_date.display = function(value)
  return string.format("Entry Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Entry Date
bme_bmeequities_replay_bmegate_v1_6.entry_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.entry_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmeequities_replay_bmegate_v1_6.entry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.entry_date, range, value, display)

  return offset + length, value
end

-- Entry Date 2
bme_bmeequities_replay_bmegate_v1_6.entry_date_2 = {}

-- Size: Entry Date 2
bme_bmeequities_replay_bmegate_v1_6.entry_date_2.size = 4

-- Display: Entry Date 2
bme_bmeequities_replay_bmegate_v1_6.entry_date_2.display = function(value)
  return string.format("Entry Date 2: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Entry Date 2
bme_bmeequities_replay_bmegate_v1_6.entry_date_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.entry_date_2.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmeequities_replay_bmegate_v1_6.entry_date_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.entry_date_2, range, value, display)

  return offset + length, value
end

-- Environment Code
bme_bmeequities_replay_bmegate_v1_6.environment_code = {}

-- Size: Environment Code
bme_bmeequities_replay_bmegate_v1_6.environment_code.size = 2

-- Display: Environment Code
bme_bmeequities_replay_bmegate_v1_6.environment_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Environment Code: No Value"
  end

  return "Environment Code: "..value
end

-- Dissect: Environment Code
bme_bmeequities_replay_bmegate_v1_6.environment_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.environment_code.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.environment_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.environment_code, range, value, display)

  return offset + length, value
end

-- Exec Ref Id
bme_bmeequities_replay_bmegate_v1_6.exec_ref_id = {}

-- Size: Exec Ref Id
bme_bmeequities_replay_bmegate_v1_6.exec_ref_id.size = 4

-- Display: Exec Ref Id
bme_bmeequities_replay_bmegate_v1_6.exec_ref_id.display = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
bme_bmeequities_replay_bmegate_v1_6.exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Exemption Situation
bme_bmeequities_replay_bmegate_v1_6.exemption_situation = {}

-- Size: Exemption Situation
bme_bmeequities_replay_bmegate_v1_6.exemption_situation.size = 1

-- Display: Exemption Situation
bme_bmeequities_replay_bmegate_v1_6.exemption_situation.display = function(value)
  if value == "0" then
    return "Exemption Situation: Specialists Non Exempted (0)"
  end
  if value == "1" then
    return "Exemption Situation: Specialists Exempted In The Buy Side (1)"
  end
  if value == "2" then
    return "Exemption Situation: Specialists Exempted In The Sell Side (2)"
  end
  if value == "3" then
    return "Exemption Situation: Specialists Exempted In Both Sides Buy And Sell (3)"
  end

  return "Exemption Situation: Unknown("..value..")"
end

-- Dissect: Exemption Situation
bme_bmeequities_replay_bmegate_v1_6.exemption_situation.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.exemption_situation.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmeequities_replay_bmegate_v1_6.exemption_situation.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.exemption_situation, range, value, display)

  return offset + length, value
end

-- Exercise Style
bme_bmeequities_replay_bmegate_v1_6.exercise_style = {}

-- Size: Exercise Style
bme_bmeequities_replay_bmegate_v1_6.exercise_style.size = 1

-- Display: Exercise Style
bme_bmeequities_replay_bmegate_v1_6.exercise_style.display = function(value)
  if value == "A" then
    return "Exercise Style: American (A)"
  end
  if value == "E" then
    return "Exercise Style: European (E)"
  end
  if value == "B" then
    return "Exercise Style: Bermudas (B)"
  end
  if value == "O" then
    return "Exercise Style: Others (O)"
  end

  return "Exercise Style: Unknown("..value..")"
end

-- Dissect: Exercise Style
bme_bmeequities_replay_bmegate_v1_6.exercise_style.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.exercise_style.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmeequities_replay_bmegate_v1_6.exercise_style.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.exercise_style, range, value, display)

  return offset + length, value
end

-- Expected Sequence Number
bme_bmeequities_replay_bmegate_v1_6.expected_sequence_number = {}

-- Size: Expected Sequence Number
bme_bmeequities_replay_bmegate_v1_6.expected_sequence_number.size = 4

-- Display: Expected Sequence Number
bme_bmeequities_replay_bmegate_v1_6.expected_sequence_number.display = function(value)
  return "Expected Sequence Number: "..value
end

-- Dissect: Expected Sequence Number
bme_bmeequities_replay_bmegate_v1_6.expected_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.expected_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.expected_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.expected_sequence_number, range, value, display)

  return offset + length, value
end

-- Fee Type
bme_bmeequities_replay_bmegate_v1_6.fee_type = {}

-- Size: Fee Type
bme_bmeequities_replay_bmegate_v1_6.fee_type.size = 2

-- Display: Fee Type
bme_bmeequities_replay_bmegate_v1_6.fee_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fee Type: No Value"
  end

  return "Fee Type: "..value
end

-- Dissect: Fee Type
bme_bmeequities_replay_bmegate_v1_6.fee_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.fee_type.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.fee_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.fee_type, range, value, display)

  return offset + length, value
end

-- First Trading Date
bme_bmeequities_replay_bmegate_v1_6.first_trading_date = {}

-- Size: First Trading Date
bme_bmeequities_replay_bmegate_v1_6.first_trading_date.size = 4

-- Display: First Trading Date
bme_bmeequities_replay_bmegate_v1_6.first_trading_date.display = function(value)
  return string.format("First Trading Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: First Trading Date
bme_bmeequities_replay_bmegate_v1_6.first_trading_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.first_trading_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmeequities_replay_bmegate_v1_6.first_trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.first_trading_date, range, value, display)

  return offset + length, value
end

-- Fisn
bme_bmeequities_replay_bmegate_v1_6.fisn = {}

-- Size: Fisn
bme_bmeequities_replay_bmegate_v1_6.fisn.size = 35

-- Display: Fisn
bme_bmeequities_replay_bmegate_v1_6.fisn.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fisn: No Value"
  end

  return "Fisn: "..value
end

-- Dissect: Fisn
bme_bmeequities_replay_bmegate_v1_6.fisn.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.fisn.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.fisn.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.fisn, range, value, display)

  return offset + length, value
end

-- Further Sub Product
bme_bmeequities_replay_bmegate_v1_6.further_sub_product = {}

-- Size: Further Sub Product
bme_bmeequities_replay_bmegate_v1_6.further_sub_product.size = 4

-- Display: Further Sub Product
bme_bmeequities_replay_bmegate_v1_6.further_sub_product.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Further Sub Product: No Value"
  end

  return "Further Sub Product: "..value
end

-- Dissect: Further Sub Product
bme_bmeequities_replay_bmegate_v1_6.further_sub_product.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.further_sub_product.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.further_sub_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.further_sub_product, range, value, display)

  return offset + length, value
end

-- Gross Trade Amt
bme_bmeequities_replay_bmegate_v1_6.gross_trade_amt = {}

-- Size: Gross Trade Amt
bme_bmeequities_replay_bmegate_v1_6.gross_trade_amt.size = 8

-- Display: Gross Trade Amt
bme_bmeequities_replay_bmegate_v1_6.gross_trade_amt.display = function(value)
  return "Gross Trade Amt: "..value
end

-- Translate: Gross Trade Amt
bme_bmeequities_replay_bmegate_v1_6.gross_trade_amt.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Gross Trade Amt
bme_bmeequities_replay_bmegate_v1_6.gross_trade_amt.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.gross_trade_amt.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.gross_trade_amt.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.gross_trade_amt.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.gross_trade_amt, range, value, display)

  return offset + length, value
end

-- Heart Bt Int
bme_bmeequities_replay_bmegate_v1_6.heart_bt_int = {}

-- Size: Heart Bt Int
bme_bmeequities_replay_bmegate_v1_6.heart_bt_int.size = 1

-- Display: Heart Bt Int
bme_bmeequities_replay_bmegate_v1_6.heart_bt_int.display = function(value)
  return "Heart Bt Int: "..value
end

-- Dissect: Heart Bt Int
bme_bmeequities_replay_bmegate_v1_6.heart_bt_int.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.heart_bt_int.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.heart_bt_int.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.heart_bt_int, range, value, display)

  return offset + length, value
end

-- High Limit Price
bme_bmeequities_replay_bmegate_v1_6.high_limit_price = {}

-- Size: High Limit Price
bme_bmeequities_replay_bmegate_v1_6.high_limit_price.size = 8

-- Display: High Limit Price
bme_bmeequities_replay_bmegate_v1_6.high_limit_price.display = function(value)
  return "High Limit Price: "..value
end

-- Translate: High Limit Price
bme_bmeequities_replay_bmegate_v1_6.high_limit_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: High Limit Price
bme_bmeequities_replay_bmegate_v1_6.high_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.high_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.high_limit_price.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.high_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.high_limit_price, range, value, display)

  return offset + length, value
end

-- Investment Fund Category
bme_bmeequities_replay_bmegate_v1_6.investment_fund_category = {}

-- Size: Investment Fund Category
bme_bmeequities_replay_bmegate_v1_6.investment_fund_category.size = 80

-- Display: Investment Fund Category
bme_bmeequities_replay_bmegate_v1_6.investment_fund_category.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Investment Fund Category: No Value"
  end

  return "Investment Fund Category: "..value
end

-- Dissect: Investment Fund Category
bme_bmeequities_replay_bmegate_v1_6.investment_fund_category.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.investment_fund_category.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.investment_fund_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.investment_fund_category, range, value, display)

  return offset + length, value
end

-- Investment Fund Class
bme_bmeequities_replay_bmegate_v1_6.investment_fund_class = {}

-- Size: Investment Fund Class
bme_bmeequities_replay_bmegate_v1_6.investment_fund_class.size = 1

-- Display: Investment Fund Class
bme_bmeequities_replay_bmegate_v1_6.investment_fund_class.display = function(value)
  if value == 0 then
    return "Investment Fund Class: False (0)"
  end
  if value == 1 then
    return "Investment Fund Class: True (1)"
  end
  if value == 255 then
    return "Investment Fund Class: Undefined (255)"
  end

  return "Investment Fund Class: Unknown("..value..")"
end

-- Dissect: Investment Fund Class
bme_bmeequities_replay_bmegate_v1_6.investment_fund_class.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.investment_fund_class.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.investment_fund_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.investment_fund_class, range, value, display)

  return offset + length, value
end

-- Investment Fund Cut Off Time
bme_bmeequities_replay_bmegate_v1_6.investment_fund_cut_off_time = {}

-- Size: Investment Fund Cut Off Time
bme_bmeequities_replay_bmegate_v1_6.investment_fund_cut_off_time.size = 8

-- Display: Investment Fund Cut Off Time
bme_bmeequities_replay_bmegate_v1_6.investment_fund_cut_off_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Investment Fund Cut Off Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Investment Fund Cut Off Time
bme_bmeequities_replay_bmegate_v1_6.investment_fund_cut_off_time.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.investment_fund_cut_off_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bme_bmeequities_replay_bmegate_v1_6.investment_fund_cut_off_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.investment_fund_cut_off_time, range, value, display)

  return offset + length, value
end

-- Investment Fund Depository
bme_bmeequities_replay_bmegate_v1_6.investment_fund_depository = {}

-- Size: Investment Fund Depository
bme_bmeequities_replay_bmegate_v1_6.investment_fund_depository.size = 80

-- Display: Investment Fund Depository
bme_bmeequities_replay_bmegate_v1_6.investment_fund_depository.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Investment Fund Depository: No Value"
  end

  return "Investment Fund Depository: "..value
end

-- Dissect: Investment Fund Depository
bme_bmeequities_replay_bmegate_v1_6.investment_fund_depository.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.investment_fund_depository.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.investment_fund_depository.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.investment_fund_depository, range, value, display)

  return offset + length, value
end

-- Investment Fund Management Company
bme_bmeequities_replay_bmegate_v1_6.investment_fund_management_company = {}

-- Size: Investment Fund Management Company
bme_bmeequities_replay_bmegate_v1_6.investment_fund_management_company.size = 80

-- Display: Investment Fund Management Company
bme_bmeequities_replay_bmegate_v1_6.investment_fund_management_company.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Investment Fund Management Company: No Value"
  end

  return "Investment Fund Management Company: "..value
end

-- Dissect: Investment Fund Management Company
bme_bmeequities_replay_bmegate_v1_6.investment_fund_management_company.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.investment_fund_management_company.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.investment_fund_management_company.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.investment_fund_management_company, range, value, display)

  return offset + length, value
end

-- Investment Fund Manager
bme_bmeequities_replay_bmegate_v1_6.investment_fund_manager = {}

-- Size: Investment Fund Manager
bme_bmeequities_replay_bmegate_v1_6.investment_fund_manager.size = 80

-- Display: Investment Fund Manager
bme_bmeequities_replay_bmegate_v1_6.investment_fund_manager.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Investment Fund Manager: No Value"
  end

  return "Investment Fund Manager: "..value
end

-- Dissect: Investment Fund Manager
bme_bmeequities_replay_bmegate_v1_6.investment_fund_manager.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.investment_fund_manager.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.investment_fund_manager.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.investment_fund_manager, range, value, display)

  return offset + length, value
end

-- Investment Fund Minimum Maintenance Amount
bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_maintenance_amount = {}

-- Size: Investment Fund Minimum Maintenance Amount
bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_maintenance_amount.size = 8

-- Display: Investment Fund Minimum Maintenance Amount
bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_maintenance_amount.display = function(value)
  return "Investment Fund Minimum Maintenance Amount: "..value
end

-- Translate: Investment Fund Minimum Maintenance Amount
bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_maintenance_amount.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Investment Fund Minimum Maintenance Amount
bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_maintenance_amount.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_maintenance_amount.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_maintenance_amount.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_maintenance_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.investment_fund_minimum_maintenance_amount, range, value, display)

  return offset + length, value
end

-- Investment Fund Minimum Subscription Amount
bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_subscription_amount = {}

-- Size: Investment Fund Minimum Subscription Amount
bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_subscription_amount.size = 8

-- Display: Investment Fund Minimum Subscription Amount
bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_subscription_amount.display = function(value)
  return "Investment Fund Minimum Subscription Amount: "..value
end

-- Translate: Investment Fund Minimum Subscription Amount
bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_subscription_amount.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Investment Fund Minimum Subscription Amount
bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_subscription_amount.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_subscription_amount.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_subscription_amount.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_subscription_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.investment_fund_minimum_subscription_amount, range, value, display)

  return offset + length, value
end

-- Investment Fund Number Of Decimals
bme_bmeequities_replay_bmegate_v1_6.investment_fund_number_of_decimals = {}

-- Size: Investment Fund Number Of Decimals
bme_bmeequities_replay_bmegate_v1_6.investment_fund_number_of_decimals.size = 1

-- Display: Investment Fund Number Of Decimals
bme_bmeequities_replay_bmegate_v1_6.investment_fund_number_of_decimals.display = function(value)
  return "Investment Fund Number Of Decimals: "..value
end

-- Dissect: Investment Fund Number Of Decimals
bme_bmeequities_replay_bmegate_v1_6.investment_fund_number_of_decimals.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.investment_fund_number_of_decimals.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.investment_fund_number_of_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.investment_fund_number_of_decimals, range, value, display)

  return offset + length, value
end

-- Issue Date
bme_bmeequities_replay_bmegate_v1_6.issue_date = {}

-- Size: Issue Date
bme_bmeequities_replay_bmegate_v1_6.issue_date.size = 4

-- Display: Issue Date
bme_bmeequities_replay_bmegate_v1_6.issue_date.display = function(value)
  return string.format("Issue Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Issue Date
bme_bmeequities_replay_bmegate_v1_6.issue_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.issue_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmeequities_replay_bmegate_v1_6.issue_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.issue_date, range, value, display)

  return offset + length, value
end

-- Issuer
bme_bmeequities_replay_bmegate_v1_6.issuer = {}

-- Size: Issuer
bme_bmeequities_replay_bmegate_v1_6.issuer.size = 12

-- Display: Issuer
bme_bmeequities_replay_bmegate_v1_6.issuer.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Issuer: No Value"
  end

  return "Issuer: "..value
end

-- Dissect: Issuer
bme_bmeequities_replay_bmegate_v1_6.issuer.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.issuer.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.issuer.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.issuer, range, value, display)

  return offset + length, value
end

-- Issuer Lei
bme_bmeequities_replay_bmegate_v1_6.issuer_lei = {}

-- Size: Issuer Lei
bme_bmeequities_replay_bmegate_v1_6.issuer_lei.size = 20

-- Display: Issuer Lei
bme_bmeequities_replay_bmegate_v1_6.issuer_lei.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Issuer Lei: No Value"
  end

  return "Issuer Lei: "..value
end

-- Dissect: Issuer Lei
bme_bmeequities_replay_bmegate_v1_6.issuer_lei.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.issuer_lei.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.issuer_lei.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.issuer_lei, range, value, display)

  return offset + length, value
end

-- Last Admission Date
bme_bmeequities_replay_bmegate_v1_6.last_admission_date = {}

-- Size: Last Admission Date
bme_bmeequities_replay_bmegate_v1_6.last_admission_date.size = 4

-- Display: Last Admission Date
bme_bmeequities_replay_bmegate_v1_6.last_admission_date.display = function(value)
  return string.format("Last Admission Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Last Admission Date
bme_bmeequities_replay_bmegate_v1_6.last_admission_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.last_admission_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmeequities_replay_bmegate_v1_6.last_admission_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.last_admission_date, range, value, display)

  return offset + length, value
end

-- Last Change Flag
bme_bmeequities_replay_bmegate_v1_6.last_change_flag = {}

-- Size: Last Change Flag
bme_bmeequities_replay_bmegate_v1_6.last_change_flag.size = 1

-- Display: Last Change Flag
bme_bmeequities_replay_bmegate_v1_6.last_change_flag.display = function(value)
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
bme_bmeequities_replay_bmegate_v1_6.last_change_flag.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.last_change_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.last_change_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.last_change_flag, range, value, display)

  return offset + length, value
end

-- Last Px
bme_bmeequities_replay_bmegate_v1_6.last_px = {}

-- Size: Last Px
bme_bmeequities_replay_bmegate_v1_6.last_px.size = 8

-- Display: Last Px
bme_bmeequities_replay_bmegate_v1_6.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
bme_bmeequities_replay_bmegate_v1_6.last_px.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Px
bme_bmeequities_replay_bmegate_v1_6.last_px.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.last_px.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Qty
bme_bmeequities_replay_bmegate_v1_6.last_qty = {}

-- Size: Last Qty
bme_bmeequities_replay_bmegate_v1_6.last_qty.size = 4

-- Display: Last Qty
bme_bmeequities_replay_bmegate_v1_6.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
bme_bmeequities_replay_bmegate_v1_6.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.last_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Last Trading Day
bme_bmeequities_replay_bmegate_v1_6.last_trading_day = {}

-- Size: Last Trading Day
bme_bmeequities_replay_bmegate_v1_6.last_trading_day.size = 4

-- Display: Last Trading Day
bme_bmeequities_replay_bmegate_v1_6.last_trading_day.display = function(value)
  return string.format("Last Trading Day: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Last Trading Day
bme_bmeequities_replay_bmegate_v1_6.last_trading_day.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.last_trading_day.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmeequities_replay_bmegate_v1_6.last_trading_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.last_trading_day, range, value, display)

  return offset + length, value
end

-- Li Spost
bme_bmeequities_replay_bmegate_v1_6.li_spost = {}

-- Size: Li Spost
bme_bmeequities_replay_bmegate_v1_6.li_spost.size = 8

-- Display: Li Spost
bme_bmeequities_replay_bmegate_v1_6.li_spost.display = function(value)
  return "Li Spost: "..value
end

-- Translate: Li Spost
bme_bmeequities_replay_bmegate_v1_6.li_spost.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Li Spost
bme_bmeequities_replay_bmegate_v1_6.li_spost.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.li_spost.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.li_spost.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.li_spost.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.li_spost, range, value, display)

  return offset + length, value
end

-- Li Spre
bme_bmeequities_replay_bmegate_v1_6.li_spre = {}

-- Size: Li Spre
bme_bmeequities_replay_bmegate_v1_6.li_spre.size = 8

-- Display: Li Spre
bme_bmeequities_replay_bmegate_v1_6.li_spre.display = function(value)
  return "Li Spre: "..value
end

-- Translate: Li Spre
bme_bmeequities_replay_bmegate_v1_6.li_spre.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Li Spre
bme_bmeequities_replay_bmegate_v1_6.li_spre.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.li_spre.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.li_spre.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.li_spre.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.li_spre, range, value, display)

  return offset + length, value
end

-- Liquid Instrument
bme_bmeequities_replay_bmegate_v1_6.liquid_instrument = {}

-- Size: Liquid Instrument
bme_bmeequities_replay_bmegate_v1_6.liquid_instrument.size = 1

-- Display: Liquid Instrument
bme_bmeequities_replay_bmegate_v1_6.liquid_instrument.display = function(value)
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
bme_bmeequities_replay_bmegate_v1_6.liquid_instrument.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.liquid_instrument.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.liquid_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.liquid_instrument, range, value, display)

  return offset + length, value
end

-- Liquidative Value
bme_bmeequities_replay_bmegate_v1_6.liquidative_value = {}

-- Size: Liquidative Value
bme_bmeequities_replay_bmegate_v1_6.liquidative_value.size = 8

-- Display: Liquidative Value
bme_bmeequities_replay_bmegate_v1_6.liquidative_value.display = function(value)
  return "Liquidative Value: "..value
end

-- Translate: Liquidative Value
bme_bmeequities_replay_bmegate_v1_6.liquidative_value.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Liquidative Value
bme_bmeequities_replay_bmegate_v1_6.liquidative_value.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.liquidative_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.liquidative_value.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.liquidative_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.liquidative_value, range, value, display)

  return offset + length, value
end

-- Liquidative Value Date
bme_bmeequities_replay_bmegate_v1_6.liquidative_value_date = {}

-- Size: Liquidative Value Date
bme_bmeequities_replay_bmegate_v1_6.liquidative_value_date.size = 4

-- Display: Liquidative Value Date
bme_bmeequities_replay_bmegate_v1_6.liquidative_value_date.display = function(value)
  return string.format("Liquidative Value Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Liquidative Value Date
bme_bmeequities_replay_bmegate_v1_6.liquidative_value_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.liquidative_value_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmeequities_replay_bmegate_v1_6.liquidative_value_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.liquidative_value_date, range, value, display)

  return offset + length, value
end

-- Logout Reason
bme_bmeequities_replay_bmegate_v1_6.logout_reason = {}

-- Size: Logout Reason
bme_bmeequities_replay_bmegate_v1_6.logout_reason.size = 1

-- Display: Logout Reason
bme_bmeequities_replay_bmegate_v1_6.logout_reason.display = function(value)
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
bme_bmeequities_replay_bmegate_v1_6.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.logout_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Low Limit Price
bme_bmeequities_replay_bmegate_v1_6.low_limit_price = {}

-- Size: Low Limit Price
bme_bmeequities_replay_bmegate_v1_6.low_limit_price.size = 8

-- Display: Low Limit Price
bme_bmeequities_replay_bmegate_v1_6.low_limit_price.display = function(value)
  return "Low Limit Price: "..value
end

-- Translate: Low Limit Price
bme_bmeequities_replay_bmegate_v1_6.low_limit_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Low Limit Price
bme_bmeequities_replay_bmegate_v1_6.low_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.low_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.low_limit_price.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.low_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.low_limit_price, range, value, display)

  return offset + length, value
end

-- Market Id
bme_bmeequities_replay_bmegate_v1_6.market_id = {}

-- Size: Market Id
bme_bmeequities_replay_bmegate_v1_6.market_id.size = 4

-- Display: Market Id
bme_bmeequities_replay_bmegate_v1_6.market_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Market Id: No Value"
  end

  return "Market Id: "..value
end

-- Dissect: Market Id
bme_bmeequities_replay_bmegate_v1_6.market_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.market_id.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Mechanism
bme_bmeequities_replay_bmegate_v1_6.market_mechanism = {}

-- Size: Market Mechanism
bme_bmeequities_replay_bmegate_v1_6.market_mechanism.size = 1

-- Display: Market Mechanism
bme_bmeequities_replay_bmegate_v1_6.market_mechanism.display = function(value)
  if value == "0" then
    return "Market Mechanism: Central Limit Order Book (0)"
  end
  if value == "4" then
    return "Market Mechanism: Dark Order Book (4)"
  end
  if value == "1" then
    return "Market Mechanism: Off Book Messaging Trading (1)"
  end
  if value == "5" then
    return "Market Mechanism: Periodic Auction (5)"
  end

  return "Market Mechanism: Unknown("..value..")"
end

-- Dissect: Market Mechanism
bme_bmeequities_replay_bmegate_v1_6.market_mechanism.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.market_mechanism.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmeequities_replay_bmegate_v1_6.market_mechanism.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.market_mechanism, range, value, display)

  return offset + length, value
end

-- Market Segment Id
bme_bmeequities_replay_bmegate_v1_6.market_segment_id = {}

-- Size: Market Segment Id
bme_bmeequities_replay_bmegate_v1_6.market_segment_id.size = 4

-- Display: Market Segment Id
bme_bmeequities_replay_bmegate_v1_6.market_segment_id.display = function(value)
  if value == "XMAD" then
    return "Market Segment Id: Bolsa De Madrid (XMAD)"
  end
  if value == "XBAR" then
    return "Market Segment Id: Bolsa De Barcelona (XBAR)"
  end
  if value == "XBIL" then
    return "Market Segment Id: Bolsa De Valores De Bilbao (XBIL)"
  end
  if value == "XVAL" then
    return "Market Segment Id: Bolsa De Valencia (XVAL)"
  end
  if value == "MABX" then
    return "Market Segment Id: Mercado Alternativo Bursátil (MABX)"
  end
  if value == "XLAT" then
    return "Market Segment Id: Latibex (XLAT)"
  end
  if value == "GROW" then
    return "Market Segment Id: Bme Growth (GROW)"
  end
  if value == "SCLE" then
    return "Market Segment Id: Bme Scale Up (SCLE)"
  end
  if value == "DMAD" then
    return "Market Segment Id: Bolsa De Madrid Dark Book (DMAD)"
  end

  return "Market Segment Id: Unknown("..value..")"
end

-- Dissect: Market Segment Id
bme_bmeequities_replay_bmegate_v1_6.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.market_segment_id.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Master Fund Name
bme_bmeequities_replay_bmegate_v1_6.master_fund_name = {}

-- Size: Master Fund Name
bme_bmeequities_replay_bmegate_v1_6.master_fund_name.size = 80

-- Display: Master Fund Name
bme_bmeequities_replay_bmegate_v1_6.master_fund_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Master Fund Name: No Value"
  end

  return "Master Fund Name: "..value
end

-- Dissect: Master Fund Name
bme_bmeequities_replay_bmegate_v1_6.master_fund_name.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.master_fund_name.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.master_fund_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.master_fund_name, range, value, display)

  return offset + length, value
end

-- Maturity Date
bme_bmeequities_replay_bmegate_v1_6.maturity_date = {}

-- Size: Maturity Date
bme_bmeequities_replay_bmegate_v1_6.maturity_date.size = 4

-- Display: Maturity Date
bme_bmeequities_replay_bmegate_v1_6.maturity_date.display = function(value)
  return string.format("Maturity Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Maturity Date
bme_bmeequities_replay_bmegate_v1_6.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmeequities_replay_bmegate_v1_6.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Maturity Month Year
bme_bmeequities_replay_bmegate_v1_6.maturity_month_year = {}

-- Size: Maturity Month Year
bme_bmeequities_replay_bmegate_v1_6.maturity_month_year.size = 8

-- Display: Maturity Month Year
bme_bmeequities_replay_bmegate_v1_6.maturity_month_year.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Maturity Month Year: No Value"
  end

  return "Maturity Month Year: "..value
end

-- Dissect: Maturity Month Year
bme_bmeequities_replay_bmegate_v1_6.maturity_month_year.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.maturity_month_year.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.maturity_month_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.maturity_month_year, range, value, display)

  return offset + length, value
end

-- Message Size
bme_bmeequities_replay_bmegate_v1_6.message_size = {}

-- Size: Message Size
bme_bmeequities_replay_bmegate_v1_6.message_size.size = 2

-- Display: Message Size
bme_bmeequities_replay_bmegate_v1_6.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
bme_bmeequities_replay_bmegate_v1_6.message_size.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
bme_bmeequities_replay_bmegate_v1_6.message_type = {}

-- Size: Message Type
bme_bmeequities_replay_bmegate_v1_6.message_type.size = 1

-- Display: Message Type
bme_bmeequities_replay_bmegate_v1_6.message_type.display = function(value)
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
  if value == 0x09 then
    return "Message Type: Replay Request Message (0x09)"
  end
  if value == 0x0C then
    return "Message Type: Replay Request Ack Nack Message (0x0C)"
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
  if value == 0x82 then
    return "Message Type: Topofbook Message (0x82)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
bme_bmeequities_replay_bmegate_v1_6.message_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.message_type, range, value, display)

  return offset + length, value
end

-- Min Trade Vol
bme_bmeequities_replay_bmegate_v1_6.min_trade_vol = {}

-- Size: Min Trade Vol
bme_bmeequities_replay_bmegate_v1_6.min_trade_vol.size = 4

-- Display: Min Trade Vol
bme_bmeequities_replay_bmegate_v1_6.min_trade_vol.display = function(value)
  return "Min Trade Vol: "..value
end

-- Dissect: Min Trade Vol
bme_bmeequities_replay_bmegate_v1_6.min_trade_vol.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.min_trade_vol.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.min_trade_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.min_trade_vol, range, value, display)

  return offset + length, value
end

-- Minimum Authorized Shares
bme_bmeequities_replay_bmegate_v1_6.minimum_authorized_shares = {}

-- Size: Minimum Authorized Shares
bme_bmeequities_replay_bmegate_v1_6.minimum_authorized_shares.size = 4

-- Display: Minimum Authorized Shares
bme_bmeequities_replay_bmegate_v1_6.minimum_authorized_shares.display = function(value)
  return "Minimum Authorized Shares: "..value
end

-- Dissect: Minimum Authorized Shares
bme_bmeequities_replay_bmegate_v1_6.minimum_authorized_shares.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.minimum_authorized_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.minimum_authorized_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.minimum_authorized_shares, range, value, display)

  return offset + length, value
end

-- Minimum Capital
bme_bmeequities_replay_bmegate_v1_6.minimum_capital = {}

-- Size: Minimum Capital
bme_bmeequities_replay_bmegate_v1_6.minimum_capital.size = 8

-- Display: Minimum Capital
bme_bmeequities_replay_bmegate_v1_6.minimum_capital.display = function(value)
  return "Minimum Capital: "..value
end

-- Translate: Minimum Capital
bme_bmeequities_replay_bmegate_v1_6.minimum_capital.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Minimum Capital
bme_bmeequities_replay_bmegate_v1_6.minimum_capital.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.minimum_capital.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.minimum_capital.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.minimum_capital.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.minimum_capital, range, value, display)

  return offset + length, value
end

-- Minimum Display Qty
bme_bmeequities_replay_bmegate_v1_6.minimum_display_qty = {}

-- Size: Minimum Display Qty
bme_bmeequities_replay_bmegate_v1_6.minimum_display_qty.size = 4

-- Display: Minimum Display Qty
bme_bmeequities_replay_bmegate_v1_6.minimum_display_qty.display = function(value)
  return "Minimum Display Qty: "..value
end

-- Dissect: Minimum Display Qty
bme_bmeequities_replay_bmegate_v1_6.minimum_display_qty.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.minimum_display_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.minimum_display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.minimum_display_qty, range, value, display)

  return offset + length, value
end

-- Modality Mask B 4
bme_bmeequities_replay_bmegate_v1_6.modality_mask_b_4 = {}

-- Size: Modality Mask B 4
bme_bmeequities_replay_bmegate_v1_6.modality_mask_b_4.size = 4

-- Display: Modality Mask B 4
bme_bmeequities_replay_bmegate_v1_6.modality_mask_b_4.display = function(value)
  return "Modality Mask B 4: "..value
end

-- Dissect: Modality Mask B 4
bme_bmeequities_replay_bmegate_v1_6.modality_mask_b_4.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.modality_mask_b_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.modality_mask_b_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.modality_mask_b_4, range, value, display)

  return offset + length, value
end

-- Msg Rejected Reference
bme_bmeequities_replay_bmegate_v1_6.msg_rejected_reference = {}

-- Size: Msg Rejected Reference
bme_bmeequities_replay_bmegate_v1_6.msg_rejected_reference.size = 7

-- Display: Msg Rejected Reference
bme_bmeequities_replay_bmegate_v1_6.msg_rejected_reference.display = function(value)
  return "Msg Rejected Reference: "..value
end

-- Dissect: Msg Rejected Reference
bme_bmeequities_replay_bmegate_v1_6.msg_rejected_reference.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.msg_rejected_reference.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bme_bmeequities_replay_bmegate_v1_6.msg_rejected_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.msg_rejected_reference, range, value, display)

  return offset + length, value
end

-- Nav Communication Term
bme_bmeequities_replay_bmegate_v1_6.nav_communication_term = {}

-- Size: Nav Communication Term
bme_bmeequities_replay_bmegate_v1_6.nav_communication_term.size = 1

-- Display: Nav Communication Term
bme_bmeequities_replay_bmegate_v1_6.nav_communication_term.display = function(value)
  if value == "1" then
    return "Nav Communication Term: D 1 (1)"
  end
  if value == "2" then
    return "Nav Communication Term: D 2 (2)"
  end
  if value == "3" then
    return "Nav Communication Term: D 3 (3)"
  end

  return "Nav Communication Term: Unknown("..value..")"
end

-- Dissect: Nav Communication Term
bme_bmeequities_replay_bmegate_v1_6.nav_communication_term.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.nav_communication_term.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmeequities_replay_bmegate_v1_6.nav_communication_term.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.nav_communication_term, range, value, display)

  return offset + length, value
end

-- Net Asset Value Identifier
bme_bmeequities_replay_bmegate_v1_6.net_asset_value_identifier = {}

-- Size: Net Asset Value Identifier
bme_bmeequities_replay_bmegate_v1_6.net_asset_value_identifier.size = 7

-- Display: Net Asset Value Identifier
bme_bmeequities_replay_bmegate_v1_6.net_asset_value_identifier.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Net Asset Value Identifier: No Value"
  end

  return "Net Asset Value Identifier: "..value
end

-- Dissect: Net Asset Value Identifier
bme_bmeequities_replay_bmegate_v1_6.net_asset_value_identifier.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.net_asset_value_identifier.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.net_asset_value_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.net_asset_value_identifier, range, value, display)

  return offset + length, value
end

-- Net Asset Value Indicator
bme_bmeequities_replay_bmegate_v1_6.net_asset_value_indicator = {}

-- Size: Net Asset Value Indicator
bme_bmeequities_replay_bmegate_v1_6.net_asset_value_indicator.size = 1

-- Display: Net Asset Value Indicator
bme_bmeequities_replay_bmegate_v1_6.net_asset_value_indicator.display = function(value)
  if value == 0 then
    return "Net Asset Value Indicator: False (0)"
  end
  if value == 1 then
    return "Net Asset Value Indicator: True (1)"
  end
  if value == 255 then
    return "Net Asset Value Indicator: Undefined (255)"
  end

  return "Net Asset Value Indicator: Unknown("..value..")"
end

-- Dissect: Net Asset Value Indicator
bme_bmeequities_replay_bmegate_v1_6.net_asset_value_indicator.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.net_asset_value_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.net_asset_value_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.net_asset_value_indicator, range, value, display)

  return offset + length, value
end

-- Network Status Value
bme_bmeequities_replay_bmegate_v1_6.network_status_value = {}

-- Size: Network Status Value
bme_bmeequities_replay_bmegate_v1_6.network_status_value.size = 1

-- Display: Network Status Value
bme_bmeequities_replay_bmegate_v1_6.network_status_value.display = function(value)
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
bme_bmeequities_replay_bmegate_v1_6.network_status_value.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.network_status_value.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.network_status_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.network_status_value, range, value, display)

  return offset + length, value
end

-- News Text
bme_bmeequities_replay_bmegate_v1_6.news_text = {}

-- Size: News Text
bme_bmeequities_replay_bmegate_v1_6.news_text.size = 78

-- Display: News Text
bme_bmeequities_replay_bmegate_v1_6.news_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "News Text: No Value"
  end

  return "News Text: "..value
end

-- Dissect: News Text
bme_bmeequities_replay_bmegate_v1_6.news_text.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.news_text.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.news_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.news_text, range, value, display)

  return offset + length, value
end

-- Non Availability Reason
bme_bmeequities_replay_bmegate_v1_6.non_availability_reason = {}

-- Size: Non Availability Reason
bme_bmeequities_replay_bmegate_v1_6.non_availability_reason.size = 1

-- Display: Non Availability Reason
bme_bmeequities_replay_bmegate_v1_6.non_availability_reason.display = function(value)
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
bme_bmeequities_replay_bmegate_v1_6.non_availability_reason.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.non_availability_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.non_availability_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.non_availability_reason, range, value, display)

  return offset + length, value
end

-- Nt Position Limit
bme_bmeequities_replay_bmegate_v1_6.nt_position_limit = {}

-- Size: Nt Position Limit
bme_bmeequities_replay_bmegate_v1_6.nt_position_limit.size = 8

-- Display: Nt Position Limit
bme_bmeequities_replay_bmegate_v1_6.nt_position_limit.display = function(value)
  return "Nt Position Limit: "..value
end

-- Dissect: Nt Position Limit
bme_bmeequities_replay_bmegate_v1_6.nt_position_limit.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.nt_position_limit.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = bme_bmeequities_replay_bmegate_v1_6.nt_position_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.nt_position_limit, range, value, display)

  return offset + length, value
end

-- Number Of Decimals
bme_bmeequities_replay_bmegate_v1_6.number_of_decimals = {}

-- Size: Number Of Decimals
bme_bmeequities_replay_bmegate_v1_6.number_of_decimals.size = 1

-- Display: Number Of Decimals
bme_bmeequities_replay_bmegate_v1_6.number_of_decimals.display = function(value)
  return "Number Of Decimals: "..value
end

-- Dissect: Number Of Decimals
bme_bmeequities_replay_bmegate_v1_6.number_of_decimals.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.number_of_decimals.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.number_of_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.number_of_decimals, range, value, display)

  return offset + length, value
end

-- Number Of Holders
bme_bmeequities_replay_bmegate_v1_6.number_of_holders = {}

-- Size: Number Of Holders
bme_bmeequities_replay_bmegate_v1_6.number_of_holders.size = 4

-- Display: Number Of Holders
bme_bmeequities_replay_bmegate_v1_6.number_of_holders.display = function(value)
  return "Number Of Holders: "..value
end

-- Dissect: Number Of Holders
bme_bmeequities_replay_bmegate_v1_6.number_of_holders.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.number_of_holders.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.number_of_holders.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.number_of_holders, range, value, display)

  return offset + length, value
end

-- Order Number Of Decimals
bme_bmeequities_replay_bmegate_v1_6.order_number_of_decimals = {}

-- Size: Order Number Of Decimals
bme_bmeequities_replay_bmegate_v1_6.order_number_of_decimals.size = 1

-- Display: Order Number Of Decimals
bme_bmeequities_replay_bmegate_v1_6.order_number_of_decimals.display = function(value)
  return "Order Number Of Decimals: "..value
end

-- Dissect: Order Number Of Decimals
bme_bmeequities_replay_bmegate_v1_6.order_number_of_decimals.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.order_number_of_decimals.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.order_number_of_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.order_number_of_decimals, range, value, display)

  return offset + length, value
end

-- Order Static Range
bme_bmeequities_replay_bmegate_v1_6.order_static_range = {}

-- Size: Order Static Range
bme_bmeequities_replay_bmegate_v1_6.order_static_range.size = 8

-- Display: Order Static Range
bme_bmeequities_replay_bmegate_v1_6.order_static_range.display = function(value)
  return "Order Static Range: "..value
end

-- Translate: Order Static Range
bme_bmeequities_replay_bmegate_v1_6.order_static_range.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Order Static Range
bme_bmeequities_replay_bmegate_v1_6.order_static_range.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.order_static_range.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.order_static_range.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.order_static_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.order_static_range, range, value, display)

  return offset + length, value
end

-- Outstanding Capital
bme_bmeequities_replay_bmegate_v1_6.outstanding_capital = {}

-- Size: Outstanding Capital
bme_bmeequities_replay_bmegate_v1_6.outstanding_capital.size = 8

-- Display: Outstanding Capital
bme_bmeequities_replay_bmegate_v1_6.outstanding_capital.display = function(value)
  return "Outstanding Capital: "..value
end

-- Translate: Outstanding Capital
bme_bmeequities_replay_bmegate_v1_6.outstanding_capital.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Outstanding Capital
bme_bmeequities_replay_bmegate_v1_6.outstanding_capital.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.outstanding_capital.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.outstanding_capital.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.outstanding_capital.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.outstanding_capital, range, value, display)

  return offset + length, value
end

-- Outstanding Shares
bme_bmeequities_replay_bmegate_v1_6.outstanding_shares = {}

-- Size: Outstanding Shares
bme_bmeequities_replay_bmegate_v1_6.outstanding_shares.size = 4

-- Display: Outstanding Shares
bme_bmeequities_replay_bmegate_v1_6.outstanding_shares.display = function(value)
  return "Outstanding Shares: "..value
end

-- Dissect: Outstanding Shares
bme_bmeequities_replay_bmegate_v1_6.outstanding_shares.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.outstanding_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.outstanding_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.outstanding_shares, range, value, display)

  return offset + length, value
end

-- Password
bme_bmeequities_replay_bmegate_v1_6.password = {}

-- Size: Password
bme_bmeequities_replay_bmegate_v1_6.password.size = 10

-- Display: Password
bme_bmeequities_replay_bmegate_v1_6.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
bme_bmeequities_replay_bmegate_v1_6.password.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.password.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.password, range, value, display)

  return offset + length, value
end

-- Position Limit
bme_bmeequities_replay_bmegate_v1_6.position_limit = {}

-- Size: Position Limit
bme_bmeequities_replay_bmegate_v1_6.position_limit.size = 8

-- Display: Position Limit
bme_bmeequities_replay_bmegate_v1_6.position_limit.display = function(value)
  return "Position Limit: "..value
end

-- Translate: Position Limit
bme_bmeequities_replay_bmegate_v1_6.position_limit.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Position Limit
bme_bmeequities_replay_bmegate_v1_6.position_limit.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.position_limit.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.position_limit.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.position_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.position_limit, range, value, display)

  return offset + length, value
end

-- Pre Trade Transparency Waiver
bme_bmeequities_replay_bmegate_v1_6.pre_trade_transparency_waiver = {}

-- Size: Pre Trade Transparency Waiver
bme_bmeequities_replay_bmegate_v1_6.pre_trade_transparency_waiver.size = 1

-- Display: Pre Trade Transparency Waiver
bme_bmeequities_replay_bmegate_v1_6.pre_trade_transparency_waiver.display = function(value)
  if value == "0" then
    return "Pre Trade Transparency Waiver: Negotiated Trade In Liquid Financial Instruments Nliq (0)"
  end
  if value == "1" then
    return "Pre Trade Transparency Waiver: Negotiated Trade In Illiquid Financial Instruments Oilq (1)"
  end
  if value == "2" then
    return "Pre Trade Transparency Waiver: Negotiated Trade Subject To Conditions Other Than The Current Market Price Pric (2)"
  end

  return "Pre Trade Transparency Waiver: Unknown("..value..")"
end

-- Dissect: Pre Trade Transparency Waiver
bme_bmeequities_replay_bmegate_v1_6.pre_trade_transparency_waiver.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.pre_trade_transparency_waiver.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmeequities_replay_bmegate_v1_6.pre_trade_transparency_waiver.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.pre_trade_transparency_waiver, range, value, display)

  return offset + length, value
end

-- Price
bme_bmeequities_replay_bmegate_v1_6.price = {}

-- Size: Price
bme_bmeequities_replay_bmegate_v1_6.price.size = 8

-- Display: Price
bme_bmeequities_replay_bmegate_v1_6.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
bme_bmeequities_replay_bmegate_v1_6.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
bme_bmeequities_replay_bmegate_v1_6.price.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.price.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.price, range, value, display)

  return offset + length, value
end

-- Price 2
bme_bmeequities_replay_bmegate_v1_6.price_2 = {}

-- Size: Price 2
bme_bmeequities_replay_bmegate_v1_6.price_2.size = 8

-- Display: Price 2
bme_bmeequities_replay_bmegate_v1_6.price_2.display = function(value)
  return "Price 2: "..value
end

-- Translate: Price 2
bme_bmeequities_replay_bmegate_v1_6.price_2.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price 2
bme_bmeequities_replay_bmegate_v1_6.price_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.price_2.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.price_2.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price Tick Rule
bme_bmeequities_replay_bmegate_v1_6.price_tick_rule = {}

-- Size: Price Tick Rule
bme_bmeequities_replay_bmegate_v1_6.price_tick_rule.size = 1

-- Display: Price Tick Rule
bme_bmeequities_replay_bmegate_v1_6.price_tick_rule.display = function(value)
  return "Price Tick Rule: "..value
end

-- Dissect: Price Tick Rule
bme_bmeequities_replay_bmegate_v1_6.price_tick_rule.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.price_tick_rule.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.price_tick_rule.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.price_tick_rule, range, value, display)

  return offset + length, value
end

-- Priority
bme_bmeequities_replay_bmegate_v1_6.priority = {}

-- Size: Priority
bme_bmeequities_replay_bmegate_v1_6.priority.size = 4

-- Display: Priority
bme_bmeequities_replay_bmegate_v1_6.priority.display = function(value)
  return "Priority: "..value
end

-- Dissect: Priority
bme_bmeequities_replay_bmegate_v1_6.priority.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.priority.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.priority, range, value, display)

  return offset + length, value
end

-- Priority 2
bme_bmeequities_replay_bmegate_v1_6.priority_2 = {}

-- Size: Priority 2
bme_bmeequities_replay_bmegate_v1_6.priority_2.size = 4

-- Display: Priority 2
bme_bmeequities_replay_bmegate_v1_6.priority_2.display = function(value)
  return "Priority 2: "..value
end

-- Dissect: Priority 2
bme_bmeequities_replay_bmegate_v1_6.priority_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.priority_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.priority_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.priority_2, range, value, display)

  return offset + length, value
end

-- Protocol Version
bme_bmeequities_replay_bmegate_v1_6.protocol_version = {}

-- Size: Protocol Version
bme_bmeequities_replay_bmegate_v1_6.protocol_version.size = 6

-- Display: Protocol Version
bme_bmeequities_replay_bmegate_v1_6.protocol_version.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Protocol Version: No Value"
  end

  return "Protocol Version: "..value
end

-- Dissect: Protocol Version
bme_bmeequities_replay_bmegate_v1_6.protocol_version.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.protocol_version.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.protocol_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Publish Date And Time
bme_bmeequities_replay_bmegate_v1_6.publish_date_and_time = {}

-- Size: Publish Date And Time
bme_bmeequities_replay_bmegate_v1_6.publish_date_and_time.size = 8

-- Display: Publish Date And Time
bme_bmeequities_replay_bmegate_v1_6.publish_date_and_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Publish Date And Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Publish Date And Time
bme_bmeequities_replay_bmegate_v1_6.publish_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.publish_date_and_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bme_bmeequities_replay_bmegate_v1_6.publish_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.publish_date_and_time, range, value, display)

  return offset + length, value
end

-- Put Or Call
bme_bmeequities_replay_bmegate_v1_6.put_or_call = {}

-- Size: Put Or Call
bme_bmeequities_replay_bmegate_v1_6.put_or_call.size = 1

-- Display: Put Or Call
bme_bmeequities_replay_bmegate_v1_6.put_or_call.display = function(value)
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
bme_bmeequities_replay_bmegate_v1_6.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.put_or_call.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmeequities_replay_bmegate_v1_6.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Reference Price
bme_bmeequities_replay_bmegate_v1_6.reference_price = {}

-- Size: Reference Price
bme_bmeequities_replay_bmegate_v1_6.reference_price.size = 8

-- Display: Reference Price
bme_bmeequities_replay_bmegate_v1_6.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
bme_bmeequities_replay_bmegate_v1_6.reference_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Reference Price
bme_bmeequities_replay_bmegate_v1_6.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.reference_price.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Reference Trading Venue
bme_bmeequities_replay_bmegate_v1_6.reference_trading_venue = {}

-- Size: Reference Trading Venue
bme_bmeequities_replay_bmegate_v1_6.reference_trading_venue.size = 1

-- Display: Reference Trading Venue
bme_bmeequities_replay_bmegate_v1_6.reference_trading_venue.display = function(value)
  if value == "1" then
    return "Reference Trading Venue: Valencia (1)"
  end
  if value == "2" then
    return "Reference Trading Venue: Bilbao (2)"
  end
  if value == "4" then
    return "Reference Trading Venue: Barcelona (4)"
  end
  if value == "8" then
    return "Reference Trading Venue: Madrid (8)"
  end

  return "Reference Trading Venue: Unknown("..value..")"
end

-- Dissect: Reference Trading Venue
bme_bmeequities_replay_bmegate_v1_6.reference_trading_venue.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.reference_trading_venue.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmeequities_replay_bmegate_v1_6.reference_trading_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.reference_trading_venue, range, value, display)

  return offset + length, value
end

-- Request Id
bme_bmeequities_replay_bmegate_v1_6.request_id = {}

-- Size: Request Id
bme_bmeequities_replay_bmegate_v1_6.request_id.size = 4

-- Display: Request Id
bme_bmeequities_replay_bmegate_v1_6.request_id.display = function(value)
  return "Request Id: "..value
end

-- Dissect: Request Id
bme_bmeequities_replay_bmegate_v1_6.request_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.request_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.request_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.request_id, range, value, display)

  return offset + length, value
end

-- Retail Flag
bme_bmeequities_replay_bmegate_v1_6.retail_flag = {}

-- Size: Retail Flag
bme_bmeequities_replay_bmegate_v1_6.retail_flag.size = 1

-- Display: Retail Flag
bme_bmeequities_replay_bmegate_v1_6.retail_flag.display = function(value)
  if value == 0 then
    return "Retail Flag: False (0)"
  end
  if value == 1 then
    return "Retail Flag: True (1)"
  end
  if value == 255 then
    return "Retail Flag: Undefined (255)"
  end

  return "Retail Flag: Unknown("..value..")"
end

-- Dissect: Retail Flag
bme_bmeequities_replay_bmegate_v1_6.retail_flag.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.retail_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.retail_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.retail_flag, range, value, display)

  return offset + length, value
end

-- Retail Flag 2
bme_bmeequities_replay_bmegate_v1_6.retail_flag_2 = {}

-- Size: Retail Flag 2
bme_bmeequities_replay_bmegate_v1_6.retail_flag_2.size = 1

-- Display: Retail Flag 2
bme_bmeequities_replay_bmegate_v1_6.retail_flag_2.display = function(value)
  if value == 0 then
    return "Retail Flag 2: False (0)"
  end
  if value == 1 then
    return "Retail Flag 2: True (1)"
  end
  if value == 255 then
    return "Retail Flag 2: Undefined (255)"
  end

  return "Retail Flag 2: Unknown("..value..")"
end

-- Dissect: Retail Flag 2
bme_bmeequities_replay_bmegate_v1_6.retail_flag_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.retail_flag_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.retail_flag_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.retail_flag_2, range, value, display)

  return offset + length, value
end

-- Retail Service Flag
bme_bmeequities_replay_bmegate_v1_6.retail_service_flag = {}

-- Size: Retail Service Flag
bme_bmeequities_replay_bmegate_v1_6.retail_service_flag.size = 1

-- Display: Retail Service Flag
bme_bmeequities_replay_bmegate_v1_6.retail_service_flag.display = function(value)
  if value == 0 then
    return "Retail Service Flag: False (0)"
  end
  if value == 1 then
    return "Retail Service Flag: True (1)"
  end
  if value == 255 then
    return "Retail Service Flag: Undefined (255)"
  end

  return "Retail Service Flag: Unknown("..value..")"
end

-- Dissect: Retail Service Flag
bme_bmeequities_replay_bmegate_v1_6.retail_service_flag.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.retail_service_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.retail_service_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.retail_service_flag, range, value, display)

  return offset + length, value
end

-- Round Lot
bme_bmeequities_replay_bmegate_v1_6.round_lot = {}

-- Size: Round Lot
bme_bmeequities_replay_bmegate_v1_6.round_lot.size = 4

-- Display: Round Lot
bme_bmeequities_replay_bmegate_v1_6.round_lot.display = function(value)
  return "Round Lot: "..value
end

-- Dissect: Round Lot
bme_bmeequities_replay_bmegate_v1_6.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.round_lot.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Secondary Order Id
bme_bmeequities_replay_bmegate_v1_6.secondary_order_id = {}

-- Size: Secondary Order Id
bme_bmeequities_replay_bmegate_v1_6.secondary_order_id.size = 4

-- Display: Secondary Order Id
bme_bmeequities_replay_bmegate_v1_6.secondary_order_id.display = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
bme_bmeequities_replay_bmegate_v1_6.secondary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.secondary_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.secondary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Secondary Order Id 2
bme_bmeequities_replay_bmegate_v1_6.secondary_order_id_2 = {}

-- Size: Secondary Order Id 2
bme_bmeequities_replay_bmegate_v1_6.secondary_order_id_2.size = 4

-- Display: Secondary Order Id 2
bme_bmeequities_replay_bmegate_v1_6.secondary_order_id_2.display = function(value)
  return "Secondary Order Id 2: "..value
end

-- Dissect: Secondary Order Id 2
bme_bmeequities_replay_bmegate_v1_6.secondary_order_id_2.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.secondary_order_id_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.secondary_order_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.secondary_order_id_2, range, value, display)

  return offset + length, value
end

-- Security Code
bme_bmeequities_replay_bmegate_v1_6.security_code = {}

-- Size: Security Code
bme_bmeequities_replay_bmegate_v1_6.security_code.size = 4

-- Display: Security Code
bme_bmeequities_replay_bmegate_v1_6.security_code.display = function(value)
  return "Security Code: "..value
end

-- Dissect: Security Code
bme_bmeequities_replay_bmegate_v1_6.security_code.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.security_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.security_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_code, range, value, display)

  return offset + length, value
end

-- Security Description
bme_bmeequities_replay_bmegate_v1_6.security_description = {}

-- Size: Security Description
bme_bmeequities_replay_bmegate_v1_6.security_description.size = 80

-- Display: Security Description
bme_bmeequities_replay_bmegate_v1_6.security_description.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Description: No Value"
  end

  return "Security Description: "..value
end

-- Dissect: Security Description
bme_bmeequities_replay_bmegate_v1_6.security_description.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.security_description.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.security_description.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_description, range, value, display)

  return offset + length, value
end

-- Security Group
bme_bmeequities_replay_bmegate_v1_6.security_group = {}

-- Size: Security Group
bme_bmeequities_replay_bmegate_v1_6.security_group.size = 2

-- Display: Security Group
bme_bmeequities_replay_bmegate_v1_6.security_group.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Group: No Value"
  end

  return "Security Group: "..value
end

-- Dissect: Security Group
bme_bmeequities_replay_bmegate_v1_6.security_group.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.security_group.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.security_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_group, range, value, display)

  return offset + length, value
end

-- Security Name
bme_bmeequities_replay_bmegate_v1_6.security_name = {}

-- Size: Security Name
bme_bmeequities_replay_bmegate_v1_6.security_name.size = 40

-- Display: Security Name
bme_bmeequities_replay_bmegate_v1_6.security_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Name: No Value"
  end

  return "Security Name: "..value
end

-- Dissect: Security Name
bme_bmeequities_replay_bmegate_v1_6.security_name.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.security_name.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.security_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_name, range, value, display)

  return offset + length, value
end

-- Security Status
bme_bmeequities_replay_bmegate_v1_6.security_status = {}

-- Size: Security Status
bme_bmeequities_replay_bmegate_v1_6.security_status.size = 1

-- Display: Security Status
bme_bmeequities_replay_bmegate_v1_6.security_status.display = function(value)
  if value == "1" then
    return "Security Status: Active (1)"
  end
  if value == "2" then
    return "Security Status: Inactive Provissionaly Assumed (2)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
bme_bmeequities_replay_bmegate_v1_6.security_status.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmeequities_replay_bmegate_v1_6.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_status, range, value, display)

  return offset + length, value
end

-- Security Sub Type
bme_bmeequities_replay_bmegate_v1_6.security_sub_type = {}

-- Size: Security Sub Type
bme_bmeequities_replay_bmegate_v1_6.security_sub_type.size = 2

-- Display: Security Sub Type
bme_bmeequities_replay_bmegate_v1_6.security_sub_type.display = function(value)
  if value == "AE" then
    return "Security Sub Type: Spanish Stocks (AE)"
  end
  if value == "AI" then
    return "Security Sub Type: Foreign Stocks (AI)"
  end
  if value == "CV" then
    return "Security Sub Type: Basket (CV)"
  end
  if value == "II" then
    return "Security Sub Type: Foreign Index (II)"
  end
  if value == "IN" then
    return "Security Sub Type: Domestic Index (IN)"
  end
  if value == "MP" then
    return "Security Sub Type: Commodities (MP)"
  end
  if value == "OT" then
    return "Security Sub Type: Other (OT)"
  end
  if value == "TC" then
    return "Security Sub Type: Currency And Exchange Rates (TC)"
  end
  if value == "TI" then
    return "Security Sub Type: Interest Rate (TI)"
  end
  if value == "A" then
    return "Security Sub Type: Dj Indust Av (A)"
  end
  if value == "B" then
    return "Security Sub Type: Latibex As (B)"
  end
  if value == "C" then
    return "Security Sub Type: Ibex Medium Cap (C)"
  end
  if value == "D" then
    return "Security Sub Type: Ibex Top Dividendo (D)"
  end
  if value == "E" then
    return "Security Sub Type: Eurostoxx 50 (E)"
  end
  if value == "H" then
    return "Security Sub Type: Ibex Impacto (H)"
  end
  if value == "I" then
    return "Security Sub Type: Ibex 35 (I)"
  end
  if value == "L" then
    return "Security Sub Type: Latibex Bras (L)"
  end
  if value == "N" then
    return "Security Sub Type: Ftse 4 Good Ibx (N)"
  end
  if value == "O" then
    return "Security Sub Type: Afimonetario (O)"
  end
  if value == "Q" then
    return "Security Sub Type: Nasdaq 100 (Q)"
  end
  if value == "R" then
    return "Security Sub Type: Afibonos (R)"
  end
  if value == "S" then
    return "Security Sub Type: Ibex Small Cap (S)"
  end
  if value == "T" then
    return "Security Sub Type: Latibex Top (T)"
  end
  if value == "Z" then
    return "Security Sub Type: Generic (Z)"
  end

  return "Security Sub Type: Unknown("..value..")"
end

-- Dissect: Security Sub Type
bme_bmeequities_replay_bmegate_v1_6.security_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.security_sub_type.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.security_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_sub_type, range, value, display)

  return offset + length, value
end

-- Security Trading Status
bme_bmeequities_replay_bmegate_v1_6.security_trading_status = {}

-- Size: Security Trading Status
bme_bmeequities_replay_bmegate_v1_6.security_trading_status.size = 1

-- Display: Security Trading Status
bme_bmeequities_replay_bmegate_v1_6.security_trading_status.display = function(value)
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
bme_bmeequities_replay_bmegate_v1_6.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.security_trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Security Type
bme_bmeequities_replay_bmegate_v1_6.security_type = {}

-- Size: Security Type
bme_bmeequities_replay_bmegate_v1_6.security_type.size = 2

-- Display: Security Type
bme_bmeequities_replay_bmegate_v1_6.security_type.display = function(value)
  if value == "A" then
    return "Security Type: Stocks (A)"
  end
  if value == "B" then
    return "Security Type: Structured Bonds (B)"
  end
  if value == "C" then
    return "Security Type: Certificates (C)"
  end
  if value == "D" then
    return "Security Type: Subscription Rights (D)"
  end
  if value == "E" then
    return "Security Type: Hedge Funds (E)"
  end
  if value == "F" then
    return "Security Type: Funds (F)"
  end
  if value == "FA" then
    return "Security Type: Listed Investment Funds (FA)"
  end
  if value == "G" then
    return "Security Type: Discount (G)"
  end
  if value == "H" then
    return "Security Type: Bonus Cap (H)"
  end
  if value == "I" then
    return "Security Type: Inlines (I)"
  end
  if value == "J" then
    return "Security Type: Stay Low (J)"
  end
  if value == "K" then
    return "Security Type: Bonus (K)"
  end
  if value == "L" then
    return "Security Type: Sprint (L)"
  end
  if value == "M" then
    return "Security Type: Very New Shares (M)"
  end
  if value == "N" then
    return "Security Type: New Stocks (N)"
  end
  if value == "O" then
    return "Security Type: Other Products (O)"
  end
  if value == "P" then
    return "Security Type: Turbo Pros (P)"
  end
  if value == "R" then
    return "Security Type: Preferred Shares (R)"
  end
  if value == "S" then
    return "Security Type: Underlyings (S)"
  end
  if value == "T" then
    return "Security Type: Turbo Warrants (T)"
  end
  if value == "U" then
    return "Security Type: Cuotas Participativas Savings Banks Shares (U)"
  end
  if value == "V" then
    return "Security Type: Convertible Bond Rights (V)"
  end
  if value == "W" then
    return "Security Type: Warrants (W)"
  end
  if value == "X" then
    return "Security Type: Participations (X)"
  end
  if value == "Y" then
    return "Security Type: Stay High (Y)"
  end
  if value == "Z" then
    return "Security Type: Multi (Z)"
  end
  if value == "1" then
    return "Security Type: Sica Vs Vl D 1 (1)"
  end
  if value == "2" then
    return "Security Type: Sica Vs Vl D 2 (2)"
  end
  if value == "3" then
    return "Security Type: Sica Vs Vl D 3 (3)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
bme_bmeequities_replay_bmegate_v1_6.security_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.security_type.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_type, range, value, display)

  return offset + length, value
end

-- Self Match Prevention
bme_bmeequities_replay_bmegate_v1_6.self_match_prevention = {}

-- Size: Self Match Prevention
bme_bmeequities_replay_bmegate_v1_6.self_match_prevention.size = 1

-- Display: Self Match Prevention
bme_bmeequities_replay_bmegate_v1_6.self_match_prevention.display = function(value)
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
bme_bmeequities_replay_bmegate_v1_6.self_match_prevention.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.self_match_prevention.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.self_match_prevention.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.self_match_prevention, range, value, display)

  return offset + length, value
end

-- Sequence Number
bme_bmeequities_replay_bmegate_v1_6.sequence_number = {}

-- Size: Sequence Number
bme_bmeequities_replay_bmegate_v1_6.sequence_number.size = 4

-- Display: Sequence Number
bme_bmeequities_replay_bmegate_v1_6.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
bme_bmeequities_replay_bmegate_v1_6.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequence Number From
bme_bmeequities_replay_bmegate_v1_6.sequence_number_from = {}

-- Size: Sequence Number From
bme_bmeequities_replay_bmegate_v1_6.sequence_number_from.size = 4

-- Display: Sequence Number From
bme_bmeequities_replay_bmegate_v1_6.sequence_number_from.display = function(value)
  return "Sequence Number From: "..value
end

-- Dissect: Sequence Number From
bme_bmeequities_replay_bmegate_v1_6.sequence_number_from.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.sequence_number_from.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.sequence_number_from.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.sequence_number_from, range, value, display)

  return offset + length, value
end

-- Sequence Number To
bme_bmeequities_replay_bmegate_v1_6.sequence_number_to = {}

-- Size: Sequence Number To
bme_bmeequities_replay_bmegate_v1_6.sequence_number_to.size = 4

-- Display: Sequence Number To
bme_bmeequities_replay_bmegate_v1_6.sequence_number_to.display = function(value)
  return "Sequence Number To: "..value
end

-- Dissect: Sequence Number To
bme_bmeequities_replay_bmegate_v1_6.sequence_number_to.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.sequence_number_to.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.sequence_number_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.sequence_number_to, range, value, display)

  return offset + length, value
end

-- Session Date
bme_bmeequities_replay_bmegate_v1_6.session_date = {}

-- Size: Session Date
bme_bmeequities_replay_bmegate_v1_6.session_date.size = 4

-- Display: Session Date
bme_bmeequities_replay_bmegate_v1_6.session_date.display = function(value)
  return string.format("Session Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Session Date
bme_bmeequities_replay_bmegate_v1_6.session_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.session_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmeequities_replay_bmegate_v1_6.session_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.session_date, range, value, display)

  return offset + length, value
end

-- Session Reject Reason
bme_bmeequities_replay_bmegate_v1_6.session_reject_reason = {}

-- Size: Session Reject Reason
bme_bmeequities_replay_bmegate_v1_6.session_reject_reason.size = 1

-- Display: Session Reject Reason
bme_bmeequities_replay_bmegate_v1_6.session_reject_reason.display = function(value)
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
bme_bmeequities_replay_bmegate_v1_6.session_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.session_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.session_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.session_reject_reason, range, value, display)

  return offset + length, value
end

-- Settl Date
bme_bmeequities_replay_bmegate_v1_6.settl_date = {}

-- Size: Settl Date
bme_bmeequities_replay_bmegate_v1_6.settl_date.size = 4

-- Display: Settl Date
bme_bmeequities_replay_bmegate_v1_6.settl_date.display = function(value)
  return string.format("Settl Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Settl Date
bme_bmeequities_replay_bmegate_v1_6.settl_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.settl_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmeequities_replay_bmegate_v1_6.settl_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.settl_date, range, value, display)

  return offset + length, value
end

-- Settlement System
bme_bmeequities_replay_bmegate_v1_6.settlement_system = {}

-- Size: Settlement System
bme_bmeequities_replay_bmegate_v1_6.settlement_system.size = 1

-- Display: Settlement System
bme_bmeequities_replay_bmegate_v1_6.settlement_system.display = function(value)
  if value == "F" then
    return "Settlement System: Iberclear (F)"
  end
  if value == "L" then
    return "Settlement System: Iberclear Latibex (L)"
  end

  return "Settlement System: Unknown("..value..")"
end

-- Dissect: Settlement System
bme_bmeequities_replay_bmegate_v1_6.settlement_system.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.settlement_system.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmeequities_replay_bmegate_v1_6.settlement_system.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.settlement_system, range, value, display)

  return offset + length, value
end

-- Sicav Counterparty Member
bme_bmeequities_replay_bmegate_v1_6.sicav_counterparty_member = {}

-- Size: Sicav Counterparty Member
bme_bmeequities_replay_bmegate_v1_6.sicav_counterparty_member.size = 4

-- Display: Sicav Counterparty Member
bme_bmeequities_replay_bmegate_v1_6.sicav_counterparty_member.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sicav Counterparty Member: No Value"
  end

  return "Sicav Counterparty Member: "..value
end

-- Dissect: Sicav Counterparty Member
bme_bmeequities_replay_bmegate_v1_6.sicav_counterparty_member.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.sicav_counterparty_member.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.sicav_counterparty_member.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.sicav_counterparty_member, range, value, display)

  return offset + length, value
end

-- Sicav Fund Counterparty Side
bme_bmeequities_replay_bmegate_v1_6.sicav_fund_counterparty_side = {}

-- Size: Sicav Fund Counterparty Side
bme_bmeequities_replay_bmegate_v1_6.sicav_fund_counterparty_side.size = 1

-- Display: Sicav Fund Counterparty Side
bme_bmeequities_replay_bmegate_v1_6.sicav_fund_counterparty_side.display = function(value)
  if value == "1" then
    return "Sicav Fund Counterparty Side: Buyer (1)"
  end
  if value == "2" then
    return "Sicav Fund Counterparty Side: Seller (2)"
  end
  if value == " " then
    return "Sicav Fund Counterparty Side: Na (<whitespace>)"
  end

  return "Sicav Fund Counterparty Side: Unknown("..value..")"
end

-- Dissect: Sicav Fund Counterparty Side
bme_bmeequities_replay_bmegate_v1_6.sicav_fund_counterparty_side.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.sicav_fund_counterparty_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmeequities_replay_bmegate_v1_6.sicav_fund_counterparty_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.sicav_fund_counterparty_side, range, value, display)

  return offset + length, value
end

-- Side
bme_bmeequities_replay_bmegate_v1_6.side = {}

-- Size: Side
bme_bmeequities_replay_bmegate_v1_6.side.size = 1

-- Display: Side
bme_bmeequities_replay_bmegate_v1_6.side.display = function(value)
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
bme_bmeequities_replay_bmegate_v1_6.side.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmeequities_replay_bmegate_v1_6.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.side, range, value, display)

  return offset + length, value
end

-- Software Name
bme_bmeequities_replay_bmegate_v1_6.software_name = {}

-- Size: Software Name
bme_bmeequities_replay_bmegate_v1_6.software_name.size = 25

-- Display: Software Name
bme_bmeequities_replay_bmegate_v1_6.software_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Software Name: No Value"
  end

  return "Software Name: "..value
end

-- Dissect: Software Name
bme_bmeequities_replay_bmegate_v1_6.software_name.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.software_name.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.software_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.software_name, range, value, display)

  return offset + length, value
end

-- Sst Ipost
bme_bmeequities_replay_bmegate_v1_6.sst_ipost = {}

-- Size: Sst Ipost
bme_bmeequities_replay_bmegate_v1_6.sst_ipost.size = 8

-- Display: Sst Ipost
bme_bmeequities_replay_bmegate_v1_6.sst_ipost.display = function(value)
  return "Sst Ipost: "..value
end

-- Translate: Sst Ipost
bme_bmeequities_replay_bmegate_v1_6.sst_ipost.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Sst Ipost
bme_bmeequities_replay_bmegate_v1_6.sst_ipost.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.sst_ipost.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.sst_ipost.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.sst_ipost.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.sst_ipost, range, value, display)

  return offset + length, value
end

-- Sst Ipre
bme_bmeequities_replay_bmegate_v1_6.sst_ipre = {}

-- Size: Sst Ipre
bme_bmeequities_replay_bmegate_v1_6.sst_ipre.size = 8

-- Display: Sst Ipre
bme_bmeequities_replay_bmegate_v1_6.sst_ipre.display = function(value)
  return "Sst Ipre: "..value
end

-- Translate: Sst Ipre
bme_bmeequities_replay_bmegate_v1_6.sst_ipre.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Sst Ipre
bme_bmeequities_replay_bmegate_v1_6.sst_ipre.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.sst_ipre.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.sst_ipre.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.sst_ipre.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.sst_ipre, range, value, display)

  return offset + length, value
end

-- Static Price
bme_bmeequities_replay_bmegate_v1_6.static_price = {}

-- Size: Static Price
bme_bmeequities_replay_bmegate_v1_6.static_price.size = 8

-- Display: Static Price
bme_bmeequities_replay_bmegate_v1_6.static_price.display = function(value)
  return "Static Price: "..value
end

-- Translate: Static Price
bme_bmeequities_replay_bmegate_v1_6.static_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Static Price
bme_bmeequities_replay_bmegate_v1_6.static_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.static_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.static_price.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.static_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.static_price, range, value, display)

  return offset + length, value
end

-- Static Range Type
bme_bmeequities_replay_bmegate_v1_6.static_range_type = {}

-- Size: Static Range Type
bme_bmeequities_replay_bmegate_v1_6.static_range_type.size = 1

-- Display: Static Range Type
bme_bmeequities_replay_bmegate_v1_6.static_range_type.display = function(value)
  if value == "P" then
    return "Static Range Type: Percentage (P)"
  end
  if value == "T" then
    return "Static Range Type: Price (T)"
  end

  return "Static Range Type: Unknown("..value..")"
end

-- Dissect: Static Range Type
bme_bmeequities_replay_bmegate_v1_6.static_range_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.static_range_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmeequities_replay_bmegate_v1_6.static_range_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.static_range_type, range, value, display)

  return offset + length, value
end

-- Status
bme_bmeequities_replay_bmegate_v1_6.status = {}

-- Size: Status
bme_bmeequities_replay_bmegate_v1_6.status.size = 1

-- Display: Status
bme_bmeequities_replay_bmegate_v1_6.status.display = function(value)
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
bme_bmeequities_replay_bmegate_v1_6.status.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.status, range, value, display)

  return offset + length, value
end

-- Strike Price
bme_bmeequities_replay_bmegate_v1_6.strike_price = {}

-- Size: Strike Price
bme_bmeequities_replay_bmegate_v1_6.strike_price.size = 8

-- Display: Strike Price
bme_bmeequities_replay_bmegate_v1_6.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
bme_bmeequities_replay_bmegate_v1_6.strike_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Strike Price
bme_bmeequities_replay_bmegate_v1_6.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.strike_price.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Strike Value
bme_bmeequities_replay_bmegate_v1_6.strike_value = {}

-- Size: Strike Value
bme_bmeequities_replay_bmegate_v1_6.strike_value.size = 8

-- Display: Strike Value
bme_bmeequities_replay_bmegate_v1_6.strike_value.display = function(value)
  return "Strike Value: "..value
end

-- Translate: Strike Value
bme_bmeequities_replay_bmegate_v1_6.strike_value.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Strike Value
bme_bmeequities_replay_bmegate_v1_6.strike_value.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.strike_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.strike_value.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.strike_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.strike_value, range, value, display)

  return offset + length, value
end

-- Sub Product
bme_bmeequities_replay_bmegate_v1_6.sub_product = {}

-- Size: Sub Product
bme_bmeequities_replay_bmegate_v1_6.sub_product.size = 4

-- Display: Sub Product
bme_bmeequities_replay_bmegate_v1_6.sub_product.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sub Product: No Value"
  end

  return "Sub Product: "..value
end

-- Dissect: Sub Product
bme_bmeequities_replay_bmegate_v1_6.sub_product.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.sub_product.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.sub_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.sub_product, range, value, display)

  return offset + length, value
end

-- Subscriptions
bme_bmeequities_replay_bmegate_v1_6.subscriptions = {}

-- Size: Subscriptions
bme_bmeequities_replay_bmegate_v1_6.subscriptions.size = 1

-- Display: Subscriptions
bme_bmeequities_replay_bmegate_v1_6.subscriptions.display = function(value)
  return "Subscriptions: "..value
end

-- Dissect: Subscriptions
bme_bmeequities_replay_bmegate_v1_6.subscriptions.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.subscriptions.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.subscriptions.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.subscriptions, range, value, display)

  return offset + length, value
end

-- Symbol
bme_bmeequities_replay_bmegate_v1_6.symbol = {}

-- Size: Symbol
bme_bmeequities_replay_bmegate_v1_6.symbol.size = 22

-- Display: Symbol
bme_bmeequities_replay_bmegate_v1_6.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
bme_bmeequities_replay_bmegate_v1_6.symbol.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.symbol.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Isin
bme_bmeequities_replay_bmegate_v1_6.symbol_isin = {}

-- Size: Symbol Isin
bme_bmeequities_replay_bmegate_v1_6.symbol_isin.size = 12

-- Display: Symbol Isin
bme_bmeequities_replay_bmegate_v1_6.symbol_isin.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Isin: No Value"
  end

  return "Symbol Isin: "..value
end

-- Dissect: Symbol Isin
bme_bmeequities_replay_bmegate_v1_6.symbol_isin.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.symbol_isin.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.symbol_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.symbol_isin, range, value, display)

  return offset + length, value
end

-- Test Production Ind
bme_bmeequities_replay_bmegate_v1_6.test_production_ind = {}

-- Size: Test Production Ind
bme_bmeequities_replay_bmegate_v1_6.test_production_ind.size = 1

-- Display: Test Production Ind
bme_bmeequities_replay_bmegate_v1_6.test_production_ind.display = function(value)
  return "Test Production Ind: "..value
end

-- Dissect: Test Production Ind
bme_bmeequities_replay_bmegate_v1_6.test_production_ind.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.test_production_ind.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmeequities_replay_bmegate_v1_6.test_production_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.test_production_ind, range, value, display)

  return offset + length, value
end

-- Text
bme_bmeequities_replay_bmegate_v1_6.text = {}

-- Size: Text
bme_bmeequities_replay_bmegate_v1_6.text.size = 58

-- Display: Text
bme_bmeequities_replay_bmegate_v1_6.text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
bme_bmeequities_replay_bmegate_v1_6.text.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.text.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.text, range, value, display)

  return offset + length, value
end

-- Trad Ses Status
bme_bmeequities_replay_bmegate_v1_6.trad_ses_status = {}

-- Size: Trad Ses Status
bme_bmeequities_replay_bmegate_v1_6.trad_ses_status.size = 1

-- Display: Trad Ses Status
bme_bmeequities_replay_bmegate_v1_6.trad_ses_status.display = function(value)
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
bme_bmeequities_replay_bmegate_v1_6.trad_ses_status.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.trad_ses_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.trad_ses_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.trad_ses_status, range, value, display)

  return offset + length, value
end

-- Trade Date
bme_bmeequities_replay_bmegate_v1_6.trade_date = {}

-- Size: Trade Date
bme_bmeequities_replay_bmegate_v1_6.trade_date.size = 8

-- Display: Trade Date
bme_bmeequities_replay_bmegate_v1_6.trade_date.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Trade Date: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trade Date
bme_bmeequities_replay_bmegate_v1_6.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bme_bmeequities_replay_bmegate_v1_6.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trade Price Condition
bme_bmeequities_replay_bmegate_v1_6.trade_price_condition = {}

-- Size: Trade Price Condition
bme_bmeequities_replay_bmegate_v1_6.trade_price_condition.size = 1

-- Display: Trade Price Condition
bme_bmeequities_replay_bmegate_v1_6.trade_price_condition.display = function(value)
  if value == " " then
    return "Trade Price Condition: Plain Vanilla Trade (<whitespace>)"
  end
  if value == "5" then
    return "Trade Price Condition: Non Price Forming Trade Formerly Defined As A Technical Trade Npft (5)"
  end
  if value == "6" then
    return "Trade Price Condition: Trade Not Contributing To The Price Discovery Process Formerly Defined As A Technical Trade Tncp To Be Discontinued As Of 1 St January 2024 (6)"
  end

  return "Trade Price Condition: Unknown("..value..")"
end

-- Dissect: Trade Price Condition
bme_bmeequities_replay_bmegate_v1_6.trade_price_condition.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.trade_price_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmeequities_replay_bmegate_v1_6.trade_price_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.trade_price_condition, range, value, display)

  return offset + length, value
end

-- Trade Session Date
bme_bmeequities_replay_bmegate_v1_6.trade_session_date = {}

-- Size: Trade Session Date
bme_bmeequities_replay_bmegate_v1_6.trade_session_date.size = 4

-- Display: Trade Session Date
bme_bmeequities_replay_bmegate_v1_6.trade_session_date.display = function(value)
  return string.format("Trade Session Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Trade Session Date
bme_bmeequities_replay_bmegate_v1_6.trade_session_date.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.trade_session_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = bme_bmeequities_replay_bmegate_v1_6.trade_session_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.trade_session_date, range, value, display)

  return offset + length, value
end

-- Trade Type
bme_bmeequities_replay_bmegate_v1_6.trade_type = {}

-- Size: Trade Type
bme_bmeequities_replay_bmegate_v1_6.trade_type.size = 1

-- Display: Trade Type
bme_bmeequities_replay_bmegate_v1_6.trade_type.display = function(value)
  if value == "M" then
    return "Trade Type: Market (M)"
  end
  if value == "X" then
    return "Trade Type: Cancellation (X)"
  end
  if value == "T" then
    return "Trade Type: Trade Amendment (T)"
  end
  if value == "H" then
    return "Trade Type: Block Trade (H)"
  end
  if value == "1" then
    return "Trade Type: Communicated Application (1)"
  end
  if value == "2" then
    return "Trade Type: Authorised Application Trades (2)"
  end
  if value == "3" then
    return "Trade Type: Authorised Application Corporate Interest (3)"
  end
  if value == "4" then
    return "Trade Type: Authorised Application Execution Of Contracts (4)"
  end
  if value == "5" then
    return "Trade Type: Authorised Application Other Causes (5)"
  end
  if value == "6" then
    return "Trade Type: Validation Communicated (6)"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
bme_bmeequities_replay_bmegate_v1_6.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmeequities_replay_bmegate_v1_6.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trading Obligation
bme_bmeequities_replay_bmegate_v1_6.trading_obligation = {}

-- Size: Trading Obligation
bme_bmeequities_replay_bmegate_v1_6.trading_obligation.size = 1

-- Display: Trading Obligation
bme_bmeequities_replay_bmegate_v1_6.trading_obligation.display = function(value)
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
bme_bmeequities_replay_bmegate_v1_6.trading_obligation.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.trading_obligation.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.trading_obligation.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.trading_obligation, range, value, display)

  return offset + length, value
end

-- Trading Scope
bme_bmeequities_replay_bmegate_v1_6.trading_scope = {}

-- Size: Trading Scope
bme_bmeequities_replay_bmegate_v1_6.trading_scope.size = 1

-- Display: Trading Scope
bme_bmeequities_replay_bmegate_v1_6.trading_scope.display = function(value)
  if value == 1 then
    return "Trading Scope: Valencia (1)"
  end
  if value == 2 then
    return "Trading Scope: Bilbao (2)"
  end
  if value == 3 then
    return "Trading Scope: Valencia And Bilbao (3)"
  end
  if value == 4 then
    return "Trading Scope: Barcelona (4)"
  end
  if value == 5 then
    return "Trading Scope: Valencia And Barcelona (5)"
  end
  if value == 6 then
    return "Trading Scope: Bilbao And Barcelona (6)"
  end
  if value == 7 then
    return "Trading Scope: Valencia Bilbao And Barcelona (7)"
  end
  if value == 8 then
    return "Trading Scope: Madrid (8)"
  end
  if value == 9 then
    return "Trading Scope: Valencia And Madrid (9)"
  end
  if value == A then
    return "Trading Scope: Bilbao And Madrid (A)"
  end
  if value == B then
    return "Trading Scope: Valencia Bilbao And Madrid (B)"
  end
  if value == C then
    return "Trading Scope: Barcelona And Madrid (C)"
  end
  if value == D then
    return "Trading Scope: Valencia Barcelona And Madrid (D)"
  end
  if value == E then
    return "Trading Scope: Bilbao Barcelona And Madrid (E)"
  end
  if value == F then
    return "Trading Scope: Valencia Bilbao Barcelona And Madrid (F)"
  end

  return "Trading Scope: Unknown("..value..")"
end

-- Dissect: Trading Scope
bme_bmeequities_replay_bmegate_v1_6.trading_scope.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.trading_scope.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.trading_scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.trading_scope, range, value, display)

  return offset + length, value
end

-- Trading Session Id
bme_bmeequities_replay_bmegate_v1_6.trading_session_id = {}

-- Size: Trading Session Id
bme_bmeequities_replay_bmegate_v1_6.trading_session_id.size = 1

-- Display: Trading Session Id
bme_bmeequities_replay_bmegate_v1_6.trading_session_id.display = function(value)
  if value == 100 then
    return "Trading Session Id: Continuous Trading (100)"
  end
  if value == 101 then
    return "Trading Session Id: Fixing (101)"
  end
  if value == 102 then
    return "Trading Session Id: Block Trades (102)"
  end
  if value == 103 then
    return "Trading Session Id: Special Operations (103)"
  end
  if value == 104 then
    return "Trading Session Id: Positions At Net Asset Value (104)"
  end
  if value == 113 then
    return "Trading Session Id: Fixing Funds (113)"
  end
  if value == 119 then
    return "Trading Session Id: Single Fixing (119)"
  end

  return "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id
bme_bmeequities_replay_bmegate_v1_6.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Trading Session Sub Id
bme_bmeequities_replay_bmegate_v1_6.trading_session_sub_id = {}

-- Size: Trading Session Sub Id
bme_bmeequities_replay_bmegate_v1_6.trading_session_sub_id.size = 1

-- Display: Trading Session Sub Id
bme_bmeequities_replay_bmegate_v1_6.trading_session_sub_id.display = function(value)
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
  if value == 100 then
    return "Trading Session Sub Id: Trading Period At Closing Price Tal (100)"
  end
  if value == 101 then
    return "Trading Session Sub Id: End Of Closing Auction And Beginning Of Tal Period For Instruments Without Extension (101)"
  end
  if value == 201 then
    return "Trading Session Sub Id: Publication Of Previous Day Special Operations (201)"
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
bme_bmeequities_replay_bmegate_v1_6.trading_session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.trading_session_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.trading_session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Transaction Category
bme_bmeequities_replay_bmegate_v1_6.transaction_category = {}

-- Size: Transaction Category
bme_bmeequities_replay_bmegate_v1_6.transaction_category.size = 1

-- Display: Transaction Category
bme_bmeequities_replay_bmegate_v1_6.transaction_category.display = function(value)
  if value == " " then
    return "Transaction Category: Normal Category (<whitespace>)"
  end
  if value == "D" then
    return "Transaction Category: Dark Trade (D)"
  end

  return "Transaction Category: Unknown("..value..")"
end

-- Dissect: Transaction Category
bme_bmeequities_replay_bmegate_v1_6.transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.transaction_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bme_bmeequities_replay_bmegate_v1_6.transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Transaction Date And Time
bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time = {}

-- Size: Transaction Date And Time
bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.size = 8

-- Display: Transaction Date And Time
bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transaction Date And Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transaction Date And Time
bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.transaction_date_and_time, range, value, display)

  return offset + length, value
end

-- Trd Match Id
bme_bmeequities_replay_bmegate_v1_6.trd_match_id = {}

-- Size: Trd Match Id
bme_bmeequities_replay_bmegate_v1_6.trd_match_id.size = 4

-- Display: Trd Match Id
bme_bmeequities_replay_bmegate_v1_6.trd_match_id.display = function(value)
  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
bme_bmeequities_replay_bmegate_v1_6.trd_match_id.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.trd_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = bme_bmeequities_replay_bmegate_v1_6.trd_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Trigger Barrier
bme_bmeequities_replay_bmegate_v1_6.trigger_barrier = {}

-- Size: Trigger Barrier
bme_bmeequities_replay_bmegate_v1_6.trigger_barrier.size = 8

-- Display: Trigger Barrier
bme_bmeequities_replay_bmegate_v1_6.trigger_barrier.display = function(value)
  return "Trigger Barrier: "..value
end

-- Translate: Trigger Barrier
bme_bmeequities_replay_bmegate_v1_6.trigger_barrier.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Trigger Barrier
bme_bmeequities_replay_bmegate_v1_6.trigger_barrier.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.trigger_barrier.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.trigger_barrier.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.trigger_barrier.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.trigger_barrier, range, value, display)

  return offset + length, value
end

-- Trigger Upper Barrier
bme_bmeequities_replay_bmegate_v1_6.trigger_upper_barrier = {}

-- Size: Trigger Upper Barrier
bme_bmeequities_replay_bmegate_v1_6.trigger_upper_barrier.size = 8

-- Display: Trigger Upper Barrier
bme_bmeequities_replay_bmegate_v1_6.trigger_upper_barrier.display = function(value)
  return "Trigger Upper Barrier: "..value
end

-- Translate: Trigger Upper Barrier
bme_bmeequities_replay_bmegate_v1_6.trigger_upper_barrier.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Trigger Upper Barrier
bme_bmeequities_replay_bmegate_v1_6.trigger_upper_barrier.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.trigger_upper_barrier.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = bme_bmeequities_replay_bmegate_v1_6.trigger_upper_barrier.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.trigger_upper_barrier.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.trigger_upper_barrier, range, value, display)

  return offset + length, value
end

-- Underlying Currency
bme_bmeequities_replay_bmegate_v1_6.underlying_currency = {}

-- Size: Underlying Currency
bme_bmeequities_replay_bmegate_v1_6.underlying_currency.size = 3

-- Display: Underlying Currency
bme_bmeequities_replay_bmegate_v1_6.underlying_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Currency: No Value"
  end

  return "Underlying Currency: "..value
end

-- Dissect: Underlying Currency
bme_bmeequities_replay_bmegate_v1_6.underlying_currency.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.underlying_currency.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.underlying_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.underlying_currency, range, value, display)

  return offset + length, value
end

-- Underlying Isin
bme_bmeequities_replay_bmegate_v1_6.underlying_isin = {}

-- Size: Underlying Isin
bme_bmeequities_replay_bmegate_v1_6.underlying_isin.size = 12

-- Display: Underlying Isin
bme_bmeequities_replay_bmegate_v1_6.underlying_isin.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Isin: No Value"
  end

  return "Underlying Isin: "..value
end

-- Dissect: Underlying Isin
bme_bmeequities_replay_bmegate_v1_6.underlying_isin.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.underlying_isin.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.underlying_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.underlying_isin, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
bme_bmeequities_replay_bmegate_v1_6.underlying_symbol = {}

-- Size: Underlying Symbol
bme_bmeequities_replay_bmegate_v1_6.underlying_symbol.size = 22

-- Display: Underlying Symbol
bme_bmeequities_replay_bmegate_v1_6.underlying_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Symbol: No Value"
  end

  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
bme_bmeequities_replay_bmegate_v1_6.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.underlying_symbol.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Username
bme_bmeequities_replay_bmegate_v1_6.username = {}

-- Size: Username
bme_bmeequities_replay_bmegate_v1_6.username.size = 7

-- Display: Username
bme_bmeequities_replay_bmegate_v1_6.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
bme_bmeequities_replay_bmegate_v1_6.username.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.username.size
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

  local display = bme_bmeequities_replay_bmegate_v1_6.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.username, range, value, display)

  return offset + length, value
end

-- Volume Float
bme_bmeequities_replay_bmegate_v1_6.volume_float = {}

-- Size: Volume Float
bme_bmeequities_replay_bmegate_v1_6.volume_float.size = 8

-- Display: Volume Float
bme_bmeequities_replay_bmegate_v1_6.volume_float.display = function(value)
  return "Volume Float: "..value
end

-- Translate: Volume Float
bme_bmeequities_replay_bmegate_v1_6.volume_float.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Volume Float
bme_bmeequities_replay_bmegate_v1_6.volume_float.dissect = function(buffer, offset, packet, parent)
  local length = bme_bmeequities_replay_bmegate_v1_6.volume_float.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = bme_bmeequities_replay_bmegate_v1_6.volume_float.translate(raw)
  local display = bme_bmeequities_replay_bmegate_v1_6.volume_float.display(value, buffer, offset, packet, parent)

  parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.volume_float, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Bme BmeEquities Replay BmeGate 1.6
-----------------------------------------------------------------------

-- Topofbook Message
bme_bmeequities_replay_bmegate_v1_6.topofbook_message = {}

-- Size: Topofbook Message
bme_bmeequities_replay_bmegate_v1_6.topofbook_message.size =
  bme_bmeequities_replay_bmegate_v1_6.sequence_number.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_code.size + 
  bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmeequities_replay_bmegate_v1_6.bid_orders_1.size + 
  bme_bmeequities_replay_bmegate_v1_6.bid_size_1.size + 
  bme_bmeequities_replay_bmegate_v1_6.bid_px_1.size + 
  bme_bmeequities_replay_bmegate_v1_6.ask_orders_1.size + 
  bme_bmeequities_replay_bmegate_v1_6.ask_size_1.size + 
  bme_bmeequities_replay_bmegate_v1_6.ask_px_1.size

-- Display: Topofbook Message
bme_bmeequities_replay_bmegate_v1_6.topofbook_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Topofbook Message
bme_bmeequities_replay_bmegate_v1_6.topofbook_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmeequities_replay_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmeequities_replay_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Bid Orders 1: U
  index, bid_orders_1 = bme_bmeequities_replay_bmegate_v1_6.bid_orders_1.dissect(buffer, index, packet, parent)

  -- Bid Size 1: Q
  index, bid_size_1 = bme_bmeequities_replay_bmegate_v1_6.bid_size_1.dissect(buffer, index, packet, parent)

  -- Bid Px 1: P
  index, bid_px_1 = bme_bmeequities_replay_bmegate_v1_6.bid_px_1.dissect(buffer, index, packet, parent)

  -- Ask Orders 1: U
  index, ask_orders_1 = bme_bmeequities_replay_bmegate_v1_6.ask_orders_1.dissect(buffer, index, packet, parent)

  -- Ask Size 1: Q
  index, ask_size_1 = bme_bmeequities_replay_bmegate_v1_6.ask_size_1.dissect(buffer, index, packet, parent)

  -- Ask Px 1: P
  index, ask_px_1 = bme_bmeequities_replay_bmegate_v1_6.ask_px_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Topofbook Message
bme_bmeequities_replay_bmegate_v1_6.topofbook_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.topofbook_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.topofbook_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.topofbook_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.topofbook_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Market Post Transparency Information Full Depth Message
bme_bmeequities_replay_bmegate_v1_6.trade_market_post_transparency_information_full_depth_message = {}

-- Size: Trade Market Post Transparency Information Full Depth Message
bme_bmeequities_replay_bmegate_v1_6.trade_market_post_transparency_information_full_depth_message.size =
  bme_bmeequities_replay_bmegate_v1_6.sequence_number.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_code.size + 
  bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmeequities_replay_bmegate_v1_6.market_segment_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.trading_session_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.trd_match_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.trade_type.size + 
  bme_bmeequities_replay_bmegate_v1_6.last_px.size + 
  bme_bmeequities_replay_bmegate_v1_6.last_qty.size + 
  bme_bmeequities_replay_bmegate_v1_6.gross_trade_amt.size + 
  bme_bmeequities_replay_bmegate_v1_6.designation.size + 
  bme_bmeequities_replay_bmegate_v1_6.market_mechanism.size + 
  bme_bmeequities_replay_bmegate_v1_6.algo_flag.size + 
  bme_bmeequities_replay_bmegate_v1_6.buyer_bolsa_code.size + 
  bme_bmeequities_replay_bmegate_v1_6.settl_date.size + 
  bme_bmeequities_replay_bmegate_v1_6.transaction_category.size + 
  bme_bmeequities_replay_bmegate_v1_6.secondary_order_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.entry_date.size + 
  bme_bmeequities_replay_bmegate_v1_6.priority.size + 
  bme_bmeequities_replay_bmegate_v1_6.price.size + 
  bme_bmeequities_replay_bmegate_v1_6.display_qty.size + 
  bme_bmeequities_replay_bmegate_v1_6.retail_flag.size + 
  bme_bmeequities_replay_bmegate_v1_6.secondary_order_id_2.size + 
  bme_bmeequities_replay_bmegate_v1_6.entry_date_2.size + 
  bme_bmeequities_replay_bmegate_v1_6.priority_2.size + 
  bme_bmeequities_replay_bmegate_v1_6.price_2.size + 
  bme_bmeequities_replay_bmegate_v1_6.display_qty_2.size + 
  bme_bmeequities_replay_bmegate_v1_6.retail_flag_2.size

-- Display: Trade Market Post Transparency Information Full Depth Message
bme_bmeequities_replay_bmegate_v1_6.trade_market_post_transparency_information_full_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Market Post Transparency Information Full Depth Message
bme_bmeequities_replay_bmegate_v1_6.trade_market_post_transparency_information_full_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmeequities_replay_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmeequities_replay_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_bmeequities_replay_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_bmeequities_replay_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: U
  index, trd_match_id = bme_bmeequities_replay_bmegate_v1_6.trd_match_id.dissect(buffer, index, packet, parent)

  -- Trade Type: C
  index, trade_type = bme_bmeequities_replay_bmegate_v1_6.trade_type.dissect(buffer, index, packet, parent)

  -- Last Px: P
  index, last_px = bme_bmeequities_replay_bmegate_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Q
  index, last_qty = bme_bmeequities_replay_bmegate_v1_6.last_qty.dissect(buffer, index, packet, parent)

  -- Gross Trade Amt: A
  index, gross_trade_amt = bme_bmeequities_replay_bmegate_v1_6.gross_trade_amt.dissect(buffer, index, packet, parent)

  -- Designation: C
  index, designation = bme_bmeequities_replay_bmegate_v1_6.designation.dissect(buffer, index, packet, parent)

  -- Market Mechanism: C
  index, market_mechanism = bme_bmeequities_replay_bmegate_v1_6.market_mechanism.dissect(buffer, index, packet, parent)

  -- Algo Flag: F
  index, algo_flag = bme_bmeequities_replay_bmegate_v1_6.algo_flag.dissect(buffer, index, packet, parent)

  -- Buyer Bolsa Code: C
  index, buyer_bolsa_code = bme_bmeequities_replay_bmegate_v1_6.buyer_bolsa_code.dissect(buffer, index, packet, parent)

  -- Settl Date: D
  index, settl_date = bme_bmeequities_replay_bmegate_v1_6.settl_date.dissect(buffer, index, packet, parent)

  -- Transaction Category: C
  index, transaction_category = bme_bmeequities_replay_bmegate_v1_6.transaction_category.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_bmeequities_replay_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Entry Date: D
  index, entry_date = bme_bmeequities_replay_bmegate_v1_6.entry_date.dissect(buffer, index, packet, parent)

  -- Priority: U
  index, priority = bme_bmeequities_replay_bmegate_v1_6.priority.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_bmeequities_replay_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Display Qty: Q
  index, display_qty = bme_bmeequities_replay_bmegate_v1_6.display_qty.dissect(buffer, index, packet, parent)

  -- Retail Flag: F
  index, retail_flag = bme_bmeequities_replay_bmegate_v1_6.retail_flag.dissect(buffer, index, packet, parent)

  -- Secondary Order Id 2: U
  index, secondary_order_id_2 = bme_bmeequities_replay_bmegate_v1_6.secondary_order_id_2.dissect(buffer, index, packet, parent)

  -- Entry Date 2: D
  index, entry_date_2 = bme_bmeequities_replay_bmegate_v1_6.entry_date_2.dissect(buffer, index, packet, parent)

  -- Priority 2: U
  index, priority_2 = bme_bmeequities_replay_bmegate_v1_6.priority_2.dissect(buffer, index, packet, parent)

  -- Price 2: P
  index, price_2 = bme_bmeequities_replay_bmegate_v1_6.price_2.dissect(buffer, index, packet, parent)

  -- Display Qty 2: Q
  index, display_qty_2 = bme_bmeequities_replay_bmegate_v1_6.display_qty_2.dissect(buffer, index, packet, parent)

  -- Retail Flag 2: F
  index, retail_flag_2 = bme_bmeequities_replay_bmegate_v1_6.retail_flag_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Market Post Transparency Information Full Depth Message
bme_bmeequities_replay_bmegate_v1_6.trade_market_post_transparency_information_full_depth_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.trade_market_post_transparency_information_full_depth_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.trade_market_post_transparency_information_full_depth_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.trade_market_post_transparency_information_full_depth_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.trade_market_post_transparency_information_full_depth_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Trade Amendment Or Cancellation Message
bme_bmeequities_replay_bmegate_v1_6.trade_trade_amendment_or_cancellation_message = {}

-- Size: Trade Trade Amendment Or Cancellation Message
bme_bmeequities_replay_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.size =
  bme_bmeequities_replay_bmegate_v1_6.sequence_number.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_code.size + 
  bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmeequities_replay_bmegate_v1_6.market_segment_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.trading_session_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.trd_match_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.trade_type.size + 
  bme_bmeequities_replay_bmegate_v1_6.last_px.size + 
  bme_bmeequities_replay_bmegate_v1_6.last_qty.size + 
  bme_bmeequities_replay_bmegate_v1_6.gross_trade_amt.size + 
  bme_bmeequities_replay_bmegate_v1_6.designation.size + 
  bme_bmeequities_replay_bmegate_v1_6.market_mechanism.size + 
  bme_bmeequities_replay_bmegate_v1_6.algo_flag.size + 
  bme_bmeequities_replay_bmegate_v1_6.buyer_bolsa_code.size + 
  bme_bmeequities_replay_bmegate_v1_6.settl_date.size + 
  bme_bmeequities_replay_bmegate_v1_6.transaction_category.size + 
  bme_bmeequities_replay_bmegate_v1_6.last_change_flag.size + 
  bme_bmeequities_replay_bmegate_v1_6.bencrfpt_flag.size + 
  bme_bmeequities_replay_bmegate_v1_6.trade_price_condition.size + 
  bme_bmeequities_replay_bmegate_v1_6.pre_trade_transparency_waiver.size + 
  bme_bmeequities_replay_bmegate_v1_6.deferral_waiver.size + 
  bme_bmeequities_replay_bmegate_v1_6.publish_date_and_time.size + 
  bme_bmeequities_replay_bmegate_v1_6.trade_date.size + 
  bme_bmeequities_replay_bmegate_v1_6.trade_session_date.size + 
  bme_bmeequities_replay_bmegate_v1_6.volume_float.size + 
  bme_bmeequities_replay_bmegate_v1_6.sicav_fund_counterparty_side.size + 
  bme_bmeequities_replay_bmegate_v1_6.amended_trade_type.size + 
  bme_bmeequities_replay_bmegate_v1_6.exec_ref_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.amended_trade_date.size

-- Display: Trade Trade Amendment Or Cancellation Message
bme_bmeequities_replay_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Trade Amendment Or Cancellation Message
bme_bmeequities_replay_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmeequities_replay_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmeequities_replay_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_bmeequities_replay_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_bmeequities_replay_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: U
  index, trd_match_id = bme_bmeequities_replay_bmegate_v1_6.trd_match_id.dissect(buffer, index, packet, parent)

  -- Trade Type: C
  index, trade_type = bme_bmeequities_replay_bmegate_v1_6.trade_type.dissect(buffer, index, packet, parent)

  -- Last Px: P
  index, last_px = bme_bmeequities_replay_bmegate_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Q
  index, last_qty = bme_bmeequities_replay_bmegate_v1_6.last_qty.dissect(buffer, index, packet, parent)

  -- Gross Trade Amt: A
  index, gross_trade_amt = bme_bmeequities_replay_bmegate_v1_6.gross_trade_amt.dissect(buffer, index, packet, parent)

  -- Designation: C
  index, designation = bme_bmeequities_replay_bmegate_v1_6.designation.dissect(buffer, index, packet, parent)

  -- Market Mechanism: C
  index, market_mechanism = bme_bmeequities_replay_bmegate_v1_6.market_mechanism.dissect(buffer, index, packet, parent)

  -- Algo Flag: F
  index, algo_flag = bme_bmeequities_replay_bmegate_v1_6.algo_flag.dissect(buffer, index, packet, parent)

  -- Buyer Bolsa Code: C
  index, buyer_bolsa_code = bme_bmeequities_replay_bmegate_v1_6.buyer_bolsa_code.dissect(buffer, index, packet, parent)

  -- Settl Date: D
  index, settl_date = bme_bmeequities_replay_bmegate_v1_6.settl_date.dissect(buffer, index, packet, parent)

  -- Transaction Category: C
  index, transaction_category = bme_bmeequities_replay_bmegate_v1_6.transaction_category.dissect(buffer, index, packet, parent)

  -- Last Change Flag: F
  index, last_change_flag = bme_bmeequities_replay_bmegate_v1_6.last_change_flag.dissect(buffer, index, packet, parent)

  -- Bencrfpt Flag: C
  index, bencrfpt_flag = bme_bmeequities_replay_bmegate_v1_6.bencrfpt_flag.dissect(buffer, index, packet, parent)

  -- Trade Price Condition: C
  index, trade_price_condition = bme_bmeequities_replay_bmegate_v1_6.trade_price_condition.dissect(buffer, index, packet, parent)

  -- Pre Trade Transparency Waiver: C
  index, pre_trade_transparency_waiver = bme_bmeequities_replay_bmegate_v1_6.pre_trade_transparency_waiver.dissect(buffer, index, packet, parent)

  -- Deferral Waiver: C
  index, deferral_waiver = bme_bmeequities_replay_bmegate_v1_6.deferral_waiver.dissect(buffer, index, packet, parent)

  -- Publish Date And Time: T
  index, publish_date_and_time = bme_bmeequities_replay_bmegate_v1_6.publish_date_and_time.dissect(buffer, index, packet, parent)

  -- Trade Date: T
  index, trade_date = bme_bmeequities_replay_bmegate_v1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Trade Session Date: D
  index, trade_session_date = bme_bmeequities_replay_bmegate_v1_6.trade_session_date.dissect(buffer, index, packet, parent)

  -- Volume Float: V
  index, volume_float = bme_bmeequities_replay_bmegate_v1_6.volume_float.dissect(buffer, index, packet, parent)

  -- Sicav Fund Counterparty Side: C
  index, sicav_fund_counterparty_side = bme_bmeequities_replay_bmegate_v1_6.sicav_fund_counterparty_side.dissect(buffer, index, packet, parent)

  -- Amended Trade Type: C
  index, amended_trade_type = bme_bmeequities_replay_bmegate_v1_6.amended_trade_type.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: U
  index, exec_ref_id = bme_bmeequities_replay_bmegate_v1_6.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Amended Trade Date: D
  index, amended_trade_date = bme_bmeequities_replay_bmegate_v1_6.amended_trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Trade Amendment Or Cancellation Message
bme_bmeequities_replay_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.trade_trade_amendment_or_cancellation_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Market Post Transparency Information Topofbook Message
bme_bmeequities_replay_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message = {}

-- Size: Trade Market Post Transparency Information Topofbook Message
bme_bmeequities_replay_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.size =
  bme_bmeequities_replay_bmegate_v1_6.sequence_number.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_code.size + 
  bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmeequities_replay_bmegate_v1_6.market_segment_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.trading_session_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.trd_match_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.trade_type.size + 
  bme_bmeequities_replay_bmegate_v1_6.last_px.size + 
  bme_bmeequities_replay_bmegate_v1_6.last_qty.size + 
  bme_bmeequities_replay_bmegate_v1_6.gross_trade_amt.size + 
  bme_bmeequities_replay_bmegate_v1_6.designation.size + 
  bme_bmeequities_replay_bmegate_v1_6.market_mechanism.size + 
  bme_bmeequities_replay_bmegate_v1_6.algo_flag.size + 
  bme_bmeequities_replay_bmegate_v1_6.buyer_bolsa_code.size + 
  bme_bmeequities_replay_bmegate_v1_6.settl_date.size + 
  bme_bmeequities_replay_bmegate_v1_6.transaction_category.size

-- Display: Trade Market Post Transparency Information Topofbook Message
bme_bmeequities_replay_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Market Post Transparency Information Topofbook Message
bme_bmeequities_replay_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmeequities_replay_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmeequities_replay_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_bmeequities_replay_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_bmeequities_replay_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: U
  index, trd_match_id = bme_bmeequities_replay_bmegate_v1_6.trd_match_id.dissect(buffer, index, packet, parent)

  -- Trade Type: C
  index, trade_type = bme_bmeequities_replay_bmegate_v1_6.trade_type.dissect(buffer, index, packet, parent)

  -- Last Px: P
  index, last_px = bme_bmeequities_replay_bmegate_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Q
  index, last_qty = bme_bmeequities_replay_bmegate_v1_6.last_qty.dissect(buffer, index, packet, parent)

  -- Gross Trade Amt: A
  index, gross_trade_amt = bme_bmeequities_replay_bmegate_v1_6.gross_trade_amt.dissect(buffer, index, packet, parent)

  -- Designation: C
  index, designation = bme_bmeequities_replay_bmegate_v1_6.designation.dissect(buffer, index, packet, parent)

  -- Market Mechanism: C
  index, market_mechanism = bme_bmeequities_replay_bmegate_v1_6.market_mechanism.dissect(buffer, index, packet, parent)

  -- Algo Flag: F
  index, algo_flag = bme_bmeequities_replay_bmegate_v1_6.algo_flag.dissect(buffer, index, packet, parent)

  -- Buyer Bolsa Code: C
  index, buyer_bolsa_code = bme_bmeequities_replay_bmegate_v1_6.buyer_bolsa_code.dissect(buffer, index, packet, parent)

  -- Settl Date: D
  index, settl_date = bme_bmeequities_replay_bmegate_v1_6.settl_date.dissect(buffer, index, packet, parent)

  -- Transaction Category: C
  index, transaction_category = bme_bmeequities_replay_bmegate_v1_6.transaction_category.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Market Post Transparency Information Topofbook Message
bme_bmeequities_replay_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.trade_market_post_transparency_information_topofbook_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Cancellation Market Member Message
bme_bmeequities_replay_bmegate_v1_6.quote_cancellation_market_member_message = {}

-- Size: Quote Cancellation Market Member Message
bme_bmeequities_replay_bmegate_v1_6.quote_cancellation_market_member_message.size =
  bme_bmeequities_replay_bmegate_v1_6.sequence_number.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_code.size + 
  bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmeequities_replay_bmegate_v1_6.secondary_order_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.secondary_order_id_2.size + 
  bme_bmeequities_replay_bmegate_v1_6.retail_flag.size

-- Display: Quote Cancellation Market Member Message
bme_bmeequities_replay_bmegate_v1_6.quote_cancellation_market_member_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancellation Market Member Message
bme_bmeequities_replay_bmegate_v1_6.quote_cancellation_market_member_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmeequities_replay_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmeequities_replay_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_bmeequities_replay_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Secondary Order Id 2: U
  index, secondary_order_id_2 = bme_bmeequities_replay_bmegate_v1_6.secondary_order_id_2.dissect(buffer, index, packet, parent)

  -- Retail Flag: F
  index, retail_flag = bme_bmeequities_replay_bmegate_v1_6.retail_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancellation Market Member Message
bme_bmeequities_replay_bmegate_v1_6.quote_cancellation_market_member_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.quote_cancellation_market_member_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.quote_cancellation_market_member_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.quote_cancellation_market_member_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.quote_cancellation_market_member_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation Market Member Message
bme_bmeequities_replay_bmegate_v1_6.order_cancellation_market_member_message = {}

-- Size: Order Cancellation Market Member Message
bme_bmeequities_replay_bmegate_v1_6.order_cancellation_market_member_message.size =
  bme_bmeequities_replay_bmegate_v1_6.sequence_number.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_code.size + 
  bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmeequities_replay_bmegate_v1_6.secondary_order_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.entry_date.size + 
  bme_bmeequities_replay_bmegate_v1_6.retail_flag.size

-- Display: Order Cancellation Market Member Message
bme_bmeequities_replay_bmegate_v1_6.order_cancellation_market_member_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Market Member Message
bme_bmeequities_replay_bmegate_v1_6.order_cancellation_market_member_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmeequities_replay_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmeequities_replay_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_bmeequities_replay_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Entry Date: D
  index, entry_date = bme_bmeequities_replay_bmegate_v1_6.entry_date.dissect(buffer, index, packet, parent)

  -- Retail Flag: F
  index, retail_flag = bme_bmeequities_replay_bmegate_v1_6.retail_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation Market Member Message
bme_bmeequities_replay_bmegate_v1_6.order_cancellation_market_member_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.order_cancellation_market_member_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.order_cancellation_market_member_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.order_cancellation_market_member_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.order_cancellation_market_member_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Market Pre Transparency Information Message
bme_bmeequities_replay_bmegate_v1_6.quote_market_pre_transparency_information_message = {}

-- Size: Quote Market Pre Transparency Information Message
bme_bmeequities_replay_bmegate_v1_6.quote_market_pre_transparency_information_message.size =
  bme_bmeequities_replay_bmegate_v1_6.sequence_number.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_code.size + 
  bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmeequities_replay_bmegate_v1_6.secondary_order_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.secondary_order_id_2.size + 
  bme_bmeequities_replay_bmegate_v1_6.retail_flag.size + 
  bme_bmeequities_replay_bmegate_v1_6.priority.size + 
  bme_bmeequities_replay_bmegate_v1_6.price.size + 
  bme_bmeequities_replay_bmegate_v1_6.display_qty.size + 
  bme_bmeequities_replay_bmegate_v1_6.priority_2.size + 
  bme_bmeequities_replay_bmegate_v1_6.price_2.size + 
  bme_bmeequities_replay_bmegate_v1_6.display_qty_2.size

-- Display: Quote Market Pre Transparency Information Message
bme_bmeequities_replay_bmegate_v1_6.quote_market_pre_transparency_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Market Pre Transparency Information Message
bme_bmeequities_replay_bmegate_v1_6.quote_market_pre_transparency_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmeequities_replay_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmeequities_replay_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_bmeequities_replay_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Secondary Order Id 2: U
  index, secondary_order_id_2 = bme_bmeequities_replay_bmegate_v1_6.secondary_order_id_2.dissect(buffer, index, packet, parent)

  -- Retail Flag: F
  index, retail_flag = bme_bmeequities_replay_bmegate_v1_6.retail_flag.dissect(buffer, index, packet, parent)

  -- Priority: U
  index, priority = bme_bmeequities_replay_bmegate_v1_6.priority.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_bmeequities_replay_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Display Qty: Q
  index, display_qty = bme_bmeequities_replay_bmegate_v1_6.display_qty.dissect(buffer, index, packet, parent)

  -- Priority 2: U
  index, priority_2 = bme_bmeequities_replay_bmegate_v1_6.priority_2.dissect(buffer, index, packet, parent)

  -- Price 2: P
  index, price_2 = bme_bmeequities_replay_bmegate_v1_6.price_2.dissect(buffer, index, packet, parent)

  -- Display Qty 2: Q
  index, display_qty_2 = bme_bmeequities_replay_bmegate_v1_6.display_qty_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Market Pre Transparency Information Message
bme_bmeequities_replay_bmegate_v1_6.quote_market_pre_transparency_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.quote_market_pre_transparency_information_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.quote_market_pre_transparency_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.quote_market_pre_transparency_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.quote_market_pre_transparency_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Market Pre Transparency Information Message
bme_bmeequities_replay_bmegate_v1_6.order_market_pre_transparency_information_message = {}

-- Size: Order Market Pre Transparency Information Message
bme_bmeequities_replay_bmegate_v1_6.order_market_pre_transparency_information_message.size =
  bme_bmeequities_replay_bmegate_v1_6.sequence_number.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_code.size + 
  bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmeequities_replay_bmegate_v1_6.secondary_order_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.entry_date.size + 
  bme_bmeequities_replay_bmegate_v1_6.retail_flag.size + 
  bme_bmeequities_replay_bmegate_v1_6.side.size + 
  bme_bmeequities_replay_bmegate_v1_6.priority.size + 
  bme_bmeequities_replay_bmegate_v1_6.price.size + 
  bme_bmeequities_replay_bmegate_v1_6.display_qty.size

-- Display: Order Market Pre Transparency Information Message
bme_bmeequities_replay_bmegate_v1_6.order_market_pre_transparency_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Market Pre Transparency Information Message
bme_bmeequities_replay_bmegate_v1_6.order_market_pre_transparency_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmeequities_replay_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmeequities_replay_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: U
  index, secondary_order_id = bme_bmeequities_replay_bmegate_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Entry Date: D
  index, entry_date = bme_bmeequities_replay_bmegate_v1_6.entry_date.dissect(buffer, index, packet, parent)

  -- Retail Flag: F
  index, retail_flag = bme_bmeequities_replay_bmegate_v1_6.retail_flag.dissect(buffer, index, packet, parent)

  -- Side: C
  index, side = bme_bmeequities_replay_bmegate_v1_6.side.dissect(buffer, index, packet, parent)

  -- Priority: U
  index, priority = bme_bmeequities_replay_bmegate_v1_6.priority.dissect(buffer, index, packet, parent)

  -- Price: P
  index, price = bme_bmeequities_replay_bmegate_v1_6.price.dissect(buffer, index, packet, parent)

  -- Display Qty: Q
  index, display_qty = bme_bmeequities_replay_bmegate_v1_6.display_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Market Pre Transparency Information Message
bme_bmeequities_replay_bmegate_v1_6.order_market_pre_transparency_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.order_market_pre_transparency_information_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.order_market_pre_transparency_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.order_market_pre_transparency_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.order_market_pre_transparency_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Clear Message
bme_bmeequities_replay_bmegate_v1_6.order_book_clear_message = {}

-- Size: Order Book Clear Message
bme_bmeequities_replay_bmegate_v1_6.order_book_clear_message.size =
  bme_bmeequities_replay_bmegate_v1_6.sequence_number.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_code.size + 
  bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.size

-- Display: Order Book Clear Message
bme_bmeequities_replay_bmegate_v1_6.order_book_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Clear Message
bme_bmeequities_replay_bmegate_v1_6.order_book_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmeequities_replay_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmeequities_replay_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Clear Message
bme_bmeequities_replay_bmegate_v1_6.order_book_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.order_book_clear_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.order_book_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.order_book_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.order_book_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Message
bme_bmeequities_replay_bmegate_v1_6.security_status_message = {}

-- Size: Security Status Message
bme_bmeequities_replay_bmegate_v1_6.security_status_message.size =
  bme_bmeequities_replay_bmegate_v1_6.sequence_number.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_code.size + 
  bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmeequities_replay_bmegate_v1_6.reference_price.size + 
  bme_bmeequities_replay_bmegate_v1_6.static_price.size + 
  bme_bmeequities_replay_bmegate_v1_6.dynamic_price_oscilation_percentage.size + 
  bme_bmeequities_replay_bmegate_v1_6.dynamic_range_multiplier.size + 
  bme_bmeequities_replay_bmegate_v1_6.auction_trigger_price.size + 
  bme_bmeequities_replay_bmegate_v1_6.auction_end_time.size + 
  bme_bmeequities_replay_bmegate_v1_6.liquidative_value_date.size + 
  bme_bmeequities_replay_bmegate_v1_6.bonus_warrants_with_active_bonus.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_trading_status.size + 
  bme_bmeequities_replay_bmegate_v1_6.auction_origin.size + 
  bme_bmeequities_replay_bmegate_v1_6.non_availability_reason.size + 
  bme_bmeequities_replay_bmegate_v1_6.exemption_situation.size + 
  bme_bmeequities_replay_bmegate_v1_6.block_oscilation_percentage.size + 
  bme_bmeequities_replay_bmegate_v1_6.high_limit_price.size + 
  bme_bmeequities_replay_bmegate_v1_6.low_limit_price.size + 
  bme_bmeequities_replay_bmegate_v1_6.liquidative_value.size + 
  bme_bmeequities_replay_bmegate_v1_6.static_range_type.size + 
  bme_bmeequities_replay_bmegate_v1_6.order_static_range.size + 
  bme_bmeequities_replay_bmegate_v1_6.block_static_range.size

-- Display: Security Status Message
bme_bmeequities_replay_bmegate_v1_6.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
bme_bmeequities_replay_bmegate_v1_6.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmeequities_replay_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmeequities_replay_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Reference Price: P
  index, reference_price = bme_bmeequities_replay_bmegate_v1_6.reference_price.dissect(buffer, index, packet, parent)

  -- Static Price: P
  index, static_price = bme_bmeequities_replay_bmegate_v1_6.static_price.dissect(buffer, index, packet, parent)

  -- Dynamic Price Oscilation Percentage: R
  index, dynamic_price_oscilation_percentage = bme_bmeequities_replay_bmegate_v1_6.dynamic_price_oscilation_percentage.dissect(buffer, index, packet, parent)

  -- Dynamic Range Multiplier: U
  index, dynamic_range_multiplier = bme_bmeequities_replay_bmegate_v1_6.dynamic_range_multiplier.dissect(buffer, index, packet, parent)

  -- Auction Trigger Price: P
  index, auction_trigger_price = bme_bmeequities_replay_bmegate_v1_6.auction_trigger_price.dissect(buffer, index, packet, parent)

  -- Auction End Time: T
  index, auction_end_time = bme_bmeequities_replay_bmegate_v1_6.auction_end_time.dissect(buffer, index, packet, parent)

  -- Liquidative Value Date: D
  index, liquidative_value_date = bme_bmeequities_replay_bmegate_v1_6.liquidative_value_date.dissect(buffer, index, packet, parent)

  -- Bonus Warrants With Active Bonus: F
  index, bonus_warrants_with_active_bonus = bme_bmeequities_replay_bmegate_v1_6.bonus_warrants_with_active_bonus.dissect(buffer, index, packet, parent)

  -- Security Trading Status: U
  index, security_trading_status = bme_bmeequities_replay_bmegate_v1_6.security_trading_status.dissect(buffer, index, packet, parent)

  -- Auction Origin: U
  index, auction_origin = bme_bmeequities_replay_bmegate_v1_6.auction_origin.dissect(buffer, index, packet, parent)

  -- Non Availability Reason: U
  index, non_availability_reason = bme_bmeequities_replay_bmegate_v1_6.non_availability_reason.dissect(buffer, index, packet, parent)

  -- Exemption Situation: C
  index, exemption_situation = bme_bmeequities_replay_bmegate_v1_6.exemption_situation.dissect(buffer, index, packet, parent)

  -- Block Oscilation Percentage: R
  index, block_oscilation_percentage = bme_bmeequities_replay_bmegate_v1_6.block_oscilation_percentage.dissect(buffer, index, packet, parent)

  -- High Limit Price: P
  index, high_limit_price = bme_bmeequities_replay_bmegate_v1_6.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: P
  index, low_limit_price = bme_bmeequities_replay_bmegate_v1_6.low_limit_price.dissect(buffer, index, packet, parent)

  -- Liquidative Value: P
  index, liquidative_value = bme_bmeequities_replay_bmegate_v1_6.liquidative_value.dissect(buffer, index, packet, parent)

  -- Static Range Type: C
  index, static_range_type = bme_bmeequities_replay_bmegate_v1_6.static_range_type.dissect(buffer, index, packet, parent)

  -- Order Static Range: P
  index, order_static_range = bme_bmeequities_replay_bmegate_v1_6.order_static_range.dissect(buffer, index, packet, parent)

  -- Block Static Range: P
  index, block_static_range = bme_bmeequities_replay_bmegate_v1_6.block_static_range.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
bme_bmeequities_replay_bmegate_v1_6.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_status_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Security List Update Report Message
bme_bmeequities_replay_bmegate_v1_6.security_list_update_report_message = {}

-- Size: Security List Update Report Message
bme_bmeequities_replay_bmegate_v1_6.security_list_update_report_message.size =
  bme_bmeequities_replay_bmegate_v1_6.sequence_number.size + 
  bme_bmeequities_replay_bmegate_v1_6.market_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.market_segment_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_code.size + 
  bme_bmeequities_replay_bmegate_v1_6.symbol.size + 
  bme_bmeequities_replay_bmegate_v1_6.symbol_isin.size + 
  bme_bmeequities_replay_bmegate_v1_6.fisn.size + 
  bme_bmeequities_replay_bmegate_v1_6.issuer_lei.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_group.size + 
  bme_bmeequities_replay_bmegate_v1_6.cfi_code.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_type.size + 
  bme_bmeequities_replay_bmegate_v1_6.maturity_date.size + 
  bme_bmeequities_replay_bmegate_v1_6.issue_date.size + 
  bme_bmeequities_replay_bmegate_v1_6.contract_multiplier.size + 
  bme_bmeequities_replay_bmegate_v1_6.li_spre.size + 
  bme_bmeequities_replay_bmegate_v1_6.sst_ipre.size + 
  bme_bmeequities_replay_bmegate_v1_6.li_spost.size + 
  bme_bmeequities_replay_bmegate_v1_6.sst_ipost.size + 
  bme_bmeequities_replay_bmegate_v1_6.liquid_instrument.size + 
  bme_bmeequities_replay_bmegate_v1_6.admission_requested_by_issuer.size + 
  bme_bmeequities_replay_bmegate_v1_6.min_trade_vol.size + 
  bme_bmeequities_replay_bmegate_v1_6.round_lot.size + 
  bme_bmeequities_replay_bmegate_v1_6.currency.size + 
  bme_bmeequities_replay_bmegate_v1_6.modality_mask_b_4.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_description.size + 
  bme_bmeequities_replay_bmegate_v1_6.trading_obligation.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_name.size + 
  bme_bmeequities_replay_bmegate_v1_6.net_asset_value_identifier.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_sub_type.size + 
  bme_bmeequities_replay_bmegate_v1_6.maturity_month_year.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_status.size + 
  bme_bmeequities_replay_bmegate_v1_6.strike_price.size + 
  bme_bmeequities_replay_bmegate_v1_6.strike_value.size + 
  bme_bmeequities_replay_bmegate_v1_6.exercise_style.size + 
  bme_bmeequities_replay_bmegate_v1_6.put_or_call.size + 
  bme_bmeequities_replay_bmegate_v1_6.position_limit.size + 
  bme_bmeequities_replay_bmegate_v1_6.nt_position_limit.size + 
  bme_bmeequities_replay_bmegate_v1_6.issuer.size + 
  bme_bmeequities_replay_bmegate_v1_6.cp_reg_type.size + 
  bme_bmeequities_replay_bmegate_v1_6.barrier.size + 
  bme_bmeequities_replay_bmegate_v1_6.last_trading_day.size + 
  bme_bmeequities_replay_bmegate_v1_6.automatic_expiration.size + 
  bme_bmeequities_replay_bmegate_v1_6.fee_type.size + 
  bme_bmeequities_replay_bmegate_v1_6.barrier_2.size + 
  bme_bmeequities_replay_bmegate_v1_6.trigger_barrier.size + 
  bme_bmeequities_replay_bmegate_v1_6.trigger_upper_barrier.size + 
  bme_bmeequities_replay_bmegate_v1_6.average_quarterly_turnover.size + 
  bme_bmeequities_replay_bmegate_v1_6.trading_scope.size + 
  bme_bmeequities_replay_bmegate_v1_6.sicav_counterparty_member.size + 
  bme_bmeequities_replay_bmegate_v1_6.net_asset_value_indicator.size + 
  bme_bmeequities_replay_bmegate_v1_6.reference_trading_venue.size + 
  bme_bmeequities_replay_bmegate_v1_6.outstanding_capital.size + 
  bme_bmeequities_replay_bmegate_v1_6.first_trading_date.size + 
  bme_bmeequities_replay_bmegate_v1_6.settlement_system.size + 
  bme_bmeequities_replay_bmegate_v1_6.number_of_decimals.size + 
  bme_bmeequities_replay_bmegate_v1_6.number_of_holders.size + 
  bme_bmeequities_replay_bmegate_v1_6.outstanding_shares.size + 
  bme_bmeequities_replay_bmegate_v1_6.minimum_authorized_shares.size + 
  bme_bmeequities_replay_bmegate_v1_6.minimum_capital.size + 
  bme_bmeequities_replay_bmegate_v1_6.last_admission_date.size + 
  bme_bmeequities_replay_bmegate_v1_6.barrier_return.size + 
  bme_bmeequities_replay_bmegate_v1_6.investment_fund_manager.size + 
  bme_bmeequities_replay_bmegate_v1_6.effective_amount_filters_routed_orders.size + 
  bme_bmeequities_replay_bmegate_v1_6.order_number_of_decimals.size + 
  bme_bmeequities_replay_bmegate_v1_6.investment_fund_class.size + 
  bme_bmeequities_replay_bmegate_v1_6.master_fund_name.size + 
  bme_bmeequities_replay_bmegate_v1_6.investment_fund_management_company.size + 
  bme_bmeequities_replay_bmegate_v1_6.investment_fund_depository.size + 
  bme_bmeequities_replay_bmegate_v1_6.investment_fund_category.size + 
  bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_subscription_amount.size + 
  bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_maintenance_amount.size + 
  bme_bmeequities_replay_bmegate_v1_6.investment_fund_cut_off_time.size + 
  bme_bmeequities_replay_bmegate_v1_6.nav_communication_term.size + 
  bme_bmeequities_replay_bmegate_v1_6.investment_fund_number_of_decimals.size + 
  bme_bmeequities_replay_bmegate_v1_6.commodity_derivative_indicator.size + 
  bme_bmeequities_replay_bmegate_v1_6.double_volume_cap_reached.size + 
  bme_bmeequities_replay_bmegate_v1_6.adt.size + 
  bme_bmeequities_replay_bmegate_v1_6.base_product.size + 
  bme_bmeequities_replay_bmegate_v1_6.sub_product.size + 
  bme_bmeequities_replay_bmegate_v1_6.further_sub_product.size + 
  bme_bmeequities_replay_bmegate_v1_6.adnt.size + 
  bme_bmeequities_replay_bmegate_v1_6.price_tick_rule.size + 
  bme_bmeequities_replay_bmegate_v1_6.underlying_symbol.size + 
  bme_bmeequities_replay_bmegate_v1_6.underlying_isin.size + 
  bme_bmeequities_replay_bmegate_v1_6.underlying_currency.size + 
  bme_bmeequities_replay_bmegate_v1_6.minimum_display_qty.size + 
  bme_bmeequities_replay_bmegate_v1_6.retail_service_flag.size + 
  bme_bmeequities_replay_bmegate_v1_6.self_match_prevention.size

-- Display: Security List Update Report Message
bme_bmeequities_replay_bmegate_v1_6.security_list_update_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Update Report Message
bme_bmeequities_replay_bmegate_v1_6.security_list_update_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmeequities_replay_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Market Id: C
  index, market_id = bme_bmeequities_replay_bmegate_v1_6.market_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_bmeequities_replay_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmeequities_replay_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Symbol: C
  index, symbol = bme_bmeequities_replay_bmegate_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Isin: C
  index, symbol_isin = bme_bmeequities_replay_bmegate_v1_6.symbol_isin.dissect(buffer, index, packet, parent)

  -- Fisn: C
  index, fisn = bme_bmeequities_replay_bmegate_v1_6.fisn.dissect(buffer, index, packet, parent)

  -- Issuer Lei: C
  index, issuer_lei = bme_bmeequities_replay_bmegate_v1_6.issuer_lei.dissect(buffer, index, packet, parent)

  -- Security Group: C
  index, security_group = bme_bmeequities_replay_bmegate_v1_6.security_group.dissect(buffer, index, packet, parent)

  -- Cfi Code: C
  index, cfi_code = bme_bmeequities_replay_bmegate_v1_6.cfi_code.dissect(buffer, index, packet, parent)

  -- Security Type: C
  index, security_type = bme_bmeequities_replay_bmegate_v1_6.security_type.dissect(buffer, index, packet, parent)

  -- Maturity Date: D
  index, maturity_date = bme_bmeequities_replay_bmegate_v1_6.maturity_date.dissect(buffer, index, packet, parent)

  -- Issue Date: D
  index, issue_date = bme_bmeequities_replay_bmegate_v1_6.issue_date.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: A
  index, contract_multiplier = bme_bmeequities_replay_bmegate_v1_6.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Li Spre: A
  index, li_spre = bme_bmeequities_replay_bmegate_v1_6.li_spre.dissect(buffer, index, packet, parent)

  -- Sst Ipre: A
  index, sst_ipre = bme_bmeequities_replay_bmegate_v1_6.sst_ipre.dissect(buffer, index, packet, parent)

  -- Li Spost: A
  index, li_spost = bme_bmeequities_replay_bmegate_v1_6.li_spost.dissect(buffer, index, packet, parent)

  -- Sst Ipost: A
  index, sst_ipost = bme_bmeequities_replay_bmegate_v1_6.sst_ipost.dissect(buffer, index, packet, parent)

  -- Liquid Instrument: F
  index, liquid_instrument = bme_bmeequities_replay_bmegate_v1_6.liquid_instrument.dissect(buffer, index, packet, parent)

  -- Admission Requested By Issuer: F
  index, admission_requested_by_issuer = bme_bmeequities_replay_bmegate_v1_6.admission_requested_by_issuer.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: Q
  index, min_trade_vol = bme_bmeequities_replay_bmegate_v1_6.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Round Lot: Q
  index, round_lot = bme_bmeequities_replay_bmegate_v1_6.round_lot.dissect(buffer, index, packet, parent)

  -- Currency: C
  index, currency = bme_bmeequities_replay_bmegate_v1_6.currency.dissect(buffer, index, packet, parent)

  -- Modality Mask B 4: B
  index, modality_mask_b_4 = bme_bmeequities_replay_bmegate_v1_6.modality_mask_b_4.dissect(buffer, index, packet, parent)

  -- Security Description: C
  index, security_description = bme_bmeequities_replay_bmegate_v1_6.security_description.dissect(buffer, index, packet, parent)

  -- Trading Obligation: F
  index, trading_obligation = bme_bmeequities_replay_bmegate_v1_6.trading_obligation.dissect(buffer, index, packet, parent)

  -- Security Name: C
  index, security_name = bme_bmeequities_replay_bmegate_v1_6.security_name.dissect(buffer, index, packet, parent)

  -- Net Asset Value Identifier: C
  index, net_asset_value_identifier = bme_bmeequities_replay_bmegate_v1_6.net_asset_value_identifier.dissect(buffer, index, packet, parent)

  -- Security Sub Type: C
  index, security_sub_type = bme_bmeequities_replay_bmegate_v1_6.security_sub_type.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: C
  index, maturity_month_year = bme_bmeequities_replay_bmegate_v1_6.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Security Status: C
  index, security_status = bme_bmeequities_replay_bmegate_v1_6.security_status.dissect(buffer, index, packet, parent)

  -- Strike Price: P
  index, strike_price = bme_bmeequities_replay_bmegate_v1_6.strike_price.dissect(buffer, index, packet, parent)

  -- Strike Value: A
  index, strike_value = bme_bmeequities_replay_bmegate_v1_6.strike_value.dissect(buffer, index, packet, parent)

  -- Exercise Style: C
  index, exercise_style = bme_bmeequities_replay_bmegate_v1_6.exercise_style.dissect(buffer, index, packet, parent)

  -- Put Or Call: C
  index, put_or_call = bme_bmeequities_replay_bmegate_v1_6.put_or_call.dissect(buffer, index, packet, parent)

  -- Position Limit: A
  index, position_limit = bme_bmeequities_replay_bmegate_v1_6.position_limit.dissect(buffer, index, packet, parent)

  -- Nt Position Limit: U
  index, nt_position_limit = bme_bmeequities_replay_bmegate_v1_6.nt_position_limit.dissect(buffer, index, packet, parent)

  -- Issuer: C
  index, issuer = bme_bmeequities_replay_bmegate_v1_6.issuer.dissect(buffer, index, packet, parent)

  -- Cp Reg Type: F
  index, cp_reg_type = bme_bmeequities_replay_bmegate_v1_6.cp_reg_type.dissect(buffer, index, packet, parent)

  -- Barrier: P
  index, barrier = bme_bmeequities_replay_bmegate_v1_6.barrier.dissect(buffer, index, packet, parent)

  -- Last Trading Day: D
  index, last_trading_day = bme_bmeequities_replay_bmegate_v1_6.last_trading_day.dissect(buffer, index, packet, parent)

  -- Automatic Expiration: F
  index, automatic_expiration = bme_bmeequities_replay_bmegate_v1_6.automatic_expiration.dissect(buffer, index, packet, parent)

  -- Fee Type: C
  index, fee_type = bme_bmeequities_replay_bmegate_v1_6.fee_type.dissect(buffer, index, packet, parent)

  -- Barrier 2: P
  index, barrier_2 = bme_bmeequities_replay_bmegate_v1_6.barrier_2.dissect(buffer, index, packet, parent)

  -- Trigger Barrier: P
  index, trigger_barrier = bme_bmeequities_replay_bmegate_v1_6.trigger_barrier.dissect(buffer, index, packet, parent)

  -- Trigger Upper Barrier: P
  index, trigger_upper_barrier = bme_bmeequities_replay_bmegate_v1_6.trigger_upper_barrier.dissect(buffer, index, packet, parent)

  -- Average Quarterly Turnover: A
  index, average_quarterly_turnover = bme_bmeequities_replay_bmegate_v1_6.average_quarterly_turnover.dissect(buffer, index, packet, parent)

  -- Trading Scope: B
  index, trading_scope = bme_bmeequities_replay_bmegate_v1_6.trading_scope.dissect(buffer, index, packet, parent)

  -- Sicav Counterparty Member: C
  index, sicav_counterparty_member = bme_bmeequities_replay_bmegate_v1_6.sicav_counterparty_member.dissect(buffer, index, packet, parent)

  -- Net Asset Value Indicator: F
  index, net_asset_value_indicator = bme_bmeequities_replay_bmegate_v1_6.net_asset_value_indicator.dissect(buffer, index, packet, parent)

  -- Reference Trading Venue: C
  index, reference_trading_venue = bme_bmeequities_replay_bmegate_v1_6.reference_trading_venue.dissect(buffer, index, packet, parent)

  -- Outstanding Capital: A
  index, outstanding_capital = bme_bmeequities_replay_bmegate_v1_6.outstanding_capital.dissect(buffer, index, packet, parent)

  -- First Trading Date: D
  index, first_trading_date = bme_bmeequities_replay_bmegate_v1_6.first_trading_date.dissect(buffer, index, packet, parent)

  -- Settlement System: C
  index, settlement_system = bme_bmeequities_replay_bmegate_v1_6.settlement_system.dissect(buffer, index, packet, parent)

  -- Number Of Decimals: U
  index, number_of_decimals = bme_bmeequities_replay_bmegate_v1_6.number_of_decimals.dissect(buffer, index, packet, parent)

  -- Number Of Holders: U
  index, number_of_holders = bme_bmeequities_replay_bmegate_v1_6.number_of_holders.dissect(buffer, index, packet, parent)

  -- Outstanding Shares: Q
  index, outstanding_shares = bme_bmeequities_replay_bmegate_v1_6.outstanding_shares.dissect(buffer, index, packet, parent)

  -- Minimum Authorized Shares: Q
  index, minimum_authorized_shares = bme_bmeequities_replay_bmegate_v1_6.minimum_authorized_shares.dissect(buffer, index, packet, parent)

  -- Minimum Capital: A
  index, minimum_capital = bme_bmeequities_replay_bmegate_v1_6.minimum_capital.dissect(buffer, index, packet, parent)

  -- Last Admission Date: D
  index, last_admission_date = bme_bmeequities_replay_bmegate_v1_6.last_admission_date.dissect(buffer, index, packet, parent)

  -- Barrier Return: P
  index, barrier_return = bme_bmeequities_replay_bmegate_v1_6.barrier_return.dissect(buffer, index, packet, parent)

  -- Investment Fund Manager: C
  index, investment_fund_manager = bme_bmeequities_replay_bmegate_v1_6.investment_fund_manager.dissect(buffer, index, packet, parent)

  -- Effective Amount Filters Routed Orders: A
  index, effective_amount_filters_routed_orders = bme_bmeequities_replay_bmegate_v1_6.effective_amount_filters_routed_orders.dissect(buffer, index, packet, parent)

  -- Order Number Of Decimals: U
  index, order_number_of_decimals = bme_bmeequities_replay_bmegate_v1_6.order_number_of_decimals.dissect(buffer, index, packet, parent)

  -- Investment Fund Class: F
  index, investment_fund_class = bme_bmeequities_replay_bmegate_v1_6.investment_fund_class.dissect(buffer, index, packet, parent)

  -- Master Fund Name: C
  index, master_fund_name = bme_bmeequities_replay_bmegate_v1_6.master_fund_name.dissect(buffer, index, packet, parent)

  -- Investment Fund Management Company: C
  index, investment_fund_management_company = bme_bmeequities_replay_bmegate_v1_6.investment_fund_management_company.dissect(buffer, index, packet, parent)

  -- Investment Fund Depository: C
  index, investment_fund_depository = bme_bmeequities_replay_bmegate_v1_6.investment_fund_depository.dissect(buffer, index, packet, parent)

  -- Investment Fund Category: C
  index, investment_fund_category = bme_bmeequities_replay_bmegate_v1_6.investment_fund_category.dissect(buffer, index, packet, parent)

  -- Investment Fund Minimum Subscription Amount: A
  index, investment_fund_minimum_subscription_amount = bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_subscription_amount.dissect(buffer, index, packet, parent)

  -- Investment Fund Minimum Maintenance Amount: A
  index, investment_fund_minimum_maintenance_amount = bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_maintenance_amount.dissect(buffer, index, packet, parent)

  -- Investment Fund Cut Off Time: T
  index, investment_fund_cut_off_time = bme_bmeequities_replay_bmegate_v1_6.investment_fund_cut_off_time.dissect(buffer, index, packet, parent)

  -- Nav Communication Term: C
  index, nav_communication_term = bme_bmeequities_replay_bmegate_v1_6.nav_communication_term.dissect(buffer, index, packet, parent)

  -- Investment Fund Number Of Decimals: U
  index, investment_fund_number_of_decimals = bme_bmeequities_replay_bmegate_v1_6.investment_fund_number_of_decimals.dissect(buffer, index, packet, parent)

  -- Commodity Derivative Indicator: C
  index, commodity_derivative_indicator = bme_bmeequities_replay_bmegate_v1_6.commodity_derivative_indicator.dissect(buffer, index, packet, parent)

  -- Double Volume Cap Reached: F
  index, double_volume_cap_reached = bme_bmeequities_replay_bmegate_v1_6.double_volume_cap_reached.dissect(buffer, index, packet, parent)

  -- Adt: A
  index, adt = bme_bmeequities_replay_bmegate_v1_6.adt.dissect(buffer, index, packet, parent)

  -- Base Product: C
  index, base_product = bme_bmeequities_replay_bmegate_v1_6.base_product.dissect(buffer, index, packet, parent)

  -- Sub Product: C
  index, sub_product = bme_bmeequities_replay_bmegate_v1_6.sub_product.dissect(buffer, index, packet, parent)

  -- Further Sub Product: C
  index, further_sub_product = bme_bmeequities_replay_bmegate_v1_6.further_sub_product.dissect(buffer, index, packet, parent)

  -- Adnt: A
  index, adnt = bme_bmeequities_replay_bmegate_v1_6.adnt.dissect(buffer, index, packet, parent)

  -- Price Tick Rule: U
  index, price_tick_rule = bme_bmeequities_replay_bmegate_v1_6.price_tick_rule.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: C
  index, underlying_symbol = bme_bmeequities_replay_bmegate_v1_6.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Underlying Isin: C
  index, underlying_isin = bme_bmeequities_replay_bmegate_v1_6.underlying_isin.dissect(buffer, index, packet, parent)

  -- Underlying Currency: C
  index, underlying_currency = bme_bmeequities_replay_bmegate_v1_6.underlying_currency.dissect(buffer, index, packet, parent)

  -- Minimum Display Qty: Q
  index, minimum_display_qty = bme_bmeequities_replay_bmegate_v1_6.minimum_display_qty.dissect(buffer, index, packet, parent)

  -- Retail Service Flag: F
  index, retail_service_flag = bme_bmeequities_replay_bmegate_v1_6.retail_service_flag.dissect(buffer, index, packet, parent)

  -- Self Match Prevention: F
  index, self_match_prevention = bme_bmeequities_replay_bmegate_v1_6.self_match_prevention.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security List Update Report Message
bme_bmeequities_replay_bmegate_v1_6.security_list_update_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_list_update_report_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.security_list_update_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.security_list_update_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.security_list_update_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Security List Message
bme_bmeequities_replay_bmegate_v1_6.security_list_message = {}

-- Size: Security List Message
bme_bmeequities_replay_bmegate_v1_6.security_list_message.size =
  bme_bmeequities_replay_bmegate_v1_6.sequence_number.size + 
  bme_bmeequities_replay_bmegate_v1_6.market_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.market_segment_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_code.size + 
  bme_bmeequities_replay_bmegate_v1_6.symbol.size + 
  bme_bmeequities_replay_bmegate_v1_6.symbol_isin.size + 
  bme_bmeequities_replay_bmegate_v1_6.fisn.size + 
  bme_bmeequities_replay_bmegate_v1_6.issuer_lei.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_group.size + 
  bme_bmeequities_replay_bmegate_v1_6.cfi_code.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_type.size + 
  bme_bmeequities_replay_bmegate_v1_6.maturity_date.size + 
  bme_bmeequities_replay_bmegate_v1_6.issue_date.size + 
  bme_bmeequities_replay_bmegate_v1_6.contract_multiplier.size + 
  bme_bmeequities_replay_bmegate_v1_6.li_spre.size + 
  bme_bmeequities_replay_bmegate_v1_6.sst_ipre.size + 
  bme_bmeequities_replay_bmegate_v1_6.li_spost.size + 
  bme_bmeequities_replay_bmegate_v1_6.sst_ipost.size + 
  bme_bmeequities_replay_bmegate_v1_6.liquid_instrument.size + 
  bme_bmeequities_replay_bmegate_v1_6.admission_requested_by_issuer.size + 
  bme_bmeequities_replay_bmegate_v1_6.min_trade_vol.size + 
  bme_bmeequities_replay_bmegate_v1_6.round_lot.size + 
  bme_bmeequities_replay_bmegate_v1_6.currency.size + 
  bme_bmeequities_replay_bmegate_v1_6.modality_mask_b_4.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_description.size + 
  bme_bmeequities_replay_bmegate_v1_6.trading_obligation.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_name.size + 
  bme_bmeequities_replay_bmegate_v1_6.net_asset_value_identifier.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_sub_type.size + 
  bme_bmeequities_replay_bmegate_v1_6.maturity_month_year.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_status.size + 
  bme_bmeequities_replay_bmegate_v1_6.strike_price.size + 
  bme_bmeequities_replay_bmegate_v1_6.strike_value.size + 
  bme_bmeequities_replay_bmegate_v1_6.exercise_style.size + 
  bme_bmeequities_replay_bmegate_v1_6.put_or_call.size + 
  bme_bmeequities_replay_bmegate_v1_6.position_limit.size + 
  bme_bmeequities_replay_bmegate_v1_6.nt_position_limit.size + 
  bme_bmeequities_replay_bmegate_v1_6.issuer.size + 
  bme_bmeequities_replay_bmegate_v1_6.cp_reg_type.size + 
  bme_bmeequities_replay_bmegate_v1_6.barrier.size + 
  bme_bmeequities_replay_bmegate_v1_6.last_trading_day.size + 
  bme_bmeequities_replay_bmegate_v1_6.automatic_expiration.size + 
  bme_bmeequities_replay_bmegate_v1_6.fee_type.size + 
  bme_bmeequities_replay_bmegate_v1_6.barrier_2.size + 
  bme_bmeequities_replay_bmegate_v1_6.trigger_barrier.size + 
  bme_bmeequities_replay_bmegate_v1_6.trigger_upper_barrier.size + 
  bme_bmeequities_replay_bmegate_v1_6.average_quarterly_turnover.size + 
  bme_bmeequities_replay_bmegate_v1_6.trading_scope.size + 
  bme_bmeequities_replay_bmegate_v1_6.sicav_counterparty_member.size + 
  bme_bmeequities_replay_bmegate_v1_6.net_asset_value_indicator.size + 
  bme_bmeequities_replay_bmegate_v1_6.reference_trading_venue.size + 
  bme_bmeequities_replay_bmegate_v1_6.outstanding_capital.size + 
  bme_bmeequities_replay_bmegate_v1_6.first_trading_date.size + 
  bme_bmeequities_replay_bmegate_v1_6.settlement_system.size + 
  bme_bmeequities_replay_bmegate_v1_6.number_of_decimals.size + 
  bme_bmeequities_replay_bmegate_v1_6.number_of_holders.size + 
  bme_bmeequities_replay_bmegate_v1_6.outstanding_shares.size + 
  bme_bmeequities_replay_bmegate_v1_6.minimum_authorized_shares.size + 
  bme_bmeequities_replay_bmegate_v1_6.minimum_capital.size + 
  bme_bmeequities_replay_bmegate_v1_6.last_admission_date.size + 
  bme_bmeequities_replay_bmegate_v1_6.barrier_return.size + 
  bme_bmeequities_replay_bmegate_v1_6.investment_fund_manager.size + 
  bme_bmeequities_replay_bmegate_v1_6.effective_amount_filters_routed_orders.size + 
  bme_bmeequities_replay_bmegate_v1_6.order_number_of_decimals.size + 
  bme_bmeequities_replay_bmegate_v1_6.investment_fund_class.size + 
  bme_bmeequities_replay_bmegate_v1_6.master_fund_name.size + 
  bme_bmeequities_replay_bmegate_v1_6.investment_fund_management_company.size + 
  bme_bmeequities_replay_bmegate_v1_6.investment_fund_depository.size + 
  bme_bmeequities_replay_bmegate_v1_6.investment_fund_category.size + 
  bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_subscription_amount.size + 
  bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_maintenance_amount.size + 
  bme_bmeequities_replay_bmegate_v1_6.investment_fund_cut_off_time.size + 
  bme_bmeequities_replay_bmegate_v1_6.nav_communication_term.size + 
  bme_bmeequities_replay_bmegate_v1_6.investment_fund_number_of_decimals.size + 
  bme_bmeequities_replay_bmegate_v1_6.commodity_derivative_indicator.size + 
  bme_bmeequities_replay_bmegate_v1_6.double_volume_cap_reached.size + 
  bme_bmeequities_replay_bmegate_v1_6.adt.size + 
  bme_bmeequities_replay_bmegate_v1_6.base_product.size + 
  bme_bmeequities_replay_bmegate_v1_6.sub_product.size + 
  bme_bmeequities_replay_bmegate_v1_6.further_sub_product.size + 
  bme_bmeequities_replay_bmegate_v1_6.adnt.size + 
  bme_bmeequities_replay_bmegate_v1_6.price_tick_rule.size + 
  bme_bmeequities_replay_bmegate_v1_6.underlying_symbol.size + 
  bme_bmeequities_replay_bmegate_v1_6.underlying_isin.size + 
  bme_bmeequities_replay_bmegate_v1_6.underlying_currency.size + 
  bme_bmeequities_replay_bmegate_v1_6.minimum_display_qty.size + 
  bme_bmeequities_replay_bmegate_v1_6.retail_service_flag.size + 
  bme_bmeequities_replay_bmegate_v1_6.self_match_prevention.size

-- Display: Security List Message
bme_bmeequities_replay_bmegate_v1_6.security_list_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Message
bme_bmeequities_replay_bmegate_v1_6.security_list_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmeequities_replay_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Market Id: C
  index, market_id = bme_bmeequities_replay_bmegate_v1_6.market_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_bmeequities_replay_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmeequities_replay_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Symbol: C
  index, symbol = bme_bmeequities_replay_bmegate_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Isin: C
  index, symbol_isin = bme_bmeequities_replay_bmegate_v1_6.symbol_isin.dissect(buffer, index, packet, parent)

  -- Fisn: C
  index, fisn = bme_bmeequities_replay_bmegate_v1_6.fisn.dissect(buffer, index, packet, parent)

  -- Issuer Lei: C
  index, issuer_lei = bme_bmeequities_replay_bmegate_v1_6.issuer_lei.dissect(buffer, index, packet, parent)

  -- Security Group: C
  index, security_group = bme_bmeequities_replay_bmegate_v1_6.security_group.dissect(buffer, index, packet, parent)

  -- Cfi Code: C
  index, cfi_code = bme_bmeequities_replay_bmegate_v1_6.cfi_code.dissect(buffer, index, packet, parent)

  -- Security Type: C
  index, security_type = bme_bmeequities_replay_bmegate_v1_6.security_type.dissect(buffer, index, packet, parent)

  -- Maturity Date: D
  index, maturity_date = bme_bmeequities_replay_bmegate_v1_6.maturity_date.dissect(buffer, index, packet, parent)

  -- Issue Date: D
  index, issue_date = bme_bmeequities_replay_bmegate_v1_6.issue_date.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: A
  index, contract_multiplier = bme_bmeequities_replay_bmegate_v1_6.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Li Spre: A
  index, li_spre = bme_bmeequities_replay_bmegate_v1_6.li_spre.dissect(buffer, index, packet, parent)

  -- Sst Ipre: A
  index, sst_ipre = bme_bmeequities_replay_bmegate_v1_6.sst_ipre.dissect(buffer, index, packet, parent)

  -- Li Spost: A
  index, li_spost = bme_bmeequities_replay_bmegate_v1_6.li_spost.dissect(buffer, index, packet, parent)

  -- Sst Ipost: A
  index, sst_ipost = bme_bmeequities_replay_bmegate_v1_6.sst_ipost.dissect(buffer, index, packet, parent)

  -- Liquid Instrument: F
  index, liquid_instrument = bme_bmeequities_replay_bmegate_v1_6.liquid_instrument.dissect(buffer, index, packet, parent)

  -- Admission Requested By Issuer: F
  index, admission_requested_by_issuer = bme_bmeequities_replay_bmegate_v1_6.admission_requested_by_issuer.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: Q
  index, min_trade_vol = bme_bmeequities_replay_bmegate_v1_6.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Round Lot: Q
  index, round_lot = bme_bmeequities_replay_bmegate_v1_6.round_lot.dissect(buffer, index, packet, parent)

  -- Currency: C
  index, currency = bme_bmeequities_replay_bmegate_v1_6.currency.dissect(buffer, index, packet, parent)

  -- Modality Mask B 4: B
  index, modality_mask_b_4 = bme_bmeequities_replay_bmegate_v1_6.modality_mask_b_4.dissect(buffer, index, packet, parent)

  -- Security Description: C
  index, security_description = bme_bmeequities_replay_bmegate_v1_6.security_description.dissect(buffer, index, packet, parent)

  -- Trading Obligation: F
  index, trading_obligation = bme_bmeequities_replay_bmegate_v1_6.trading_obligation.dissect(buffer, index, packet, parent)

  -- Security Name: C
  index, security_name = bme_bmeequities_replay_bmegate_v1_6.security_name.dissect(buffer, index, packet, parent)

  -- Net Asset Value Identifier: C
  index, net_asset_value_identifier = bme_bmeequities_replay_bmegate_v1_6.net_asset_value_identifier.dissect(buffer, index, packet, parent)

  -- Security Sub Type: C
  index, security_sub_type = bme_bmeequities_replay_bmegate_v1_6.security_sub_type.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: C
  index, maturity_month_year = bme_bmeequities_replay_bmegate_v1_6.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Security Status: C
  index, security_status = bme_bmeequities_replay_bmegate_v1_6.security_status.dissect(buffer, index, packet, parent)

  -- Strike Price: P
  index, strike_price = bme_bmeequities_replay_bmegate_v1_6.strike_price.dissect(buffer, index, packet, parent)

  -- Strike Value: A
  index, strike_value = bme_bmeequities_replay_bmegate_v1_6.strike_value.dissect(buffer, index, packet, parent)

  -- Exercise Style: C
  index, exercise_style = bme_bmeequities_replay_bmegate_v1_6.exercise_style.dissect(buffer, index, packet, parent)

  -- Put Or Call: C
  index, put_or_call = bme_bmeequities_replay_bmegate_v1_6.put_or_call.dissect(buffer, index, packet, parent)

  -- Position Limit: A
  index, position_limit = bme_bmeequities_replay_bmegate_v1_6.position_limit.dissect(buffer, index, packet, parent)

  -- Nt Position Limit: U
  index, nt_position_limit = bme_bmeequities_replay_bmegate_v1_6.nt_position_limit.dissect(buffer, index, packet, parent)

  -- Issuer: C
  index, issuer = bme_bmeequities_replay_bmegate_v1_6.issuer.dissect(buffer, index, packet, parent)

  -- Cp Reg Type: F
  index, cp_reg_type = bme_bmeequities_replay_bmegate_v1_6.cp_reg_type.dissect(buffer, index, packet, parent)

  -- Barrier: P
  index, barrier = bme_bmeequities_replay_bmegate_v1_6.barrier.dissect(buffer, index, packet, parent)

  -- Last Trading Day: D
  index, last_trading_day = bme_bmeequities_replay_bmegate_v1_6.last_trading_day.dissect(buffer, index, packet, parent)

  -- Automatic Expiration: F
  index, automatic_expiration = bme_bmeequities_replay_bmegate_v1_6.automatic_expiration.dissect(buffer, index, packet, parent)

  -- Fee Type: C
  index, fee_type = bme_bmeequities_replay_bmegate_v1_6.fee_type.dissect(buffer, index, packet, parent)

  -- Barrier 2: P
  index, barrier_2 = bme_bmeequities_replay_bmegate_v1_6.barrier_2.dissect(buffer, index, packet, parent)

  -- Trigger Barrier: P
  index, trigger_barrier = bme_bmeequities_replay_bmegate_v1_6.trigger_barrier.dissect(buffer, index, packet, parent)

  -- Trigger Upper Barrier: P
  index, trigger_upper_barrier = bme_bmeequities_replay_bmegate_v1_6.trigger_upper_barrier.dissect(buffer, index, packet, parent)

  -- Average Quarterly Turnover: A
  index, average_quarterly_turnover = bme_bmeequities_replay_bmegate_v1_6.average_quarterly_turnover.dissect(buffer, index, packet, parent)

  -- Trading Scope: B
  index, trading_scope = bme_bmeequities_replay_bmegate_v1_6.trading_scope.dissect(buffer, index, packet, parent)

  -- Sicav Counterparty Member: C
  index, sicav_counterparty_member = bme_bmeequities_replay_bmegate_v1_6.sicav_counterparty_member.dissect(buffer, index, packet, parent)

  -- Net Asset Value Indicator: F
  index, net_asset_value_indicator = bme_bmeequities_replay_bmegate_v1_6.net_asset_value_indicator.dissect(buffer, index, packet, parent)

  -- Reference Trading Venue: C
  index, reference_trading_venue = bme_bmeequities_replay_bmegate_v1_6.reference_trading_venue.dissect(buffer, index, packet, parent)

  -- Outstanding Capital: A
  index, outstanding_capital = bme_bmeequities_replay_bmegate_v1_6.outstanding_capital.dissect(buffer, index, packet, parent)

  -- First Trading Date: D
  index, first_trading_date = bme_bmeequities_replay_bmegate_v1_6.first_trading_date.dissect(buffer, index, packet, parent)

  -- Settlement System: C
  index, settlement_system = bme_bmeequities_replay_bmegate_v1_6.settlement_system.dissect(buffer, index, packet, parent)

  -- Number Of Decimals: U
  index, number_of_decimals = bme_bmeequities_replay_bmegate_v1_6.number_of_decimals.dissect(buffer, index, packet, parent)

  -- Number Of Holders: U
  index, number_of_holders = bme_bmeequities_replay_bmegate_v1_6.number_of_holders.dissect(buffer, index, packet, parent)

  -- Outstanding Shares: Q
  index, outstanding_shares = bme_bmeequities_replay_bmegate_v1_6.outstanding_shares.dissect(buffer, index, packet, parent)

  -- Minimum Authorized Shares: Q
  index, minimum_authorized_shares = bme_bmeequities_replay_bmegate_v1_6.minimum_authorized_shares.dissect(buffer, index, packet, parent)

  -- Minimum Capital: A
  index, minimum_capital = bme_bmeequities_replay_bmegate_v1_6.minimum_capital.dissect(buffer, index, packet, parent)

  -- Last Admission Date: D
  index, last_admission_date = bme_bmeequities_replay_bmegate_v1_6.last_admission_date.dissect(buffer, index, packet, parent)

  -- Barrier Return: P
  index, barrier_return = bme_bmeequities_replay_bmegate_v1_6.barrier_return.dissect(buffer, index, packet, parent)

  -- Investment Fund Manager: C
  index, investment_fund_manager = bme_bmeequities_replay_bmegate_v1_6.investment_fund_manager.dissect(buffer, index, packet, parent)

  -- Effective Amount Filters Routed Orders: A
  index, effective_amount_filters_routed_orders = bme_bmeequities_replay_bmegate_v1_6.effective_amount_filters_routed_orders.dissect(buffer, index, packet, parent)

  -- Order Number Of Decimals: U
  index, order_number_of_decimals = bme_bmeequities_replay_bmegate_v1_6.order_number_of_decimals.dissect(buffer, index, packet, parent)

  -- Investment Fund Class: F
  index, investment_fund_class = bme_bmeequities_replay_bmegate_v1_6.investment_fund_class.dissect(buffer, index, packet, parent)

  -- Master Fund Name: C
  index, master_fund_name = bme_bmeequities_replay_bmegate_v1_6.master_fund_name.dissect(buffer, index, packet, parent)

  -- Investment Fund Management Company: C
  index, investment_fund_management_company = bme_bmeequities_replay_bmegate_v1_6.investment_fund_management_company.dissect(buffer, index, packet, parent)

  -- Investment Fund Depository: C
  index, investment_fund_depository = bme_bmeequities_replay_bmegate_v1_6.investment_fund_depository.dissect(buffer, index, packet, parent)

  -- Investment Fund Category: C
  index, investment_fund_category = bme_bmeequities_replay_bmegate_v1_6.investment_fund_category.dissect(buffer, index, packet, parent)

  -- Investment Fund Minimum Subscription Amount: A
  index, investment_fund_minimum_subscription_amount = bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_subscription_amount.dissect(buffer, index, packet, parent)

  -- Investment Fund Minimum Maintenance Amount: A
  index, investment_fund_minimum_maintenance_amount = bme_bmeequities_replay_bmegate_v1_6.investment_fund_minimum_maintenance_amount.dissect(buffer, index, packet, parent)

  -- Investment Fund Cut Off Time: T
  index, investment_fund_cut_off_time = bme_bmeequities_replay_bmegate_v1_6.investment_fund_cut_off_time.dissect(buffer, index, packet, parent)

  -- Nav Communication Term: C
  index, nav_communication_term = bme_bmeequities_replay_bmegate_v1_6.nav_communication_term.dissect(buffer, index, packet, parent)

  -- Investment Fund Number Of Decimals: U
  index, investment_fund_number_of_decimals = bme_bmeequities_replay_bmegate_v1_6.investment_fund_number_of_decimals.dissect(buffer, index, packet, parent)

  -- Commodity Derivative Indicator: C
  index, commodity_derivative_indicator = bme_bmeequities_replay_bmegate_v1_6.commodity_derivative_indicator.dissect(buffer, index, packet, parent)

  -- Double Volume Cap Reached: F
  index, double_volume_cap_reached = bme_bmeequities_replay_bmegate_v1_6.double_volume_cap_reached.dissect(buffer, index, packet, parent)

  -- Adt: A
  index, adt = bme_bmeequities_replay_bmegate_v1_6.adt.dissect(buffer, index, packet, parent)

  -- Base Product: C
  index, base_product = bme_bmeequities_replay_bmegate_v1_6.base_product.dissect(buffer, index, packet, parent)

  -- Sub Product: C
  index, sub_product = bme_bmeequities_replay_bmegate_v1_6.sub_product.dissect(buffer, index, packet, parent)

  -- Further Sub Product: C
  index, further_sub_product = bme_bmeequities_replay_bmegate_v1_6.further_sub_product.dissect(buffer, index, packet, parent)

  -- Adnt: A
  index, adnt = bme_bmeequities_replay_bmegate_v1_6.adnt.dissect(buffer, index, packet, parent)

  -- Price Tick Rule: U
  index, price_tick_rule = bme_bmeequities_replay_bmegate_v1_6.price_tick_rule.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: C
  index, underlying_symbol = bme_bmeequities_replay_bmegate_v1_6.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Underlying Isin: C
  index, underlying_isin = bme_bmeequities_replay_bmegate_v1_6.underlying_isin.dissect(buffer, index, packet, parent)

  -- Underlying Currency: C
  index, underlying_currency = bme_bmeequities_replay_bmegate_v1_6.underlying_currency.dissect(buffer, index, packet, parent)

  -- Minimum Display Qty: Q
  index, minimum_display_qty = bme_bmeequities_replay_bmegate_v1_6.minimum_display_qty.dissect(buffer, index, packet, parent)

  -- Retail Service Flag: F
  index, retail_service_flag = bme_bmeequities_replay_bmegate_v1_6.retail_service_flag.dissect(buffer, index, packet, parent)

  -- Self Match Prevention: F
  index, self_match_prevention = bme_bmeequities_replay_bmegate_v1_6.self_match_prevention.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security List Message
bme_bmeequities_replay_bmegate_v1_6.security_list_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_list_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.security_list_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.security_list_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.security_list_message.fields(buffer, offset, packet, parent)
  end
end

-- Statistics Message
bme_bmeequities_replay_bmegate_v1_6.statistics_message = {}

-- Size: Statistics Message
bme_bmeequities_replay_bmegate_v1_6.statistics_message.size =
  bme_bmeequities_replay_bmegate_v1_6.sequence_number.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_code.size + 
  bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.size + 
  bme_bmeequities_replay_bmegate_v1_6.data_count.size + 
  bme_bmeequities_replay_bmegate_v1_6.data_code.size

-- Display: Statistics Message
bme_bmeequities_replay_bmegate_v1_6.statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Message
bme_bmeequities_replay_bmegate_v1_6.statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmeequities_replay_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmeequities_replay_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  -- Data Count: U
  index, data_count = bme_bmeequities_replay_bmegate_v1_6.data_count.dissect(buffer, index, packet, parent)

  -- Data Code: C
  index, data_code = bme_bmeequities_replay_bmegate_v1_6.data_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Message
bme_bmeequities_replay_bmegate_v1_6.statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.statistics_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Security List Cancellation Report Message
bme_bmeequities_replay_bmegate_v1_6.security_list_cancellation_report_message = {}

-- Size: Security List Cancellation Report Message
bme_bmeequities_replay_bmegate_v1_6.security_list_cancellation_report_message.size =
  bme_bmeequities_replay_bmegate_v1_6.sequence_number.size + 
  bme_bmeequities_replay_bmegate_v1_6.market_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.market_segment_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.security_code.size + 
  bme_bmeequities_replay_bmegate_v1_6.symbol.size + 
  bme_bmeequities_replay_bmegate_v1_6.symbol_isin.size

-- Display: Security List Cancellation Report Message
bme_bmeequities_replay_bmegate_v1_6.security_list_cancellation_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Cancellation Report Message
bme_bmeequities_replay_bmegate_v1_6.security_list_cancellation_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmeequities_replay_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Market Id: C
  index, market_id = bme_bmeequities_replay_bmegate_v1_6.market_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: C
  index, market_segment_id = bme_bmeequities_replay_bmegate_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Security Code: U
  index, security_code = bme_bmeequities_replay_bmegate_v1_6.security_code.dissect(buffer, index, packet, parent)

  -- Symbol: C
  index, symbol = bme_bmeequities_replay_bmegate_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Isin: C
  index, symbol_isin = bme_bmeequities_replay_bmegate_v1_6.symbol_isin.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security List Cancellation Report Message
bme_bmeequities_replay_bmegate_v1_6.security_list_cancellation_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.security_list_cancellation_report_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.security_list_cancellation_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.security_list_cancellation_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.security_list_cancellation_report_message.fields(buffer, offset, packet, parent)
  end
end

-- News Message
bme_bmeequities_replay_bmegate_v1_6.news_message = {}

-- Size: News Message
bme_bmeequities_replay_bmegate_v1_6.news_message.size =
  bme_bmeequities_replay_bmegate_v1_6.sequence_number.size + 
  bme_bmeequities_replay_bmegate_v1_6.news_text.size

-- Display: News Message
bme_bmeequities_replay_bmegate_v1_6.news_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: News Message
bme_bmeequities_replay_bmegate_v1_6.news_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmeequities_replay_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- News Text: C
  index, news_text = bme_bmeequities_replay_bmegate_v1_6.news_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: News Message
bme_bmeequities_replay_bmegate_v1_6.news_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.news_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.news_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.news_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.news_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Status Message
bme_bmeequities_replay_bmegate_v1_6.trading_session_status_message = {}

-- Size: Trading Session Status Message
bme_bmeequities_replay_bmegate_v1_6.trading_session_status_message.size =
  bme_bmeequities_replay_bmegate_v1_6.sequence_number.size + 
  bme_bmeequities_replay_bmegate_v1_6.trading_session_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.trading_session_sub_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.trad_ses_status.size + 
  bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.size

-- Display: Trading Session Status Message
bme_bmeequities_replay_bmegate_v1_6.trading_session_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
bme_bmeequities_replay_bmegate_v1_6.trading_session_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmeequities_replay_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Trading Session Id: U
  index, trading_session_id = bme_bmeequities_replay_bmegate_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: U
  index, trading_session_sub_id = bme_bmeequities_replay_bmegate_v1_6.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Trad Ses Status: U
  index, trad_ses_status = bme_bmeequities_replay_bmegate_v1_6.trad_ses_status.dissect(buffer, index, packet, parent)

  -- Transaction Date And Time: T
  index, transaction_date_and_time = bme_bmeequities_replay_bmegate_v1_6.transaction_date_and_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Message
bme_bmeequities_replay_bmegate_v1_6.trading_session_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.trading_session_status_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.trading_session_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.trading_session_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.trading_session_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Request Ack Nack Message
bme_bmeequities_replay_bmegate_v1_6.replay_request_ack_nack_message = {}

-- Size: Replay Request Ack Nack Message
bme_bmeequities_replay_bmegate_v1_6.replay_request_ack_nack_message.size =
  bme_bmeequities_replay_bmegate_v1_6.sequence_number.size + 
  bme_bmeequities_replay_bmegate_v1_6.sequence_number_from.size + 
  bme_bmeequities_replay_bmegate_v1_6.sequence_number_to.size + 
  bme_bmeequities_replay_bmegate_v1_6.request_id.size + 
  bme_bmeequities_replay_bmegate_v1_6.status.size

-- Display: Replay Request Ack Nack Message
bme_bmeequities_replay_bmegate_v1_6.replay_request_ack_nack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Request Ack Nack Message
bme_bmeequities_replay_bmegate_v1_6.replay_request_ack_nack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmeequities_replay_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Sequence Number From: U
  index, sequence_number_from = bme_bmeequities_replay_bmegate_v1_6.sequence_number_from.dissect(buffer, index, packet, parent)

  -- Sequence Number To: U
  index, sequence_number_to = bme_bmeequities_replay_bmegate_v1_6.sequence_number_to.dissect(buffer, index, packet, parent)

  -- Request Id: U
  index, request_id = bme_bmeequities_replay_bmegate_v1_6.request_id.dissect(buffer, index, packet, parent)

  -- Status: F
  index, status = bme_bmeequities_replay_bmegate_v1_6.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Request Ack Nack Message
bme_bmeequities_replay_bmegate_v1_6.replay_request_ack_nack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.replay_request_ack_nack_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.replay_request_ack_nack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.replay_request_ack_nack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.replay_request_ack_nack_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Request Message
bme_bmeequities_replay_bmegate_v1_6.replay_request_message = {}

-- Size: Replay Request Message
bme_bmeequities_replay_bmegate_v1_6.replay_request_message.size =
  bme_bmeequities_replay_bmegate_v1_6.sequence_number_from.size + 
  bme_bmeequities_replay_bmegate_v1_6.sequence_number_to.size

-- Display: Replay Request Message
bme_bmeequities_replay_bmegate_v1_6.replay_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Request Message
bme_bmeequities_replay_bmegate_v1_6.replay_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number From: U
  index, sequence_number_from = bme_bmeequities_replay_bmegate_v1_6.sequence_number_from.dissect(buffer, index, packet, parent)

  -- Sequence Number To: U
  index, sequence_number_to = bme_bmeequities_replay_bmegate_v1_6.sequence_number_to.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Request Message
bme_bmeequities_replay_bmegate_v1_6.replay_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.replay_request_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.replay_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.replay_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.replay_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Reject Message
bme_bmeequities_replay_bmegate_v1_6.reject_message = {}

-- Size: Reject Message
bme_bmeequities_replay_bmegate_v1_6.reject_message.size =
  bme_bmeequities_replay_bmegate_v1_6.sequence_number.size + 
  bme_bmeequities_replay_bmegate_v1_6.session_reject_reason.size + 
  bme_bmeequities_replay_bmegate_v1_6.text.size + 
  bme_bmeequities_replay_bmegate_v1_6.msg_rejected_reference.size

-- Display: Reject Message
bme_bmeequities_replay_bmegate_v1_6.reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject Message
bme_bmeequities_replay_bmegate_v1_6.reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmeequities_replay_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Session Reject Reason: U
  index, session_reject_reason = bme_bmeequities_replay_bmegate_v1_6.session_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: C
  index, text = bme_bmeequities_replay_bmegate_v1_6.text.dissect(buffer, index, packet, parent)

  -- Msg Rejected Reference: (raw data)
  index, msg_rejected_reference = bme_bmeequities_replay_bmegate_v1_6.msg_rejected_reference.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject Message
bme_bmeequities_replay_bmegate_v1_6.reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.reject_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Logout Message
bme_bmeequities_replay_bmegate_v1_6.logout_message = {}

-- Display: Logout Message
bme_bmeequities_replay_bmegate_v1_6.logout_message.display = function(packet, parent, length)
  return "Logout Message"
end


-- Dissect: Logout Message
bme_bmeequities_replay_bmegate_v1_6.logout_message.dissect = function(buffer, offset, packet, parent)
  local display = bme_bmeequities_replay_bmegate_v1_6.logout_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logon Message
bme_bmeequities_replay_bmegate_v1_6.logon_message = {}

-- Size: Logon Message
bme_bmeequities_replay_bmegate_v1_6.logon_message.size =
  bme_bmeequities_replay_bmegate_v1_6.username.size + 
  bme_bmeequities_replay_bmegate_v1_6.password.size + 
  bme_bmeequities_replay_bmegate_v1_6.software_name.size + 
  bme_bmeequities_replay_bmegate_v1_6.expected_sequence_number.size + 
  bme_bmeequities_replay_bmegate_v1_6.subscriptions.size + 
  bme_bmeequities_replay_bmegate_v1_6.protocol_version.size

-- Display: Logon Message
bme_bmeequities_replay_bmegate_v1_6.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
bme_bmeequities_replay_bmegate_v1_6.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: C
  index, username = bme_bmeequities_replay_bmegate_v1_6.username.dissect(buffer, index, packet, parent)

  -- Password: C
  index, password = bme_bmeequities_replay_bmegate_v1_6.password.dissect(buffer, index, packet, parent)

  -- Software Name: C
  index, software_name = bme_bmeequities_replay_bmegate_v1_6.software_name.dissect(buffer, index, packet, parent)

  -- Expected Sequence Number: U
  index, expected_sequence_number = bme_bmeequities_replay_bmegate_v1_6.expected_sequence_number.dissect(buffer, index, packet, parent)

  -- Subscriptions: B
  index, subscriptions = bme_bmeequities_replay_bmegate_v1_6.subscriptions.dissect(buffer, index, packet, parent)

  -- Protocol Version: C
  index, protocol_version = bme_bmeequities_replay_bmegate_v1_6.protocol_version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
bme_bmeequities_replay_bmegate_v1_6.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.logon_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Network Status Message
bme_bmeequities_replay_bmegate_v1_6.network_status_message = {}

-- Size: Network Status Message
bme_bmeequities_replay_bmegate_v1_6.network_status_message.size =
  bme_bmeequities_replay_bmegate_v1_6.sequence_number.size + 
  bme_bmeequities_replay_bmegate_v1_6.network_status_value.size

-- Display: Network Status Message
bme_bmeequities_replay_bmegate_v1_6.network_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Network Status Message
bme_bmeequities_replay_bmegate_v1_6.network_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmeequities_replay_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Network Status Value: U
  index, network_status_value = bme_bmeequities_replay_bmegate_v1_6.network_status_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Network Status Message
bme_bmeequities_replay_bmegate_v1_6.network_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.network_status_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.network_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.network_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.network_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
bme_bmeequities_replay_bmegate_v1_6.heartbeat_message = {}

-- Size: Heartbeat Message
bme_bmeequities_replay_bmegate_v1_6.heartbeat_message.size =
  bme_bmeequities_replay_bmegate_v1_6.sequence_number.size

-- Display: Heartbeat Message
bme_bmeequities_replay_bmegate_v1_6.heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Message
bme_bmeequities_replay_bmegate_v1_6.heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmeequities_replay_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Message
bme_bmeequities_replay_bmegate_v1_6.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.heartbeat_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Logout Response Message
bme_bmeequities_replay_bmegate_v1_6.logout_response_message = {}

-- Size: Logout Response Message
bme_bmeequities_replay_bmegate_v1_6.logout_response_message.size =
  bme_bmeequities_replay_bmegate_v1_6.sequence_number.size + 
  bme_bmeequities_replay_bmegate_v1_6.logout_reason.size

-- Display: Logout Response Message
bme_bmeequities_replay_bmegate_v1_6.logout_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Response Message
bme_bmeequities_replay_bmegate_v1_6.logout_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmeequities_replay_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Logout Reason: U
  index, logout_reason = bme_bmeequities_replay_bmegate_v1_6.logout_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Response Message
bme_bmeequities_replay_bmegate_v1_6.logout_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.logout_response_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.logout_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.logout_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.logout_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Response Message
bme_bmeequities_replay_bmegate_v1_6.logon_response_message = {}

-- Size: Logon Response Message
bme_bmeequities_replay_bmegate_v1_6.logon_response_message.size =
  bme_bmeequities_replay_bmegate_v1_6.sequence_number.size + 
  bme_bmeequities_replay_bmegate_v1_6.heart_bt_int.size + 
  bme_bmeequities_replay_bmegate_v1_6.protocol_version.size + 
  bme_bmeequities_replay_bmegate_v1_6.test_production_ind.size + 
  bme_bmeequities_replay_bmegate_v1_6.environment_code.size + 
  bme_bmeequities_replay_bmegate_v1_6.session_date.size + 
  bme_bmeequities_replay_bmegate_v1_6.expected_sequence_number.size + 
  bme_bmeequities_replay_bmegate_v1_6.sequence_number_to.size

-- Display: Logon Response Message
bme_bmeequities_replay_bmegate_v1_6.logon_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Response Message
bme_bmeequities_replay_bmegate_v1_6.logon_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: U
  index, sequence_number = bme_bmeequities_replay_bmegate_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Heart Bt Int: U
  index, heart_bt_int = bme_bmeequities_replay_bmegate_v1_6.heart_bt_int.dissect(buffer, index, packet, parent)

  -- Protocol Version: C
  index, protocol_version = bme_bmeequities_replay_bmegate_v1_6.protocol_version.dissect(buffer, index, packet, parent)

  -- Test Production Ind: C
  index, test_production_ind = bme_bmeequities_replay_bmegate_v1_6.test_production_ind.dissect(buffer, index, packet, parent)

  -- Environment Code: C
  index, environment_code = bme_bmeequities_replay_bmegate_v1_6.environment_code.dissect(buffer, index, packet, parent)

  -- Session Date: D
  index, session_date = bme_bmeequities_replay_bmegate_v1_6.session_date.dissect(buffer, index, packet, parent)

  -- Expected Sequence Number: U
  index, expected_sequence_number = bme_bmeequities_replay_bmegate_v1_6.expected_sequence_number.dissect(buffer, index, packet, parent)

  -- Sequence Number To: U
  index, sequence_number_to = bme_bmeequities_replay_bmegate_v1_6.sequence_number_to.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Response Message
bme_bmeequities_replay_bmegate_v1_6.logon_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.logon_response_message, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.logon_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.logon_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.logon_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
bme_bmeequities_replay_bmegate_v1_6.payload = {}

-- Dissect: Payload
bme_bmeequities_replay_bmegate_v1_6.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Logon Response Message
  if message_type == 0x08 then
    return bme_bmeequities_replay_bmegate_v1_6.logon_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Response Message
  if message_type == 0x0B then
    return bme_bmeequities_replay_bmegate_v1_6.logout_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if message_type == 0x30 then
    return bme_bmeequities_replay_bmegate_v1_6.heartbeat_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Network Status Message
  if message_type == 0x0A then
    return bme_bmeequities_replay_bmegate_v1_6.network_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Message
  if message_type == 0x41 then
    return bme_bmeequities_replay_bmegate_v1_6.logon_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if message_type == 0x35 then
    return bme_bmeequities_replay_bmegate_v1_6.logout_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reject Message
  if message_type == 0x0D then
    return bme_bmeequities_replay_bmegate_v1_6.reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Request Message
  if message_type == 0x09 then
    return bme_bmeequities_replay_bmegate_v1_6.replay_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Request Ack Nack Message
  if message_type == 0x0C then
    return bme_bmeequities_replay_bmegate_v1_6.replay_request_ack_nack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Status Message
  if message_type == 0x68 then
    return bme_bmeequities_replay_bmegate_v1_6.trading_session_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect News Message
  if message_type == 0x42 then
    return bme_bmeequities_replay_bmegate_v1_6.news_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security List Cancellation Report Message
  if message_type == 0x78 then
    return bme_bmeequities_replay_bmegate_v1_6.security_list_cancellation_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Message
  if message_type == 0x84 then
    return bme_bmeequities_replay_bmegate_v1_6.statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security List Message
  if message_type == 0x79 then
    return bme_bmeequities_replay_bmegate_v1_6.security_list_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security List Update Report Message
  if message_type == 0x80 then
    return bme_bmeequities_replay_bmegate_v1_6.security_list_update_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 0x66 then
    return bme_bmeequities_replay_bmegate_v1_6.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Clear Message
  if message_type == 0x81 then
    return bme_bmeequities_replay_bmegate_v1_6.order_book_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Market Pre Transparency Information Message
  if message_type == 0x03 then
    return bme_bmeequities_replay_bmegate_v1_6.order_market_pre_transparency_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Market Pre Transparency Information Message
  if message_type == 0x07 then
    return bme_bmeequities_replay_bmegate_v1_6.quote_market_pre_transparency_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancellation Market Member Message
  if message_type == 0x01 then
    return bme_bmeequities_replay_bmegate_v1_6.order_cancellation_market_member_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Cancellation Market Member Message
  if message_type == 0x05 then
    return bme_bmeequities_replay_bmegate_v1_6.quote_cancellation_market_member_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Market Post Transparency Information Topofbook Message
  if message_type == 0x10 then
    return bme_bmeequities_replay_bmegate_v1_6.trade_market_post_transparency_information_topofbook_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Trade Amendment Or Cancellation Message
  if message_type == 0x18 then
    return bme_bmeequities_replay_bmegate_v1_6.trade_trade_amendment_or_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Market Post Transparency Information Full Depth Message
  if message_type == 0x11 then
    return bme_bmeequities_replay_bmegate_v1_6.trade_market_post_transparency_information_full_depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Topofbook Message
  if message_type == 0x82 then
    return bme_bmeequities_replay_bmegate_v1_6.topofbook_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
bme_bmeequities_replay_bmegate_v1_6.message_header = {}

-- Size: Message Header
bme_bmeequities_replay_bmegate_v1_6.message_header.size =
  bme_bmeequities_replay_bmegate_v1_6.message_size.size + 
  bme_bmeequities_replay_bmegate_v1_6.message_type.size

-- Display: Message Header
bme_bmeequities_replay_bmegate_v1_6.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
bme_bmeequities_replay_bmegate_v1_6.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: U
  index, message_size = bme_bmeequities_replay_bmegate_v1_6.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: U
  index, message_type = bme_bmeequities_replay_bmegate_v1_6.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
bme_bmeequities_replay_bmegate_v1_6.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.message_header, buffer(offset, 0))
    local index = bme_bmeequities_replay_bmegate_v1_6.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bme_bmeequities_replay_bmegate_v1_6.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bme_bmeequities_replay_bmegate_v1_6.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
bme_bmeequities_replay_bmegate_v1_6.message = {}

-- Display: Message
bme_bmeequities_replay_bmegate_v1_6.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
bme_bmeequities_replay_bmegate_v1_6.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = bme_bmeequities_replay_bmegate_v1_6.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 25 branches
  index = bme_bmeequities_replay_bmegate_v1_6.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
bme_bmeequities_replay_bmegate_v1_6.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6.fields.message, buffer(offset, 0))
    local current = bme_bmeequities_replay_bmegate_v1_6.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = bme_bmeequities_replay_bmegate_v1_6.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bme_bmeequities_replay_bmegate_v1_6.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Packet
bme_bmeequities_replay_bmegate_v1_6.packet = {}

-- Verify required size of Tcp packet
bme_bmeequities_replay_bmegate_v1_6.packet.requiredsize = function(buffer)
  return buffer:len() >= bme_bmeequities_replay_bmegate_v1_6.message_header.size
end

-- Dissect Packet
bme_bmeequities_replay_bmegate_v1_6.packet.dissect = function(buffer, packet, parent)
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
    index, message = bme_bmeequities_replay_bmegate_v1_6.message.dissect(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_bme_bmeequities_replay_bmegate_v1_6.init()
end

-- Dissector for Bme BmeEquities Replay BmeGate 1.6
function omi_bme_bmeequities_replay_bmegate_v1_6.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_bme_bmeequities_replay_bmegate_v1_6.name

  -- Dissect protocol
  local protocol = parent:add(omi_bme_bmeequities_replay_bmegate_v1_6, buffer(), omi_bme_bmeequities_replay_bmegate_v1_6.description, "("..buffer:len().." Bytes)")
  return bme_bmeequities_replay_bmegate_v1_6.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Bme BmeEquities Replay BmeGate 1.6 (Tcp)
local function omi_bme_bmeequities_replay_bmegate_v1_6_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bme_bmeequities_replay_bmegate_v1_6.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bme_bmeequities_replay_bmegate_v1_6
  omi_bme_bmeequities_replay_bmegate_v1_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Bme BmeEquities Replay BmeGate 1.6
omi_bme_bmeequities_replay_bmegate_v1_6:register_heuristic("tcp", omi_bme_bmeequities_replay_bmegate_v1_6_tcp_heuristic)

-- Register Bme BmeEquities Replay BmeGate 1.6 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_bme_bmeequities_replay_bmegate_v1_6)

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
