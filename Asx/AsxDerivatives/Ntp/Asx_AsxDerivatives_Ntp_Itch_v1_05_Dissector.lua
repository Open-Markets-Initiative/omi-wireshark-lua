-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Asx AsxDerivatives Ntp Itch 1.05 Protocol
local omi_asx_asxderivatives_ntp_itch_v1_05 = Proto("Omi.Asx.AsxDerivatives.Ntp.Itch.v1.05", "Asx AsxDerivatives Ntp Itch 1.05")

-- Protocol table
local asx_asxderivatives_ntp_itch_v1_05 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Asx AsxDerivatives Ntp Itch 1.05 Fields
omi_asx_asxderivatives_ntp_itch_v1_05.fields.aot_lower_price = ProtoField.new("Aot Lower Price", "asx.asxderivatives.ntp.itch.v1.05.aotlowerprice", ftypes.DOUBLE, nil, nil, nil, "Lower range of the AOT.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.aot_price = ProtoField.new("Aot Price", "asx.asxderivatives.ntp.itch.v1.05.aotprice", ftypes.DOUBLE, nil, nil, nil, "Anomalous Order Threshold price (AOT).")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.aot_upper_price = ProtoField.new("Aot Upper Price", "asx.asxderivatives.ntp.itch.v1.05.aotupperprice", ftypes.DOUBLE, nil, nil, nil, "Upper range of the AOT.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.ask_quantity = ProtoField.new("Ask Quantity", "asx.asxderivatives.ntp.itch.v1.05.askquantity", ftypes.UINT64, nil, nil, nil, "Total Ask Quantity available for execution.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.basis_of_quotation = ProtoField.new("Basis Of Quotation", "asx.asxderivatives.ntp.itch.v1.05.basisofquotation", ftypes.STRING, nil, nil, nil, "Blank filled. Not available for ASX 24 products.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.bid_quantity = ProtoField.new("Bid Quantity", "asx.asxderivatives.ntp.itch.v1.05.bidquantity", ftypes.UINT64, nil, nil, nil, "Total Bid Quantity available for execution.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.block_lot_size = ProtoField.new("Block Lot Size", "asx.asxderivatives.ntp.itch.v1.05.blocklotsize", ftypes.UINT32, nil, nil, nil, "Indicates the number of lots that represent a block lot for the order book.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.bundle_leg = ProtoField.new("Bundle Leg", "asx.asxderivatives.ntp.itch.v1.05.bundleleg", ftypes.STRING)
omi_asx_asxderivatives_ntp_itch_v1_05.fields.buyer_combination_trade_id = ProtoField.new("Buyer Combination Trade Id", "asx.asxderivatives.ntp.itch.v1.05.buyercombinationtradeid", ftypes.UINT64, nil, nil, nil, "A non-zero value indicates that this trade is part of an execution cycle for a combination trade from the E or P message.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.buyer_order_id = ProtoField.new("Buyer Order Id", "asx.asxderivatives.ntp.itch.v1.05.buyerorderid", ftypes.UINT64, nil, nil, nil, "Reference number of the Buyer’s order – 0 if order is aggressive.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.buyer_participant_id = ProtoField.new("Buyer Participant Id", "asx.asxderivatives.ntp.itch.v1.05.buyerparticipantid", ftypes.STRING, nil, nil, nil, "Buying participant identifier of the owner of the aggressive order.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.buyer_side = ProtoField.new("Buyer Side", "asx.asxderivatives.ntp.itch.v1.05.buyerside", ftypes.STRING, nil, nil, nil, "Type of order")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.buyer_tradeable_instrument_id = ProtoField.new("Buyer Tradeable Instrument Id", "asx.asxderivatives.ntp.itch.v1.05.buyertradeableinstrumentid", ftypes.UINT32, nil, nil, nil, "Identifier of the Buyers Order Book.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.cfi_code = ProtoField.new("Cfi Code", "asx.asxderivatives.ntp.itch.v1.05.cficode", ftypes.STRING, nil, nil, nil, "Indicates the type of security using ISO 10962 standard, CFI code values.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.combination_leg = ProtoField.new("Combination Leg", "asx.asxderivatives.ntp.itch.v1.05.combinationleg", ftypes.STRING)
omi_asx_asxderivatives_ntp_itch_v1_05.fields.combination_trade_id = ProtoField.new("Combination Trade Id", "asx.asxderivatives.ntp.itch.v1.05.combinationtradeid", ftypes.UINT64, nil, nil, nil, "A non-zero value indicates that this trade is part of an execution cycle for a combination trade.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.counter_party_id = ProtoField.new("Counter Party Id", "asx.asxderivatives.ntp.itch.v1.05.counterpartyid", ftypes.STRING, nil, nil, nil, "Participant identifier of the aggressive party to the execution in non-anonymous markets. Space filled for anonymous instruments.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.coupon_rate = ProtoField.new("Coupon Rate", "asx.asxderivatives.ntp.itch.v1.05.couponrate", ftypes.UINT16, nil, nil, nil, "The coupon percentage rate for bonds.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.cumulative_volume = ProtoField.new("Cumulative Volume", "asx.asxderivatives.ntp.itch.v1.05.cumulativevolume", ftypes.UINT64, nil, nil, nil, "Volume traded for the specified VOI Trade Date.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.currency = ProtoField.new("Currency", "asx.asxderivatives.ntp.itch.v1.05.currency", ftypes.STRING, nil, nil, nil, "Currency of contract.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.equilibrium_price = ProtoField.new("Equilibrium Price", "asx.asxderivatives.ntp.itch.v1.05.equilibriumprice", ftypes.DOUBLE, nil, nil, nil, "Price at which matching will occur.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.etr_lower_price = ProtoField.new("Etr Lower Price", "asx.asxderivatives.ntp.itch.v1.05.etrlowerprice", ftypes.DOUBLE, nil, nil, nil, "Lower range of the ETR.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.etr_price = ProtoField.new("Etr Price", "asx.asxderivatives.ntp.itch.v1.05.etrprice", ftypes.DOUBLE, nil, nil, nil, "Extreme Trade Range price (ETR), if zero, then MIR is not enforced.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.etr_upper_price = ProtoField.new("Etr Upper Price", "asx.asxderivatives.ntp.itch.v1.05.etrupperprice", ftypes.DOUBLE, nil, nil, nil, "Upper range of the ETR.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.event_code = ProtoField.new("Event Code", "asx.asxderivatives.ntp.itch.v1.05.eventcode", ftypes.STRING)
omi_asx_asxderivatives_ntp_itch_v1_05.fields.exchange = ProtoField.new("Exchange", "asx.asxderivatives.ntp.itch.v1.05.exchange", ftypes.STRING, nil, nil, nil, "Denotes the exchange identifier of the contract")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.executed_quantity = ProtoField.new("Executed Quantity", "asx.asxderivatives.ntp.itch.v1.05.executedquantity", ftypes.UINT32, nil, nil, nil, "Volume traded.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.expiry_date = ProtoField.new("Expiry Date", "asx.asxderivatives.ntp.itch.v1.05.expirydate", ftypes.UINT32, nil, nil, nil, "The Settlement Date as specified in the ASX 24 Contract Specifications. Reported in Unix Time (number of seconds since 00:00 1 January 1970 GMT). Convert to AEST/ADST as appropriate to determine the date.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.expiry_month = ProtoField.new("Expiry Month", "asx.asxderivatives.ntp.itch.v1.05.expirymonth", ftypes.UINT8, nil, nil, nil, "Month of expiry for futures contract types, zero otherwise.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.expiry_year = ProtoField.new("Expiry Year", "asx.asxderivatives.ntp.itch.v1.05.expiryyear", ftypes.UINT16, nil, nil, nil, "Year of expiry (YYYY) for futures contract types, zero otherwise.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.highest_trade = ProtoField.new("Highest Trade", "asx.asxderivatives.ntp.itch.v1.05.highesttrade", ftypes.DOUBLE, nil, nil, nil, "Highest Traded Price.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.instrument = ProtoField.new("Instrument", "asx.asxderivatives.ntp.itch.v1.05.instrument", ftypes.STRING, nil, nil, nil, "Denotes the instrument identifier of the contract.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.isin = ProtoField.new("Isin", "asx.asxderivatives.ntp.itch.v1.05.isin", ftypes.STRING, nil, nil, nil, "Reserved for future use.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.last_trade = ProtoField.new("Last Trade", "asx.asxderivatives.ntp.itch.v1.05.lasttrade", ftypes.DOUBLE, nil, nil, nil, "Last Traded Price.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.last_trading_date = ProtoField.new("Last Trading Date", "asx.asxderivatives.ntp.itch.v1.05.lasttradingdate", ftypes.UINT32, nil, nil, nil, "The Last Trading Day as specified in the ASX 24 Contract Specifications. Reported in Unix Time (number of seconds since 00:00 1 January 1970 GMT). Convert to AEST/ADST as appropriate to determine the date.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.last_volume = ProtoField.new("Last Volume", "asx.asxderivatives.ntp.itch.v1.05.lastvolume", ftypes.UINT32, nil, nil, nil, "Last Traded Volume.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.legs = ProtoField.new("Legs", "asx.asxderivatives.ntp.itch.v1.05.legs", ftypes.UINT8, nil, nil, nil, "Number of legs.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.long_name = ProtoField.new("Long Name", "asx.asxderivatives.ntp.itch.v1.05.longname", ftypes.STRING, nil, nil, nil, "Additional instrument series information.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.lot_size_or_face_value = ProtoField.new("Lot Size Or Face Value", "asx.asxderivatives.ntp.itch.v1.05.lotsizeorfacevalue", ftypes.UINT64, nil, nil, nil, "The Contract Unit as specified in the ASX 24 Contract Specifications.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.lowest_trade = ProtoField.new("Lowest Trade", "asx.asxderivatives.ntp.itch.v1.05.lowesttrade", ftypes.DOUBLE, nil, nil, nil, "Lowest Traded Price.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.matched_quantity = ProtoField.new("Matched Quantity", "asx.asxderivatives.ntp.itch.v1.05.matchedquantity", ftypes.UINT64, nil, nil, nil, "The indicative auction volume.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.maturity_value = ProtoField.new("Maturity Value", "asx.asxderivatives.ntp.itch.v1.05.maturityvalue", ftypes.UINT8, nil, nil, nil, "The number of days or years to maturity for bills or bonds as specified in the ASX 24 Contract Specifications.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.message_count = ProtoField.new("Message Count", "asx.asxderivatives.ntp.itch.v1.05.messagecount", ftypes.UINT16, nil, nil, nil, "Number of messages to follow this header")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.message_length = ProtoField.new("Message Length", "asx.asxderivatives.ntp.itch.v1.05.messagelength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.message_type = ProtoField.new("Message Type", "asx.asxderivatives.ntp.itch.v1.05.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.nanoseconds = ProtoField.new("Nanoseconds", "asx.asxderivatives.ntp.itch.v1.05.nanoseconds", ftypes.UINT32, nil, nil, nil, "Nanoseconds portion of the Nanoseconds, accurate to 1,000 nanoseconds.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.open_interest = ProtoField.new("Open Interest", "asx.asxderivatives.ntp.itch.v1.05.openinterest", ftypes.UINT64, nil, nil, nil, "Number of open contracts at EOD for the specified VOI Trade Date.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.opening_trade = ProtoField.new("Opening Trade", "asx.asxderivatives.ntp.itch.v1.05.openingtrade", ftypes.DOUBLE, nil, nil, nil, "Opening Traded Price.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.opposite_order_id = ProtoField.new("Opposite Order Id", "asx.asxderivatives.ntp.itch.v1.05.oppositeorderid", ftypes.UINT64, nil, nil, nil, "Public Order Id of the order to be removed from the opposite side of the same Order Book id, as order has traded out.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.opposite_side = ProtoField.new("Opposite Side", "asx.asxderivatives.ntp.itch.v1.05.oppositeside", ftypes.STRING, nil, nil, nil, "Type of order")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.opposite_tradeable_instrument_id = ProtoField.new("Opposite Tradeable Instrument Id", "asx.asxderivatives.ntp.itch.v1.05.oppositetradeableinstrumentid", ftypes.UINT32, nil, nil, nil, "Identifier of the opposite Tradeable Instrument Id (references the combination Tradeable Instrument Id party to this trade).")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.option_type = ProtoField.new("Option Type", "asx.asxderivatives.ntp.itch.v1.05.optiontype", ftypes.STRING, nil, nil, nil, "Indicates the type of option")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.order_book_priority = ProtoField.new("Order Book Priority", "asx.asxderivatives.ntp.itch.v1.05.orderbookpriority", ftypes.UINT64, nil, nil, nil, "Time priority of this order within the order book.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.order_id = ProtoField.new("Order Id", "asx.asxderivatives.ntp.itch.v1.05.orderid", ftypes.UINT64, nil, nil, nil, "Public order id of the order.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.participant_id_buyer = ProtoField.new("Participant Id Buyer", "asx.asxderivatives.ntp.itch.v1.05.participantidbuyer", ftypes.STRING, nil, nil, nil, "Participant identifier of the owner of the buying order. Blank for anonymous instruments.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.participant_id_seller = ProtoField.new("Participant Id Seller", "asx.asxderivatives.ntp.itch.v1.05.participantidseller", ftypes.STRING, nil, nil, nil, "Participant identifier of the owner of the selling order. Blank for anonymous instruments.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.payments_per_year = ProtoField.new("Payments Per Year", "asx.asxderivatives.ntp.itch.v1.05.paymentsperyear", ftypes.UINT8, nil, nil, nil, "Number of payments per year for bonds.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.price = ProtoField.new("Price", "asx.asxderivatives.ntp.itch.v1.05.price", ftypes.DOUBLE, nil, nil, nil, "Price of the order.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.price_display_decimals = ProtoField.new("Price Display Decimals", "asx.asxderivatives.ntp.itch.v1.05.pricedisplaydecimals", ftypes.UINT8, nil, nil, nil, "Suggested number of decimals to display the price at.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.price_fractional_denominator = ProtoField.new("Price Fractional Denominator", "asx.asxderivatives.ntp.itch.v1.05.pricefractionaldenominator", ftypes.UINT32, nil, nil, nil, "Denominator of the price to yield the floating point price.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.price_leg = ProtoField.new("Price Leg", "asx.asxderivatives.ntp.itch.v1.05.priceleg", ftypes.DOUBLE, nil, nil, nil, "Price of the leg")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.price_method = ProtoField.new("Price Method", "asx.asxderivatives.ntp.itch.v1.05.pricemethod", ftypes.UINT8, nil, nil, nil, "Pricing method")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.price_minimum_tick = ProtoField.new("Price Minimum Tick", "asx.asxderivatives.ntp.itch.v1.05.priceminimumtick", ftypes.UINT32, nil, nil, nil, "Minimum tick size. Divide by the Price Fractional Denominator to determine the floating point value.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.prior_day_settlement = ProtoField.new("Prior Day Settlement", "asx.asxderivatives.ntp.itch.v1.05.priordaysettlement", ftypes.DOUBLE, nil, nil, nil, "Prior Day Settlement price. Divide by the Price Fractional Denominator to determine the floating point value.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.quantity = ProtoField.new("Quantity", "asx.asxderivatives.ntp.itch.v1.05.quantity", ftypes.UINT32, nil, nil, nil, "Number of lots added to the book (all volume is visible).")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.quantity_remaining = ProtoField.new("Quantity Remaining", "asx.asxderivatives.ntp.itch.v1.05.quantityremaining", ftypes.UINT32, nil, nil, nil, "Volume remaining on Order after matching, if 0, order has traded out and should be deleted.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.ratio_leg = ProtoField.new("Ratio Leg", "asx.asxderivatives.ntp.itch.v1.05.ratioleg", ftypes.UINT32, nil, nil, nil, "Ratio of the leg")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.rfq_side = ProtoField.new("Rfq Side", "asx.asxderivatives.ntp.itch.v1.05.rfqside", ftypes.STRING, nil, nil, nil, "Identifies side of the RFQ")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.second = ProtoField.new("Second", "asx.asxderivatives.ntp.itch.v1.05.second", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Unix time (number of seconds since 1970-01-01 00:00:00 UTC).")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.second_utc = ProtoField.new("Second", "asx.asxderivatives.ntp.itch.v1.05.second.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Unix time (number of seconds since 1970-01-01 00:00:00 UTC).")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.seller_combination_trade_id = ProtoField.new("Seller Combination Trade Id", "asx.asxderivatives.ntp.itch.v1.05.sellercombinationtradeid", ftypes.UINT64, nil, nil, nil, "A non-zero value indicates that this trade is part of an execution cycle for a combination trade from the E or P message.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.seller_order_id = ProtoField.new("Seller Order Id", "asx.asxderivatives.ntp.itch.v1.05.sellerorderid", ftypes.UINT64, nil, nil, nil, "Reference number of the Seller’s order – 0 if order is aggressive.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.seller_participant_id = ProtoField.new("Seller Participant Id", "asx.asxderivatives.ntp.itch.v1.05.sellerparticipantid", ftypes.STRING, nil, nil, nil, "Selling participant identifier of the owner of the aggressive order.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.seller_side = ProtoField.new("Seller Side", "asx.asxderivatives.ntp.itch.v1.05.sellerside", ftypes.STRING, nil, nil, nil, "Type of order")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.seller_tradeable_instrument_id = ProtoField.new("Seller Tradeable Instrument Id", "asx.asxderivatives.ntp.itch.v1.05.sellertradeableinstrumentid", ftypes.UINT32, nil, nil, nil, "Identifier of the Seller’s Order Book.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.sequence_number = ProtoField.new("Sequence Number", "asx.asxderivatives.ntp.itch.v1.05.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first message to follow this header")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.session = ProtoField.new("Session", "asx.asxderivatives.ntp.itch.v1.05.session", ftypes.STRING, nil, nil, nil, "Identity of the multicast session")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.session_state = ProtoField.new("Session State", "asx.asxderivatives.ntp.itch.v1.05.sessionstate", ftypes.STRING, nil, nil, nil, "Indicates the current session state for the contract as per")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.side = ProtoField.new("Side", "asx.asxderivatives.ntp.itch.v1.05.side", ftypes.STRING, nil, nil, nil, "Type of order")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.side_leg = ProtoField.new("Side Leg", "asx.asxderivatives.ntp.itch.v1.05.sideleg", ftypes.STRING, nil, nil, nil, "Side of the leg")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.source_id = ProtoField.new("Source Id", "asx.asxderivatives.ntp.itch.v1.05.sourceid", ftypes.STRING, nil, nil, nil, "Indicates source of message.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.strike = ProtoField.new("Strike", "asx.asxderivatives.ntp.itch.v1.05.strike", ftypes.DOUBLE, nil, nil, nil, "Strike price of contract. Divide by the Strike Price Fractional Denominator to determine the floating point value.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.strike_price_decimal_position = ProtoField.new("Strike Price Decimal Position", "asx.asxderivatives.ntp.itch.v1.05.strikepricedecimalposition", ftypes.UINT8, nil, nil, nil, "Number of decimals to display the strike price.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.strike_price_fractional_denominator = ProtoField.new("Strike Price Fractional Denominator", "asx.asxderivatives.ntp.itch.v1.05.strikepricefractionaldenominator", ftypes.UINT32, nil, nil, nil, "Denominator of the Strike Price to yield the floating point strike price.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.strike_price_minimum_tick = ProtoField.new("Strike Price Minimum Tick", "asx.asxderivatives.ntp.itch.v1.05.strikepriceminimumtick", ftypes.UINT32, nil, nil, nil, "Minimum tick size for the Strike Price. Divide by the Strike Price Fractional Denominator to determine the floating point value.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.symbol_name = ProtoField.new("Symbol Name", "asx.asxderivatives.ntp.itch.v1.05.symbolname", ftypes.STRING, nil, nil, nil, "The unique tradable instrument name.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.text = ProtoField.new("Text", "asx.asxderivatives.ntp.itch.v1.05.text", ftypes.STRING, nil, nil, nil, "Message being communicated.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.total_traded_volume = ProtoField.new("Total Traded Volume", "asx.asxderivatives.ntp.itch.v1.05.totaltradedvolume", ftypes.UINT64, nil, nil, nil, "Total Traded Volume.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.trade_date = ProtoField.new("Trade Date", "asx.asxderivatives.ntp.itch.v1.05.tradedate", ftypes.UINT16, nil, nil, nil, "Trade Date. Represented as number of days since 1 January 1970.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.trade_id = ProtoField.new("Trade Id", "asx.asxderivatives.ntp.itch.v1.05.tradeid", ftypes.UINT64, nil, nil, nil, "Public trade id of the trade.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.trade_price = ProtoField.new("Trade Price", "asx.asxderivatives.ntp.itch.v1.05.tradeprice", ftypes.DOUBLE, nil, nil, nil, "Price of trade (may be negative for combination trades).")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.trade_type = ProtoField.new("Trade Type", "asx.asxderivatives.ntp.itch.v1.05.tradetype", ftypes.STRING, nil, nil, nil, "Nature of the match")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.tradeable_instrument_id = ProtoField.new("Tradeable Instrument Id", "asx.asxderivatives.ntp.itch.v1.05.tradeableinstrumentid", ftypes.UINT32, nil, nil, nil, "Identifier of the Order Book.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.tradeable_instrument_id_leg = ProtoField.new("Tradeable Instrument Id Leg", "asx.asxderivatives.ntp.itch.v1.05.tradeableinstrumentidleg", ftypes.UINT32, nil, nil, nil, "Instrument Id of the leg")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.underlying_tradeable_instrument_id = ProtoField.new("Underlying Tradeable Instrument Id", "asx.asxderivatives.ntp.itch.v1.05.underlyingtradeableinstrumentid", ftypes.UINT32, nil, nil, nil, "Identifier of the Underlying Tradeable Instrument (can be zero if underlying not defined).")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.voi_trade_date = ProtoField.new("Voi Trade Date", "asx.asxderivatives.ntp.itch.v1.05.voitradedate", ftypes.UINT16, nil, nil, nil, "Trade Date the VOI information is applicable to.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.volatility = ProtoField.new("Volatility", "asx.asxderivatives.ntp.itch.v1.05.volatility", ftypes.UINT64, nil, nil, nil, "Volatility for an option contract.")

-- Asx AsxDerivatives Ntp Itch 1.05 Framing
omi_asx_asxderivatives_ntp_itch_v1_05.fields.message = ProtoField.new("Message", "asx.asxderivatives.ntp.itch.v1.05.message", ftypes.STRING, nil, nil, nil, "Mold Udp64 Message")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.message_header = ProtoField.new("Message Header", "asx.asxderivatives.ntp.itch.v1.05.messageheader", ftypes.STRING, nil, nil, nil, "Mold Udp 64 Message Header")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.packet = ProtoField.new("Packet", "asx.asxderivatives.ntp.itch.v1.05.packet", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.packet_header = ProtoField.new("Packet Header", "asx.asxderivatives.ntp.itch.v1.05.packetheader", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet Header")

-- Asx AsxDerivatives Ntp 1.05 Application Messages
omi_asx_asxderivatives_ntp_itch_v1_05.fields.add_order_message = ProtoField.new("Add Order Message", "asx.asxderivatives.ntp.itch.v1.05.addordermessage", ftypes.STRING, nil, nil, nil, "An Order Added message indicates a new order or a restated order that has been accepted by the matching engine and added to the order book")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.anomalous_order_threshold_publish_message = ProtoField.new("Anomalous Order Threshold Publish Message", "asx.asxderivatives.ntp.itch.v1.05.anomalousorderthresholdpublishmessage", ftypes.STRING, nil, nil, nil, "This message disseminates price band information to the market advising the setting, zeroing or adjusting of the Extreme Trade Range price, the Anomalous Order Threshold price and the associated ranges for a contract that requires Market Integrity Rules enforcement")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.auction_order_executed_message = ProtoField.new("Auction Order Executed Message", "asx.asxderivatives.ntp.itch.v1.05.auctionorderexecutedmessage", ftypes.STRING, nil, nil, nil, "This message is sent when orders are executed in the auction at the open of the market")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.bundles_symbol_directory = ProtoField.new("Bundles Symbol Directory", "asx.asxderivatives.ntp.itch.v1.05.bundlessymboldirectory", ftypes.STRING, nil, nil, nil, "The Bundles Symbol Directory is a specialised reference data message used for defining combinations with legs greater than 6, specifically Bundle products with legs of 8, 12, 16 or 20 legs")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.combination_order_executed_message = ProtoField.new("Combination Order Executed Message", "asx.asxderivatives.ntp.itch.v1.05.combinationorderexecutedmessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever a resting order is matched with an open leg of a resting combination order in whole or in part")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.combination_symbol_directory_message = ProtoField.new("Combination Symbol Directory Message", "asx.asxderivatives.ntp.itch.v1.05.combinationsymboldirectorymessage", ftypes.STRING, nil, nil, nil, "The Combination Symbol Directory is a specialised reference data message used for defining combinations with up to 6 legs. It represents both standard combinations defined by ASX and user defined combinations created by participants")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.combination_trade_executed_message = ProtoField.new("Combination Trade Executed Message", "asx.asxderivatives.ntp.itch.v1.05.combinationtradeexecutedmessage", ftypes.STRING, nil, nil, nil, "The Combination Trade Executed Message is designed to provide details for executions where one or both orders are resting from a different order book id from the order book id of the trade")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.end_of_business_trade_date_message = ProtoField.new("End Of Business Trade Date Message", "asx.asxderivatives.ntp.itch.v1.05.endofbusinesstradedatemessage", ftypes.STRING, nil, nil, nil, "This message will be sent as the last message for a Business Trade Date to signal no further messages will be disseminated for that date.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.equilibrium_price_message = ProtoField.new("Equilibrium Price Message", "asx.asxderivatives.ntp.itch.v1.05.equilibriumpricemessage", ftypes.STRING, nil, nil, nil, "This message is disseminated in response to changes in the equilibrium price for an order book during a pre-open period")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.future_symbol_directory_message = ProtoField.new("Future Symbol Directory Message", "asx.asxderivatives.ntp.itch.v1.05.futuresymboldirectorymessage", ftypes.STRING, nil, nil, nil, "The Future Symbol Directory message describes futures contract")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.implied_order_added_message = ProtoField.new("Implied Order Added Message", "asx.asxderivatives.ntp.itch.v1.05.impliedorderaddedmessage", ftypes.STRING, nil, nil, nil, "This message is a similar format to the Order Added message, except the nature of this order is it has an implied price, implied volume and a priority that is derived from two or more “real” orders deriving the implied price")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.implied_order_deleted_message = ProtoField.new("Implied Order Deleted Message", "asx.asxderivatives.ntp.itch.v1.05.impliedorderdeletedmessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever the implied pricing or volume has changed due to price or volume movement of “real” orders for a side of a single contract number. When received, any implied volume is no longer accessible so the “implied” order of the indicated side must be removed from the book")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.implied_order_replaced_message = ProtoField.new("Implied Order Replaced Message", "asx.asxderivatives.ntp.itch.v1.05.impliedorderreplacedmessage", ftypes.STRING, nil, nil, nil, "This message notifies the subscriber that an existing implied order is to be replaced when the implied price, volume or priority has changed due to a price or volume movement of “real” orders for a side of a single Tradeable Instrument Id")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.market_settlement_message = ProtoField.new("Market Settlement Message", "asx.asxderivatives.ntp.itch.v1.05.marketsettlementmessage", ftypes.STRING, nil, nil, nil, "This message disseminates the final settlement price of a future or option contracts order book for the trade date it pertains to")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.open_high_low_last_trade_adjustment_message = ProtoField.new("Open High Low Last Trade Adjustment Message", "asx.asxderivatives.ntp.itch.v1.05.openhighlowlasttradeadjustmentmessage", ftypes.STRING, nil, nil, nil, "Market trade price adjustments are sent resulting from modifications of Open, High, Low, Last and volume statistics due to market operations, prior to the instrument moving to the next session within the trade date, or at the close of instrument")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.options_symbol_directory_message = ProtoField.new("Options Symbol Directory Message", "asx.asxderivatives.ntp.itch.v1.05.optionssymboldirectorymessage", ftypes.STRING, nil, nil, nil, "The Options Symbol Directory message describes options and warrants contracts.")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.order_book_state_message = ProtoField.new("Order Book State Message", "asx.asxderivatives.ntp.itch.v1.05.orderbookstatemessage", ftypes.STRING, nil, nil, nil, "This message indicates the current session state of a contract to the market")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.order_deleted_message = ProtoField.new("Order Deleted Message", "asx.asxderivatives.ntp.itch.v1.05.orderdeletedmessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever an order in the book is cancelled by the owner, expired, cancelled by the exchange, purged or volume cancelled")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.order_executed_message = ProtoField.new("Order Executed Message", "asx.asxderivatives.ntp.itch.v1.05.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever a resting order of the book is executed in whole or in part and the counterparty to the trade is an aggressive order")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.order_volume_cancelled_message = ProtoField.new("Order Volume Cancelled Message", "asx.asxderivatives.ntp.itch.v1.05.ordervolumecancelledmessage", ftypes.STRING, nil, nil, nil, "An Order Volume Cancelled message is sent when an order is modified as a result of partial cancellation of volume")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.request_for_quote_message = ProtoField.new("Request For Quote Message", "asx.asxderivatives.ntp.itch.v1.05.requestforquotemessage", ftypes.STRING, nil, nil, nil, "This message is disseminated for anonymous Request for Quotes (RFQs) from the market")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.seconds_message = ProtoField.new("Seconds Message", "asx.asxderivatives.ntp.itch.v1.05.secondsmessage", ftypes.STRING, nil, nil, nil, "A ‘seconds’ Nanoseconds is issued every second and any message thereafter will be stamped with the number of nanoseconds past the last Time message received as a time reference point")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.text_message = ProtoField.new("Text Message", "asx.asxderivatives.ntp.itch.v1.05.textmessage", ftypes.STRING, nil, nil, nil, "This message disseminates free text information describing ad-hoc market events")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.trade_cancellation_message = ProtoField.new("Trade Cancellation Message", "asx.asxderivatives.ntp.itch.v1.05.tradecancellationmessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever a trade is cancelled by ASX")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.trade_executed_message = ProtoField.new("Trade Executed Message", "asx.asxderivatives.ntp.itch.v1.05.tradeexecutedmessage", ftypes.STRING, nil, nil, nil, "The Trade Message is designed to provide details for executions in combination order books. Trade Executed messages are reported in the same sequence as order execution messages are reported")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.volume_and_open_interest_message = ProtoField.new("Volume And Open Interest Message", "asx.asxderivatives.ntp.itch.v1.05.volumeandopeninterestmessage", ftypes.STRING, nil, nil, nil, "This message disseminates Volume and Open Interest (VOI) information for each trade date")

-- Asx AsxDerivatives Ntp 1.05 Session Messages
omi_asx_asxderivatives_ntp_itch_v1_05.fields.end_of_session = ProtoField.new("End Of Session", "asx.asxderivatives.ntp.itch.v1.05.endofsession", ftypes.BYTES, nil, nil, nil, "Mold Udp64 end of session")
omi_asx_asxderivatives_ntp_itch_v1_05.fields.heartbeat = ProtoField.new("Heartbeat", "asx.asxderivatives.ntp.itch.v1.05.heartbeat", ftypes.BYTES, nil, nil, nil, "Mold Udp64 heartbeat")

-- Asx AsxDerivatives Ntp Itch 1.05 Generated Fields
omi_asx_asxderivatives_ntp_itch_v1_05.fields.bundle_leg_index = ProtoField.new("Bundle Leg Index", "asx.asxderivatives.ntp.itch.v1.05.bundlelegindex", ftypes.UINT16)
omi_asx_asxderivatives_ntp_itch_v1_05.fields.combination_leg_index = ProtoField.new("Combination Leg Index", "asx.asxderivatives.ntp.itch.v1.05.combinationlegindex", ftypes.UINT16)
omi_asx_asxderivatives_ntp_itch_v1_05.fields.message_index = ProtoField.new("Message Index", "asx.asxderivatives.ntp.itch.v1.05.messageindex", ftypes.UINT16)
omi_asx_asxderivatives_ntp_itch_v1_05.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "asx.asxderivatives.ntp.itch.v1.05.messagesequencenumber", ftypes.UINT64)
omi_asx_asxderivatives_ntp_itch_v1_05.fields.timestamp = ProtoField.new("Timestamp", "asx.asxderivatives.ntp.itch.v1.05.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Asx AsxDerivatives Ntp Itch 1.05 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
asx_asxderivatives_ntp_itch_v1_05.absolute_time_base = 0

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
asx_asxderivatives_ntp_itch_v1_05.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Asx AsxDerivatives Ntp Itch 1.05 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Asx AsxDerivatives Ntp Itch 1.05 Show Options
omi_asx_asxderivatives_ntp_itch_v1_05.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_asx_asxderivatives_ntp_itch_v1_05.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_asx_asxderivatives_ntp_itch_v1_05.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_asx_asxderivatives_ntp_itch_v1_05.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_asx_asxderivatives_ntp_itch_v1_05.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_asx_asxderivatives_ntp_itch_v1_05.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_asx_asxderivatives_ntp_itch_v1_05.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_asx_asxderivatives_ntp_itch_v1_05.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_asx_asxderivatives_ntp_itch_v1_05.prefs.show_application_messages then
    show.application_messages = omi_asx_asxderivatives_ntp_itch_v1_05.prefs.show_application_messages
  end
  if show.headers ~= omi_asx_asxderivatives_ntp_itch_v1_05.prefs.show_headers then
    show.headers = omi_asx_asxderivatives_ntp_itch_v1_05.prefs.show_headers
  end
  if show.structs ~= omi_asx_asxderivatives_ntp_itch_v1_05.prefs.show_structs then
    show.structs = omi_asx_asxderivatives_ntp_itch_v1_05.prefs.show_structs
  end
  if show.indexes ~= omi_asx_asxderivatives_ntp_itch_v1_05.prefs.show_indexes then
    show.indexes = omi_asx_asxderivatives_ntp_itch_v1_05.prefs.show_indexes
  end
  if show.sequences ~= omi_asx_asxderivatives_ntp_itch_v1_05.prefs.show_sequences then
    show.sequences = omi_asx_asxderivatives_ntp_itch_v1_05.prefs.show_sequences
  end
  if asx_asxderivatives_ntp_itch_v1_05.format_timestamp ~= omi_asx_asxderivatives_ntp_itch_v1_05.prefs.format_timestamp then
    asx_asxderivatives_ntp_itch_v1_05.format_timestamp = omi_asx_asxderivatives_ntp_itch_v1_05.prefs.format_timestamp
  end
  if asx_asxderivatives_ntp_itch_v1_05.absolute_time_base ~= omi_asx_asxderivatives_ntp_itch_v1_05.prefs.absolute_time_base then
    asx_asxderivatives_ntp_itch_v1_05.absolute_time_base = omi_asx_asxderivatives_ntp_itch_v1_05.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
asx_asxderivatives_ntp_itch_v1_05.conversation = {}
asx_asxderivatives_ntp_itch_v1_05.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
asx_asxderivatives_ntp_itch_v1_05.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
asx_asxderivatives_ntp_itch_v1_05.conversation.data = function(packet)
  local key = asx_asxderivatives_ntp_itch_v1_05.conversation.key(packet)
  local data = asx_asxderivatives_ntp_itch_v1_05.conversation.flows[key]
  if data == nil then
    data = { second = { last = nil, frames = {} } }
    asx_asxderivatives_ntp_itch_v1_05.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
asx_asxderivatives_ntp_itch_v1_05.conversation.current = nil


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
-- Asx AsxDerivatives Ntp Itch 1.05 Fields
-----------------------------------------------------------------------

-- Aot Lower Price
asx_asxderivatives_ntp_itch_v1_05.aot_lower_price = {}

-- Size: Aot Lower Price
asx_asxderivatives_ntp_itch_v1_05.aot_lower_price.size = 8

-- Display: Aot Lower Price
asx_asxderivatives_ntp_itch_v1_05.aot_lower_price.display = function(value)
  return "Aot Lower Price: "..value
end

-- Translate: Aot Lower Price
asx_asxderivatives_ntp_itch_v1_05.aot_lower_price.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Aot Lower Price
asx_asxderivatives_ntp_itch_v1_05.aot_lower_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.aot_lower_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxderivatives_ntp_itch_v1_05.aot_lower_price.translate(raw)
  local display = asx_asxderivatives_ntp_itch_v1_05.aot_lower_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.aot_lower_price, range, value, display)

  return offset + length, value
end

-- Aot Price
asx_asxderivatives_ntp_itch_v1_05.aot_price = {}

-- Size: Aot Price
asx_asxderivatives_ntp_itch_v1_05.aot_price.size = 8

-- Display: Aot Price
asx_asxderivatives_ntp_itch_v1_05.aot_price.display = function(value)
  return "Aot Price: "..value
end

-- Translate: Aot Price
asx_asxderivatives_ntp_itch_v1_05.aot_price.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Aot Price
asx_asxderivatives_ntp_itch_v1_05.aot_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.aot_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxderivatives_ntp_itch_v1_05.aot_price.translate(raw)
  local display = asx_asxderivatives_ntp_itch_v1_05.aot_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.aot_price, range, value, display)

  return offset + length, value
end

-- Aot Upper Price
asx_asxderivatives_ntp_itch_v1_05.aot_upper_price = {}

-- Size: Aot Upper Price
asx_asxderivatives_ntp_itch_v1_05.aot_upper_price.size = 8

-- Display: Aot Upper Price
asx_asxderivatives_ntp_itch_v1_05.aot_upper_price.display = function(value)
  return "Aot Upper Price: "..value
end

-- Translate: Aot Upper Price
asx_asxderivatives_ntp_itch_v1_05.aot_upper_price.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Aot Upper Price
asx_asxderivatives_ntp_itch_v1_05.aot_upper_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.aot_upper_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxderivatives_ntp_itch_v1_05.aot_upper_price.translate(raw)
  local display = asx_asxderivatives_ntp_itch_v1_05.aot_upper_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.aot_upper_price, range, value, display)

  return offset + length, value
end

-- Ask Quantity
asx_asxderivatives_ntp_itch_v1_05.ask_quantity = {}

-- Size: Ask Quantity
asx_asxderivatives_ntp_itch_v1_05.ask_quantity.size = 8

-- Display: Ask Quantity
asx_asxderivatives_ntp_itch_v1_05.ask_quantity.display = function(value)
  return "Ask Quantity: "..value
end

-- Dissect: Ask Quantity
asx_asxderivatives_ntp_itch_v1_05.ask_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.ask_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxderivatives_ntp_itch_v1_05.ask_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.ask_quantity, range, value, display)

  return offset + length, value
end

-- Basis Of Quotation
asx_asxderivatives_ntp_itch_v1_05.basis_of_quotation = {}

-- Size: Basis Of Quotation
asx_asxderivatives_ntp_itch_v1_05.basis_of_quotation.size = 10

-- Display: Basis Of Quotation
asx_asxderivatives_ntp_itch_v1_05.basis_of_quotation.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Basis Of Quotation: No Value"
  end

  return "Basis Of Quotation: "..value
end

-- Dissect: Basis Of Quotation
asx_asxderivatives_ntp_itch_v1_05.basis_of_quotation.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.basis_of_quotation.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxderivatives_ntp_itch_v1_05.basis_of_quotation.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.basis_of_quotation, range, value, display)

  return offset + length, value
end

-- Bid Quantity
asx_asxderivatives_ntp_itch_v1_05.bid_quantity = {}

-- Size: Bid Quantity
asx_asxderivatives_ntp_itch_v1_05.bid_quantity.size = 8

-- Display: Bid Quantity
asx_asxderivatives_ntp_itch_v1_05.bid_quantity.display = function(value)
  return "Bid Quantity: "..value
end

-- Dissect: Bid Quantity
asx_asxderivatives_ntp_itch_v1_05.bid_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.bid_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxderivatives_ntp_itch_v1_05.bid_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.bid_quantity, range, value, display)

  return offset + length, value
end

-- Block Lot Size
asx_asxderivatives_ntp_itch_v1_05.block_lot_size = {}

-- Size: Block Lot Size
asx_asxderivatives_ntp_itch_v1_05.block_lot_size.size = 4

-- Display: Block Lot Size
asx_asxderivatives_ntp_itch_v1_05.block_lot_size.display = function(value)
  return "Block Lot Size: "..value
end

-- Dissect: Block Lot Size
asx_asxderivatives_ntp_itch_v1_05.block_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.block_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.block_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.block_lot_size, range, value, display)

  return offset + length, value
end

-- Buyer Combination Trade Id
asx_asxderivatives_ntp_itch_v1_05.buyer_combination_trade_id = {}

-- Size: Buyer Combination Trade Id
asx_asxderivatives_ntp_itch_v1_05.buyer_combination_trade_id.size = 8

-- Display: Buyer Combination Trade Id
asx_asxderivatives_ntp_itch_v1_05.buyer_combination_trade_id.display = function(value)
  return "Buyer Combination Trade Id: "..value
end

-- Dissect: Buyer Combination Trade Id
asx_asxderivatives_ntp_itch_v1_05.buyer_combination_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.buyer_combination_trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxderivatives_ntp_itch_v1_05.buyer_combination_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.buyer_combination_trade_id, range, value, display)

  return offset + length, value
end

-- Buyer Order Id
asx_asxderivatives_ntp_itch_v1_05.buyer_order_id = {}

-- Size: Buyer Order Id
asx_asxderivatives_ntp_itch_v1_05.buyer_order_id.size = 8

-- Display: Buyer Order Id
asx_asxderivatives_ntp_itch_v1_05.buyer_order_id.display = function(value)
  return "Buyer Order Id: "..value
end

-- Dissect: Buyer Order Id
asx_asxderivatives_ntp_itch_v1_05.buyer_order_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.buyer_order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxderivatives_ntp_itch_v1_05.buyer_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.buyer_order_id, range, value, display)

  return offset + length, value
end

-- Buyer Participant Id
asx_asxderivatives_ntp_itch_v1_05.buyer_participant_id = {}

-- Size: Buyer Participant Id
asx_asxderivatives_ntp_itch_v1_05.buyer_participant_id.size = 3

-- Display: Buyer Participant Id
asx_asxderivatives_ntp_itch_v1_05.buyer_participant_id.display = function(value)
  return "Buyer Participant Id: "..value
end

-- Dissect: Buyer Participant Id
asx_asxderivatives_ntp_itch_v1_05.buyer_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.buyer_participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxderivatives_ntp_itch_v1_05.buyer_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.buyer_participant_id, range, value, display)

  return offset + length, value
end

-- Buyer Side
asx_asxderivatives_ntp_itch_v1_05.buyer_side = {}

-- Size: Buyer Side
asx_asxderivatives_ntp_itch_v1_05.buyer_side.size = 1

-- Display: Buyer Side
asx_asxderivatives_ntp_itch_v1_05.buyer_side.labels = {
  ["S"] = "Buyer Side: Sell (S)",
  ["B"] = "Buyer Side: Buy (B)",
}

asx_asxderivatives_ntp_itch_v1_05.buyer_side.display = function(value)
  return asx_asxderivatives_ntp_itch_v1_05.buyer_side.labels[value] or "Buyer Side: Unknown("..value..")"
end

-- Dissect: Buyer Side
asx_asxderivatives_ntp_itch_v1_05.buyer_side.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.buyer_side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = asx_asxderivatives_ntp_itch_v1_05.buyer_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.buyer_side, range, value, display)

  return offset + length, value
end

-- Buyer Tradeable Instrument Id
asx_asxderivatives_ntp_itch_v1_05.buyer_tradeable_instrument_id = {}

-- Size: Buyer Tradeable Instrument Id
asx_asxderivatives_ntp_itch_v1_05.buyer_tradeable_instrument_id.size = 4

-- Display: Buyer Tradeable Instrument Id
asx_asxderivatives_ntp_itch_v1_05.buyer_tradeable_instrument_id.display = function(value)
  return "Buyer Tradeable Instrument Id: "..value
end

-- Dissect: Buyer Tradeable Instrument Id
asx_asxderivatives_ntp_itch_v1_05.buyer_tradeable_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.buyer_tradeable_instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.buyer_tradeable_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.buyer_tradeable_instrument_id, range, value, display)

  return offset + length, value
end

-- Cfi Code
asx_asxderivatives_ntp_itch_v1_05.cfi_code = {}

-- Size: Cfi Code
asx_asxderivatives_ntp_itch_v1_05.cfi_code.size = 6

-- Display: Cfi Code
asx_asxderivatives_ntp_itch_v1_05.cfi_code.display = function(value)
  return "Cfi Code: "..value
end

-- Dissect: Cfi Code
asx_asxderivatives_ntp_itch_v1_05.cfi_code.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.cfi_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxderivatives_ntp_itch_v1_05.cfi_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Combination Trade Id
asx_asxderivatives_ntp_itch_v1_05.combination_trade_id = {}

-- Size: Combination Trade Id
asx_asxderivatives_ntp_itch_v1_05.combination_trade_id.size = 8

-- Display: Combination Trade Id
asx_asxderivatives_ntp_itch_v1_05.combination_trade_id.display = function(value)
  return "Combination Trade Id: "..value
end

-- Dissect: Combination Trade Id
asx_asxderivatives_ntp_itch_v1_05.combination_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.combination_trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxderivatives_ntp_itch_v1_05.combination_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.combination_trade_id, range, value, display)

  return offset + length, value
end

-- Counter Party Id
asx_asxderivatives_ntp_itch_v1_05.counter_party_id = {}

-- Size: Counter Party Id
asx_asxderivatives_ntp_itch_v1_05.counter_party_id.size = 3

-- Display: Counter Party Id
asx_asxderivatives_ntp_itch_v1_05.counter_party_id.display = function(value)
  return "Counter Party Id: "..value
end

-- Dissect: Counter Party Id
asx_asxderivatives_ntp_itch_v1_05.counter_party_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.counter_party_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxderivatives_ntp_itch_v1_05.counter_party_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.counter_party_id, range, value, display)

  return offset + length, value
end

-- Coupon Rate
asx_asxderivatives_ntp_itch_v1_05.coupon_rate = {}

-- Size: Coupon Rate
asx_asxderivatives_ntp_itch_v1_05.coupon_rate.size = 2

-- Display: Coupon Rate
asx_asxderivatives_ntp_itch_v1_05.coupon_rate.display = function(value)
  return "Coupon Rate: "..value
end

-- Dissect: Coupon Rate
asx_asxderivatives_ntp_itch_v1_05.coupon_rate.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.coupon_rate.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.coupon_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.coupon_rate, range, value, display)

  return offset + length, value
end

-- Cumulative Volume
asx_asxderivatives_ntp_itch_v1_05.cumulative_volume = {}

-- Size: Cumulative Volume
asx_asxderivatives_ntp_itch_v1_05.cumulative_volume.size = 8

-- Display: Cumulative Volume
asx_asxderivatives_ntp_itch_v1_05.cumulative_volume.display = function(value)
  return "Cumulative Volume: "..value
end

-- Dissect: Cumulative Volume
asx_asxderivatives_ntp_itch_v1_05.cumulative_volume.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.cumulative_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxderivatives_ntp_itch_v1_05.cumulative_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.cumulative_volume, range, value, display)

  return offset + length, value
end

-- Currency
asx_asxderivatives_ntp_itch_v1_05.currency = {}

-- Size: Currency
asx_asxderivatives_ntp_itch_v1_05.currency.size = 3

-- Display: Currency
asx_asxderivatives_ntp_itch_v1_05.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
asx_asxderivatives_ntp_itch_v1_05.currency.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxderivatives_ntp_itch_v1_05.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.currency, range, value, display)

  return offset + length, value
end

-- Equilibrium Price
asx_asxderivatives_ntp_itch_v1_05.equilibrium_price = {}

-- Size: Equilibrium Price
asx_asxderivatives_ntp_itch_v1_05.equilibrium_price.size = 8

-- Display: Equilibrium Price
asx_asxderivatives_ntp_itch_v1_05.equilibrium_price.display = function(value)
  return "Equilibrium Price: "..value
end

-- Translate: Equilibrium Price
asx_asxderivatives_ntp_itch_v1_05.equilibrium_price.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Equilibrium Price
asx_asxderivatives_ntp_itch_v1_05.equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.equilibrium_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxderivatives_ntp_itch_v1_05.equilibrium_price.translate(raw)
  local display = asx_asxderivatives_ntp_itch_v1_05.equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.equilibrium_price, range, value, display)

  return offset + length, value
end

-- Etr Lower Price
asx_asxderivatives_ntp_itch_v1_05.etr_lower_price = {}

-- Size: Etr Lower Price
asx_asxderivatives_ntp_itch_v1_05.etr_lower_price.size = 8

-- Display: Etr Lower Price
asx_asxderivatives_ntp_itch_v1_05.etr_lower_price.display = function(value)
  return "Etr Lower Price: "..value
end

-- Translate: Etr Lower Price
asx_asxderivatives_ntp_itch_v1_05.etr_lower_price.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Etr Lower Price
asx_asxderivatives_ntp_itch_v1_05.etr_lower_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.etr_lower_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxderivatives_ntp_itch_v1_05.etr_lower_price.translate(raw)
  local display = asx_asxderivatives_ntp_itch_v1_05.etr_lower_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.etr_lower_price, range, value, display)

  return offset + length, value
end

-- Etr Price
asx_asxderivatives_ntp_itch_v1_05.etr_price = {}

-- Size: Etr Price
asx_asxderivatives_ntp_itch_v1_05.etr_price.size = 8

-- Display: Etr Price
asx_asxderivatives_ntp_itch_v1_05.etr_price.display = function(value)
  return "Etr Price: "..value
end

-- Translate: Etr Price
asx_asxderivatives_ntp_itch_v1_05.etr_price.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Etr Price
asx_asxderivatives_ntp_itch_v1_05.etr_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.etr_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxderivatives_ntp_itch_v1_05.etr_price.translate(raw)
  local display = asx_asxderivatives_ntp_itch_v1_05.etr_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.etr_price, range, value, display)

  return offset + length, value
end

-- Etr Upper Price
asx_asxderivatives_ntp_itch_v1_05.etr_upper_price = {}

-- Size: Etr Upper Price
asx_asxderivatives_ntp_itch_v1_05.etr_upper_price.size = 8

-- Display: Etr Upper Price
asx_asxderivatives_ntp_itch_v1_05.etr_upper_price.display = function(value)
  return "Etr Upper Price: "..value
end

-- Translate: Etr Upper Price
asx_asxderivatives_ntp_itch_v1_05.etr_upper_price.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Etr Upper Price
asx_asxderivatives_ntp_itch_v1_05.etr_upper_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.etr_upper_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxderivatives_ntp_itch_v1_05.etr_upper_price.translate(raw)
  local display = asx_asxderivatives_ntp_itch_v1_05.etr_upper_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.etr_upper_price, range, value, display)

  return offset + length, value
end

-- Event Code
asx_asxderivatives_ntp_itch_v1_05.event_code = {}

-- Size: Event Code
asx_asxderivatives_ntp_itch_v1_05.event_code.size = 1

-- Display: Event Code
asx_asxderivatives_ntp_itch_v1_05.event_code.labels = {
  ["C"] = "Event Code: Business Trade Date Has Ended (C)",
}

asx_asxderivatives_ntp_itch_v1_05.event_code.display = function(value)
  return asx_asxderivatives_ntp_itch_v1_05.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
asx_asxderivatives_ntp_itch_v1_05.event_code.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.event_code.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = asx_asxderivatives_ntp_itch_v1_05.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.event_code, range, value, display)

  return offset + length, value
end

-- Exchange
asx_asxderivatives_ntp_itch_v1_05.exchange = {}

-- Size: Exchange
asx_asxderivatives_ntp_itch_v1_05.exchange.size = 6

-- Display: Exchange
asx_asxderivatives_ntp_itch_v1_05.exchange.display = function(value)
  return "Exchange: "..value
end

-- Dissect: Exchange
asx_asxderivatives_ntp_itch_v1_05.exchange.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.exchange.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxderivatives_ntp_itch_v1_05.exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.exchange, range, value, display)

  return offset + length, value
end

-- Executed Quantity
asx_asxderivatives_ntp_itch_v1_05.executed_quantity = {}

-- Size: Executed Quantity
asx_asxderivatives_ntp_itch_v1_05.executed_quantity.size = 4

-- Display: Executed Quantity
asx_asxderivatives_ntp_itch_v1_05.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
asx_asxderivatives_ntp_itch_v1_05.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Expiry Date
asx_asxderivatives_ntp_itch_v1_05.expiry_date = {}

-- Size: Expiry Date
asx_asxderivatives_ntp_itch_v1_05.expiry_date.size = 4

-- Display: Expiry Date
asx_asxderivatives_ntp_itch_v1_05.expiry_date.display = function(value)
  return "Expiry Date: "..value
end

-- Dissect: Expiry Date
asx_asxderivatives_ntp_itch_v1_05.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.expiry_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Expiry Month
asx_asxderivatives_ntp_itch_v1_05.expiry_month = {}

-- Size: Expiry Month
asx_asxderivatives_ntp_itch_v1_05.expiry_month.size = 1

-- Display: Expiry Month
asx_asxderivatives_ntp_itch_v1_05.expiry_month.labels = {
  [1] = "Expiry Month: Jan (1)",
  [2] = "Expiry Month: Feb (2)",
  [3] = "Expiry Month: Mar (3)",
  [4] = "Expiry Month: Apr (4)",
  [5] = "Expiry Month: May (5)",
  [6] = "Expiry Month: Jun (6)",
  [7] = "Expiry Month: Jul (7)",
  [8] = "Expiry Month: Aug (8)",
  [9] = "Expiry Month: Sep (9)",
  [10] = "Expiry Month: Oct (10)",
  [11] = "Expiry Month: Nov (11)",
  [12] = "Expiry Month: Dec (12)",
}

asx_asxderivatives_ntp_itch_v1_05.expiry_month.display = function(value)
  return asx_asxderivatives_ntp_itch_v1_05.expiry_month.labels[value] or "Expiry Month: Unknown("..value..")"
end

-- Dissect: Expiry Month
asx_asxderivatives_ntp_itch_v1_05.expiry_month.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.expiry_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.expiry_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.expiry_month, range, value, display)

  return offset + length, value
end

-- Expiry Year
asx_asxderivatives_ntp_itch_v1_05.expiry_year = {}

-- Size: Expiry Year
asx_asxderivatives_ntp_itch_v1_05.expiry_year.size = 2

-- Display: Expiry Year
asx_asxderivatives_ntp_itch_v1_05.expiry_year.display = function(value)
  return "Expiry Year: "..value
end

-- Dissect: Expiry Year
asx_asxderivatives_ntp_itch_v1_05.expiry_year.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.expiry_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.expiry_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.expiry_year, range, value, display)

  return offset + length, value
end

-- Highest Trade
asx_asxderivatives_ntp_itch_v1_05.highest_trade = {}

-- Size: Highest Trade
asx_asxderivatives_ntp_itch_v1_05.highest_trade.size = 8

-- Display: Highest Trade
asx_asxderivatives_ntp_itch_v1_05.highest_trade.display = function(value)
  return "Highest Trade: "..value
end

-- Translate: Highest Trade
asx_asxderivatives_ntp_itch_v1_05.highest_trade.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Highest Trade
asx_asxderivatives_ntp_itch_v1_05.highest_trade.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.highest_trade.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxderivatives_ntp_itch_v1_05.highest_trade.translate(raw)
  local display = asx_asxderivatives_ntp_itch_v1_05.highest_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.highest_trade, range, value, display)

  return offset + length, value
end

-- Instrument
asx_asxderivatives_ntp_itch_v1_05.instrument = {}

-- Size: Instrument
asx_asxderivatives_ntp_itch_v1_05.instrument.size = 6

-- Display: Instrument
asx_asxderivatives_ntp_itch_v1_05.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
asx_asxderivatives_ntp_itch_v1_05.instrument.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.instrument.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxderivatives_ntp_itch_v1_05.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.instrument, range, value, display)

  return offset + length, value
end

-- Isin
asx_asxderivatives_ntp_itch_v1_05.isin = {}

-- Size: Isin
asx_asxderivatives_ntp_itch_v1_05.isin.size = 12

-- Display: Isin
asx_asxderivatives_ntp_itch_v1_05.isin.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Isin: No Value"
  end

  return "Isin: "..value
end

-- Dissect: Isin
asx_asxderivatives_ntp_itch_v1_05.isin.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxderivatives_ntp_itch_v1_05.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.isin, range, value, display)

  return offset + length, value
end

-- Last Trade
asx_asxderivatives_ntp_itch_v1_05.last_trade = {}

-- Size: Last Trade
asx_asxderivatives_ntp_itch_v1_05.last_trade.size = 8

-- Display: Last Trade
asx_asxderivatives_ntp_itch_v1_05.last_trade.display = function(value)
  return "Last Trade: "..value
end

-- Translate: Last Trade
asx_asxderivatives_ntp_itch_v1_05.last_trade.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Last Trade
asx_asxderivatives_ntp_itch_v1_05.last_trade.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.last_trade.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxderivatives_ntp_itch_v1_05.last_trade.translate(raw)
  local display = asx_asxderivatives_ntp_itch_v1_05.last_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.last_trade, range, value, display)

  return offset + length, value
end

-- Last Trading Date
asx_asxderivatives_ntp_itch_v1_05.last_trading_date = {}

-- Size: Last Trading Date
asx_asxderivatives_ntp_itch_v1_05.last_trading_date.size = 4

-- Display: Last Trading Date
asx_asxderivatives_ntp_itch_v1_05.last_trading_date.display = function(value)
  return "Last Trading Date: "..value
end

-- Dissect: Last Trading Date
asx_asxderivatives_ntp_itch_v1_05.last_trading_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.last_trading_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.last_trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.last_trading_date, range, value, display)

  return offset + length, value
end

-- Last Volume
asx_asxderivatives_ntp_itch_v1_05.last_volume = {}

-- Size: Last Volume
asx_asxderivatives_ntp_itch_v1_05.last_volume.size = 4

-- Display: Last Volume
asx_asxderivatives_ntp_itch_v1_05.last_volume.display = function(value)
  return "Last Volume: "..value
end

-- Dissect: Last Volume
asx_asxderivatives_ntp_itch_v1_05.last_volume.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.last_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.last_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.last_volume, range, value, display)

  return offset + length, value
end

-- Legs
asx_asxderivatives_ntp_itch_v1_05.legs = {}

-- Size: Legs
asx_asxderivatives_ntp_itch_v1_05.legs.size = 1

-- Display: Legs
asx_asxderivatives_ntp_itch_v1_05.legs.display = function(value)
  return "Legs: "..value
end

-- Dissect: Legs
asx_asxderivatives_ntp_itch_v1_05.legs.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.legs, range, value, display)

  return offset + length, value
end

-- Long Name
asx_asxderivatives_ntp_itch_v1_05.long_name = {}

-- Size: Long Name
asx_asxderivatives_ntp_itch_v1_05.long_name.size = 60

-- Display: Long Name
asx_asxderivatives_ntp_itch_v1_05.long_name.display = function(value)
  return "Long Name: "..value
end

-- Dissect: Long Name
asx_asxderivatives_ntp_itch_v1_05.long_name.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.long_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxderivatives_ntp_itch_v1_05.long_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.long_name, range, value, display)

  return offset + length, value
end

-- Lot Size Or Face Value
asx_asxderivatives_ntp_itch_v1_05.lot_size_or_face_value = {}

-- Size: Lot Size Or Face Value
asx_asxderivatives_ntp_itch_v1_05.lot_size_or_face_value.size = 8

-- Display: Lot Size Or Face Value
asx_asxderivatives_ntp_itch_v1_05.lot_size_or_face_value.display = function(value)
  return "Lot Size Or Face Value: "..value
end

-- Dissect: Lot Size Or Face Value
asx_asxderivatives_ntp_itch_v1_05.lot_size_or_face_value.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.lot_size_or_face_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxderivatives_ntp_itch_v1_05.lot_size_or_face_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.lot_size_or_face_value, range, value, display)

  return offset + length, value
end

-- Lowest Trade
asx_asxderivatives_ntp_itch_v1_05.lowest_trade = {}

-- Size: Lowest Trade
asx_asxderivatives_ntp_itch_v1_05.lowest_trade.size = 8

-- Display: Lowest Trade
asx_asxderivatives_ntp_itch_v1_05.lowest_trade.display = function(value)
  return "Lowest Trade: "..value
end

-- Translate: Lowest Trade
asx_asxderivatives_ntp_itch_v1_05.lowest_trade.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Lowest Trade
asx_asxderivatives_ntp_itch_v1_05.lowest_trade.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.lowest_trade.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxderivatives_ntp_itch_v1_05.lowest_trade.translate(raw)
  local display = asx_asxderivatives_ntp_itch_v1_05.lowest_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.lowest_trade, range, value, display)

  return offset + length, value
end

-- Matched Quantity
asx_asxderivatives_ntp_itch_v1_05.matched_quantity = {}

-- Size: Matched Quantity
asx_asxderivatives_ntp_itch_v1_05.matched_quantity.size = 8

-- Display: Matched Quantity
asx_asxderivatives_ntp_itch_v1_05.matched_quantity.display = function(value)
  return "Matched Quantity: "..value
end

-- Dissect: Matched Quantity
asx_asxderivatives_ntp_itch_v1_05.matched_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.matched_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxderivatives_ntp_itch_v1_05.matched_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.matched_quantity, range, value, display)

  return offset + length, value
end

-- Maturity Value
asx_asxderivatives_ntp_itch_v1_05.maturity_value = {}

-- Size: Maturity Value
asx_asxderivatives_ntp_itch_v1_05.maturity_value.size = 1

-- Display: Maturity Value
asx_asxderivatives_ntp_itch_v1_05.maturity_value.display = function(value)
  return "Maturity Value: "..value
end

-- Dissect: Maturity Value
asx_asxderivatives_ntp_itch_v1_05.maturity_value.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.maturity_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.maturity_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.maturity_value, range, value, display)

  return offset + length, value
end

-- Message Count
asx_asxderivatives_ntp_itch_v1_05.message_count = {}

-- Size: Message Count
asx_asxderivatives_ntp_itch_v1_05.message_count.size = 2

-- Display: Message Count
asx_asxderivatives_ntp_itch_v1_05.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
asx_asxderivatives_ntp_itch_v1_05.message_count.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
asx_asxderivatives_ntp_itch_v1_05.message_length = {}

-- Size: Message Length
asx_asxderivatives_ntp_itch_v1_05.message_length.size = 2

-- Display: Message Length
asx_asxderivatives_ntp_itch_v1_05.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
asx_asxderivatives_ntp_itch_v1_05.message_length.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
asx_asxderivatives_ntp_itch_v1_05.message_type = {}

-- Size: Message Type
asx_asxderivatives_ntp_itch_v1_05.message_type.size = 1

-- Display: Message Type
asx_asxderivatives_ntp_itch_v1_05.message_type.labels = {
  ["T"] = "Message Type: Seconds Message (T)",
  ["S"] = "Message Type: End Of Business Trade Date Message (S)",
  ["f"] = "Message Type: Future Symbol Directory Message (f)",
  ["h"] = "Message Type: Options Symbol Directory Message (h)",
  ["M"] = "Message Type: Combination Symbol Directory Message (M)",
  ["m"] = "Message Type: Bundles Symbol Directory (m)",
  ["O"] = "Message Type: Order Book State Message (O)",
  ["A"] = "Message Type: Add Order Message (A)",
  ["X"] = "Message Type: Order Volume Cancelled Message (X)",
  ["D"] = "Message Type: Order Deleted Message (D)",
  ["E"] = "Message Type: Order Executed Message (E)",
  ["C"] = "Message Type: Auction Order Executed Message (C)",
  ["e"] = "Message Type: Combination Order Executed Message (e)",
  ["j"] = "Message Type: Implied Order Added Message (j)",
  ["l"] = "Message Type: Implied Order Replaced Message (l)",
  ["k"] = "Message Type: Implied Order Deleted Message (k)",
  ["P"] = "Message Type: Trade Executed Message (P)",
  ["p"] = "Message Type: Combination Trade Executed Message (p)",
  ["B"] = "Message Type: Trade Cancellation Message (B)",
  ["Z"] = "Message Type: Equilibrium Price Message (Z)",
  ["t"] = "Message Type: Open High Low Last Trade Adjustment Message (t)",
  ["Y"] = "Message Type: Market Settlement Message (Y)",
  ["x"] = "Message Type: Text Message (x)",
  ["q"] = "Message Type: Request For Quote Message (q)",
  ["W"] = "Message Type: Anomalous Order Threshold Publish Message (W)",
  ["V"] = "Message Type: Volume And Open Interest Message (V)",
}

asx_asxderivatives_ntp_itch_v1_05.message_type.display = function(value)
  return asx_asxderivatives_ntp_itch_v1_05.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
asx_asxderivatives_ntp_itch_v1_05.message_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_asxderivatives_ntp_itch_v1_05.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
asx_asxderivatives_ntp_itch_v1_05.nanoseconds = {}

-- Size: Nanoseconds
asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size = 4

-- Display: Nanoseconds
asx_asxderivatives_ntp_itch_v1_05.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
asx_asxderivatives_ntp_itch_v1_05.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Open Interest
asx_asxderivatives_ntp_itch_v1_05.open_interest = {}

-- Size: Open Interest
asx_asxderivatives_ntp_itch_v1_05.open_interest.size = 8

-- Display: Open Interest
asx_asxderivatives_ntp_itch_v1_05.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
asx_asxderivatives_ntp_itch_v1_05.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.open_interest.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxderivatives_ntp_itch_v1_05.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Opening Trade
asx_asxderivatives_ntp_itch_v1_05.opening_trade = {}

-- Size: Opening Trade
asx_asxderivatives_ntp_itch_v1_05.opening_trade.size = 8

-- Display: Opening Trade
asx_asxderivatives_ntp_itch_v1_05.opening_trade.display = function(value)
  return "Opening Trade: "..value
end

-- Translate: Opening Trade
asx_asxderivatives_ntp_itch_v1_05.opening_trade.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Opening Trade
asx_asxderivatives_ntp_itch_v1_05.opening_trade.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.opening_trade.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxderivatives_ntp_itch_v1_05.opening_trade.translate(raw)
  local display = asx_asxderivatives_ntp_itch_v1_05.opening_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.opening_trade, range, value, display)

  return offset + length, value
