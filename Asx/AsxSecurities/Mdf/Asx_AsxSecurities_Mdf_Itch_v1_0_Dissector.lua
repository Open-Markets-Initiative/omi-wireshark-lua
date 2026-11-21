-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Asx AsxSecurities Mdf Itch 1.0 Protocol
local omi_asx_asxsecurities_mdf_itch_v1_0 = Proto("Omi.Asx.AsxSecurities.Mdf.Itch.v1.0", "Asx AsxSecurities Mdf Itch 1.0")

-- Protocol table
local asx_asxsecurities_mdf_itch_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Asx AsxSecurities Mdf Itch 1.0 Fields
omi_asx_asxsecurities_mdf_itch_v1_0.fields.accrued_interest_rounding = ProtoField.new("Accrued Interest Rounding", "asx.asxsecurities.mdf.itch.v1.0.accruedinterestrounding", ftypes.UINT32, nil, nil, nil, "Accrued interest rounding decimals")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.accrued_interest_updown = ProtoField.new("Accrued Interest Updown", "asx.asxsecurities.mdf.itch.v1.0.accruedinterestupdown", ftypes.UINT8, nil, nil, nil, "Accrued interest up/down.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.action = ProtoField.new("Action", "asx.asxsecurities.mdf.itch.v1.0.action", ftypes.UINT8, nil, nil, nil, "Currently set to 0. This field will be used in future releases")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.aggressor = ProtoField.new("Aggressor", "asx.asxsecurities.mdf.itch.v1.0.aggressor", ftypes.STRING, nil, nil, nil, "Aggressor side")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.alias_name = ProtoField.new("Alias Name", "asx.asxsecurities.mdf.itch.v1.0.aliasname", ftypes.STRING, nil, nil, nil, "Alias name of orderbook. The Square Bracket Value from the LongName")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.array_of_level_items = ProtoField.new("Array Of Level Items", "asx.asxsecurities.mdf.itch.v1.0.arrayoflevelitems", ftypes.STRING)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.array_of_message_items = ProtoField.new("Array Of Message Items", "asx.asxsecurities.mdf.itch.v1.0.arrayofmessageitems", ftypes.STRING)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.as_of_date = ProtoField.new("As Of Date", "asx.asxsecurities.mdf.itch.v1.0.asofdate", ftypes.UINT32, nil, nil, nil, "As of Date if populated, else zero")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.asset_name = ProtoField.new("Asset Name", "asx.asxsecurities.mdf.itch.v1.0.assetname", ftypes.STRING, nil, nil, nil, "Is currently always set to N/A")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.available_ask_quantity_at_equilibrium_price = ProtoField.new("Available Ask Quantity At Equilibrium Price", "asx.asxsecurities.mdf.itch.v1.0.availableaskquantityatequilibriumprice", ftypes.UINT64, nil, nil, nil, "Quantity at equilibrium price on the ask side")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.available_bid_quantity_at_equilibrium_price = ProtoField.new("Available Bid Quantity At Equilibrium Price", "asx.asxsecurities.mdf.itch.v1.0.availablebidquantityatequilibriumprice", ftypes.UINT64, nil, nil, nil, "Quantity at equilibrium price on the bid side")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.best_ask_price = ProtoField.new("Best Ask Price", "asx.asxsecurities.mdf.itch.v1.0.bestaskprice", ftypes.DOUBLE)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.best_ask_quantity = ProtoField.new("Best Ask Quantity", "asx.asxsecurities.mdf.itch.v1.0.bestaskquantity", ftypes.UINT64)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.best_bid_price = ProtoField.new("Best Bid Price", "asx.asxsecurities.mdf.itch.v1.0.bestbidprice", ftypes.DOUBLE)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.best_bid_quantity = ProtoField.new("Best Bid Quantity", "asx.asxsecurities.mdf.itch.v1.0.bestbidquantity", ftypes.UINT64)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.boq_list = ProtoField.new("Boq List", "asx.asxsecurities.mdf.itch.v1.0.boqlist", ftypes.STRING, nil, nil, nil, "Corporate action codes. May be null filled.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.business_date = ProtoField.new("Business Date", "asx.asxsecurities.mdf.itch.v1.0.businessdate", ftypes.UINT32, nil, nil, nil, "Today's Business Date")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.calculation_convention = ProtoField.new("Calculation Convention", "asx.asxsecurities.mdf.itch.v1.0.calculationconvention", ftypes.UINT8)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.category = ProtoField.new("Category", "asx.asxsecurities.mdf.itch.v1.0.category", ftypes.UINT8, nil, nil, nil, "Limit category")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.cfi_code = ProtoField.new("Cfi Code", "asx.asxsecurities.mdf.itch.v1.0.cficode", ftypes.STRING, nil, nil, nil, "Currently it is set to blank. 6 Letter Code in line with the ISO Standard for Classification of Financial Instruments.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.change_previous = ProtoField.new("Change Previous", "asx.asxsecurities.mdf.itch.v1.0.changeprevious", ftypes.UINT32, nil, nil, nil, "Change since previous")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.change_yesterday = ProtoField.new("Change Yesterday", "asx.asxsecurities.mdf.itch.v1.0.changeyesterday", ftypes.UINT32, nil, nil, nil, "Change since yesterday")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.clean_price_rounding = ProtoField.new("Clean Price Rounding", "asx.asxsecurities.mdf.itch.v1.0.cleanpricerounding", ftypes.UINT32, nil, nil, nil, "Clean price rounding decimals")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.clean_price_updown = ProtoField.new("Clean Price Updown", "asx.asxsecurities.mdf.itch.v1.0.cleanpriceupdown", ftypes.UINT8, nil, nil, nil, "Clean price up/down.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.combination_order_book_id = ProtoField.new("Combination Order Book Id", "asx.asxsecurities.mdf.itch.v1.0.combinationorderbookid", ftypes.UINT32, nil, nil, nil, "Denotes the primary identifier of an order book.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.commodity_code = ProtoField.new("Commodity Code", "asx.asxsecurities.mdf.itch.v1.0.commoditycode", ftypes.UINT32, nil, nil, nil, "ID of the Underlying instrument (Underlying Order Book ID)")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "asx.asxsecurities.mdf.itch.v1.0.contractmultiplier", ftypes.UINT64, nil, nil, nil, "The number of Underlying Assets one unit of the derivatives contract is based on.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.corporate_action_code = ProtoField.new("Corporate Action Code", "asx.asxsecurities.mdf.itch.v1.0.corporateactioncode", ftypes.STRING, nil, nil, nil, "The name of the CA Code (Appendix 1).")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.corporate_action_id = ProtoField.new("Corporate Action Id", "asx.asxsecurities.mdf.itch.v1.0.corporateactionid", ftypes.UINT32, nil, nil, nil, "Identifier of a Corporate Action. (Currently set to 0)")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.corporate_action_status = ProtoField.new("Corporate Action Status", "asx.asxsecurities.mdf.itch.v1.0.corporateactionstatus", ftypes.UINT8)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.corporate_action_type = ProtoField.new("Corporate Action Type", "asx.asxsecurities.mdf.itch.v1.0.corporateactiontype", ftypes.STRING, nil, nil, nil, "The type of the CA Code.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.coupon_div_date = ProtoField.new("Coupon Div Date", "asx.asxsecurities.mdf.itch.v1.0.coupondivdate", ftypes.UINT32, nil, nil, nil, "Coupon date for bond underlying or dividend date for stock underlying.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.coupon_frequency = ProtoField.new("Coupon Frequency", "asx.asxsecurities.mdf.itch.v1.0.couponfrequency", ftypes.UINT32, nil, nil, nil, "Number of coupons per year")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.coupon_from_date = ProtoField.new("Coupon From Date", "asx.asxsecurities.mdf.itch.v1.0.couponfromdate", ftypes.UINT32, nil, nil, nil, "Dated date. Contains the date of the underlying from when the coupon interest is calculated.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.coupon_interest = ProtoField.new("Coupon Interest", "asx.asxsecurities.mdf.itch.v1.0.couponinterest", ftypes.UINT64, nil, nil, nil, "Coupon interest for the underlying. Only applicable for interest related underlyings")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.date_books_close = ProtoField.new("Date Books Close", "asx.asxsecurities.mdf.itch.v1.0.datebooksclose", ftypes.UINT32, nil, nil, nil, "Books close date for bond underlying.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.day_calculation_rule = ProtoField.new("Day Calculation Rule", "asx.asxsecurities.mdf.itch.v1.0.daycalculationrule", ftypes.UINT8)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.day_count_convention = ProtoField.new("Day Count Convention", "asx.asxsecurities.mdf.itch.v1.0.daycountconvention", ftypes.UINT8)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.deal_id = ProtoField.new("Deal Id", "asx.asxsecurities.mdf.itch.v1.0.dealid", ftypes.UINT64, nil, nil, nil, "Deal identifier")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.deal_source = ProtoField.new("Deal Source", "asx.asxsecurities.mdf.itch.v1.0.dealsource", ftypes.UINT8)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.deal_time_utc = ProtoField.new("Deal Time", "asx.asxsecurities.mdf.itch.v1.0.dealtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Nano seconds since Epoch")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.deal_time = ProtoField.new("Deal Time", "asx.asxsecurities.mdf.itch.v1.0.dealtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Nano seconds since Epoch")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.decimals_in_multiplier = ProtoField.new("Decimals In Multiplier", "asx.asxsecurities.mdf.itch.v1.0.decimalsinmultiplier", ftypes.UINT16, nil, nil, nil, "The number of decimals used for Multiplier or Contract Multiplier.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.deliverable = ProtoField.new("Deliverable", "asx.asxsecurities.mdf.itch.v1.0.deliverable", ftypes.UINT8, nil, nil, nil, "Defines if a series can be delivered or not (cash settlement)")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.display_name = ProtoField.new("Display Name", "asx.asxsecurities.mdf.itch.v1.0.displayname", ftypes.STRING, nil, nil, nil, "The display name of the state")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.dividend = ProtoField.new("Dividend", "asx.asxsecurities.mdf.itch.v1.0.dividend", ftypes.UINT64, nil, nil, nil, "The dividend for the stock")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.document_url = ProtoField.new("Document Url", "asx.asxsecurities.mdf.itch.v1.0.documenturl", ftypes.STRING, nil, nil, nil, "The URL link where more information may be found, typically a document.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.effective_expiration_date = ProtoField.new("Effective Expiration Date", "asx.asxsecurities.mdf.itch.v1.0.effectiveexpirationdate", ftypes.UINT32, nil, nil, nil, "The effective expiration date is the actual expiration date of the series.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.end_date = ProtoField.new("End Date", "asx.asxsecurities.mdf.itch.v1.0.enddate", ftypes.UINT32, nil, nil, nil, "The last date the CA is active. (Currently set to 0)")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.end_of_month_count_convention = ProtoField.new("End Of Month Count Convention", "asx.asxsecurities.mdf.itch.v1.0.endofmonthcountconvention", ftypes.UINT32, nil, nil, nil, "End of month count convention.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.equilibrium_price = ProtoField.new("Equilibrium Price", "asx.asxsecurities.mdf.itch.v1.0.equilibriumprice", ftypes.DOUBLE)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.equilibrium_quantity = ProtoField.new("Equilibrium Quantity", "asx.asxsecurities.mdf.itch.v1.0.equilibriumquantity", ftypes.UINT64, nil, nil, nil, "The tradable quantity at equilibrium price")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.event_code = ProtoField.new("Event Code", "asx.asxsecurities.mdf.itch.v1.0.eventcode", ftypes.STRING, nil, nil, nil, "System event code")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.ex_coupon_period = ProtoField.new("Ex Coupon Period", "asx.asxsecurities.mdf.itch.v1.0.excouponperiod", ftypes.UINT32)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.exchange_id = ProtoField.new("Exchange Id", "asx.asxsecurities.mdf.itch.v1.0.exchangeid", ftypes.UINT32, nil, nil, nil, "Exchange code")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.exchange_name = ProtoField.new("Exchange Name", "asx.asxsecurities.mdf.itch.v1.0.exchangename", ftypes.STRING, nil, nil, nil, "Exchange Name.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.exchange_order_type = ProtoField.new("Exchange Order Type", "asx.asxsecurities.mdf.itch.v1.0.exchangeordertype", ftypes.UINT32, nil, nil, nil, "Exchange Order Type.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.expiration_date = ProtoField.new("Expiration Date", "asx.asxsecurities.mdf.itch.v1.0.expirationdate", ftypes.UINT32, nil, nil, nil, "Date of expiration. 0 for instruments that do not have an Expiration date")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.externally_price_sourced = ProtoField.new("Externally Price Sourced", "asx.asxsecurities.mdf.itch.v1.0.externallypricesourced", ftypes.UINT8, nil, nil, nil, "Indicates if the Item is externally priced")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.financial_product = ProtoField.new("Financial Product", "asx.asxsecurities.mdf.itch.v1.0.financialproduct", ftypes.UINT8)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.first_settlement_date = ProtoField.new("First Settlement Date", "asx.asxsecurities.mdf.itch.v1.0.firstsettlementdate", ftypes.UINT32, nil, nil, nil, "First settlement date in YYYYMMDD format.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.fixed_income_type = ProtoField.new("Fixed Income Type", "asx.asxsecurities.mdf.itch.v1.0.fixedincometype", ftypes.UINT8, nil, nil, nil, "Type of fixed income security")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.foreign_ownership_restriction = ProtoField.new("Foreign Ownership Restriction", "asx.asxsecurities.mdf.itch.v1.0.foreignownershiprestriction", ftypes.UINT8, nil, nil, nil, "Foreign ownership restriction. Incorporated outside country.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.header = ProtoField.new("Header", "asx.asxsecurities.mdf.itch.v1.0.header", ftypes.STRING, nil, nil, nil, "Header of the message.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.high_price = ProtoField.new("High Price", "asx.asxsecurities.mdf.itch.v1.0.highprice", ftypes.DOUBLE, nil, nil, nil, "Highest price of the Order Book during the current day.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.index_market = ProtoField.new("Index Market", "asx.asxsecurities.mdf.itch.v1.0.indexmarket", ftypes.UINT8, nil, nil, nil, "Indicates if the market is an Index Market.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.instrument_state_level = ProtoField.new("Instrument State Level", "asx.asxsecurities.mdf.itch.v1.0.instrumentstatelevel", ftypes.UINT8)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.instrument_type = ProtoField.new("Instrument Type", "asx.asxsecurities.mdf.itch.v1.0.instrumenttype", ftypes.STRING, nil, nil, nil, "The four-letter instrument Type")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.isin = ProtoField.new("Isin", "asx.asxsecurities.mdf.itch.v1.0.isin", ftypes.STRING, nil, nil, nil, "ISIN code identifying security")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.issue_date = ProtoField.new("Issue Date", "asx.asxsecurities.mdf.itch.v1.0.issuedate", ftypes.UINT32, nil, nil, nil, "Contains the issue date of the underlying if it has a limited lifetime.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.issuer = ProtoField.new("Issuer", "asx.asxsecurities.mdf.itch.v1.0.issuer", ftypes.STRING, nil, nil, nil, "Issuer of underlying")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.items_url = ProtoField.new("Items Url", "asx.asxsecurities.mdf.itch.v1.0.itemsurl", ftypes.UINT8, nil, nil, nil, "Characters in Document URL link.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.last_auction_price = ProtoField.new("Last Auction Price", "asx.asxsecurities.mdf.itch.v1.0.lastauctionprice", ftypes.DOUBLE)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.last_price = ProtoField.new("Last Price", "asx.asxsecurities.mdf.itch.v1.0.lastprice", ftypes.DOUBLE, nil, nil, nil, "Last Traded price")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.last_quantity = ProtoField.new("Last Quantity", "asx.asxsecurities.mdf.itch.v1.0.lastquantity", ftypes.UINT64, nil, nil, nil, "Quantity of last trade")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.last_traded_date = ProtoField.new("Last Traded Date", "asx.asxsecurities.mdf.itch.v1.0.lasttradeddate", ftypes.UINT32, nil, nil, nil, "This is the last date the asset can be traded.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.last_trading_time = ProtoField.new("Last Trading Time", "asx.asxsecurities.mdf.itch.v1.0.lasttradingtime", ftypes.STRING, nil, nil, nil, "Used in conjunction with Last Traded Date. Set to null if no Last Trading time")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.leg_order_book_id = ProtoField.new("Leg Order Book Id", "asx.asxsecurities.mdf.itch.v1.0.legorderbookid", ftypes.UINT32, nil, nil, nil, "Order book ID of Leg instrument")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.leg_ratio = ProtoField.new("Leg Ratio", "asx.asxsecurities.mdf.itch.v1.0.legratio", ftypes.UINT32)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.leg_side = ProtoField.new("Leg Side", "asx.asxsecurities.mdf.itch.v1.0.legside", ftypes.STRING)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.level = ProtoField.new("Level", "asx.asxsecurities.mdf.itch.v1.0.level", ftypes.UINT8, nil, nil, nil, "The numeric order of the price level, where 1 is the first price level.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.level_update_action = ProtoField.new("Level Update Action", "asx.asxsecurities.mdf.itch.v1.0.levelupdateaction", ftypes.STRING, nil, nil, nil, "Type of market update action.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.long_name = ProtoField.new("Long Name", "asx.asxsecurities.mdf.itch.v1.0.longname", ftypes.STRING, nil, nil, nil, "Human-readable long name of orderbook")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.low_price = ProtoField.new("Low Price", "asx.asxsecurities.mdf.itch.v1.0.lowprice", ftypes.DOUBLE, nil, nil, nil, "Lowest price of the Order Book during the current day.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.lower_limit = ProtoField.new("Lower Limit", "asx.asxsecurities.mdf.itch.v1.0.lowerlimit", ftypes.DOUBLE, nil, nil, nil, "The Lower Price Limit. Min Long Value means limit is removed/no limits")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.market_id = ProtoField.new("Market Id", "asx.asxsecurities.mdf.itch.v1.0.marketid", ftypes.UINT32)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.market_name = ProtoField.new("Market Name", "asx.asxsecurities.mdf.itch.v1.0.marketname", ftypes.STRING, nil, nil, nil, "Market Name.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.market_type = ProtoField.new("Market Type", "asx.asxsecurities.mdf.itch.v1.0.markettype", ftypes.UINT8)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.maturity_date = ProtoField.new("Maturity Date", "asx.asxsecurities.mdf.itch.v1.0.maturitydate", ftypes.UINT32, nil, nil, nil, "Contains the maturity date of the underlying if it has a limited lifetime.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.max_order_quantity = ProtoField.new("Max Order Quantity", "asx.asxsecurities.mdf.itch.v1.0.maxorderquantity", ftypes.UINT64, nil, nil, nil, "For ASX this is the Max value for the field")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.maximum_level = ProtoField.new("Maximum Level", "asx.asxsecurities.mdf.itch.v1.0.maximumlevel", ftypes.UINT8, nil, nil, nil, "The maximum price level. Price levels above Maximum Level shall be deleted by a consumer.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.message_count = ProtoField.new("Message Count", "asx.asxsecurities.mdf.itch.v1.0.messagecount", ftypes.UINT16, nil, nil, nil, "Number of messages to follow this header")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.message_information_type = ProtoField.new("Message Information Type", "asx.asxsecurities.mdf.itch.v1.0.messageinformationtype", ftypes.UINT8, nil, nil, nil, "Kind of message sent in announcement.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.message_item = ProtoField.new("Message Item", "asx.asxsecurities.mdf.itch.v1.0.messageitem", ftypes.STRING, nil, nil, nil, "A row in the message.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.message_length = ProtoField.new("Message Length", "asx.asxsecurities.mdf.itch.v1.0.messagelength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.message_priority = ProtoField.new("Message Priority", "asx.asxsecurities.mdf.itch.v1.0.messagepriority", ftypes.UINT8)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.message_source = ProtoField.new("Message Source", "asx.asxsecurities.mdf.itch.v1.0.messagesource", ftypes.STRING, nil, nil, nil, "A description of the source of the message, e.g. the market control.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.message_type = ProtoField.new("Message Type", "asx.asxsecurities.mdf.itch.v1.0.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.min_order_quantity = ProtoField.new("Min Order Quantity", "asx.asxsecurities.mdf.itch.v1.0.minorderquantity", ftypes.UINT64, nil, nil, nil, "For ASX this will be set to 1")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.minimum_value_for_initial_trade_report = ProtoField.new("Minimum Value For Initial Trade Report", "asx.asxsecurities.mdf.itch.v1.0.minimumvalueforinitialtradereport", ftypes.UINT64, nil, nil, nil, "The required minimum trade value for initial trade reports.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.multiplier = ProtoField.new("Multiplier", "asx.asxsecurities.mdf.itch.v1.0.multiplier", ftypes.UINT64, nil, nil, nil, "Specifies the ratio or multiply factor used to convert from contracts to shares.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.name_of_the_instrument_state_level = ProtoField.new("Name Of The Instrument State Level", "asx.asxsecurities.mdf.itch.v1.0.nameoftheinstrumentstatelevel", ftypes.STRING, nil, nil, nil, "Name of the applicable Instrument State level.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.nominal_value = ProtoField.new("Nominal Value", "asx.asxsecurities.mdf.itch.v1.0.nominalvalue", ftypes.UINT64)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_decimals_in = ProtoField.new("Number Of Decimals In", "asx.asxsecurities.mdf.itch.v1.0.numberofdecimalsin", ftypes.UINT16, nil, nil, nil, "Currently not in use")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_decimals_in_nominal_value = ProtoField.new("Number Of Decimals In Nominal Value", "asx.asxsecurities.mdf.itch.v1.0.numberofdecimalsinnominalvalue", ftypes.UINT16, nil, nil, nil, "This value defines the number of decimals in Nominal Value.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_decimals_in_price = ProtoField.new("Number Of Decimals In Price", "asx.asxsecurities.mdf.itch.v1.0.numberofdecimalsinprice", ftypes.UINT16, nil, nil, nil, "This value defines the number of decimals used in price for this order book.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_decimals_in_strike_price = ProtoField.new("Number Of Decimals In Strike Price", "asx.asxsecurities.mdf.itch.v1.0.numberofdecimalsinstrikeprice", ftypes.UINT16, nil, nil, nil, "This value defines the number of decimals used in Strike Price for this order book.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_deletes = ProtoField.new("Number Of Deletes", "asx.asxsecurities.mdf.itch.v1.0.numberofdeletes", ftypes.UINT8, nil, nil, nil, "Number of Levels deleted in this update. Used for a Price Delete Item.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_legs = ProtoField.new("Number Of Legs", "asx.asxsecurities.mdf.itch.v1.0.numberoflegs", ftypes.UINT8, nil, nil, nil, "Number of legs. Only applicable for combination instruments")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_level_items = ProtoField.new("Number Of Level Items", "asx.asxsecurities.mdf.itch.v1.0.numberoflevelitems", ftypes.UINT8, nil, nil, nil, "The number of times the item fields below are repeated.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_message_items = ProtoField.new("Number Of Message Items", "asx.asxsecurities.mdf.itch.v1.0.numberofmessageitems", ftypes.UINT8, nil, nil, nil, "The number of message items in the following array. A maximum of 10 items may be used.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_messages_items = ProtoField.new("Number Of Messages Items", "asx.asxsecurities.mdf.itch.v1.0.numberofmessagesitems", ftypes.UINT8, nil, nil, nil, "Duplicate field of Number of Message Items. Not used for current encoding")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_orders = ProtoField.new("Number Of Orders", "asx.asxsecurities.mdf.itch.v1.0.numberoforders", ftypes.UINT64, nil, nil, nil, "Number of orders at this level.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_outstanding_equities = ProtoField.new("Number Of Outstanding Equities", "asx.asxsecurities.mdf.itch.v1.0.numberofoutstandingequities", ftypes.UINT64, nil, nil, nil, "The number of shares/equities available for trading at the exchange, also called floating shares (Currently set to 0).")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_settlement_days = ProtoField.new("Number Of Settlement Days", "asx.asxsecurities.mdf.itch.v1.0.numberofsettlementdays", ftypes.UINT32, nil, nil, nil, "The number of settlement days applicable for trades in this order book")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_tradable_equities = ProtoField.new("Number Of Tradable Equities", "asx.asxsecurities.mdf.itch.v1.0.numberoftradableequities", ftypes.UINT64, nil, nil, nil, "The number of shares/equities held by all shareholders (Currently set to 0)")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_trades = ProtoField.new("Number Of Trades", "asx.asxsecurities.mdf.itch.v1.0.numberoftrades", ftypes.UINT64, nil, nil, nil, "The total number of trades.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.open_interest = ProtoField.new("Open Interest", "asx.asxsecurities.mdf.itch.v1.0.openinterest", ftypes.UINT64)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.open_price = ProtoField.new("Open Price", "asx.asxsecurities.mdf.itch.v1.0.openprice", ftypes.DOUBLE, nil, nil, nil, "Open price of the Order Book.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.option_style = ProtoField.new("Option Style", "asx.asxsecurities.mdf.itch.v1.0.optionstyle", ftypes.UINT8, nil, nil, nil, "The Execution Style")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.option_type = ProtoField.new("Option Type", "asx.asxsecurities.mdf.itch.v1.0.optiontype", ftypes.UINT8)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.order_book_id = ProtoField.new("Order Book Id", "asx.asxsecurities.mdf.itch.v1.0.orderbookid", ftypes.UINT32, nil, nil, nil, "Denotes the primary identifier of an order book.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.order_id_buy = ProtoField.new("Order Id Buy", "asx.asxsecurities.mdf.itch.v1.0.orderidbuy", ftypes.UINT64, nil, nil, nil, "ID of order on buy side if public. Zero otherwise.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.order_id_sell = ProtoField.new("Order Id Sell", "asx.asxsecurities.mdf.itch.v1.0.orderidsell", ftypes.UINT64, nil, nil, nil, "ID of order on sell side if public. Zero otherwise.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.participant_id_buy = ProtoField.new("Participant Id Buy", "asx.asxsecurities.mdf.itch.v1.0.participantidbuy", ftypes.STRING, nil, nil, nil, "Participant ID of participant on Buy side if public. Null otherwise.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.participant_id_sell = ProtoField.new("Participant Id Sell", "asx.asxsecurities.mdf.itch.v1.0.participantidsell", ftypes.STRING, nil, nil, nil, "Participant ID of participant on Sell side if public. Null otherwise.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.partition_id = ProtoField.new("Partition Id", "asx.asxsecurities.mdf.itch.v1.0.partitionid", ftypes.UINT8, nil, nil, nil, "Is always zero")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.point_of_movement = ProtoField.new("Point Of Movement", "asx.asxsecurities.mdf.itch.v1.0.pointofmovement", ftypes.UINT32, nil, nil, nil, "Number of points of movement.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.price = ProtoField.new("Price", "asx.asxsecurities.mdf.itch.v1.0.price", ftypes.DOUBLE)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.price_date = ProtoField.new("Price Date", "asx.asxsecurities.mdf.itch.v1.0.pricedate", ftypes.UINT32, nil, nil, nil, "The date of the price. Implemented as the date of the updated time stamp in Local time.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.price_from = ProtoField.new("Price From", "asx.asxsecurities.mdf.itch.v1.0.pricefrom", ftypes.DOUBLE, nil, nil, nil, "Start of price range for this entry. Always set to 4 decimals")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.price_to = ProtoField.new("Price To", "asx.asxsecurities.mdf.itch.v1.0.priceto", ftypes.DOUBLE, nil, nil, nil, "End of price range for this entry. Zero (0) means infinity.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.price_type = ProtoField.new("Price Type", "asx.asxsecurities.mdf.itch.v1.0.pricetype", ftypes.UINT8, nil, nil, nil, "Type of price published.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.price_unit = ProtoField.new("Price Unit", "asx.asxsecurities.mdf.itch.v1.0.priceunit", ftypes.UINT8)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.primary = ProtoField.new("Primary", "asx.asxsecurities.mdf.itch.v1.0.primary", ftypes.UINT8, nil, nil, nil, "Primary Order Book")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.printable = ProtoField.new("Printable", "asx.asxsecurities.mdf.itch.v1.0.printable", ftypes.UINT8)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.proceed_date = ProtoField.new("Proceed Date", "asx.asxsecurities.mdf.itch.v1.0.proceeddate", ftypes.UINT32, nil, nil, nil, "Proceed date for fixed income underlying.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.quantity = ProtoField.new("Quantity", "asx.asxsecurities.mdf.itch.v1.0.quantity", ftypes.UINT64)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.rate_determination_days = ProtoField.new("Rate Determination Days", "asx.asxsecurities.mdf.itch.v1.0.ratedeterminationdays", ftypes.UINT32, nil, nil, nil, "Specifies number of rate determination days")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.record_date = ProtoField.new("Record Date", "asx.asxsecurities.mdf.itch.v1.0.recorddate", ftypes.UINT32, nil, nil, nil, "The record date for the CA. Informational field only. (Currently set to 0)")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.reference_price = ProtoField.new("Reference Price", "asx.asxsecurities.mdf.itch.v1.0.referenceprice", ftypes.DOUBLE, nil, nil, nil, "The reference price used for the calculated static or dynamic Price limits")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.reported_trades_turnover_quantity = ProtoField.new("Reported Trades Turnover Quantity", "asx.asxsecurities.mdf.itch.v1.0.reportedtradesturnoverquantity", ftypes.UINT64, nil, nil, nil, "Calculated as sum of Reported Trades Quantity.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.round_lot_size = ProtoField.new("Round Lot Size", "asx.asxsecurities.mdf.itch.v1.0.roundlotsize", ftypes.UINT32, nil, nil, nil, "Indicates the quantity that represents a round lot for the issue.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.second_utc = ProtoField.new("Second", "asx.asxsecurities.mdf.itch.v1.0.second.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Unix time (number of seconds since 1970-01-01 00:00:00 UTC)")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.second = ProtoField.new("Second", "asx.asxsecurities.mdf.itch.v1.0.second", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Unix time (number of seconds since 1970-01-01 00:00:00 UTC)")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.sector_code = ProtoField.new("Sector Code", "asx.asxsecurities.mdf.itch.v1.0.sectorcode", ftypes.STRING, nil, nil, nil, "Sector Code (Currently set to N/A)")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.sequence_number = ProtoField.new("Sequence Number", "asx.asxsecurities.mdf.itch.v1.0.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first message to follow this header")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.session = ProtoField.new("Session", "asx.asxsecurities.mdf.itch.v1.0.session", ftypes.STRING, nil, nil, nil, "Identity of the multicast session")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.set_end_consideration = ProtoField.new("Set End Consideration", "asx.asxsecurities.mdf.itch.v1.0.setendconsideration", ftypes.UINT8, nil, nil, nil, "End consideration.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.set_start_consideration = ProtoField.new("Set Start Consideration", "asx.asxsecurities.mdf.itch.v1.0.setstartconsideration", ftypes.UINT8, nil, nil, nil, "Start consideration.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.settlement_date = ProtoField.new("Settlement Date", "asx.asxsecurities.mdf.itch.v1.0.settlementdate", ftypes.UINT32, nil, nil, nil, "The settlement date")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.side = ProtoField.new("Side", "asx.asxsecurities.mdf.itch.v1.0.side", ftypes.STRING)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.snapshot_sequence_number = ProtoField.new("Snapshot Sequence Number", "asx.asxsecurities.mdf.itch.v1.0.snapshotsequencenumber", ftypes.STRING, nil, nil, nil, "MDF SoupBin TCP sequence number when the snapshot was taken, in ASCII.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.start_date = ProtoField.new("Start Date", "asx.asxsecurities.mdf.itch.v1.0.startdate", ftypes.UINT32, nil, nil, nil, "The first date the CA is active. (Currently set to 0)")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.start_time = ProtoField.new("Start Time", "asx.asxsecurities.mdf.itch.v1.0.starttime", ftypes.UINT32, nil, nil, nil, "Start Time. Leading zeros are removed in this field")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.state_name = ProtoField.new("State Name", "asx.asxsecurities.mdf.itch.v1.0.statename", ftypes.STRING, nil, nil, nil, "Name of the Order Book State")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.status = ProtoField.new("Status", "asx.asxsecurities.mdf.itch.v1.0.status", ftypes.STRING, nil, nil, nil, "Status of the Instrument")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.strike_price = ProtoField.new("Strike Price", "asx.asxsecurities.mdf.itch.v1.0.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Only applicable for derivative instruments")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.symbol = ProtoField.new("Symbol", "asx.asxsecurities.mdf.itch.v1.0.symbol", ftypes.STRING, nil, nil, nil, "Orderbook symbol")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.test_order_book = ProtoField.new("Test Order Book", "asx.asxsecurities.mdf.itch.v1.0.testorderbook", ftypes.UINT8)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.tick_size = ProtoField.new("Tick Size", "asx.asxsecurities.mdf.itch.v1.0.ticksize", ftypes.UINT64, nil, nil, nil, "Tick Size for the give price range")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.timestamp_utc = ProtoField.new("Timestamp", "asx.asxsecurities.mdf.itch.v1.0.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The time (in UTC) when the Price was updated (if available).")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.timestamp = ProtoField.new("Timestamp", "asx.asxsecurities.mdf.itch.v1.0.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The time (in UTC) when the Price was updated (if available).")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.timestamp_nanoseconds = ProtoField.new("Timestamp Nanoseconds", "asx.asxsecurities.mdf.itch.v1.0.timestampnanoseconds", ftypes.UINT32, nil, nil, nil, "Nanoseconds portion of the timestamp.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.tradable = ProtoField.new("Tradable", "asx.asxsecurities.mdf.itch.v1.0.tradable", ftypes.UINT8)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.trade_condition = ProtoField.new("Trade Condition", "asx.asxsecurities.mdf.itch.v1.0.tradecondition", ftypes.UINT8, nil, nil, nil, "Trade Condition.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.trade_report_type = ProtoField.new("Trade Report Type", "asx.asxsecurities.mdf.itch.v1.0.tradereporttype", ftypes.UINT16, nil, nil, nil, "0 (zero) indicates not a trade report.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.trade_slip_number = ProtoField.new("Trade Slip Number", "asx.asxsecurities.mdf.itch.v1.0.tradeslipnumber", ftypes.UINT32, nil, nil, nil, "TSN.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.trading_currency = ProtoField.new("Trading Currency", "asx.asxsecurities.mdf.itch.v1.0.tradingcurrency", ftypes.STRING)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.trading_state_name = ProtoField.new("Trading State Name", "asx.asxsecurities.mdf.itch.v1.0.tradingstatename", ftypes.STRING, nil, nil, nil, "Name of the State. NoState means the previous state at Instrument Series level or Underlying Level has been removed.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.transact_time = ProtoField.new("Transact Time", "asx.asxsecurities.mdf.itch.v1.0.transacttime", ftypes.UINT64, nil, nil, nil, "Currently set to -9223372036854775808 (minimum value of an 8 byte signed integer).")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.trend_indicator = ProtoField.new("Trend Indicator", "asx.asxsecurities.mdf.itch.v1.0.trendindicator", ftypes.STRING)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.turnover_quantity = ProtoField.new("Turnover Quantity", "asx.asxsecurities.mdf.itch.v1.0.turnoverquantity", ftypes.UINT64, nil, nil, nil, "Calculated as sum of Traded Quantity. Includes Reported Trades Quantity.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.turnover_value = ProtoField.new("Turnover Value", "asx.asxsecurities.mdf.itch.v1.0.turnovervalue", ftypes.UINT64, nil, nil, nil, "Calculated as sum of Traded Price * Traded Quantity.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.type = ProtoField.new("Type", "asx.asxsecurities.mdf.itch.v1.0.type", ftypes.UINT8, nil, nil, nil, "Limit type")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.upper_level_series = ProtoField.new("Upper Level Series", "asx.asxsecurities.mdf.itch.v1.0.upperlevelseries", ftypes.STRING, nil, nil, nil, "The Upper-Level series. Only populated for instruments that have an Underlying.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.upper_limit = ProtoField.new("Upper Limit", "asx.asxsecurities.mdf.itch.v1.0.upperlimit", ftypes.DOUBLE, nil, nil, nil, "The Upper Price Limit. Min Long Value means limit is removed/no limits")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.upper_series_level_order_book_id = ProtoField.new("Upper Series Level Order Book Id", "asx.asxsecurities.mdf.itch.v1.0.upperserieslevelorderbookid", ftypes.UINT32, nil, nil, nil, "The Order Book ID of the Upper-Level series. Zero otherwise.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.yield_convention = ProtoField.new("Yield Convention", "asx.asxsecurities.mdf.itch.v1.0.yieldconvention", ftypes.UINT32, nil, nil, nil, "Yield convention. Number of months.")

-- Asx AsxSecurities Mdf Itch 1.0 Framing
omi_asx_asxsecurities_mdf_itch_v1_0.fields.message = ProtoField.new("Message", "asx.asxsecurities.mdf.itch.v1.0.message", ftypes.STRING, nil, nil, nil, "Mold Udp64 Message")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.message_header = ProtoField.new("Message Header", "asx.asxsecurities.mdf.itch.v1.0.messageheader", ftypes.STRING, nil, nil, nil, "Mold Udp 64 Message Header")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.packet = ProtoField.new("Packet", "asx.asxsecurities.mdf.itch.v1.0.packet", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.packet_header = ProtoField.new("Packet Header", "asx.asxsecurities.mdf.itch.v1.0.packetheader", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet Header")

-- Asx AsxSecurities Mdf 1.0 Application Messages
omi_asx_asxsecurities_mdf_itch_v1_0.fields.business_date_message = ProtoField.new("Business Date Message", "asx.asxsecurities.mdf.itch.v1.0.businessdatemessage", ftypes.STRING, nil, nil, nil, "Relays information on the current business date.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.combination_order_book_leg_directory_message = ProtoField.new("Combination Order Book Leg Directory Message", "asx.asxsecurities.mdf.itch.v1.0.combinationorderbooklegdirectorymessage", ftypes.STRING, nil, nil, nil, "Provides a mapping between a combination order book and one of the combination leg order books.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.corporate_action_entry_message = ProtoField.new("Corporate Action Entry Message", "asx.asxsecurities.mdf.itch.v1.0.corporateactionentrymessage", ftypes.STRING, nil, nil, nil, "Displays the entries of assigned Corporate Action Codes to Order Books.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.end_of_recovery_message = ProtoField.new("End Of Recovery Message", "asx.asxsecurities.mdf.itch.v1.0.endofrecoverymessage", ftypes.BYTES)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.end_of_snapshot_message = ProtoField.new("End Of Snapshot Message", "asx.asxsecurities.mdf.itch.v1.0.endofsnapshotmessage", ftypes.STRING, nil, nil, nil, "Returns the current MDF sequence number to be used when connecting to the MDF feed (Glimpse).")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.equilibrium_price_message = ProtoField.new("Equilibrium Price Message", "asx.asxsecurities.mdf.itch.v1.0.equilibriumpricemessage", ftypes.STRING, nil, nil, nil, "Used when auctions occur; provides the changes in equilibrium price.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.exchange_directory_message = ProtoField.new("Exchange Directory Message", "asx.asxsecurities.mdf.itch.v1.0.exchangedirectorymessage", ftypes.STRING, nil, nil, nil, "Disseminated at the start of each trading day for all active Exchanges in the system.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.index_message = ProtoField.new("Index Message", "asx.asxsecurities.mdf.itch.v1.0.indexmessage", ftypes.STRING, nil, nil, nil, "Used for sending index price information.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.instrument_status_message = ProtoField.new("Instrument Status Message", "asx.asxsecurities.mdf.itch.v1.0.instrumentstatusmessage", ftypes.STRING, nil, nil, nil, "Received when the State of an Instrument is changed at any of the applicable levels.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.market_announcement_message = ProtoField.new("Market Announcement Message", "asx.asxsecurities.mdf.itch.v1.0.marketannouncementmessage", ftypes.STRING, nil, nil, nil, "Publishes Market Announcements for Order Books, Markets, Underlyings or Exchanges.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.market_by_price_message = ProtoField.new("Market By Price Message", "asx.asxsecurities.mdf.itch.v1.0.marketbypricemessage", ftypes.STRING, nil, nil, nil, "Publishes order book Prices per Price level.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.market_directory_message = ProtoField.new("Market Directory Message", "asx.asxsecurities.mdf.itch.v1.0.marketdirectorymessage", ftypes.STRING, nil, nil, nil, "Disseminated at the start of each trading day for all active Markets in the system.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.open_interest_message = ProtoField.new("Open Interest Message", "asx.asxsecurities.mdf.itch.v1.0.openinterestmessage", ftypes.STRING, nil, nil, nil, "Publishes Open Interest.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.order_book_directory_extension_message = ProtoField.new("Order Book Directory Extension Message", "asx.asxsecurities.mdf.itch.v1.0.orderbookdirectoryextensionmessage", ftypes.STRING, nil, nil, nil, "Provides additional information that are valid only for Fixed Income instruments; sent for all instruments.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.order_book_directory_message = ProtoField.new("Order Book Directory Message", "asx.asxsecurities.mdf.itch.v1.0.orderbookdirectorymessage", ftypes.STRING, nil, nil, nil, "Disseminated at the start of each trading day for all active securities, including halted securities.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.order_book_state_message = ProtoField.new("Order Book State Message", "asx.asxsecurities.mdf.itch.v1.0.orderbookstatemessage", ftypes.STRING, nil, nil, nil, "Relays information on state changes.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.price_limits_message = ProtoField.new("Price Limits Message", "asx.asxsecurities.mdf.itch.v1.0.pricelimitsmessage", ftypes.STRING, nil, nil, nil, "Provides an update to the price limits or circuit breaker limits for an order book.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.reference_price_message = ProtoField.new("Reference Price Message", "asx.asxsecurities.mdf.itch.v1.0.referencepricemessage", ftypes.STRING, nil, nil, nil, "Publishes Reference Prices per Price Types.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.seconds_message = ProtoField.new("Seconds Message", "asx.asxsecurities.mdf.itch.v1.0.secondsmessage", ftypes.STRING, nil, nil, nil, "Sent every second for which at least one MDF message is being generated.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.system_event_message = ProtoField.new("System Event Message", "asx.asxsecurities.mdf.itch.v1.0.systemeventmessage", ftypes.STRING, nil, nil, nil, "Used to signal a market or data feed handler event.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.tick_size_table_entry_message = ProtoField.new("Tick Size Table Entry Message", "asx.asxsecurities.mdf.itch.v1.0.ticksizetableentrymessage", ftypes.STRING, nil, nil, nil, "Contains information on a tick size for a price range.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.trade_statistics_message = ProtoField.new("Trade Statistics Message", "asx.asxsecurities.mdf.itch.v1.0.tradestatisticsmessage", ftypes.STRING, nil, nil, nil, "Publishes Trade Statistics per Orderbook ID for the current Trading Day.")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.trade_ticker_message = ProtoField.new("Trade Ticker Message", "asx.asxsecurities.mdf.itch.v1.0.tradetickermessage", ftypes.STRING, nil, nil, nil, "Publishes Trade Ticker.")

-- Asx AsxSecurities Mdf 1.0 Session Messages
omi_asx_asxsecurities_mdf_itch_v1_0.fields.end_of_session = ProtoField.new("End Of Session", "asx.asxsecurities.mdf.itch.v1.0.endofsession", ftypes.BYTES, nil, nil, nil, "Mold Udp64 end of session")
omi_asx_asxsecurities_mdf_itch_v1_0.fields.heartbeat = ProtoField.new("Heartbeat", "asx.asxsecurities.mdf.itch.v1.0.heartbeat", ftypes.BYTES, nil, nil, nil, "Mold Udp64 heartbeat")

-- Asx AsxSecurities Mdf Itch 1.0 Generated Fields
omi_asx_asxsecurities_mdf_itch_v1_0.fields.array_of_level_items_index = ProtoField.new("Array Of Level Items Index", "asx.asxsecurities.mdf.itch.v1.0.arrayoflevelitemsindex", ftypes.UINT16)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.array_of_message_items_index = ProtoField.new("Array Of Message Items Index", "asx.asxsecurities.mdf.itch.v1.0.arrayofmessageitemsindex", ftypes.UINT16)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.message_index = ProtoField.new("Message Index", "asx.asxsecurities.mdf.itch.v1.0.messageindex", ftypes.UINT16)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "asx.asxsecurities.mdf.itch.v1.0.messagesequencenumber", ftypes.UINT64)
omi_asx_asxsecurities_mdf_itch_v1_0.fields.message_timestamp = ProtoField.new("Message Timestamp", "asx.asxsecurities.mdf.itch.v1.0.messagetimestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Asx AsxSecurities Mdf Itch 1.0 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "DateTime Local", 2 },
  { 3, "DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=DateTime Local, 3=DateTime Utc, 4=DateTime Zone
asx_asxsecurities_mdf_itch_v1_0.timestamp_format = 3


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Asx AsxSecurities Mdf Itch 1.0 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Asx AsxSecurities Mdf Itch 1.0 Show Options
omi_asx_asxsecurities_mdf_itch_v1_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_asx_asxsecurities_mdf_itch_v1_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_asx_asxsecurities_mdf_itch_v1_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_asx_asxsecurities_mdf_itch_v1_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_asx_asxsecurities_mdf_itch_v1_0.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_asx_asxsecurities_mdf_itch_v1_0.prefs.timestamp_format = Pref.enum("Timestamp Format", 3, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_asx_asxsecurities_mdf_itch_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_asx_asxsecurities_mdf_itch_v1_0.prefs.show_application_messages then
    show.application_messages = omi_asx_asxsecurities_mdf_itch_v1_0.prefs.show_application_messages
  end
  if show.headers ~= omi_asx_asxsecurities_mdf_itch_v1_0.prefs.show_headers then
    show.headers = omi_asx_asxsecurities_mdf_itch_v1_0.prefs.show_headers
  end
  if show.structs ~= omi_asx_asxsecurities_mdf_itch_v1_0.prefs.show_structs then
    show.structs = omi_asx_asxsecurities_mdf_itch_v1_0.prefs.show_structs
  end
  if show.indexes ~= omi_asx_asxsecurities_mdf_itch_v1_0.prefs.show_indexes then
    show.indexes = omi_asx_asxsecurities_mdf_itch_v1_0.prefs.show_indexes
  end
  if show.sequences ~= omi_asx_asxsecurities_mdf_itch_v1_0.prefs.show_sequences then
    show.sequences = omi_asx_asxsecurities_mdf_itch_v1_0.prefs.show_sequences
  end
  if asx_asxsecurities_mdf_itch_v1_0.timestamp_format ~= omi_asx_asxsecurities_mdf_itch_v1_0.prefs.timestamp_format then
    asx_asxsecurities_mdf_itch_v1_0.timestamp_format = omi_asx_asxsecurities_mdf_itch_v1_0.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
asx_asxsecurities_mdf_itch_v1_0.conversation = {}
asx_asxsecurities_mdf_itch_v1_0.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
asx_asxsecurities_mdf_itch_v1_0.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
asx_asxsecurities_mdf_itch_v1_0.conversation.data = function(packet)
  local key = asx_asxsecurities_mdf_itch_v1_0.conversation.key(packet)
  local data = asx_asxsecurities_mdf_itch_v1_0.conversation.flows[key]
  if data == nil then
    data = { second = { last = nil, frames = {} } }
    asx_asxsecurities_mdf_itch_v1_0.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
asx_asxsecurities_mdf_itch_v1_0.conversation.current = nil


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
-- Asx AsxSecurities Mdf Itch 1.0 Fields
-----------------------------------------------------------------------

-- Accrued Interest Rounding
asx_asxsecurities_mdf_itch_v1_0.accrued_interest_rounding = {}

-- Size: Accrued Interest Rounding
asx_asxsecurities_mdf_itch_v1_0.accrued_interest_rounding.size = 4

-- Display: Accrued Interest Rounding
asx_asxsecurities_mdf_itch_v1_0.accrued_interest_rounding.display = function(value)
  return "Accrued Interest Rounding: "..value
end

-- Dissect: Accrued Interest Rounding
asx_asxsecurities_mdf_itch_v1_0.accrued_interest_rounding.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.accrued_interest_rounding.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.accrued_interest_rounding.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.accrued_interest_rounding, range, value, display)

  return offset + length, value
end

-- Accrued Interest Updown
asx_asxsecurities_mdf_itch_v1_0.accrued_interest_updown = {}

-- Size: Accrued Interest Updown
asx_asxsecurities_mdf_itch_v1_0.accrued_interest_updown.size = 1

-- Display: Accrued Interest Updown
asx_asxsecurities_mdf_itch_v1_0.accrued_interest_updown.labels = {
  [0] = "Accrued Interest Updown: Blank (0)",
  [1] = "Accrued Interest Updown: Up (1)",
  [2] = "Accrued Interest Updown: Down (2)",
}

asx_asxsecurities_mdf_itch_v1_0.accrued_interest_updown.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.accrued_interest_updown.labels[value] or "Accrued Interest Updown: Unknown("..value..")"
end

-- Dissect: Accrued Interest Updown
asx_asxsecurities_mdf_itch_v1_0.accrued_interest_updown.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.accrued_interest_updown.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.accrued_interest_updown.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.accrued_interest_updown, range, value, display)

  return offset + length, value
end

-- Action
asx_asxsecurities_mdf_itch_v1_0.action = {}

-- Size: Action
asx_asxsecurities_mdf_itch_v1_0.action.size = 1

-- Display: Action
asx_asxsecurities_mdf_itch_v1_0.action.labels = {
  [1] = "Action: New (1)",
  [2] = "Action: Updated (2)",
  [3] = "Action: Canceled (3)",
}

asx_asxsecurities_mdf_itch_v1_0.action.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.action.labels[value] or "Action: Unknown("..value..")"
end

-- Dissect: Action
asx_asxsecurities_mdf_itch_v1_0.action.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.action.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.action, range, value, display)

  return offset + length, value
end

-- Aggressor
asx_asxsecurities_mdf_itch_v1_0.aggressor = {}

-- Size: Aggressor
asx_asxsecurities_mdf_itch_v1_0.aggressor.size = 1

-- Display: Aggressor
asx_asxsecurities_mdf_itch_v1_0.aggressor.labels = {
  ["B"] = "Aggressor: Bid (B)",
  ["A"] = "Aggressor: Ask (A)",
}

asx_asxsecurities_mdf_itch_v1_0.aggressor.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.aggressor.labels[value] or "Aggressor: Unknown("..value..")"
end

-- Dissect: Aggressor
asx_asxsecurities_mdf_itch_v1_0.aggressor.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.aggressor.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = asx_asxsecurities_mdf_itch_v1_0.aggressor.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.aggressor, range, value, display)

  return offset + length, value
end

-- Alias Name
asx_asxsecurities_mdf_itch_v1_0.alias_name = {}

-- Size: Alias Name
asx_asxsecurities_mdf_itch_v1_0.alias_name.size = 32

-- Display: Alias Name
asx_asxsecurities_mdf_itch_v1_0.alias_name.display = function(value)
  return "Alias Name: "..value
end

-- Dissect: Alias Name
asx_asxsecurities_mdf_itch_v1_0.alias_name.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.alias_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.alias_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.alias_name, range, value, display)

  return offset + length, value
end

-- As Of Date
asx_asxsecurities_mdf_itch_v1_0.as_of_date = {}

-- Size: As Of Date
asx_asxsecurities_mdf_itch_v1_0.as_of_date.size = 4

-- Display: As Of Date
asx_asxsecurities_mdf_itch_v1_0.as_of_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("As Of Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: As Of Date
asx_asxsecurities_mdf_itch_v1_0.as_of_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.as_of_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.as_of_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.as_of_date, range, value, display)

  return offset + length, value
end

-- Asset Name
asx_asxsecurities_mdf_itch_v1_0.asset_name = {}

-- Size: Asset Name
asx_asxsecurities_mdf_itch_v1_0.asset_name.size = 32

-- Display: Asset Name
asx_asxsecurities_mdf_itch_v1_0.asset_name.display = function(value)
  return "Asset Name: "..value
end

-- Dissect: Asset Name
asx_asxsecurities_mdf_itch_v1_0.asset_name.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.asset_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.asset_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.asset_name, range, value, display)

  return offset + length, value
end

-- Available Ask Quantity At Equilibrium Price
asx_asxsecurities_mdf_itch_v1_0.available_ask_quantity_at_equilibrium_price = {}

-- Size: Available Ask Quantity At Equilibrium Price
asx_asxsecurities_mdf_itch_v1_0.available_ask_quantity_at_equilibrium_price.size = 8

-- Display: Available Ask Quantity At Equilibrium Price
asx_asxsecurities_mdf_itch_v1_0.available_ask_quantity_at_equilibrium_price.display = function(value)
  return "Available Ask Quantity At Equilibrium Price: "..value
end

-- Dissect: Available Ask Quantity At Equilibrium Price
asx_asxsecurities_mdf_itch_v1_0.available_ask_quantity_at_equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.available_ask_quantity_at_equilibrium_price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.available_ask_quantity_at_equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.available_ask_quantity_at_equilibrium_price, range, value, display)

  return offset + length, value
end

-- Available Bid Quantity At Equilibrium Price
asx_asxsecurities_mdf_itch_v1_0.available_bid_quantity_at_equilibrium_price = {}

-- Size: Available Bid Quantity At Equilibrium Price
asx_asxsecurities_mdf_itch_v1_0.available_bid_quantity_at_equilibrium_price.size = 8

-- Display: Available Bid Quantity At Equilibrium Price
asx_asxsecurities_mdf_itch_v1_0.available_bid_quantity_at_equilibrium_price.display = function(value)
  return "Available Bid Quantity At Equilibrium Price: "..value
end

-- Dissect: Available Bid Quantity At Equilibrium Price
asx_asxsecurities_mdf_itch_v1_0.available_bid_quantity_at_equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.available_bid_quantity_at_equilibrium_price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.available_bid_quantity_at_equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.available_bid_quantity_at_equilibrium_price, range, value, display)

  return offset + length, value
end

-- Best Ask Price
asx_asxsecurities_mdf_itch_v1_0.best_ask_price = {}

-- Size: Best Ask Price
asx_asxsecurities_mdf_itch_v1_0.best_ask_price.size = 8

-- Display: Best Ask Price
asx_asxsecurities_mdf_itch_v1_0.best_ask_price.display = function(value)
  return "Best Ask Price: "..value
end

-- Translate: Best Ask Price
asx_asxsecurities_mdf_itch_v1_0.best_ask_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Best Ask Price
asx_asxsecurities_mdf_itch_v1_0.best_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.best_ask_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxsecurities_mdf_itch_v1_0.best_ask_price.translate(raw)
  local display = asx_asxsecurities_mdf_itch_v1_0.best_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.best_ask_price, range, value, display)

  return offset + length, value
end

-- Best Ask Quantity
asx_asxsecurities_mdf_itch_v1_0.best_ask_quantity = {}

-- Size: Best Ask Quantity
asx_asxsecurities_mdf_itch_v1_0.best_ask_quantity.size = 8

-- Display: Best Ask Quantity
asx_asxsecurities_mdf_itch_v1_0.best_ask_quantity.display = function(value)
  return "Best Ask Quantity: "..value
end

-- Dissect: Best Ask Quantity
asx_asxsecurities_mdf_itch_v1_0.best_ask_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.best_ask_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.best_ask_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.best_ask_quantity, range, value, display)

  return offset + length, value
end

-- Best Bid Price
asx_asxsecurities_mdf_itch_v1_0.best_bid_price = {}

-- Size: Best Bid Price
asx_asxsecurities_mdf_itch_v1_0.best_bid_price.size = 8

-- Display: Best Bid Price
asx_asxsecurities_mdf_itch_v1_0.best_bid_price.display = function(value)
  return "Best Bid Price: "..value
end

-- Translate: Best Bid Price
asx_asxsecurities_mdf_itch_v1_0.best_bid_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Best Bid Price
asx_asxsecurities_mdf_itch_v1_0.best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxsecurities_mdf_itch_v1_0.best_bid_price.translate(raw)
  local display = asx_asxsecurities_mdf_itch_v1_0.best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Best Bid Quantity
asx_asxsecurities_mdf_itch_v1_0.best_bid_quantity = {}

-- Size: Best Bid Quantity
asx_asxsecurities_mdf_itch_v1_0.best_bid_quantity.size = 8

-- Display: Best Bid Quantity
asx_asxsecurities_mdf_itch_v1_0.best_bid_quantity.display = function(value)
  return "Best Bid Quantity: "..value
end

-- Dissect: Best Bid Quantity
asx_asxsecurities_mdf_itch_v1_0.best_bid_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.best_bid_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.best_bid_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.best_bid_quantity, range, value, display)

  return offset + length, value
end

-- Boq List
asx_asxsecurities_mdf_itch_v1_0.boq_list = {}

-- Size: Boq List
asx_asxsecurities_mdf_itch_v1_0.boq_list.size = 6

-- Display: Boq List
asx_asxsecurities_mdf_itch_v1_0.boq_list.display = function(value)
  return "Boq List: "..value
end

-- Dissect: Boq List
asx_asxsecurities_mdf_itch_v1_0.boq_list.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.boq_list.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.boq_list.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.boq_list, range, value, display)

  return offset + length, value
end

-- Business Date
asx_asxsecurities_mdf_itch_v1_0.business_date = {}

-- Size: Business Date
asx_asxsecurities_mdf_itch_v1_0.business_date.size = 4

-- Display: Business Date
asx_asxsecurities_mdf_itch_v1_0.business_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Business Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Business Date
asx_asxsecurities_mdf_itch_v1_0.business_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.business_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.business_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.business_date, range, value, display)

  return offset + length, value
end

-- Calculation Convention
asx_asxsecurities_mdf_itch_v1_0.calculation_convention = {}

-- Size: Calculation Convention
asx_asxsecurities_mdf_itch_v1_0.calculation_convention.size = 1

-- Display: Calculation Convention
asx_asxsecurities_mdf_itch_v1_0.calculation_convention.labels = {
  [0] = "Calculation Convention: Blank (0)",
  [1] = "Calculation Convention: Compound (1)",
  [2] = "Calculation Convention: Compound Simple (2)",
  [3] = "Calculation Convention: Simple Mm (3)",
  [4] = "Calculation Convention: Discount (4)",
  [5] = "Calculation Convention: Us Treasury (5)",
  [6] = "Calculation Convention: Proceed (6)",
}

asx_asxsecurities_mdf_itch_v1_0.calculation_convention.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.calculation_convention.labels[value] or "Calculation Convention: Unknown("..value..")"
end

-- Dissect: Calculation Convention
asx_asxsecurities_mdf_itch_v1_0.calculation_convention.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.calculation_convention.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.calculation_convention.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.calculation_convention, range, value, display)

  return offset + length, value
end

-- Category
asx_asxsecurities_mdf_itch_v1_0.category = {}

-- Size: Category
asx_asxsecurities_mdf_itch_v1_0.category.size = 1

-- Display: Category
asx_asxsecurities_mdf_itch_v1_0.category.labels = {
  [1] = "Category: Static Limits (1)",
  [2] = "Category: Dynamic Limits (2)",
}

asx_asxsecurities_mdf_itch_v1_0.category.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.category.labels[value] or "Category: Unknown("..value..")"
end

-- Dissect: Category
asx_asxsecurities_mdf_itch_v1_0.category.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.category.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.category.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.category, range, value, display)

  return offset + length, value
end

-- Cfi Code
asx_asxsecurities_mdf_itch_v1_0.cfi_code = {}

-- Size: Cfi Code
asx_asxsecurities_mdf_itch_v1_0.cfi_code.size = 6

-- Display: Cfi Code
asx_asxsecurities_mdf_itch_v1_0.cfi_code.display = function(value)
  return "Cfi Code: "..value
end

-- Dissect: Cfi Code
asx_asxsecurities_mdf_itch_v1_0.cfi_code.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.cfi_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.cfi_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Change Previous
asx_asxsecurities_mdf_itch_v1_0.change_previous = {}

-- Size: Change Previous
asx_asxsecurities_mdf_itch_v1_0.change_previous.size = 4

-- Display: Change Previous
asx_asxsecurities_mdf_itch_v1_0.change_previous.display = function(value)
  return "Change Previous: "..value
end

-- Dissect: Change Previous
asx_asxsecurities_mdf_itch_v1_0.change_previous.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.change_previous.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.change_previous.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.change_previous, range, value, display)

  return offset + length, value
end

-- Change Yesterday
asx_asxsecurities_mdf_itch_v1_0.change_yesterday = {}

-- Size: Change Yesterday
asx_asxsecurities_mdf_itch_v1_0.change_yesterday.size = 4

-- Display: Change Yesterday
asx_asxsecurities_mdf_itch_v1_0.change_yesterday.display = function(value)
  return "Change Yesterday: "..value
end

-- Dissect: Change Yesterday
asx_asxsecurities_mdf_itch_v1_0.change_yesterday.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.change_yesterday.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.change_yesterday.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.change_yesterday, range, value, display)

  return offset + length, value
end

-- Clean Price Rounding
asx_asxsecurities_mdf_itch_v1_0.clean_price_rounding = {}

-- Size: Clean Price Rounding
asx_asxsecurities_mdf_itch_v1_0.clean_price_rounding.size = 4

-- Display: Clean Price Rounding
asx_asxsecurities_mdf_itch_v1_0.clean_price_rounding.display = function(value)
  return "Clean Price Rounding: "..value
end

-- Dissect: Clean Price Rounding
asx_asxsecurities_mdf_itch_v1_0.clean_price_rounding.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.clean_price_rounding.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.clean_price_rounding.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.clean_price_rounding, range, value, display)

  return offset + length, value
end

-- Clean Price Updown
asx_asxsecurities_mdf_itch_v1_0.clean_price_updown = {}

-- Size: Clean Price Updown
asx_asxsecurities_mdf_itch_v1_0.clean_price_updown.size = 1

-- Display: Clean Price Updown
asx_asxsecurities_mdf_itch_v1_0.clean_price_updown.labels = {
  [0] = "Clean Price Updown: Blank (0)",
  [1] = "Clean Price Updown: Up (1)",
  [2] = "Clean Price Updown: Down (2)",
}

asx_asxsecurities_mdf_itch_v1_0.clean_price_updown.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.clean_price_updown.labels[value] or "Clean Price Updown: Unknown("..value..")"
end

-- Dissect: Clean Price Updown
asx_asxsecurities_mdf_itch_v1_0.clean_price_updown.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.clean_price_updown.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.clean_price_updown.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.clean_price_updown, range, value, display)

  return offset + length, value
end

-- Combination Order Book Id
asx_asxsecurities_mdf_itch_v1_0.combination_order_book_id = {}

-- Size: Combination Order Book Id
asx_asxsecurities_mdf_itch_v1_0.combination_order_book_id.size = 4

-- Display: Combination Order Book Id
asx_asxsecurities_mdf_itch_v1_0.combination_order_book_id.display = function(value)
  return "Combination Order Book Id: "..value
end

-- Dissect: Combination Order Book Id
asx_asxsecurities_mdf_itch_v1_0.combination_order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.combination_order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.combination_order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.combination_order_book_id, range, value, display)

  return offset + length, value
end

-- Commodity Code
asx_asxsecurities_mdf_itch_v1_0.commodity_code = {}

-- Size: Commodity Code
asx_asxsecurities_mdf_itch_v1_0.commodity_code.size = 4

-- Display: Commodity Code
asx_asxsecurities_mdf_itch_v1_0.commodity_code.display = function(value)
  return "Commodity Code: "..value
end

-- Dissect: Commodity Code
asx_asxsecurities_mdf_itch_v1_0.commodity_code.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.commodity_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.commodity_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.commodity_code, range, value, display)

  return offset + length, value
end

-- Contract Multiplier
asx_asxsecurities_mdf_itch_v1_0.contract_multiplier = {}

-- Size: Contract Multiplier
asx_asxsecurities_mdf_itch_v1_0.contract_multiplier.size = 8

-- Display: Contract Multiplier
asx_asxsecurities_mdf_itch_v1_0.contract_multiplier.display = function(value)
  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
asx_asxsecurities_mdf_itch_v1_0.contract_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.contract_multiplier.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.contract_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Corporate Action Code
asx_asxsecurities_mdf_itch_v1_0.corporate_action_code = {}

-- Size: Corporate Action Code
asx_asxsecurities_mdf_itch_v1_0.corporate_action_code.size = 4

-- Display: Corporate Action Code
asx_asxsecurities_mdf_itch_v1_0.corporate_action_code.labels = {
  ["CB"] = "Corporate Action Code: Cum Bonus (CB)",
  ["CC"] = "Corporate Action Code: Cum Capital Return (CC)",
  ["CD"] = "Corporate Action Code: Cum Dividend Stock (CD)",
  ["CE"] = "Corporate Action Code: Cum Entitlement (CE)",
  ["CF"] = "Corporate Action Code: Cum Takeover Offer (CF)",
  ["CI"] = "Corporate Action Code: Cum Interest (CI)",
  ["CL"] = "Corporate Action Code: Call Due (CL)",
  ["CP"] = "Corporate Action Code: Call Paid (CP)",
  ["CQ"] = "Corporate Action Code: Cum Equal Access Buyback (CQ)",
  ["CR"] = "Corporate Action Code: Cum Rights (CR)",
  ["CT"] = "Corporate Action Code: Conditional Trading (CT)",
  ["CZ"] = "Corporate Action Code: Cum Priority (CZ)",
  ["IN"] = "Corporate Action Code: Interest Only (IN)",
  ["NL"] = "Corporate Action Code: Notice Late (NL)",
  ["NR"] = "Corporate Action Code: Notice Received (NR)",
  ["NS"] = "Corporate Action Code: Under Offer Of Takeover (NS)",
  ["NX"] = "Corporate Action Code: New Ex Interest (NX)",
  ["PA"] = "Corporate Action Code: Protection Available (PA)",
  ["PU"] = "Corporate Action Code: Protection Unavailable (PU)",
  ["RA"] = "Corporate Action Code: Receiver Appointed (RA)",
  ["RC"] = "Corporate Action Code: Rollover Complete (RC)",
  ["RD"] = "Corporate Action Code: Currently Under Reconstruction (RD)",
  ["RE"] = "Corporate Action Code: Reconstructed (RE)",
  ["RP"] = "Corporate Action Code: Rollover Pending (RP)",
  ["S1"] = "Corporate Action Code: One Tenth Of A Price Step (S1)",
  ["SC"] = "Corporate Action Code: Special Condition (SC)",
  ["SD"] = "Corporate Action Code: Special Distribution (SD)",
  ["SH"] = "Corporate Action Code: Covered Short Selling Prohibited (SH)",
  ["UA"] = "Corporate Action Code: Under Adjustment (UA)",
  ["XB"] = "Corporate Action Code: Ex Bonus Issue (XB)",
  ["XC"] = "Corporate Action Code: Ex Return Of Capital (XC)",
  ["XD"] = "Corporate Action Code: Ex Dividend (XD)",
  ["XE"] = "Corporate Action Code: Ex Entitlement (XE)",
  ["XF"] = "Corporate Action Code: Ex Takeover Offer (XF)",
  ["XI"] = "Corporate Action Code: Ex Interest (XI)",
  ["XQ"] = "Corporate Action Code: Ex Equal Access Buyback (XQ)",
  ["XR"] = "Corporate Action Code: Ex Rights Issues (XR)",
  ["XZ"] = "Corporate Action Code: Ex Priority (XZ)",
}

asx_asxsecurities_mdf_itch_v1_0.corporate_action_code.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.corporate_action_code.labels[value] or "Corporate Action Code: Unknown("..value..")"
end

-- Dissect: Corporate Action Code
asx_asxsecurities_mdf_itch_v1_0.corporate_action_code.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.corporate_action_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.corporate_action_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.corporate_action_code, range, value, display)

  return offset + length, value
end

-- Corporate Action Id
asx_asxsecurities_mdf_itch_v1_0.corporate_action_id = {}

-- Size: Corporate Action Id
asx_asxsecurities_mdf_itch_v1_0.corporate_action_id.size = 4

-- Display: Corporate Action Id
asx_asxsecurities_mdf_itch_v1_0.corporate_action_id.display = function(value)
  return "Corporate Action Id: "..value
end

-- Dissect: Corporate Action Id
asx_asxsecurities_mdf_itch_v1_0.corporate_action_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.corporate_action_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.corporate_action_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.corporate_action_id, range, value, display)

  return offset + length, value
end

-- Corporate Action Status
asx_asxsecurities_mdf_itch_v1_0.corporate_action_status = {}

-- Size: Corporate Action Status
asx_asxsecurities_mdf_itch_v1_0.corporate_action_status.size = 1

-- Display: Corporate Action Status
asx_asxsecurities_mdf_itch_v1_0.corporate_action_status.labels = {
  [1] = "Corporate Action Status: CA Active (1)",
  [2] = "Corporate Action Status: CA Inactive (2)",
}

asx_asxsecurities_mdf_itch_v1_0.corporate_action_status.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.corporate_action_status.labels[value] or "Corporate Action Status: Unknown("..value..")"
end

-- Dissect: Corporate Action Status
asx_asxsecurities_mdf_itch_v1_0.corporate_action_status.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.corporate_action_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.corporate_action_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.corporate_action_status, range, value, display)

  return offset + length, value
end

-- Corporate Action Type
asx_asxsecurities_mdf_itch_v1_0.corporate_action_type = {}

-- Size: Corporate Action Type
asx_asxsecurities_mdf_itch_v1_0.corporate_action_type.size = 1

-- Display: Corporate Action Type
asx_asxsecurities_mdf_itch_v1_0.corporate_action_type.labels = {
  ["B"] = "Corporate Action Type: Basis Of Quotation (B)",
  ["S"] = "Corporate Action Type: Status Note (S)",
}

asx_asxsecurities_mdf_itch_v1_0.corporate_action_type.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.corporate_action_type.labels[value] or "Corporate Action Type: Unknown("..value..")"
end

-- Dissect: Corporate Action Type
asx_asxsecurities_mdf_itch_v1_0.corporate_action_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.corporate_action_type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = asx_asxsecurities_mdf_itch_v1_0.corporate_action_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.corporate_action_type, range, value, display)

  return offset + length, value
end

-- Coupon Div Date
asx_asxsecurities_mdf_itch_v1_0.coupon_div_date = {}

-- Size: Coupon Div Date
asx_asxsecurities_mdf_itch_v1_0.coupon_div_date.size = 4

-- Display: Coupon Div Date
asx_asxsecurities_mdf_itch_v1_0.coupon_div_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Coupon Div Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Coupon Div Date
asx_asxsecurities_mdf_itch_v1_0.coupon_div_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.coupon_div_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.coupon_div_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.coupon_div_date, range, value, display)

  return offset + length, value
end

-- Coupon Frequency
asx_asxsecurities_mdf_itch_v1_0.coupon_frequency = {}

-- Size: Coupon Frequency
asx_asxsecurities_mdf_itch_v1_0.coupon_frequency.size = 4

-- Display: Coupon Frequency
asx_asxsecurities_mdf_itch_v1_0.coupon_frequency.display = function(value)
  return "Coupon Frequency: "..value
end

-- Dissect: Coupon Frequency
asx_asxsecurities_mdf_itch_v1_0.coupon_frequency.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.coupon_frequency.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.coupon_frequency.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.coupon_frequency, range, value, display)

  return offset + length, value
end

-- Coupon From Date
asx_asxsecurities_mdf_itch_v1_0.coupon_from_date = {}

-- Size: Coupon From Date
asx_asxsecurities_mdf_itch_v1_0.coupon_from_date.size = 4

-- Display: Coupon From Date
asx_asxsecurities_mdf_itch_v1_0.coupon_from_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Coupon From Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Coupon From Date
asx_asxsecurities_mdf_itch_v1_0.coupon_from_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.coupon_from_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.coupon_from_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.coupon_from_date, range, value, display)

  return offset + length, value
end

-- Coupon Interest
asx_asxsecurities_mdf_itch_v1_0.coupon_interest = {}

-- Size: Coupon Interest
asx_asxsecurities_mdf_itch_v1_0.coupon_interest.size = 8

-- Display: Coupon Interest
asx_asxsecurities_mdf_itch_v1_0.coupon_interest.display = function(value)
  return "Coupon Interest: "..value
end

-- Dissect: Coupon Interest
asx_asxsecurities_mdf_itch_v1_0.coupon_interest.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.coupon_interest.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.coupon_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.coupon_interest, range, value, display)

  return offset + length, value
end

-- Date Books Close
asx_asxsecurities_mdf_itch_v1_0.date_books_close = {}

-- Size: Date Books Close
asx_asxsecurities_mdf_itch_v1_0.date_books_close.size = 4

-- Display: Date Books Close
asx_asxsecurities_mdf_itch_v1_0.date_books_close.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Date Books Close: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Date Books Close
asx_asxsecurities_mdf_itch_v1_0.date_books_close.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.date_books_close.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.date_books_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.date_books_close, range, value, display)

  return offset + length, value
end

-- Day Calculation Rule
asx_asxsecurities_mdf_itch_v1_0.day_calculation_rule = {}

-- Size: Day Calculation Rule
asx_asxsecurities_mdf_itch_v1_0.day_calculation_rule.size = 1

-- Display: Day Calculation Rule
asx_asxsecurities_mdf_itch_v1_0.day_calculation_rule.labels = {
  [0] = "Day Calculation Rule: Blank (0)",
  [1] = "Day Calculation Rule: Actact (1)",
  [2] = "Day Calculation Rule: Actafb (2)",
  [3] = "Day Calculation Rule: Eu 30360 (3)",
  [4] = "Day Calculation Rule: Us 30360 (4)",
  [5] = "Day Calculation Rule: Act 365 (5)",
  [6] = "Day Calculation Rule: Act 360 (6)",
}

asx_asxsecurities_mdf_itch_v1_0.day_calculation_rule.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.day_calculation_rule.labels[value] or "Day Calculation Rule: Unknown("..value..")"
end

-- Dissect: Day Calculation Rule
asx_asxsecurities_mdf_itch_v1_0.day_calculation_rule.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.day_calculation_rule.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.day_calculation_rule.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.day_calculation_rule, range, value, display)

  return offset + length, value
end

-- Day Count Convention
asx_asxsecurities_mdf_itch_v1_0.day_count_convention = {}

-- Size: Day Count Convention
asx_asxsecurities_mdf_itch_v1_0.day_count_convention.size = 1

-- Display: Day Count Convention
asx_asxsecurities_mdf_itch_v1_0.day_count_convention.labels = {
  [0] = "Day Count Convention: Blank (0)",
  [1] = "Day Count Convention: Actact (1)",
  [2] = "Day Count Convention: Actafb (2)",
  [3] = "Day Count Convention: Eu 30360 (3)",
  [4] = "Day Count Convention: Us 30360 (4)",
  [5] = "Day Count Convention: Act 365 (5)",
  [6] = "Day Count Convention: Act 360 (6)",
}

asx_asxsecurities_mdf_itch_v1_0.day_count_convention.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.day_count_convention.labels[value] or "Day Count Convention: Unknown("..value..")"
end

-- Dissect: Day Count Convention
asx_asxsecurities_mdf_itch_v1_0.day_count_convention.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.day_count_convention.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.day_count_convention.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.day_count_convention, range, value, display)

  return offset + length, value
end

-- Deal Id
asx_asxsecurities_mdf_itch_v1_0.deal_id = {}

-- Size: Deal Id
asx_asxsecurities_mdf_itch_v1_0.deal_id.size = 8

-- Display: Deal Id
asx_asxsecurities_mdf_itch_v1_0.deal_id.display = function(value)
  return "Deal Id: "..value
end

-- Dissect: Deal Id
asx_asxsecurities_mdf_itch_v1_0.deal_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.deal_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.deal_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.deal_id, range, value, display)

  return offset + length, value
end

-- Deal Source
asx_asxsecurities_mdf_itch_v1_0.deal_source = {}

-- Size: Deal Source
asx_asxsecurities_mdf_itch_v1_0.deal_source.size = 1

-- Display: Deal Source
asx_asxsecurities_mdf_itch_v1_0.deal_source.labels = {
  [0] = "Deal Source: Not Set (0)",
  [1] = "Deal Source: Matched By System Automatically (1)",
  [3] = "Deal Source: Matched Outside Exchange Different Brokers (3)",
  [5] = "Deal Source: Matched Outside Exchange One Broker (5)",
  [7] = "Deal Source: Standard Combination Matched (7)",
  [20] = "Deal Source: Trade Matched In An Auction (20)",
  [36] = "Deal Source: Tmc Order Matched (36)",
  [44] = "Deal Source: Booked Unintentional Crossing Prevention (44)",
  [45] = "Deal Source: Booked Unintentional Crossing Prevention Auction (45)",
  [46] = "Deal Source: Centre Point Preference Matching (46)",
  [47] = "Deal Source: Executions In Centre Point (47)",
  [48] = "Deal Source: Booked Centre Point Unintentional Crossing Prevention (48)",
  [50] = "Deal Source: Centre Point Any Price Block Trade (50)",
  [51] = "Deal Source: Preference Centre Point Any Price Block Trade (51)",
  [90] = "Deal Source: Post Close Auto (90)",
  [91] = "Deal Source: Post Close Booked Transaction (91)",
}

asx_asxsecurities_mdf_itch_v1_0.deal_source.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.deal_source.labels[value] or "Deal Source: Unknown("..value..")"
end

-- Dissect: Deal Source
asx_asxsecurities_mdf_itch_v1_0.deal_source.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.deal_source.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.deal_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.deal_source, range, value, display)

  return offset + length, value
end

-- Deal Time
asx_asxsecurities_mdf_itch_v1_0.deal_time = {}

-- Size: Deal Time
asx_asxsecurities_mdf_itch_v1_0.deal_time.size = 8

-- Dissect: Deal Time
asx_asxsecurities_mdf_itch_v1_0.deal_time.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.deal_time.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_asx_asxsecurities_mdf_itch_v1_0.fields.deal_time
  if asx_asxsecurities_mdf_itch_v1_0.timestamp_format == 3 then field = omi_asx_asxsecurities_mdf_itch_v1_0.fields.deal_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Decimals In Multiplier
asx_asxsecurities_mdf_itch_v1_0.decimals_in_multiplier = {}

-- Size: Decimals In Multiplier
asx_asxsecurities_mdf_itch_v1_0.decimals_in_multiplier.size = 2

-- Display: Decimals In Multiplier
asx_asxsecurities_mdf_itch_v1_0.decimals_in_multiplier.display = function(value)
  return "Decimals In Multiplier: "..value
end

-- Dissect: Decimals In Multiplier
asx_asxsecurities_mdf_itch_v1_0.decimals_in_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.decimals_in_multiplier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.decimals_in_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.decimals_in_multiplier, range, value, display)

  return offset + length, value
end

-- Deliverable
asx_asxsecurities_mdf_itch_v1_0.deliverable = {}

-- Size: Deliverable
asx_asxsecurities_mdf_itch_v1_0.deliverable.size = 1

-- Display: Deliverable
asx_asxsecurities_mdf_itch_v1_0.deliverable.labels = {
  [1] = "Deliverable: Yes (1)",
  [2] = "Deliverable: No (2)",
}

asx_asxsecurities_mdf_itch_v1_0.deliverable.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.deliverable.labels[value] or "Deliverable: Unknown("..value..")"
end

-- Dissect: Deliverable
asx_asxsecurities_mdf_itch_v1_0.deliverable.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.deliverable.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.deliverable.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.deliverable, range, value, display)

  return offset + length, value
end

-- Display Name
asx_asxsecurities_mdf_itch_v1_0.display_name = {}

-- Size: Display Name
asx_asxsecurities_mdf_itch_v1_0.display_name.size = 20

-- Display: Display Name
asx_asxsecurities_mdf_itch_v1_0.display_name.display = function(value)
  return "Display Name: "..value
end

-- Dissect: Display Name
asx_asxsecurities_mdf_itch_v1_0.display_name.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.display_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.display_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.display_name, range, value, display)

  return offset + length, value
end

-- Dividend
asx_asxsecurities_mdf_itch_v1_0.dividend = {}

-- Size: Dividend
asx_asxsecurities_mdf_itch_v1_0.dividend.size = 8

-- Display: Dividend
asx_asxsecurities_mdf_itch_v1_0.dividend.display = function(value)
  return "Dividend: "..value
end

-- Dissect: Dividend
asx_asxsecurities_mdf_itch_v1_0.dividend.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.dividend.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.dividend.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.dividend, range, value, display)

  return offset + length, value
end

-- Document Url
asx_asxsecurities_mdf_itch_v1_0.document_url = {}

-- Size: Document Url
asx_asxsecurities_mdf_itch_v1_0.document_url.size = 255

-- Display: Document Url
asx_asxsecurities_mdf_itch_v1_0.document_url.display = function(value)
  return "Document Url: "..value
end

-- Dissect: Document Url
asx_asxsecurities_mdf_itch_v1_0.document_url.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.document_url.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.document_url.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.document_url, range, value, display)

  return offset + length, value
end

-- Effective Expiration Date
asx_asxsecurities_mdf_itch_v1_0.effective_expiration_date = {}

-- Size: Effective Expiration Date
asx_asxsecurities_mdf_itch_v1_0.effective_expiration_date.size = 4

-- Display: Effective Expiration Date
asx_asxsecurities_mdf_itch_v1_0.effective_expiration_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Effective Expiration Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Effective Expiration Date
asx_asxsecurities_mdf_itch_v1_0.effective_expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.effective_expiration_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.effective_expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.effective_expiration_date, range, value, display)

  return offset + length, value
end

-- End Date
asx_asxsecurities_mdf_itch_v1_0.end_date = {}

-- Size: End Date
asx_asxsecurities_mdf_itch_v1_0.end_date.size = 4

-- Display: End Date
asx_asxsecurities_mdf_itch_v1_0.end_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("End Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: End Date
asx_asxsecurities_mdf_itch_v1_0.end_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.end_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.end_date, range, value, display)

  return offset + length, value
end

-- End Of Month Count Convention
asx_asxsecurities_mdf_itch_v1_0.end_of_month_count_convention = {}

-- Size: End Of Month Count Convention
asx_asxsecurities_mdf_itch_v1_0.end_of_month_count_convention.size = 4

-- Display: End Of Month Count Convention
asx_asxsecurities_mdf_itch_v1_0.end_of_month_count_convention.labels = {
  [0] = "End Of Month Count Convention: Blank (0)",
  [1] = "End Of Month Count Convention: Same (1)",
  [2] = "End Of Month Count Convention: Last 360 (2)",
  [3] = "End Of Month Count Convention: Last (3)",
}

asx_asxsecurities_mdf_itch_v1_0.end_of_month_count_convention.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.end_of_month_count_convention.labels[value] or "End Of Month Count Convention: Unknown("..value..")"
end

-- Dissect: End Of Month Count Convention
asx_asxsecurities_mdf_itch_v1_0.end_of_month_count_convention.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.end_of_month_count_convention.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.end_of_month_count_convention.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.end_of_month_count_convention, range, value, display)

  return offset + length, value
end

-- Equilibrium Price
asx_asxsecurities_mdf_itch_v1_0.equilibrium_price = {}

-- Size: Equilibrium Price
asx_asxsecurities_mdf_itch_v1_0.equilibrium_price.size = 8

-- Display: Equilibrium Price
asx_asxsecurities_mdf_itch_v1_0.equilibrium_price.display = function(value)
  return "Equilibrium Price: "..value
end

-- Translate: Equilibrium Price
asx_asxsecurities_mdf_itch_v1_0.equilibrium_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Equilibrium Price
asx_asxsecurities_mdf_itch_v1_0.equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.equilibrium_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxsecurities_mdf_itch_v1_0.equilibrium_price.translate(raw)
  local display = asx_asxsecurities_mdf_itch_v1_0.equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.equilibrium_price, range, value, display)

  return offset + length, value
end

-- Equilibrium Quantity
asx_asxsecurities_mdf_itch_v1_0.equilibrium_quantity = {}

-- Size: Equilibrium Quantity
asx_asxsecurities_mdf_itch_v1_0.equilibrium_quantity.size = 8

-- Display: Equilibrium Quantity
asx_asxsecurities_mdf_itch_v1_0.equilibrium_quantity.display = function(value)
  return "Equilibrium Quantity: "..value
end

-- Dissect: Equilibrium Quantity
asx_asxsecurities_mdf_itch_v1_0.equilibrium_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.equilibrium_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.equilibrium_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.equilibrium_quantity, range, value, display)

  return offset + length, value
end

-- Event Code
asx_asxsecurities_mdf_itch_v1_0.event_code = {}

-- Size: Event Code
asx_asxsecurities_mdf_itch_v1_0.event_code.size = 1

-- Display: Event Code
asx_asxsecurities_mdf_itch_v1_0.event_code.labels = {
  ["O"] = "Event Code: Start Of Messages (O)",
  ["C"] = "Event Code: End Of Messages (C)",
  ["E"] = "Event Code: Done For Day (E)",
}

asx_asxsecurities_mdf_itch_v1_0.event_code.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
asx_asxsecurities_mdf_itch_v1_0.event_code.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.event_code.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = asx_asxsecurities_mdf_itch_v1_0.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Ex Coupon Period
asx_asxsecurities_mdf_itch_v1_0.ex_coupon_period = {}

-- Size: Ex Coupon Period
asx_asxsecurities_mdf_itch_v1_0.ex_coupon_period.size = 4

-- Display: Ex Coupon Period
asx_asxsecurities_mdf_itch_v1_0.ex_coupon_period.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Ex Coupon Period: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Ex Coupon Period
asx_asxsecurities_mdf_itch_v1_0.ex_coupon_period.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.ex_coupon_period.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.ex_coupon_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.ex_coupon_period, range, value, display)

  return offset + length, value
end

-- Exchange Id
asx_asxsecurities_mdf_itch_v1_0.exchange_id = {}

-- Size: Exchange Id
asx_asxsecurities_mdf_itch_v1_0.exchange_id.size = 4

-- Display: Exchange Id
asx_asxsecurities_mdf_itch_v1_0.exchange_id.display = function(value)
  return "Exchange Id: "..value
end

-- Dissect: Exchange Id
asx_asxsecurities_mdf_itch_v1_0.exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.exchange_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.exchange_id, range, value, display)

  return offset + length, value
end

-- Exchange Name
asx_asxsecurities_mdf_itch_v1_0.exchange_name = {}

-- Size: Exchange Name
asx_asxsecurities_mdf_itch_v1_0.exchange_name.size = 32

-- Display: Exchange Name
asx_asxsecurities_mdf_itch_v1_0.exchange_name.display = function(value)
  return "Exchange Name: "..value
end

-- Dissect: Exchange Name
asx_asxsecurities_mdf_itch_v1_0.exchange_name.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.exchange_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.exchange_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.exchange_name, range, value, display)

  return offset + length, value
end

-- Exchange Order Type
asx_asxsecurities_mdf_itch_v1_0.exchange_order_type = {}

-- Size: Exchange Order Type
asx_asxsecurities_mdf_itch_v1_0.exchange_order_type.size = 4

-- Display: Exchange Order Type
asx_asxsecurities_mdf_itch_v1_0.exchange_order_type.labels = {
  [0] = "Exchange Order Type: Undefined (0)",
  [8] = "Exchange Order Type: Price Stabilisation (8)",
  [64] = "Exchange Order Type: Centre Point (64)",
}

asx_asxsecurities_mdf_itch_v1_0.exchange_order_type.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.exchange_order_type.labels[value] or "Exchange Order Type: Unknown("..value..")"
end

-- Dissect: Exchange Order Type
asx_asxsecurities_mdf_itch_v1_0.exchange_order_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.exchange_order_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.exchange_order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.exchange_order_type, range, value, display)

  return offset + length, value
end

-- Expiration Date
asx_asxsecurities_mdf_itch_v1_0.expiration_date = {}

-- Size: Expiration Date
asx_asxsecurities_mdf_itch_v1_0.expiration_date.size = 4

-- Display: Expiration Date
asx_asxsecurities_mdf_itch_v1_0.expiration_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Expiration Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Expiration Date
asx_asxsecurities_mdf_itch_v1_0.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.expiration_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Externally Price Sourced
asx_asxsecurities_mdf_itch_v1_0.externally_price_sourced = {}

-- Size: Externally Price Sourced
asx_asxsecurities_mdf_itch_v1_0.externally_price_sourced.size = 1

-- Display: Externally Price Sourced
asx_asxsecurities_mdf_itch_v1_0.externally_price_sourced.labels = {
  [1] = "Externally Price Sourced: Yes (1)",
  [2] = "Externally Price Sourced: No (2)",
}

asx_asxsecurities_mdf_itch_v1_0.externally_price_sourced.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.externally_price_sourced.labels[value] or "Externally Price Sourced: Unknown("..value..")"
end

-- Dissect: Externally Price Sourced
asx_asxsecurities_mdf_itch_v1_0.externally_price_sourced.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.externally_price_sourced.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.externally_price_sourced.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.externally_price_sourced, range, value, display)

  return offset + length, value
end

-- Financial Product
asx_asxsecurities_mdf_itch_v1_0.financial_product = {}

-- Size: Financial Product
asx_asxsecurities_mdf_itch_v1_0.financial_product.size = 1

-- Display: Financial Product
asx_asxsecurities_mdf_itch_v1_0.financial_product.labels = {
  [0] = "Financial Product: Not Applicable (0)",
  [1] = "Financial Product: Option (1)",
  [2] = "Financial Product: Forward (2)",
  [3] = "Financial Product: Future (3)",
  [4] = "Financial Product: Fra (4)",
  [5] = "Financial Product: Cash (5)",
  [6] = "Financial Product: Payment (6)",
  [7] = "Financial Product: Exchange Rate (7)",
  [8] = "Financial Product: Interest Rate Swap (8)",
  [9] = "Financial Product: Repo (9)",
  [10] = "Financial Product: Synthetic Box Leg Reference (10)",
  [11] = "Financial Product: Standard Combination (11)",
  [12] = "Financial Product: Guarantee (12)",
  [13] = "Financial Product: Otc General (13)",
  [14] = "Financial Product: Equity Warrant (14)",
  [15] = "Financial Product: Security Lending (15)",
}

asx_asxsecurities_mdf_itch_v1_0.financial_product.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.financial_product.labels[value] or "Financial Product: Unknown("..value..")"
end

-- Dissect: Financial Product
asx_asxsecurities_mdf_itch_v1_0.financial_product.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.financial_product.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.financial_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.financial_product, range, value, display)

  return offset + length, value
