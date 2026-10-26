-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Hkex HkexSecurities FullTickRetrans Omd 1.45 Protocol
local omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45 = Proto("Omi.Hkex.HkexSecurities.FullTickRetrans.Omd.v1.45", "Hkex HkexSecurities FullTickRetrans Omd 1.45")

-- Protocol table
local hkex_hkexsecurities_fulltickretrans_omd_v1_45 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Hkex HkexSecurities FullTickRetrans Omd 1.45 Fields
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.accrued_interest = ProtoField.new("Accrued Interest", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.accruedinterest", ftypes.DOUBLE, nil, nil, nil, "Accrued interest of the security. 3 implied decimal places.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.aggregate_quantity = ProtoField.new("Aggregate Quantity", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.aggregatequantity", ftypes.UINT64, nil, nil, nil, "IEV.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.beginseqnum", ftypes.UINT32, nil, nil, nil, "Beginning of sequence.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.bond_maturity_date = ProtoField.new("Bond Maturity Date", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.bondmaturitydate", ftypes.UINT32, nil, nil, nil, "Date of maturity of a bond security. YYYYMMDD.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.call_price = ProtoField.new("Call Price", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.callprice", ftypes.INT32, nil, nil, nil, "Call price for CBBC. See DecimalsInCallPrice for the number of decimal places. 0 means Not available.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.call_price_composite = ProtoField.new("Call Price Composite", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.callpricecomposite", ftypes.STRING, nil, nil, nil, "CBBC call price scaled at runtime by DecimalsInCallPrice. 0 mantissa means Not available.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.call_put_flag = ProtoField.new("Call Put Flag", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.callputflag", ftypes.STRING, nil, nil, nil, "Indicator of whether the warrant or structured product is a call or put option.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.cas_flag = ProtoField.new("Cas Flag", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.casflag", ftypes.STRING, nil, nil, nil, "Indicates whether Closing Auction Session (CAS) is applicable to the security.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.ccass_flag = ProtoField.new("Ccass Flag", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.ccassflag", ftypes.STRING, nil, nil, nil, "Indicates whether or not the security is a CCASS security.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.channel_id = ProtoField.new("Channel Id", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.channelid", ftypes.UINT16, nil, nil, nil, "Multicast Channel ID with which the retransmission relates.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.conversion_ratio = ProtoField.new("Conversion Ratio", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.conversionratio", ftypes.DOUBLE, nil, nil, nil, "Conversion ratio for Structured Product. 3 implied decimal places. 0 means Not available.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.cooling_off_end_time = ProtoField.new("Cooling Off End Time", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.coolingoffendtime", ftypes.UINT64, nil, nil, nil, "Time when the cooling off period ends. Nanoseconds since Unix epoch UTC, precision to the nearest second.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.cooling_off_start_time = ProtoField.new("Cooling Off Start Time", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.coolingoffstarttime", ftypes.UINT64, nil, nil, nil, "Time when the cooling off period starts. Nanoseconds since Unix epoch UTC, precision to the nearest second.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.coupon_rate = ProtoField.new("Coupon Rate", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.couponrate", ftypes.DOUBLE, nil, nil, nil, "Coupon rate of a bond security. 3 implied decimal places.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.currency_code = ProtoField.new("Currency Code", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.currencycode", ftypes.STRING, nil, nil, nil, "Base currency code of the market segment.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.currency_factor = ProtoField.new("Currency Factor", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.currencyfactor", ftypes.UINT16, nil, nil, nil, "Currency factor conversion. A non-zero value n means all price fields for this security should be interpreted as a value equal to the price multiplied by 10^n.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.currency_rate = ProtoField.new("Currency Rate", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.currencyrate", ftypes.UINT32, nil, nil, nil, "Rate, expressed in HKD for one foreign currency unit. 4 decimals implied.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.decimals_in_call_price = ProtoField.new("Decimals In Call Price", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.decimalsincallprice", ftypes.UINT8, nil, nil, nil, "Number of decimal places in CallPrice. Not applicable if CallPrice = 0.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.decimals_in_entitlement = ProtoField.new("Decimals In Entitlement", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.decimalsinentitlement", ftypes.UINT8, nil, nil, nil, "Number of decimal places in Entitlement. Not applicable if Entitlement = 0.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.decimals_in_face_value = ProtoField.new("Decimals In Face Value", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.decimalsinfacevalue", ftypes.UINT8, nil, nil, nil, "Number of decimal places in FaceValue. Not applicable if FaceValue = 0.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.delisting_date = ProtoField.new("Delisting Date", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.delistingdate", ftypes.UINT32, nil, nil, nil, "Date of security delisting. YYYYMMDD. Value is 0 if no date exists.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.domain_stmt_security_code = ProtoField.new("Domain Stmt Security Code", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.domainstmtsecuritycode", ftypes.UINT32, nil, nil, nil, "Security code of the corresponding Domain Settlement Counter. Value is 0 if the security itself is already the domain settlement counter.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.dr_status = ProtoField.new("Dr Status", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.drstatus", ftypes.UINT32, nil, nil, nil, "Status during site failover.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.dummy_security_flag = ProtoField.new("Dummy Security Flag", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.dummysecurityflag", ftypes.STRING, nil, nil, nil, "Dummy Security Flag.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.efn_flag = ProtoField.new("Efn Flag", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.efnflag", ftypes.STRING, nil, nil, nil, "EFN Indicator (Bonds Specific Data).")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.end_date_time = ProtoField.new("End Date Time", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.enddatetime", ftypes.UINT64, nil, nil, nil, "End time of the trading status. Nanoseconds since Unix epoch UTC, precision to the nearest second. 0 if no time is available.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.end_seq_num = ProtoField.new("End Seq Num", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.endseqnum", ftypes.UINT32, nil, nil, nil, "Message sequence number of last message in range to be resent.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.entitlement = ProtoField.new("Entitlement", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.entitlement", ftypes.INT32, nil, nil, nil, "Entitlement of the warrant. See DecimalsInEntitlement for the number of decimal places. 0 means Not available.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.entitlement_composite = ProtoField.new("Entitlement Composite", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.entitlementcomposite", ftypes.STRING, nil, nil, nil, "Warrant entitlement scaled at runtime by DecimalsInEntitlement. 0 mantissa means Not available.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.face_value = ProtoField.new("Face Value", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.facevalue", ftypes.UINT64, nil, nil, nil, "Face value of a bond security. See DecimalsInFaceValue for the number of decimal places. 0 means Not available.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.face_value_composite = ProtoField.new("Face Value Composite", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.facevaluecomposite", ftypes.STRING, nil, nil, nil, "Bond face value scaled at runtime by DecimalsInFaceValue. 0 mantissa means Not available.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.face_value_currency = ProtoField.new("Face Value Currency", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.facevaluecurrency", ftypes.STRING, nil, nil, nil, "Currency code of Face Value.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.filler = ProtoField.new("Filler", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.filler", ftypes.BYTES, nil, nil, nil, "Reserved filler byte (OMD does not use payload compression)")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.filler_1 = ProtoField.new("Filler 1", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.filler1", ftypes.BYTES, nil, nil, nil, "Padding.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.filler_2 = ProtoField.new("Filler 2", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.filler2", ftypes.BYTES, nil, nil, nil, "Padding.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.filler_3 = ProtoField.new("Filler 3", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.filler3", ftypes.BYTES, nil, nil, nil, "Padding.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.filler_37 = ProtoField.new("Filler 37", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.filler37", ftypes.BYTES, nil, nil, nil, "Padding.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.filler_4 = ProtoField.new("Filler 4", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.filler4", ftypes.BYTES, nil, nil, nil, "Padding.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.filler_44 = ProtoField.new("Filler 44", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.filler44", ftypes.BYTES, nil, nil, nil, "Padding.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.filler_62 = ProtoField.new("Filler 62", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.filler62", ftypes.BYTES, nil, nil, nil, "Padding.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.filler_63 = ProtoField.new("Filler 63", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.filler63", ftypes.BYTES, nil, nil, nil, "Padding.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.fourth_filler_1 = ProtoField.new("Fourth Filler 1", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.fourthfiller1", ftypes.BYTES, nil, nil, nil, "Padding.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.free_text = ProtoField.new("Free Text", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.freetext", ftypes.STRING, nil, nil, nil, "Free text associated to the security. When there is no free text, spaces are present instead.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.instrument_type = ProtoField.new("Instrument Type", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.instrumenttype", ftypes.STRING, nil, nil, nil, "Instrument type of the security.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.investor_type = ProtoField.new("Investor Type", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.investortype", ftypes.STRING, nil, nil, nil, "Investor type of a bond security.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.isin_code = ProtoField.new("Isin Code", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.isincode", ftypes.STRING, nil, nil, nil, "ISIN code of the security.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.last_seq_num = ProtoField.new("Last Seq Num", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.lastseqnum", ftypes.UINT32, nil, nil, nil, "Sequence number with which the refresh is synchronized.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.liquidity_provider = ProtoField.new("Liquidity Provider", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.liquidityprovider", ftypes.STRING, nil, nil, nil, "Repeating group of liquidity providers.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.listing_date = ProtoField.new("Listing Date", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.listingdate", ftypes.UINT32, nil, nil, nil, "Date of security listing. YYYYMMDD. Value is 19000101 for unknown listing date.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.lot_size = ProtoField.new("Lot Size", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.lotsize", ftypes.UINT32, nil, nil, nil, "Board lot size for the security.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.lower_price = ProtoField.new("Lower Price", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.lowerprice", ftypes.DOUBLE, nil, nil, nil, "Lower price limit of at-auction Limit sell order in POS No Cancellation and Random Matching periods, or lower price of the allowed price band in CAS. 3 implied decimal places. 0 means Not available.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.lp_broker_number = ProtoField.new("Lp Broker Number", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.lpbrokernumber", ftypes.UINT16, nil, nil, nil, "Broker number of the liquidity provider.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.market_code = ProtoField.new("Market Code", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.marketcode", ftypes.STRING, nil, nil, nil, "Market segment identifier.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.market_name = ProtoField.new("Market Name", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.marketname", ftypes.STRING, nil, nil, nil, "Market segment name.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.msg_count = ProtoField.new("Msg Count", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.msgcount", ftypes.UINT8, nil, nil, nil, "Number of messages included in the packet")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.msg_size = ProtoField.new("Msg Size", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.msgsize", ftypes.UINT16, nil, nil, nil, "Length of the message including this field")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.msg_type = ProtoField.new("Msg Type", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.msgtype", ftypes.UINT16, nil, nil, nil, "Code identifying this message type")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.new_seq_no = ProtoField.new("New Seq No", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.newseqno", ftypes.UINT32, nil, nil, nil, "New sequence number. Always set to 1.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.no_liquidity_providers = ProtoField.new("No Liquidity Providers", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.noliquidityproviders", ftypes.UINT16, nil, nil, nil, "Number of liquidity providers within this message. 1 to 50.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.no_underlying_securities = ProtoField.new("No Underlying Securities", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.nounderlyingsecurities", ftypes.UINT16, nil, nil, nil, "Number of underlying securities if the underlying security is defined in Security Definition (11) message. 0 for structured product of which the underlying is not a security defined in Security Definition, 1 for structured product of which the underlying is defined.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.no_warrants_per_entitlement = ProtoField.new("No Warrants Per Entitlement", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.nowarrantsperentitlement", ftypes.UINT32, nil, nil, nil, "Number of warrants per entitlement. Not applicable if Entitlement = 0.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.number_of_securities = ProtoField.new("Number Of Securities", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.numberofsecurities", ftypes.UINT32, nil, nil, nil, "Number of securities within the market segment.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.order_book_position = ProtoField.new("Order Book Position", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.orderbookposition", ftypes.INT32, nil, nil, nil, "Order rank information for the order position within the order book for each security.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.order_id = ProtoField.new("Order Id", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.orderid", ftypes.UINT64, nil, nil, nil, "Unique identifier for each order performed within the trading day. Values may not be consecutive.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.order_imbalance_direction = ProtoField.new("Order Imbalance Direction", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.orderimbalancedirection", ftypes.STRING, nil, nil, nil, "Indicates the imbalance direction when the matchable buy quantity and sell quantity at IEP are not equal.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.order_imbalance_quantity = ProtoField.new("Order Imbalance Quantity", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.orderimbalancequantity", ftypes.UINT64, nil, nil, nil, "The absolute difference between the matchable buy quantity and sell quantity at IEP. Value should be ignored if Order Imbalance Direction is space.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.order_type = ProtoField.new("Order Type", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.ordertype", ftypes.STRING, nil, nil, nil, "Order type.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.pkt_size = ProtoField.new("Pkt Size", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.pktsize", ftypes.UINT16, nil, nil, nil, "Size of the packet including this field")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.pos_flag = ProtoField.new("Pos Flag", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.posflag", ftypes.STRING, nil, nil, nil, "Indicates whether Pre-Opening Session (POS) is applicable to the security.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.pos_lower_limit = ProtoField.new("Pos Lower Limit", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.poslowerlimit", ftypes.DOUBLE, nil, nil, nil, "Lower price limit of all orders in POS Order Input period, and At-auction Limit buy order in POS No Cancellation and Random Matching periods. 3 implied decimal places. 0 means Not available.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.pos_upper_limit = ProtoField.new("Pos Upper Limit", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.posupperlimit", ftypes.DOUBLE, nil, nil, nil, "Upper price limit of all orders in POS Order Input period, and At-auction Limit sell order in POS No Cancellation and Random Matching periods. 3 implied decimal places. 0 means Not available.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.previous_closing_price = ProtoField.new("Previous Closing Price", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.previousclosingprice", ftypes.DOUBLE, nil, nil, nil, "Previous closing price of the security, or NAV published by issuer for ETF or L&I Product on the trading day before its first day listing. 3 implied decimal places.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.price = ProtoField.new("Price", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.price", ftypes.DOUBLE, nil, nil, nil, "Price. 3 implied decimal places.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.product_type = ProtoField.new("Product Type", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.producttype", ftypes.UINT8, nil, nil, nil, "Product type of the security.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.quantity = ProtoField.new("Quantity", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.quantity", ftypes.UINT32, nil, nil, nil, "Number of shares.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.reference_price = ProtoField.new("Reference Price", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.referenceprice", ftypes.DOUBLE, nil, nil, nil, "Reference price of the security for order input in POS and CAS. 3 implied decimal places. 0 if the reference price is not available.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.retrans_status = ProtoField.new("Retrans Status", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.retransstatus", ftypes.UINT8, nil, nil, nil, "Status of the Retransmission response.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.second_filler_1 = ProtoField.new("Second Filler 1", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.secondfiller1", ftypes.BYTES, nil, nil, nil, "Padding.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.security_code = ProtoField.new("Security Code", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.securitycode", ftypes.UINT32, nil, nil, nil, "Uniquely identifies a security available for trading. 5 digit security codes with possible values 1 to 99999.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.security_name_gb = ProtoField.new("Security Name Gb", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.securitynamegb", ftypes.BYTES, nil, nil, nil, "Security name in Simplified Chinese using Unicode UTF-16LE encoding.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.security_name_gccs = ProtoField.new("Security Name Gccs", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.securitynamegccs", ftypes.BYTES, nil, nil, nil, "Security name in Traditional Chinese using Unicode UTF-16LE encoding.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.security_short_name = ProtoField.new("Security Short Name", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.securityshortname", ftypes.STRING, nil, nil, nil, "Security short name.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.send_time = ProtoField.new("Send Time", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.sendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Send time field — set to 0 on Tcp retrans per §3.5")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.send_time_utc = ProtoField.new("Send Time", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.sendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Send time field — set to 0 on Tcp retrans per §3.5")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.seq_num = ProtoField.new("Seq Num", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.seqnum", ftypes.UINT32, nil, nil, nil, "Sequence number field — set to 0 on Tcp retrans per §3.5")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.session_status = ProtoField.new("Session Status", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.sessionstatus", ftypes.UINT8, nil, nil, nil, "Status of the session.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.short_sell_flag = ProtoField.new("Short Sell Flag", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.shortsellflag", ftypes.STRING, nil, nil, nil, "Indicator for short-sell authorization.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.side = ProtoField.new("Side", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.side", ftypes.UINT16, nil, nil, nil, "Side of the order.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.spread_table_code = ProtoField.new("Spread Table Code", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.spreadtablecode", ftypes.STRING, nil, nil, nil, "Spread table code of the security.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.stamp_duty_flag = ProtoField.new("Stamp Duty Flag", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.stampdutyflag", ftypes.STRING, nil, nil, nil, "Indicator for stamp duty requirement.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.start_date_time = ProtoField.new("Start Date Time", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.startdatetime", ftypes.UINT64, nil, nil, nil, "Start time of the trading status. Nanoseconds since Unix epoch UTC, precision to the nearest second. 0 if no time is available.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.strike_price_1 = ProtoField.new("Strike Price 1", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.strikeprice1", ftypes.DOUBLE, nil, nil, nil, "Strike price of the security if it has only one strike price, or Lower strike price of the security if it has lower and upper strike prices. 3 implied decimal places.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.strike_price_2 = ProtoField.new("Strike Price 2", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.strikeprice2", ftypes.DOUBLE, nil, nil, nil, "Upper strike price of the security if it has lower and upper strike prices. 3 implied decimal places. Value is 0 if the security has only one strike price.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.style = ProtoField.new("Style", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.style", ftypes.STRING, nil, nil, nil, "Style of the warrant.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.suspension_indicator = ProtoField.new("Suspension Indicator", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.suspensionindicator", ftypes.UINT8, nil, nil, nil, "Indicate whether the security is currently halted/suspended for trading. 'Resume' means the security is now available for trading.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.third_filler_1 = ProtoField.new("Third Filler 1", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.thirdfiller1", ftypes.BYTES, nil, nil, nil, "Padding.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.trade_id = ProtoField.new("Trade Id", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.tradeid", ftypes.UINT32, nil, nil, nil, "Unique identifier per security for each trade performed within the trading system. Starting from 1, incrementing by 1. Reset for each trading day.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.trade_time = ProtoField.new("Trade Time", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.tradetime", ftypes.UINT64, nil, nil, nil, "Time of trade. Nanoseconds since Unix epoch UTC. Precision to microsecond.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.trading_ses_control_flag = ProtoField.new("Trading Ses Control Flag", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.tradingsescontrolflag", ftypes.STRING, nil, nil, nil, "Indicates how control of trading session and sub-session transitions are performed.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.trading_ses_status = ProtoField.new("Trading Ses Status", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.tradingsesstatus", ftypes.UINT8, nil, nil, nil, "Status of the current trading session.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.tradingsessionsubid", ftypes.UINT8, nil, nil, nil, "Trading session sub-identifier.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.trd_type = ProtoField.new("Trd Type", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.trdtype", ftypes.INT16, nil, nil, nil, "Public trade type.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.underlying_security = ProtoField.new("Underlying Security", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.underlyingsecurity", ftypes.STRING, nil, nil, nil, "Repeating group of underlying security references.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.underlying_security_code = ProtoField.new("Underlying Security Code", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.underlyingsecuritycode", ftypes.UINT32, nil, nil, nil, "5-digit code identifying the underlying security.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.upper_price = ProtoField.new("Upper Price", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.upperprice", ftypes.DOUBLE, nil, nil, nil, "Upper price limit of at-auction Limit buy order in POS No Cancellation and Random Matching periods, or upper price of the allowed price band in CAS. 3 implied decimal places. 0 means Not available.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.username = ProtoField.new("Username", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.username", ftypes.STRING, nil, nil, nil, "Username to log on, padded with binary null characters.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.vcm_flag = ProtoField.new("Vcm Flag", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.vcmflag", ftypes.STRING, nil, nil, nil, "Indicates whether Volatility Control Mechanism (VCM) is applicable to the security.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.vcm_lower_price = ProtoField.new("Vcm Lower Price", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.vcmlowerprice", ftypes.DOUBLE, nil, nil, nil, "Lower price in the price band allowed during the cooling off period. 3 implied decimal places.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.vcm_reference_price = ProtoField.new("Vcm Reference Price", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.vcmreferenceprice", ftypes.DOUBLE, nil, nil, nil, "Reference Price for the cooling off period. 3 implied decimal places.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.vcm_upper_price = ProtoField.new("Vcm Upper Price", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.vcmupperprice", ftypes.DOUBLE, nil, nil, nil, "Upper price in the price band allowed during the cooling off period. 3 implied decimal places.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.warrant_maturity_date = ProtoField.new("Warrant Maturity Date", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.warrantmaturitydate", ftypes.UINT32, nil, nil, nil, "Date of maturity of a bond security. YYYYMMDD.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.warrant_type = ProtoField.new("Warrant Type", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.warranttype", ftypes.STRING, nil, nil, nil, "Warrant type of the warrant.")

-- Hkex HkexSecurities FullTickRetrans Omd 1.45 Framing
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.message = ProtoField.new("Message", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.message", ftypes.STRING)
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.msg_header = ProtoField.new("Msg Header", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.msgheader", ftypes.STRING, nil, nil, nil, "Omd message header")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.packet = ProtoField.new("Packet", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.packet", ftypes.STRING, nil, nil, nil, "Omd Tcp Packet")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.packet_header = ProtoField.new("Packet Header", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.packetheader", ftypes.STRING, nil, nil, nil, "Omd packet header (byte-identical to the Udp form; SeqNum and SendTime set to 0 on Tcp per §3.5)")

-- Hkex HkexSecurities FullTickRetrans 1.45 Application Messages
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.add_order_message = ProtoField.new("Add Order Message", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.addordermessage", ftypes.STRING, nil, nil, nil, "The Add Order message is generated when a new order is inserted into the order book. The OrderId is unique per security but will not increment consecutively. Note for Securities instruments the OrderBookPosition is always set to zero.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.currency_rate_message = ProtoField.new("Currency Rate Message", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.currencyratemessage", ftypes.STRING, nil, nil, nil, "The Currency Rate message provides the foreign exchange conversion rates between various foreign currencies and the Hong Kong dollar.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.delete_order_message = ProtoField.new("Delete Order Message", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.deleteordermessage", ftypes.STRING, nil, nil, nil, "The Delete Order message is generated when an existing order identified by the OrderId is deleted.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.disaster_recovery_signal_message = ProtoField.new("Disaster Recovery Signal Message", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.disasterrecoverysignalmessage", ftypes.STRING, nil, nil, nil, "The Disaster Recovery (DR) Signal message is sent on a dedicated multicast channel whenever a site failover scenario is triggered.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.indicative_equilibrium_price_message = ProtoField.new("Indicative Equilibrium Price Message", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.indicativeequilibriumpricemessage", ftypes.STRING, nil, nil, nil, "The Indicative Equilibrium Price (IEP) message is generated whenever there is change of the IEP or Indicative Equilibrium Volume (IEV) during Pre-Opening Session (POS) or Closing Auction Session (CAS). The IEP is 0 when IEP does not exist.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.liquidity_provider_message = ProtoField.new("Liquidity Provider Message", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.liquidityprovidermessage", ftypes.STRING, nil, nil, nil, "The Liquidity Provider message is generated at the start of the business day for securities that have at least one liquidity provider.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.logon_message = ProtoField.new("Logon Message", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.logonmessage", ftypes.STRING, nil, nil, nil, "The Logon message enables client authentication. Not required for multicast channels; only used for retransmission requests.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.logon_response_message = ProtoField.new("Logon Response Message", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.logonresponsemessage", ftypes.STRING, nil, nil, nil, "Response to a Logon request indicating session status.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.market_definition_message = ProtoField.new("Market Definition Message", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.marketdefinitionmessage", ftypes.STRING, nil, nil, nil, "The Market Definition message is generated at the start of the business day for each market segment.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.modify_order_message = ProtoField.new("Modify Order Message", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.modifyordermessage", ftypes.STRING, nil, nil, nil, "The Modify Order message is generated when an existing order identified by the OrderId is modified. The only attribute that can be modified is the quantity. Note for Securities instruments the OrderBookPosition is always set to zero.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.order_imbalance_message = ProtoField.new("Order Imbalance Message", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.orderimbalancemessage", ftypes.STRING, nil, nil, nil, "The Order Imbalance message provides order imbalance information at the Indicative Equilibrium Price (IEP) during the Pre-Opening Session (POS) and Closing Auction Session (CAS).")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.reference_price_message = ProtoField.new("Reference Price Message", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.referencepricemessage", ftypes.STRING, nil, nil, nil, "Reference price, lower and upper price limits for order input during an applicable auction session (POS or CAS). Sent again when there is any change.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.refresh_complete_message = ProtoField.new("Refresh Complete Message", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.refreshcompletemessage", ftypes.STRING, nil, nil, nil, "This message is published to mark the end of a refresh.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.retransmissionrequestmessage", ftypes.STRING, nil, nil, nil, "Client-initiated request to retransmit a range of messages from a specific multicast channel.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.retransmission_response_message = ProtoField.new("Retransmission Response Message", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.retransmissionresponsemessage", ftypes.STRING, nil, nil, nil, "Server response to a Retransmission Request indicating whether the range can be resent.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.security_definition_message = ProtoField.new("Security Definition Message", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.securitydefinitionmessage", ftypes.STRING, nil, nil, nil, "The Security Definition message contains all the reference data for a security. Security Definition messages may be received intraday (for example the FreeText field may be updated during the day).")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.security_status_message = ProtoField.new("Security Status Message", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.securitystatusmessage", ftypes.STRING, nil, nil, nil, "The Security Status message is generated at the start of the business day if the security is not available for trading, and whenever a security state changes.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.sequence_reset_message = ProtoField.new("Sequence Reset Message", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.sequenceresetmessage", ftypes.STRING, nil, nil, nil, "The Sequence Reset message is sent on each multicast channel at start of day. It may also be sent when there is a need for the rectification of stock reference data before market open.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.tradecancelmessage", ftypes.STRING, nil, nil, nil, "The Trade Cancel message is generated when a trade has been cancelled.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.trade_message = ProtoField.new("Trade Message", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.trademessage", ftypes.STRING, nil, nil, nil, "The Trade message is generated each time a trade has been performed.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.tradingsessionstatusmessage", ftypes.STRING, nil, nil, nil, "The Trading Session Status provides information on the status of a market segment. It is sent whenever there is change of trading session. This message may be sent on a separate multicast channel from order and trade data and therefore may not be synchronized.")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.vcm_trigger_message = ProtoField.new("Vcm Trigger Message", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.vcmtriggermessage", ftypes.STRING, nil, nil, nil, "The VCM Trigger message is generated whenever a cooling off period is triggered by Volatility Control Mechanism (VCM).")

-- Hkex HkexSecurities FullTickRetrans Omd 1.45 Generated Fields
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.liquidity_provider_index = ProtoField.new("Liquidity Provider Index", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.liquidityproviderindex", ftypes.UINT16)
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.message_index = ProtoField.new("Message Index", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.messageindex", ftypes.UINT16)
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.underlying_security_index = ProtoField.new("Underlying Security Index", "hkex.hkexsecurities.fulltickretrans.omd.v1.45.underlyingsecurityindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Hkex HkexSecurities FullTickRetrans Omd 1.45 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
hkex_hkexsecurities_fulltickretrans_omd_v1_45.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Hkex HkexSecurities FullTickRetrans Omd 1.45 Element Dissection Options
show.application_messages = true
show.structs = true
show.repeating_groups = true
show.headers = true
show.indexes = true

-- Register Hkex HkexSecurities FullTickRetrans Omd 1.45 Show Options
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.prefs.show_application_messages then
    show.application_messages = omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.prefs.show_application_messages
  end
  if show.headers ~= omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.prefs.show_headers then
    show.headers = omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.prefs.show_headers
  end
  if show.repeating_groups ~= omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.prefs.show_repeating_groups then
    show.repeating_groups = omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.prefs.show_repeating_groups
  end
  if show.structs ~= omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.prefs.show_structs then
    show.structs = omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.prefs.show_structs
  end
  if show.indexes ~= omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.prefs.show_indexes then
    show.indexes = omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.prefs.show_indexes
  end
  if hkex_hkexsecurities_fulltickretrans_omd_v1_45.absolute_time_base ~= omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.prefs.absolute_time_base then
    hkex_hkexsecurities_fulltickretrans_omd_v1_45.absolute_time_base = omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.prefs.absolute_time_base
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


-----------------------------------------------------------------------
-- Hkex HkexSecurities FullTickRetrans Omd 1.45 Fields
-----------------------------------------------------------------------

-- Accrued Interest
hkex_hkexsecurities_fulltickretrans_omd_v1_45.accrued_interest = {}

-- Size: Accrued Interest
hkex_hkexsecurities_fulltickretrans_omd_v1_45.accrued_interest.size = 4

-- Display: Accrued Interest
hkex_hkexsecurities_fulltickretrans_omd_v1_45.accrued_interest.display = function(value)
  return "Accrued Interest: "..value
end

-- Translate: Accrued Interest
hkex_hkexsecurities_fulltickretrans_omd_v1_45.accrued_interest.translate = function(raw)
  return raw/1000
end

-- Dissect: Accrued Interest
hkex_hkexsecurities_fulltickretrans_omd_v1_45.accrued_interest.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.accrued_interest.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = hkex_hkexsecurities_fulltickretrans_omd_v1_45.accrued_interest.translate(raw)
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.accrued_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.accrued_interest, range, value, display)

  return offset + length, value
end

-- Aggregate Quantity
hkex_hkexsecurities_fulltickretrans_omd_v1_45.aggregate_quantity = {}

-- Size: Aggregate Quantity
hkex_hkexsecurities_fulltickretrans_omd_v1_45.aggregate_quantity.size = 8

-- Display: Aggregate Quantity
hkex_hkexsecurities_fulltickretrans_omd_v1_45.aggregate_quantity.display = function(value)
  return "Aggregate Quantity: "..value
end

-- Dissect: Aggregate Quantity
hkex_hkexsecurities_fulltickretrans_omd_v1_45.aggregate_quantity.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.aggregate_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.aggregate_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.aggregate_quantity, range, value, display)

  return offset + length, value
end

-- Begin Seq Num
hkex_hkexsecurities_fulltickretrans_omd_v1_45.begin_seq_num = {}

-- Size: Begin Seq Num
hkex_hkexsecurities_fulltickretrans_omd_v1_45.begin_seq_num.size = 4

-- Display: Begin Seq Num
hkex_hkexsecurities_fulltickretrans_omd_v1_45.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
hkex_hkexsecurities_fulltickretrans_omd_v1_45.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Bond Maturity Date
hkex_hkexsecurities_fulltickretrans_omd_v1_45.bond_maturity_date = {}

-- Size: Bond Maturity Date
hkex_hkexsecurities_fulltickretrans_omd_v1_45.bond_maturity_date.size = 4

-- Display: Bond Maturity Date
hkex_hkexsecurities_fulltickretrans_omd_v1_45.bond_maturity_date.display = function(value)
  return "Bond Maturity Date: "..value
end

-- Dissect: Bond Maturity Date
hkex_hkexsecurities_fulltickretrans_omd_v1_45.bond_maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.bond_maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.bond_maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.bond_maturity_date, range, value, display)

  return offset + length, value
end

-- Call Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_price = {}

-- Size: Call Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_price.size = 4

-- Display: Call Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_price.display = function(value)
  return "Call Price: "..value
end

-- Dissect: Call Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.call_price, range, value, display)

  return offset + length, value
end

-- Call Put Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_put_flag = {}

-- Size: Call Put Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_put_flag.size = 1

-- Display: Call Put Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_put_flag.labels = {
  ["C"] = "Call Put Flag: Call Or Bull (C)",
  ["P"] = "Call Put Flag: Put Or Bear Range (P)",
  ["O"] = "Call Put Flag: Others (O)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_put_flag.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_put_flag.labels[value] or "Call Put Flag: Unknown("..value..")"
end

-- Dissect: Call Put Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_put_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_put_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_put_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.call_put_flag, range, value, display)

  return offset + length, value
end

-- Cas Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.cas_flag = {}

-- Size: Cas Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.cas_flag.size = 1

-- Display: Cas Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.cas_flag.labels = {
  ["Y"] = "Cas Flag: Cas Applicable (Y)",
  ["N"] = "Cas Flag: Cas Not Applicable (N)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.cas_flag.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.cas_flag.labels[value] or "Cas Flag: Unknown("..value..")"
end

-- Dissect: Cas Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.cas_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.cas_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.cas_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.cas_flag, range, value, display)

  return offset + length, value
end

-- Ccass Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.ccass_flag = {}

-- Size: Ccass Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.ccass_flag.size = 1

-- Display: Ccass Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.ccass_flag.labels = {
  ["Y"] = "Ccass Flag: Ccass Security (Y)",
  ["N"] = "Ccass Flag: Non Ccass Security (N)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.ccass_flag.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.ccass_flag.labels[value] or "Ccass Flag: Unknown("..value..")"
end

-- Dissect: Ccass Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.ccass_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.ccass_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.ccass_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.ccass_flag, range, value, display)

  return offset + length, value
end

-- Channel Id
hkex_hkexsecurities_fulltickretrans_omd_v1_45.channel_id = {}

-- Size: Channel Id
hkex_hkexsecurities_fulltickretrans_omd_v1_45.channel_id.size = 2

-- Display: Channel Id
hkex_hkexsecurities_fulltickretrans_omd_v1_45.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
hkex_hkexsecurities_fulltickretrans_omd_v1_45.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Conversion Ratio
hkex_hkexsecurities_fulltickretrans_omd_v1_45.conversion_ratio = {}

-- Size: Conversion Ratio
hkex_hkexsecurities_fulltickretrans_omd_v1_45.conversion_ratio.size = 4

-- Display: Conversion Ratio
hkex_hkexsecurities_fulltickretrans_omd_v1_45.conversion_ratio.display = function(value)
  return "Conversion Ratio: "..value
end

-- Translate: Conversion Ratio
hkex_hkexsecurities_fulltickretrans_omd_v1_45.conversion_ratio.translate = function(raw)
  return raw/1000
end

-- Dissect: Conversion Ratio
hkex_hkexsecurities_fulltickretrans_omd_v1_45.conversion_ratio.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.conversion_ratio.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = hkex_hkexsecurities_fulltickretrans_omd_v1_45.conversion_ratio.translate(raw)
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.conversion_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.conversion_ratio, range, value, display)

  return offset + length, value
end

-- Cooling Off End Time
hkex_hkexsecurities_fulltickretrans_omd_v1_45.cooling_off_end_time = {}

-- Size: Cooling Off End Time
hkex_hkexsecurities_fulltickretrans_omd_v1_45.cooling_off_end_time.size = 8

-- Display: Cooling Off End Time
hkex_hkexsecurities_fulltickretrans_omd_v1_45.cooling_off_end_time.display = function(value)
  return "Cooling Off End Time: "..value
end

-- Dissect: Cooling Off End Time
hkex_hkexsecurities_fulltickretrans_omd_v1_45.cooling_off_end_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.cooling_off_end_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.cooling_off_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.cooling_off_end_time, range, value, display)

  return offset + length, value
end

-- Cooling Off Start Time
hkex_hkexsecurities_fulltickretrans_omd_v1_45.cooling_off_start_time = {}

-- Size: Cooling Off Start Time
hkex_hkexsecurities_fulltickretrans_omd_v1_45.cooling_off_start_time.size = 8

-- Display: Cooling Off Start Time
hkex_hkexsecurities_fulltickretrans_omd_v1_45.cooling_off_start_time.display = function(value)
  return "Cooling Off Start Time: "..value
end

-- Dissect: Cooling Off Start Time
hkex_hkexsecurities_fulltickretrans_omd_v1_45.cooling_off_start_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.cooling_off_start_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.cooling_off_start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.cooling_off_start_time, range, value, display)

  return offset + length, value
end

-- Coupon Rate
hkex_hkexsecurities_fulltickretrans_omd_v1_45.coupon_rate = {}

-- Size: Coupon Rate
hkex_hkexsecurities_fulltickretrans_omd_v1_45.coupon_rate.size = 4

-- Display: Coupon Rate
hkex_hkexsecurities_fulltickretrans_omd_v1_45.coupon_rate.display = function(value)
  return "Coupon Rate: "..value
end

-- Translate: Coupon Rate
hkex_hkexsecurities_fulltickretrans_omd_v1_45.coupon_rate.translate = function(raw)
  return raw/1000
end

-- Dissect: Coupon Rate
hkex_hkexsecurities_fulltickretrans_omd_v1_45.coupon_rate.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.coupon_rate.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = hkex_hkexsecurities_fulltickretrans_omd_v1_45.coupon_rate.translate(raw)
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.coupon_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.coupon_rate, range, value, display)

  return offset + length, value
end

-- Currency Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_code = {}

-- Size: Currency Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_code.size = 3

-- Display: Currency Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_code.display = function(value)
  return "Currency Code: "..value
end

-- Dissect: Currency Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.currency_code, range, value, display)

  return offset + length, value
end

-- Currency Factor
hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_factor = {}

-- Size: Currency Factor
hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_factor.size = 2

-- Display: Currency Factor
hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_factor.display = function(value)
  return "Currency Factor: "..value
end

-- Dissect: Currency Factor
hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_factor.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_factor.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.currency_factor, range, value, display)

  return offset + length, value
end

-- Currency Rate
hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_rate = {}

-- Size: Currency Rate
hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_rate.size = 4

-- Display: Currency Rate
hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_rate.display = function(value)
  return "Currency Rate: "..value
end

-- Dissect: Currency Rate
hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_rate.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_rate.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.currency_rate, range, value, display)

  return offset + length, value
end

-- Decimals In Call Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_call_price = {}

-- Size: Decimals In Call Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_call_price.size = 1

-- Display: Decimals In Call Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_call_price.display = function(value)
  return "Decimals In Call Price: "..value
end

-- Dissect: Decimals In Call Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_call_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_call_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_call_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.decimals_in_call_price, range, value, display)

  return offset + length, value
end

-- Decimals In Entitlement
hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_entitlement = {}

-- Size: Decimals In Entitlement
hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_entitlement.size = 1

-- Display: Decimals In Entitlement
hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_entitlement.display = function(value)
  return "Decimals In Entitlement: "..value
end

-- Dissect: Decimals In Entitlement
hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_entitlement.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_entitlement.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_entitlement.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.decimals_in_entitlement, range, value, display)

  return offset + length, value
end

-- Decimals In Face Value
hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_face_value = {}

-- Size: Decimals In Face Value
hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_face_value.size = 1

-- Display: Decimals In Face Value
hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_face_value.display = function(value)
  return "Decimals In Face Value: "..value
end

-- Dissect: Decimals In Face Value
hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_face_value.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_face_value.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_face_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.decimals_in_face_value, range, value, display)

  return offset + length, value
end

-- Delisting Date
hkex_hkexsecurities_fulltickretrans_omd_v1_45.delisting_date = {}

-- Size: Delisting Date
hkex_hkexsecurities_fulltickretrans_omd_v1_45.delisting_date.size = 4

-- Display: Delisting Date
hkex_hkexsecurities_fulltickretrans_omd_v1_45.delisting_date.display = function(value)
  return "Delisting Date: "..value
end

-- Dissect: Delisting Date
hkex_hkexsecurities_fulltickretrans_omd_v1_45.delisting_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.delisting_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.delisting_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.delisting_date, range, value, display)

  return offset + length, value
end

-- Domain Stmt Security Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.domain_stmt_security_code = {}

-- Size: Domain Stmt Security Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.domain_stmt_security_code.size = 4

-- Display: Domain Stmt Security Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.domain_stmt_security_code.display = function(value)
  return "Domain Stmt Security Code: "..value
end

-- Dissect: Domain Stmt Security Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.domain_stmt_security_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.domain_stmt_security_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.domain_stmt_security_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.domain_stmt_security_code, range, value, display)

  return offset + length, value
end

-- Dr Status
hkex_hkexsecurities_fulltickretrans_omd_v1_45.dr_status = {}

-- Size: Dr Status
hkex_hkexsecurities_fulltickretrans_omd_v1_45.dr_status.size = 4

-- Display: Dr Status
hkex_hkexsecurities_fulltickretrans_omd_v1_45.dr_status.labels = {
  [1] = "Dr Status: Dr In Progress (1)",
  [2] = "Dr Status: Dr Completed (2)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.dr_status.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.dr_status.labels[value] or "Dr Status: Unknown("..value..")"
end

-- Dissect: Dr Status
hkex_hkexsecurities_fulltickretrans_omd_v1_45.dr_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.dr_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.dr_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.dr_status, range, value, display)

  return offset + length, value
end

-- Dummy Security Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.dummy_security_flag = {}

-- Size: Dummy Security Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.dummy_security_flag.size = 1

-- Display: Dummy Security Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.dummy_security_flag.labels = {
  ["Y"] = "Dummy Security Flag: Dummy Security (Y)",
  ["N"] = "Dummy Security Flag: Normal Security (N)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.dummy_security_flag.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.dummy_security_flag.labels[value] or "Dummy Security Flag: Unknown("..value..")"
end

-- Dissect: Dummy Security Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.dummy_security_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.dummy_security_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.dummy_security_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.dummy_security_flag, range, value, display)

  return offset + length, value
end

-- Efn Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.efn_flag = {}

-- Size: Efn Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.efn_flag.size = 1

-- Display: Efn Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.efn_flag.labels = {
  ["Y"] = "Efn Flag: Efn (Y)",
  ["N"] = "Efn Flag: Non Efn (N)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.efn_flag.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.efn_flag.labels[value] or "Efn Flag: Unknown("..value..")"
end

-- Dissect: Efn Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.efn_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.efn_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.efn_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.efn_flag, range, value, display)

  return offset + length, value
end

-- End Date Time
hkex_hkexsecurities_fulltickretrans_omd_v1_45.end_date_time = {}

-- Size: End Date Time
hkex_hkexsecurities_fulltickretrans_omd_v1_45.end_date_time.size = 8

-- Display: End Date Time
hkex_hkexsecurities_fulltickretrans_omd_v1_45.end_date_time.display = function(value)
  return "End Date Time: "..value
end

-- Dissect: End Date Time
hkex_hkexsecurities_fulltickretrans_omd_v1_45.end_date_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.end_date_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.end_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.end_date_time, range, value, display)

  return offset + length, value
end

-- End Seq Num
hkex_hkexsecurities_fulltickretrans_omd_v1_45.end_seq_num = {}

-- Size: End Seq Num
hkex_hkexsecurities_fulltickretrans_omd_v1_45.end_seq_num.size = 4

-- Display: End Seq Num
hkex_hkexsecurities_fulltickretrans_omd_v1_45.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
hkex_hkexsecurities_fulltickretrans_omd_v1_45.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Entitlement
hkex_hkexsecurities_fulltickretrans_omd_v1_45.entitlement = {}

-- Size: Entitlement
hkex_hkexsecurities_fulltickretrans_omd_v1_45.entitlement.size = 4

-- Display: Entitlement
hkex_hkexsecurities_fulltickretrans_omd_v1_45.entitlement.display = function(value)
  return "Entitlement: "..value
end

-- Dissect: Entitlement
hkex_hkexsecurities_fulltickretrans_omd_v1_45.entitlement.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.entitlement.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.entitlement.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.entitlement, range, value, display)

  return offset + length, value
end

-- Face Value
hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value = {}

-- Size: Face Value
hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value.size = 8

-- Display: Face Value
hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value.display = function(value)
  return "Face Value: "..value
end

-- Dissect: Face Value
hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.face_value, range, value, display)

  return offset + length, value
end

-- Face Value Currency
hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value_currency = {}

-- Size: Face Value Currency
hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value_currency.size = 3

-- Display: Face Value Currency
hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value_currency.display = function(value)
  return "Face Value Currency: "..value
end

-- Dissect: Face Value Currency
hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value_currency.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.face_value_currency, range, value, display)

  return offset + length, value
end

-- Filler
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler = {}

-- Size: Filler
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler.size = 1

-- Display: Filler
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.filler, range, value, display)

  return offset + length, value
end

-- Filler 1
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_1 = {}

-- Size: Filler 1
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_1.size = 1

-- Display: Filler 1
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.filler_1, range, value, display)

  return offset + length, value
end

-- Filler 2
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_2 = {}

-- Size: Filler 2
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_2.size = 2

-- Display: Filler 2
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_2.display = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.filler_2, range, value, display)

  return offset + length, value
end

-- Filler 3
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_3 = {}

-- Size: Filler 3
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_3.size = 3

-- Display: Filler 3
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_3.display = function(value)
  return "Filler 3: "..value
end

-- Dissect: Filler 3
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_3.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.filler_3, range, value, display)

  return offset + length, value
end

-- Filler 37
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_37 = {}

-- Size: Filler 37
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_37.size = 37

-- Display: Filler 37
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_37.display = function(value)
  return "Filler 37: "..value
end

-- Dissect: Filler 37
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_37.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_37.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_37.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.filler_37, range, value, display)

  return offset + length, value
end

-- Filler 4
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_4 = {}

-- Size: Filler 4
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_4.size = 4

-- Display: Filler 4
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_4.display = function(value)
  return "Filler 4: "..value
end

-- Dissect: Filler 4
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_4.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.filler_4, range, value, display)

  return offset + length, value
end

-- Filler 44
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_44 = {}

-- Size: Filler 44
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_44.size = 44

-- Display: Filler 44
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_44.display = function(value)
  return "Filler 44: "..value
end

-- Dissect: Filler 44
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_44.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_44.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_44.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.filler_44, range, value, display)

  return offset + length, value
end

-- Filler 62
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_62 = {}

-- Size: Filler 62
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_62.size = 62

-- Display: Filler 62
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_62.display = function(value)
  return "Filler 62: "..value
end

-- Dissect: Filler 62
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_62.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_62.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_62.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.filler_62, range, value, display)

  return offset + length, value
end

-- Filler 63
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_63 = {}

-- Size: Filler 63
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_63.size = 63

-- Display: Filler 63
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_63.display = function(value)
  return "Filler 63: "..value
end

-- Dissect: Filler 63
hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_63.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_63.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_63.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.filler_63, range, value, display)

  return offset + length, value
end

-- Fourth Filler 1
hkex_hkexsecurities_fulltickretrans_omd_v1_45.fourth_filler_1 = {}

-- Size: Fourth Filler 1
hkex_hkexsecurities_fulltickretrans_omd_v1_45.fourth_filler_1.size = 1

-- Display: Fourth Filler 1
hkex_hkexsecurities_fulltickretrans_omd_v1_45.fourth_filler_1.display = function(value)
  return "Fourth Filler 1: "..value
end

-- Dissect: Fourth Filler 1
hkex_hkexsecurities_fulltickretrans_omd_v1_45.fourth_filler_1.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.fourth_filler_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.fourth_filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.fourth_filler_1, range, value, display)

  return offset + length, value
end

-- Free Text
hkex_hkexsecurities_fulltickretrans_omd_v1_45.free_text = {}

-- Size: Free Text
hkex_hkexsecurities_fulltickretrans_omd_v1_45.free_text.size = 38

-- Display: Free Text
hkex_hkexsecurities_fulltickretrans_omd_v1_45.free_text.display = function(value)
  return "Free Text: "..value
end

-- Dissect: Free Text
hkex_hkexsecurities_fulltickretrans_omd_v1_45.free_text.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.free_text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.free_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.free_text, range, value, display)

  return offset + length, value
end

-- Instrument Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.instrument_type = {}

-- Size: Instrument Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.instrument_type.size = 4

-- Display: Instrument Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.instrument_type.labels = {
  ["BOND"] = "Instrument Type: Bonds (BOND)",
  ["EQTY"] = "Instrument Type: Equities (EQTY)",
  ["TRST"] = "Instrument Type: Trusts (TRST)",
  ["WRNT"] = "Instrument Type: Warrants And Structured Products (WRNT)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.instrument_type.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.instrument_type.labels[value] or "Instrument Type: Unknown("..value..")"
end

-- Dissect: Instrument Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.instrument_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Investor Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.investor_type = {}

-- Size: Investor Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.investor_type.size = 1

-- Display: Investor Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.investor_type.labels = {
  ["R"] = "Investor Type: Retail Investor (R)",
  ["P"] = "Investor Type: Professional Investor (P)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.investor_type.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.investor_type.labels[value] or "Investor Type: Unknown("..value..")"
end

-- Dissect: Investor Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.investor_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.investor_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.investor_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.investor_type, range, value, display)

  return offset + length, value
end

-- Isin Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.isin_code = {}

-- Size: Isin Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.isin_code.size = 12

-- Display: Isin Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.isin_code.display = function(value)
  return "Isin Code: "..value
end

-- Dissect: Isin Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.isin_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.isin_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.isin_code, range, value, display)

  return offset + length, value
end

-- Last Seq Num
hkex_hkexsecurities_fulltickretrans_omd_v1_45.last_seq_num = {}

-- Size: Last Seq Num
hkex_hkexsecurities_fulltickretrans_omd_v1_45.last_seq_num.size = 4

-- Display: Last Seq Num
hkex_hkexsecurities_fulltickretrans_omd_v1_45.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
hkex_hkexsecurities_fulltickretrans_omd_v1_45.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Listing Date
hkex_hkexsecurities_fulltickretrans_omd_v1_45.listing_date = {}

-- Size: Listing Date
hkex_hkexsecurities_fulltickretrans_omd_v1_45.listing_date.size = 4

-- Display: Listing Date
hkex_hkexsecurities_fulltickretrans_omd_v1_45.listing_date.display = function(value)
  return "Listing Date: "..value
end

-- Dissect: Listing Date
hkex_hkexsecurities_fulltickretrans_omd_v1_45.listing_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.listing_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.listing_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.listing_date, range, value, display)

  return offset + length, value
end

-- Lot Size
hkex_hkexsecurities_fulltickretrans_omd_v1_45.lot_size = {}

-- Size: Lot Size
hkex_hkexsecurities_fulltickretrans_omd_v1_45.lot_size.size = 4

-- Display: Lot Size
hkex_hkexsecurities_fulltickretrans_omd_v1_45.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
hkex_hkexsecurities_fulltickretrans_omd_v1_45.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Lower Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.lower_price = {}

-- Size: Lower Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.lower_price.size = 4

-- Display: Lower Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.lower_price.display = function(value)
  return "Lower Price: "..value
end

-- Translate: Lower Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.lower_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Lower Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.lower_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.lower_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_fulltickretrans_omd_v1_45.lower_price.translate(raw)
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.lower_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.lower_price, range, value, display)

  return offset + length, value
end

-- Lp Broker Number
hkex_hkexsecurities_fulltickretrans_omd_v1_45.lp_broker_number = {}

-- Size: Lp Broker Number
hkex_hkexsecurities_fulltickretrans_omd_v1_45.lp_broker_number.size = 2

-- Display: Lp Broker Number
hkex_hkexsecurities_fulltickretrans_omd_v1_45.lp_broker_number.display = function(value)
  return "Lp Broker Number: "..value
end

-- Dissect: Lp Broker Number
hkex_hkexsecurities_fulltickretrans_omd_v1_45.lp_broker_number.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.lp_broker_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.lp_broker_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.lp_broker_number, range, value, display)

  return offset + length, value
end

-- Market Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_code = {}

-- Size: Market Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_code.size = 4

-- Display: Market Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_code.labels = {
  ["MAIN"] = "Market Code: Main Board (MAIN)",
  ["GEM"] = "Market Code: Growth Enterprise Market (GEM)",
  ["NASD"] = "Market Code: Nasdaq Amex Pilot Program (NASD)",
  ["ETS"] = "Market Code: Electronic Trading System (ETS)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_code.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_code.labels[value] or "Market Code: Unknown("..value..")"
end

-- Dissect: Market Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.market_code, range, value, display)

  return offset + length, value
end

-- Market Name
hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_name = {}

-- Size: Market Name
hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_name.size = 25

-- Display: Market Name
hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_name.display = function(value)
  return "Market Name: "..value
end

-- Dissect: Market Name
hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_name.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.market_name, range, value, display)

  return offset + length, value
end

-- Msg Count
hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_count = {}

-- Size: Msg Count
hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_count.size = 1

-- Display: Msg Count
hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Msg Size
hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_size = {}

-- Size: Msg Size
hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_size.size = 2

-- Display: Msg Size
hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Msg Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_type = {}

-- Size: Msg Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_type.size = 2

-- Display: Msg Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_type.labels = {
  [30] = "Msg Type: Add Order Message (30)",
  [100] = "Msg Type: Sequence Reset Message (100)",
  [105] = "Msg Type: Disaster Recovery Signal Message (105)",
  [32] = "Msg Type: Delete Order Message (32)",
  [41] = "Msg Type: Indicative Equilibrium Price Message (41)",
  [31] = "Msg Type: Modify Order Message (31)",
  [56] = "Msg Type: Order Imbalance Message (56)",
  [10] = "Msg Type: Market Definition Message (10)",
  [11] = "Msg Type: Security Definition Message (11)",
  [13] = "Msg Type: Liquidity Provider Message (13)",
  [14] = "Msg Type: Currency Rate Message (14)",
  [43] = "Msg Type: Reference Price Message (43)",
  [203] = "Msg Type: Refresh Complete Message (203)",
  [101] = "Msg Type: Logon Message (101)",
  [102] = "Msg Type: Logon Response Message (102)",
  [201] = "Msg Type: Retransmission Request Message (201)",
  [202] = "Msg Type: Retransmission Response Message (202)",
  [20] = "Msg Type: Trading Session Status Message (20)",
  [21] = "Msg Type: Security Status Message (21)",
  [50] = "Msg Type: Trade Message (50)",
  [51] = "Msg Type: Trade Cancel Message (51)",
  [23] = "Msg Type: Vcm Trigger Message (23)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_type.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_type.labels[value] or "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.msg_type, range, value, display)

  return offset + length, value
end

-- New Seq No
hkex_hkexsecurities_fulltickretrans_omd_v1_45.new_seq_no = {}

-- Size: New Seq No
hkex_hkexsecurities_fulltickretrans_omd_v1_45.new_seq_no.size = 4

-- Display: New Seq No
hkex_hkexsecurities_fulltickretrans_omd_v1_45.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
hkex_hkexsecurities_fulltickretrans_omd_v1_45.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- No Liquidity Providers
hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_liquidity_providers = {}

-- Size: No Liquidity Providers
hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_liquidity_providers.size = 2

-- Display: No Liquidity Providers
hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_liquidity_providers.display = function(value)
  return "No Liquidity Providers: "..value
end

-- Dissect: No Liquidity Providers
hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_liquidity_providers.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_liquidity_providers.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_liquidity_providers.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.no_liquidity_providers, range, value, display)

  return offset + length, value
end

-- No Underlying Securities
hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_underlying_securities = {}

-- Size: No Underlying Securities
hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_underlying_securities.size = 2

-- Display: No Underlying Securities
hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_underlying_securities.display = function(value)
  return "No Underlying Securities: "..value
end

-- Dissect: No Underlying Securities
hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_underlying_securities.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_underlying_securities.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_underlying_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.no_underlying_securities, range, value, display)

  return offset + length, value
end

-- No Warrants Per Entitlement
hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_warrants_per_entitlement = {}

-- Size: No Warrants Per Entitlement
hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_warrants_per_entitlement.size = 4

-- Display: No Warrants Per Entitlement
hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_warrants_per_entitlement.display = function(value)
  return "No Warrants Per Entitlement: "..value
end

-- Dissect: No Warrants Per Entitlement
hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_warrants_per_entitlement.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_warrants_per_entitlement.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_warrants_per_entitlement.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.no_warrants_per_entitlement, range, value, display)

  return offset + length, value
end

-- Number Of Securities
hkex_hkexsecurities_fulltickretrans_omd_v1_45.number_of_securities = {}

-- Size: Number Of Securities
hkex_hkexsecurities_fulltickretrans_omd_v1_45.number_of_securities.size = 4

-- Display: Number Of Securities
hkex_hkexsecurities_fulltickretrans_omd_v1_45.number_of_securities.display = function(value)
  return "Number Of Securities: "..value
end

-- Dissect: Number Of Securities
hkex_hkexsecurities_fulltickretrans_omd_v1_45.number_of_securities.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.number_of_securities.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.number_of_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.number_of_securities, range, value, display)

  return offset + length, value
end

-- Order Book Position
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_book_position = {}

-- Size: Order Book Position
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_book_position.size = 4

-- Display: Order Book Position
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_book_position.display = function(value)
  return "Order Book Position: "..value
end

-- Dissect: Order Book Position
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_book_position.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_book_position.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_book_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.order_book_position, range, value, display)

  return offset + length, value
end

-- Order Id
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_id = {}

-- Size: Order Id
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_id.size = 8

-- Display: Order Id
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Imbalance Direction
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_direction = {}

-- Size: Order Imbalance Direction
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_direction.size = 1

-- Display: Order Imbalance Direction
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_direction.display = function(value)
  if value == "N" then
    return "Order Imbalance Direction: Buy Equals Sell (N)"
  end
  if value == "B" then
    return "Order Imbalance Direction: Buy Surplus (B)"
  end
  if value == "S" then
    return "Order Imbalance Direction: Sell Surplus (S)"
  end
  if value == " " then
    return "Order Imbalance Direction: Not Applicable Iep Not Available (<whitespace>)"
  end

  return "Order Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Order Imbalance Direction
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.order_imbalance_direction, range, value, display)

  return offset + length, value
end

-- Order Imbalance Quantity
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_quantity = {}

-- Size: Order Imbalance Quantity
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_quantity.size = 8

-- Display: Order Imbalance Quantity
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_quantity.display = function(value)
  return "Order Imbalance Quantity: "..value
end

-- Dissect: Order Imbalance Quantity
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_quantity.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.order_imbalance_quantity, range, value, display)

  return offset + length, value
end

-- Order Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_type = {}

-- Size: Order Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_type.size = 1

-- Display: Order Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_type.labels = {
  ["1"] = "Order Type: Market (1)",
  ["2"] = "Order Type: Limit (2)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_type.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_type.labels[value] or "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.order_type, range, value, display)

  return offset + length, value
end

-- Pkt Size
hkex_hkexsecurities_fulltickretrans_omd_v1_45.pkt_size = {}

-- Size: Pkt Size
hkex_hkexsecurities_fulltickretrans_omd_v1_45.pkt_size.size = 2

-- Display: Pkt Size
hkex_hkexsecurities_fulltickretrans_omd_v1_45.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
hkex_hkexsecurities_fulltickretrans_omd_v1_45.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Pos Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_flag = {}

-- Size: Pos Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_flag.size = 1

-- Display: Pos Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_flag.labels = {
  ["Y"] = "Pos Flag: Pos Applicable (Y)",
  ["N"] = "Pos Flag: Pos Not Applicable (N)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_flag.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_flag.labels[value] or "Pos Flag: Unknown("..value..")"
end

-- Dissect: Pos Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.pos_flag, range, value, display)

  return offset + length, value
end

-- Pos Lower Limit
hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_lower_limit = {}

-- Size: Pos Lower Limit
hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_lower_limit.size = 4

-- Display: Pos Lower Limit
hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_lower_limit.display = function(value)
  return "Pos Lower Limit: "..value
end

-- Translate: Pos Lower Limit
hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_lower_limit.translate = function(raw)
  return raw/1000
end

-- Dissect: Pos Lower Limit
hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_lower_limit.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_lower_limit.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_lower_limit.translate(raw)
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_lower_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.pos_lower_limit, range, value, display)

  return offset + length, value
end

-- Pos Upper Limit
hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_upper_limit = {}

-- Size: Pos Upper Limit
hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_upper_limit.size = 4

-- Display: Pos Upper Limit
hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_upper_limit.display = function(value)
  return "Pos Upper Limit: "..value
end

-- Translate: Pos Upper Limit
hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_upper_limit.translate = function(raw)
  return raw/1000
end

-- Dissect: Pos Upper Limit
hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_upper_limit.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_upper_limit.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_upper_limit.translate(raw)
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_upper_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.pos_upper_limit, range, value, display)

  return offset + length, value
end

-- Previous Closing Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.previous_closing_price = {}

-- Size: Previous Closing Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.previous_closing_price.size = 4

-- Display: Previous Closing Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.previous_closing_price.display = function(value)
  return "Previous Closing Price: "..value
end

-- Translate: Previous Closing Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.previous_closing_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Previous Closing Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.previous_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.previous_closing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_fulltickretrans_omd_v1_45.previous_closing_price.translate(raw)
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.previous_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.previous_closing_price, range, value, display)

  return offset + length, value
end

-- Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.price = {}

-- Size: Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.price.size = 4

-- Display: Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.price.translate = function(raw)
  return raw/1000
end

-- Dissect: Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_fulltickretrans_omd_v1_45.price.translate(raw)
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.price, range, value, display)

  return offset + length, value
end

-- Product Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.product_type = {}

-- Size: Product Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.product_type.size = 1

-- Display: Product Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.product_type.labels = {
  [1] = "Product Type: Equity Ordinary Shares (1)",
  [2] = "Product Type: Equity Preference Shares (2)",
  [6] = "Product Type: Equity Rights (6)",
  [7] = "Product Type: Equity Depository Receipt Hdr Ordinary Shares (7)",
  [12] = "Product Type: Equity Depository Receipt Hdr Preference Shares (12)",
  [24] = "Product Type: Equity Spac Shares (24)",
  [3] = "Product Type: Warrant Derivative Warrant Dw (3)",
  [11] = "Product Type: Warrant Callable Bull Bear Contract Cbbc (11)",
  [13] = "Product Type: Warrant Equity Warrant (13)",
  [15] = "Product Type: Warrant Inline Warrant (15)",
  [21] = "Product Type: Warrant Spac Warrants (21)",
  [4] = "Product Type: Bond Debt Security (4)",
  [8] = "Product Type: Trust Real Estate Investment Trust Reit (8)",
  [9] = "Product Type: Trust Other Unit Trusts (9)",
  [10] = "Product Type: Trust Leveraged And Inverse Product Lip (10)",
  [16] = "Product Type: Trust Equity Etf (16)",
  [17] = "Product Type: Trust Fixed Income And Money Market Etf (17)",
  [18] = "Product Type: Trust Commodities Etf (18)",
  [99] = "Product Type: Others None Of The Above (99)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.product_type.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.product_type.labels[value] or "Product Type: Unknown("..value..")"
end

-- Dissect: Product Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.product_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.product_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.product_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.product_type, range, value, display)

  return offset + length, value
end

-- Quantity
hkex_hkexsecurities_fulltickretrans_omd_v1_45.quantity = {}

-- Size: Quantity
hkex_hkexsecurities_fulltickretrans_omd_v1_45.quantity.size = 4

-- Display: Quantity
hkex_hkexsecurities_fulltickretrans_omd_v1_45.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
hkex_hkexsecurities_fulltickretrans_omd_v1_45.quantity.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reference Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.reference_price = {}

-- Size: Reference Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.reference_price.size = 4

-- Display: Reference Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.reference_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Reference Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_fulltickretrans_omd_v1_45.reference_price.translate(raw)
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Retrans Status
hkex_hkexsecurities_fulltickretrans_omd_v1_45.retrans_status = {}

-- Size: Retrans Status
hkex_hkexsecurities_fulltickretrans_omd_v1_45.retrans_status.size = 1

-- Display: Retrans Status
hkex_hkexsecurities_fulltickretrans_omd_v1_45.retrans_status.labels = {
  [0] = "Retrans Status: Request Accepted (0)",
  [1] = "Retrans Status: Unknown Or Unauthorized Channel Id (1)",
  [2] = "Retrans Status: Messages Not Available (2)",
  [100] = "Retrans Status: Exceeds Maximum Sequence Range (100)",
  [101] = "Retrans Status: Exceeds Maximum Requests In A Day (101)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.retrans_status.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.retrans_status.labels[value] or "Retrans Status: Unknown("..value..")"
end

-- Dissect: Retrans Status
hkex_hkexsecurities_fulltickretrans_omd_v1_45.retrans_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.retrans_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.retrans_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.retrans_status, range, value, display)

  return offset + length, value
end

-- Second Filler 1
hkex_hkexsecurities_fulltickretrans_omd_v1_45.second_filler_1 = {}

-- Size: Second Filler 1
hkex_hkexsecurities_fulltickretrans_omd_v1_45.second_filler_1.size = 1

-- Display: Second Filler 1
hkex_hkexsecurities_fulltickretrans_omd_v1_45.second_filler_1.display = function(value)
  return "Second Filler 1: "..value
end

-- Dissect: Second Filler 1
hkex_hkexsecurities_fulltickretrans_omd_v1_45.second_filler_1.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.second_filler_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.second_filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.second_filler_1, range, value, display)

  return offset + length, value
end

-- Security Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code = {}

-- Size: Security Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.size = 4

-- Display: Security Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.display = function(value)
  return "Security Code: "..value
end

-- Dissect: Security Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.security_code, range, value, display)

  return offset + length, value
end

-- Security Name Gb
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_name_gb = {}

-- Size: Security Name Gb
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_name_gb.size = 60

-- Display: Security Name Gb
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_name_gb.display = function(value)
  return "Security Name Gb: "..value
end

-- Dissect: Security Name Gb
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_name_gb.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_name_gb.size
  local range = buffer(offset, length)
  local value = range:string(ENC_UTF_16 + ENC_LITTLE_ENDIAN)
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_name_gb.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.security_name_gb, range, value, display)

  return offset + length, value
end

-- Security Name Gccs
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_name_gccs = {}

-- Size: Security Name Gccs
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_name_gccs.size = 60

-- Display: Security Name Gccs
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_name_gccs.display = function(value)
  return "Security Name Gccs: "..value
end

-- Dissect: Security Name Gccs
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_name_gccs.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_name_gccs.size
  local range = buffer(offset, length)
  local value = range:string(ENC_UTF_16 + ENC_LITTLE_ENDIAN)
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_name_gccs.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.security_name_gccs, range, value, display)

  return offset + length, value
end

-- Security Short Name
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_short_name = {}

-- Size: Security Short Name
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_short_name.size = 40

-- Display: Security Short Name
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_short_name.display = function(value)
  return "Security Short Name: "..value
end

-- Dissect: Security Short Name
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_short_name.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_short_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_short_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.security_short_name, range, value, display)

  return offset + length, value
end

-- Send Time
hkex_hkexsecurities_fulltickretrans_omd_v1_45.send_time = {}

-- Size: Send Time
hkex_hkexsecurities_fulltickretrans_omd_v1_45.send_time.size = 8

-- Dissect: Send Time
hkex_hkexsecurities_fulltickretrans_omd_v1_45.send_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.send_time
  if hkex_hkexsecurities_fulltickretrans_omd_v1_45.absolute_time_base == 1 then field = omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.send_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Seq Num
hkex_hkexsecurities_fulltickretrans_omd_v1_45.seq_num = {}

-- Size: Seq Num
hkex_hkexsecurities_fulltickretrans_omd_v1_45.seq_num.size = 4

-- Display: Seq Num
hkex_hkexsecurities_fulltickretrans_omd_v1_45.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
hkex_hkexsecurities_fulltickretrans_omd_v1_45.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Session Status
hkex_hkexsecurities_fulltickretrans_omd_v1_45.session_status = {}

-- Size: Session Status
hkex_hkexsecurities_fulltickretrans_omd_v1_45.session_status.size = 1

-- Display: Session Status
hkex_hkexsecurities_fulltickretrans_omd_v1_45.session_status.labels = {
  [0] = "Session Status: Session Active (0)",
  [5] = "Session Status: Invalid Username Or Ip Address (5)",
  [100] = "Session Status: User Already Connected (100)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.session_status.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.session_status.labels[value] or "Session Status: Unknown("..value..")"
end

-- Dissect: Session Status
hkex_hkexsecurities_fulltickretrans_omd_v1_45.session_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.session_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.session_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.session_status, range, value, display)

  return offset + length, value
end

-- Short Sell Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.short_sell_flag = {}

-- Size: Short Sell Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.short_sell_flag.size = 1

-- Display: Short Sell Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.short_sell_flag.labels = {
  ["Y"] = "Short Sell Flag: Shortsell Allowed (Y)",
  ["N"] = "Short Sell Flag: Shortsell Not Allowed (N)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.short_sell_flag.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.short_sell_flag.labels[value] or "Short Sell Flag: Unknown("..value..")"
end

-- Dissect: Short Sell Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.short_sell_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.short_sell_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.short_sell_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.short_sell_flag, range, value, display)

  return offset + length, value
end

-- Side
hkex_hkexsecurities_fulltickretrans_omd_v1_45.side = {}

-- Size: Side
hkex_hkexsecurities_fulltickretrans_omd_v1_45.side.size = 2

-- Display: Side
hkex_hkexsecurities_fulltickretrans_omd_v1_45.side.labels = {
  [0] = "Side: Bid (0)",
  [1] = "Side: Offer (1)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.side.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
hkex_hkexsecurities_fulltickretrans_omd_v1_45.side.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.side, range, value, display)

  return offset + length, value
end

-- Spread Table Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.spread_table_code = {}

-- Size: Spread Table Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.spread_table_code.size = 2

-- Display: Spread Table Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.spread_table_code.labels = {
  ["01"] = "Spread Table Code: Part A (01)",
  ["03"] = "Spread Table Code: Part B (03)",
  ["04"] = "Spread Table Code: For Inline Warrant Same As Part E Up To And Include Hk 1.00 As Per Sehk (04)",
  ["05"] = "Spread Table Code: Part D (05)",
  ["06"] = "Spread Table Code: Part E (06)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.spread_table_code.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.spread_table_code.labels[value] or "Spread Table Code: Unknown("..value..")"
end

-- Dissect: Spread Table Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.spread_table_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.spread_table_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.spread_table_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.spread_table_code, range, value, display)

  return offset + length, value
end

-- Stamp Duty Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.stamp_duty_flag = {}

-- Size: Stamp Duty Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.stamp_duty_flag.size = 1

-- Display: Stamp Duty Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.stamp_duty_flag.labels = {
  ["Y"] = "Stamp Duty Flag: Stamp Duty Required (Y)",
  ["N"] = "Stamp Duty Flag: Stamp Duty Not Required (N)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.stamp_duty_flag.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.stamp_duty_flag.labels[value] or "Stamp Duty Flag: Unknown("..value..")"
end

-- Dissect: Stamp Duty Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.stamp_duty_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.stamp_duty_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.stamp_duty_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.stamp_duty_flag, range, value, display)

  return offset + length, value
end

-- Start Date Time
hkex_hkexsecurities_fulltickretrans_omd_v1_45.start_date_time = {}

-- Size: Start Date Time
hkex_hkexsecurities_fulltickretrans_omd_v1_45.start_date_time.size = 8

-- Display: Start Date Time
hkex_hkexsecurities_fulltickretrans_omd_v1_45.start_date_time.display = function(value)
  return "Start Date Time: "..value
end

-- Dissect: Start Date Time
hkex_hkexsecurities_fulltickretrans_omd_v1_45.start_date_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.start_date_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.start_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.start_date_time, range, value, display)

  return offset + length, value
end

-- Strike Price 1
hkex_hkexsecurities_fulltickretrans_omd_v1_45.strike_price_1 = {}

-- Size: Strike Price 1
hkex_hkexsecurities_fulltickretrans_omd_v1_45.strike_price_1.size = 4

-- Display: Strike Price 1
hkex_hkexsecurities_fulltickretrans_omd_v1_45.strike_price_1.display = function(value)
  return "Strike Price 1: "..value
end

-- Translate: Strike Price 1
hkex_hkexsecurities_fulltickretrans_omd_v1_45.strike_price_1.translate = function(raw)
  return raw/1000
end

-- Dissect: Strike Price 1
hkex_hkexsecurities_fulltickretrans_omd_v1_45.strike_price_1.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.strike_price_1.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_fulltickretrans_omd_v1_45.strike_price_1.translate(raw)
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.strike_price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.strike_price_1, range, value, display)

  return offset + length, value
end

-- Strike Price 2
hkex_hkexsecurities_fulltickretrans_omd_v1_45.strike_price_2 = {}

-- Size: Strike Price 2
hkex_hkexsecurities_fulltickretrans_omd_v1_45.strike_price_2.size = 4

-- Display: Strike Price 2
hkex_hkexsecurities_fulltickretrans_omd_v1_45.strike_price_2.display = function(value)
  return "Strike Price 2: "..value
end

-- Translate: Strike Price 2
hkex_hkexsecurities_fulltickretrans_omd_v1_45.strike_price_2.translate = function(raw)
  return raw/1000
end

-- Dissect: Strike Price 2
hkex_hkexsecurities_fulltickretrans_omd_v1_45.strike_price_2.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.strike_price_2.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_fulltickretrans_omd_v1_45.strike_price_2.translate(raw)
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.strike_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.strike_price_2, range, value, display)

  return offset + length, value
end

-- Style
hkex_hkexsecurities_fulltickretrans_omd_v1_45.style = {}

-- Size: Style
hkex_hkexsecurities_fulltickretrans_omd_v1_45.style.size = 1

-- Display: Style
hkex_hkexsecurities_fulltickretrans_omd_v1_45.style.display = function(value)
  if value == "A" then
    return "Style: American Style (A)"
  end
  if value == "E" then
    return "Style: European Style (E)"
  end
  if value == " " then
    return "Style: Other (<whitespace>)"
  end

  return "Style: Unknown("..value..")"
end

-- Dissect: Style
hkex_hkexsecurities_fulltickretrans_omd_v1_45.style.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.style.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.style.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.style, range, value, display)

  return offset + length, value
end

-- Suspension Indicator
hkex_hkexsecurities_fulltickretrans_omd_v1_45.suspension_indicator = {}

-- Size: Suspension Indicator
hkex_hkexsecurities_fulltickretrans_omd_v1_45.suspension_indicator.size = 1

-- Display: Suspension Indicator
hkex_hkexsecurities_fulltickretrans_omd_v1_45.suspension_indicator.labels = {
  [2] = "Suspension Indicator: Trading Halt Or Suspend (2)",
  [3] = "Suspension Indicator: Resume (3)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.suspension_indicator.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.suspension_indicator.labels[value] or "Suspension Indicator: Unknown("..value..")"
end

-- Dissect: Suspension Indicator
hkex_hkexsecurities_fulltickretrans_omd_v1_45.suspension_indicator.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.suspension_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.suspension_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.suspension_indicator, range, value, display)

  return offset + length, value
end

-- Third Filler 1
hkex_hkexsecurities_fulltickretrans_omd_v1_45.third_filler_1 = {}

-- Size: Third Filler 1
hkex_hkexsecurities_fulltickretrans_omd_v1_45.third_filler_1.size = 1

-- Display: Third Filler 1
hkex_hkexsecurities_fulltickretrans_omd_v1_45.third_filler_1.display = function(value)
  return "Third Filler 1: "..value
end

-- Dissect: Third Filler 1
hkex_hkexsecurities_fulltickretrans_omd_v1_45.third_filler_1.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.third_filler_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.third_filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.third_filler_1, range, value, display)

  return offset + length, value
end

-- Trade Id
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_id = {}

-- Size: Trade Id
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_id.size = 4

-- Display: Trade Id
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Time
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_time = {}

-- Size: Trade Time
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_time.size = 8

-- Display: Trade Time
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_time.display = function(value)
  return "Trade Time: "..value
end

-- Dissect: Trade Time
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.trade_time, range, value, display)

  return offset + length, value
end

-- Trading Ses Control Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_ses_control_flag = {}

-- Size: Trading Ses Control Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_ses_control_flag.size = 1

-- Display: Trading Ses Control Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_ses_control_flag.labels = {
  ["0"] = "Trading Ses Control Flag: Automatic Default (0)",
  ["1"] = "Trading Ses Control Flag: Manual Invalidates The Normal Schedule For The Day (1)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_ses_control_flag.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_ses_control_flag.labels[value] or "Trading Ses Control Flag: Unknown("..value..")"
end

-- Dissect: Trading Ses Control Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_ses_control_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_ses_control_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_ses_control_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.trading_ses_control_flag, range, value, display)

  return offset + length, value
end

-- Trading Ses Status
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_ses_status = {}

-- Size: Trading Ses Status
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_ses_status.size = 1

-- Display: Trading Ses Status
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_ses_status.labels = {
  [0] = "Trading Ses Status: Unknown For No (0)",
  [10] = "Trading Ses Status: Halted For Ei (10)",
  [20] = "Trading Ses Status: Pre Open For Pos Oi Nw Rm Ma Bl (20)",
  [30] = "Trading Ses Status: Open For Ct And Oc (30)",
  [40] = "Trading Ses Status: Pre Close For Cas Rp Oi Nw Rc Ma (40)",
  [50] = "Trading Ses Status: Closed For Cl (50)",
  [100] = "Trading Ses Status: Day Closed For Dc (100)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_ses_status.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_ses_status.labels[value] or "Trading Ses Status: Unknown("..value..")"
end

-- Dissect: Trading Ses Status
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_ses_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_ses_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_ses_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.trading_ses_status, range, value, display)

  return offset + length, value
end

-- Trading Session Sub Id
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_session_sub_id = {}

-- Size: Trading Session Sub Id
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_session_sub_id.size = 1

-- Display: Trading Session Sub Id
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_session_sub_id.labels = {
  [100] = "Trading Session Sub Id: Not Yet Open No (100)",
  [1] = "Trading Session Sub Id: Pos Order Input Oi (1)",
  [101] = "Trading Session Sub Id: Pos No Cancellation Nw (101)",
  [108] = "Trading Session Sub Id: Pos Random Matching Rm (108)",
  [2] = "Trading Session Sub Id: Pos Order Matching Ma (2)",
  [7] = "Trading Session Sub Id: Blocking Bl (7)",
  [3] = "Trading Session Sub Id: Continuous Trading Ct (3)",
  [105] = "Trading Session Sub Id: Cas Reference Price Fixing Rp (105)",
  [5] = "Trading Session Sub Id: Cas Order Input Oi (5)",
  [106] = "Trading Session Sub Id: Cas No Cancellation Nw (106)",
  [107] = "Trading Session Sub Id: Cas Random Close Rc (107)",
  [4] = "Trading Session Sub Id: Cas Order Matching Ma (4)",
  [102] = "Trading Session Sub Id: Exchange Intervention Ei (102)",
  [103] = "Trading Session Sub Id: Close Cl (103)",
  [104] = "Trading Session Sub Id: Order Cancel Oc (104)",
  [0] = "Trading Session Sub Id: Day Close Dc (0)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_session_sub_id.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_session_sub_id.labels[value] or "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_session_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Trd Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trd_type = {}

-- Size: Trd Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trd_type.size = 2

-- Display: Trd Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trd_type.labels = {
  [0] = "Trd Type: Automatch Normal Public Trade Type Space (0)",
  [4] = "Trd Type: Late Trade Offexchange Previous Day Public Trade Type P (4)",
  [22] = "Trd Type: Nondirect Off Exchange Trade Public Trade Type M (22)",
  [100] = "Trd Type: Automatch Internalized Public Trade Type Y (100)",
  [101] = "Trd Type: Direct Offexchange Trade Public Trade Type X (101)",
  [102] = "Trd Type: Odd Lot Trade Public Trade Type D (102)",
  [103] = "Trd Type: Auction Trade Public Trade Type U (103)",
  [104] = "Trd Type: Overseas Trade (104)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.trd_type.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.trd_type.labels[value] or "Trd Type: Unknown("..value..")"
end

-- Dissect: Trd Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trd_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trd_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trd_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.trd_type, range, value, display)

  return offset + length, value
end

-- Underlying Security Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.underlying_security_code = {}

-- Size: Underlying Security Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.underlying_security_code.size = 4

-- Display: Underlying Security Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.underlying_security_code.display = function(value)
  return "Underlying Security Code: "..value
end

-- Dissect: Underlying Security Code
hkex_hkexsecurities_fulltickretrans_omd_v1_45.underlying_security_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.underlying_security_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.underlying_security_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.underlying_security_code, range, value, display)

  return offset + length, value
end

-- Upper Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.upper_price = {}

-- Size: Upper Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.upper_price.size = 4

-- Display: Upper Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.upper_price.display = function(value)
  return "Upper Price: "..value
end

-- Translate: Upper Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.upper_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Upper Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.upper_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.upper_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_fulltickretrans_omd_v1_45.upper_price.translate(raw)
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.upper_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.upper_price, range, value, display)

  return offset + length, value
end

-- Username
hkex_hkexsecurities_fulltickretrans_omd_v1_45.username = {}

-- Size: Username
hkex_hkexsecurities_fulltickretrans_omd_v1_45.username.size = 12

-- Display: Username
hkex_hkexsecurities_fulltickretrans_omd_v1_45.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
hkex_hkexsecurities_fulltickretrans_omd_v1_45.username.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.username.size
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

  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.username, range, value, display)

  return offset + length, value
end

-- Vcm Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_flag = {}

-- Size: Vcm Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_flag.size = 1

-- Display: Vcm Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_flag.labels = {
  ["Y"] = "Vcm Flag: Vcm Applicable (Y)",
  ["N"] = "Vcm Flag: Vcm Not Applicable (N)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_flag.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_flag.labels[value] or "Vcm Flag: Unknown("..value..")"
end

-- Dissect: Vcm Flag
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.vcm_flag, range, value, display)

  return offset + length, value
end

-- Vcm Lower Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_lower_price = {}

-- Size: Vcm Lower Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_lower_price.size = 4

-- Display: Vcm Lower Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_lower_price.display = function(value)
  return "Vcm Lower Price: "..value
end

-- Translate: Vcm Lower Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_lower_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Vcm Lower Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_lower_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_lower_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_lower_price.translate(raw)
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_lower_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.vcm_lower_price, range, value, display)

  return offset + length, value
end

-- Vcm Reference Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_reference_price = {}

-- Size: Vcm Reference Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_reference_price.size = 4

-- Display: Vcm Reference Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_reference_price.display = function(value)
  return "Vcm Reference Price: "..value
end

-- Translate: Vcm Reference Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_reference_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Vcm Reference Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_reference_price.translate(raw)
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.vcm_reference_price, range, value, display)

  return offset + length, value
end

-- Vcm Upper Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_upper_price = {}

-- Size: Vcm Upper Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_upper_price.size = 4

-- Display: Vcm Upper Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_upper_price.display = function(value)
  return "Vcm Upper Price: "..value
end

-- Translate: Vcm Upper Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_upper_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Vcm Upper Price
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_upper_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_upper_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_upper_price.translate(raw)
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_upper_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.vcm_upper_price, range, value, display)

  return offset + length, value
end

-- Warrant Maturity Date
hkex_hkexsecurities_fulltickretrans_omd_v1_45.warrant_maturity_date = {}

-- Size: Warrant Maturity Date
hkex_hkexsecurities_fulltickretrans_omd_v1_45.warrant_maturity_date.size = 4

-- Display: Warrant Maturity Date
hkex_hkexsecurities_fulltickretrans_omd_v1_45.warrant_maturity_date.display = function(value)
  return "Warrant Maturity Date: "..value
end

-- Dissect: Warrant Maturity Date
hkex_hkexsecurities_fulltickretrans_omd_v1_45.warrant_maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.warrant_maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.warrant_maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.warrant_maturity_date, range, value, display)

  return offset + length, value
end

-- Warrant Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.warrant_type = {}

-- Size: Warrant Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.warrant_type.size = 1

-- Display: Warrant Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.warrant_type.labels = {
  ["N"] = "Warrant Type: Normal Instrument (N)",
  ["X"] = "Warrant Type: Exotic Instrument (X)",
  ["0"] = "Warrant Type: Not Available (0)",
}

hkex_hkexsecurities_fulltickretrans_omd_v1_45.warrant_type.display = function(value)
  return hkex_hkexsecurities_fulltickretrans_omd_v1_45.warrant_type.labels[value] or "Warrant Type: Unknown("..value..")"
end

-- Dissect: Warrant Type
hkex_hkexsecurities_fulltickretrans_omd_v1_45.warrant_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_fulltickretrans_omd_v1_45.warrant_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.warrant_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.warrant_type, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Hkex HkexSecurities FullTickRetrans Omd 1.45
-----------------------------------------------------------------------

-- Vcm Trigger Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_trigger_message = {}

-- Size: Vcm Trigger Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_trigger_message.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.cooling_off_start_time.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.cooling_off_end_time.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_reference_price.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_lower_price.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_upper_price.size

-- Display: Vcm Trigger Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_trigger_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Vcm Trigger Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_trigger_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Cooling Off Start Time: Uint64
  index, cooling_off_start_time = hkex_hkexsecurities_fulltickretrans_omd_v1_45.cooling_off_start_time.dissect(buffer, index, packet, parent)

  -- Cooling Off End Time: Uint64
  index, cooling_off_end_time = hkex_hkexsecurities_fulltickretrans_omd_v1_45.cooling_off_end_time.dissect(buffer, index, packet, parent)

  -- Vcm Reference Price: Int32
  index, vcm_reference_price = hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_reference_price.dissect(buffer, index, packet, parent)

  -- Vcm Lower Price: Int32
  index, vcm_lower_price = hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_lower_price.dissect(buffer, index, packet, parent)

  -- Vcm Upper Price: Int32
  index, vcm_upper_price = hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_upper_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Vcm Trigger Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_trigger_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.vcm_trigger_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_trigger_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_trigger_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_trigger_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_cancel_message = {}

-- Size: Trade Cancel Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_cancel_message.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_id.size

-- Display: Trade Cancel Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Trade Id: Uint32
  index, trade_id = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.trade_cancel_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_message = {}

-- Size: Trade Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_message.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_id.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.price.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.quantity.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.trd_type.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_2.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_time.size

-- Display: Trade Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Trade Id: Uint32
  index, trade_id = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Int32
  index, price = hkex_hkexsecurities_fulltickretrans_omd_v1_45.price.dissect(buffer, index, packet, parent)

  -- Quantity: Uint32
  index, quantity = hkex_hkexsecurities_fulltickretrans_omd_v1_45.quantity.dissect(buffer, index, packet, parent)

  -- Trd Type: Int16
  index, trd_type = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trd_type.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_2.dissect(buffer, index, packet, parent)

  -- Trade Time: Uint64
  index, trade_time = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.trade_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_status_message = {}

-- Size: Security Status Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_status_message.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.suspension_indicator.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_3.size

-- Display: Security Status Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Suspension Indicator: Uint8
  index, suspension_indicator = hkex_hkexsecurities_fulltickretrans_omd_v1_45.suspension_indicator.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.security_status_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Status Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_session_status_message = {}

-- Size: Trading Session Status Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_session_status_message.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_code.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_1.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_session_sub_id.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_ses_status.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_ses_control_flag.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_4.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.start_date_time.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.end_date_time.size

-- Display: Trading Session Status Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_session_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_session_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Code: String
  index, market_code = hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_code.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_1.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: Uint8
  index, trading_session_sub_id = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Trading Ses Status: Uint8
  index, trading_ses_status = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_ses_status.dissect(buffer, index, packet, parent)

  -- Trading Ses Control Flag: String
  index, trading_ses_control_flag = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_ses_control_flag.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_4.dissect(buffer, index, packet, parent)

  -- Start Date Time: Uint64
  index, start_date_time = hkex_hkexsecurities_fulltickretrans_omd_v1_45.start_date_time.dissect(buffer, index, packet, parent)

  -- End Date Time: Uint64
  index, end_date_time = hkex_hkexsecurities_fulltickretrans_omd_v1_45.end_date_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_session_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.trading_session_status_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_session_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_session_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_session_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Response Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.retransmission_response_message = {}

-- Size: Retransmission Response Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.retransmission_response_message.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.channel_id.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.retrans_status.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_1.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.begin_seq_num.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.end_seq_num.size

-- Display: Retransmission Response Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.retransmission_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Response Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.retransmission_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Id: Uint16
  index, channel_id = hkex_hkexsecurities_fulltickretrans_omd_v1_45.channel_id.dissect(buffer, index, packet, parent)

  -- Retrans Status: Uint8
  index, retrans_status = hkex_hkexsecurities_fulltickretrans_omd_v1_45.retrans_status.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_1.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: Uint32
  index, begin_seq_num = hkex_hkexsecurities_fulltickretrans_omd_v1_45.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Uint32
  index, end_seq_num = hkex_hkexsecurities_fulltickretrans_omd_v1_45.end_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Response Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.retransmission_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.retransmission_response_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.retransmission_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.retransmission_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.retransmission_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.retransmission_request_message = {}

-- Size: Retransmission Request Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.retransmission_request_message.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.channel_id.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_2.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.begin_seq_num.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.end_seq_num.size

-- Display: Retransmission Request Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Id: Uint16
  index, channel_id = hkex_hkexsecurities_fulltickretrans_omd_v1_45.channel_id.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_2.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: Uint32
  index, begin_seq_num = hkex_hkexsecurities_fulltickretrans_omd_v1_45.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Uint32
  index, end_seq_num = hkex_hkexsecurities_fulltickretrans_omd_v1_45.end_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.retransmission_request_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Response Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.logon_response_message = {}

-- Size: Logon Response Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.logon_response_message.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.session_status.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_3.size

-- Display: Logon Response Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.logon_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Response Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.logon_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Status: Uint8
  index, session_status = hkex_hkexsecurities_fulltickretrans_omd_v1_45.session_status.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Response Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.logon_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.logon_response_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.logon_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.logon_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.logon_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.logon_message = {}

-- Size: Logon Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.logon_message.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.username.size

-- Display: Logon Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: String
  index, username = hkex_hkexsecurities_fulltickretrans_omd_v1_45.username.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.logon_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Complete Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.refresh_complete_message = {}

-- Size: Refresh Complete Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.refresh_complete_message.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.last_seq_num.size

-- Display: Refresh Complete Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.refresh_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Complete Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.refresh_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Seq Num: Uint32
  index, last_seq_num = hkex_hkexsecurities_fulltickretrans_omd_v1_45.last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Complete Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.refresh_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.refresh_complete_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.refresh_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.refresh_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.refresh_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Reference Price Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.reference_price_message = {}

-- Size: Reference Price Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.reference_price_message.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.reference_price.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.lower_price.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.upper_price.size

-- Display: Reference Price Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.reference_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Price Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.reference_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Reference Price: Int32
  index, reference_price = hkex_hkexsecurities_fulltickretrans_omd_v1_45.reference_price.dissect(buffer, index, packet, parent)

  -- Lower Price: Int32
  index, lower_price = hkex_hkexsecurities_fulltickretrans_omd_v1_45.lower_price.dissect(buffer, index, packet, parent)

  -- Upper Price: Int32
  index, upper_price = hkex_hkexsecurities_fulltickretrans_omd_v1_45.upper_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Price Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.reference_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.reference_price_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.reference_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.reference_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.reference_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Currency Rate Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_rate_message = {}

-- Size: Currency Rate Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_rate_message.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_code.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_1.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_factor.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_2.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_rate.size

-- Display: Currency Rate Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_rate_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Currency Rate Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_rate_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Currency Code: String
  index, currency_code = hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_code.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_1.dissect(buffer, index, packet, parent)

  -- Currency Factor: Uint16
  index, currency_factor = hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_factor.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_2.dissect(buffer, index, packet, parent)

  -- Currency Rate: Uint32
  index, currency_rate = hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_rate.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Currency Rate Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_rate_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.currency_rate_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_rate_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_rate_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_rate_message.fields(buffer, offset, packet, parent)
  end
end

-- Liquidity Provider
hkex_hkexsecurities_fulltickretrans_omd_v1_45.liquidity_provider = {}

-- Size: Liquidity Provider
hkex_hkexsecurities_fulltickretrans_omd_v1_45.liquidity_provider.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.lp_broker_number.size

-- Display: Liquidity Provider
hkex_hkexsecurities_fulltickretrans_omd_v1_45.liquidity_provider.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Provider
hkex_hkexsecurities_fulltickretrans_omd_v1_45.liquidity_provider.fields = function(buffer, offset, packet, parent, liquidity_provider_index)
  local index = offset

  -- Implicit Liquidity Provider Index
  if liquidity_provider_index ~= nil and show.indexes then
    local iteration = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.liquidity_provider_index, liquidity_provider_index)
    iteration:set_generated()
  end

  -- Lp Broker Number: Uint16
  index, lp_broker_number = hkex_hkexsecurities_fulltickretrans_omd_v1_45.lp_broker_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Liquidity Provider
hkex_hkexsecurities_fulltickretrans_omd_v1_45.liquidity_provider.dissect = function(buffer, offset, packet, parent, liquidity_provider_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.liquidity_provider, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.liquidity_provider.fields(buffer, offset, packet, parent, liquidity_provider_index)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.liquidity_provider.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.liquidity_provider.fields(buffer, offset, packet, parent, liquidity_provider_index)
  end
end

-- Liquidity Provider Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.liquidity_provider_message = {}

-- Calculate size of: Liquidity Provider Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.liquidity_provider_message.size = function(buffer, offset)
  local index = 0

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_liquidity_providers.size

  -- Calculate field size from count
  local liquidity_provider_count = buffer(offset + index - 2, 2):le_uint()
  index = index + liquidity_provider_count * 2

  return index
end

-- Display: Liquidity Provider Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.liquidity_provider_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Provider Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.liquidity_provider_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- No Liquidity Providers: Uint16
  index, no_liquidity_providers = hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_liquidity_providers.dissect(buffer, index, packet, parent)

  -- Repeating: Liquidity Provider
  for liquidity_provider_index = 1, no_liquidity_providers do
    index, liquidity_provider = hkex_hkexsecurities_fulltickretrans_omd_v1_45.liquidity_provider.dissect(buffer, index, packet, parent, liquidity_provider_index)
  end

  return index
end

-- Dissect: Liquidity Provider Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.liquidity_provider_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.liquidity_provider_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.liquidity_provider_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.liquidity_provider_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.liquidity_provider_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Security
hkex_hkexsecurities_fulltickretrans_omd_v1_45.underlying_security = {}

-- Size: Underlying Security
hkex_hkexsecurities_fulltickretrans_omd_v1_45.underlying_security.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.underlying_security_code.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_4.size

-- Display: Underlying Security
hkex_hkexsecurities_fulltickretrans_omd_v1_45.underlying_security.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Security
hkex_hkexsecurities_fulltickretrans_omd_v1_45.underlying_security.fields = function(buffer, offset, packet, parent, underlying_security_index)
  local index = offset

  -- Implicit Underlying Security Index
  if underlying_security_index ~= nil and show.indexes then
    local iteration = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.underlying_security_index, underlying_security_index)
    iteration:set_generated()
  end

  -- Underlying Security Code: Uint32
  index, underlying_security_code = hkex_hkexsecurities_fulltickretrans_omd_v1_45.underlying_security_code.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Security
hkex_hkexsecurities_fulltickretrans_omd_v1_45.underlying_security.dissect = function(buffer, offset, packet, parent, underlying_security_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.underlying_security, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.underlying_security.fields(buffer, offset, packet, parent, underlying_security_index)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.underlying_security.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.underlying_security.fields(buffer, offset, packet, parent, underlying_security_index)
  end
end

-- Entitlement Composite
hkex_hkexsecurities_fulltickretrans_omd_v1_45.entitlement_composite = {}

-- Size: Entitlement Composite
hkex_hkexsecurities_fulltickretrans_omd_v1_45.entitlement_composite.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.entitlement.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_entitlement.size

-- Display: Entitlement Composite
hkex_hkexsecurities_fulltickretrans_omd_v1_45.entitlement_composite.display = function(packet, parent, value, length)
  if value == nil then
    return ": No Value"
  end

  return ": " .. tostring(value)
end

-- Dissect Fields: Entitlement Composite
hkex_hkexsecurities_fulltickretrans_omd_v1_45.entitlement_composite.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Entitlement: Int32
  index, entitlement = hkex_hkexsecurities_fulltickretrans_omd_v1_45.entitlement.dissect(buffer, index, packet, parent)

  -- Decimals In Entitlement: Uint8
  index, decimals_in_entitlement = hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_entitlement.dissect(buffer, index, packet, parent)

  -- Composite value
  local entitlement_composite = entitlement * 10 ^ decimals_in_entitlement

  return index, entitlement_composite
end

-- Dissect: Entitlement Composite
hkex_hkexsecurities_fulltickretrans_omd_v1_45.entitlement_composite.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.entitlement_composite, buffer(offset, 0))
    local index, value = hkex_hkexsecurities_fulltickretrans_omd_v1_45.entitlement_composite.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.entitlement_composite.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.entitlement_composite.fields(buffer, offset, packet, parent)
  end
end

-- Call Price Composite
hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_price_composite = {}

-- Size: Call Price Composite
hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_price_composite.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_price.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_call_price.size

-- Display: Call Price Composite
hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_price_composite.display = function(packet, parent, value, length)
  if value == nil then
    return ": No Value"
  end

  return ": " .. tostring(value)
end

-- Dissect Fields: Call Price Composite
hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_price_composite.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Call Price: Int32
  index, call_price = hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_price.dissect(buffer, index, packet, parent)

  -- Decimals In Call Price: Uint8
  index, decimals_in_call_price = hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_call_price.dissect(buffer, index, packet, parent)

  -- Composite value
  local call_price_composite = call_price * 10 ^ decimals_in_call_price

  return index, call_price_composite
end

-- Dissect: Call Price Composite
hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_price_composite.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.call_price_composite, buffer(offset, 0))
    local index, value = hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_price_composite.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_price_composite.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_price_composite.fields(buffer, offset, packet, parent)
  end
end

-- Face Value Composite
hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value_composite = {}

-- Size: Face Value Composite
hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value_composite.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_face_value.size

-- Display: Face Value Composite
hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value_composite.display = function(packet, parent, value, length)
  if value == nil then
    return ": No Value"
  end

  return ": " .. tostring(value)
end

-- Dissect Fields: Face Value Composite
hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value_composite.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Face Value: Uint64
  index, face_value = hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value.dissect(buffer, index, packet, parent)

  -- Decimals In Face Value: Uint8
  index, decimals_in_face_value = hkex_hkexsecurities_fulltickretrans_omd_v1_45.decimals_in_face_value.dissect(buffer, index, packet, parent)

  -- Composite value
  local face_value_composite = face_value * 10 ^ decimals_in_face_value

  return index, face_value_composite
end

-- Dissect: Face Value Composite
hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value_composite.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.face_value_composite, buffer(offset, 0))
    local index, value = hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value_composite.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value_composite.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value_composite.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_definition_message = {}

-- Calculate size of: Security Definition Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_code.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.isin_code.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.instrument_type.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.product_type.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_1.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.spread_table_code.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_short_name.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_code.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_name_gccs.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_name_gb.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.lot_size.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_4.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.previous_closing_price.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_flag.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.short_sell_flag.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.cas_flag.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.ccass_flag.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.dummy_security_flag.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.second_filler_1.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.stamp_duty_flag.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.third_filler_1.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.listing_date.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.delisting_date.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.free_text.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_62.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_flag.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_upper_limit.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_lower_limit.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.domain_stmt_security_code.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_37.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.efn_flag.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.accrued_interest.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.coupon_rate.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.fourth_filler_1.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value_composite.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value_currency.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.bond_maturity_date.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.investor_type.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_44.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.conversion_ratio.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.strike_price_1.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.strike_price_2.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.warrant_maturity_date.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_put_flag.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.style.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_2.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.warrant_type.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_price_composite.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.entitlement_composite.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_warrants_per_entitlement.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_63.size

  index = index + hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_underlying_securities.size

  -- Calculate field size from count
  local underlying_security_count = buffer(offset + index - 2, 2):le_uint()
  index = index + underlying_security_count * 8

  return index
end

-- Display: Security Definition Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Market Code: String
  index, market_code = hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_code.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = hkex_hkexsecurities_fulltickretrans_omd_v1_45.isin_code.dissect(buffer, index, packet, parent)

  -- Instrument Type: String
  index, instrument_type = hkex_hkexsecurities_fulltickretrans_omd_v1_45.instrument_type.dissect(buffer, index, packet, parent)

  -- Product Type: Uint8
  index, product_type = hkex_hkexsecurities_fulltickretrans_omd_v1_45.product_type.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_1.dissect(buffer, index, packet, parent)

  -- Spread Table Code: String
  index, spread_table_code = hkex_hkexsecurities_fulltickretrans_omd_v1_45.spread_table_code.dissect(buffer, index, packet, parent)

  -- Security Short Name: String
  index, security_short_name = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_short_name.dissect(buffer, index, packet, parent)

  -- Currency Code: String
  index, currency_code = hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_code.dissect(buffer, index, packet, parent)

  -- Security Name Gccs: Binary
  index, security_name_gccs = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_name_gccs.dissect(buffer, index, packet, parent)

  -- Security Name Gb: Binary
  index, security_name_gb = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_name_gb.dissect(buffer, index, packet, parent)

  -- Lot Size: Uint32
  index, lot_size = hkex_hkexsecurities_fulltickretrans_omd_v1_45.lot_size.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_4.dissect(buffer, index, packet, parent)

  -- Previous Closing Price: Int32
  index, previous_closing_price = hkex_hkexsecurities_fulltickretrans_omd_v1_45.previous_closing_price.dissect(buffer, index, packet, parent)

  -- Vcm Flag: String
  index, vcm_flag = hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_flag.dissect(buffer, index, packet, parent)

  -- Short Sell Flag: String
  index, short_sell_flag = hkex_hkexsecurities_fulltickretrans_omd_v1_45.short_sell_flag.dissect(buffer, index, packet, parent)

  -- Cas Flag: String
  index, cas_flag = hkex_hkexsecurities_fulltickretrans_omd_v1_45.cas_flag.dissect(buffer, index, packet, parent)

  -- Ccass Flag: String
  index, ccass_flag = hkex_hkexsecurities_fulltickretrans_omd_v1_45.ccass_flag.dissect(buffer, index, packet, parent)

  -- Dummy Security Flag: String
  index, dummy_security_flag = hkex_hkexsecurities_fulltickretrans_omd_v1_45.dummy_security_flag.dissect(buffer, index, packet, parent)

  -- Second Filler 1: String
  index, second_filler_1 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.second_filler_1.dissect(buffer, index, packet, parent)

  -- Stamp Duty Flag: String
  index, stamp_duty_flag = hkex_hkexsecurities_fulltickretrans_omd_v1_45.stamp_duty_flag.dissect(buffer, index, packet, parent)

  -- Third Filler 1: String
  index, third_filler_1 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.third_filler_1.dissect(buffer, index, packet, parent)

  -- Listing Date: Uint32
  index, listing_date = hkex_hkexsecurities_fulltickretrans_omd_v1_45.listing_date.dissect(buffer, index, packet, parent)

  -- Delisting Date: Uint32
  index, delisting_date = hkex_hkexsecurities_fulltickretrans_omd_v1_45.delisting_date.dissect(buffer, index, packet, parent)

  -- Free Text: String
  index, free_text = hkex_hkexsecurities_fulltickretrans_omd_v1_45.free_text.dissect(buffer, index, packet, parent)

  -- Filler 62: String
  index, filler_62 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_62.dissect(buffer, index, packet, parent)

  -- Pos Flag: String
  index, pos_flag = hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_flag.dissect(buffer, index, packet, parent)

  -- Pos Upper Limit: Int32
  index, pos_upper_limit = hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_upper_limit.dissect(buffer, index, packet, parent)

  -- Pos Lower Limit: Int32
  index, pos_lower_limit = hkex_hkexsecurities_fulltickretrans_omd_v1_45.pos_lower_limit.dissect(buffer, index, packet, parent)

  -- Domain Stmt Security Code: Uint32
  index, domain_stmt_security_code = hkex_hkexsecurities_fulltickretrans_omd_v1_45.domain_stmt_security_code.dissect(buffer, index, packet, parent)

  -- Filler 37: String
  index, filler_37 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_37.dissect(buffer, index, packet, parent)

  -- Efn Flag: String
  index, efn_flag = hkex_hkexsecurities_fulltickretrans_omd_v1_45.efn_flag.dissect(buffer, index, packet, parent)

  -- Accrued Interest: Uint32
  index, accrued_interest = hkex_hkexsecurities_fulltickretrans_omd_v1_45.accrued_interest.dissect(buffer, index, packet, parent)

  -- Coupon Rate: Uint32
  index, coupon_rate = hkex_hkexsecurities_fulltickretrans_omd_v1_45.coupon_rate.dissect(buffer, index, packet, parent)

  -- Fourth Filler 1: String
  index, fourth_filler_1 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.fourth_filler_1.dissect(buffer, index, packet, parent)

  -- Face Value Composite: Struct of 2 fields
  index, face_value_composite = hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value_composite.dissect(buffer, index, packet, parent)

  -- Face Value Currency: String
  index, face_value_currency = hkex_hkexsecurities_fulltickretrans_omd_v1_45.face_value_currency.dissect(buffer, index, packet, parent)

  -- Bond Maturity Date: Uint32
  index, bond_maturity_date = hkex_hkexsecurities_fulltickretrans_omd_v1_45.bond_maturity_date.dissect(buffer, index, packet, parent)

  -- Investor Type: String
  index, investor_type = hkex_hkexsecurities_fulltickretrans_omd_v1_45.investor_type.dissect(buffer, index, packet, parent)

  -- Filler 44: String
  index, filler_44 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_44.dissect(buffer, index, packet, parent)

  -- Conversion Ratio: Uint32
  index, conversion_ratio = hkex_hkexsecurities_fulltickretrans_omd_v1_45.conversion_ratio.dissect(buffer, index, packet, parent)

  -- Strike Price 1: Int32
  index, strike_price_1 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.strike_price_1.dissect(buffer, index, packet, parent)

  -- Strike Price 2: Int32
  index, strike_price_2 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.strike_price_2.dissect(buffer, index, packet, parent)

  -- Warrant Maturity Date: Uint32
  index, warrant_maturity_date = hkex_hkexsecurities_fulltickretrans_omd_v1_45.warrant_maturity_date.dissect(buffer, index, packet, parent)

  -- Call Put Flag: String
  index, call_put_flag = hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_put_flag.dissect(buffer, index, packet, parent)

  -- Style: String
  index, style = hkex_hkexsecurities_fulltickretrans_omd_v1_45.style.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_2.dissect(buffer, index, packet, parent)

  -- Warrant Type: String
  index, warrant_type = hkex_hkexsecurities_fulltickretrans_omd_v1_45.warrant_type.dissect(buffer, index, packet, parent)

  -- Call Price Composite: Struct of 2 fields
  index, call_price_composite = hkex_hkexsecurities_fulltickretrans_omd_v1_45.call_price_composite.dissect(buffer, index, packet, parent)

  -- Entitlement Composite: Struct of 2 fields
  index, entitlement_composite = hkex_hkexsecurities_fulltickretrans_omd_v1_45.entitlement_composite.dissect(buffer, index, packet, parent)

  -- No Warrants Per Entitlement: Uint32
  index, no_warrants_per_entitlement = hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_warrants_per_entitlement.dissect(buffer, index, packet, parent)

  -- Filler 63: String
  index, filler_63 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_63.dissect(buffer, index, packet, parent)

  -- No Underlying Securities: Uint16
  index, no_underlying_securities = hkex_hkexsecurities_fulltickretrans_omd_v1_45.no_underlying_securities.dissect(buffer, index, packet, parent)

  -- Repeating: Underlying Security
  for underlying_security_index = 1, no_underlying_securities do
    index, underlying_security = hkex_hkexsecurities_fulltickretrans_omd_v1_45.underlying_security.dissect(buffer, index, packet, parent, underlying_security_index)
  end

  return index
end

-- Dissect: Security Definition Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.security_definition_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Definition Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_definition_message = {}

-- Size: Market Definition Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_definition_message.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_code.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_name.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_code.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.number_of_securities.size

-- Display: Market Definition Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Definition Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Code: String
  index, market_code = hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_code.dissect(buffer, index, packet, parent)

  -- Market Name: String
  index, market_name = hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_name.dissect(buffer, index, packet, parent)

  -- Currency Code: String
  index, currency_code = hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_code.dissect(buffer, index, packet, parent)

  -- Number Of Securities: Uint32
  index, number_of_securities = hkex_hkexsecurities_fulltickretrans_omd_v1_45.number_of_securities.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Definition Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.market_definition_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Imbalance Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_message = {}

-- Size: Order Imbalance Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_message.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_direction.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_1.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_quantity.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_2.size

-- Display: Order Imbalance Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Imbalance Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Order Imbalance Direction: String
  index, order_imbalance_direction = hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_direction.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_1.dissect(buffer, index, packet, parent)

  -- Order Imbalance Quantity: Uint64
  index, order_imbalance_quantity = hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_quantity.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Imbalance Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.order_imbalance_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.modify_order_message = {}

-- Size: Modify Order Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.modify_order_message.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_id.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.quantity.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.side.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_2.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_book_position.size

-- Display: Modify Order Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Order Id: Uint64
  index, order_id = hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: Uint32
  index, quantity = hkex_hkexsecurities_fulltickretrans_omd_v1_45.quantity.dissect(buffer, index, packet, parent)

  -- Side: Uint16
  index, side = hkex_hkexsecurities_fulltickretrans_omd_v1_45.side.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_2.dissect(buffer, index, packet, parent)

  -- Order Book Position: Int32
  index, order_book_position = hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_book_position.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.modify_order_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Indicative Equilibrium Price Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.indicative_equilibrium_price_message = {}

-- Size: Indicative Equilibrium Price Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.indicative_equilibrium_price_message.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.price.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.aggregate_quantity.size

-- Display: Indicative Equilibrium Price Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.indicative_equilibrium_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indicative Equilibrium Price Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.indicative_equilibrium_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Price: Int32
  index, price = hkex_hkexsecurities_fulltickretrans_omd_v1_45.price.dissect(buffer, index, packet, parent)

  -- Aggregate Quantity: Uint64
  index, aggregate_quantity = hkex_hkexsecurities_fulltickretrans_omd_v1_45.aggregate_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indicative Equilibrium Price Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.indicative_equilibrium_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.indicative_equilibrium_price_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.indicative_equilibrium_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.indicative_equilibrium_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.indicative_equilibrium_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.delete_order_message = {}

-- Size: Delete Order Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.delete_order_message.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_id.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.side.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_2.size

-- Display: Delete Order Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Order Id: Uint64
  index, order_id = hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_id.dissect(buffer, index, packet, parent)

  -- Side: Uint16
  index, side = hkex_hkexsecurities_fulltickretrans_omd_v1_45.side.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.delete_order_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Disaster Recovery Signal Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.disaster_recovery_signal_message = {}

-- Size: Disaster Recovery Signal Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.disaster_recovery_signal_message.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.dr_status.size

-- Display: Disaster Recovery Signal Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.disaster_recovery_signal_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disaster Recovery Signal Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.disaster_recovery_signal_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dr Status: Uint32
  index, dr_status = hkex_hkexsecurities_fulltickretrans_omd_v1_45.dr_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Disaster Recovery Signal Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.disaster_recovery_signal_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.disaster_recovery_signal_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.disaster_recovery_signal_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.disaster_recovery_signal_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.disaster_recovery_signal_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Reset Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.sequence_reset_message = {}

-- Size: Sequence Reset Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.sequence_reset_message.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.new_seq_no.size

-- Display: Sequence Reset Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.sequence_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.sequence_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: Uint32
  index, new_seq_no = hkex_hkexsecurities_fulltickretrans_omd_v1_45.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.sequence_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.sequence_reset_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.sequence_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.sequence_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.sequence_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.add_order_message = {}

-- Size: Add Order Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.add_order_message.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_id.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.price.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.quantity.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.side.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_type.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_1.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_book_position.size

-- Display: Add Order Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Order Id: Uint64
  index, order_id = hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_id.dissect(buffer, index, packet, parent)

  -- Price: Int32
  index, price = hkex_hkexsecurities_fulltickretrans_omd_v1_45.price.dissect(buffer, index, packet, parent)

  -- Quantity: Uint32
  index, quantity = hkex_hkexsecurities_fulltickretrans_omd_v1_45.quantity.dissect(buffer, index, packet, parent)

  -- Side: Uint16
  index, side = hkex_hkexsecurities_fulltickretrans_omd_v1_45.side.dissect(buffer, index, packet, parent)

  -- Order Type: String
  index, order_type = hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_type.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler_1.dissect(buffer, index, packet, parent)

  -- Order Book Position: Int32
  index, order_book_position = hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_book_position.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.add_order_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
hkex_hkexsecurities_fulltickretrans_omd_v1_45.payload = {}

-- Dispatch: Payload
hkex_hkexsecurities_fulltickretrans_omd_v1_45.payload.dispatch = {
  [30] = hkex_hkexsecurities_fulltickretrans_omd_v1_45.add_order_message.dissect,
  [100] = hkex_hkexsecurities_fulltickretrans_omd_v1_45.sequence_reset_message.dissect,
  [105] = hkex_hkexsecurities_fulltickretrans_omd_v1_45.disaster_recovery_signal_message.dissect,
  [32] = hkex_hkexsecurities_fulltickretrans_omd_v1_45.delete_order_message.dissect,
  [41] = hkex_hkexsecurities_fulltickretrans_omd_v1_45.indicative_equilibrium_price_message.dissect,
  [31] = hkex_hkexsecurities_fulltickretrans_omd_v1_45.modify_order_message.dissect,
  [56] = hkex_hkexsecurities_fulltickretrans_omd_v1_45.order_imbalance_message.dissect,
  [10] = hkex_hkexsecurities_fulltickretrans_omd_v1_45.market_definition_message.dissect,
  [11] = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_definition_message.dissect,
  [13] = hkex_hkexsecurities_fulltickretrans_omd_v1_45.liquidity_provider_message.dissect,
  [14] = hkex_hkexsecurities_fulltickretrans_omd_v1_45.currency_rate_message.dissect,
  [43] = hkex_hkexsecurities_fulltickretrans_omd_v1_45.reference_price_message.dissect,
  [203] = hkex_hkexsecurities_fulltickretrans_omd_v1_45.refresh_complete_message.dissect,
  [101] = hkex_hkexsecurities_fulltickretrans_omd_v1_45.logon_message.dissect,
  [102] = hkex_hkexsecurities_fulltickretrans_omd_v1_45.logon_response_message.dissect,
  [201] = hkex_hkexsecurities_fulltickretrans_omd_v1_45.retransmission_request_message.dissect,
  [202] = hkex_hkexsecurities_fulltickretrans_omd_v1_45.retransmission_response_message.dissect,
  [20] = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trading_session_status_message.dissect,
  [21] = hkex_hkexsecurities_fulltickretrans_omd_v1_45.security_status_message.dissect,
  [50] = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_message.dissect,
  [51] = hkex_hkexsecurities_fulltickretrans_omd_v1_45.trade_cancel_message.dissect,
  [23] = hkex_hkexsecurities_fulltickretrans_omd_v1_45.vcm_trigger_message.dissect,
}

-- Dissect: Payload
hkex_hkexsecurities_fulltickretrans_omd_v1_45.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  local dissect = hkex_hkexsecurities_fulltickretrans_omd_v1_45.payload.dispatch[msg_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Msg Header
hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_header = {}

-- Size: Msg Header
hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_header.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_size.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_type.size

-- Display: Msg Header
hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Msg Header
hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: 2 Byte Unsigned Fixed Width Integer
  index, msg_size = hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 22 values
  index, msg_type = hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Msg Header
hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.msg_header, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.message = {}

-- Display: Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Msg Header: Struct of 2 fields
  index, msg_header = hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 22 branches
  index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
hkex_hkexsecurities_fulltickretrans_omd_v1_45.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.message, buffer(offset, 0))
    local current = hkex_hkexsecurities_fulltickretrans_omd_v1_45.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    hkex_hkexsecurities_fulltickretrans_omd_v1_45.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
hkex_hkexsecurities_fulltickretrans_omd_v1_45.packet_header = {}

-- Size: Packet Header
hkex_hkexsecurities_fulltickretrans_omd_v1_45.packet_header.size =
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.pkt_size.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_count.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.seq_num.size + 
  hkex_hkexsecurities_fulltickretrans_omd_v1_45.send_time.size

-- Display: Packet Header
hkex_hkexsecurities_fulltickretrans_omd_v1_45.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
hkex_hkexsecurities_fulltickretrans_omd_v1_45.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = hkex_hkexsecurities_fulltickretrans_omd_v1_45.pkt_size.dissect(buffer, index, packet, parent)

  -- Msg Count: 1 Byte Unsigned Fixed Width Integer
  index, msg_count = hkex_hkexsecurities_fulltickretrans_omd_v1_45.msg_count.dissect(buffer, index, packet, parent)

  -- Filler: 1 Byte
  index, filler = hkex_hkexsecurities_fulltickretrans_omd_v1_45.filler.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = hkex_hkexsecurities_fulltickretrans_omd_v1_45.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: 8 Byte Unsigned Fixed Width Integer
  index, send_time = hkex_hkexsecurities_fulltickretrans_omd_v1_45.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
hkex_hkexsecurities_fulltickretrans_omd_v1_45.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.fields.packet_header, buffer(offset, 0))
    local index = hkex_hkexsecurities_fulltickretrans_omd_v1_45.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_fulltickretrans_omd_v1_45.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_fulltickretrans_omd_v1_45.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
hkex_hkexsecurities_fulltickretrans_omd_v1_45.packet = {}

-- Verify required size of Tcp packet
hkex_hkexsecurities_fulltickretrans_omd_v1_45.packet.requiredsize = function(buffer)
  return buffer:len() >= hkex_hkexsecurities_fulltickretrans_omd_v1_45.packet_header.size
end

-- Dissect Packet
hkex_hkexsecurities_fulltickretrans_omd_v1_45.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = hkex_hkexsecurities_fulltickretrans_omd_v1_45.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Count
  local msg_count = buffer(index - 14, 1):uint()

  -- Repeating: Message
  for message_index = 1, msg_count do

    -- Dependency element: Msg Size
    local msg_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = hkex_hkexsecurities_fulltickretrans_omd_v1_45.message.dissect(buffer, index, packet, parent, msg_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.init()
end

-- Dissector for Hkex HkexSecurities FullTickRetrans Omd 1.45
function omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.name

  local length = buffer:len()
  local index = 0

  -- Dissect each message the segment carries
  while index < length do
    local remaining = length - index

    -- The message length lives in the header: wait for the header before reading it
    if remaining < hkex_hkexsecurities_fulltickretrans_omd_v1_45.packet_header.size then
      packet.desegment_offset = index
      packet.desegment_len = DESEGMENT_ONE_MORE_SEGMENT
      return length
    end

    local size = buffer(index, 2):le_uint()
    -- A message split across segments: ask TCP for exactly the bytes still missing
    if remaining < size then
      packet.desegment_offset = index
      packet.desegment_len = size - remaining
      return length
    end

    local protocol = parent:add(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45, buffer(index, size), omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.description, "("..size.." Bytes)")
    hkex_hkexsecurities_fulltickretrans_omd_v1_45.packet.dissect(buffer(index, size):tvb(), packet, protocol)
    protocol:set_len(size)
    index = index + size
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
hkex_hkexsecurities_fulltickretrans_omd_v1_45.packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local msg_type = buffer(18, 2):le_uint()

  -- Add Order Message
  if msg_type == 30 then
    return true
  end

  -- Sequence Reset Message
  if msg_type == 100 then
    return true
  end

  -- Disaster Recovery Signal Message
  if msg_type == 105 then
    return true
  end

  -- Delete Order Message
  if msg_type == 32 then
    return true
  end

  -- Indicative Equilibrium Price Message
  if msg_type == 41 then
    return true
  end

  -- Modify Order Message
  if msg_type == 31 then
    return true
  end

  -- Order Imbalance Message
  if msg_type == 56 then
    return true
  end

  -- Market Definition Message
  if msg_type == 10 then
    return true
  end

  -- Security Definition Message
  if msg_type == 11 then
    return true
  end

  -- Liquidity Provider Message
  if msg_type == 13 then
    return true
  end

  -- Currency Rate Message
  if msg_type == 14 then
    return true
  end

  -- Reference Price Message
  if msg_type == 43 then
    return true
  end

  -- Refresh Complete Message
  if msg_type == 203 then
    return true
  end

  -- Logon Message
  if msg_type == 101 then
    return true
  end

  -- Logon Response Message
  if msg_type == 102 then
    return true
  end

  -- Retransmission Request Message
  if msg_type == 201 then
    return true
  end

  -- Retransmission Response Message
  if msg_type == 202 then
    return true
  end

  -- Trading Session Status Message
  if msg_type == 20 then
    return true
  end

  -- Security Status Message
  if msg_type == 21 then
    return true
  end

  -- Trade Message
  if msg_type == 50 then
    return true
  end

  -- Trade Cancel Message
  if msg_type == 51 then
    return true
  end

  -- Vcm Trigger Message
  if msg_type == 23 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Hkex HkexSecurities FullTickRetrans Omd 1.45 (Tcp)
local function omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not hkex_hkexsecurities_fulltickretrans_omd_v1_45.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp packet message dispatch
  if not hkex_hkexsecurities_fulltickretrans_omd_v1_45.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45
  omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Hkex HkexSecurities FullTickRetrans Omd 1.45
omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45:register_heuristic("tcp", omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45_tcp_heuristic)

-- Register Hkex HkexSecurities FullTickRetrans Omd 1.45 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_hkex_hkexsecurities_fulltickretrans_omd_v1_45)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Hong Kong Exchanges and Clearing
--   Version: 1.45
--   Date: Friday, January 9, 2026
--   Specification: HKEX_OMDC_Binary_Interface_Specifications_v1.45.pdf
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