end

-- Opposite Order Id
asx_asxderivatives_ntp_itch_v1_05.opposite_order_id = {}

-- Size: Opposite Order Id
asx_asxderivatives_ntp_itch_v1_05.opposite_order_id.size = 8

-- Display: Opposite Order Id
asx_asxderivatives_ntp_itch_v1_05.opposite_order_id.display = function(value)
  return "Opposite Order Id: "..value
end

-- Dissect: Opposite Order Id
asx_asxderivatives_ntp_itch_v1_05.opposite_order_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.opposite_order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxderivatives_ntp_itch_v1_05.opposite_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.opposite_order_id, range, value, display)

  return offset + length, value
end

-- Opposite Side
asx_asxderivatives_ntp_itch_v1_05.opposite_side = {}

-- Size: Opposite Side
asx_asxderivatives_ntp_itch_v1_05.opposite_side.size = 1

-- Display: Opposite Side
asx_asxderivatives_ntp_itch_v1_05.opposite_side.labels = {
  ["S"] = "Opposite Side: Sell (S)",
  ["B"] = "Opposite Side: Buy (B)",
}

asx_asxderivatives_ntp_itch_v1_05.opposite_side.display = function(value)
  return asx_asxderivatives_ntp_itch_v1_05.opposite_side.labels[value] or "Opposite Side: Unknown("..value..")"