end

-- First Settlement Date
asx_asxsecurities_mdf_itch_v1_0.first_settlement_date = {}

-- Size: First Settlement Date
asx_asxsecurities_mdf_itch_v1_0.first_settlement_date.size = 4

-- Display: First Settlement Date
asx_asxsecurities_mdf_itch_v1_0.first_settlement_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("First Settlement Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: First Settlement Date
asx_asxsecurities_mdf_itch_v1_0.first_settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.first_settlement_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.first_settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.first_settlement_date, range, value, display)

  return offset + length, value
end

-- Fixed Income Type
asx_asxsecurities_mdf_itch_v1_0.fixed_income_type = {}

-- Size: Fixed Income Type
asx_asxsecurities_mdf_itch_v1_0.fixed_income_type.size = 1

-- Display: Fixed Income Type
asx_asxsecurities_mdf_itch_v1_0.fixed_income_type.labels = {
  [0] = "Fixed Income Type: Not Applicable (0)",
  [1] = "Fixed Income Type: Bill (1)",
  [2] = "Fixed Income Type: Bond (2)",
  [3] = "Fixed Income Type: Index Linked Bonds (3)",
  [4] = "Fixed Income Type: Bond Floating (4)",
  [5] = "Fixed Income Type: Lottery Bond (5)",
  [6] = "Fixed Income Type: Convertible Bond (6)",
  [7] = "Fixed Income Type: Structured Bond (7)",
  [8] = "Fixed Income Type: Fixing (8)",
  [9] = "Fixed Income Type: Credit Certificates (9)",
}