end

-- Dissect: Opposite Side
asx_asxderivatives_ntp_itch_v1_05.opposite_side.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.opposite_side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = asx_asxderivatives_ntp_itch_v1_05.opposite_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.opposite_side, range, value, display)

  return offset + length, value
end

-- Opposite Tradeable Instrument Id
asx_asxderivatives_ntp_itch_v1_05.opposite_tradeable_instrument_id = {}

-- Size: Opposite Tradeable Instrument Id
asx_asxderivatives_ntp_itch_v1_05.opposite_tradeable_instrument_id.size = 4

-- Display: Opposite Tradeable Instrument Id
asx_asxderivatives_ntp_itch_v1_05.opposite_tradeable_instrument_id.display = function(value)
  return "Opposite Tradeable Instrument Id: "..value
end

-- Dissect: Opposite Tradeable Instrument Id
asx_asxderivatives_ntp_itch_v1_05.opposite_tradeable_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.opposite_tradeable_instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.opposite_tradeable_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.opposite_tradeable_instrument_id, range, value, display)

  return offset + length, value
end

-- Option Type
asx_asxderivatives_ntp_itch_v1_05.option_type = {}

-- Size: Option Type
asx_asxderivatives_ntp_itch_v1_05.option_type.size = 1

-- Display: Option Type
asx_asxderivatives_ntp_itch_v1_05.option_type.labels = {
  ["P"] = "Option Type: Put (P)",
  ["C"] = "Option Type: Call (C)",
}