asx_asxsecurities_mdf_itch_v1_0.fixed_income_type.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.fixed_income_type.labels[value] or "Fixed Income Type: Unknown("..value..")"
end

-- Dissect: Fixed Income Type
asx_asxsecurities_mdf_itch_v1_0.fixed_income_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.fixed_income_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.fixed_income_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.fixed_income_type, range, value, display)

  return offset + length, value
end

-- Foreign Ownership Restriction
asx_asxsecurities_mdf_itch_v1_0.foreign_ownership_restriction = {}

-- Size: Foreign Ownership Restriction
asx_asxsecurities_mdf_itch_v1_0.foreign_ownership_restriction.size = 1

-- Display: Foreign Ownership Restriction
asx_asxsecurities_mdf_itch_v1_0.foreign_ownership_restriction.labels = {
  [1] = "Foreign Ownership Restriction: Yes (1)",
  [2] = "Foreign Ownership Restriction: No (2)",
}

asx_asxsecurities_mdf_itch_v1_0.foreign_ownership_restriction.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.foreign_ownership_restriction.labels[value] or "Foreign Ownership Restriction: Unknown("..value..")"
end

-- Dissect: Foreign Ownership Restriction
asx_asxsecurities_mdf_itch_v1_0.foreign_ownership_restriction.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.foreign_ownership_restriction.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.foreign_ownership_restriction.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.foreign_ownership_restriction, range, value, display)

  return offset + length, value
end

-- Header
asx_asxsecurities_mdf_itch_v1_0.header = {}

-- Size: Header
asx_asxsecurities_mdf_itch_v1_0.header.size = 80

-- Display: Header
asx_asxsecurities_mdf_itch_v1_0.header.display = function(value)
  return "Header: "..value
end

-- Dissect: Header
asx_asxsecurities_mdf_itch_v1_0.header.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.header.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.header.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.header, range, value, display)

  return offset + length, value
end

-- High Price
asx_asxsecurities_mdf_itch_v1_0.high_price = {}

-- Size: High Price
asx_asxsecurities_mdf_itch_v1_0.high_price.size = 8

-- Display: High Price
asx_asxsecurities_mdf_itch_v1_0.high_price.display = function(value)
  return "High Price: "..value
end

-- Translate: High Price
asx_asxsecurities_mdf_itch_v1_0.high_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: High Price
asx_asxsecurities_mdf_itch_v1_0.high_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.high_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxsecurities_mdf_itch_v1_0.high_price.translate(raw)
  local display = asx_asxsecurities_mdf_itch_v1_0.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.high_price, range, value, display)

  return offset + length, value
end

-- Index Market
asx_asxsecurities_mdf_itch_v1_0.index_market = {}

-- Size: Index Market
asx_asxsecurities_mdf_itch_v1_0.index_market.size = 1

-- Display: Index Market
asx_asxsecurities_mdf_itch_v1_0.index_market.labels = {
  [1] = "Index Market: Yes (1)",
  [2] = "Index Market: No (2)",
}

asx_asxsecurities_mdf_itch_v1_0.index_market.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.index_market.labels[value] or "Index Market: Unknown("..value..")"
end

-- Dissect: Index Market
asx_asxsecurities_mdf_itch_v1_0.index_market.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.index_market.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.index_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.index_market, range, value, display)

  return offset + length, value
end

-- Instrument State Level
asx_asxsecurities_mdf_itch_v1_0.instrument_state_level = {}

-- Size: Instrument State Level
asx_asxsecurities_mdf_itch_v1_0.instrument_state_level.size = 1

-- Display: Instrument State Level
asx_asxsecurities_mdf_itch_v1_0.instrument_state_level.labels = {
  [1] = "Instrument State Level: Market (1)",
  [2] = "Instrument State Level: Instrument Type (2)",
  [4] = "Instrument State Level: Instrument Series (4)",
  [5] = "Instrument State Level: Underlying (5)",
}

asx_asxsecurities_mdf_itch_v1_0.instrument_state_level.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.instrument_state_level.labels[value] or "Instrument State Level: Unknown("..value..")"
end

-- Dissect: Instrument State Level
asx_asxsecurities_mdf_itch_v1_0.instrument_state_level.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.instrument_state_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.instrument_state_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.instrument_state_level, range, value, display)

  return offset + length, value
end

-- Instrument Type
asx_asxsecurities_mdf_itch_v1_0.instrument_type = {}

-- Size: Instrument Type
asx_asxsecurities_mdf_itch_v1_0.instrument_type.size = 4

-- Display: Instrument Type
asx_asxsecurities_mdf_itch_v1_0.instrument_type.display = function(value)
  return "Instrument Type: "..value
end

-- Dissect: Instrument Type
asx_asxsecurities_mdf_itch_v1_0.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.instrument_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Isin
asx_asxsecurities_mdf_itch_v1_0.isin = {}

-- Size: Isin
asx_asxsecurities_mdf_itch_v1_0.isin.size = 12

-- Display: Isin
asx_asxsecurities_mdf_itch_v1_0.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
asx_asxsecurities_mdf_itch_v1_0.isin.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.isin, range, value, display)

  return offset + length, value
end

-- Issue Date
asx_asxsecurities_mdf_itch_v1_0.issue_date = {}

-- Size: Issue Date
asx_asxsecurities_mdf_itch_v1_0.issue_date.size = 4

-- Display: Issue Date
asx_asxsecurities_mdf_itch_v1_0.issue_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Issue Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Issue Date
asx_asxsecurities_mdf_itch_v1_0.issue_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.issue_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.issue_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.issue_date, range, value, display)

  return offset + length, value
end

-- Issuer
asx_asxsecurities_mdf_itch_v1_0.issuer = {}

-- Size: Issuer
asx_asxsecurities_mdf_itch_v1_0.issuer.size = 32

-- Display: Issuer
asx_asxsecurities_mdf_itch_v1_0.issuer.display = function(value)
  return "Issuer: "..value
end

-- Dissect: Issuer
asx_asxsecurities_mdf_itch_v1_0.issuer.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.issuer.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.issuer.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.issuer, range, value, display)

  return offset + length, value
end

-- Items Url
asx_asxsecurities_mdf_itch_v1_0.items_url = {}

-- Size: Items Url
asx_asxsecurities_mdf_itch_v1_0.items_url.size = 1

-- Display: Items Url
asx_asxsecurities_mdf_itch_v1_0.items_url.display = function(value)
  return "Items Url: "..value
end

-- Dissect: Items Url
asx_asxsecurities_mdf_itch_v1_0.items_url.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.items_url.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.items_url.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.items_url, range, value, display)

  return offset + length, value
end

-- Last Auction Price
asx_asxsecurities_mdf_itch_v1_0.last_auction_price = {}

-- Size: Last Auction Price
asx_asxsecurities_mdf_itch_v1_0.last_auction_price.size = 8

-- Display: Last Auction Price
asx_asxsecurities_mdf_itch_v1_0.last_auction_price.display = function(value)
  return "Last Auction Price: "..value
end

-- Translate: Last Auction Price
asx_asxsecurities_mdf_itch_v1_0.last_auction_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Auction Price
asx_asxsecurities_mdf_itch_v1_0.last_auction_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.last_auction_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxsecurities_mdf_itch_v1_0.last_auction_price.translate(raw)
  local display = asx_asxsecurities_mdf_itch_v1_0.last_auction_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.last_auction_price, range, value, display)

  return offset + length, value
end

-- Last Price
asx_asxsecurities_mdf_itch_v1_0.last_price = {}

-- Size: Last Price
asx_asxsecurities_mdf_itch_v1_0.last_price.size = 8

-- Display: Last Price
asx_asxsecurities_mdf_itch_v1_0.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
asx_asxsecurities_mdf_itch_v1_0.last_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Price
asx_asxsecurities_mdf_itch_v1_0.last_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.last_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxsecurities_mdf_itch_v1_0.last_price.translate(raw)
  local display = asx_asxsecurities_mdf_itch_v1_0.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.last_price, range, value, display)

  return offset + length, value
end

-- Last Quantity
asx_asxsecurities_mdf_itch_v1_0.last_quantity = {}

-- Size: Last Quantity
asx_asxsecurities_mdf_itch_v1_0.last_quantity.size = 8

-- Display: Last Quantity
asx_asxsecurities_mdf_itch_v1_0.last_quantity.display = function(value)
  return "Last Quantity: "..value
end

-- Dissect: Last Quantity
asx_asxsecurities_mdf_itch_v1_0.last_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.last_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.last_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.last_quantity, range, value, display)

  return offset + length, value
end

-- Last Traded Date
asx_asxsecurities_mdf_itch_v1_0.last_traded_date = {}

-- Size: Last Traded Date
asx_asxsecurities_mdf_itch_v1_0.last_traded_date.size = 4

-- Display: Last Traded Date
asx_asxsecurities_mdf_itch_v1_0.last_traded_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Last Traded Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Last Traded Date
asx_asxsecurities_mdf_itch_v1_0.last_traded_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.last_traded_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.last_traded_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.last_traded_date, range, value, display)

  return offset + length, value
end

-- Last Trading Time
asx_asxsecurities_mdf_itch_v1_0.last_trading_time = {}

-- Size: Last Trading Time
asx_asxsecurities_mdf_itch_v1_0.last_trading_time.size = 6

-- Display: Last Trading Time
asx_asxsecurities_mdf_itch_v1_0.last_trading_time.display = function(value)
  return "Last Trading Time: "..value
end

-- Dissect: Last Trading Time
asx_asxsecurities_mdf_itch_v1_0.last_trading_time.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.last_trading_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.last_trading_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.last_trading_time, range, value, display)

  return offset + length, value
end

-- Leg Order Book Id
asx_asxsecurities_mdf_itch_v1_0.leg_order_book_id = {}

-- Size: Leg Order Book Id
asx_asxsecurities_mdf_itch_v1_0.leg_order_book_id.size = 4

-- Display: Leg Order Book Id
asx_asxsecurities_mdf_itch_v1_0.leg_order_book_id.display = function(value)
  return "Leg Order Book Id: "..value
end

-- Dissect: Leg Order Book Id
asx_asxsecurities_mdf_itch_v1_0.leg_order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.leg_order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.leg_order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.leg_order_book_id, range, value, display)

  return offset + length, value
end

-- Leg Ratio
asx_asxsecurities_mdf_itch_v1_0.leg_ratio = {}

-- Size: Leg Ratio
asx_asxsecurities_mdf_itch_v1_0.leg_ratio.size = 4

-- Display: Leg Ratio
asx_asxsecurities_mdf_itch_v1_0.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
asx_asxsecurities_mdf_itch_v1_0.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Side
asx_asxsecurities_mdf_itch_v1_0.leg_side = {}

-- Size: Leg Side
asx_asxsecurities_mdf_itch_v1_0.leg_side.size = 1

-- Display: Leg Side
asx_asxsecurities_mdf_itch_v1_0.leg_side.labels = {
  ["B"] = "Leg Side: Buy Leg (B)",
  ["C"] = "Leg Side: Sell Leg (C)",
}

asx_asxsecurities_mdf_itch_v1_0.leg_side.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.leg_side.labels[value] or "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
asx_asxsecurities_mdf_itch_v1_0.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.leg_side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = asx_asxsecurities_mdf_itch_v1_0.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Level
asx_asxsecurities_mdf_itch_v1_0.level = {}

-- Size: Level
asx_asxsecurities_mdf_itch_v1_0.level.size = 1

-- Display: Level
asx_asxsecurities_mdf_itch_v1_0.level.display = function(value)
  return "Level: "..value
end

-- Dissect: Level
asx_asxsecurities_mdf_itch_v1_0.level.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.level.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.level, range, value, display)

  return offset + length, value
end

-- Level Update Action
asx_asxsecurities_mdf_itch_v1_0.level_update_action = {}

-- Size: Level Update Action
asx_asxsecurities_mdf_itch_v1_0.level_update_action.size = 1

-- Display: Level Update Action
asx_asxsecurities_mdf_itch_v1_0.level_update_action.labels = {
  ["N"] = "Level Update Action: New (N)",
  ["C"] = "Level Update Action: Change (C)",
  ["D"] = "Level Update Action: Delete From (D)",
}

asx_asxsecurities_mdf_itch_v1_0.level_update_action.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.level_update_action.labels[value] or "Level Update Action: Unknown("..value..")"
end

-- Dissect: Level Update Action
asx_asxsecurities_mdf_itch_v1_0.level_update_action.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.level_update_action.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = asx_asxsecurities_mdf_itch_v1_0.level_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.level_update_action, range, value, display)

  return offset + length, value
end

-- Long Name
asx_asxsecurities_mdf_itch_v1_0.long_name = {}

-- Size: Long Name
asx_asxsecurities_mdf_itch_v1_0.long_name.size = 32

-- Display: Long Name
asx_asxsecurities_mdf_itch_v1_0.long_name.display = function(value)
  return "Long Name: "..value
end

-- Dissect: Long Name
asx_asxsecurities_mdf_itch_v1_0.long_name.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.long_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.long_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.long_name, range, value, display)

  return offset + length, value
end

-- Low Price
asx_asxsecurities_mdf_itch_v1_0.low_price = {}

-- Size: Low Price
asx_asxsecurities_mdf_itch_v1_0.low_price.size = 8

-- Display: Low Price
asx_asxsecurities_mdf_itch_v1_0.low_price.display = function(value)
  return "Low Price: "..value
end

-- Translate: Low Price
asx_asxsecurities_mdf_itch_v1_0.low_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Low Price
asx_asxsecurities_mdf_itch_v1_0.low_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.low_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxsecurities_mdf_itch_v1_0.low_price.translate(raw)
  local display = asx_asxsecurities_mdf_itch_v1_0.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.low_price, range, value, display)

  return offset + length, value
end

-- Lower Limit
asx_asxsecurities_mdf_itch_v1_0.lower_limit = {}

-- Size: Lower Limit
asx_asxsecurities_mdf_itch_v1_0.lower_limit.size = 8

-- Display: Lower Limit
asx_asxsecurities_mdf_itch_v1_0.lower_limit.display = function(value)
  return "Lower Limit: "..value
end

-- Translate: Lower Limit
asx_asxsecurities_mdf_itch_v1_0.lower_limit.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Lower Limit
asx_asxsecurities_mdf_itch_v1_0.lower_limit.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.lower_limit.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxsecurities_mdf_itch_v1_0.lower_limit.translate(raw)
  local display = asx_asxsecurities_mdf_itch_v1_0.lower_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.lower_limit, range, value, display)

  return offset + length, value
end

-- Market Id
asx_asxsecurities_mdf_itch_v1_0.market_id = {}

-- Size: Market Id
asx_asxsecurities_mdf_itch_v1_0.market_id.size = 4

-- Display: Market Id
asx_asxsecurities_mdf_itch_v1_0.market_id.display = function(value)
  return "Market Id: "..value
end

-- Dissect: Market Id
asx_asxsecurities_mdf_itch_v1_0.market_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.market_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Name
asx_asxsecurities_mdf_itch_v1_0.market_name = {}

-- Size: Market Name
asx_asxsecurities_mdf_itch_v1_0.market_name.size = 32

-- Display: Market Name
asx_asxsecurities_mdf_itch_v1_0.market_name.display = function(value)
  return "Market Name: "..value
end

-- Dissect: Market Name
asx_asxsecurities_mdf_itch_v1_0.market_name.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.market_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.market_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.market_name, range, value, display)

  return offset + length, value
end

-- Market Type
asx_asxsecurities_mdf_itch_v1_0.market_type = {}

-- Size: Market Type
asx_asxsecurities_mdf_itch_v1_0.market_type.size = 1

-- Display: Market Type
asx_asxsecurities_mdf_itch_v1_0.market_type.labels = {
  [1] = "Market Type: Stock (1)",
  [2] = "Market Type: Fixed Income (2)",
  [3] = "Market Type: Currency (3)",
  [4] = "Market Type: Power Energy (4)",
  [5] = "Market Type: Commodity (5)",
  [6] = "Market Type: Payment (6)",
  [7] = "Market Type: Index (7)",
  [8] = "Market Type: General (8)",
}

asx_asxsecurities_mdf_itch_v1_0.market_type.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.market_type.labels[value] or "Market Type: Unknown("..value..")"
end

-- Dissect: Market Type
asx_asxsecurities_mdf_itch_v1_0.market_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.market_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.market_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.market_type, range, value, display)

  return offset + length, value
end

-- Maturity Date
asx_asxsecurities_mdf_itch_v1_0.maturity_date = {}

-- Size: Maturity Date
asx_asxsecurities_mdf_itch_v1_0.maturity_date.size = 4

-- Display: Maturity Date
asx_asxsecurities_mdf_itch_v1_0.maturity_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Maturity Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Maturity Date
asx_asxsecurities_mdf_itch_v1_0.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.maturity_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Max Order Quantity
asx_asxsecurities_mdf_itch_v1_0.max_order_quantity = {}

-- Size: Max Order Quantity
asx_asxsecurities_mdf_itch_v1_0.max_order_quantity.size = 8

-- Display: Max Order Quantity
asx_asxsecurities_mdf_itch_v1_0.max_order_quantity.display = function(value)
  return "Max Order Quantity: "..value
end

-- Dissect: Max Order Quantity
asx_asxsecurities_mdf_itch_v1_0.max_order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.max_order_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.max_order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.max_order_quantity, range, value, display)

  return offset + length, value
end

-- Maximum Level
asx_asxsecurities_mdf_itch_v1_0.maximum_level = {}

-- Size: Maximum Level
asx_asxsecurities_mdf_itch_v1_0.maximum_level.size = 1

-- Display: Maximum Level
asx_asxsecurities_mdf_itch_v1_0.maximum_level.display = function(value)
  return "Maximum Level: "..value
end

-- Dissect: Maximum Level
asx_asxsecurities_mdf_itch_v1_0.maximum_level.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.maximum_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.maximum_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.maximum_level, range, value, display)

  return offset + length, value
end

-- Message Count
asx_asxsecurities_mdf_itch_v1_0.message_count = {}

-- Size: Message Count
asx_asxsecurities_mdf_itch_v1_0.message_count.size = 2

-- Display: Message Count
asx_asxsecurities_mdf_itch_v1_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
asx_asxsecurities_mdf_itch_v1_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Information Type
asx_asxsecurities_mdf_itch_v1_0.message_information_type = {}

-- Size: Message Information Type
asx_asxsecurities_mdf_itch_v1_0.message_information_type.size = 1

-- Display: Message Information Type
asx_asxsecurities_mdf_itch_v1_0.message_information_type.labels = {
  [1] = "Message Information Type: Company Announcement (1)",
  [2] = "Message Information Type: Market Message (2)",
  [3] = "Message Information Type: Static Line (3)",
  [4] = "Message Information Type: Notice Received (4)",
}

asx_asxsecurities_mdf_itch_v1_0.message_information_type.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.message_information_type.labels[value] or "Message Information Type: Unknown("..value..")"
end

-- Dissect: Message Information Type
asx_asxsecurities_mdf_itch_v1_0.message_information_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.message_information_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.message_information_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.message_information_type, range, value, display)

  return offset + length, value
end

-- Message Item
asx_asxsecurities_mdf_itch_v1_0.message_item = {}

-- Size: Message Item
asx_asxsecurities_mdf_itch_v1_0.message_item.size = 80

-- Display: Message Item
asx_asxsecurities_mdf_itch_v1_0.message_item.display = function(value)
  return "Message Item: "..value
end

-- Dissect: Message Item
asx_asxsecurities_mdf_itch_v1_0.message_item.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.message_item.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.message_item.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.message_item, range, value, display)

  return offset + length, value
end

-- Message Length
asx_asxsecurities_mdf_itch_v1_0.message_length = {}

-- Size: Message Length
asx_asxsecurities_mdf_itch_v1_0.message_length.size = 2

-- Display: Message Length
asx_asxsecurities_mdf_itch_v1_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
asx_asxsecurities_mdf_itch_v1_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Priority
asx_asxsecurities_mdf_itch_v1_0.message_priority = {}

-- Size: Message Priority
asx_asxsecurities_mdf_itch_v1_0.message_priority.size = 1

-- Display: Message Priority
asx_asxsecurities_mdf_itch_v1_0.message_priority.labels = {
  [1] = "Message Priority: Low Priority (1)",
  [2] = "Message Priority: Medium Priority (2)",
  [3] = "Message Priority: High Priority (3)",
  [4] = "Message Priority: Critical Priority (4)",
}

asx_asxsecurities_mdf_itch_v1_0.message_priority.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.message_priority.labels[value] or "Message Priority: Unknown("..value..")"
end

-- Dissect: Message Priority
asx_asxsecurities_mdf_itch_v1_0.message_priority.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.message_priority.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.message_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.message_priority, range, value, display)

  return offset + length, value
end

-- Message Source
asx_asxsecurities_mdf_itch_v1_0.message_source = {}

-- Size: Message Source
asx_asxsecurities_mdf_itch_v1_0.message_source.size = 80

-- Display: Message Source
asx_asxsecurities_mdf_itch_v1_0.message_source.display = function(value)
  return "Message Source: "..value
end

-- Dissect: Message Source
asx_asxsecurities_mdf_itch_v1_0.message_source.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.message_source.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.message_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.message_source, range, value, display)

  return offset + length, value
end

-- Message Type
asx_asxsecurities_mdf_itch_v1_0.message_type = {}

-- Size: Message Type
asx_asxsecurities_mdf_itch_v1_0.message_type.size = 1

-- Display: Message Type
asx_asxsecurities_mdf_itch_v1_0.message_type.labels = {
  ["T"] = "Message Type: Seconds Message (T)",
  ["R"] = "Message Type: Order Book Directory Message (R)",
  ["e"] = "Message Type: Exchange Directory Message (e)",
  ["m"] = "Message Type: Market Directory Message (m)",
  ["M"] = "Message Type: Combination Order Book Leg Directory Message (M)",
  ["L"] = "Message Type: Tick Size Table Entry Message (L)",
  ["C"] = "Message Type: Corporate Action Entry Message (C)",
  ["f"] = "Message Type: Order Book Directory Extension Message (f)",
  ["S"] = "Message Type: System Event Message (S)",
  ["O"] = "Message Type: Order Book State Message (O)",
  ["B"] = "Message Type: Business Date Message (B)",
  ["g"] = "Message Type: End Of Recovery Message (g)",
  ["t"] = "Message Type: Instrument Status Message (t)",
  ["Z"] = "Message Type: Equilibrium Price Message (Z)",
  ["b"] = "Message Type: Market By Price Message (b)",
  ["I"] = "Message Type: Trade Statistics Message (I)",
  ["Q"] = "Message Type: Reference Price Message (Q)",
  ["J"] = "Message Type: Index Message (J)",
  ["h"] = "Message Type: Open Interest Message (h)",
  ["i"] = "Message Type: Trade Ticker Message (i)",
  ["k"] = "Message Type: Price Limits Message (k)",
  ["N"] = "Message Type: Market Announcement Message (N)",
  ["G"] = "Message Type: End Of Snapshot Message (G)",
}

asx_asxsecurities_mdf_itch_v1_0.message_type.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
asx_asxsecurities_mdf_itch_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_asxsecurities_mdf_itch_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Min Order Quantity
asx_asxsecurities_mdf_itch_v1_0.min_order_quantity = {}

-- Size: Min Order Quantity
asx_asxsecurities_mdf_itch_v1_0.min_order_quantity.size = 8

-- Display: Min Order Quantity
asx_asxsecurities_mdf_itch_v1_0.min_order_quantity.display = function(value)
  return "Min Order Quantity: "..value
end

-- Dissect: Min Order Quantity
asx_asxsecurities_mdf_itch_v1_0.min_order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.min_order_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.min_order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.min_order_quantity, range, value, display)

  return offset + length, value
end

-- Minimum Value For Initial Trade Report
asx_asxsecurities_mdf_itch_v1_0.minimum_value_for_initial_trade_report = {}

-- Size: Minimum Value For Initial Trade Report
asx_asxsecurities_mdf_itch_v1_0.minimum_value_for_initial_trade_report.size = 8

-- Display: Minimum Value For Initial Trade Report
asx_asxsecurities_mdf_itch_v1_0.minimum_value_for_initial_trade_report.display = function(value)
  return "Minimum Value For Initial Trade Report: "..value
end

-- Dissect: Minimum Value For Initial Trade Report
asx_asxsecurities_mdf_itch_v1_0.minimum_value_for_initial_trade_report.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.minimum_value_for_initial_trade_report.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.minimum_value_for_initial_trade_report.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.minimum_value_for_initial_trade_report, range, value, display)

  return offset + length, value
end

-- Multiplier
asx_asxsecurities_mdf_itch_v1_0.multiplier = {}

-- Size: Multiplier
asx_asxsecurities_mdf_itch_v1_0.multiplier.size = 8

-- Display: Multiplier
asx_asxsecurities_mdf_itch_v1_0.multiplier.display = function(value)
  return "Multiplier: "..value
end

-- Dissect: Multiplier
asx_asxsecurities_mdf_itch_v1_0.multiplier.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.multiplier.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.multiplier, range, value, display)

  return offset + length, value