asx_asxderivatives_ntp_itch_v1_05.option_type.display = function(value)
  return asx_asxderivatives_ntp_itch_v1_05.option_type.labels[value] or "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
asx_asxderivatives_ntp_itch_v1_05.option_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.option_type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = asx_asxderivatives_ntp_itch_v1_05.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Book Priority
asx_asxderivatives_ntp_itch_v1_05.order_book_priority = {}

-- Size: Order Book Priority
asx_asxderivatives_ntp_itch_v1_05.order_book_priority.size = 8

-- Display: Order Book Priority
asx_asxderivatives_ntp_itch_v1_05.order_book_priority.display = function(value)
  return "Order Book Priority: "..value
end

-- Dissect: Order Book Priority
asx_asxderivatives_ntp_itch_v1_05.order_book_priority.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.order_book_priority.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxderivatives_ntp_itch_v1_05.order_book_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.order_book_priority, range, value, display)

  return offset + length, value
end

-- Order Id
asx_asxderivatives_ntp_itch_v1_05.order_id = {}

-- Size: Order Id
asx_asxderivatives_ntp_itch_v1_05.order_id.size = 8

-- Display: Order Id
asx_asxderivatives_ntp_itch_v1_05.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
asx_asxderivatives_ntp_itch_v1_05.order_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxderivatives_ntp_itch_v1_05.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.order_id, range, value, display)

  return offset + length, value
end

-- Participant Id Buyer
asx_asxderivatives_ntp_itch_v1_05.participant_id_buyer = {}

-- Size: Participant Id Buyer
asx_asxderivatives_ntp_itch_v1_05.participant_id_buyer.size = 3

-- Display: Participant Id Buyer
asx_asxderivatives_ntp_itch_v1_05.participant_id_buyer.display = function(value)
  return "Participant Id Buyer: "..value
end

-- Dissect: Participant Id Buyer
asx_asxderivatives_ntp_itch_v1_05.participant_id_buyer.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.participant_id_buyer.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxderivatives_ntp_itch_v1_05.participant_id_buyer.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.participant_id_buyer, range, value, display)

  return offset + length, value
end

-- Participant Id Seller
asx_asxderivatives_ntp_itch_v1_05.participant_id_seller = {}

-- Size: Participant Id Seller
asx_asxderivatives_ntp_itch_v1_05.participant_id_seller.size = 3

-- Display: Participant Id Seller
asx_asxderivatives_ntp_itch_v1_05.participant_id_seller.display = function(value)
  return "Participant Id Seller: "..value
end

-- Dissect: Participant Id Seller
asx_asxderivatives_ntp_itch_v1_05.participant_id_seller.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.participant_id_seller.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxderivatives_ntp_itch_v1_05.participant_id_seller.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.participant_id_seller, range, value, display)

  return offset + length, value
end

-- Payments Per Year
asx_asxderivatives_ntp_itch_v1_05.payments_per_year = {}

-- Size: Payments Per Year
asx_asxderivatives_ntp_itch_v1_05.payments_per_year.size = 1

-- Display: Payments Per Year
asx_asxderivatives_ntp_itch_v1_05.payments_per_year.display = function(value)
  return "Payments Per Year: "..value
end

-- Dissect: Payments Per Year
asx_asxderivatives_ntp_itch_v1_05.payments_per_year.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.payments_per_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.payments_per_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.payments_per_year, range, value, display)

  return offset + length, value
end

-- Price
asx_asxderivatives_ntp_itch_v1_05.price = {}

-- Size: Price
asx_asxderivatives_ntp_itch_v1_05.price.size = 8

-- Display: Price
asx_asxderivatives_ntp_itch_v1_05.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
asx_asxderivatives_ntp_itch_v1_05.price.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Price
asx_asxderivatives_ntp_itch_v1_05.price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxderivatives_ntp_itch_v1_05.price.translate(raw)
  local display = asx_asxderivatives_ntp_itch_v1_05.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.price, range, value, display)

  return offset + length, value
end

-- Price Display Decimals
asx_asxderivatives_ntp_itch_v1_05.price_display_decimals = {}

-- Size: Price Display Decimals
asx_asxderivatives_ntp_itch_v1_05.price_display_decimals.size = 1

-- Display: Price Display Decimals
asx_asxderivatives_ntp_itch_v1_05.price_display_decimals.display = function(value)
  return "Price Display Decimals: "..value
end

-- Dissect: Price Display Decimals
asx_asxderivatives_ntp_itch_v1_05.price_display_decimals.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.price_display_decimals.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.price_display_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.price_display_decimals, range, value, display)

  return offset + length, value
end

-- Price Fractional Denominator
asx_asxderivatives_ntp_itch_v1_05.price_fractional_denominator = {}

-- Size: Price Fractional Denominator
asx_asxderivatives_ntp_itch_v1_05.price_fractional_denominator.size = 4

-- Display: Price Fractional Denominator
asx_asxderivatives_ntp_itch_v1_05.price_fractional_denominator.display = function(value)
  return "Price Fractional Denominator: "..value
end

-- Dissect: Price Fractional Denominator
asx_asxderivatives_ntp_itch_v1_05.price_fractional_denominator.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.price_fractional_denominator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.price_fractional_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.price_fractional_denominator, range, value, display)

  return offset + length, value
end

-- Price Leg
asx_asxderivatives_ntp_itch_v1_05.price_leg = {}

-- Size: Price Leg
asx_asxderivatives_ntp_itch_v1_05.price_leg.size = 8

-- Display: Price Leg
asx_asxderivatives_ntp_itch_v1_05.price_leg.display = function(value)
  return "Price Leg: "..value
end

-- Translate: Price Leg
asx_asxderivatives_ntp_itch_v1_05.price_leg.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Price Leg
asx_asxderivatives_ntp_itch_v1_05.price_leg.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.price_leg.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxderivatives_ntp_itch_v1_05.price_leg.translate(raw)
  local display = asx_asxderivatives_ntp_itch_v1_05.price_leg.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.price_leg, range, value, display)

  return offset + length, value
end

-- Price Method
asx_asxderivatives_ntp_itch_v1_05.price_method = {}

-- Size: Price Method
asx_asxderivatives_ntp_itch_v1_05.price_method.size = 1

-- Display: Price Method
asx_asxderivatives_ntp_itch_v1_05.price_method.labels = {
  [0] = "Price Method: Net Price (0)",
  [2] = "Price Method: Yield Difference (2)",
  [3] = "Price Method: Individual (3)",
  [4] = "Price Method: Average Price (4)",
}

asx_asxderivatives_ntp_itch_v1_05.price_method.display = function(value)
  return asx_asxderivatives_ntp_itch_v1_05.price_method.labels[value] or "Price Method: Unknown("..value..")"
end

-- Dissect: Price Method
asx_asxderivatives_ntp_itch_v1_05.price_method.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.price_method.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.price_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.price_method, range, value, display)

  return offset + length, value
end

-- Price Minimum Tick
asx_asxderivatives_ntp_itch_v1_05.price_minimum_tick = {}

-- Size: Price Minimum Tick
asx_asxderivatives_ntp_itch_v1_05.price_minimum_tick.size = 4

-- Display: Price Minimum Tick
asx_asxderivatives_ntp_itch_v1_05.price_minimum_tick.display = function(value)
  return "Price Minimum Tick: "..value
end

-- Dissect: Price Minimum Tick
asx_asxderivatives_ntp_itch_v1_05.price_minimum_tick.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.price_minimum_tick.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.price_minimum_tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.price_minimum_tick, range, value, display)

  return offset + length, value
end

-- Prior Day Settlement
asx_asxderivatives_ntp_itch_v1_05.prior_day_settlement = {}

-- Size: Prior Day Settlement
asx_asxderivatives_ntp_itch_v1_05.prior_day_settlement.size = 8

-- Display: Prior Day Settlement
asx_asxderivatives_ntp_itch_v1_05.prior_day_settlement.display = function(value)
  return "Prior Day Settlement: "..value
end

-- Translate: Prior Day Settlement
asx_asxderivatives_ntp_itch_v1_05.prior_day_settlement.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Prior Day Settlement
asx_asxderivatives_ntp_itch_v1_05.prior_day_settlement.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.prior_day_settlement.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxderivatives_ntp_itch_v1_05.prior_day_settlement.translate(raw)
  local display = asx_asxderivatives_ntp_itch_v1_05.prior_day_settlement.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.prior_day_settlement, range, value, display)

  return offset + length, value
end

-- Quantity
asx_asxderivatives_ntp_itch_v1_05.quantity = {}

-- Size: Quantity
asx_asxderivatives_ntp_itch_v1_05.quantity.size = 4

-- Display: Quantity
asx_asxderivatives_ntp_itch_v1_05.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
asx_asxderivatives_ntp_itch_v1_05.quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quantity Remaining
asx_asxderivatives_ntp_itch_v1_05.quantity_remaining = {}

-- Size: Quantity Remaining
asx_asxderivatives_ntp_itch_v1_05.quantity_remaining.size = 4

-- Display: Quantity Remaining
asx_asxderivatives_ntp_itch_v1_05.quantity_remaining.display = function(value)
  return "Quantity Remaining: "..value
end

-- Dissect: Quantity Remaining
asx_asxderivatives_ntp_itch_v1_05.quantity_remaining.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.quantity_remaining.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.quantity_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.quantity_remaining, range, value, display)

  return offset + length, value
end

-- Ratio Leg
asx_asxderivatives_ntp_itch_v1_05.ratio_leg = {}

-- Size: Ratio Leg
asx_asxderivatives_ntp_itch_v1_05.ratio_leg.size = 4

-- Display: Ratio Leg
asx_asxderivatives_ntp_itch_v1_05.ratio_leg.display = function(value)
  return "Ratio Leg: "..value
end

-- Dissect: Ratio Leg
asx_asxderivatives_ntp_itch_v1_05.ratio_leg.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.ratio_leg.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.ratio_leg.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.ratio_leg, range, value, display)

  return offset + length, value
end

-- Rfq Side
asx_asxderivatives_ntp_itch_v1_05.rfq_side = {}

-- Size: Rfq Side
asx_asxderivatives_ntp_itch_v1_05.rfq_side.size = 1

-- Display: Rfq Side
asx_asxderivatives_ntp_itch_v1_05.rfq_side.labels = {
  ["T"] = "Rfq Side: Two Sided Quote (T)",
  ["B"] = "Rfq Side: Bid Quote (B)",
  ["S"] = "Rfq Side: Ask Quote (S)",
  ["X"] = "Rfq Side: Crossing (X)",
}

asx_asxderivatives_ntp_itch_v1_05.rfq_side.display = function(value)
  return asx_asxderivatives_ntp_itch_v1_05.rfq_side.labels[value] or "Rfq Side: Unknown("..value..")"
end

-- Dissect: Rfq Side
asx_asxderivatives_ntp_itch_v1_05.rfq_side.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.rfq_side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = asx_asxderivatives_ntp_itch_v1_05.rfq_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.rfq_side, range, value, display)

  return offset + length, value
end

-- Second
asx_asxderivatives_ntp_itch_v1_05.second = {}

-- Size: Second
asx_asxderivatives_ntp_itch_v1_05.second.size = 4

-- Store: Second
asx_asxderivatives_ntp_itch_v1_05.second.current = nil

-- Generated: Second
asx_asxderivatives_ntp_itch_v1_05.second.generated = function(value, range, packet, parent)
  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_asx_asxderivatives_ntp_itch_v1_05.fields.second
  if asx_asxderivatives_ntp_itch_v1_05.absolute_time_base == 1 then field = omi_asx_asxderivatives_ntp_itch_v1_05.fields.second_utc end
  local second = parent:add(field, range, NSTime.new(value, 0))
  second:set_generated()
end

-- Dissect: Second
asx_asxderivatives_ntp_itch_v1_05.second.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.second.size
  local range = buffer(offset, length)
  local value = range:uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_asx_asxderivatives_ntp_itch_v1_05.fields.second
  if asx_asxderivatives_ntp_itch_v1_05.absolute_time_base == 1 then field = omi_asx_asxderivatives_ntp_itch_v1_05.fields.second_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Seller Combination Trade Id
asx_asxderivatives_ntp_itch_v1_05.seller_combination_trade_id = {}

-- Size: Seller Combination Trade Id
asx_asxderivatives_ntp_itch_v1_05.seller_combination_trade_id.size = 8