end

-- Name Of The Instrument State Level
asx_asxsecurities_mdf_itch_v1_0.name_of_the_instrument_state_level = {}

-- Size: Name Of The Instrument State Level
asx_asxsecurities_mdf_itch_v1_0.name_of_the_instrument_state_level.size = 32

-- Display: Name Of The Instrument State Level
asx_asxsecurities_mdf_itch_v1_0.name_of_the_instrument_state_level.display = function(value)
  return "Name Of The Instrument State Level: "..value
end

-- Dissect: Name Of The Instrument State Level
asx_asxsecurities_mdf_itch_v1_0.name_of_the_instrument_state_level.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.name_of_the_instrument_state_level.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.name_of_the_instrument_state_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.name_of_the_instrument_state_level, range, value, display)

  return offset + length, value
end

-- Nominal Value
asx_asxsecurities_mdf_itch_v1_0.nominal_value = {}

-- Size: Nominal Value
asx_asxsecurities_mdf_itch_v1_0.nominal_value.size = 8

-- Display: Nominal Value
asx_asxsecurities_mdf_itch_v1_0.nominal_value.display = function(value)
  return "Nominal Value: "..value
end

-- Dissect: Nominal Value
asx_asxsecurities_mdf_itch_v1_0.nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.nominal_value, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In
asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in = {}

-- Size: Number Of Decimals In
asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in.size = 2

-- Display: Number Of Decimals In
asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in.display = function(value)
  return "Number Of Decimals In: "..value
end

-- Dissect: Number Of Decimals In
asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_decimals_in, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Nominal Value
asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_nominal_value = {}

-- Size: Number Of Decimals In Nominal Value
asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_nominal_value.size = 2

-- Display: Number Of Decimals In Nominal Value
asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_nominal_value.display = function(value)
  return "Number Of Decimals In Nominal Value: "..value
end

-- Dissect: Number Of Decimals In Nominal Value
asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_decimals_in_nominal_value, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Price
asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_price = {}

-- Size: Number Of Decimals In Price
asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_price.size = 2

-- Display: Number Of Decimals In Price
asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_price.display = function(value)
  return "Number Of Decimals In Price: "..value
end

-- Dissect: Number Of Decimals In Price
asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_decimals_in_price, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Strike Price
asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_strike_price = {}

-- Size: Number Of Decimals In Strike Price
asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_strike_price.size = 2

-- Display: Number Of Decimals In Strike Price
asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_strike_price.display = function(value)
  return "Number Of Decimals In Strike Price: "..value
end

-- Dissect: Number Of Decimals In Strike Price
asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_strike_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_decimals_in_strike_price, range, value, display)

  return offset + length, value
end

-- Number Of Deletes
asx_asxsecurities_mdf_itch_v1_0.number_of_deletes = {}

-- Size: Number Of Deletes
asx_asxsecurities_mdf_itch_v1_0.number_of_deletes.size = 1

-- Display: Number Of Deletes
asx_asxsecurities_mdf_itch_v1_0.number_of_deletes.display = function(value)
  return "Number Of Deletes: "..value
end

-- Dissect: Number Of Deletes
asx_asxsecurities_mdf_itch_v1_0.number_of_deletes.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.number_of_deletes.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.number_of_deletes.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_deletes, range, value, display)

  return offset + length, value
end

-- Number Of Legs
asx_asxsecurities_mdf_itch_v1_0.number_of_legs = {}

-- Size: Number Of Legs
asx_asxsecurities_mdf_itch_v1_0.number_of_legs.size = 1

-- Display: Number Of Legs
asx_asxsecurities_mdf_itch_v1_0.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
asx_asxsecurities_mdf_itch_v1_0.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Number Of Level Items
asx_asxsecurities_mdf_itch_v1_0.number_of_level_items = {}

-- Size: Number Of Level Items
asx_asxsecurities_mdf_itch_v1_0.number_of_level_items.size = 1

-- Display: Number Of Level Items
asx_asxsecurities_mdf_itch_v1_0.number_of_level_items.display = function(value)
  return "Number Of Level Items: "..value
end

-- Dissect: Number Of Level Items
asx_asxsecurities_mdf_itch_v1_0.number_of_level_items.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.number_of_level_items.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.number_of_level_items.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_level_items, range, value, display)

  return offset + length, value
end

-- Number Of Message Items
asx_asxsecurities_mdf_itch_v1_0.number_of_message_items = {}

-- Size: Number Of Message Items
asx_asxsecurities_mdf_itch_v1_0.number_of_message_items.size = 1

-- Display: Number Of Message Items
asx_asxsecurities_mdf_itch_v1_0.number_of_message_items.display = function(value)
  return "Number Of Message Items: "..value
end

-- Dissect: Number Of Message Items
asx_asxsecurities_mdf_itch_v1_0.number_of_message_items.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.number_of_message_items.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.number_of_message_items.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_message_items, range, value, display)

  return offset + length, value
end

-- Number Of Messages Items
asx_asxsecurities_mdf_itch_v1_0.number_of_messages_items = {}

-- Size: Number Of Messages Items
asx_asxsecurities_mdf_itch_v1_0.number_of_messages_items.size = 1

-- Display: Number Of Messages Items
asx_asxsecurities_mdf_itch_v1_0.number_of_messages_items.display = function(value)
  return "Number Of Messages Items: "..value
end

-- Dissect: Number Of Messages Items
asx_asxsecurities_mdf_itch_v1_0.number_of_messages_items.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.number_of_messages_items.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.number_of_messages_items.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_messages_items, range, value, display)

  return offset + length, value
end

-- Number Of Orders
asx_asxsecurities_mdf_itch_v1_0.number_of_orders = {}

-- Size: Number Of Orders
asx_asxsecurities_mdf_itch_v1_0.number_of_orders.size = 8

-- Display: Number Of Orders
asx_asxsecurities_mdf_itch_v1_0.number_of_orders.display = function(value)
  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
asx_asxsecurities_mdf_itch_v1_0.number_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.number_of_orders.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.number_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Number Of Outstanding Equities
asx_asxsecurities_mdf_itch_v1_0.number_of_outstanding_equities = {}

-- Size: Number Of Outstanding Equities
asx_asxsecurities_mdf_itch_v1_0.number_of_outstanding_equities.size = 8

-- Display: Number Of Outstanding Equities
asx_asxsecurities_mdf_itch_v1_0.number_of_outstanding_equities.display = function(value)
  return "Number Of Outstanding Equities: "..value
end

-- Dissect: Number Of Outstanding Equities
asx_asxsecurities_mdf_itch_v1_0.number_of_outstanding_equities.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.number_of_outstanding_equities.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.number_of_outstanding_equities.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_outstanding_equities, range, value, display)

  return offset + length, value
end

-- Number Of Settlement Days
asx_asxsecurities_mdf_itch_v1_0.number_of_settlement_days = {}

-- Size: Number Of Settlement Days
asx_asxsecurities_mdf_itch_v1_0.number_of_settlement_days.size = 4

-- Display: Number Of Settlement Days
asx_asxsecurities_mdf_itch_v1_0.number_of_settlement_days.display = function(value)
  return "Number Of Settlement Days: "..value
end

-- Dissect: Number Of Settlement Days
asx_asxsecurities_mdf_itch_v1_0.number_of_settlement_days.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.number_of_settlement_days.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.number_of_settlement_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_settlement_days, range, value, display)

  return offset + length, value
end

-- Number Of Tradable Equities
asx_asxsecurities_mdf_itch_v1_0.number_of_tradable_equities = {}

-- Size: Number Of Tradable Equities
asx_asxsecurities_mdf_itch_v1_0.number_of_tradable_equities.size = 8

-- Display: Number Of Tradable Equities
asx_asxsecurities_mdf_itch_v1_0.number_of_tradable_equities.display = function(value)
  return "Number Of Tradable Equities: "..value
end

-- Dissect: Number Of Tradable Equities
asx_asxsecurities_mdf_itch_v1_0.number_of_tradable_equities.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.number_of_tradable_equities.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.number_of_tradable_equities.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_tradable_equities, range, value, display)

  return offset + length, value
end

-- Number Of Trades
asx_asxsecurities_mdf_itch_v1_0.number_of_trades = {}

-- Size: Number Of Trades
asx_asxsecurities_mdf_itch_v1_0.number_of_trades.size = 8

-- Display: Number Of Trades
asx_asxsecurities_mdf_itch_v1_0.number_of_trades.display = function(value)
  return "Number Of Trades: "..value
end

-- Dissect: Number Of Trades
asx_asxsecurities_mdf_itch_v1_0.number_of_trades.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.number_of_trades.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.number_of_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.number_of_trades, range, value, display)

  return offset + length, value
end

-- Open Interest
asx_asxsecurities_mdf_itch_v1_0.open_interest = {}

-- Size: Open Interest
asx_asxsecurities_mdf_itch_v1_0.open_interest.size = 8

-- Display: Open Interest
asx_asxsecurities_mdf_itch_v1_0.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
asx_asxsecurities_mdf_itch_v1_0.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.open_interest.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Open Price
asx_asxsecurities_mdf_itch_v1_0.open_price = {}

-- Size: Open Price
asx_asxsecurities_mdf_itch_v1_0.open_price.size = 8

-- Display: Open Price
asx_asxsecurities_mdf_itch_v1_0.open_price.display = function(value)
  return "Open Price: "..value
end

-- Translate: Open Price
asx_asxsecurities_mdf_itch_v1_0.open_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Open Price
asx_asxsecurities_mdf_itch_v1_0.open_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.open_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxsecurities_mdf_itch_v1_0.open_price.translate(raw)
  local display = asx_asxsecurities_mdf_itch_v1_0.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.open_price, range, value, display)

  return offset + length, value
end

-- Option Style
asx_asxsecurities_mdf_itch_v1_0.option_style = {}

-- Size: Option Style
asx_asxsecurities_mdf_itch_v1_0.option_style.size = 1

-- Display: Option Style
asx_asxsecurities_mdf_itch_v1_0.option_style.labels = {
  [0] = "Option Style: Not Applicable (0)",
  [1] = "Option Style: American (1)",
  [2] = "Option Style: European (2)",
  [3] = "Option Style: Asian (3)",
}

asx_asxsecurities_mdf_itch_v1_0.option_style.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.option_style.labels[value] or "Option Style: Unknown("..value..")"
end

-- Dissect: Option Style
asx_asxsecurities_mdf_itch_v1_0.option_style.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.option_style.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.option_style.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.option_style, range, value, display)

  return offset + length, value
end

-- Option Type
asx_asxsecurities_mdf_itch_v1_0.option_type = {}

-- Size: Option Type
asx_asxsecurities_mdf_itch_v1_0.option_type.size = 1

-- Display: Option Type
asx_asxsecurities_mdf_itch_v1_0.option_type.labels = {
  [0] = "Option Type: Undefined (0)",
  [1] = "Option Type: Call (1)",
  [2] = "Option Type: Put (2)",
}

asx_asxsecurities_mdf_itch_v1_0.option_type.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.option_type.labels[value] or "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
asx_asxsecurities_mdf_itch_v1_0.option_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.option_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Book Id
asx_asxsecurities_mdf_itch_v1_0.order_book_id = {}

-- Size: Order Book Id
asx_asxsecurities_mdf_itch_v1_0.order_book_id.size = 4

-- Display: Order Book Id
asx_asxsecurities_mdf_itch_v1_0.order_book_id.display = function(value)
  return "Order Book Id: "..value
end

-- Dissect: Order Book Id
asx_asxsecurities_mdf_itch_v1_0.order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.order_book_id, range, value, display)

  return offset + length, value
end

-- Order Id Buy
asx_asxsecurities_mdf_itch_v1_0.order_id_buy = {}

-- Size: Order Id Buy
asx_asxsecurities_mdf_itch_v1_0.order_id_buy.size = 8

-- Display: Order Id Buy
asx_asxsecurities_mdf_itch_v1_0.order_id_buy.display = function(value)
  return "Order Id Buy: "..value
end

-- Dissect: Order Id Buy
asx_asxsecurities_mdf_itch_v1_0.order_id_buy.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.order_id_buy.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.order_id_buy.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.order_id_buy, range, value, display)

  return offset + length, value
end

-- Order Id Sell
asx_asxsecurities_mdf_itch_v1_0.order_id_sell = {}

-- Size: Order Id Sell
asx_asxsecurities_mdf_itch_v1_0.order_id_sell.size = 8

-- Display: Order Id Sell
asx_asxsecurities_mdf_itch_v1_0.order_id_sell.display = function(value)
  return "Order Id Sell: "..value
end

-- Dissect: Order Id Sell
asx_asxsecurities_mdf_itch_v1_0.order_id_sell.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.order_id_sell.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.order_id_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.order_id_sell, range, value, display)

  return offset + length, value
end

-- Participant Id Buy
asx_asxsecurities_mdf_itch_v1_0.participant_id_buy = {}

-- Size: Participant Id Buy
asx_asxsecurities_mdf_itch_v1_0.participant_id_buy.size = 5

-- Display: Participant Id Buy
asx_asxsecurities_mdf_itch_v1_0.participant_id_buy.display = function(value)
  return "Participant Id Buy: "..value
end

-- Dissect: Participant Id Buy
asx_asxsecurities_mdf_itch_v1_0.participant_id_buy.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.participant_id_buy.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.participant_id_buy.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.participant_id_buy, range, value, display)

  return offset + length, value
end

-- Participant Id Sell
asx_asxsecurities_mdf_itch_v1_0.participant_id_sell = {}

-- Size: Participant Id Sell
asx_asxsecurities_mdf_itch_v1_0.participant_id_sell.size = 5

-- Display: Participant Id Sell
asx_asxsecurities_mdf_itch_v1_0.participant_id_sell.display = function(value)
  return "Participant Id Sell: "..value
end

-- Dissect: Participant Id Sell
asx_asxsecurities_mdf_itch_v1_0.participant_id_sell.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.participant_id_sell.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.participant_id_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.participant_id_sell, range, value, display)

  return offset + length, value
end

-- Partition Id
asx_asxsecurities_mdf_itch_v1_0.partition_id = {}

-- Size: Partition Id
asx_asxsecurities_mdf_itch_v1_0.partition_id.size = 1

-- Display: Partition Id
asx_asxsecurities_mdf_itch_v1_0.partition_id.display = function(value)
  return "Partition Id: "..value
end

-- Dissect: Partition Id
asx_asxsecurities_mdf_itch_v1_0.partition_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.partition_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.partition_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Point Of Movement
asx_asxsecurities_mdf_itch_v1_0.point_of_movement = {}

-- Size: Point Of Movement
asx_asxsecurities_mdf_itch_v1_0.point_of_movement.size = 4

-- Display: Point Of Movement
asx_asxsecurities_mdf_itch_v1_0.point_of_movement.display = function(value)
  return "Point Of Movement: "..value
end

-- Dissect: Point Of Movement
asx_asxsecurities_mdf_itch_v1_0.point_of_movement.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.point_of_movement.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.point_of_movement.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.point_of_movement, range, value, display)

  return offset + length, value
end

-- Price
asx_asxsecurities_mdf_itch_v1_0.price = {}

-- Size: Price
asx_asxsecurities_mdf_itch_v1_0.price.size = 8

-- Display: Price
asx_asxsecurities_mdf_itch_v1_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
asx_asxsecurities_mdf_itch_v1_0.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
asx_asxsecurities_mdf_itch_v1_0.price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxsecurities_mdf_itch_v1_0.price.translate(raw)
  local display = asx_asxsecurities_mdf_itch_v1_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.price, range, value, display)

  return offset + length, value
end

-- Price Date
asx_asxsecurities_mdf_itch_v1_0.price_date = {}

-- Size: Price Date
asx_asxsecurities_mdf_itch_v1_0.price_date.size = 4

-- Display: Price Date
asx_asxsecurities_mdf_itch_v1_0.price_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Price Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Price Date
asx_asxsecurities_mdf_itch_v1_0.price_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.price_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.price_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.price_date, range, value, display)

  return offset + length, value
end

-- Price From
asx_asxsecurities_mdf_itch_v1_0.price_from = {}

-- Size: Price From
asx_asxsecurities_mdf_itch_v1_0.price_from.size = 8

-- Display: Price From
asx_asxsecurities_mdf_itch_v1_0.price_from.display = function(value)
  return "Price From: "..value
end

-- Translate: Price From
asx_asxsecurities_mdf_itch_v1_0.price_from.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price From
asx_asxsecurities_mdf_itch_v1_0.price_from.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.price_from.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxsecurities_mdf_itch_v1_0.price_from.translate(raw)
  local display = asx_asxsecurities_mdf_itch_v1_0.price_from.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.price_from, range, value, display)

  return offset + length, value
end

-- Price To
asx_asxsecurities_mdf_itch_v1_0.price_to = {}

-- Size: Price To
asx_asxsecurities_mdf_itch_v1_0.price_to.size = 8

-- Display: Price To
asx_asxsecurities_mdf_itch_v1_0.price_to.display = function(value)
  return "Price To: "..value
end

-- Translate: Price To
asx_asxsecurities_mdf_itch_v1_0.price_to.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price To
asx_asxsecurities_mdf_itch_v1_0.price_to.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.price_to.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxsecurities_mdf_itch_v1_0.price_to.translate(raw)
  local display = asx_asxsecurities_mdf_itch_v1_0.price_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.price_to, range, value, display)

  return offset + length, value
end

-- Price Type
asx_asxsecurities_mdf_itch_v1_0.price_type = {}

-- Size: Price Type
asx_asxsecurities_mdf_itch_v1_0.price_type.size = 1

-- Display: Price Type
asx_asxsecurities_mdf_itch_v1_0.price_type.labels = {
  [0] = "Price Type: Externally Injected (0)",
  [3] = "Price Type: Previous Last Paid Price (3)",
  [4] = "Price Type: Settlement Price (4)",
  [5] = "Price Type: Ever Last Price (5)",
}

asx_asxsecurities_mdf_itch_v1_0.price_type.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.price_type.labels[value] or "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
asx_asxsecurities_mdf_itch_v1_0.price_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.price_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.price_type, range, value, display)

  return offset + length, value
end

-- Price Unit
asx_asxsecurities_mdf_itch_v1_0.price_unit = {}

-- Size: Price Unit
asx_asxsecurities_mdf_itch_v1_0.price_unit.size = 1

-- Display: Price Unit
asx_asxsecurities_mdf_itch_v1_0.price_unit.labels = {
  [1] = "Price Unit: Yield (1)",
  [2] = "Price Unit: Price (2)",
  [3] = "Price Unit: Points (3)",
  [4] = "Price Unit: Yield Difference (4)",
  [5] = "Price Unit: Imm Index (5)",
  [6] = "Price Unit: Basis Points (6)",
  [7] = "Price Unit: Inverted Yield (7)",
  [8] = "Price Unit: Percentage Of Nominal (8)",
  [9] = "Price Unit: Dirty Price (9)",
}

asx_asxsecurities_mdf_itch_v1_0.price_unit.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.price_unit.labels[value] or "Price Unit: Unknown("..value..")"
end

-- Dissect: Price Unit
asx_asxsecurities_mdf_itch_v1_0.price_unit.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.price_unit.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.price_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.price_unit, range, value, display)

  return offset + length, value
end

-- Primary
asx_asxsecurities_mdf_itch_v1_0.primary = {}

-- Size: Primary
asx_asxsecurities_mdf_itch_v1_0.primary.size = 1

-- Display: Primary
asx_asxsecurities_mdf_itch_v1_0.primary.labels = {
  [1] = "Primary: Yes (1)",
  [2] = "Primary: No (2)",
}

asx_asxsecurities_mdf_itch_v1_0.primary.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.primary.labels[value] or "Primary: Unknown("..value..")"
end

-- Dissect: Primary
asx_asxsecurities_mdf_itch_v1_0.primary.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.primary.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.primary.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.primary, range, value, display)

  return offset + length, value
end

-- Printable
asx_asxsecurities_mdf_itch_v1_0.printable = {}

-- Size: Printable
asx_asxsecurities_mdf_itch_v1_0.printable.size = 1

-- Display: Printable
asx_asxsecurities_mdf_itch_v1_0.printable.labels = {
  [0] = "Printable: False (0)",
  [1] = "Printable: True (1)",
}

asx_asxsecurities_mdf_itch_v1_0.printable.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.printable.labels[value] or "Printable: Unknown("..value..")"
end

-- Dissect: Printable
asx_asxsecurities_mdf_itch_v1_0.printable.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.printable.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.printable, range, value, display)

  return offset + length, value
end

-- Proceed Date
asx_asxsecurities_mdf_itch_v1_0.proceed_date = {}

-- Size: Proceed Date
asx_asxsecurities_mdf_itch_v1_0.proceed_date.size = 4

-- Display: Proceed Date
asx_asxsecurities_mdf_itch_v1_0.proceed_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Proceed Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Proceed Date
asx_asxsecurities_mdf_itch_v1_0.proceed_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.proceed_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.proceed_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.proceed_date, range, value, display)

  return offset + length, value
end

-- Quantity
asx_asxsecurities_mdf_itch_v1_0.quantity = {}

-- Size: Quantity
asx_asxsecurities_mdf_itch_v1_0.quantity.size = 8

-- Display: Quantity
asx_asxsecurities_mdf_itch_v1_0.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
asx_asxsecurities_mdf_itch_v1_0.quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.quantity, range, value, display)

  return offset + length, value
end

-- Rate Determination Days
asx_asxsecurities_mdf_itch_v1_0.rate_determination_days = {}

-- Size: Rate Determination Days
asx_asxsecurities_mdf_itch_v1_0.rate_determination_days.size = 4

-- Display: Rate Determination Days
asx_asxsecurities_mdf_itch_v1_0.rate_determination_days.display = function(value)
  return "Rate Determination Days: "..value
end

-- Dissect: Rate Determination Days
asx_asxsecurities_mdf_itch_v1_0.rate_determination_days.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.rate_determination_days.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.rate_determination_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.rate_determination_days, range, value, display)

  return offset + length, value
end

-- Record Date
asx_asxsecurities_mdf_itch_v1_0.record_date = {}

-- Size: Record Date
asx_asxsecurities_mdf_itch_v1_0.record_date.size = 4

-- Display: Record Date
asx_asxsecurities_mdf_itch_v1_0.record_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Record Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Record Date
asx_asxsecurities_mdf_itch_v1_0.record_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.record_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.record_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.record_date, range, value, display)

  return offset + length, value
end

-- Reference Price
asx_asxsecurities_mdf_itch_v1_0.reference_price = {}

-- Size: Reference Price
asx_asxsecurities_mdf_itch_v1_0.reference_price.size = 8

-- Display: Reference Price
asx_asxsecurities_mdf_itch_v1_0.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
asx_asxsecurities_mdf_itch_v1_0.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
asx_asxsecurities_mdf_itch_v1_0.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.reference_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxsecurities_mdf_itch_v1_0.reference_price.translate(raw)
  local display = asx_asxsecurities_mdf_itch_v1_0.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Reported Trades Turnover Quantity
asx_asxsecurities_mdf_itch_v1_0.reported_trades_turnover_quantity = {}

-- Size: Reported Trades Turnover Quantity
asx_asxsecurities_mdf_itch_v1_0.reported_trades_turnover_quantity.size = 8

-- Display: Reported Trades Turnover Quantity
asx_asxsecurities_mdf_itch_v1_0.reported_trades_turnover_quantity.display = function(value)
  return "Reported Trades Turnover Quantity: "..value
end

-- Dissect: Reported Trades Turnover Quantity
asx_asxsecurities_mdf_itch_v1_0.reported_trades_turnover_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.reported_trades_turnover_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.reported_trades_turnover_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.reported_trades_turnover_quantity, range, value, display)

  return offset + length, value
end

-- Round Lot Size
asx_asxsecurities_mdf_itch_v1_0.round_lot_size = {}

-- Size: Round Lot Size
asx_asxsecurities_mdf_itch_v1_0.round_lot_size.size = 4

-- Display: Round Lot Size
asx_asxsecurities_mdf_itch_v1_0.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
asx_asxsecurities_mdf_itch_v1_0.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Second
asx_asxsecurities_mdf_itch_v1_0.second = {}

-- Size: Second
asx_asxsecurities_mdf_itch_v1_0.second.size = 4

-- Store: Second
asx_asxsecurities_mdf_itch_v1_0.second.current = nil

-- Generated: Second
asx_asxsecurities_mdf_itch_v1_0.second.generated = function(value, range, packet, parent)
  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_asx_asxsecurities_mdf_itch_v1_0.fields.second
  if asx_asxsecurities_mdf_itch_v1_0.timestamp_format == 3 then field = omi_asx_asxsecurities_mdf_itch_v1_0.fields.second_utc end
  local second = parent:add(field, range, NSTime.new(value, 0))
  second:set_generated()
end

-- Dissect: Second
asx_asxsecurities_mdf_itch_v1_0.second.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.second.size
  local range = buffer(offset, length)
  local value = range:uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_asx_asxsecurities_mdf_itch_v1_0.fields.second
  if asx_asxsecurities_mdf_itch_v1_0.timestamp_format == 3 then field = omi_asx_asxsecurities_mdf_itch_v1_0.fields.second_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Sector Code
asx_asxsecurities_mdf_itch_v1_0.sector_code = {}

-- Size: Sector Code
asx_asxsecurities_mdf_itch_v1_0.sector_code.size = 4

-- Display: Sector Code
asx_asxsecurities_mdf_itch_v1_0.sector_code.display = function(value)
  return "Sector Code: "..value
end

-- Dissect: Sector Code
asx_asxsecurities_mdf_itch_v1_0.sector_code.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.sector_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.sector_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.sector_code, range, value, display)

  return offset + length, value
end

-- Sequence Number
asx_asxsecurities_mdf_itch_v1_0.sequence_number = {}

-- Size: Sequence Number
asx_asxsecurities_mdf_itch_v1_0.sequence_number.size = 8

-- Display: Sequence Number
asx_asxsecurities_mdf_itch_v1_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
asx_asxsecurities_mdf_itch_v1_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
asx_asxsecurities_mdf_itch_v1_0.session = {}

-- Size: Session
asx_asxsecurities_mdf_itch_v1_0.session.size = 10

-- Display: Session
asx_asxsecurities_mdf_itch_v1_0.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
asx_asxsecurities_mdf_itch_v1_0.session.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.session.size
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

  local display = asx_asxsecurities_mdf_itch_v1_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.session, range, value, display)

  return offset + length, value
end

-- Set End Consideration
asx_asxsecurities_mdf_itch_v1_0.set_end_consideration = {}

-- Size: Set End Consideration
asx_asxsecurities_mdf_itch_v1_0.set_end_consideration.size = 1

-- Display: Set End Consideration
asx_asxsecurities_mdf_itch_v1_0.set_end_consideration.labels = {
  [1] = "Set End Consideration: Yes (1)",
  [2] = "Set End Consideration: No (2)",
}

asx_asxsecurities_mdf_itch_v1_0.set_end_consideration.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.set_end_consideration.labels[value] or "Set End Consideration: Unknown("..value..")"
end

-- Dissect: Set End Consideration
asx_asxsecurities_mdf_itch_v1_0.set_end_consideration.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.set_end_consideration.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.set_end_consideration.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.set_end_consideration, range, value, display)

  return offset + length, value
end

-- Set Start Consideration
asx_asxsecurities_mdf_itch_v1_0.set_start_consideration = {}

-- Size: Set Start Consideration
asx_asxsecurities_mdf_itch_v1_0.set_start_consideration.size = 1

-- Display: Set Start Consideration
asx_asxsecurities_mdf_itch_v1_0.set_start_consideration.labels = {
  [1] = "Set Start Consideration: Yes (1)",
  [2] = "Set Start Consideration: No (2)",
}

asx_asxsecurities_mdf_itch_v1_0.set_start_consideration.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.set_start_consideration.labels[value] or "Set Start Consideration: Unknown("..value..")"
end

-- Dissect: Set Start Consideration
asx_asxsecurities_mdf_itch_v1_0.set_start_consideration.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.set_start_consideration.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.set_start_consideration.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.set_start_consideration, range, value, display)

  return offset + length, value
end

-- Settlement Date
asx_asxsecurities_mdf_itch_v1_0.settlement_date = {}

-- Size: Settlement Date
asx_asxsecurities_mdf_itch_v1_0.settlement_date.size = 4

-- Display: Settlement Date
asx_asxsecurities_mdf_itch_v1_0.settlement_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Settlement Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Settlement Date
asx_asxsecurities_mdf_itch_v1_0.settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.settlement_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Side
asx_asxsecurities_mdf_itch_v1_0.side = {}

-- Size: Side
asx_asxsecurities_mdf_itch_v1_0.side.size = 1

-- Display: Side
asx_asxsecurities_mdf_itch_v1_0.side.labels = {
  ["B"] = "Side: Bid (B)",
  ["A"] = "Side: Ask (A)",
}

asx_asxsecurities_mdf_itch_v1_0.side.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
asx_asxsecurities_mdf_itch_v1_0.side.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = asx_asxsecurities_mdf_itch_v1_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.side, range, value, display)

  return offset + length, value
end

-- Snapshot Sequence Number
asx_asxsecurities_mdf_itch_v1_0.snapshot_sequence_number = {}

-- Size: Snapshot Sequence Number
asx_asxsecurities_mdf_itch_v1_0.snapshot_sequence_number.size = 20