-- Display: Seller Combination Trade Id
asx_asxderivatives_ntp_itch_v1_05.seller_combination_trade_id.display = function(value)
  return "Seller Combination Trade Id: "..value
end

-- Dissect: Seller Combination Trade Id
asx_asxderivatives_ntp_itch_v1_05.seller_combination_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.seller_combination_trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxderivatives_ntp_itch_v1_05.seller_combination_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.seller_combination_trade_id, range, value, display)

  return offset + length, value
end

-- Seller Order Id
asx_asxderivatives_ntp_itch_v1_05.seller_order_id = {}

-- Size: Seller Order Id
asx_asxderivatives_ntp_itch_v1_05.seller_order_id.size = 8

-- Display: Seller Order Id
asx_asxderivatives_ntp_itch_v1_05.seller_order_id.display = function(value)
  return "Seller Order Id: "..value
end

-- Dissect: Seller Order Id
asx_asxderivatives_ntp_itch_v1_05.seller_order_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.seller_order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxderivatives_ntp_itch_v1_05.seller_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.seller_order_id, range, value, display)

  return offset + length, value
end

-- Seller Participant Id
asx_asxderivatives_ntp_itch_v1_05.seller_participant_id = {}

-- Size: Seller Participant Id
asx_asxderivatives_ntp_itch_v1_05.seller_participant_id.size = 3

-- Display: Seller Participant Id
asx_asxderivatives_ntp_itch_v1_05.seller_participant_id.display = function(value)
  return "Seller Participant Id: "..value
end

-- Dissect: Seller Participant Id
asx_asxderivatives_ntp_itch_v1_05.seller_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.seller_participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxderivatives_ntp_itch_v1_05.seller_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.seller_participant_id, range, value, display)

  return offset + length, value
end

-- Seller Side
asx_asxderivatives_ntp_itch_v1_05.seller_side = {}

-- Size: Seller Side
asx_asxderivatives_ntp_itch_v1_05.seller_side.size = 1

-- Display: Seller Side
asx_asxderivatives_ntp_itch_v1_05.seller_side.labels = {
  ["S"] = "Seller Side: Sell (S)",
  ["B"] = "Seller Side: Buy (B)",
}

asx_asxderivatives_ntp_itch_v1_05.seller_side.display = function(value)
  return asx_asxderivatives_ntp_itch_v1_05.seller_side.labels[value] or "Seller Side: Unknown("..value..")"
end

-- Dissect: Seller Side
asx_asxderivatives_ntp_itch_v1_05.seller_side.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.seller_side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = asx_asxderivatives_ntp_itch_v1_05.seller_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.seller_side, range, value, display)

  return offset + length, value
end

-- Seller Tradeable Instrument Id
asx_asxderivatives_ntp_itch_v1_05.seller_tradeable_instrument_id = {}

-- Size: Seller Tradeable Instrument Id
asx_asxderivatives_ntp_itch_v1_05.seller_tradeable_instrument_id.size = 4

-- Display: Seller Tradeable Instrument Id
asx_asxderivatives_ntp_itch_v1_05.seller_tradeable_instrument_id.display = function(value)
  return "Seller Tradeable Instrument Id: "..value
end

-- Dissect: Seller Tradeable Instrument Id
asx_asxderivatives_ntp_itch_v1_05.seller_tradeable_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.seller_tradeable_instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.seller_tradeable_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.seller_tradeable_instrument_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
asx_asxderivatives_ntp_itch_v1_05.sequence_number = {}

-- Size: Sequence Number
asx_asxderivatives_ntp_itch_v1_05.sequence_number.size = 8

-- Display: Sequence Number
asx_asxderivatives_ntp_itch_v1_05.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
asx_asxderivatives_ntp_itch_v1_05.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxderivatives_ntp_itch_v1_05.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
asx_asxderivatives_ntp_itch_v1_05.session = {}

-- Size: Session
asx_asxderivatives_ntp_itch_v1_05.session.size = 10

-- Display: Session
asx_asxderivatives_ntp_itch_v1_05.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
asx_asxderivatives_ntp_itch_v1_05.session.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.session.size
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

  local display = asx_asxderivatives_ntp_itch_v1_05.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.session, range, value, display)

  return offset + length, value
end

-- Session State
asx_asxderivatives_ntp_itch_v1_05.session_state = {}

-- Size: Session State
asx_asxderivatives_ntp_itch_v1_05.session_state.size = 1

-- Display: Session State
asx_asxderivatives_ntp_itch_v1_05.session_state.labels = {
  ["P"] = "Session State: Pre Open (P)",
  ["O"] = "Session State: Opened (O)",
  ["R"] = "Session State: Regulatory Halt (R)",
  ["H"] = "Session State: Halted (H)",
  ["C"] = "Session State: Closed (C)",
  ["M"] = "Session State: Maintenance (M)",
}

asx_asxderivatives_ntp_itch_v1_05.session_state.display = function(value)
  return asx_asxderivatives_ntp_itch_v1_05.session_state.labels[value] or "Session State: Unknown("..value..")"
end

-- Dissect: Session State
asx_asxderivatives_ntp_itch_v1_05.session_state.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.session_state.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = asx_asxderivatives_ntp_itch_v1_05.session_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.session_state, range, value, display)

  return offset + length, value
end

-- Side
asx_asxderivatives_ntp_itch_v1_05.side = {}

-- Size: Side
asx_asxderivatives_ntp_itch_v1_05.side.size = 1

-- Display: Side
asx_asxderivatives_ntp_itch_v1_05.side.labels = {
  ["S"] = "Side: Sell (S)",
  ["B"] = "Side: Buy (B)",
}

asx_asxderivatives_ntp_itch_v1_05.side.display = function(value)
  return asx_asxderivatives_ntp_itch_v1_05.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
asx_asxderivatives_ntp_itch_v1_05.side.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = asx_asxderivatives_ntp_itch_v1_05.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.side, range, value, display)

  return offset + length, value
end

-- Side Leg
asx_asxderivatives_ntp_itch_v1_05.side_leg = {}

-- Size: Side Leg
asx_asxderivatives_ntp_itch_v1_05.side_leg.size = 1

-- Display: Side Leg
asx_asxderivatives_ntp_itch_v1_05.side_leg.display = function(value)
  if value == "B" then
    return "Side Leg: Buy (B)"
  end
  if value == "S" then
    return "Side Leg: Sell (S)"
  end
  if value == " " then
    return "Side Leg: Not Defined (<whitespace>)"
  end

  return "Side Leg: Unknown("..value..")"
end

-- Dissect: Side Leg
asx_asxderivatives_ntp_itch_v1_05.side_leg.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.side_leg.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = asx_asxderivatives_ntp_itch_v1_05.side_leg.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.side_leg, range, value, display)

  return offset + length, value
end

-- Source Id
asx_asxderivatives_ntp_itch_v1_05.source_id = {}

-- Size: Source Id
asx_asxderivatives_ntp_itch_v1_05.source_id.size = 6

-- Display: Source Id
asx_asxderivatives_ntp_itch_v1_05.source_id.display = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
asx_asxderivatives_ntp_itch_v1_05.source_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.source_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxderivatives_ntp_itch_v1_05.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.source_id, range, value, display)

  return offset + length, value
end

-- Strike
asx_asxderivatives_ntp_itch_v1_05.strike = {}

-- Size: Strike
asx_asxderivatives_ntp_itch_v1_05.strike.size = 8

-- Display: Strike
asx_asxderivatives_ntp_itch_v1_05.strike.display = function(value)
  return "Strike: "..value
end

-- Translate: Strike
asx_asxderivatives_ntp_itch_v1_05.strike.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Strike
asx_asxderivatives_ntp_itch_v1_05.strike.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.strike.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxderivatives_ntp_itch_v1_05.strike.translate(raw)
  local display = asx_asxderivatives_ntp_itch_v1_05.strike.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.strike, range, value, display)

  return offset + length, value
end

-- Strike Price Decimal Position
asx_asxderivatives_ntp_itch_v1_05.strike_price_decimal_position = {}

-- Size: Strike Price Decimal Position
asx_asxderivatives_ntp_itch_v1_05.strike_price_decimal_position.size = 1

-- Display: Strike Price Decimal Position
asx_asxderivatives_ntp_itch_v1_05.strike_price_decimal_position.display = function(value)
  return "Strike Price Decimal Position: "..value
end

-- Dissect: Strike Price Decimal Position
asx_asxderivatives_ntp_itch_v1_05.strike_price_decimal_position.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.strike_price_decimal_position.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.strike_price_decimal_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.strike_price_decimal_position, range, value, display)

  return offset + length, value
end

-- Strike Price Fractional Denominator
asx_asxderivatives_ntp_itch_v1_05.strike_price_fractional_denominator = {}

-- Size: Strike Price Fractional Denominator
asx_asxderivatives_ntp_itch_v1_05.strike_price_fractional_denominator.size = 4

-- Display: Strike Price Fractional Denominator
asx_asxderivatives_ntp_itch_v1_05.strike_price_fractional_denominator.display = function(value)
  return "Strike Price Fractional Denominator: "..value
end

-- Dissect: Strike Price Fractional Denominator
asx_asxderivatives_ntp_itch_v1_05.strike_price_fractional_denominator.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.strike_price_fractional_denominator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.strike_price_fractional_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.strike_price_fractional_denominator, range, value, display)

  return offset + length, value
end

-- Strike Price Minimum Tick
asx_asxderivatives_ntp_itch_v1_05.strike_price_minimum_tick = {}

-- Size: Strike Price Minimum Tick
asx_asxderivatives_ntp_itch_v1_05.strike_price_minimum_tick.size = 4

-- Display: Strike Price Minimum Tick
asx_asxderivatives_ntp_itch_v1_05.strike_price_minimum_tick.display = function(value)
  return "Strike Price Minimum Tick: "..value
end

-- Dissect: Strike Price Minimum Tick
asx_asxderivatives_ntp_itch_v1_05.strike_price_minimum_tick.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.strike_price_minimum_tick.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.strike_price_minimum_tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.strike_price_minimum_tick, range, value, display)

  return offset + length, value
end

-- Symbol Name
asx_asxderivatives_ntp_itch_v1_05.symbol_name = {}

-- Size: Symbol Name
asx_asxderivatives_ntp_itch_v1_05.symbol_name.size = 32

-- Display: Symbol Name
asx_asxderivatives_ntp_itch_v1_05.symbol_name.display = function(value)
  return "Symbol Name: "..value
end

-- Dissect: Symbol Name
asx_asxderivatives_ntp_itch_v1_05.symbol_name.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.symbol_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxderivatives_ntp_itch_v1_05.symbol_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.symbol_name, range, value, display)

  return offset + length, value
end

-- Text
asx_asxderivatives_ntp_itch_v1_05.text = {}

-- Size: Text
asx_asxderivatives_ntp_itch_v1_05.text.size = 100

-- Display: Text
asx_asxderivatives_ntp_itch_v1_05.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
asx_asxderivatives_ntp_itch_v1_05.text.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxderivatives_ntp_itch_v1_05.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.text, range, value, display)

  return offset + length, value
end

-- Total Traded Volume
asx_asxderivatives_ntp_itch_v1_05.total_traded_volume = {}

-- Size: Total Traded Volume
asx_asxderivatives_ntp_itch_v1_05.total_traded_volume.size = 8

-- Display: Total Traded Volume
asx_asxderivatives_ntp_itch_v1_05.total_traded_volume.display = function(value)
  return "Total Traded Volume: "..value
end

-- Dissect: Total Traded Volume
asx_asxderivatives_ntp_itch_v1_05.total_traded_volume.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.total_traded_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxderivatives_ntp_itch_v1_05.total_traded_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.total_traded_volume, range, value, display)

  return offset + length, value
end

-- Trade Date
asx_asxderivatives_ntp_itch_v1_05.trade_date = {}

-- Size: Trade Date
asx_asxderivatives_ntp_itch_v1_05.trade_date.size = 2

-- Display: Trade Date
asx_asxderivatives_ntp_itch_v1_05.trade_date.display = function(value)
  return string.format("Trade Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Trade Date
asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.trade_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trade Id
asx_asxderivatives_ntp_itch_v1_05.trade_id = {}

-- Size: Trade Id
asx_asxderivatives_ntp_itch_v1_05.trade_id.size = 8

-- Display: Trade Id
asx_asxderivatives_ntp_itch_v1_05.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
asx_asxderivatives_ntp_itch_v1_05.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxderivatives_ntp_itch_v1_05.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Price
asx_asxderivatives_ntp_itch_v1_05.trade_price = {}

-- Size: Trade Price
asx_asxderivatives_ntp_itch_v1_05.trade_price.size = 8

-- Display: Trade Price
asx_asxderivatives_ntp_itch_v1_05.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
asx_asxderivatives_ntp_itch_v1_05.trade_price.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Trade Price
asx_asxderivatives_ntp_itch_v1_05.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.trade_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxderivatives_ntp_itch_v1_05.trade_price.translate(raw)
  local display = asx_asxderivatives_ntp_itch_v1_05.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Type
asx_asxderivatives_ntp_itch_v1_05.trade_type = {}

-- Size: Trade Type
asx_asxderivatives_ntp_itch_v1_05.trade_type.size = 1

-- Display: Trade Type
asx_asxderivatives_ntp_itch_v1_05.trade_type.labels = {
  ["T"] = "Trade Type: Normal Trade (T)",
  ["t"] = "Trade Type: Normal Cross (t)",
  ["L"] = "Trade Type: Auction Trade (L)",
  ["l"] = "Trade Type: Auction Cross (l)",
  ["S"] = "Trade Type: Combination To Underlying Trade (S)",
  ["s"] = "Trade Type: Combination To Underlying Cross (s)",
  ["R"] = "Trade Type: Combination To Combination Trade (R)",
  ["r"] = "Trade Type: Combination To Combination Cross (r)",
  ["A"] = "Trade Type: Strip To Strip Trade (A)",
  ["a"] = "Trade Type: Strip To Strip Cross (a)",
  ["B"] = "Trade Type: Strip To Outright Trade (B)",
  ["b"] = "Trade Type: Strip To Outright Cross (b)",
}

asx_asxderivatives_ntp_itch_v1_05.trade_type.display = function(value)
  return asx_asxderivatives_ntp_itch_v1_05.trade_type.labels[value] or "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
asx_asxderivatives_ntp_itch_v1_05.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.trade_type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = asx_asxderivatives_ntp_itch_v1_05.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Tradeable Instrument Id
asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id = {}

-- Size: Tradeable Instrument Id
asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size = 4

-- Display: Tradeable Instrument Id
asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.display = function(value)
  return "Tradeable Instrument Id: "..value
end

-- Dissect: Tradeable Instrument Id
asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.tradeable_instrument_id, range, value, display)

  return offset + length, value
end

-- Tradeable Instrument Id Leg
asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id_leg = {}

-- Size: Tradeable Instrument Id Leg
asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id_leg.size = 4

-- Display: Tradeable Instrument Id Leg
asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id_leg.display = function(value)
  return "Tradeable Instrument Id Leg: "..value
end

-- Dissect: Tradeable Instrument Id Leg
asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id_leg.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id_leg.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id_leg.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.tradeable_instrument_id_leg, range, value, display)

  return offset + length, value
end

-- Underlying Tradeable Instrument Id
asx_asxderivatives_ntp_itch_v1_05.underlying_tradeable_instrument_id = {}

-- Size: Underlying Tradeable Instrument Id
asx_asxderivatives_ntp_itch_v1_05.underlying_tradeable_instrument_id.size = 4

-- Display: Underlying Tradeable Instrument Id
asx_asxderivatives_ntp_itch_v1_05.underlying_tradeable_instrument_id.display = function(value)
  return "Underlying Tradeable Instrument Id: "..value
end

-- Dissect: Underlying Tradeable Instrument Id
asx_asxderivatives_ntp_itch_v1_05.underlying_tradeable_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.underlying_tradeable_instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.underlying_tradeable_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.underlying_tradeable_instrument_id, range, value, display)

  return offset + length, value
end

-- Voi Trade Date
asx_asxderivatives_ntp_itch_v1_05.voi_trade_date = {}

-- Size: Voi Trade Date
asx_asxderivatives_ntp_itch_v1_05.voi_trade_date.size = 2

-- Display: Voi Trade Date
asx_asxderivatives_ntp_itch_v1_05.voi_trade_date.display = function(value)
  return string.format("Voi Trade Date: %s", os.date("!%Y-%m-%d", value * 86400))
end

-- Dissect: Voi Trade Date
asx_asxderivatives_ntp_itch_v1_05.voi_trade_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.voi_trade_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxderivatives_ntp_itch_v1_05.voi_trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.voi_trade_date, range, value, display)

  return offset + length, value
end

-- Volatility
asx_asxderivatives_ntp_itch_v1_05.volatility = {}

-- Size: Volatility
asx_asxderivatives_ntp_itch_v1_05.volatility.size = 8

-- Display: Volatility
asx_asxderivatives_ntp_itch_v1_05.volatility.display = function(value)
  return "Volatility: "..value
end

-- Dissect: Volatility
asx_asxderivatives_ntp_itch_v1_05.volatility.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.volatility.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxderivatives_ntp_itch_v1_05.volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.volatility, range, value, display)

  return offset + length, value
end

-- Timestamp
asx_asxderivatives_ntp_itch_v1_05.timestamp = {}

-- Translate: Timestamp
asx_asxderivatives_ntp_itch_v1_05.timestamp.translate = function(nanoseconds, stored_second)
  return UInt64.new(stored_second * 1000000000 + nanoseconds)
end

-- Display: Timestamp
asx_asxderivatives_ntp_itch_v1_05.timestamp.display = function(nanoseconds, stored_second)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_second)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
asx_asxderivatives_ntp_itch_v1_05.timestamp.composite = function(buffer, offset, stored_second, packet, parent)
  local length = asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:uint()
  local value = asx_asxderivatives_ntp_itch_v1_05.timestamp.translate(nanoseconds, stored_second)
  local display = asx_asxderivatives_ntp_itch_v1_05.timestamp.display(nanoseconds, stored_second, packet)
  parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.timestamp, range, value, display)

  asx_asxderivatives_ntp_itch_v1_05.second.generated(stored_second, range, packet, parent)

  display = asx_asxderivatives_ntp_itch_v1_05.nanoseconds.display(nanoseconds)
  parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect = function(buffer, offset, packet, parent)
  if asx_asxderivatives_ntp_itch_v1_05.format_timestamp then
    local stored_second = asx_asxderivatives_ntp_itch_v1_05.second.current

    if stored_second ~= nil then
      return asx_asxderivatives_ntp_itch_v1_05.timestamp.composite(buffer, offset, stored_second, packet, parent)
    end
  end

  return asx_asxderivatives_ntp_itch_v1_05.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Asx AsxDerivatives Ntp Itch 1.05
-----------------------------------------------------------------------

-- Volume And Open Interest Message
asx_asxderivatives_ntp_itch_v1_05.volume_and_open_interest_message = {}

-- Size: Volume And Open Interest Message
asx_asxderivatives_ntp_itch_v1_05.volume_and_open_interest_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.cumulative_volume.size + 
  asx_asxderivatives_ntp_itch_v1_05.open_interest.size + 
  asx_asxderivatives_ntp_itch_v1_05.voi_trade_date.size

-- Display: Volume And Open Interest Message
asx_asxderivatives_ntp_itch_v1_05.volume_and_open_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Volume And Open Interest Message
asx_asxderivatives_ntp_itch_v1_05.volume_and_open_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: Numeric
  index, tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Cumulative Volume: Numeric
  index, cumulative_volume = asx_asxderivatives_ntp_itch_v1_05.cumulative_volume.dissect(buffer, index, packet, parent)

  -- Open Interest: Numeric
  index, open_interest = asx_asxderivatives_ntp_itch_v1_05.open_interest.dissect(buffer, index, packet, parent)

  -- Voi Trade Date: Numeric
  index, voi_trade_date = asx_asxderivatives_ntp_itch_v1_05.voi_trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Volume And Open Interest Message
asx_asxderivatives_ntp_itch_v1_05.volume_and_open_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.volume_and_open_interest_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.volume_and_open_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.volume_and_open_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.volume_and_open_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Anomalous Order Threshold Publish Message
asx_asxderivatives_ntp_itch_v1_05.anomalous_order_threshold_publish_message = {}

-- Size: Anomalous Order Threshold Publish Message
asx_asxderivatives_ntp_itch_v1_05.anomalous_order_threshold_publish_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.aot_price.size + 
  asx_asxderivatives_ntp_itch_v1_05.aot_upper_price.size + 
  asx_asxderivatives_ntp_itch_v1_05.aot_lower_price.size + 
  asx_asxderivatives_ntp_itch_v1_05.etr_price.size + 
  asx_asxderivatives_ntp_itch_v1_05.etr_upper_price.size + 
  asx_asxderivatives_ntp_itch_v1_05.etr_lower_price.size

-- Display: Anomalous Order Threshold Publish Message
asx_asxderivatives_ntp_itch_v1_05.anomalous_order_threshold_publish_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Anomalous Order Threshold Publish Message
asx_asxderivatives_ntp_itch_v1_05.anomalous_order_threshold_publish_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: Numeric
  index, tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Aot Price: Price
  index, aot_price = asx_asxderivatives_ntp_itch_v1_05.aot_price.dissect(buffer, index, packet, parent)

  -- Aot Upper Price: Price
  index, aot_upper_price = asx_asxderivatives_ntp_itch_v1_05.aot_upper_price.dissect(buffer, index, packet, parent)

  -- Aot Lower Price: Price
  index, aot_lower_price = asx_asxderivatives_ntp_itch_v1_05.aot_lower_price.dissect(buffer, index, packet, parent)

  -- Etr Price: Price
  index, etr_price = asx_asxderivatives_ntp_itch_v1_05.etr_price.dissect(buffer, index, packet, parent)

  -- Etr Upper Price: Price
  index, etr_upper_price = asx_asxderivatives_ntp_itch_v1_05.etr_upper_price.dissect(buffer, index, packet, parent)

  -- Etr Lower Price: Price
  index, etr_lower_price = asx_asxderivatives_ntp_itch_v1_05.etr_lower_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Anomalous Order Threshold Publish Message
asx_asxderivatives_ntp_itch_v1_05.anomalous_order_threshold_publish_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.anomalous_order_threshold_publish_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.anomalous_order_threshold_publish_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.anomalous_order_threshold_publish_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.anomalous_order_threshold_publish_message.fields(buffer, offset, packet, parent)
  end
end

-- Request For Quote Message
asx_asxderivatives_ntp_itch_v1_05.request_for_quote_message = {}

-- Size: Request For Quote Message
asx_asxderivatives_ntp_itch_v1_05.request_for_quote_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.rfq_side.size + 
  asx_asxderivatives_ntp_itch_v1_05.quantity.size

-- Display: Request For Quote Message
asx_asxderivatives_ntp_itch_v1_05.request_for_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request For Quote Message
asx_asxderivatives_ntp_itch_v1_05.request_for_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: Numeric
  index, tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Rfq Side: Alpha
  index, rfq_side = asx_asxderivatives_ntp_itch_v1_05.rfq_side.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = asx_asxderivatives_ntp_itch_v1_05.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Quote Message
asx_asxderivatives_ntp_itch_v1_05.request_for_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.request_for_quote_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.request_for_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.request_for_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.request_for_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Text Message
asx_asxderivatives_ntp_itch_v1_05.text_message = {}

-- Size: Text Message
asx_asxderivatives_ntp_itch_v1_05.text_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.source_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.text.size

-- Display: Text Message
asx_asxderivatives_ntp_itch_v1_05.text_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Text Message
asx_asxderivatives_ntp_itch_v1_05.text_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Source Id: Alpha
  index, source_id = asx_asxderivatives_ntp_itch_v1_05.source_id.dissect(buffer, index, packet, parent)

  -- Text: Alpha
  index, text = asx_asxderivatives_ntp_itch_v1_05.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Text Message
asx_asxderivatives_ntp_itch_v1_05.text_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.text_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.text_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.text_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.text_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Settlement Message
asx_asxderivatives_ntp_itch_v1_05.market_settlement_message = {}

-- Size: Market Settlement Message
asx_asxderivatives_ntp_itch_v1_05.market_settlement_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.opening_trade.size + 
  asx_asxderivatives_ntp_itch_v1_05.highest_trade.size + 
  asx_asxderivatives_ntp_itch_v1_05.lowest_trade.size + 
  asx_asxderivatives_ntp_itch_v1_05.last_trade.size + 
  asx_asxderivatives_ntp_itch_v1_05.last_volume.size + 
  asx_asxderivatives_ntp_itch_v1_05.total_traded_volume.size

-- Display: Market Settlement Message
asx_asxderivatives_ntp_itch_v1_05.market_settlement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Settlement Message
asx_asxderivatives_ntp_itch_v1_05.market_settlement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: Numeric
  index, tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Opening Trade: Price
  index, opening_trade = asx_asxderivatives_ntp_itch_v1_05.opening_trade.dissect(buffer, index, packet, parent)

  -- Highest Trade: Price
  index, highest_trade = asx_asxderivatives_ntp_itch_v1_05.highest_trade.dissect(buffer, index, packet, parent)

  -- Lowest Trade: Price
  index, lowest_trade = asx_asxderivatives_ntp_itch_v1_05.lowest_trade.dissect(buffer, index, packet, parent)

  -- Last Trade: Price
  index, last_trade = asx_asxderivatives_ntp_itch_v1_05.last_trade.dissect(buffer, index, packet, parent)

  -- Last Volume: Numeric
  index, last_volume = asx_asxderivatives_ntp_itch_v1_05.last_volume.dissect(buffer, index, packet, parent)

  -- Total Traded Volume: Numeric
  index, total_traded_volume = asx_asxderivatives_ntp_itch_v1_05.total_traded_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Settlement Message
asx_asxderivatives_ntp_itch_v1_05.market_settlement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.market_settlement_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.market_settlement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.market_settlement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.market_settlement_message.fields(buffer, offset, packet, parent)
  end
end

-- Open High Low Last Trade Adjustment Message
asx_asxderivatives_ntp_itch_v1_05.open_high_low_last_trade_adjustment_message = {}

-- Size: Open High Low Last Trade Adjustment Message
asx_asxderivatives_ntp_itch_v1_05.open_high_low_last_trade_adjustment_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.opening_trade.size + 
  asx_asxderivatives_ntp_itch_v1_05.highest_trade.size + 
  asx_asxderivatives_ntp_itch_v1_05.lowest_trade.size + 
  asx_asxderivatives_ntp_itch_v1_05.last_trade.size + 
  asx_asxderivatives_ntp_itch_v1_05.last_volume.size + 
  asx_asxderivatives_ntp_itch_v1_05.total_traded_volume.size

-- Display: Open High Low Last Trade Adjustment Message
asx_asxderivatives_ntp_itch_v1_05.open_high_low_last_trade_adjustment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open High Low Last Trade Adjustment Message
asx_asxderivatives_ntp_itch_v1_05.open_high_low_last_trade_adjustment_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: Numeric
  index, tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Opening Trade: Price
  index, opening_trade = asx_asxderivatives_ntp_itch_v1_05.opening_trade.dissect(buffer, index, packet, parent)

  -- Highest Trade: Price
  index, highest_trade = asx_asxderivatives_ntp_itch_v1_05.highest_trade.dissect(buffer, index, packet, parent)

  -- Lowest Trade: Price
  index, lowest_trade = asx_asxderivatives_ntp_itch_v1_05.lowest_trade.dissect(buffer, index, packet, parent)

  -- Last Trade: Price
  index, last_trade = asx_asxderivatives_ntp_itch_v1_05.last_trade.dissect(buffer, index, packet, parent)

  -- Last Volume: Numeric
  index, last_volume = asx_asxderivatives_ntp_itch_v1_05.last_volume.dissect(buffer, index, packet, parent)

  -- Total Traded Volume: Numeric
  index, total_traded_volume = asx_asxderivatives_ntp_itch_v1_05.total_traded_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open High Low Last Trade Adjustment Message
asx_asxderivatives_ntp_itch_v1_05.open_high_low_last_trade_adjustment_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.open_high_low_last_trade_adjustment_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.open_high_low_last_trade_adjustment_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.open_high_low_last_trade_adjustment_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.open_high_low_last_trade_adjustment_message.fields(buffer, offset, packet, parent)
  end
end

-- Equilibrium Price Message
asx_asxderivatives_ntp_itch_v1_05.equilibrium_price_message = {}

-- Size: Equilibrium Price Message
asx_asxderivatives_ntp_itch_v1_05.equilibrium_price_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.equilibrium_price.size + 
  asx_asxderivatives_ntp_itch_v1_05.matched_quantity.size + 
  asx_asxderivatives_ntp_itch_v1_05.bid_quantity.size + 
  asx_asxderivatives_ntp_itch_v1_05.ask_quantity.size

-- Display: Equilibrium Price Message
asx_asxderivatives_ntp_itch_v1_05.equilibrium_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equilibrium Price Message
asx_asxderivatives_ntp_itch_v1_05.equilibrium_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: Numeric
  index, tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Equilibrium Price: Price
  index, equilibrium_price = asx_asxderivatives_ntp_itch_v1_05.equilibrium_price.dissect(buffer, index, packet, parent)

  -- Matched Quantity: Numeric
  index, matched_quantity = asx_asxderivatives_ntp_itch_v1_05.matched_quantity.dissect(buffer, index, packet, parent)

  -- Bid Quantity: Numeric
  index, bid_quantity = asx_asxderivatives_ntp_itch_v1_05.bid_quantity.dissect(buffer, index, packet, parent)

  -- Ask Quantity: Numeric
  index, ask_quantity = asx_asxderivatives_ntp_itch_v1_05.ask_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equilibrium Price Message
asx_asxderivatives_ntp_itch_v1_05.equilibrium_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.equilibrium_price_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.equilibrium_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.equilibrium_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.equilibrium_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancellation Message
asx_asxderivatives_ntp_itch_v1_05.trade_cancellation_message = {}

-- Size: Trade Cancellation Message
asx_asxderivatives_ntp_itch_v1_05.trade_cancellation_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_id.size

-- Display: Trade Cancellation Message
asx_asxderivatives_ntp_itch_v1_05.trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancellation Message
asx_asxderivatives_ntp_itch_v1_05.trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: Numeric
  index, tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Trade Id: Numeric
  index, trade_id = asx_asxderivatives_ntp_itch_v1_05.trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancellation Message
asx_asxderivatives_ntp_itch_v1_05.trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.trade_cancellation_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Combination Trade Executed Message
asx_asxderivatives_ntp_itch_v1_05.combination_trade_executed_message = {}

-- Size: Combination Trade Executed Message
asx_asxderivatives_ntp_itch_v1_05.combination_trade_executed_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_type.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.executed_quantity.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_price.size + 
  asx_asxderivatives_ntp_itch_v1_05.buyer_tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.buyer_side.size + 
  asx_asxderivatives_ntp_itch_v1_05.buyer_order_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.buyer_combination_trade_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.buyer_participant_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.seller_tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.seller_side.size + 
  asx_asxderivatives_ntp_itch_v1_05.seller_order_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.seller_combination_trade_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.seller_participant_id.size

-- Display: Combination Trade Executed Message
asx_asxderivatives_ntp_itch_v1_05.combination_trade_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combination Trade Executed Message
asx_asxderivatives_ntp_itch_v1_05.combination_trade_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: Numeric
  index, tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Trade Type: Alpha
  index, trade_type = asx_asxderivatives_ntp_itch_v1_05.trade_type.dissect(buffer, index, packet, parent)

  -- Trade Id: Numeric
  index, trade_id = asx_asxderivatives_ntp_itch_v1_05.trade_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Numeric
  index, executed_quantity = asx_asxderivatives_ntp_itch_v1_05.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = asx_asxderivatives_ntp_itch_v1_05.trade_price.dissect(buffer, index, packet, parent)

  -- Buyer Tradeable Instrument Id: Numeric
  index, buyer_tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.buyer_tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Buyer Side: Alpha
  index, buyer_side = asx_asxderivatives_ntp_itch_v1_05.buyer_side.dissect(buffer, index, packet, parent)

  -- Buyer Order Id: Numeric
  index, buyer_order_id = asx_asxderivatives_ntp_itch_v1_05.buyer_order_id.dissect(buffer, index, packet, parent)

  -- Buyer Combination Trade Id: Numeric
  index, buyer_combination_trade_id = asx_asxderivatives_ntp_itch_v1_05.buyer_combination_trade_id.dissect(buffer, index, packet, parent)

  -- Buyer Participant Id: Alpha
  index, buyer_participant_id = asx_asxderivatives_ntp_itch_v1_05.buyer_participant_id.dissect(buffer, index, packet, parent)

  -- Seller Tradeable Instrument Id: Numeric
  index, seller_tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.seller_tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Seller Side: Alpha
  index, seller_side = asx_asxderivatives_ntp_itch_v1_05.seller_side.dissect(buffer, index, packet, parent)

  -- Seller Order Id: Numeric
  index, seller_order_id = asx_asxderivatives_ntp_itch_v1_05.seller_order_id.dissect(buffer, index, packet, parent)

  -- Seller Combination Trade Id: Numeric
  index, seller_combination_trade_id = asx_asxderivatives_ntp_itch_v1_05.seller_combination_trade_id.dissect(buffer, index, packet, parent)

  -- Seller Participant Id: Alpha
  index, seller_participant_id = asx_asxderivatives_ntp_itch_v1_05.seller_participant_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Trade Executed Message
asx_asxderivatives_ntp_itch_v1_05.combination_trade_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.combination_trade_executed_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.combination_trade_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.combination_trade_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.combination_trade_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Executed Message
asx_asxderivatives_ntp_itch_v1_05.trade_executed_message = {}

-- Size: Trade Executed Message
asx_asxderivatives_ntp_itch_v1_05.trade_executed_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_type.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.executed_quantity.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_price.size + 
  asx_asxderivatives_ntp_itch_v1_05.combination_trade_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.participant_id_buyer.size + 
  asx_asxderivatives_ntp_itch_v1_05.participant_id_seller.size

-- Display: Trade Executed Message
asx_asxderivatives_ntp_itch_v1_05.trade_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Executed Message
asx_asxderivatives_ntp_itch_v1_05.trade_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: Numeric
  index, tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Trade Type: Alpha
  index, trade_type = asx_asxderivatives_ntp_itch_v1_05.trade_type.dissect(buffer, index, packet, parent)

  -- Trade Id: Numeric
  index, trade_id = asx_asxderivatives_ntp_itch_v1_05.trade_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Numeric
  index, executed_quantity = asx_asxderivatives_ntp_itch_v1_05.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = asx_asxderivatives_ntp_itch_v1_05.trade_price.dissect(buffer, index, packet, parent)

  -- Combination Trade Id: Numeric
  index, combination_trade_id = asx_asxderivatives_ntp_itch_v1_05.combination_trade_id.dissect(buffer, index, packet, parent)

  -- Participant Id Buyer: Alpha
  index, participant_id_buyer = asx_asxderivatives_ntp_itch_v1_05.participant_id_buyer.dissect(buffer, index, packet, parent)

  -- Participant Id Seller: Alpha
  index, participant_id_seller = asx_asxderivatives_ntp_itch_v1_05.participant_id_seller.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Executed Message
asx_asxderivatives_ntp_itch_v1_05.trade_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.trade_executed_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.trade_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.trade_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.trade_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Implied Order Deleted Message
asx_asxderivatives_ntp_itch_v1_05.implied_order_deleted_message = {}

-- Size: Implied Order Deleted Message
asx_asxderivatives_ntp_itch_v1_05.implied_order_deleted_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.side.size + 
  asx_asxderivatives_ntp_itch_v1_05.order_id.size

-- Display: Implied Order Deleted Message
asx_asxderivatives_ntp_itch_v1_05.implied_order_deleted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Implied Order Deleted Message
asx_asxderivatives_ntp_itch_v1_05.implied_order_deleted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: Numeric
  index, tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = asx_asxderivatives_ntp_itch_v1_05.side.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = asx_asxderivatives_ntp_itch_v1_05.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Deleted Message
asx_asxderivatives_ntp_itch_v1_05.implied_order_deleted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.implied_order_deleted_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.implied_order_deleted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.implied_order_deleted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.implied_order_deleted_message.fields(buffer, offset, packet, parent)
  end
end

-- Implied Order Replaced Message
asx_asxderivatives_ntp_itch_v1_05.implied_order_replaced_message = {}

-- Size: Implied Order Replaced Message
asx_asxderivatives_ntp_itch_v1_05.implied_order_replaced_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.side.size + 
  asx_asxderivatives_ntp_itch_v1_05.order_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.order_book_priority.size + 
  asx_asxderivatives_ntp_itch_v1_05.quantity.size + 
  asx_asxderivatives_ntp_itch_v1_05.price.size

-- Display: Implied Order Replaced Message
asx_asxderivatives_ntp_itch_v1_05.implied_order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Implied Order Replaced Message
asx_asxderivatives_ntp_itch_v1_05.implied_order_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: Numeric
  index, tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = asx_asxderivatives_ntp_itch_v1_05.side.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = asx_asxderivatives_ntp_itch_v1_05.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Priority: Numeric
  index, order_book_priority = asx_asxderivatives_ntp_itch_v1_05.order_book_priority.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = asx_asxderivatives_ntp_itch_v1_05.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = asx_asxderivatives_ntp_itch_v1_05.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Replaced Message
asx_asxderivatives_ntp_itch_v1_05.implied_order_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.implied_order_replaced_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.implied_order_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.implied_order_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.implied_order_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Implied Order Added Message
asx_asxderivatives_ntp_itch_v1_05.implied_order_added_message = {}

-- Size: Implied Order Added Message
asx_asxderivatives_ntp_itch_v1_05.implied_order_added_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.side.size + 
  asx_asxderivatives_ntp_itch_v1_05.order_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.order_book_priority.size + 
  asx_asxderivatives_ntp_itch_v1_05.quantity.size + 
  asx_asxderivatives_ntp_itch_v1_05.price.size

-- Display: Implied Order Added Message
asx_asxderivatives_ntp_itch_v1_05.implied_order_added_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Implied Order Added Message
asx_asxderivatives_ntp_itch_v1_05.implied_order_added_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: Numeric
  index, tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = asx_asxderivatives_ntp_itch_v1_05.side.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = asx_asxderivatives_ntp_itch_v1_05.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Priority: Numeric
  index, order_book_priority = asx_asxderivatives_ntp_itch_v1_05.order_book_priority.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = asx_asxderivatives_ntp_itch_v1_05.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = asx_asxderivatives_ntp_itch_v1_05.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Added Message
asx_asxderivatives_ntp_itch_v1_05.implied_order_added_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.implied_order_added_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.implied_order_added_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.implied_order_added_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.implied_order_added_message.fields(buffer, offset, packet, parent)
  end
end

-- Combination Order Executed Message
asx_asxderivatives_ntp_itch_v1_05.combination_order_executed_message = {}

-- Size: Combination Order Executed Message
asx_asxderivatives_ntp_itch_v1_05.combination_order_executed_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.side.size + 
  asx_asxderivatives_ntp_itch_v1_05.order_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.quantity_remaining.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_type.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.executed_quantity.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_price.size + 
  asx_asxderivatives_ntp_itch_v1_05.opposite_tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.opposite_side.size + 
  asx_asxderivatives_ntp_itch_v1_05.opposite_order_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.combination_trade_id.size

-- Display: Combination Order Executed Message
asx_asxderivatives_ntp_itch_v1_05.combination_order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combination Order Executed Message
asx_asxderivatives_ntp_itch_v1_05.combination_order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: Numeric
  index, tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = asx_asxderivatives_ntp_itch_v1_05.side.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = asx_asxderivatives_ntp_itch_v1_05.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Remaining: Numeric
  index, quantity_remaining = asx_asxderivatives_ntp_itch_v1_05.quantity_remaining.dissect(buffer, index, packet, parent)

  -- Trade Type: Alpha
  index, trade_type = asx_asxderivatives_ntp_itch_v1_05.trade_type.dissect(buffer, index, packet, parent)

  -- Trade Id: Numeric
  index, trade_id = asx_asxderivatives_ntp_itch_v1_05.trade_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Numeric
  index, executed_quantity = asx_asxderivatives_ntp_itch_v1_05.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = asx_asxderivatives_ntp_itch_v1_05.trade_price.dissect(buffer, index, packet, parent)

  -- Opposite Tradeable Instrument Id: Numeric
  index, opposite_tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.opposite_tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Opposite Side: Alpha
  index, opposite_side = asx_asxderivatives_ntp_itch_v1_05.opposite_side.dissect(buffer, index, packet, parent)

  -- Opposite Order Id: Numeric
  index, opposite_order_id = asx_asxderivatives_ntp_itch_v1_05.opposite_order_id.dissect(buffer, index, packet, parent)

  -- Combination Trade Id: Numeric
  index, combination_trade_id = asx_asxderivatives_ntp_itch_v1_05.combination_trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Order Executed Message