-- Display: Snapshot Sequence Number
asx_asxsecurities_mdf_itch_v1_0.snapshot_sequence_number.display = function(value)
  return "Snapshot Sequence Number: "..value
end

-- Dissect: Snapshot Sequence Number
asx_asxsecurities_mdf_itch_v1_0.snapshot_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.snapshot_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.snapshot_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.snapshot_sequence_number, range, value, display)

  return offset + length, value
end

-- Start Date
asx_asxsecurities_mdf_itch_v1_0.start_date = {}

-- Size: Start Date
asx_asxsecurities_mdf_itch_v1_0.start_date.size = 4

-- Display: Start Date
asx_asxsecurities_mdf_itch_v1_0.start_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Start Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Start Date
asx_asxsecurities_mdf_itch_v1_0.start_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.start_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.start_date, range, value, display)

  return offset + length, value
end

-- Start Time
asx_asxsecurities_mdf_itch_v1_0.start_time = {}

-- Size: Start Time
asx_asxsecurities_mdf_itch_v1_0.start_time.size = 4

-- Display: Start Time
asx_asxsecurities_mdf_itch_v1_0.start_time.display = function(value)
  local hour = math.floor(value / 10000)
  local minute = math.floor(value / 100) % 100
  local second = value % 100

  return string.format("Start Time: %02d:%02d:%02d", hour, minute, second)
end

-- Dissect: Start Time
asx_asxsecurities_mdf_itch_v1_0.start_time.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.start_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.start_time, range, value, display)

  return offset + length, value
end

-- State Name
asx_asxsecurities_mdf_itch_v1_0.state_name = {}

-- Size: State Name
asx_asxsecurities_mdf_itch_v1_0.state_name.size = 20

-- Display: State Name
asx_asxsecurities_mdf_itch_v1_0.state_name.display = function(value)
  return "State Name: "..value
end

-- Dissect: State Name
asx_asxsecurities_mdf_itch_v1_0.state_name.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.state_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.state_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.state_name, range, value, display)

  return offset + length, value
end

-- Status
asx_asxsecurities_mdf_itch_v1_0.status = {}

-- Size: Status
asx_asxsecurities_mdf_itch_v1_0.status.size = 1

-- Display: Status
asx_asxsecurities_mdf_itch_v1_0.status.labels = {
  ["A"] = "Status: Active (A)",
  ["D"] = "Status: Delisted (D)",
  ["S"] = "Status: Suspended (S)",
}

asx_asxsecurities_mdf_itch_v1_0.status.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.status.labels[value] or "Status: Unknown("..value..")"
end

-- Dissect: Status
asx_asxsecurities_mdf_itch_v1_0.status.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.status.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = asx_asxsecurities_mdf_itch_v1_0.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.status, range, value, display)

  return offset + length, value
end

-- Strike Price
asx_asxsecurities_mdf_itch_v1_0.strike_price = {}

-- Size: Strike Price
asx_asxsecurities_mdf_itch_v1_0.strike_price.size = 8

-- Display: Strike Price
asx_asxsecurities_mdf_itch_v1_0.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
asx_asxsecurities_mdf_itch_v1_0.strike_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Strike Price
asx_asxsecurities_mdf_itch_v1_0.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.strike_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxsecurities_mdf_itch_v1_0.strike_price.translate(raw)
  local display = asx_asxsecurities_mdf_itch_v1_0.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
asx_asxsecurities_mdf_itch_v1_0.symbol = {}

-- Size: Symbol
asx_asxsecurities_mdf_itch_v1_0.symbol.size = 32

-- Display: Symbol
asx_asxsecurities_mdf_itch_v1_0.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
asx_asxsecurities_mdf_itch_v1_0.symbol.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Test Order Book
asx_asxsecurities_mdf_itch_v1_0.test_order_book = {}

-- Size: Test Order Book
asx_asxsecurities_mdf_itch_v1_0.test_order_book.size = 1

-- Display: Test Order Book
asx_asxsecurities_mdf_itch_v1_0.test_order_book.labels = {
  [1] = "Test Order Book: Yes (1)",
  [2] = "Test Order Book: No (2)",
}

asx_asxsecurities_mdf_itch_v1_0.test_order_book.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.test_order_book.labels[value] or "Test Order Book: Unknown("..value..")"
end

-- Dissect: Test Order Book
asx_asxsecurities_mdf_itch_v1_0.test_order_book.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.test_order_book.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.test_order_book.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.test_order_book, range, value, display)

  return offset + length, value
end

-- Tick Size
asx_asxsecurities_mdf_itch_v1_0.tick_size = {}

-- Size: Tick Size
asx_asxsecurities_mdf_itch_v1_0.tick_size.size = 8

-- Display: Tick Size
asx_asxsecurities_mdf_itch_v1_0.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
asx_asxsecurities_mdf_itch_v1_0.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.tick_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Timestamp
asx_asxsecurities_mdf_itch_v1_0.timestamp = {}

-- Size: Timestamp
asx_asxsecurities_mdf_itch_v1_0.timestamp.size = 8

-- Dissect: Timestamp
asx_asxsecurities_mdf_itch_v1_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_asx_asxsecurities_mdf_itch_v1_0.fields.timestamp
  if asx_asxsecurities_mdf_itch_v1_0.timestamp_format == 3 then field = omi_asx_asxsecurities_mdf_itch_v1_0.fields.timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Timestamp Nanoseconds
asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds = {}

-- Size: Timestamp Nanoseconds
asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.size = 4

-- Display: Timestamp Nanoseconds
asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.display = function(value)
  return "Timestamp Nanoseconds: "..value
end

-- Dissect: Timestamp Nanoseconds
asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.timestamp_nanoseconds, range, value, display)

  return offset + length, value
end

-- Tradable
asx_asxsecurities_mdf_itch_v1_0.tradable = {}

-- Size: Tradable
asx_asxsecurities_mdf_itch_v1_0.tradable.size = 1

-- Display: Tradable
asx_asxsecurities_mdf_itch_v1_0.tradable.labels = {
  [1] = "Tradable: Yes (1)",
  [0] = "Tradable: No (0)",
}

asx_asxsecurities_mdf_itch_v1_0.tradable.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.tradable.labels[value] or "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
asx_asxsecurities_mdf_itch_v1_0.tradable.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.tradable.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.tradable, range, value, display)

  return offset + length, value
end

-- Trade Condition
asx_asxsecurities_mdf_itch_v1_0.trade_condition = {}

-- Size: Trade Condition
asx_asxsecurities_mdf_itch_v1_0.trade_condition.size = 1

-- Display: Trade Condition
asx_asxsecurities_mdf_itch_v1_0.trade_condition.labels = {
  [0] = "Trade Condition: No Condition (0)",
  [2] = "Trade Condition: Internal Trade Crossing (2)",
  [8] = "Trade Condition: Buy Write (8)",
  [10] = "Trade Condition: Buy Write Internal Trade Crossing (10)",
}

asx_asxsecurities_mdf_itch_v1_0.trade_condition.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.trade_condition.labels[value] or "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
asx_asxsecurities_mdf_itch_v1_0.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.trade_condition.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Report Type
asx_asxsecurities_mdf_itch_v1_0.trade_report_type = {}

-- Size: Trade Report Type
asx_asxsecurities_mdf_itch_v1_0.trade_report_type.size = 2

-- Display: Trade Report Type
asx_asxsecurities_mdf_itch_v1_0.trade_report_type.display = function(value)
  return "Trade Report Type: "..value
end

-- Dissect: Trade Report Type
asx_asxsecurities_mdf_itch_v1_0.trade_report_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.trade_report_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.trade_report_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.trade_report_type, range, value, display)

  return offset + length, value
end

-- Trade Slip Number
asx_asxsecurities_mdf_itch_v1_0.trade_slip_number = {}

-- Size: Trade Slip Number
asx_asxsecurities_mdf_itch_v1_0.trade_slip_number.size = 4

-- Display: Trade Slip Number
asx_asxsecurities_mdf_itch_v1_0.trade_slip_number.display = function(value)
  return "Trade Slip Number: "..value
end

-- Dissect: Trade Slip Number
asx_asxsecurities_mdf_itch_v1_0.trade_slip_number.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.trade_slip_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.trade_slip_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.trade_slip_number, range, value, display)

  return offset + length, value
end

-- Trading Currency
asx_asxsecurities_mdf_itch_v1_0.trading_currency = {}

-- Size: Trading Currency
asx_asxsecurities_mdf_itch_v1_0.trading_currency.size = 3

-- Display: Trading Currency
asx_asxsecurities_mdf_itch_v1_0.trading_currency.display = function(value)
  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
asx_asxsecurities_mdf_itch_v1_0.trading_currency.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.trading_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.trading_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Trading State Name
asx_asxsecurities_mdf_itch_v1_0.trading_state_name = {}

-- Size: Trading State Name
asx_asxsecurities_mdf_itch_v1_0.trading_state_name.size = 20

-- Display: Trading State Name
asx_asxsecurities_mdf_itch_v1_0.trading_state_name.display = function(value)
  return "Trading State Name: "..value
end

-- Dissect: Trading State Name
asx_asxsecurities_mdf_itch_v1_0.trading_state_name.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.trading_state_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.trading_state_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.trading_state_name, range, value, display)

  return offset + length, value
end

-- Transact Time
asx_asxsecurities_mdf_itch_v1_0.transact_time = {}

-- Size: Transact Time
asx_asxsecurities_mdf_itch_v1_0.transact_time.size = 8

-- Display: Transact Time
asx_asxsecurities_mdf_itch_v1_0.transact_time.display = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
asx_asxsecurities_mdf_itch_v1_0.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.transact_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Trend Indicator
asx_asxsecurities_mdf_itch_v1_0.trend_indicator = {}

-- Size: Trend Indicator
asx_asxsecurities_mdf_itch_v1_0.trend_indicator.size = 1

-- Display: Trend Indicator
asx_asxsecurities_mdf_itch_v1_0.trend_indicator.display = function(value)
  if value == "N" then
    return "Trend Indicator: No Change (N)"
  end
  if value == "U" then
    return "Trend Indicator: Up (U)"
  end
  if value == "D" then
    return "Trend Indicator: Down (D)"
  end
  if value == " " then
    return "Trend Indicator: No Trend Available (<whitespace>)"
  end

  return "Trend Indicator: Unknown("..value..")"
end

-- Dissect: Trend Indicator
asx_asxsecurities_mdf_itch_v1_0.trend_indicator.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.trend_indicator.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = asx_asxsecurities_mdf_itch_v1_0.trend_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.trend_indicator, range, value, display)

  return offset + length, value
end

-- Turnover Quantity
asx_asxsecurities_mdf_itch_v1_0.turnover_quantity = {}

-- Size: Turnover Quantity
asx_asxsecurities_mdf_itch_v1_0.turnover_quantity.size = 8

-- Display: Turnover Quantity
asx_asxsecurities_mdf_itch_v1_0.turnover_quantity.display = function(value)
  return "Turnover Quantity: "..value
end

-- Dissect: Turnover Quantity
asx_asxsecurities_mdf_itch_v1_0.turnover_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.turnover_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.turnover_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.turnover_quantity, range, value, display)

  return offset + length, value
end

-- Turnover Value
asx_asxsecurities_mdf_itch_v1_0.turnover_value = {}

-- Size: Turnover Value
asx_asxsecurities_mdf_itch_v1_0.turnover_value.size = 8

-- Display: Turnover Value
asx_asxsecurities_mdf_itch_v1_0.turnover_value.display = function(value)
  return "Turnover Value: "..value
end

-- Dissect: Turnover Value
asx_asxsecurities_mdf_itch_v1_0.turnover_value.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.turnover_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_asxsecurities_mdf_itch_v1_0.turnover_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.turnover_value, range, value, display)

  return offset + length, value
end

-- Type
asx_asxsecurities_mdf_itch_v1_0.type = {}

-- Size: Type
asx_asxsecurities_mdf_itch_v1_0.type.size = 1

-- Display: Type
asx_asxsecurities_mdf_itch_v1_0.type.labels = {
  [1] = "Type: Price Limits (1)",
  [2] = "Type: Circuit Breaker Limits (2)",
}

asx_asxsecurities_mdf_itch_v1_0.type.display = function(value)
  return asx_asxsecurities_mdf_itch_v1_0.type.labels[value] or "Type: Unknown("..value..")"
end

-- Dissect: Type
asx_asxsecurities_mdf_itch_v1_0.type.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.type, range, value, display)

  return offset + length, value
end

-- Upper Level Series
asx_asxsecurities_mdf_itch_v1_0.upper_level_series = {}

-- Size: Upper Level Series
asx_asxsecurities_mdf_itch_v1_0.upper_level_series.size = 32

-- Display: Upper Level Series
asx_asxsecurities_mdf_itch_v1_0.upper_level_series.display = function(value)
  return "Upper Level Series: "..value
end

-- Dissect: Upper Level Series
asx_asxsecurities_mdf_itch_v1_0.upper_level_series.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.upper_level_series.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = asx_asxsecurities_mdf_itch_v1_0.upper_level_series.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.upper_level_series, range, value, display)

  return offset + length, value
end

-- Upper Limit
asx_asxsecurities_mdf_itch_v1_0.upper_limit = {}

-- Size: Upper Limit
asx_asxsecurities_mdf_itch_v1_0.upper_limit.size = 8

-- Display: Upper Limit
asx_asxsecurities_mdf_itch_v1_0.upper_limit.display = function(value)
  return "Upper Limit: "..value
end

-- Translate: Upper Limit
asx_asxsecurities_mdf_itch_v1_0.upper_limit.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Upper Limit
asx_asxsecurities_mdf_itch_v1_0.upper_limit.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.upper_limit.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = asx_asxsecurities_mdf_itch_v1_0.upper_limit.translate(raw)
  local display = asx_asxsecurities_mdf_itch_v1_0.upper_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.upper_limit, range, value, display)

  return offset + length, value
end

-- Upper Series Level Order Book Id
asx_asxsecurities_mdf_itch_v1_0.upper_series_level_order_book_id = {}

-- Size: Upper Series Level Order Book Id
asx_asxsecurities_mdf_itch_v1_0.upper_series_level_order_book_id.size = 4

-- Display: Upper Series Level Order Book Id
asx_asxsecurities_mdf_itch_v1_0.upper_series_level_order_book_id.display = function(value)
  return "Upper Series Level Order Book Id: "..value
end

-- Dissect: Upper Series Level Order Book Id
asx_asxsecurities_mdf_itch_v1_0.upper_series_level_order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.upper_series_level_order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.upper_series_level_order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.upper_series_level_order_book_id, range, value, display)

  return offset + length, value
end

-- Yield Convention
asx_asxsecurities_mdf_itch_v1_0.yield_convention = {}

-- Size: Yield Convention
asx_asxsecurities_mdf_itch_v1_0.yield_convention.size = 4

-- Display: Yield Convention
asx_asxsecurities_mdf_itch_v1_0.yield_convention.display = function(value)
  return "Yield Convention: "..value
end

-- Dissect: Yield Convention
asx_asxsecurities_mdf_itch_v1_0.yield_convention.dissect = function(buffer, offset, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.yield_convention.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_asxsecurities_mdf_itch_v1_0.yield_convention.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.yield_convention, range, value, display)

  return offset + length, value
end

-- Message Timestamp
asx_asxsecurities_mdf_itch_v1_0.message_timestamp = {}

-- Translate: Message Timestamp
asx_asxsecurities_mdf_itch_v1_0.message_timestamp.translate = function(timestamp_nanoseconds, stored_second)
  return UInt64.new(stored_second) * 1000000000 + timestamp_nanoseconds
end

-- Display: Message Timestamp
asx_asxsecurities_mdf_itch_v1_0.message_timestamp.display = function(timestamp_nanoseconds, stored_second)
  -- An offset the Field epoch leaves unbounded carries whole seconds of its own
  local seconds = stored_second + math.floor(timestamp_nanoseconds / 1000000000)
  local fraction = timestamp_nanoseconds % 1000000000

  local format = asx_asxsecurities_mdf_itch_v1_0.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
  return "Message Timestamp: "..os.date(format, seconds)..string.format("%09d", fraction)
end

-- Composite: Message Timestamp
asx_asxsecurities_mdf_itch_v1_0.message_timestamp.composite = function(buffer, offset, stored_second, packet, parent)
  local length = asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.size
  local range = buffer(offset, length)
  local timestamp_nanoseconds = range:uint()
  local value = asx_asxsecurities_mdf_itch_v1_0.message_timestamp.translate(timestamp_nanoseconds, stored_second)
  local display = asx_asxsecurities_mdf_itch_v1_0.message_timestamp.display(timestamp_nanoseconds, stored_second, packet)
  parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.message_timestamp, range, value, display)

  asx_asxsecurities_mdf_itch_v1_0.second.generated(stored_second, range, packet, parent)

  display = asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.display(timestamp_nanoseconds)
  parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.timestamp_nanoseconds, range, timestamp_nanoseconds, display)

  return offset + length, value
end

-- Dissect: Message Timestamp
asx_asxsecurities_mdf_itch_v1_0.message_timestamp.dissect = function(buffer, offset, packet, parent)
  if asx_asxsecurities_mdf_itch_v1_0.timestamp_format ~= 0 then
    local stored_second = asx_asxsecurities_mdf_itch_v1_0.second.current

    if stored_second ~= nil then
      return asx_asxsecurities_mdf_itch_v1_0.message_timestamp.composite(buffer, offset, stored_second, packet, parent)
    end
  end

  return asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Asx AsxSecurities Mdf Itch 1.0
-----------------------------------------------------------------------

-- End Of Snapshot Message
asx_asxsecurities_mdf_itch_v1_0.end_of_snapshot_message = {}

-- Size: End Of Snapshot Message
asx_asxsecurities_mdf_itch_v1_0.end_of_snapshot_message.size =
  asx_asxsecurities_mdf_itch_v1_0.snapshot_sequence_number.size

-- Display: End Of Snapshot Message
asx_asxsecurities_mdf_itch_v1_0.end_of_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Snapshot Message
asx_asxsecurities_mdf_itch_v1_0.end_of_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Snapshot Sequence Number: Alpha
  index, snapshot_sequence_number = asx_asxsecurities_mdf_itch_v1_0.snapshot_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Snapshot Message
asx_asxsecurities_mdf_itch_v1_0.end_of_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.end_of_snapshot_message, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.end_of_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.end_of_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.end_of_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Array Of Message Items
asx_asxsecurities_mdf_itch_v1_0.array_of_message_items = {}

-- Size: Array Of Message Items
asx_asxsecurities_mdf_itch_v1_0.array_of_message_items.size =
  asx_asxsecurities_mdf_itch_v1_0.message_item.size

-- Display: Array Of Message Items
asx_asxsecurities_mdf_itch_v1_0.array_of_message_items.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Array Of Message Items
asx_asxsecurities_mdf_itch_v1_0.array_of_message_items.fields = function(buffer, offset, packet, parent, array_of_message_items_index)
  local index = offset

  -- Implicit Array Of Message Items Index
  if array_of_message_items_index ~= nil and show.indexes then
    local iteration = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.array_of_message_items_index, array_of_message_items_index)
    iteration:set_generated()
  end

  -- Message Item: Alpha
  index, message_item = asx_asxsecurities_mdf_itch_v1_0.message_item.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Array Of Message Items