asx_asxderivatives_ntp_itch_v1_05.combination_order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.combination_order_executed_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.combination_order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.combination_order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.combination_order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Order Executed Message
asx_asxderivatives_ntp_itch_v1_05.auction_order_executed_message = {}

-- Size: Auction Order Executed Message
asx_asxderivatives_ntp_itch_v1_05.auction_order_executed_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.side.size + 
  asx_asxderivatives_ntp_itch_v1_05.order_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.quantity_remaining.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_type.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.executed_quantity.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_price.size + 
  asx_asxderivatives_ntp_itch_v1_05.opposite_order_id.size

-- Display: Auction Order Executed Message
asx_asxderivatives_ntp_itch_v1_05.auction_order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Order Executed Message
asx_asxderivatives_ntp_itch_v1_05.auction_order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: Numeric
  index, tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = asx_asxderivatives_ntp_itch_v1_05.side.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = asx_asxderivatives_ntp_itch_v1_05.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Remaining: Numeric
  index, quantity_remaining = asx_asxderivatives_ntp_itch_v1_05.quantity_remaining.dissect(buffer, index, packet, parent)

  -- Trade Type: Alpha
  index, trade_type = asx_asxderivatives_ntp_itch_v1_05.trade_type.dissect(buffer, index, packet, parent)

  -- Trade Id: Numeric
  index, trade_id = asx_asxderivatives_ntp_itch_v1_05.trade_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Numeric
  index, executed_quantity = asx_asxderivatives_ntp_itch_v1_05.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = asx_asxderivatives_ntp_itch_v1_05.trade_price.dissect(buffer, index, packet, parent)

  -- Opposite Order Id: Numeric
  index, opposite_order_id = asx_asxderivatives_ntp_itch_v1_05.opposite_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Order Executed Message
asx_asxderivatives_ntp_itch_v1_05.auction_order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.auction_order_executed_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.auction_order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.auction_order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.auction_order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
asx_asxderivatives_ntp_itch_v1_05.order_executed_message = {}

-- Size: Order Executed Message
asx_asxderivatives_ntp_itch_v1_05.order_executed_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.side.size + 
  asx_asxderivatives_ntp_itch_v1_05.order_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.quantity_remaining.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_type.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.executed_quantity.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_price.size + 
  asx_asxderivatives_ntp_itch_v1_05.combination_trade_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.counter_party_id.size

-- Display: Order Executed Message
asx_asxderivatives_ntp_itch_v1_05.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
asx_asxderivatives_ntp_itch_v1_05.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: Numeric
  index, tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = asx_asxderivatives_ntp_itch_v1_05.side.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = asx_asxderivatives_ntp_itch_v1_05.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Remaining: Numeric
  index, quantity_remaining = asx_asxderivatives_ntp_itch_v1_05.quantity_remaining.dissect(buffer, index, packet, parent)

  -- Trade Type: Alpha
  index, trade_type = asx_asxderivatives_ntp_itch_v1_05.trade_type.dissect(buffer, index, packet, parent)

  -- Trade Id: Numeric
  index, trade_id = asx_asxderivatives_ntp_itch_v1_05.trade_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Numeric
  index, executed_quantity = asx_asxderivatives_ntp_itch_v1_05.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = asx_asxderivatives_ntp_itch_v1_05.trade_price.dissect(buffer, index, packet, parent)

  -- Combination Trade Id: Numeric
  index, combination_trade_id = asx_asxderivatives_ntp_itch_v1_05.combination_trade_id.dissect(buffer, index, packet, parent)

  -- Counter Party Id: Alpha
  index, counter_party_id = asx_asxderivatives_ntp_itch_v1_05.counter_party_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
asx_asxderivatives_ntp_itch_v1_05.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.order_executed_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Deleted Message
asx_asxderivatives_ntp_itch_v1_05.order_deleted_message = {}

-- Size: Order Deleted Message
asx_asxderivatives_ntp_itch_v1_05.order_deleted_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.side.size + 
  asx_asxderivatives_ntp_itch_v1_05.order_id.size

-- Display: Order Deleted Message
asx_asxderivatives_ntp_itch_v1_05.order_deleted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Deleted Message
asx_asxderivatives_ntp_itch_v1_05.order_deleted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: Numeric
  index, tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = asx_asxderivatives_ntp_itch_v1_05.side.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = asx_asxderivatives_ntp_itch_v1_05.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Deleted Message
asx_asxderivatives_ntp_itch_v1_05.order_deleted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.order_deleted_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.order_deleted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.order_deleted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.order_deleted_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Volume Cancelled Message
asx_asxderivatives_ntp_itch_v1_05.order_volume_cancelled_message = {}

-- Size: Order Volume Cancelled Message
asx_asxderivatives_ntp_itch_v1_05.order_volume_cancelled_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.side.size + 
  asx_asxderivatives_ntp_itch_v1_05.order_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.quantity.size

-- Display: Order Volume Cancelled Message
asx_asxderivatives_ntp_itch_v1_05.order_volume_cancelled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Volume Cancelled Message
asx_asxderivatives_ntp_itch_v1_05.order_volume_cancelled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: Numeric
  index, tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = asx_asxderivatives_ntp_itch_v1_05.side.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = asx_asxderivatives_ntp_itch_v1_05.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = asx_asxderivatives_ntp_itch_v1_05.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Volume Cancelled Message
asx_asxderivatives_ntp_itch_v1_05.order_volume_cancelled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.order_volume_cancelled_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.order_volume_cancelled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.order_volume_cancelled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.order_volume_cancelled_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
asx_asxderivatives_ntp_itch_v1_05.add_order_message = {}

-- Size: Add Order Message
asx_asxderivatives_ntp_itch_v1_05.add_order_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.side.size + 
  asx_asxderivatives_ntp_itch_v1_05.order_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.order_book_priority.size + 
  asx_asxderivatives_ntp_itch_v1_05.quantity.size + 
  asx_asxderivatives_ntp_itch_v1_05.price.size

-- Display: Add Order Message
asx_asxderivatives_ntp_itch_v1_05.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
asx_asxderivatives_ntp_itch_v1_05.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: Numeric
  index, tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = asx_asxderivatives_ntp_itch_v1_05.side.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = asx_asxderivatives_ntp_itch_v1_05.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Priority: Numeric
  index, order_book_priority = asx_asxderivatives_ntp_itch_v1_05.order_book_priority.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = asx_asxderivatives_ntp_itch_v1_05.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = asx_asxderivatives_ntp_itch_v1_05.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
asx_asxderivatives_ntp_itch_v1_05.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.add_order_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book State Message
asx_asxderivatives_ntp_itch_v1_05.order_book_state_message = {}

-- Size: Order Book State Message
asx_asxderivatives_ntp_itch_v1_05.order_book_state_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.session_state.size

-- Display: Order Book State Message
asx_asxderivatives_ntp_itch_v1_05.order_book_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book State Message
asx_asxderivatives_ntp_itch_v1_05.order_book_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: Numeric
  index, tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Session State: Alpha
  index, session_state = asx_asxderivatives_ntp_itch_v1_05.session_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book State Message
asx_asxderivatives_ntp_itch_v1_05.order_book_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.order_book_state_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.order_book_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.order_book_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.order_book_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Bundle Leg
asx_asxderivatives_ntp_itch_v1_05.bundle_leg = {}

-- Size: Bundle Leg
asx_asxderivatives_ntp_itch_v1_05.bundle_leg.size =
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id_leg.size + 
  asx_asxderivatives_ntp_itch_v1_05.side_leg.size + 
  asx_asxderivatives_ntp_itch_v1_05.ratio_leg.size + 
  asx_asxderivatives_ntp_itch_v1_05.price_leg.size

-- Display: Bundle Leg
asx_asxderivatives_ntp_itch_v1_05.bundle_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bundle Leg
asx_asxderivatives_ntp_itch_v1_05.bundle_leg.fields = function(buffer, offset, packet, parent, bundle_leg_index)
  local index = offset

  -- Implicit Bundle Leg Index
  if bundle_leg_index ~= nil and show.indexes then
    local iteration = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.bundle_leg_index, bundle_leg_index)
    iteration:set_generated()
  end

  -- Tradeable Instrument Id Leg: Numeric
  index, tradeable_instrument_id_leg = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id_leg.dissect(buffer, index, packet, parent)

  -- Side Leg: Alpha
  index, side_leg = asx_asxderivatives_ntp_itch_v1_05.side_leg.dissect(buffer, index, packet, parent)

  -- Ratio Leg: Numeric
  index, ratio_leg = asx_asxderivatives_ntp_itch_v1_05.ratio_leg.dissect(buffer, index, packet, parent)

  -- Price Leg: Price
  index, price_leg = asx_asxderivatives_ntp_itch_v1_05.price_leg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bundle Leg