asx_asxsecurities_mdf_itch_v1_0.array_of_message_items.dissect = function(buffer, offset, packet, parent, array_of_message_items_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.array_of_message_items, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.array_of_message_items.fields(buffer, offset, packet, parent, array_of_message_items_index)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.array_of_message_items.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.array_of_message_items.fields(buffer, offset, packet, parent, array_of_message_items_index)
  end
end

-- Market Announcement Message
asx_asxsecurities_mdf_itch_v1_0.market_announcement_message = {}

-- Calculate size of: Market Announcement Message
asx_asxsecurities_mdf_itch_v1_0.market_announcement_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.size

  index = index + asx_asxsecurities_mdf_itch_v1_0.order_book_id.size

  index = index + asx_asxsecurities_mdf_itch_v1_0.exchange_id.size

  index = index + asx_asxsecurities_mdf_itch_v1_0.market_id.size

  index = index + asx_asxsecurities_mdf_itch_v1_0.message_information_type.size

  index = index + asx_asxsecurities_mdf_itch_v1_0.message_source.size

  index = index + asx_asxsecurities_mdf_itch_v1_0.message_priority.size

  index = index + asx_asxsecurities_mdf_itch_v1_0.header.size

  index = index + asx_asxsecurities_mdf_itch_v1_0.items_url.size

  index = index + asx_asxsecurities_mdf_itch_v1_0.document_url.size

  index = index + asx_asxsecurities_mdf_itch_v1_0.number_of_message_items.size

  index = index + asx_asxsecurities_mdf_itch_v1_0.number_of_messages_items.size

  -- Calculate field size from count
  local array_of_message_items_count = buffer(offset + index - 2, 1):uint()
  index = index + array_of_message_items_count * 80

  index = index + asx_asxsecurities_mdf_itch_v1_0.commodity_code.size

  return index
end

-- Display: Market Announcement Message
asx_asxsecurities_mdf_itch_v1_0.market_announcement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Announcement Message
asx_asxsecurities_mdf_itch_v1_0.market_announcement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = asx_asxsecurities_mdf_itch_v1_0.message_timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = asx_asxsecurities_mdf_itch_v1_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Exchange Id: Numeric
  index, exchange_id = asx_asxsecurities_mdf_itch_v1_0.exchange_id.dissect(buffer, index, packet, parent)

  -- Market Id: Numeric
  index, market_id = asx_asxsecurities_mdf_itch_v1_0.market_id.dissect(buffer, index, packet, parent)

  -- Message Information Type: Numeric
  index, message_information_type = asx_asxsecurities_mdf_itch_v1_0.message_information_type.dissect(buffer, index, packet, parent)

  -- Message Source: Alpha
  index, message_source = asx_asxsecurities_mdf_itch_v1_0.message_source.dissect(buffer, index, packet, parent)

  -- Message Priority: Numeric
  index, message_priority = asx_asxsecurities_mdf_itch_v1_0.message_priority.dissect(buffer, index, packet, parent)

  -- Header: Alpha
  index, header = asx_asxsecurities_mdf_itch_v1_0.header.dissect(buffer, index, packet, parent)

  -- Items Url: Numeric
  index, items_url = asx_asxsecurities_mdf_itch_v1_0.items_url.dissect(buffer, index, packet, parent)

  -- Document Url: Alpha
  index, document_url = asx_asxsecurities_mdf_itch_v1_0.document_url.dissect(buffer, index, packet, parent)

  -- Number Of Message Items: Numeric
  index, number_of_message_items = asx_asxsecurities_mdf_itch_v1_0.number_of_message_items.dissect(buffer, index, packet, parent)

  -- Number Of Messages Items: Numeric
  index, number_of_messages_items = asx_asxsecurities_mdf_itch_v1_0.number_of_messages_items.dissect(buffer, index, packet, parent)

  -- Repeating: Array Of Message Items
  for array_of_message_items_index = 1, number_of_message_items do
    index, array_of_message_items = asx_asxsecurities_mdf_itch_v1_0.array_of_message_items.dissect(buffer, index, packet, parent, array_of_message_items_index)
  end

  -- Commodity Code: Numeric
  index, commodity_code = asx_asxsecurities_mdf_itch_v1_0.commodity_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Announcement Message
asx_asxsecurities_mdf_itch_v1_0.market_announcement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.market_announcement_message, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.market_announcement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.market_announcement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.market_announcement_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Limits Message
asx_asxsecurities_mdf_itch_v1_0.price_limits_message = {}

-- Size: Price Limits Message
asx_asxsecurities_mdf_itch_v1_0.price_limits_message.size =
  asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.size + 
  asx_asxsecurities_mdf_itch_v1_0.order_book_id.size + 
  asx_asxsecurities_mdf_itch_v1_0.upper_limit.size + 
  asx_asxsecurities_mdf_itch_v1_0.lower_limit.size + 
  asx_asxsecurities_mdf_itch_v1_0.type.size + 
  asx_asxsecurities_mdf_itch_v1_0.category.size + 
  asx_asxsecurities_mdf_itch_v1_0.reference_price.size

-- Display: Price Limits Message
asx_asxsecurities_mdf_itch_v1_0.price_limits_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Limits Message
asx_asxsecurities_mdf_itch_v1_0.price_limits_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = asx_asxsecurities_mdf_itch_v1_0.message_timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = asx_asxsecurities_mdf_itch_v1_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Upper Limit: Price
  index, upper_limit = asx_asxsecurities_mdf_itch_v1_0.upper_limit.dissect(buffer, index, packet, parent)

  -- Lower Limit: Price
  index, lower_limit = asx_asxsecurities_mdf_itch_v1_0.lower_limit.dissect(buffer, index, packet, parent)

  -- Type: Numeric
  index, type = asx_asxsecurities_mdf_itch_v1_0.type.dissect(buffer, index, packet, parent)

  -- Category: Numeric
  index, category = asx_asxsecurities_mdf_itch_v1_0.category.dissect(buffer, index, packet, parent)

  -- Reference Price: Price
  index, reference_price = asx_asxsecurities_mdf_itch_v1_0.reference_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Limits Message
asx_asxsecurities_mdf_itch_v1_0.price_limits_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.price_limits_message, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.price_limits_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.price_limits_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.price_limits_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Ticker Message
asx_asxsecurities_mdf_itch_v1_0.trade_ticker_message = {}

-- Size: Trade Ticker Message
asx_asxsecurities_mdf_itch_v1_0.trade_ticker_message.size =
  asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.size + 
  asx_asxsecurities_mdf_itch_v1_0.order_book_id.size + 
  asx_asxsecurities_mdf_itch_v1_0.deal_id.size + 
  asx_asxsecurities_mdf_itch_v1_0.deal_source.size + 
  asx_asxsecurities_mdf_itch_v1_0.price.size + 
  asx_asxsecurities_mdf_itch_v1_0.quantity.size + 
  asx_asxsecurities_mdf_itch_v1_0.deal_time.size + 
  asx_asxsecurities_mdf_itch_v1_0.action.size + 
  asx_asxsecurities_mdf_itch_v1_0.aggressor.size + 
  asx_asxsecurities_mdf_itch_v1_0.trade_report_type.size + 
  asx_asxsecurities_mdf_itch_v1_0.printable.size + 
  asx_asxsecurities_mdf_itch_v1_0.as_of_date.size + 
  asx_asxsecurities_mdf_itch_v1_0.boq_list.size + 
  asx_asxsecurities_mdf_itch_v1_0.participant_id_buy.size + 
  asx_asxsecurities_mdf_itch_v1_0.order_id_buy.size + 
  asx_asxsecurities_mdf_itch_v1_0.participant_id_sell.size + 
  asx_asxsecurities_mdf_itch_v1_0.order_id_sell.size + 
  asx_asxsecurities_mdf_itch_v1_0.trade_slip_number.size + 
  asx_asxsecurities_mdf_itch_v1_0.exchange_order_type.size + 
  asx_asxsecurities_mdf_itch_v1_0.trade_condition.size

-- Display: Trade Ticker Message
asx_asxsecurities_mdf_itch_v1_0.trade_ticker_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Ticker Message
asx_asxsecurities_mdf_itch_v1_0.trade_ticker_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = asx_asxsecurities_mdf_itch_v1_0.message_timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = asx_asxsecurities_mdf_itch_v1_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Deal Id: Numeric
  index, deal_id = asx_asxsecurities_mdf_itch_v1_0.deal_id.dissect(buffer, index, packet, parent)

  -- Deal Source: Numeric
  index, deal_source = asx_asxsecurities_mdf_itch_v1_0.deal_source.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = asx_asxsecurities_mdf_itch_v1_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = asx_asxsecurities_mdf_itch_v1_0.quantity.dissect(buffer, index, packet, parent)

  -- Deal Time: Numeric
  index, deal_time = asx_asxsecurities_mdf_itch_v1_0.deal_time.dissect(buffer, index, packet, parent)

  -- Action: Numeric
  index, action = asx_asxsecurities_mdf_itch_v1_0.action.dissect(buffer, index, packet, parent)

  -- Aggressor: Alpha
  index, aggressor = asx_asxsecurities_mdf_itch_v1_0.aggressor.dissect(buffer, index, packet, parent)

  -- Trade Report Type: Numeric
  index, trade_report_type = asx_asxsecurities_mdf_itch_v1_0.trade_report_type.dissect(buffer, index, packet, parent)

  -- Printable: Numeric
  index, printable = asx_asxsecurities_mdf_itch_v1_0.printable.dissect(buffer, index, packet, parent)

  -- As Of Date: Date
  index, as_of_date = asx_asxsecurities_mdf_itch_v1_0.as_of_date.dissect(buffer, index, packet, parent)

  -- Boq List: Alpha
  index, boq_list = asx_asxsecurities_mdf_itch_v1_0.boq_list.dissect(buffer, index, packet, parent)

  -- Participant Id Buy: Alpha
  index, participant_id_buy = asx_asxsecurities_mdf_itch_v1_0.participant_id_buy.dissect(buffer, index, packet, parent)

  -- Order Id Buy: Numeric
  index, order_id_buy = asx_asxsecurities_mdf_itch_v1_0.order_id_buy.dissect(buffer, index, packet, parent)

  -- Participant Id Sell: Alpha
  index, participant_id_sell = asx_asxsecurities_mdf_itch_v1_0.participant_id_sell.dissect(buffer, index, packet, parent)

  -- Order Id Sell: Numeric
  index, order_id_sell = asx_asxsecurities_mdf_itch_v1_0.order_id_sell.dissect(buffer, index, packet, parent)

  -- Trade Slip Number: Numeric
  index, trade_slip_number = asx_asxsecurities_mdf_itch_v1_0.trade_slip_number.dissect(buffer, index, packet, parent)

  -- Exchange Order Type: Numeric
  index, exchange_order_type = asx_asxsecurities_mdf_itch_v1_0.exchange_order_type.dissect(buffer, index, packet, parent)

  -- Trade Condition: Numeric
  index, trade_condition = asx_asxsecurities_mdf_itch_v1_0.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Ticker Message
asx_asxsecurities_mdf_itch_v1_0.trade_ticker_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.trade_ticker_message, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.trade_ticker_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.trade_ticker_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.trade_ticker_message.fields(buffer, offset, packet, parent)
  end
end

-- Open Interest Message
asx_asxsecurities_mdf_itch_v1_0.open_interest_message = {}

-- Size: Open Interest Message
asx_asxsecurities_mdf_itch_v1_0.open_interest_message.size =
  asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.size + 
  asx_asxsecurities_mdf_itch_v1_0.order_book_id.size + 
  asx_asxsecurities_mdf_itch_v1_0.open_interest.size + 
  asx_asxsecurities_mdf_itch_v1_0.transact_time.size

-- Display: Open Interest Message
asx_asxsecurities_mdf_itch_v1_0.open_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Interest Message
asx_asxsecurities_mdf_itch_v1_0.open_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = asx_asxsecurities_mdf_itch_v1_0.message_timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = asx_asxsecurities_mdf_itch_v1_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Open Interest: Numeric
  index, open_interest = asx_asxsecurities_mdf_itch_v1_0.open_interest.dissect(buffer, index, packet, parent)

  -- Transact Time: Numeric
  index, transact_time = asx_asxsecurities_mdf_itch_v1_0.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Interest Message
asx_asxsecurities_mdf_itch_v1_0.open_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.open_interest_message, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.open_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.open_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.open_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Message
asx_asxsecurities_mdf_itch_v1_0.index_message = {}

-- Size: Index Message
asx_asxsecurities_mdf_itch_v1_0.index_message.size =
  asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.size + 
  asx_asxsecurities_mdf_itch_v1_0.order_book_id.size + 
  asx_asxsecurities_mdf_itch_v1_0.last_price.size + 
  asx_asxsecurities_mdf_itch_v1_0.timestamp.size + 
  asx_asxsecurities_mdf_itch_v1_0.change_previous.size + 
  asx_asxsecurities_mdf_itch_v1_0.change_yesterday.size + 
  asx_asxsecurities_mdf_itch_v1_0.trend_indicator.size + 
  asx_asxsecurities_mdf_itch_v1_0.point_of_movement.size

-- Display: Index Message
asx_asxsecurities_mdf_itch_v1_0.index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Message
asx_asxsecurities_mdf_itch_v1_0.index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = asx_asxsecurities_mdf_itch_v1_0.message_timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = asx_asxsecurities_mdf_itch_v1_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Last Price: Price
  index, last_price = asx_asxsecurities_mdf_itch_v1_0.last_price.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = asx_asxsecurities_mdf_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Change Previous: Numeric
  index, change_previous = asx_asxsecurities_mdf_itch_v1_0.change_previous.dissect(buffer, index, packet, parent)

  -- Change Yesterday: Numeric
  index, change_yesterday = asx_asxsecurities_mdf_itch_v1_0.change_yesterday.dissect(buffer, index, packet, parent)

  -- Trend Indicator: Alpha
  index, trend_indicator = asx_asxsecurities_mdf_itch_v1_0.trend_indicator.dissect(buffer, index, packet, parent)

  -- Point Of Movement: Numeric
  index, point_of_movement = asx_asxsecurities_mdf_itch_v1_0.point_of_movement.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Message
asx_asxsecurities_mdf_itch_v1_0.index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.index_message, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.index_message.fields(buffer, offset, packet, parent)
  end
end

-- Reference Price Message
asx_asxsecurities_mdf_itch_v1_0.reference_price_message = {}

-- Size: Reference Price Message
asx_asxsecurities_mdf_itch_v1_0.reference_price_message.size =
  asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.size + 
  asx_asxsecurities_mdf_itch_v1_0.order_book_id.size + 
  asx_asxsecurities_mdf_itch_v1_0.price_type.size + 
  asx_asxsecurities_mdf_itch_v1_0.price.size + 
  asx_asxsecurities_mdf_itch_v1_0.timestamp.size + 
  asx_asxsecurities_mdf_itch_v1_0.price_date.size

-- Display: Reference Price Message
asx_asxsecurities_mdf_itch_v1_0.reference_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Price Message
asx_asxsecurities_mdf_itch_v1_0.reference_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = asx_asxsecurities_mdf_itch_v1_0.message_timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = asx_asxsecurities_mdf_itch_v1_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Price Type: Numeric
  index, price_type = asx_asxsecurities_mdf_itch_v1_0.price_type.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = asx_asxsecurities_mdf_itch_v1_0.price.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = asx_asxsecurities_mdf_itch_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Price Date: Date
  index, price_date = asx_asxsecurities_mdf_itch_v1_0.price_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Price Message
asx_asxsecurities_mdf_itch_v1_0.reference_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.reference_price_message, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.reference_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.reference_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.reference_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Statistics Message
asx_asxsecurities_mdf_itch_v1_0.trade_statistics_message = {}

-- Size: Trade Statistics Message
asx_asxsecurities_mdf_itch_v1_0.trade_statistics_message.size =
  asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.size + 
  asx_asxsecurities_mdf_itch_v1_0.order_book_id.size + 
  asx_asxsecurities_mdf_itch_v1_0.open_price.size + 
  asx_asxsecurities_mdf_itch_v1_0.high_price.size + 
  asx_asxsecurities_mdf_itch_v1_0.low_price.size + 
  asx_asxsecurities_mdf_itch_v1_0.last_price.size + 
  asx_asxsecurities_mdf_itch_v1_0.last_auction_price.size + 
  asx_asxsecurities_mdf_itch_v1_0.last_quantity.size + 
  asx_asxsecurities_mdf_itch_v1_0.turnover_quantity.size + 
  asx_asxsecurities_mdf_itch_v1_0.reported_trades_turnover_quantity.size + 
  asx_asxsecurities_mdf_itch_v1_0.turnover_value.size + 
  asx_asxsecurities_mdf_itch_v1_0.number_of_trades.size + 
  asx_asxsecurities_mdf_itch_v1_0.trend_indicator.size

-- Display: Trade Statistics Message
asx_asxsecurities_mdf_itch_v1_0.trade_statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Statistics Message
asx_asxsecurities_mdf_itch_v1_0.trade_statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = asx_asxsecurities_mdf_itch_v1_0.message_timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = asx_asxsecurities_mdf_itch_v1_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Open Price: Price
  index, open_price = asx_asxsecurities_mdf_itch_v1_0.open_price.dissect(buffer, index, packet, parent)

  -- High Price: Price
  index, high_price = asx_asxsecurities_mdf_itch_v1_0.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Price
  index, low_price = asx_asxsecurities_mdf_itch_v1_0.low_price.dissect(buffer, index, packet, parent)

  -- Last Price: Price
  index, last_price = asx_asxsecurities_mdf_itch_v1_0.last_price.dissect(buffer, index, packet, parent)

  -- Last Auction Price: Price
  index, last_auction_price = asx_asxsecurities_mdf_itch_v1_0.last_auction_price.dissect(buffer, index, packet, parent)

  -- Last Quantity: Numeric
  index, last_quantity = asx_asxsecurities_mdf_itch_v1_0.last_quantity.dissect(buffer, index, packet, parent)

  -- Turnover Quantity: Numeric
  index, turnover_quantity = asx_asxsecurities_mdf_itch_v1_0.turnover_quantity.dissect(buffer, index, packet, parent)

  -- Reported Trades Turnover Quantity: Numeric
  index, reported_trades_turnover_quantity = asx_asxsecurities_mdf_itch_v1_0.reported_trades_turnover_quantity.dissect(buffer, index, packet, parent)

  -- Turnover Value: Numeric
  index, turnover_value = asx_asxsecurities_mdf_itch_v1_0.turnover_value.dissect(buffer, index, packet, parent)

  -- Number Of Trades: Numeric
  index, number_of_trades = asx_asxsecurities_mdf_itch_v1_0.number_of_trades.dissect(buffer, index, packet, parent)

  -- Trend Indicator: Alpha
  index, trend_indicator = asx_asxsecurities_mdf_itch_v1_0.trend_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Statistics Message
asx_asxsecurities_mdf_itch_v1_0.trade_statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.trade_statistics_message, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.trade_statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.trade_statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.trade_statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Array Of Level Items
asx_asxsecurities_mdf_itch_v1_0.array_of_level_items = {}

-- Size: Array Of Level Items
asx_asxsecurities_mdf_itch_v1_0.array_of_level_items.size =
  asx_asxsecurities_mdf_itch_v1_0.level_update_action.size + 
  asx_asxsecurities_mdf_itch_v1_0.side.size + 
  asx_asxsecurities_mdf_itch_v1_0.level.size + 
  asx_asxsecurities_mdf_itch_v1_0.price.size + 
  asx_asxsecurities_mdf_itch_v1_0.quantity.size + 
  asx_asxsecurities_mdf_itch_v1_0.number_of_deletes.size + 
  asx_asxsecurities_mdf_itch_v1_0.number_of_orders.size

-- Display: Array Of Level Items
asx_asxsecurities_mdf_itch_v1_0.array_of_level_items.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Array Of Level Items
asx_asxsecurities_mdf_itch_v1_0.array_of_level_items.fields = function(buffer, offset, packet, parent, array_of_level_items_index)
  local index = offset

  -- Implicit Array Of Level Items Index
  if array_of_level_items_index ~= nil and show.indexes then
    local iteration = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.array_of_level_items_index, array_of_level_items_index)
    iteration:set_generated()
  end

  -- Level Update Action: Alpha
  index, level_update_action = asx_asxsecurities_mdf_itch_v1_0.level_update_action.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = asx_asxsecurities_mdf_itch_v1_0.side.dissect(buffer, index, packet, parent)

  -- Level: Numeric
  index, level = asx_asxsecurities_mdf_itch_v1_0.level.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = asx_asxsecurities_mdf_itch_v1_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = asx_asxsecurities_mdf_itch_v1_0.quantity.dissect(buffer, index, packet, parent)

  -- Number Of Deletes: Numeric
  index, number_of_deletes = asx_asxsecurities_mdf_itch_v1_0.number_of_deletes.dissect(buffer, index, packet, parent)

  -- Number Of Orders: Numeric
  index, number_of_orders = asx_asxsecurities_mdf_itch_v1_0.number_of_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Array Of Level Items