asx_asxderivatives_ntp_itch_v1_05.bundle_leg.dissect = function(buffer, offset, packet, parent, bundle_leg_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.bundle_leg, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.bundle_leg.fields(buffer, offset, packet, parent, bundle_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.bundle_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.bundle_leg.fields(buffer, offset, packet, parent, bundle_leg_index)
  end
end

-- Bundles Symbol Directory
asx_asxderivatives_ntp_itch_v1_05.bundles_symbol_directory = {}

-- Size: Bundles Symbol Directory
asx_asxderivatives_ntp_itch_v1_05.bundles_symbol_directory.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.symbol_name.size + 
  asx_asxderivatives_ntp_itch_v1_05.long_name.size + 
  asx_asxderivatives_ntp_itch_v1_05.cfi_code.size + 
  asx_asxderivatives_ntp_itch_v1_05.price_method.size + 
  asx_asxderivatives_ntp_itch_v1_05.price_display_decimals.size + 
  asx_asxderivatives_ntp_itch_v1_05.price_fractional_denominator.size + 
  asx_asxderivatives_ntp_itch_v1_05.price_minimum_tick.size + 
  asx_asxderivatives_ntp_itch_v1_05.legs.size + 
  20 * asx_asxderivatives_ntp_itch_v1_05.bundle_leg.size

-- Display: Bundles Symbol Directory
asx_asxderivatives_ntp_itch_v1_05.bundles_symbol_directory.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bundles Symbol Directory
asx_asxderivatives_ntp_itch_v1_05.bundles_symbol_directory.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: Numeric
  index, tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Symbol Name: Alpha
  index, symbol_name = asx_asxderivatives_ntp_itch_v1_05.symbol_name.dissect(buffer, index, packet, parent)

  -- Long Name: Alpha
  index, long_name = asx_asxderivatives_ntp_itch_v1_05.long_name.dissect(buffer, index, packet, parent)

  -- Cfi Code: Alpha
  index, cfi_code = asx_asxderivatives_ntp_itch_v1_05.cfi_code.dissect(buffer, index, packet, parent)

  -- Price Method: Numeric
  index, price_method = asx_asxderivatives_ntp_itch_v1_05.price_method.dissect(buffer, index, packet, parent)

  -- Price Display Decimals: Numeric
  index, price_display_decimals = asx_asxderivatives_ntp_itch_v1_05.price_display_decimals.dissect(buffer, index, packet, parent)

  -- Price Fractional Denominator: Numeric
  index, price_fractional_denominator = asx_asxderivatives_ntp_itch_v1_05.price_fractional_denominator.dissect(buffer, index, packet, parent)

  -- Price Minimum Tick: Numeric
  index, price_minimum_tick = asx_asxderivatives_ntp_itch_v1_05.price_minimum_tick.dissect(buffer, index, packet, parent)

  -- Legs: Numeric
  index, legs = asx_asxderivatives_ntp_itch_v1_05.legs.dissect(buffer, index, packet, parent)

  -- Array Of: Bundle Leg
  for bundle_leg_index = 1, 20 do
    index, bundle_leg = asx_asxderivatives_ntp_itch_v1_05.bundle_leg.dissect(buffer, index, packet, parent, bundle_leg_index)
  end

  return index
end

-- Dissect: Bundles Symbol Directory
asx_asxderivatives_ntp_itch_v1_05.bundles_symbol_directory.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.bundles_symbol_directory, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.bundles_symbol_directory.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.bundles_symbol_directory.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.bundles_symbol_directory.fields(buffer, offset, packet, parent)
  end
end

-- Combination Leg
asx_asxderivatives_ntp_itch_v1_05.combination_leg = {}

-- Size: Combination Leg
asx_asxderivatives_ntp_itch_v1_05.combination_leg.size =
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id_leg.size + 
  asx_asxderivatives_ntp_itch_v1_05.side_leg.size + 
  asx_asxderivatives_ntp_itch_v1_05.ratio_leg.size + 
  asx_asxderivatives_ntp_itch_v1_05.price_leg.size

-- Display: Combination Leg
asx_asxderivatives_ntp_itch_v1_05.combination_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combination Leg
asx_asxderivatives_ntp_itch_v1_05.combination_leg.fields = function(buffer, offset, packet, parent, combination_leg_index)
  local index = offset

  -- Implicit Combination Leg Index
  if combination_leg_index ~= nil and show.indexes then
    local iteration = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.combination_leg_index, combination_leg_index)
    iteration:set_generated()
  end

  -- Tradeable Instrument Id Leg: Numeric
  index, tradeable_instrument_id_leg = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id_leg.dissect(buffer, index, packet, parent)

  -- Side Leg: Alpha
  index, side_leg = asx_asxderivatives_ntp_itch_v1_05.side_leg.dissect(buffer, index, packet, parent)

  -- Ratio Leg: Numeric
  index, ratio_leg = asx_asxderivatives_ntp_itch_v1_05.ratio_leg.dissect(buffer, index, packet, parent)

  -- Price Leg: Price
  index, price_leg = asx_asxderivatives_ntp_itch_v1_05.price_leg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Leg
asx_asxderivatives_ntp_itch_v1_05.combination_leg.dissect = function(buffer, offset, packet, parent, combination_leg_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.combination_leg, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.combination_leg.fields(buffer, offset, packet, parent, combination_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.combination_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.combination_leg.fields(buffer, offset, packet, parent, combination_leg_index)
  end
end

-- Combination Symbol Directory Message
asx_asxderivatives_ntp_itch_v1_05.combination_symbol_directory_message = {}

-- Size: Combination Symbol Directory Message
asx_asxderivatives_ntp_itch_v1_05.combination_symbol_directory_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.symbol_name.size + 
  asx_asxderivatives_ntp_itch_v1_05.long_name.size + 
  asx_asxderivatives_ntp_itch_v1_05.cfi_code.size + 
  asx_asxderivatives_ntp_itch_v1_05.price_method.size + 
  asx_asxderivatives_ntp_itch_v1_05.price_display_decimals.size + 
  asx_asxderivatives_ntp_itch_v1_05.price_fractional_denominator.size + 
  asx_asxderivatives_ntp_itch_v1_05.price_minimum_tick.size + 
  asx_asxderivatives_ntp_itch_v1_05.legs.size + 
  6 * asx_asxderivatives_ntp_itch_v1_05.combination_leg.size

-- Display: Combination Symbol Directory Message
asx_asxderivatives_ntp_itch_v1_05.combination_symbol_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combination Symbol Directory Message
asx_asxderivatives_ntp_itch_v1_05.combination_symbol_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: Numeric
  index, tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Symbol Name: Alpha
  index, symbol_name = asx_asxderivatives_ntp_itch_v1_05.symbol_name.dissect(buffer, index, packet, parent)

  -- Long Name: Alpha
  index, long_name = asx_asxderivatives_ntp_itch_v1_05.long_name.dissect(buffer, index, packet, parent)

  -- Cfi Code: Alpha
  index, cfi_code = asx_asxderivatives_ntp_itch_v1_05.cfi_code.dissect(buffer, index, packet, parent)

  -- Price Method: Numeric
  index, price_method = asx_asxderivatives_ntp_itch_v1_05.price_method.dissect(buffer, index, packet, parent)

  -- Price Display Decimals: Numeric
  index, price_display_decimals = asx_asxderivatives_ntp_itch_v1_05.price_display_decimals.dissect(buffer, index, packet, parent)

  -- Price Fractional Denominator: Numeric
  index, price_fractional_denominator = asx_asxderivatives_ntp_itch_v1_05.price_fractional_denominator.dissect(buffer, index, packet, parent)

  -- Price Minimum Tick: Numeric
  index, price_minimum_tick = asx_asxderivatives_ntp_itch_v1_05.price_minimum_tick.dissect(buffer, index, packet, parent)

  -- Legs: Numeric
  index, legs = asx_asxderivatives_ntp_itch_v1_05.legs.dissect(buffer, index, packet, parent)

  -- Array Of: Combination Leg
  for combination_leg_index = 1, 6 do
    index, combination_leg = asx_asxderivatives_ntp_itch_v1_05.combination_leg.dissect(buffer, index, packet, parent, combination_leg_index)
  end

  return index
end

-- Dissect: Combination Symbol Directory Message
asx_asxderivatives_ntp_itch_v1_05.combination_symbol_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.combination_symbol_directory_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.combination_symbol_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.combination_symbol_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.combination_symbol_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Symbol Directory Message
asx_asxderivatives_ntp_itch_v1_05.options_symbol_directory_message = {}

-- Size: Options Symbol Directory Message
asx_asxderivatives_ntp_itch_v1_05.options_symbol_directory_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.symbol_name.size + 
  asx_asxderivatives_ntp_itch_v1_05.long_name.size + 
  asx_asxderivatives_ntp_itch_v1_05.isin.size + 
  asx_asxderivatives_ntp_itch_v1_05.exchange.size + 
  asx_asxderivatives_ntp_itch_v1_05.instrument.size + 
  asx_asxderivatives_ntp_itch_v1_05.cfi_code.size + 
  asx_asxderivatives_ntp_itch_v1_05.expiry_year.size + 
  asx_asxderivatives_ntp_itch_v1_05.expiry_month.size + 
  asx_asxderivatives_ntp_itch_v1_05.option_type.size + 
  asx_asxderivatives_ntp_itch_v1_05.strike.size + 
  asx_asxderivatives_ntp_itch_v1_05.underlying_tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.price_display_decimals.size + 
  asx_asxderivatives_ntp_itch_v1_05.price_fractional_denominator.size + 
  asx_asxderivatives_ntp_itch_v1_05.price_minimum_tick.size + 
  asx_asxderivatives_ntp_itch_v1_05.strike_price_decimal_position.size + 
  asx_asxderivatives_ntp_itch_v1_05.strike_price_fractional_denominator.size + 
  asx_asxderivatives_ntp_itch_v1_05.strike_price_minimum_tick.size + 
  asx_asxderivatives_ntp_itch_v1_05.last_trading_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.prior_day_settlement.size + 
  asx_asxderivatives_ntp_itch_v1_05.volatility.size + 
  asx_asxderivatives_ntp_itch_v1_05.currency.size + 
  asx_asxderivatives_ntp_itch_v1_05.lot_size_or_face_value.size + 
  asx_asxderivatives_ntp_itch_v1_05.maturity_value.size + 
  asx_asxderivatives_ntp_itch_v1_05.coupon_rate.size + 
  asx_asxderivatives_ntp_itch_v1_05.payments_per_year.size + 
  asx_asxderivatives_ntp_itch_v1_05.block_lot_size.size + 
  asx_asxderivatives_ntp_itch_v1_05.expiry_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.basis_of_quotation.size

-- Display: Options Symbol Directory Message
asx_asxderivatives_ntp_itch_v1_05.options_symbol_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Symbol Directory Message
asx_asxderivatives_ntp_itch_v1_05.options_symbol_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: Numeric
  index, tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Symbol Name: Alpha
  index, symbol_name = asx_asxderivatives_ntp_itch_v1_05.symbol_name.dissect(buffer, index, packet, parent)

  -- Long Name: Alpha
  index, long_name = asx_asxderivatives_ntp_itch_v1_05.long_name.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = asx_asxderivatives_ntp_itch_v1_05.isin.dissect(buffer, index, packet, parent)

  -- Exchange: Alpha
  index, exchange = asx_asxderivatives_ntp_itch_v1_05.exchange.dissect(buffer, index, packet, parent)

  -- Instrument: Alpha
  index, instrument = asx_asxderivatives_ntp_itch_v1_05.instrument.dissect(buffer, index, packet, parent)

  -- Cfi Code: Alpha
  index, cfi_code = asx_asxderivatives_ntp_itch_v1_05.cfi_code.dissect(buffer, index, packet, parent)

  -- Expiry Year: Numeric
  index, expiry_year = asx_asxderivatives_ntp_itch_v1_05.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Month: Numeric
  index, expiry_month = asx_asxderivatives_ntp_itch_v1_05.expiry_month.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = asx_asxderivatives_ntp_itch_v1_05.option_type.dissect(buffer, index, packet, parent)

  -- Strike: Price
  index, strike = asx_asxderivatives_ntp_itch_v1_05.strike.dissect(buffer, index, packet, parent)

  -- Underlying Tradeable Instrument Id: Numeric
  index, underlying_tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.underlying_tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Price Display Decimals: Numeric
  index, price_display_decimals = asx_asxderivatives_ntp_itch_v1_05.price_display_decimals.dissect(buffer, index, packet, parent)

  -- Price Fractional Denominator: Numeric
  index, price_fractional_denominator = asx_asxderivatives_ntp_itch_v1_05.price_fractional_denominator.dissect(buffer, index, packet, parent)

  -- Price Minimum Tick: Numeric
  index, price_minimum_tick = asx_asxderivatives_ntp_itch_v1_05.price_minimum_tick.dissect(buffer, index, packet, parent)

  -- Strike Price Decimal Position: Numeric
  index, strike_price_decimal_position = asx_asxderivatives_ntp_itch_v1_05.strike_price_decimal_position.dissect(buffer, index, packet, parent)

  -- Strike Price Fractional Denominator: Numeric
  index, strike_price_fractional_denominator = asx_asxderivatives_ntp_itch_v1_05.strike_price_fractional_denominator.dissect(buffer, index, packet, parent)

  -- Strike Price Minimum Tick: Numeric
  index, strike_price_minimum_tick = asx_asxderivatives_ntp_itch_v1_05.strike_price_minimum_tick.dissect(buffer, index, packet, parent)

  -- Last Trading Date: Numeric
  index, last_trading_date = asx_asxderivatives_ntp_itch_v1_05.last_trading_date.dissect(buffer, index, packet, parent)

  -- Prior Day Settlement: Price
  index, prior_day_settlement = asx_asxderivatives_ntp_itch_v1_05.prior_day_settlement.dissect(buffer, index, packet, parent)

  -- Volatility: Numeric
  index, volatility = asx_asxderivatives_ntp_itch_v1_05.volatility.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = asx_asxderivatives_ntp_itch_v1_05.currency.dissect(buffer, index, packet, parent)

  -- Lot Size Or Face Value: Numeric
  index, lot_size_or_face_value = asx_asxderivatives_ntp_itch_v1_05.lot_size_or_face_value.dissect(buffer, index, packet, parent)

  -- Maturity Value: Numeric
  index, maturity_value = asx_asxderivatives_ntp_itch_v1_05.maturity_value.dissect(buffer, index, packet, parent)

  -- Coupon Rate: Numeric
  index, coupon_rate = asx_asxderivatives_ntp_itch_v1_05.coupon_rate.dissect(buffer, index, packet, parent)

  -- Payments Per Year: Numeric
  index, payments_per_year = asx_asxderivatives_ntp_itch_v1_05.payments_per_year.dissect(buffer, index, packet, parent)

  -- Block Lot Size: Numeric
  index, block_lot_size = asx_asxderivatives_ntp_itch_v1_05.block_lot_size.dissect(buffer, index, packet, parent)

  -- Expiry Date: Numeric
  index, expiry_date = asx_asxderivatives_ntp_itch_v1_05.expiry_date.dissect(buffer, index, packet, parent)

  -- Basis Of Quotation: Alpha
  index, basis_of_quotation = asx_asxderivatives_ntp_itch_v1_05.basis_of_quotation.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Symbol Directory Message
asx_asxderivatives_ntp_itch_v1_05.options_symbol_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.options_symbol_directory_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.options_symbol_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.options_symbol_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.options_symbol_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Symbol Directory Message
asx_asxderivatives_ntp_itch_v1_05.future_symbol_directory_message = {}

-- Size: Future Symbol Directory Message
asx_asxderivatives_ntp_itch_v1_05.future_symbol_directory_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.size + 
  asx_asxderivatives_ntp_itch_v1_05.symbol_name.size + 
  asx_asxderivatives_ntp_itch_v1_05.long_name.size + 
  asx_asxderivatives_ntp_itch_v1_05.isin.size + 
  asx_asxderivatives_ntp_itch_v1_05.exchange.size + 
  asx_asxderivatives_ntp_itch_v1_05.instrument.size + 
  asx_asxderivatives_ntp_itch_v1_05.cfi_code.size + 
  asx_asxderivatives_ntp_itch_v1_05.expiry_year.size + 
  asx_asxderivatives_ntp_itch_v1_05.expiry_month.size + 
  asx_asxderivatives_ntp_itch_v1_05.price_display_decimals.size + 
  asx_asxderivatives_ntp_itch_v1_05.price_fractional_denominator.size + 
  asx_asxderivatives_ntp_itch_v1_05.price_minimum_tick.size + 
  asx_asxderivatives_ntp_itch_v1_05.last_trading_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.prior_day_settlement.size + 
  asx_asxderivatives_ntp_itch_v1_05.currency.size + 
  asx_asxderivatives_ntp_itch_v1_05.lot_size_or_face_value.size + 
  asx_asxderivatives_ntp_itch_v1_05.maturity_value.size + 
  asx_asxderivatives_ntp_itch_v1_05.coupon_rate.size + 
  asx_asxderivatives_ntp_itch_v1_05.payments_per_year.size + 
  asx_asxderivatives_ntp_itch_v1_05.block_lot_size.size + 
  asx_asxderivatives_ntp_itch_v1_05.expiry_date.size

-- Display: Future Symbol Directory Message
asx_asxderivatives_ntp_itch_v1_05.future_symbol_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Symbol Directory Message
asx_asxderivatives_ntp_itch_v1_05.future_symbol_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: Numeric
  index, tradeable_instrument_id = asx_asxderivatives_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Symbol Name: Alpha
  index, symbol_name = asx_asxderivatives_ntp_itch_v1_05.symbol_name.dissect(buffer, index, packet, parent)

  -- Long Name: Alpha
  index, long_name = asx_asxderivatives_ntp_itch_v1_05.long_name.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = asx_asxderivatives_ntp_itch_v1_05.isin.dissect(buffer, index, packet, parent)

  -- Exchange: Alpha
  index, exchange = asx_asxderivatives_ntp_itch_v1_05.exchange.dissect(buffer, index, packet, parent)

  -- Instrument: Alpha
  index, instrument = asx_asxderivatives_ntp_itch_v1_05.instrument.dissect(buffer, index, packet, parent)

  -- Cfi Code: Alpha
  index, cfi_code = asx_asxderivatives_ntp_itch_v1_05.cfi_code.dissect(buffer, index, packet, parent)

  -- Expiry Year: Numeric
  index, expiry_year = asx_asxderivatives_ntp_itch_v1_05.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Month: Numeric
  index, expiry_month = asx_asxderivatives_ntp_itch_v1_05.expiry_month.dissect(buffer, index, packet, parent)

  -- Price Display Decimals: Numeric
  index, price_display_decimals = asx_asxderivatives_ntp_itch_v1_05.price_display_decimals.dissect(buffer, index, packet, parent)

  -- Price Fractional Denominator: Numeric
  index, price_fractional_denominator = asx_asxderivatives_ntp_itch_v1_05.price_fractional_denominator.dissect(buffer, index, packet, parent)

  -- Price Minimum Tick: Numeric
  index, price_minimum_tick = asx_asxderivatives_ntp_itch_v1_05.price_minimum_tick.dissect(buffer, index, packet, parent)

  -- Last Trading Date: Numeric
  index, last_trading_date = asx_asxderivatives_ntp_itch_v1_05.last_trading_date.dissect(buffer, index, packet, parent)

  -- Prior Day Settlement: Price
  index, prior_day_settlement = asx_asxderivatives_ntp_itch_v1_05.prior_day_settlement.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = asx_asxderivatives_ntp_itch_v1_05.currency.dissect(buffer, index, packet, parent)

  -- Lot Size Or Face Value: Numeric
  index, lot_size_or_face_value = asx_asxderivatives_ntp_itch_v1_05.lot_size_or_face_value.dissect(buffer, index, packet, parent)

  -- Maturity Value: Numeric
  index, maturity_value = asx_asxderivatives_ntp_itch_v1_05.maturity_value.dissect(buffer, index, packet, parent)

  -- Coupon Rate: Numeric
  index, coupon_rate = asx_asxderivatives_ntp_itch_v1_05.coupon_rate.dissect(buffer, index, packet, parent)

  -- Payments Per Year: Numeric
  index, payments_per_year = asx_asxderivatives_ntp_itch_v1_05.payments_per_year.dissect(buffer, index, packet, parent)

  -- Block Lot Size: Numeric
  index, block_lot_size = asx_asxderivatives_ntp_itch_v1_05.block_lot_size.dissect(buffer, index, packet, parent)

  -- Expiry Date: Numeric
  index, expiry_date = asx_asxderivatives_ntp_itch_v1_05.expiry_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Symbol Directory Message
asx_asxderivatives_ntp_itch_v1_05.future_symbol_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.future_symbol_directory_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.future_symbol_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.future_symbol_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.future_symbol_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Business Trade Date Message
asx_asxderivatives_ntp_itch_v1_05.end_of_business_trade_date_message = {}

-- Size: End Of Business Trade Date Message
asx_asxderivatives_ntp_itch_v1_05.end_of_business_trade_date_message.size =
  asx_asxderivatives_ntp_itch_v1_05.nanoseconds.size + 
  asx_asxderivatives_ntp_itch_v1_05.trade_date.size + 
  asx_asxderivatives_ntp_itch_v1_05.event_code.size

-- Display: End Of Business Trade Date Message
asx_asxderivatives_ntp_itch_v1_05.end_of_business_trade_date_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Business Trade Date Message
asx_asxderivatives_ntp_itch_v1_05.end_of_business_trade_date_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = asx_asxderivatives_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = asx_asxderivatives_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = asx_asxderivatives_ntp_itch_v1_05.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Business Trade Date Message
asx_asxderivatives_ntp_itch_v1_05.end_of_business_trade_date_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.end_of_business_trade_date_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.end_of_business_trade_date_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.end_of_business_trade_date_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.end_of_business_trade_date_message.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Message
asx_asxderivatives_ntp_itch_v1_05.seconds_message = {}

-- Size: Seconds Message
asx_asxderivatives_ntp_itch_v1_05.seconds_message.size =
  asx_asxderivatives_ntp_itch_v1_05.second.size

-- Display: Seconds Message
asx_asxderivatives_ntp_itch_v1_05.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
asx_asxderivatives_ntp_itch_v1_05.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Numeric
  index, second = asx_asxderivatives_ntp_itch_v1_05.second.dissect(buffer, index, packet, parent)

  -- Store Second Value
  asx_asxderivatives_ntp_itch_v1_05.second.current = second

  if not packet.visited then
    asx_asxderivatives_ntp_itch_v1_05.conversation.current.second.last = second
  end

  return index
end

-- Dissect: Seconds Message
asx_asxderivatives_ntp_itch_v1_05.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.seconds_message, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
asx_asxderivatives_ntp_itch_v1_05.payload = {}

-- Dispatch: Payload
asx_asxderivatives_ntp_itch_v1_05.payload.dispatch = {
  ["T"] = asx_asxderivatives_ntp_itch_v1_05.seconds_message.dissect,
  ["S"] = asx_asxderivatives_ntp_itch_v1_05.end_of_business_trade_date_message.dissect,
  ["f"] = asx_asxderivatives_ntp_itch_v1_05.future_symbol_directory_message.dissect,
  ["h"] = asx_asxderivatives_ntp_itch_v1_05.options_symbol_directory_message.dissect,
  ["M"] = asx_asxderivatives_ntp_itch_v1_05.combination_symbol_directory_message.dissect,
  ["m"] = asx_asxderivatives_ntp_itch_v1_05.bundles_symbol_directory.dissect,
  ["O"] = asx_asxderivatives_ntp_itch_v1_05.order_book_state_message.dissect,
  ["A"] = asx_asxderivatives_ntp_itch_v1_05.add_order_message.dissect,
  ["X"] = asx_asxderivatives_ntp_itch_v1_05.order_volume_cancelled_message.dissect,
  ["D"] = asx_asxderivatives_ntp_itch_v1_05.order_deleted_message.dissect,
  ["E"] = asx_asxderivatives_ntp_itch_v1_05.order_executed_message.dissect,
  ["C"] = asx_asxderivatives_ntp_itch_v1_05.auction_order_executed_message.dissect,
  ["e"] = asx_asxderivatives_ntp_itch_v1_05.combination_order_executed_message.dissect,
  ["j"] = asx_asxderivatives_ntp_itch_v1_05.implied_order_added_message.dissect,
  ["l"] = asx_asxderivatives_ntp_itch_v1_05.implied_order_replaced_message.dissect,
  ["k"] = asx_asxderivatives_ntp_itch_v1_05.implied_order_deleted_message.dissect,
  ["P"] = asx_asxderivatives_ntp_itch_v1_05.trade_executed_message.dissect,
  ["p"] = asx_asxderivatives_ntp_itch_v1_05.combination_trade_executed_message.dissect,
  ["B"] = asx_asxderivatives_ntp_itch_v1_05.trade_cancellation_message.dissect,
  ["Z"] = asx_asxderivatives_ntp_itch_v1_05.equilibrium_price_message.dissect,
  ["t"] = asx_asxderivatives_ntp_itch_v1_05.open_high_low_last_trade_adjustment_message.dissect,
  ["Y"] = asx_asxderivatives_ntp_itch_v1_05.market_settlement_message.dissect,
  ["x"] = asx_asxderivatives_ntp_itch_v1_05.text_message.dissect,
  ["q"] = asx_asxderivatives_ntp_itch_v1_05.request_for_quote_message.dissect,
  ["W"] = asx_asxderivatives_ntp_itch_v1_05.anomalous_order_threshold_publish_message.dissect,
  ["V"] = asx_asxderivatives_ntp_itch_v1_05.volume_and_open_interest_message.dissect,
}

-- Dissect: Payload
asx_asxderivatives_ntp_itch_v1_05.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = asx_asxderivatives_ntp_itch_v1_05.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
asx_asxderivatives_ntp_itch_v1_05.message_header = {}

-- Size: Message Header
asx_asxderivatives_ntp_itch_v1_05.message_header.size =
  asx_asxderivatives_ntp_itch_v1_05.message_length.size + 
  asx_asxderivatives_ntp_itch_v1_05.message_type.size

-- Display: Message Header
asx_asxderivatives_ntp_itch_v1_05.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
asx_asxderivatives_ntp_itch_v1_05.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = asx_asxderivatives_ntp_itch_v1_05.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 26 values
  index, message_type = asx_asxderivatives_ntp_itch_v1_05.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
asx_asxderivatives_ntp_itch_v1_05.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.message_header, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
asx_asxderivatives_ntp_itch_v1_05.message = {}

-- Read runtime size of: Message
asx_asxderivatives_ntp_itch_v1_05.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
asx_asxderivatives_ntp_itch_v1_05.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
asx_asxderivatives_ntp_itch_v1_05.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and asx_asxderivatives_ntp_itch_v1_05.packet_sequence ~= nil then
    local sequence = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.message_sequence_number, UInt64.new(asx_asxderivatives_ntp_itch_v1_05.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = asx_asxderivatives_ntp_itch_v1_05.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 26 branches
  index = asx_asxderivatives_ntp_itch_v1_05.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
asx_asxderivatives_ntp_itch_v1_05.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = asx_asxderivatives_ntp_itch_v1_05.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.message, buffer(offset, 0))
    local current = asx_asxderivatives_ntp_itch_v1_05.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = asx_asxderivatives_ntp_itch_v1_05.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    asx_asxderivatives_ntp_itch_v1_05.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
asx_asxderivatives_ntp_itch_v1_05.end_of_session = {}

-- Display: End Of Session
asx_asxderivatives_ntp_itch_v1_05.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
asx_asxderivatives_ntp_itch_v1_05.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = asx_asxderivatives_ntp_itch_v1_05.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
asx_asxderivatives_ntp_itch_v1_05.heartbeat = {}

-- Display: Heartbeat
asx_asxderivatives_ntp_itch_v1_05.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
asx_asxderivatives_ntp_itch_v1_05.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = asx_asxderivatives_ntp_itch_v1_05.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
asx_asxderivatives_ntp_itch_v1_05.messages = {}

-- Dispatch: Messages
asx_asxderivatives_ntp_itch_v1_05.messages.dispatch = {
  [0] = asx_asxderivatives_ntp_itch_v1_05.heartbeat.dissect,
  [65535] = asx_asxderivatives_ntp_itch_v1_05.end_of_session.dissect,
}

-- Dissect: Messages
asx_asxderivatives_ntp_itch_v1_05.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = asx_asxderivatives_ntp_itch_v1_05.messages.dispatch[message_count]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = asx_asxderivatives_ntp_itch_v1_05.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
asx_asxderivatives_ntp_itch_v1_05.packet_header = {}

-- Size: Packet Header
asx_asxderivatives_ntp_itch_v1_05.packet_header.size =
  asx_asxderivatives_ntp_itch_v1_05.session.size + 
  asx_asxderivatives_ntp_itch_v1_05.sequence_number.size + 
  asx_asxderivatives_ntp_itch_v1_05.message_count.size

-- Display: Packet Header
asx_asxderivatives_ntp_itch_v1_05.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
asx_asxderivatives_ntp_itch_v1_05.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = asx_asxderivatives_ntp_itch_v1_05.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = asx_asxderivatives_ntp_itch_v1_05.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = asx_asxderivatives_ntp_itch_v1_05.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  asx_asxderivatives_ntp_itch_v1_05.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
asx_asxderivatives_ntp_itch_v1_05.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05.fields.packet_header, buffer(offset, 0))
    local index = asx_asxderivatives_ntp_itch_v1_05.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxderivatives_ntp_itch_v1_05.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxderivatives_ntp_itch_v1_05.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
asx_asxderivatives_ntp_itch_v1_05.packet = {}

-- Verify required size of Udp packet
asx_asxderivatives_ntp_itch_v1_05.packet.requiredsize = function(buffer)
  return buffer:len() >= asx_asxderivatives_ntp_itch_v1_05.packet_header.size
end

-- Dissect Packet
asx_asxderivatives_ntp_itch_v1_05.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = asx_asxderivatives_ntp_itch_v1_05.conversation.data(packet)
  if not packet.visited then
    data.second.frames[packet.number] = data.second.last
  end
  asx_asxderivatives_ntp_itch_v1_05.second.current = data.second.frames[packet.number]
  asx_asxderivatives_ntp_itch_v1_05.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = asx_asxderivatives_ntp_itch_v1_05.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = asx_asxderivatives_ntp_itch_v1_05.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_asx_asxderivatives_ntp_itch_v1_05.init()
  asx_asxderivatives_ntp_itch_v1_05.second.current = nil
  asx_asxderivatives_ntp_itch_v1_05.conversation.current = nil
  asx_asxderivatives_ntp_itch_v1_05.conversation.flows = {}
end

-- Dissector for Asx AsxDerivatives Ntp Itch 1.05
function omi_asx_asxderivatives_ntp_itch_v1_05.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_asx_asxderivatives_ntp_itch_v1_05.name

  -- Dissect protocol
  local protocol = parent:add(omi_asx_asxderivatives_ntp_itch_v1_05, buffer(), omi_asx_asxderivatives_ntp_itch_v1_05.description, "("..buffer:len().." Bytes)")
  return asx_asxderivatives_ntp_itch_v1_05.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Asx AsxDerivatives Ntp Itch 1.05 (Udp)
local function omi_asx_asxderivatives_ntp_itch_v1_05_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not asx_asxderivatives_ntp_itch_v1_05.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_asx_asxderivatives_ntp_itch_v1_05
  omi_asx_asxderivatives_ntp_itch_v1_05.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Asx AsxDerivatives Ntp Itch 1.05
omi_asx_asxderivatives_ntp_itch_v1_05:register_heuristic("udp", omi_asx_asxderivatives_ntp_itch_v1_05_udp_heuristic)

-- Register Asx AsxDerivatives Ntp Itch 1.05 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_asx_asxderivatives_ntp_itch_v1_05)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Australian Securities Exchange
--   Version: 1.05
--   Date: Friday, December 1, 2017
--   Specification: asx-market-data-protocol-specification.pdf
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