asx_asxsecurities_mdf_itch_v1_0.array_of_level_items.dissect = function(buffer, offset, packet, parent, array_of_level_items_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.array_of_level_items, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.array_of_level_items.fields(buffer, offset, packet, parent, array_of_level_items_index)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.array_of_level_items.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.array_of_level_items.fields(buffer, offset, packet, parent, array_of_level_items_index)
  end
end

-- Market By Price Message
asx_asxsecurities_mdf_itch_v1_0.market_by_price_message = {}

-- Calculate size of: Market By Price Message
asx_asxsecurities_mdf_itch_v1_0.market_by_price_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.size

  index = index + asx_asxsecurities_mdf_itch_v1_0.order_book_id.size

  index = index + asx_asxsecurities_mdf_itch_v1_0.maximum_level.size

  index = index + asx_asxsecurities_mdf_itch_v1_0.number_of_level_items.size

  -- Calculate field size from count
  local array_of_level_items_count = buffer(offset + index - 1, 1):uint()
  index = index + array_of_level_items_count * 28

  return index
end

-- Display: Market By Price Message
asx_asxsecurities_mdf_itch_v1_0.market_by_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market By Price Message
asx_asxsecurities_mdf_itch_v1_0.market_by_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = asx_asxsecurities_mdf_itch_v1_0.message_timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = asx_asxsecurities_mdf_itch_v1_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Maximum Level: Numeric
  index, maximum_level = asx_asxsecurities_mdf_itch_v1_0.maximum_level.dissect(buffer, index, packet, parent)

  -- Number Of Level Items: Numeric
  index, number_of_level_items = asx_asxsecurities_mdf_itch_v1_0.number_of_level_items.dissect(buffer, index, packet, parent)

  -- Repeating: Array Of Level Items
  for array_of_level_items_index = 1, number_of_level_items do
    index, array_of_level_items = asx_asxsecurities_mdf_itch_v1_0.array_of_level_items.dissect(buffer, index, packet, parent, array_of_level_items_index)
  end

  return index
end

-- Dissect: Market By Price Message
asx_asxsecurities_mdf_itch_v1_0.market_by_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.market_by_price_message, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.market_by_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.market_by_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.market_by_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Equilibrium Price Message
asx_asxsecurities_mdf_itch_v1_0.equilibrium_price_message = {}

-- Size: Equilibrium Price Message
asx_asxsecurities_mdf_itch_v1_0.equilibrium_price_message.size =
  asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.size + 
  asx_asxsecurities_mdf_itch_v1_0.order_book_id.size + 
  asx_asxsecurities_mdf_itch_v1_0.available_bid_quantity_at_equilibrium_price.size + 
  asx_asxsecurities_mdf_itch_v1_0.available_ask_quantity_at_equilibrium_price.size + 
  asx_asxsecurities_mdf_itch_v1_0.equilibrium_price.size + 
  asx_asxsecurities_mdf_itch_v1_0.best_bid_price.size + 
  asx_asxsecurities_mdf_itch_v1_0.best_ask_price.size + 
  asx_asxsecurities_mdf_itch_v1_0.best_bid_quantity.size + 
  asx_asxsecurities_mdf_itch_v1_0.best_ask_quantity.size + 
  asx_asxsecurities_mdf_itch_v1_0.equilibrium_quantity.size

-- Display: Equilibrium Price Message
asx_asxsecurities_mdf_itch_v1_0.equilibrium_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equilibrium Price Message
asx_asxsecurities_mdf_itch_v1_0.equilibrium_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = asx_asxsecurities_mdf_itch_v1_0.message_timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = asx_asxsecurities_mdf_itch_v1_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Available Bid Quantity At Equilibrium Price: Numeric
  index, available_bid_quantity_at_equilibrium_price = asx_asxsecurities_mdf_itch_v1_0.available_bid_quantity_at_equilibrium_price.dissect(buffer, index, packet, parent)

  -- Available Ask Quantity At Equilibrium Price: Numeric
  index, available_ask_quantity_at_equilibrium_price = asx_asxsecurities_mdf_itch_v1_0.available_ask_quantity_at_equilibrium_price.dissect(buffer, index, packet, parent)

  -- Equilibrium Price: Price
  index, equilibrium_price = asx_asxsecurities_mdf_itch_v1_0.equilibrium_price.dissect(buffer, index, packet, parent)

  -- Best Bid Price: Price
  index, best_bid_price = asx_asxsecurities_mdf_itch_v1_0.best_bid_price.dissect(buffer, index, packet, parent)

  -- Best Ask Price: Price
  index, best_ask_price = asx_asxsecurities_mdf_itch_v1_0.best_ask_price.dissect(buffer, index, packet, parent)

  -- Best Bid Quantity: Numeric
  index, best_bid_quantity = asx_asxsecurities_mdf_itch_v1_0.best_bid_quantity.dissect(buffer, index, packet, parent)

  -- Best Ask Quantity: Numeric
  index, best_ask_quantity = asx_asxsecurities_mdf_itch_v1_0.best_ask_quantity.dissect(buffer, index, packet, parent)

  -- Equilibrium Quantity: Numeric
  index, equilibrium_quantity = asx_asxsecurities_mdf_itch_v1_0.equilibrium_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equilibrium Price Message
asx_asxsecurities_mdf_itch_v1_0.equilibrium_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.equilibrium_price_message, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.equilibrium_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.equilibrium_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.equilibrium_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Status Message
asx_asxsecurities_mdf_itch_v1_0.instrument_status_message = {}

-- Size: Instrument Status Message
asx_asxsecurities_mdf_itch_v1_0.instrument_status_message.size =
  asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.size + 
  asx_asxsecurities_mdf_itch_v1_0.trading_state_name.size + 
  asx_asxsecurities_mdf_itch_v1_0.instrument_state_level.size + 
  asx_asxsecurities_mdf_itch_v1_0.name_of_the_instrument_state_level.size + 
  asx_asxsecurities_mdf_itch_v1_0.start_date.size + 
  asx_asxsecurities_mdf_itch_v1_0.start_time.size

-- Display: Instrument Status Message
asx_asxsecurities_mdf_itch_v1_0.instrument_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Status Message
asx_asxsecurities_mdf_itch_v1_0.instrument_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = asx_asxsecurities_mdf_itch_v1_0.message_timestamp.dissect(buffer, index, packet, parent)

  -- Trading State Name: Alpha
  index, trading_state_name = asx_asxsecurities_mdf_itch_v1_0.trading_state_name.dissect(buffer, index, packet, parent)

  -- Instrument State Level: Numeric
  index, instrument_state_level = asx_asxsecurities_mdf_itch_v1_0.instrument_state_level.dissect(buffer, index, packet, parent)

  -- Name Of The Instrument State Level: Alpha
  index, name_of_the_instrument_state_level = asx_asxsecurities_mdf_itch_v1_0.name_of_the_instrument_state_level.dissect(buffer, index, packet, parent)

  -- Start Date: Date
  index, start_date = asx_asxsecurities_mdf_itch_v1_0.start_date.dissect(buffer, index, packet, parent)

  -- Start Time: Numeric
  index, start_time = asx_asxsecurities_mdf_itch_v1_0.start_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Status Message
asx_asxsecurities_mdf_itch_v1_0.instrument_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.instrument_status_message, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.instrument_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.instrument_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.instrument_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Business Date Message
asx_asxsecurities_mdf_itch_v1_0.business_date_message = {}

-- Size: Business Date Message
asx_asxsecurities_mdf_itch_v1_0.business_date_message.size =
  asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.size + 
  asx_asxsecurities_mdf_itch_v1_0.business_date.size

-- Display: Business Date Message
asx_asxsecurities_mdf_itch_v1_0.business_date_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Date Message
asx_asxsecurities_mdf_itch_v1_0.business_date_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = asx_asxsecurities_mdf_itch_v1_0.message_timestamp.dissect(buffer, index, packet, parent)

  -- Business Date: Date
  index, business_date = asx_asxsecurities_mdf_itch_v1_0.business_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Date Message
asx_asxsecurities_mdf_itch_v1_0.business_date_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.business_date_message, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.business_date_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.business_date_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.business_date_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book State Message
asx_asxsecurities_mdf_itch_v1_0.order_book_state_message = {}

-- Size: Order Book State Message
asx_asxsecurities_mdf_itch_v1_0.order_book_state_message.size =
  asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.size + 
  asx_asxsecurities_mdf_itch_v1_0.order_book_id.size + 
  asx_asxsecurities_mdf_itch_v1_0.state_name.size + 
  asx_asxsecurities_mdf_itch_v1_0.display_name.size

-- Display: Order Book State Message
asx_asxsecurities_mdf_itch_v1_0.order_book_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book State Message
asx_asxsecurities_mdf_itch_v1_0.order_book_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = asx_asxsecurities_mdf_itch_v1_0.message_timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = asx_asxsecurities_mdf_itch_v1_0.order_book_id.dissect(buffer, index, packet, parent)

  -- State Name: Alpha
  index, state_name = asx_asxsecurities_mdf_itch_v1_0.state_name.dissect(buffer, index, packet, parent)

  -- Display Name: Alpha
  index, display_name = asx_asxsecurities_mdf_itch_v1_0.display_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book State Message
asx_asxsecurities_mdf_itch_v1_0.order_book_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.order_book_state_message, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.order_book_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.order_book_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.order_book_state_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
asx_asxsecurities_mdf_itch_v1_0.system_event_message = {}

-- Size: System Event Message
asx_asxsecurities_mdf_itch_v1_0.system_event_message.size =
  asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.size + 
  asx_asxsecurities_mdf_itch_v1_0.event_code.size

-- Display: System Event Message
asx_asxsecurities_mdf_itch_v1_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
asx_asxsecurities_mdf_itch_v1_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = asx_asxsecurities_mdf_itch_v1_0.message_timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = asx_asxsecurities_mdf_itch_v1_0.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
asx_asxsecurities_mdf_itch_v1_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.system_event_message, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Directory Extension Message
asx_asxsecurities_mdf_itch_v1_0.order_book_directory_extension_message = {}

-- Size: Order Book Directory Extension Message
asx_asxsecurities_mdf_itch_v1_0.order_book_directory_extension_message.size =
  asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.size + 
  asx_asxsecurities_mdf_itch_v1_0.order_book_id.size + 
  asx_asxsecurities_mdf_itch_v1_0.accrued_interest_rounding.size + 
  asx_asxsecurities_mdf_itch_v1_0.accrued_interest_updown.size + 
  asx_asxsecurities_mdf_itch_v1_0.calculation_convention.size + 
  asx_asxsecurities_mdf_itch_v1_0.clean_price_rounding.size + 
  asx_asxsecurities_mdf_itch_v1_0.clean_price_updown.size + 
  asx_asxsecurities_mdf_itch_v1_0.coupon_frequency.size + 
  asx_asxsecurities_mdf_itch_v1_0.coupon_interest.size + 
  asx_asxsecurities_mdf_itch_v1_0.coupon_from_date.size + 
  asx_asxsecurities_mdf_itch_v1_0.issue_date.size + 
  asx_asxsecurities_mdf_itch_v1_0.maturity_date.size + 
  asx_asxsecurities_mdf_itch_v1_0.day_calculation_rule.size + 
  asx_asxsecurities_mdf_itch_v1_0.day_count_convention.size + 
  asx_asxsecurities_mdf_itch_v1_0.ex_coupon_period.size + 
  asx_asxsecurities_mdf_itch_v1_0.dividend.size + 
  asx_asxsecurities_mdf_itch_v1_0.fixed_income_type.size + 
  asx_asxsecurities_mdf_itch_v1_0.rate_determination_days.size + 
  asx_asxsecurities_mdf_itch_v1_0.yield_convention.size + 
  asx_asxsecurities_mdf_itch_v1_0.end_of_month_count_convention.size + 
  asx_asxsecurities_mdf_itch_v1_0.first_settlement_date.size + 
  asx_asxsecurities_mdf_itch_v1_0.coupon_div_date.size + 
  asx_asxsecurities_mdf_itch_v1_0.date_books_close.size + 
  asx_asxsecurities_mdf_itch_v1_0.effective_expiration_date.size + 
  asx_asxsecurities_mdf_itch_v1_0.proceed_date.size + 
  asx_asxsecurities_mdf_itch_v1_0.set_end_consideration.size + 
  asx_asxsecurities_mdf_itch_v1_0.set_start_consideration.size

-- Display: Order Book Directory Extension Message
asx_asxsecurities_mdf_itch_v1_0.order_book_directory_extension_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Directory Extension Message
asx_asxsecurities_mdf_itch_v1_0.order_book_directory_extension_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = asx_asxsecurities_mdf_itch_v1_0.message_timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = asx_asxsecurities_mdf_itch_v1_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Accrued Interest Rounding: Numeric
  index, accrued_interest_rounding = asx_asxsecurities_mdf_itch_v1_0.accrued_interest_rounding.dissect(buffer, index, packet, parent)

  -- Accrued Interest Updown: Numeric
  index, accrued_interest_updown = asx_asxsecurities_mdf_itch_v1_0.accrued_interest_updown.dissect(buffer, index, packet, parent)

  -- Calculation Convention: Numeric
  index, calculation_convention = asx_asxsecurities_mdf_itch_v1_0.calculation_convention.dissect(buffer, index, packet, parent)

  -- Clean Price Rounding: Numeric
  index, clean_price_rounding = asx_asxsecurities_mdf_itch_v1_0.clean_price_rounding.dissect(buffer, index, packet, parent)

  -- Clean Price Updown: Numeric
  index, clean_price_updown = asx_asxsecurities_mdf_itch_v1_0.clean_price_updown.dissect(buffer, index, packet, parent)

  -- Coupon Frequency: Numeric
  index, coupon_frequency = asx_asxsecurities_mdf_itch_v1_0.coupon_frequency.dissect(buffer, index, packet, parent)

  -- Coupon Interest: Numeric
  index, coupon_interest = asx_asxsecurities_mdf_itch_v1_0.coupon_interest.dissect(buffer, index, packet, parent)

  -- Coupon From Date: Date
  index, coupon_from_date = asx_asxsecurities_mdf_itch_v1_0.coupon_from_date.dissect(buffer, index, packet, parent)

  -- Issue Date: Date
  index, issue_date = asx_asxsecurities_mdf_itch_v1_0.issue_date.dissect(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = asx_asxsecurities_mdf_itch_v1_0.maturity_date.dissect(buffer, index, packet, parent)

  -- Day Calculation Rule: Numeric
  index, day_calculation_rule = asx_asxsecurities_mdf_itch_v1_0.day_calculation_rule.dissect(buffer, index, packet, parent)

  -- Day Count Convention: Numeric
  index, day_count_convention = asx_asxsecurities_mdf_itch_v1_0.day_count_convention.dissect(buffer, index, packet, parent)

  -- Ex Coupon Period: Date
  index, ex_coupon_period = asx_asxsecurities_mdf_itch_v1_0.ex_coupon_period.dissect(buffer, index, packet, parent)

  -- Dividend: Numeric
  index, dividend = asx_asxsecurities_mdf_itch_v1_0.dividend.dissect(buffer, index, packet, parent)

  -- Fixed Income Type: Numeric
  index, fixed_income_type = asx_asxsecurities_mdf_itch_v1_0.fixed_income_type.dissect(buffer, index, packet, parent)

  -- Rate Determination Days: Numeric
  index, rate_determination_days = asx_asxsecurities_mdf_itch_v1_0.rate_determination_days.dissect(buffer, index, packet, parent)

  -- Yield Convention: Numeric
  index, yield_convention = asx_asxsecurities_mdf_itch_v1_0.yield_convention.dissect(buffer, index, packet, parent)

  -- End Of Month Count Convention: Numeric
  index, end_of_month_count_convention = asx_asxsecurities_mdf_itch_v1_0.end_of_month_count_convention.dissect(buffer, index, packet, parent)

  -- First Settlement Date: Date
  index, first_settlement_date = asx_asxsecurities_mdf_itch_v1_0.first_settlement_date.dissect(buffer, index, packet, parent)

  -- Coupon Div Date: Date
  index, coupon_div_date = asx_asxsecurities_mdf_itch_v1_0.coupon_div_date.dissect(buffer, index, packet, parent)

  -- Date Books Close: Date
  index, date_books_close = asx_asxsecurities_mdf_itch_v1_0.date_books_close.dissect(buffer, index, packet, parent)

  -- Effective Expiration Date: Date
  index, effective_expiration_date = asx_asxsecurities_mdf_itch_v1_0.effective_expiration_date.dissect(buffer, index, packet, parent)

  -- Proceed Date: Date
  index, proceed_date = asx_asxsecurities_mdf_itch_v1_0.proceed_date.dissect(buffer, index, packet, parent)

  -- Set End Consideration: Numeric
  index, set_end_consideration = asx_asxsecurities_mdf_itch_v1_0.set_end_consideration.dissect(buffer, index, packet, parent)

  -- Set Start Consideration: Numeric
  index, set_start_consideration = asx_asxsecurities_mdf_itch_v1_0.set_start_consideration.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Directory Extension Message
asx_asxsecurities_mdf_itch_v1_0.order_book_directory_extension_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.order_book_directory_extension_message, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.order_book_directory_extension_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.order_book_directory_extension_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.order_book_directory_extension_message.fields(buffer, offset, packet, parent)
  end
end

-- Corporate Action Entry Message
asx_asxsecurities_mdf_itch_v1_0.corporate_action_entry_message = {}

-- Size: Corporate Action Entry Message
asx_asxsecurities_mdf_itch_v1_0.corporate_action_entry_message.size =
  asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.size + 
  asx_asxsecurities_mdf_itch_v1_0.corporate_action_id.size + 
  asx_asxsecurities_mdf_itch_v1_0.order_book_id.size + 
  asx_asxsecurities_mdf_itch_v1_0.corporate_action_code.size + 
  asx_asxsecurities_mdf_itch_v1_0.corporate_action_type.size + 
  asx_asxsecurities_mdf_itch_v1_0.start_date.size + 
  asx_asxsecurities_mdf_itch_v1_0.end_date.size + 
  asx_asxsecurities_mdf_itch_v1_0.record_date.size + 
  asx_asxsecurities_mdf_itch_v1_0.corporate_action_status.size + 
  asx_asxsecurities_mdf_itch_v1_0.action.size

-- Display: Corporate Action Entry Message
asx_asxsecurities_mdf_itch_v1_0.corporate_action_entry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Corporate Action Entry Message
asx_asxsecurities_mdf_itch_v1_0.corporate_action_entry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = asx_asxsecurities_mdf_itch_v1_0.message_timestamp.dissect(buffer, index, packet, parent)

  -- Corporate Action Id: Numeric
  index, corporate_action_id = asx_asxsecurities_mdf_itch_v1_0.corporate_action_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = asx_asxsecurities_mdf_itch_v1_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Corporate Action Code: Alpha
  index, corporate_action_code = asx_asxsecurities_mdf_itch_v1_0.corporate_action_code.dissect(buffer, index, packet, parent)

  -- Corporate Action Type: Alpha
  index, corporate_action_type = asx_asxsecurities_mdf_itch_v1_0.corporate_action_type.dissect(buffer, index, packet, parent)

  -- Start Date: Date
  index, start_date = asx_asxsecurities_mdf_itch_v1_0.start_date.dissect(buffer, index, packet, parent)

  -- End Date: Date
  index, end_date = asx_asxsecurities_mdf_itch_v1_0.end_date.dissect(buffer, index, packet, parent)

  -- Record Date: Date
  index, record_date = asx_asxsecurities_mdf_itch_v1_0.record_date.dissect(buffer, index, packet, parent)

  -- Corporate Action Status: Numeric
  index, corporate_action_status = asx_asxsecurities_mdf_itch_v1_0.corporate_action_status.dissect(buffer, index, packet, parent)

  -- Action: Numeric
  index, action = asx_asxsecurities_mdf_itch_v1_0.action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Corporate Action Entry Message
asx_asxsecurities_mdf_itch_v1_0.corporate_action_entry_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.corporate_action_entry_message, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.corporate_action_entry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.corporate_action_entry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.corporate_action_entry_message.fields(buffer, offset, packet, parent)
  end
end

-- Tick Size Table Entry Message
asx_asxsecurities_mdf_itch_v1_0.tick_size_table_entry_message = {}

-- Size: Tick Size Table Entry Message
asx_asxsecurities_mdf_itch_v1_0.tick_size_table_entry_message.size =
  asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.size + 
  asx_asxsecurities_mdf_itch_v1_0.order_book_id.size + 
  asx_asxsecurities_mdf_itch_v1_0.tick_size.size + 
  asx_asxsecurities_mdf_itch_v1_0.price_from.size + 
  asx_asxsecurities_mdf_itch_v1_0.price_to.size

-- Display: Tick Size Table Entry Message
asx_asxsecurities_mdf_itch_v1_0.tick_size_table_entry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Size Table Entry Message
asx_asxsecurities_mdf_itch_v1_0.tick_size_table_entry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = asx_asxsecurities_mdf_itch_v1_0.message_timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = asx_asxsecurities_mdf_itch_v1_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Tick Size: Numeric
  index, tick_size = asx_asxsecurities_mdf_itch_v1_0.tick_size.dissect(buffer, index, packet, parent)

  -- Price From: Price
  index, price_from = asx_asxsecurities_mdf_itch_v1_0.price_from.dissect(buffer, index, packet, parent)

  -- Price To: Price
  index, price_to = asx_asxsecurities_mdf_itch_v1_0.price_to.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Size Table Entry Message
asx_asxsecurities_mdf_itch_v1_0.tick_size_table_entry_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.tick_size_table_entry_message, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.tick_size_table_entry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.tick_size_table_entry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.tick_size_table_entry_message.fields(buffer, offset, packet, parent)
  end
end

-- Combination Order Book Leg Directory Message
asx_asxsecurities_mdf_itch_v1_0.combination_order_book_leg_directory_message = {}

-- Size: Combination Order Book Leg Directory Message
asx_asxsecurities_mdf_itch_v1_0.combination_order_book_leg_directory_message.size =
  asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.size + 
  asx_asxsecurities_mdf_itch_v1_0.combination_order_book_id.size + 
  asx_asxsecurities_mdf_itch_v1_0.leg_order_book_id.size + 
  asx_asxsecurities_mdf_itch_v1_0.leg_side.size + 
  asx_asxsecurities_mdf_itch_v1_0.leg_ratio.size

-- Display: Combination Order Book Leg Directory Message
asx_asxsecurities_mdf_itch_v1_0.combination_order_book_leg_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combination Order Book Leg Directory Message
asx_asxsecurities_mdf_itch_v1_0.combination_order_book_leg_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = asx_asxsecurities_mdf_itch_v1_0.message_timestamp.dissect(buffer, index, packet, parent)

  -- Combination Order Book Id: Numeric
  index, combination_order_book_id = asx_asxsecurities_mdf_itch_v1_0.combination_order_book_id.dissect(buffer, index, packet, parent)

  -- Leg Order Book Id: Numeric
  index, leg_order_book_id = asx_asxsecurities_mdf_itch_v1_0.leg_order_book_id.dissect(buffer, index, packet, parent)

  -- Leg Side: Alpha
  index, leg_side = asx_asxsecurities_mdf_itch_v1_0.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Numeric
  index, leg_ratio = asx_asxsecurities_mdf_itch_v1_0.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Order Book Leg Directory Message
asx_asxsecurities_mdf_itch_v1_0.combination_order_book_leg_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.combination_order_book_leg_directory_message, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.combination_order_book_leg_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.combination_order_book_leg_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.combination_order_book_leg_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Directory Message
asx_asxsecurities_mdf_itch_v1_0.market_directory_message = {}

-- Size: Market Directory Message
asx_asxsecurities_mdf_itch_v1_0.market_directory_message.size =
  asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.size + 
  asx_asxsecurities_mdf_itch_v1_0.market_id.size + 
  asx_asxsecurities_mdf_itch_v1_0.market_name.size + 
  asx_asxsecurities_mdf_itch_v1_0.market_type.size + 
  asx_asxsecurities_mdf_itch_v1_0.index_market.size

-- Display: Market Directory Message
asx_asxsecurities_mdf_itch_v1_0.market_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Directory Message
asx_asxsecurities_mdf_itch_v1_0.market_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = asx_asxsecurities_mdf_itch_v1_0.message_timestamp.dissect(buffer, index, packet, parent)

  -- Market Id: Numeric
  index, market_id = asx_asxsecurities_mdf_itch_v1_0.market_id.dissect(buffer, index, packet, parent)

  -- Market Name: Alpha
  index, market_name = asx_asxsecurities_mdf_itch_v1_0.market_name.dissect(buffer, index, packet, parent)

  -- Market Type: Numeric
  index, market_type = asx_asxsecurities_mdf_itch_v1_0.market_type.dissect(buffer, index, packet, parent)

  -- Index Market: Numeric
  index, index_market = asx_asxsecurities_mdf_itch_v1_0.index_market.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Directory Message
asx_asxsecurities_mdf_itch_v1_0.market_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.market_directory_message, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.market_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.market_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.market_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Directory Message
asx_asxsecurities_mdf_itch_v1_0.exchange_directory_message = {}

-- Size: Exchange Directory Message
asx_asxsecurities_mdf_itch_v1_0.exchange_directory_message.size =
  asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.size + 
  asx_asxsecurities_mdf_itch_v1_0.exchange_id.size + 
  asx_asxsecurities_mdf_itch_v1_0.exchange_name.size

-- Display: Exchange Directory Message
asx_asxsecurities_mdf_itch_v1_0.exchange_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Exchange Directory Message
asx_asxsecurities_mdf_itch_v1_0.exchange_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = asx_asxsecurities_mdf_itch_v1_0.message_timestamp.dissect(buffer, index, packet, parent)

  -- Exchange Id: Numeric
  index, exchange_id = asx_asxsecurities_mdf_itch_v1_0.exchange_id.dissect(buffer, index, packet, parent)

  -- Exchange Name: Alpha
  index, exchange_name = asx_asxsecurities_mdf_itch_v1_0.exchange_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Exchange Directory Message
asx_asxsecurities_mdf_itch_v1_0.exchange_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.exchange_directory_message, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.exchange_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.exchange_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.exchange_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Directory Message
asx_asxsecurities_mdf_itch_v1_0.order_book_directory_message = {}

-- Size: Order Book Directory Message
asx_asxsecurities_mdf_itch_v1_0.order_book_directory_message.size =
  asx_asxsecurities_mdf_itch_v1_0.timestamp_nanoseconds.size + 
  asx_asxsecurities_mdf_itch_v1_0.order_book_id.size + 
  asx_asxsecurities_mdf_itch_v1_0.partition_id.size + 
  asx_asxsecurities_mdf_itch_v1_0.symbol.size + 
  asx_asxsecurities_mdf_itch_v1_0.long_name.size + 
  asx_asxsecurities_mdf_itch_v1_0.isin.size + 
  asx_asxsecurities_mdf_itch_v1_0.asset_name.size + 
  asx_asxsecurities_mdf_itch_v1_0.financial_product.size + 
  asx_asxsecurities_mdf_itch_v1_0.trading_currency.size + 
  asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_price.size + 
  asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_nominal_value.size + 
  asx_asxsecurities_mdf_itch_v1_0.round_lot_size.size + 
  asx_asxsecurities_mdf_itch_v1_0.nominal_value.size + 
  asx_asxsecurities_mdf_itch_v1_0.number_of_legs.size + 
  asx_asxsecurities_mdf_itch_v1_0.commodity_code.size + 
  asx_asxsecurities_mdf_itch_v1_0.strike_price.size + 
  asx_asxsecurities_mdf_itch_v1_0.expiration_date.size + 
  asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_strike_price.size + 
  asx_asxsecurities_mdf_itch_v1_0.option_type.size + 
  asx_asxsecurities_mdf_itch_v1_0.market_id.size + 
  asx_asxsecurities_mdf_itch_v1_0.exchange_id.size + 
  asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in.size + 
  asx_asxsecurities_mdf_itch_v1_0.sector_code.size + 
  asx_asxsecurities_mdf_itch_v1_0.number_of_tradable_equities.size + 
  asx_asxsecurities_mdf_itch_v1_0.number_of_outstanding_equities.size + 
  asx_asxsecurities_mdf_itch_v1_0.last_traded_date.size + 
  asx_asxsecurities_mdf_itch_v1_0.contract_multiplier.size + 
  asx_asxsecurities_mdf_itch_v1_0.multiplier.size + 
  asx_asxsecurities_mdf_itch_v1_0.decimals_in_multiplier.size + 
  asx_asxsecurities_mdf_itch_v1_0.min_order_quantity.size + 
  asx_asxsecurities_mdf_itch_v1_0.max_order_quantity.size + 
  asx_asxsecurities_mdf_itch_v1_0.number_of_settlement_days.size + 
  asx_asxsecurities_mdf_itch_v1_0.primary.size + 
  asx_asxsecurities_mdf_itch_v1_0.test_order_book.size + 
  asx_asxsecurities_mdf_itch_v1_0.alias_name.size + 
  asx_asxsecurities_mdf_itch_v1_0.settlement_date.size + 
  asx_asxsecurities_mdf_itch_v1_0.tradable.size + 
  asx_asxsecurities_mdf_itch_v1_0.externally_price_sourced.size + 
  asx_asxsecurities_mdf_itch_v1_0.deliverable.size + 
  asx_asxsecurities_mdf_itch_v1_0.price_unit.size + 
  asx_asxsecurities_mdf_itch_v1_0.issuer.size + 
  asx_asxsecurities_mdf_itch_v1_0.foreign_ownership_restriction.size + 
  asx_asxsecurities_mdf_itch_v1_0.last_trading_time.size + 
  asx_asxsecurities_mdf_itch_v1_0.option_style.size + 
  asx_asxsecurities_mdf_itch_v1_0.minimum_value_for_initial_trade_report.size + 
  asx_asxsecurities_mdf_itch_v1_0.cfi_code.size + 
  asx_asxsecurities_mdf_itch_v1_0.upper_level_series.size + 
  asx_asxsecurities_mdf_itch_v1_0.upper_series_level_order_book_id.size + 
  asx_asxsecurities_mdf_itch_v1_0.instrument_type.size + 
  asx_asxsecurities_mdf_itch_v1_0.status.size

-- Display: Order Book Directory Message
asx_asxsecurities_mdf_itch_v1_0.order_book_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Directory Message
asx_asxsecurities_mdf_itch_v1_0.order_book_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = asx_asxsecurities_mdf_itch_v1_0.message_timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = asx_asxsecurities_mdf_itch_v1_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Partition Id: Numeric
  index, partition_id = asx_asxsecurities_mdf_itch_v1_0.partition_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = asx_asxsecurities_mdf_itch_v1_0.symbol.dissect(buffer, index, packet, parent)

  -- Long Name: Alpha
  index, long_name = asx_asxsecurities_mdf_itch_v1_0.long_name.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = asx_asxsecurities_mdf_itch_v1_0.isin.dissect(buffer, index, packet, parent)

  -- Asset Name: Alpha
  index, asset_name = asx_asxsecurities_mdf_itch_v1_0.asset_name.dissect(buffer, index, packet, parent)

  -- Financial Product: Numeric
  index, financial_product = asx_asxsecurities_mdf_itch_v1_0.financial_product.dissect(buffer, index, packet, parent)

  -- Trading Currency: Alpha
  index, trading_currency = asx_asxsecurities_mdf_itch_v1_0.trading_currency.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Price: Numeric
  index, number_of_decimals_in_price = asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_price.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Nominal Value: Numeric
  index, number_of_decimals_in_nominal_value = asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_nominal_value.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Numeric
  index, round_lot_size = asx_asxsecurities_mdf_itch_v1_0.round_lot_size.dissect(buffer, index, packet, parent)

  -- Nominal Value: Numeric
  index, nominal_value = asx_asxsecurities_mdf_itch_v1_0.nominal_value.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Numeric
  index, number_of_legs = asx_asxsecurities_mdf_itch_v1_0.number_of_legs.dissect(buffer, index, packet, parent)

  -- Commodity Code: Numeric
  index, commodity_code = asx_asxsecurities_mdf_itch_v1_0.commodity_code.dissect(buffer, index, packet, parent)

  -- Strike Price: Price
  index, strike_price = asx_asxsecurities_mdf_itch_v1_0.strike_price.dissect(buffer, index, packet, parent)

  -- Expiration Date: Date
  index, expiration_date = asx_asxsecurities_mdf_itch_v1_0.expiration_date.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Strike Price: Numeric
  index, number_of_decimals_in_strike_price = asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Numeric
  index, option_type = asx_asxsecurities_mdf_itch_v1_0.option_type.dissect(buffer, index, packet, parent)

  -- Market Id: Numeric
  index, market_id = asx_asxsecurities_mdf_itch_v1_0.market_id.dissect(buffer, index, packet, parent)

  -- Exchange Id: Numeric
  index, exchange_id = asx_asxsecurities_mdf_itch_v1_0.exchange_id.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In: Numeric
  index, number_of_decimals_in = asx_asxsecurities_mdf_itch_v1_0.number_of_decimals_in.dissect(buffer, index, packet, parent)

  -- Sector Code: Alpha
  index, sector_code = asx_asxsecurities_mdf_itch_v1_0.sector_code.dissect(buffer, index, packet, parent)

  -- Number Of Tradable Equities: Numeric
  index, number_of_tradable_equities = asx_asxsecurities_mdf_itch_v1_0.number_of_tradable_equities.dissect(buffer, index, packet, parent)

  -- Number Of Outstanding Equities: Numeric
  index, number_of_outstanding_equities = asx_asxsecurities_mdf_itch_v1_0.number_of_outstanding_equities.dissect(buffer, index, packet, parent)

  -- Last Traded Date: Date
  index, last_traded_date = asx_asxsecurities_mdf_itch_v1_0.last_traded_date.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: Numeric
  index, contract_multiplier = asx_asxsecurities_mdf_itch_v1_0.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Multiplier: Numeric
  index, multiplier = asx_asxsecurities_mdf_itch_v1_0.multiplier.dissect(buffer, index, packet, parent)

  -- Decimals In Multiplier: Numeric
  index, decimals_in_multiplier = asx_asxsecurities_mdf_itch_v1_0.decimals_in_multiplier.dissect(buffer, index, packet, parent)

  -- Min Order Quantity: Numeric
  index, min_order_quantity = asx_asxsecurities_mdf_itch_v1_0.min_order_quantity.dissect(buffer, index, packet, parent)

  -- Max Order Quantity: Numeric
  index, max_order_quantity = asx_asxsecurities_mdf_itch_v1_0.max_order_quantity.dissect(buffer, index, packet, parent)

  -- Number Of Settlement Days: Numeric
  index, number_of_settlement_days = asx_asxsecurities_mdf_itch_v1_0.number_of_settlement_days.dissect(buffer, index, packet, parent)

  -- Primary: Numeric
  index, primary = asx_asxsecurities_mdf_itch_v1_0.primary.dissect(buffer, index, packet, parent)

  -- Test Order Book: Numeric
  index, test_order_book = asx_asxsecurities_mdf_itch_v1_0.test_order_book.dissect(buffer, index, packet, parent)

  -- Alias Name: Alpha
  index, alias_name = asx_asxsecurities_mdf_itch_v1_0.alias_name.dissect(buffer, index, packet, parent)

  -- Settlement Date: Numeric
  index, settlement_date = asx_asxsecurities_mdf_itch_v1_0.settlement_date.dissect(buffer, index, packet, parent)

  -- Tradable: Numeric
  index, tradable = asx_asxsecurities_mdf_itch_v1_0.tradable.dissect(buffer, index, packet, parent)

  -- Externally Price Sourced: Numeric
  index, externally_price_sourced = asx_asxsecurities_mdf_itch_v1_0.externally_price_sourced.dissect(buffer, index, packet, parent)

  -- Deliverable: Numeric
  index, deliverable = asx_asxsecurities_mdf_itch_v1_0.deliverable.dissect(buffer, index, packet, parent)

  -- Price Unit: Numeric
  index, price_unit = asx_asxsecurities_mdf_itch_v1_0.price_unit.dissect(buffer, index, packet, parent)

  -- Issuer: Alpha
  index, issuer = asx_asxsecurities_mdf_itch_v1_0.issuer.dissect(buffer, index, packet, parent)

  -- Foreign Ownership Restriction: Numeric
  index, foreign_ownership_restriction = asx_asxsecurities_mdf_itch_v1_0.foreign_ownership_restriction.dissect(buffer, index, packet, parent)

  -- Last Trading Time: Alpha
  index, last_trading_time = asx_asxsecurities_mdf_itch_v1_0.last_trading_time.dissect(buffer, index, packet, parent)

  -- Option Style: Numeric
  index, option_style = asx_asxsecurities_mdf_itch_v1_0.option_style.dissect(buffer, index, packet, parent)

  -- Minimum Value For Initial Trade Report: Numeric
  index, minimum_value_for_initial_trade_report = asx_asxsecurities_mdf_itch_v1_0.minimum_value_for_initial_trade_report.dissect(buffer, index, packet, parent)

  -- Cfi Code: Alpha
  index, cfi_code = asx_asxsecurities_mdf_itch_v1_0.cfi_code.dissect(buffer, index, packet, parent)

  -- Upper Level Series: Alpha
  index, upper_level_series = asx_asxsecurities_mdf_itch_v1_0.upper_level_series.dissect(buffer, index, packet, parent)

  -- Upper Series Level Order Book Id: Numeric
  index, upper_series_level_order_book_id = asx_asxsecurities_mdf_itch_v1_0.upper_series_level_order_book_id.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alpha
  index, instrument_type = asx_asxsecurities_mdf_itch_v1_0.instrument_type.dissect(buffer, index, packet, parent)

  -- Status: Alpha
  index, status = asx_asxsecurities_mdf_itch_v1_0.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Directory Message
asx_asxsecurities_mdf_itch_v1_0.order_book_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.order_book_directory_message, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.order_book_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.order_book_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.order_book_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Message
asx_asxsecurities_mdf_itch_v1_0.seconds_message = {}

-- Size: Seconds Message
asx_asxsecurities_mdf_itch_v1_0.seconds_message.size =
  asx_asxsecurities_mdf_itch_v1_0.second.size

-- Display: Seconds Message
asx_asxsecurities_mdf_itch_v1_0.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
asx_asxsecurities_mdf_itch_v1_0.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Numeric
  index, second = asx_asxsecurities_mdf_itch_v1_0.second.dissect(buffer, index, packet, parent)

  -- Store Second Value
  asx_asxsecurities_mdf_itch_v1_0.second.current = second

  if not packet.visited then
    asx_asxsecurities_mdf_itch_v1_0.conversation.current.second.last = second
  end

  return index
end

-- Dissect: Seconds Message
asx_asxsecurities_mdf_itch_v1_0.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.seconds_message, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
asx_asxsecurities_mdf_itch_v1_0.payload = {}

-- Dissect: Payload
asx_asxsecurities_mdf_itch_v1_0.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Seconds Message
  if message_type == "T" then
    return asx_asxsecurities_mdf_itch_v1_0.seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Directory Message
  if message_type == "R" then
    return asx_asxsecurities_mdf_itch_v1_0.order_book_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Exchange Directory Message
  if message_type == "e" then
    return asx_asxsecurities_mdf_itch_v1_0.exchange_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Directory Message
  if message_type == "m" then
    return asx_asxsecurities_mdf_itch_v1_0.market_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Combination Order Book Leg Directory Message
  if message_type == "M" then
    return asx_asxsecurities_mdf_itch_v1_0.combination_order_book_leg_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Size Table Entry Message
  if message_type == "L" then
    return asx_asxsecurities_mdf_itch_v1_0.tick_size_table_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Corporate Action Entry Message
  if message_type == "C" then
    return asx_asxsecurities_mdf_itch_v1_0.corporate_action_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Directory Extension Message
  if message_type == "f" then
    return asx_asxsecurities_mdf_itch_v1_0.order_book_directory_extension_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return asx_asxsecurities_mdf_itch_v1_0.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book State Message
  if message_type == "O" then
    return asx_asxsecurities_mdf_itch_v1_0.order_book_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Business Date Message
  if message_type == "B" then
    return asx_asxsecurities_mdf_itch_v1_0.business_date_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Recovery Message
  if message_type == "g" then
    return offset
  end
  -- Dissect Instrument Status Message
  if message_type == "t" then
    return asx_asxsecurities_mdf_itch_v1_0.instrument_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equilibrium Price Message
  if message_type == "Z" then
    return asx_asxsecurities_mdf_itch_v1_0.equilibrium_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market By Price Message
  if message_type == "b" then
    return asx_asxsecurities_mdf_itch_v1_0.market_by_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Statistics Message
  if message_type == "I" then
    return asx_asxsecurities_mdf_itch_v1_0.trade_statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reference Price Message
  if message_type == "Q" then
    return asx_asxsecurities_mdf_itch_v1_0.reference_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Message
  if message_type == "J" then
    return asx_asxsecurities_mdf_itch_v1_0.index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open Interest Message
  if message_type == "h" then
    return asx_asxsecurities_mdf_itch_v1_0.open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Ticker Message
  if message_type == "i" then
    return asx_asxsecurities_mdf_itch_v1_0.trade_ticker_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Limits Message
  if message_type == "k" then
    return asx_asxsecurities_mdf_itch_v1_0.price_limits_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Announcement Message
  if message_type == "N" then
    return asx_asxsecurities_mdf_itch_v1_0.market_announcement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Snapshot Message
  if message_type == "G" then
    return asx_asxsecurities_mdf_itch_v1_0.end_of_snapshot_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
asx_asxsecurities_mdf_itch_v1_0.message_header = {}

-- Size: Message Header
asx_asxsecurities_mdf_itch_v1_0.message_header.size =
  asx_asxsecurities_mdf_itch_v1_0.message_length.size + 
  asx_asxsecurities_mdf_itch_v1_0.message_type.size

-- Display: Message Header
asx_asxsecurities_mdf_itch_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
asx_asxsecurities_mdf_itch_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = asx_asxsecurities_mdf_itch_v1_0.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 23 values
  index, message_type = asx_asxsecurities_mdf_itch_v1_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
asx_asxsecurities_mdf_itch_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.message_header, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
asx_asxsecurities_mdf_itch_v1_0.message = {}

-- Read runtime size of: Message
asx_asxsecurities_mdf_itch_v1_0.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
asx_asxsecurities_mdf_itch_v1_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
asx_asxsecurities_mdf_itch_v1_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and asx_asxsecurities_mdf_itch_v1_0.packet_sequence ~= nil then
    local sequence = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.message_sequence_number, UInt64.new(asx_asxsecurities_mdf_itch_v1_0.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = asx_asxsecurities_mdf_itch_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 23 branches
  index = asx_asxsecurities_mdf_itch_v1_0.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
asx_asxsecurities_mdf_itch_v1_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = asx_asxsecurities_mdf_itch_v1_0.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.message, buffer(offset, 0))
    local current = asx_asxsecurities_mdf_itch_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = asx_asxsecurities_mdf_itch_v1_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    asx_asxsecurities_mdf_itch_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
asx_asxsecurities_mdf_itch_v1_0.end_of_session = {}

-- Display: End Of Session
asx_asxsecurities_mdf_itch_v1_0.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
asx_asxsecurities_mdf_itch_v1_0.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = asx_asxsecurities_mdf_itch_v1_0.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
asx_asxsecurities_mdf_itch_v1_0.heartbeat = {}

-- Display: Heartbeat
asx_asxsecurities_mdf_itch_v1_0.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
asx_asxsecurities_mdf_itch_v1_0.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = asx_asxsecurities_mdf_itch_v1_0.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
asx_asxsecurities_mdf_itch_v1_0.messages = {}

-- Dispatch: Messages
asx_asxsecurities_mdf_itch_v1_0.messages.dispatch = {
  [0] = asx_asxsecurities_mdf_itch_v1_0.heartbeat.dissect,
  [65535] = asx_asxsecurities_mdf_itch_v1_0.end_of_session.dissect,
}

-- Dissect: Messages
asx_asxsecurities_mdf_itch_v1_0.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = asx_asxsecurities_mdf_itch_v1_0.messages.dispatch[message_count]
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
    offset = asx_asxsecurities_mdf_itch_v1_0.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
asx_asxsecurities_mdf_itch_v1_0.packet_header = {}

-- Size: Packet Header
asx_asxsecurities_mdf_itch_v1_0.packet_header.size =
  asx_asxsecurities_mdf_itch_v1_0.session.size + 
  asx_asxsecurities_mdf_itch_v1_0.sequence_number.size + 
  asx_asxsecurities_mdf_itch_v1_0.message_count.size

-- Display: Packet Header
asx_asxsecurities_mdf_itch_v1_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
asx_asxsecurities_mdf_itch_v1_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = asx_asxsecurities_mdf_itch_v1_0.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = asx_asxsecurities_mdf_itch_v1_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = asx_asxsecurities_mdf_itch_v1_0.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  asx_asxsecurities_mdf_itch_v1_0.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
asx_asxsecurities_mdf_itch_v1_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0.fields.packet_header, buffer(offset, 0))
    local index = asx_asxsecurities_mdf_itch_v1_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_asxsecurities_mdf_itch_v1_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_asxsecurities_mdf_itch_v1_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
asx_asxsecurities_mdf_itch_v1_0.packet = {}

-- Verify required size of Udp packet
asx_asxsecurities_mdf_itch_v1_0.packet.requiredsize = function(buffer)
  return buffer:len() >= asx_asxsecurities_mdf_itch_v1_0.packet_header.size
end

-- Dissect Packet
asx_asxsecurities_mdf_itch_v1_0.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = asx_asxsecurities_mdf_itch_v1_0.conversation.data(packet)
  if not packet.visited then
    data.second.frames[packet.number] = data.second.last
  end
  asx_asxsecurities_mdf_itch_v1_0.second.current = data.second.frames[packet.number]
  asx_asxsecurities_mdf_itch_v1_0.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = asx_asxsecurities_mdf_itch_v1_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = asx_asxsecurities_mdf_itch_v1_0.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_asx_asxsecurities_mdf_itch_v1_0.init()
  asx_asxsecurities_mdf_itch_v1_0.second.current = nil
  asx_asxsecurities_mdf_itch_v1_0.conversation.current = nil
  asx_asxsecurities_mdf_itch_v1_0.conversation.flows = {}
end

-- Dissector for Asx AsxSecurities Mdf Itch 1.0
function omi_asx_asxsecurities_mdf_itch_v1_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_asx_asxsecurities_mdf_itch_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_asx_asxsecurities_mdf_itch_v1_0, buffer(), omi_asx_asxsecurities_mdf_itch_v1_0.description, "("..buffer:len().." Bytes)")
  return asx_asxsecurities_mdf_itch_v1_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Asx AsxSecurities Mdf Itch 1.0 (Udp)
local function omi_asx_asxsecurities_mdf_itch_v1_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not asx_asxsecurities_mdf_itch_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_asx_asxsecurities_mdf_itch_v1_0
  omi_asx_asxsecurities_mdf_itch_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Asx AsxSecurities Mdf Itch 1.0
omi_asx_asxsecurities_mdf_itch_v1_0:register_heuristic("udp", omi_asx_asxsecurities_mdf_itch_v1_0_udp_heuristic)

-- Register Asx AsxSecurities Mdf Itch 1.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_asx_asxsecurities_mdf_itch_v1_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Australian Securities Exchange
--   Version: 1.0
--   Date: Sunday, March 1, 2026
--   Specification: asx-trade-mdf-message-specification.pdf
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
--   https://patents.google.com/patent/US12101388B2/en
--   https://patents.google.com/patent/US20240419416A1/en
--   https://patents.google.com/patent/US20260368281A1/en
--
-----------------------------------------------------------------------
