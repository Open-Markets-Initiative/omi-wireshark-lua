-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe CedxDerivatives MulticastDepthOfBook Pitch 1.01 Protocol
local omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01 = Proto("Omi.Cboe.CedxDerivatives.MulticastDepthOfBook.Pitch.v1.01", "Cboe CedxDerivatives MulticastDepthOfBook Pitch 1.01")

-- Protocol table
local cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe CedxDerivatives MulticastDepthOfBook Pitch 1.01 Fields
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.algorithmic_indicator = ProtoField.new("Algorithmic Indicator", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.algorithmicindicator", ftypes.STRING, nil, nil, nil, "MMT Level 3.9")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.algorithmic_trade = ProtoField.new("Algorithmic Trade", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.algorithmictrade", ftypes.STRING, nil, nil, nil, "MMT Level 3.9")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.auction_end_offset = ProtoField.new("Auction End Offset", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.auctionendoffset", ftypes.UINT32, nil, nil, nil, "Nanosecond offset from last timestamp")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.auction_id = ProtoField.new("Auction Id", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.auctionid", ftypes.UINT64, nil, nil, nil, "Day specific identifier assigned to this auction")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.auctiononlyprice", ftypes.DOUBLE, nil, nil, nil, "Uncollared VMIM price")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.auction_type = ProtoField.new("Auction Type", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.auctiontype", ftypes.STRING, nil, nil, nil, "O = Opening Auction")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.benchmark_reference_price_indicator = ProtoField.new("Benchmark Reference Price Indicator", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.benchmarkreferencepriceindicator", ftypes.STRING, nil, nil, nil, "MMT Level 3.5")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.block_volume = ProtoField.new("Block Volume", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.blockvolume", ftypes.UINT32, nil, nil, nil, "Total number of block contracts traded")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.buy_contracts = ProtoField.new("Buy Contracts", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.buycontracts", ftypes.UINT32, nil, nil, nil, "Cumulative buy contracts at the Reference Price and above")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.call_put = ProtoField.new("Call Put", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.callput", ftypes.STRING, nil, nil, nil, "P = Put C = Call")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.cancelled_contracts_long = ProtoField.new("Cancelled Contracts Long", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.cancelledcontractslong", ftypes.UINT32, nil, nil, nil, "Number of contracts cancelled")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.cancelled_contracts_short = ProtoField.new("Cancelled Contracts Short", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.cancelledcontractsshort", ftypes.UINT16, nil, nil, nil, "Number of contracts cancelled")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.cboe_trade_flags = ProtoField.new("Cboe Trade Flags", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.cboetradeflags", ftypes.STRING, nil, nil, nil, "See the EU Column in§4.9.6, p. 19 for possible values.")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.close_price = ProtoField.new("Close Price", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.closeprice", ftypes.DOUBLE, nil, nil, nil, "If Total Volume ¿ 0, represents the last trade of the day")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.complex_instrument_id = ProtoField.new("Complex Instrument Id", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.complexinstrumentid", ftypes.STRING, nil, nil, nil, "Complex Instrument Id right padded with spaces")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.composite_market_bid_price = ProtoField.new("Composite Market Bid Price", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.compositemarketbidprice", ftypes.DOUBLE, nil, nil, nil, "Bid Price of the prevailing Composite Market")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.composite_market_offer_price = ProtoField.new("Composite Market Offer Price", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.compositemarketofferprice", ftypes.DOUBLE, nil, nil, nil, "Offer Price of the prevailing Composite Market")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.contract_size = ProtoField.new("Contract Size", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.contractsize", ftypes.UINT16, nil, nil, nil, "Contract size of Instrument")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.contracts_extended = ProtoField.new("Contracts Extended", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.contractsextended", ftypes.UINT64, nil, nil, nil, "Number of contracts executed")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.contracts_long = ProtoField.new("Contracts Long", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.contractslong", ftypes.UINT32, nil, nil, nil, "Number of contracts associated with this order after this modify (may be less than the number of contracts entered)")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.contracts_short = ProtoField.new("Contracts Short", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.contractsshort", ftypes.UINT16, nil, nil, nil, "Number of contracts associated with this order after this modify (may be less than the number of contracts entered)")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.crossing_trade = ProtoField.new("Crossing Trade", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.crossingtrade", ftypes.STRING, nil, nil, nil, "MMT Level 3.3")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.currency = ProtoField.new("Currency", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.currency", ftypes.STRING, nil, nil, nil, "Traded currency.")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.customerindicator", ftypes.STRING, nil, nil, nil, "N = Non-Customer C = Customer")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.deferral_or_enrichement_type = ProtoField.new("Deferral Or Enrichement Type", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.deferralorenrichementtype", ftypes.STRING, nil, nil, nil, "MMT Level 4.2")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.duplicative_indicator = ProtoField.new("Duplicative Indicator", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.duplicativeindicator", ftypes.STRING, nil, nil, nil, "MMT Level 5")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.ecrp_volume = ProtoField.new("Ecrp Volume", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.ecrpvolume", ftypes.UINT32, nil, nil, nil, "Unused in CEDX")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.ex_cum_dividend = ProtoField.new("Ex Cum Dividend", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.excumdividend", ftypes.STRING, nil, nil, nil, "MMT Level 3.6")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.executedquantity", ftypes.UINT32, nil, nil, nil, "Number of contracts executed")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.execution_flags = ProtoField.new("Execution Flags", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.executionflags", ftypes.STRING)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.execution_id = ProtoField.new("Execution Id", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.executionid", ftypes.UINT64, nil, nil, nil, "Cboe generated day-unique execution identifier of this execution. Execution Id is also referenced in the Trade Break Message.")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.execution_venue = ProtoField.new("Execution Venue", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.executionvenue", ftypes.STRING, nil, nil, nil, "Always CEDX.")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.expiration_date = ProtoField.new("Expiration Date", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.expirationdate", ftypes.UINT32, nil, nil, nil, "Expiration Date of Instrument")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.extended_trade_flags = ProtoField.new("Extended Trade Flags", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.extendedtradeflags", ftypes.STRING)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.high_price_1 = ProtoField.new("High Price 1", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.highprice1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "Set if High Price is valid")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.high_price_binary_price_8 = ProtoField.new("High Price Binary Price 8", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.highpricebinaryprice8", ftypes.DOUBLE, nil, nil, nil, "Highest trade price for the day.")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.indicativeprice", ftypes.DOUBLE, nil, nil, nil, "Equal to Reference Price")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.issue = ProtoField.new("Issue", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.issue", ftypes.STRING, nil, nil, nil, "S = Initial Settlement R = Re-issued Settlement")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.leg_count = ProtoField.new("Leg Count", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.legcount", ftypes.UINT8, nil, nil, nil, "The number of legs in the complex instrument. The maximum number is 12.")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.leg_group = ProtoField.new("Leg Group", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.leggroup", ftypes.STRING)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.leg_ratio = ProtoField.new("Leg Ratio", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.legratio", ftypes.INT32, nil, nil, nil, "Leg Ratio (positive for buy-side, negative for sellside).")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.leg_symbol = ProtoField.new("Leg Symbol", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.legsymbol", ftypes.STRING, nil, nil, nil, "Option or Future Symbol of leg, right padded with spaces")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.length = ProtoField.new("Length", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.length", ftypes.UINT16, nil, nil, nil, "Length of entire block of messages. Includes this header and Message Count messages to follow")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.listing_state = ProtoField.new("Listing State", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.listingstate", ftypes.STRING, nil, nil, nil, "A = Active I = Inactive T = Test")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.low_price_1 = ProtoField.new("Low Price 1", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.lowprice1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04, "Set if Low Price is valid")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.low_price_binary_price_8 = ProtoField.new("Low Price Binary Price 8", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.lowpricebinaryprice8", ftypes.DOUBLE, nil, nil, nil, "Lowest trade price for the day.")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.market_mechanism = ProtoField.new("Market Mechanism", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.marketmechanism", ftypes.STRING, nil, nil, nil, "MMT Level 1")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.message_count = ProtoField.new("Message Count", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.messagecount", ftypes.UINT8, nil, nil, nil, "Number of messages to follow this header")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.message_length = ProtoField.new("Message Length", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.messagelength", ftypes.UINT8, nil, nil, nil, "Current Pitch message length")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.message_type = ProtoField.new("Message Type", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.modification_indicator = ProtoField.new("Modification Indicator", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.modificationindicator", ftypes.STRING, nil, nil, nil, "MMT Level 3.4")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.multiplier = ProtoField.new("Multiplier", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.multiplier", ftypes.DOUBLE, nil, nil, nil, "Width Multiplier")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.negotiated_trade = ProtoField.new("Negotiated Trade", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.negotiatedtrade", ftypes.STRING, nil, nil, nil, "MMT Level 3.2")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.off_book_automated_indicator = ProtoField.new("Off Book Automated Indicator", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.offbookautomatedindicator", ftypes.STRING, nil, nil, nil, "MMT Level 3.7")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.open_and_close_price = ProtoField.new("Open And Close Price", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.openandcloseprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10, "Set if both Open and Close Price fields contain valid values")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.open_interest = ProtoField.new("Open Interest", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.openinterest", ftypes.UINT32, nil, nil, nil, "Unused in CEDX")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.open_price = ProtoField.new("Open Price", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.openprice", ftypes.DOUBLE, nil, nil, nil, "If Total Volume ¿ 0, represents the first trade of the day")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.opening_condition = ProtoField.new("Opening Condition", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.openingcondition", ftypes.STRING, nil, nil, nil, "O = Would open Q = Need quote to open B = Need more buyers S = Need more sellers C = Crossed Composite Market")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.order_id = ProtoField.new("Order Id", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.orderid", ftypes.UINT64, nil, nil, nil, "Day-specific identifier assigned to this order")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.participant_id = ProtoField.new("Participant Id", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.participantid", ftypes.STRING, nil, nil, nil, "Executing Broker (optional) of firm attributed to this quote")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.price_formation_discovery_process = ProtoField.new("Price Formation Discovery Process", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.priceformationdiscoveryprocess", ftypes.STRING, nil, nil, nil, "MMT Level 3.8")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.price_increment = ProtoField.new("Price Increment", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.priceincrement", ftypes.DOUBLE, nil, nil, nil, "Minimum Price Increment")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.price_level = ProtoField.new("Price Level", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.pricelevel", ftypes.DOUBLE)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.price_level_count = ProtoField.new("Price Level Count", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.pricelevelcount", ftypes.UINT8, nil, nil, nil, "The number of price levels present in this auction. The maximum number is 12.")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.price_level_group = ProtoField.new("Price Level Group", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.pricelevelgroup", ftypes.STRING)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.price_long = ProtoField.new("Price Long", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.pricelong", ftypes.DOUBLE, nil, nil, nil, "The limit order price")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.price_short = ProtoField.new("Price Short", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.priceshort", ftypes.DOUBLE, nil, nil, nil, "The limit order price")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.product_code = ProtoField.new("Product Code", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.productcode", ftypes.STRING, nil, nil, nil, "Cboe Symbol for underlying Product")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.publication_mode_deferral_reason = ProtoField.new("Publication Mode Deferral Reason", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.publicationmodedeferralreason", ftypes.STRING, nil, nil, nil, "MMT Level 4.1")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.quantity_long = ProtoField.new("Quantity Long", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.quantitylong", ftypes.UINT32, nil, nil, nil, "Number of contracts being added to the book (may be less than the number entered)")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.quantityshort", ftypes.UINT16, nil, nil, nil, "Number of contracts being added to the book (may be less than the number entered)")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.reference_price = ProtoField.new("Reference Price", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.referenceprice", ftypes.DOUBLE, nil, nil, nil, "Collared VMIM price")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.remainingquantity", ftypes.UINT32, nil, nil, nil, "Number of contracts remaining after the execution")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.reserved_3 = ProtoField.new("Reserved 3", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.reserved3", ftypes.STRING, nil, nil, nil, "Reserved")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.second_unused_1 = ProtoField.new("Second Unused 1", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.secondunused1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08, "Reserved")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.sell_contracts = ProtoField.new("Sell Contracts", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.sellcontracts", ftypes.UINT32, nil, nil, nil, "Cumulative sell contracts at the Reference Price and below")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.sequence = ProtoField.new("Sequence", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.sequence", ftypes.UINT32, nil, nil, nil, "Sequence Number of the first message to follow this header")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.settlement_price = ProtoField.new("Settlement Price", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.settlementprice", ftypes.DOUBLE)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.side = ProtoField.new("Side", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.side", ftypes.STRING, nil, nil, nil, "”B” or ”S”")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.sideindicator", ftypes.STRING, nil, nil, nil, "B = Buy Order S = Sell Order")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.special_dividend = ProtoField.new("Special Dividend", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.specialdividend", ftypes.STRING, nil, nil, nil, "MMT Level 3.6")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.status = ProtoField.new("Status", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.status", ftypes.STRING, nil, nil, nil, "C = Closed Q = Queuing O = Opening/Re-opening Auction T = Trading S = Suspension H = Halted")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.strike_price = ProtoField.new("Strike Price", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Strike Price of Instrument")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.summary_flags = ProtoField.new("Summary Flags", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.summaryflags", ftypes.STRING)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.symbol = ProtoField.new("Symbol", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.symbol", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.symbol_long = ProtoField.new("Symbol Long", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.symbollong", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.time = ProtoField.new("Time", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.time", ftypes.UINT32, nil, nil, nil, "Number of whole seconds from midnight London time")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.time_offset = ProtoField.new("Time Offset", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.timeoffset", ftypes.UINT32, nil, nil, nil, "Nanosecond offset from last unit timestamp")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.total_volume = ProtoField.new("Total Volume", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.totalvolume", ftypes.UINT32, nil, nil, nil, "Total number of contracts traded")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.trade_date = ProtoField.new("Trade Date", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.tradedate", ftypes.UINT32, nil, nil, nil, "Trade Date for the settlement")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.trade_flags = ProtoField.new("Trade Flags", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.tradeflags", ftypes.STRING)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.trade_id = ProtoField.new("Trade Id", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.tradeid", ftypes.UINT64, nil, nil, nil, "Cboe generated identifier of this trade. This identifier is guaranteed to be unique for at least 7 calendar days.")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.trade_timestamp = ProtoField.new("Trade Timestamp", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.tradetimestamp", ftypes.UINT64, nil, nil, nil, "Date/Time on which the trade occurred, encoded as the number of nanoseconds since the January 1st 1970 UTC (also known as the Unix epoch).")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.trading_mode = ProtoField.new("Trading Mode", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.tradingmode", ftypes.STRING, nil, nil, nil, "MMT Level 2")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.transaction_category = ProtoField.new("Transaction Category", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.transactioncategory", ftypes.STRING, nil, nil, nil, "MMT Level 3.1")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.unit = ProtoField.new("Unit", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.unit", ftypes.UINT8, nil, nil, nil, "Unit that applies to messages included in this header")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.unused_1 = ProtoField.new("Unused 1", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.unused1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "Reserved")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.unused_3 = ProtoField.new("Unused 3", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.unused3", ftypes.UINT8, nil, base.DEC, 0xE0, "Reserved")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.volume = ProtoField.new("Volume", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.volume", ftypes.UINT32, nil, nil, nil, "Total volume of responses at this Price Level")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.width_type = ProtoField.new("Width Type", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.widthtype", ftypes.STRING, nil, nil, nil, "R = Regular V = Volatility")

-- Cboe CedxDerivatives MulticastDepthOfBook Pitch 1.01 Framing
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.message = ProtoField.new("Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.message", ftypes.STRING)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.message_header = ProtoField.new("Message Header", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.messageheader", ftypes.STRING)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.packet = ProtoField.new("Packet", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.packet", ftypes.STRING, nil, nil, nil, "Pitch Udp Packet")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.packet_header = ProtoField.new("Packet Header", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.packetheader", ftypes.STRING)

-- Cboe CedxDerivatives MulticastDepthOfBook 1.01 Application Messages
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.addorderlongmessage", ftypes.STRING, nil, nil, nil, "Add Order — Long")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.addordershortmessage", ftypes.STRING, nil, nil, nil, "Add Order — Short")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.auction_cancel_message = ProtoField.new("Auction Cancel Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.auctioncancelmessage", ftypes.STRING)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.auction_liquidity_message = ProtoField.new("Auction Liquidity Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.auctionliquiditymessage", ftypes.STRING)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.auctionnotificationmessage", ftypes.STRING)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.auctionsummarymessage", ftypes.STRING)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.auctiontrademessage", ftypes.STRING)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.complex_instrument_definition_message = ProtoField.new("Complex Instrument Definition Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.complexinstrumentdefinitionmessage", ftypes.STRING)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.deleteordermessage", ftypes.STRING, nil, nil, nil, "Delete Order")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.end_of_day_message = ProtoField.new("End Of Day Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.endofdaymessage", ftypes.STRING)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.endofsessionmessage", ftypes.STRING, nil, nil, nil, "End of Session")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.futures_instrument_definition_message = ProtoField.new("Futures Instrument Definition Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.futuresinstrumentdefinitionmessage", ftypes.STRING)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.modifyorderlongmessage", ftypes.STRING, nil, nil, nil, "Modify Order — Long")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.modifyordershortmessage", ftypes.STRING, nil, nil, nil, "Modify Order — Short")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.opening_auction_update_message = ProtoField.new("Opening Auction Update Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.openingauctionupdatemessage", ftypes.STRING)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.options_instrument_definition_message = ProtoField.new("Options Instrument Definition Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.optionsinstrumentdefinitionmessage", ftypes.STRING)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.orderexecutedatpricesizemessage", ftypes.STRING, nil, nil, nil, "Order Executed at Price/Size")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "Order Executed")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.reducesizelongmessage", ftypes.STRING, nil, nil, nil, "Reduce Size — Long")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.reducesizeshortmessage", ftypes.STRING, nil, nil, nil, "Reduce Size — Short")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.settlement_message = ProtoField.new("Settlement Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.settlementmessage", ftypes.STRING)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.time_message = ProtoField.new("Time Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.timemessage", ftypes.STRING, nil, nil, nil, "Time")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.tradebreakmessage", ftypes.STRING)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.trade_extended_message = ProtoField.new("Trade Extended Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.tradeextendedmessage", ftypes.STRING, nil, nil, nil, "Trade — Extended")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.tradelongmessage", ftypes.STRING, nil, nil, nil, "Trade — Long")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.tradeshortmessage", ftypes.STRING, nil, nil, nil, "Trade — Short")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.tradingstatusmessage", ftypes.STRING, nil, nil, nil, "Trading Status")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.transaction_begin_message = ProtoField.new("Transaction Begin Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.transactionbeginmessage", ftypes.STRING, nil, nil, nil, "Transaction Begin")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.transaction_end_message = ProtoField.new("Transaction End Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.transactionendmessage", ftypes.STRING, nil, nil, nil, "Transaction End")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.unitclearmessage", ftypes.STRING, nil, nil, nil, "Unit Clear")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.width_update_message = ProtoField.new("Width Update Message", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.widthupdatemessage", ftypes.STRING)

-- Cboe CedxDerivatives MulticastDepthOfBook Pitch 1.01 Generated Fields
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.leg_group_index = ProtoField.new("Leg Group Index", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.leggroupindex", ftypes.UINT16)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.message_index = ProtoField.new("Message Index", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.messageindex", ftypes.UINT16)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.price_level_group_index = ProtoField.new("Price Level Group Index", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.pricelevelgroupindex", ftypes.UINT16)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.messagesequencenumber", ftypes.UINT64)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.timestamp = ProtoField.new("Timestamp", "cboe.cedxderivatives.multicastdepthofbook.pitch.v1.01.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Cboe CedxDerivatives MulticastDepthOfBook Pitch 1.01 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.utc_offset_hours = 5

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe CedxDerivatives MulticastDepthOfBook Pitch 1.01 Element Dissection Options
show.application_messages = true
show.structs = true
show.repeating_groups = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Cboe CedxDerivatives MulticastDepthOfBook Pitch 1.01 Show Options
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.timestamp_format = Pref.enum("Time Offset Format", 2, "Time Offset display format", timestamp_format_enum, false)
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.show_application_messages then
    show.application_messages = omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.show_headers then
    show.headers = omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.show_headers
  end
  if show.repeating_groups ~= omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.show_repeating_groups then
    show.repeating_groups = omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.show_repeating_groups
  end
  if show.structs ~= omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.show_structs then
    show.structs = omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.show_indexes then
    show.indexes = omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.show_indexes
  end
  if show.sequences ~= omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.show_sequences then
    show.sequences = omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.show_sequences
  end
  if cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.format_timestamp ~= omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.format_timestamp then
    cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.format_timestamp = omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.format_timestamp
  end
  if cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp_format ~= omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.timestamp_format then
    cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp_format = omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.timestamp_format
  end
  if cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.utc_offset_hours ~= omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.utc_offset_hours then
    cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.utc_offset_hours = omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.conversation = {}
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.conversation.data = function(packet)
  local key = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.conversation.key(packet)
  local data = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.conversation.flows[key]
  if data == nil then
    data = { time = { last = nil, frames = {} } }
    cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.conversation.current = nil


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
-- Cboe CedxDerivatives MulticastDepthOfBook Pitch 1.01 Fields
-----------------------------------------------------------------------

-- Algorithmic Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.algorithmic_indicator = {}

-- Size: Algorithmic Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.algorithmic_indicator.size = 1

-- Display: Algorithmic Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.algorithmic_indicator.display = function(value)
  return "Algorithmic Indicator: "..value
end

-- Dissect: Algorithmic Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.algorithmic_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.algorithmic_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.algorithmic_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Algorithmic Trade
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.algorithmic_trade = {}

-- Size: Algorithmic Trade
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.algorithmic_trade.size = 1

-- Display: Algorithmic Trade
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.algorithmic_trade.display = function(value)
  if value == "H" then
    return "Algorithmic Trade: Algorithmic Trade (H)"
  end
  if value == "-" then
    return "Algorithmic Trade: Nonalgorithmic Trade (-)"
  end

  return "Algorithmic Trade: Unknown("..value..")"
end

-- Dissect: Algorithmic Trade
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.algorithmic_trade.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.algorithmic_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.algorithmic_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.algorithmic_trade, range, value, display)

  return offset + length, value
end

-- Auction End Offset
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_end_offset = {}

-- Size: Auction End Offset
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_end_offset.size = 4

-- Display: Auction End Offset
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_end_offset.display = function(value)
  return "Auction End Offset: "..value
end

-- Dissect: Auction End Offset
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_end_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_end_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_end_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.auction_end_offset, range, value, display)

  return offset + length, value
end

-- Auction Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_id = {}

-- Size: Auction Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_id.size = 8

-- Display: Auction Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Only Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_only_price = {}

-- Size: Auction Only Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_only_price.size = 8

-- Display: Auction Only Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_only_price.display = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_only_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Only Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_only_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_only_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_only_price.translate(raw)
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_only_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_type = {}

-- Size: Auction Type
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_type.size = 1

-- Display: Auction Type
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_type.display = function(value)
  if value == "O" then
    return "Auction Type: Opening Auction (O)"
  end
  if value == "B" then
    return "Auction Type: Aim (B)"
  end
  if value == "C" then
    return "Auction Type: Coa (C)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Benchmark Reference Price Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.benchmark_reference_price_indicator = {}

-- Size: Benchmark Reference Price Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.benchmark_reference_price_indicator.size = 1

-- Display: Benchmark Reference Price Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.benchmark_reference_price_indicator.display = function(value)
  if value == "B" then
    return "Benchmark Reference Price Indicator: Benchmark Trade If Optionally Set By Reporting Party (B)"
  end
  if value == "S" then
    return "Benchmark Reference Price Indicator: Reference Price Trade (S)"
  end
  if value == "-" then
    return "Benchmark Reference Price Indicator: Not Specified (-)"
  end

  return "Benchmark Reference Price Indicator: Unknown("..value..")"
end

-- Dissect: Benchmark Reference Price Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.benchmark_reference_price_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.benchmark_reference_price_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.benchmark_reference_price_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.benchmark_reference_price_indicator, range, value, display)

  return offset + length, value
end

-- Block Volume
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.block_volume = {}

-- Size: Block Volume
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.block_volume.size = 4

-- Display: Block Volume
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.block_volume.display = function(value)
  return "Block Volume: "..value
end

-- Dissect: Block Volume
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.block_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.block_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.block_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.block_volume, range, value, display)

  return offset + length, value
end

-- Buy Contracts
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.buy_contracts = {}

-- Size: Buy Contracts
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.buy_contracts.size = 4

-- Display: Buy Contracts
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.buy_contracts.display = function(value)
  return "Buy Contracts: "..value
end

-- Dissect: Buy Contracts
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.buy_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.buy_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.buy_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.buy_contracts, range, value, display)

  return offset + length, value
end

-- Call Put
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.call_put = {}

-- Size: Call Put
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.call_put.size = 1

-- Display: Call Put
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.call_put.display = function(value)
  if value == "P" then
    return "Call Put: Put (P)"
  end
  if value == "C" then
    return "Call Put: Call (C)"
  end

  return "Call Put: Unknown("..value..")"
end

-- Dissect: Call Put
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.call_put.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.call_put.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.call_put.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.call_put, range, value, display)

  return offset + length, value
end

-- Cancelled Contracts Long
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cancelled_contracts_long = {}

-- Size: Cancelled Contracts Long
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cancelled_contracts_long.size = 4

-- Display: Cancelled Contracts Long
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cancelled_contracts_long.display = function(value)
  return "Cancelled Contracts Long: "..value
end

-- Dissect: Cancelled Contracts Long
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cancelled_contracts_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cancelled_contracts_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cancelled_contracts_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.cancelled_contracts_long, range, value, display)

  return offset + length, value
end

-- Cancelled Contracts Short
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cancelled_contracts_short = {}

-- Size: Cancelled Contracts Short
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cancelled_contracts_short.size = 2

-- Display: Cancelled Contracts Short
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cancelled_contracts_short.display = function(value)
  return "Cancelled Contracts Short: "..value
end

-- Dissect: Cancelled Contracts Short
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cancelled_contracts_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cancelled_contracts_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cancelled_contracts_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.cancelled_contracts_short, range, value, display)

  return offset + length, value
end

-- Cboe Trade Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cboe_trade_flags = {}

-- Size: Cboe Trade Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cboe_trade_flags.size = 1

-- Display: Cboe Trade Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cboe_trade_flags.display = function(value)
  if value == "4" then
    return "Cboe Trade Flags: Eu The Trade Was Reported To Cboe On Time And In The Main Session (4)"
  end
  if value == "5" then
    return "Cboe Trade Flags: Eu The Trade Was Reported To Cboe Late (5)"
  end
  if value == "6" then
    return "Cboe Trade Flags: Eu The Trade Was Reported To Cboe Out Of The Main Session (6)"
  end
  if value == "7" then
    return "Cboe Trade Flags: Eu The Trade Was Reported To Cboe Late And Out Of The Main Session (7)"
  end

  return "Cboe Trade Flags: Unknown("..value..")"
end

-- Dissect: Cboe Trade Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cboe_trade_flags.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cboe_trade_flags.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cboe_trade_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.cboe_trade_flags, range, value, display)

  return offset + length, value
end

-- Close Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.close_price = {}

-- Size: Close Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.close_price.size = 8

-- Display: Close Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.close_price.display = function(value)
  return "Close Price: "..value
end

-- Translate: Close Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.close_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Close Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.close_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.close_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.close_price.translate(raw)
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.close_price, range, value, display)

  return offset + length, value
end

-- Complex Instrument Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.complex_instrument_id = {}

-- Size: Complex Instrument Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.complex_instrument_id.size = 6

-- Display: Complex Instrument Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.complex_instrument_id.display = function(value)
  return "Complex Instrument Id: "..value
end

-- Dissect: Complex Instrument Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.complex_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.complex_instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.complex_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.complex_instrument_id, range, value, display)

  return offset + length, value
end

-- Composite Market Bid Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.composite_market_bid_price = {}

-- Size: Composite Market Bid Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.composite_market_bid_price.size = 8

-- Display: Composite Market Bid Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.composite_market_bid_price.display = function(value)
  return "Composite Market Bid Price: "..value
end

-- Translate: Composite Market Bid Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.composite_market_bid_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Bid Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.composite_market_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.composite_market_bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.composite_market_bid_price.translate(raw)
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.composite_market_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.composite_market_bid_price, range, value, display)

  return offset + length, value
end

-- Composite Market Offer Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.composite_market_offer_price = {}

-- Size: Composite Market Offer Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.composite_market_offer_price.size = 8

-- Display: Composite Market Offer Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.composite_market_offer_price.display = function(value)
  return "Composite Market Offer Price: "..value
end

-- Translate: Composite Market Offer Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.composite_market_offer_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Offer Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.composite_market_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.composite_market_offer_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.composite_market_offer_price.translate(raw)
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.composite_market_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.composite_market_offer_price, range, value, display)

  return offset + length, value
end

-- Contract Size
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contract_size = {}

-- Size: Contract Size
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contract_size.size = 2

-- Display: Contract Size
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contract_size.display = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contract_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contract_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Contracts Extended
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_extended = {}

-- Size: Contracts Extended
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_extended.size = 8

-- Display: Contracts Extended
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_extended.display = function(value)
  return "Contracts Extended: "..value
end

-- Dissect: Contracts Extended
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_extended.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_extended.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_extended.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.contracts_extended, range, value, display)

  return offset + length, value
end

-- Contracts Long
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_long = {}

-- Size: Contracts Long
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_long.size = 4

-- Display: Contracts Long
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_long.display = function(value)
  return "Contracts Long: "..value
end

-- Dissect: Contracts Long
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.contracts_long, range, value, display)

  return offset + length, value
end

-- Contracts Short
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_short = {}

-- Size: Contracts Short
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_short.size = 2

-- Display: Contracts Short
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_short.display = function(value)
  return "Contracts Short: "..value
end

-- Dissect: Contracts Short
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.contracts_short, range, value, display)

  return offset + length, value
end

-- Crossing Trade
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.crossing_trade = {}

-- Size: Crossing Trade
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.crossing_trade.size = 1

-- Display: Crossing Trade
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.crossing_trade.display = function(value)
  if value == "X" then
    return "Crossing Trade: Crossing Trade (X)"
  end
  if value == "-" then
    return "Crossing Trade: Not Specified (-)"
  end

  return "Crossing Trade: Unknown("..value..")"
end

-- Dissect: Crossing Trade
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.crossing_trade.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.crossing_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.crossing_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.crossing_trade, range, value, display)

  return offset + length, value
end

-- Currency
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.currency = {}

-- Size: Currency
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.currency.size = 3

-- Display: Currency
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.currency.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.currency, range, value, display)

  return offset + length, value
end

-- Customer Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.customer_indicator = {}

-- Size: Customer Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.customer_indicator.size = 1

-- Display: Customer Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.customer_indicator.display = function(value)
  if value == "N" then
    return "Customer Indicator: Non Customer (N)"
  end
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Deferral Or Enrichement Type
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.deferral_or_enrichement_type = {}

-- Size: Deferral Or Enrichement Type
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.deferral_or_enrichement_type.size = 1

-- Display: Deferral Or Enrichement Type
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.deferral_or_enrichement_type.display = function(value)
  if value == "1" then
    return "Deferral Or Enrichement Type: Limited Details Trade (1)"
  end
  if value == "2" then
    return "Deferral Or Enrichement Type: Daily Aggregated Trade (2)"
  end
  if value == "3" then
    return "Deferral Or Enrichement Type: Volume Omission Trade (3)"
  end
  if value == "4" then
    return "Deferral Or Enrichement Type: Four Weeks Aggregation Trade (4)"
  end
  if value == "5" then
    return "Deferral Or Enrichement Type: Indefinite Aggregation Trade (5)"
  end
  if value == "6" then
    return "Deferral Or Enrichement Type: Volume Omission Trade Eligible For Subsequent Enrichment In Aggregated Form (6)"
  end
  if value == "7" then
    return "Deferral Or Enrichement Type: Full Details Of Earlier Limited Details Trade (7)"
  end
  if value == "8" then
    return "Deferral Or Enrichement Type: Full Details Of Earlier Daily Aggregated Trade (8)"
  end
  if value == "9" then
    return "Deferral Or Enrichement Type: Full Details Of Earlier Volume Omission Trade (9)"
  end
  if value == "V" then
    return "Deferral Or Enrichement Type: Full Details Of Four Weeks Aggregation Trade (V)"
  end
  if value == "W" then
    return "Deferral Or Enrichement Type: Full Details Of Earlier Volume Omission Trade Eligible For Subsequent Enrichment In Aggregated Form (W)"
  end
  if value == "-" then
    return "Deferral Or Enrichement Type: Not Applicable (-)"
  end

  return "Deferral Or Enrichement Type: Unknown("..value..")"
end

-- Dissect: Deferral Or Enrichement Type
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.deferral_or_enrichement_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.deferral_or_enrichement_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.deferral_or_enrichement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.deferral_or_enrichement_type, range, value, display)

  return offset + length, value
end

-- Duplicative Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.duplicative_indicator = {}

-- Size: Duplicative Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.duplicative_indicator.size = 1

-- Display: Duplicative Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.duplicative_indicator.display = function(value)
  if value == "1" then
    return "Duplicative Indicator: Duplicative Trade Report (1)"
  end
  if value == "-" then
    return "Duplicative Indicator: Unique Trade Report (-)"
  end

  return "Duplicative Indicator: Unknown("..value..")"
end

-- Dissect: Duplicative Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.duplicative_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.duplicative_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.duplicative_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.duplicative_indicator, range, value, display)

  return offset + length, value
end

-- Ecrp Volume
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.ecrp_volume = {}

-- Size: Ecrp Volume
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.ecrp_volume.size = 4

-- Display: Ecrp Volume
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.ecrp_volume.display = function(value)
  return "Ecrp Volume: "..value
end

-- Dissect: Ecrp Volume
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.ecrp_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.ecrp_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.ecrp_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.ecrp_volume, range, value, display)

  return offset + length, value
end

-- Ex Cum Dividend
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.ex_cum_dividend = {}

-- Size: Ex Cum Dividend
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.ex_cum_dividend.size = 1

-- Display: Ex Cum Dividend
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.ex_cum_dividend.display = function(value)
  if value == "E" then
    return "Ex Cum Dividend: Ex Cum Special Dividend If Optionally Set By Reporting Party (E)"
  end
  if value == "-" then
    return "Ex Cum Dividend: Not Specified (-)"
  end

  return "Ex Cum Dividend: Unknown("..value..")"
end

-- Dissect: Ex Cum Dividend
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.ex_cum_dividend.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.ex_cum_dividend.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.ex_cum_dividend.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.ex_cum_dividend, range, value, display)

  return offset + length, value
end

-- Executed Quantity
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.executed_quantity = {}

-- Size: Executed Quantity
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.executed_quantity.size = 4

-- Display: Executed Quantity
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_id = {}

-- Size: Execution Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_id.size = 8

-- Display: Execution Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Execution Venue
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_venue = {}

-- Size: Execution Venue
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_venue.size = 4

-- Display: Execution Venue
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_venue.display = function(value)
  return "Execution Venue: "..value
end

-- Dissect: Execution Venue
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_venue.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_venue.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.execution_venue, range, value, display)

  return offset + length, value
end

-- Expiration Date
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.expiration_date = {}

-- Size: Expiration Date
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.expiration_date.size = 4

-- Display: Expiration Date
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.expiration_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- High Price Binary Price 8
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.high_price_binary_price_8 = {}

-- Size: High Price Binary Price 8
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.high_price_binary_price_8.size = 8

-- Display: High Price Binary Price 8
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.high_price_binary_price_8.display = function(value)
  return "High Price Binary Price 8: "..value
end

-- Translate: High Price Binary Price 8
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.high_price_binary_price_8.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: High Price Binary Price 8
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.high_price_binary_price_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.high_price_binary_price_8.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.high_price_binary_price_8.translate(raw)
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.high_price_binary_price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.high_price_binary_price_8, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.indicative_price = {}

-- Size: Indicative Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.indicative_price.size = 8

-- Display: Indicative Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.indicative_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.indicative_price.translate(raw)
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Issue
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.issue = {}

-- Size: Issue
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.issue.size = 1

-- Display: Issue
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.issue.display = function(value)
  if value == "S" then
    return "Issue: Initial Settlement (S)"
  end
  if value == "R" then
    return "Issue: Reissued Settlement (R)"
  end

  return "Issue: Unknown("..value..")"
end

-- Dissect: Issue
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.issue.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.issue.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.issue, range, value, display)

  return offset + length, value
end

-- Leg Count
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_count = {}

-- Size: Leg Count
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_count.size = 1

-- Display: Leg Count
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_count.display = function(value)
  return "Leg Count: "..value
end

-- Dissect: Leg Count
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.leg_count, range, value, display)

  return offset + length, value
end

-- Leg Ratio
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_ratio = {}

-- Size: Leg Ratio
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_ratio.size = 4

-- Display: Leg Ratio
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Symbol
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_symbol = {}

-- Size: Leg Symbol
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_symbol.size = 6

-- Display: Leg Symbol
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Length
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.length = {}

-- Size: Length
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.length.size = 2

-- Display: Length
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.length, range, value, display)

  return offset + length, value
end

-- Listing State
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.listing_state = {}

-- Size: Listing State
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.listing_state.size = 1

-- Display: Listing State
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.listing_state.display = function(value)
  if value == "A" then
    return "Listing State: Active (A)"
  end
  if value == "I" then
    return "Listing State: Inactive (I)"
  end
  if value == "T" then
    return "Listing State: Test (T)"
  end

  return "Listing State: Unknown("..value..")"
end

-- Dissect: Listing State
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.listing_state.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.listing_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.listing_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.listing_state, range, value, display)

  return offset + length, value
end

-- Low Price Binary Price 8
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.low_price_binary_price_8 = {}

-- Size: Low Price Binary Price 8
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.low_price_binary_price_8.size = 8

-- Display: Low Price Binary Price 8
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.low_price_binary_price_8.display = function(value)
  return "Low Price Binary Price 8: "..value
end

-- Translate: Low Price Binary Price 8
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.low_price_binary_price_8.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Low Price Binary Price 8
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.low_price_binary_price_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.low_price_binary_price_8.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.low_price_binary_price_8.translate(raw)
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.low_price_binary_price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.low_price_binary_price_8, range, value, display)

  return offset + length, value
end

-- Market Mechanism
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.market_mechanism = {}

-- Size: Market Mechanism
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.market_mechanism.size = 1

-- Display: Market Mechanism
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.market_mechanism.display = function(value)
  if value == "1" then
    return "Market Mechanism: Central Limit Order Book (1)"
  end
  if value == "2" then
    return "Market Mechanism: Quote Driven Market (2)"
  end
  if value == "3" then
    return "Market Mechanism: Dark Order Book (3)"
  end
  if value == "4" then
    return "Market Mechanism: Off Book (4)"
  end
  if value == "5" then
    return "Market Mechanism: Periodic Auction (5)"
  end
  if value == "6" then
    return "Market Mechanism: Request For Quotes (6)"
  end
  if value == "7" then
    return "Market Mechanism: Any Other Including Hybrid (7)"
  end

  return "Market Mechanism: Unknown("..value..")"
end

-- Dissect: Market Mechanism
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.market_mechanism.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.market_mechanism.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.market_mechanism.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.market_mechanism, range, value, display)

  return offset + length, value
end

-- Message Count
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_count = {}

-- Size: Message Count
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_count.size = 1

-- Display: Message Count
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_length = {}

-- Size: Message Length
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_length.size = 1

-- Display: Message Length
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_type = {}

-- Size: Message Type
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_type.size = 1

-- Display: Message Type
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_type.display = function(value)
  if value == 0x20 then
    return "Message Type: Time Message (0x20)"
  end
  if value == 0x97 then
    return "Message Type: Unit Clear Message (0x97)"
  end
  if value == 0x40 then
    return "Message Type: Add Order Long Message (0x40)"
  end
  if value == 0x22 then
    return "Message Type: Add Order Short Message (0x22)"
  end
  if value == 0x23 then
    return "Message Type: Order Executed Message (0x23)"
  end
  if value == 0x24 then
    return "Message Type: Order Executed At Price Size Message (0x24)"
  end
  if value == 0x25 then
    return "Message Type: Reduce Size Long Message (0x25)"
  end
  if value == 0x26 then
    return "Message Type: Reduce Size Short Message (0x26)"
  end
  if value == 0x27 then
    return "Message Type: Modify Order Long Message (0x27)"
  end
  if value == 0x28 then
    return "Message Type: Modify Order Short Message (0x28)"
  end
  if value == 0x29 then
    return "Message Type: Delete Order Message (0x29)"
  end
  if value == 0x41 then
    return "Message Type: Trade Long Message (0x41)"
  end
  if value == 0x2B then
    return "Message Type: Trade Short Message (0x2B)"
  end
  if value == 0x32 then
    return "Message Type: Trade Extended Message (0x32)"
  end
  if value == 0x2D then
    return "Message Type: End Of Session Message (0x2D)"
  end
  if value == 0xBC then
    return "Message Type: Transaction Begin Message (0xBC)"
  end
  if value == 0xBD then
    return "Message Type: Transaction End Message (0xBD)"
  end
  if value == 0x31 then
    return "Message Type: Trading Status Message (0x31)"
  end
  if value == 0x96 then
    return "Message Type: Auction Summary Message (0x96)"
  end
  if value == 0xD1 then
    return "Message Type: Opening Auction Update Message (0xD1)"
  end
  if value == 0xAD then
    return "Message Type: Auction Notification Message (0xAD)"
  end
  if value == 0xAE then
    return "Message Type: Auction Cancel Message (0xAE)"
  end
  if value == 0xDF then
    return "Message Type: Auction Trade Message (0xDF)"
  end
  if value == 0xDE then
    return "Message Type: Auction Liquidity Message (0xDE)"
  end
  if value == 0xD2 then
    return "Message Type: Width Update Message (0xD2)"
  end
  if value == 0xDA then
    return "Message Type: Futures Instrument Definition Message (0xDA)"
  end
  if value == 0xDB then
    return "Message Type: Options Instrument Definition Message (0xDB)"
  end
  if value == 0xDC then
    return "Message Type: Complex Instrument Definition Message (0xDC)"
  end
  if value == 0x2C then
    return "Message Type: Trade Break Message (0x2C)"
  end
  if value == 0xB9 then
    return "Message Type: Settlement Message (0xB9)"
  end
  if value == 0xBA then
    return "Message Type: End Of Day Message (0xBA)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.message_type, range, value, display)

  return offset + length, value
end

-- Modification Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modification_indicator = {}

-- Size: Modification Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modification_indicator.size = 1

-- Display: Modification Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modification_indicator.display = function(value)
  if value == "A" then
    return "Modification Indicator: Indicates A Modification Of A Previously Reported Trade (A)"
  end
  if value == "C" then
    return "Modification Indicator: Indicates A Cancellation Of A Previously Reported Trade (C)"
  end
  if value == "-" then
    return "Modification Indicator: Not Specified (-)"
  end

  return "Modification Indicator: Unknown("..value..")"
end

-- Dissect: Modification Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modification_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modification_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modification_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.modification_indicator, range, value, display)

  return offset + length, value
end

-- Multiplier
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.multiplier = {}

-- Size: Multiplier
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.multiplier.size = 4

-- Display: Multiplier
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.multiplier.display = function(value)
  return "Multiplier: "..value
end

-- Translate: Multiplier
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.multiplier.translate = function(raw)
  return raw/10
end

-- Dissect: Multiplier
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.multiplier.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.multiplier.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.multiplier.translate(raw)
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.multiplier, range, value, display)

  return offset + length, value
end

-- Negotiated Trade
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.negotiated_trade = {}

-- Size: Negotiated Trade
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.negotiated_trade.size = 1

-- Display: Negotiated Trade
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.negotiated_trade.display = function(value)
  if value == "1" then
    return "Negotiated Trade: Negotiated Trade In Liquid Financial Instruments (1)"
  end
  if value == "2" then
    return "Negotiated Trade: Negotiated Trade In Illiquid Financial Instruments (2)"
  end
  if value == "3" then
    return "Negotiated Trade: Negotiated Trade Subject To Conditions Other Than The Current Market Price (3)"
  end
  if value == "N" then
    return "Negotiated Trade: Negotiated Trade Where None Of The Above Apply (N)"
  end
  if value == "4" then
    return "Negotiated Trade: Pre Trade Transparency Waiver For Illiquid Instrument On An Si (4)"
  end
  if value == "5" then
    return "Negotiated Trade: Pre Trade Transparency Waiver For Above Standard Market Size On An Si (5)"
  end
  if value == "6" then
    return "Negotiated Trade: Pre Trade Transparency Waivers For Illiquid Instrument On An Si And Above Standard Market Size On An Si (6)"
  end
  if value == "-" then
    return "Negotiated Trade: Not Specified (-)"
  end

  return "Negotiated Trade: Unknown("..value..")"
end

-- Dissect: Negotiated Trade
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.negotiated_trade.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.negotiated_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.negotiated_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.negotiated_trade, range, value, display)

  return offset + length, value
end

-- Off Book Automated Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.off_book_automated_indicator = {}

-- Size: Off Book Automated Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.off_book_automated_indicator.size = 1

-- Display: Off Book Automated Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.off_book_automated_indicator.display = function(value)
  if value == "Q" then
    return "Off Book Automated Indicator: Automated (Q)"
  end
  if value == "M" then
    return "Off Book Automated Indicator: Manual (M)"
  end
  if value == "-" then
    return "Off Book Automated Indicator: Not Specified (-)"
  end

  return "Off Book Automated Indicator: Unknown("..value..")"
end

-- Dissect: Off Book Automated Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.off_book_automated_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.off_book_automated_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.off_book_automated_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.off_book_automated_indicator, range, value, display)

  return offset + length, value
end

-- Open Interest
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.open_interest = {}

-- Size: Open Interest
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.open_interest.size = 4

-- Display: Open Interest
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.open_interest.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Open Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.open_price = {}

-- Size: Open Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.open_price.size = 8

-- Display: Open Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.open_price.display = function(value)
  return "Open Price: "..value
end

-- Translate: Open Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.open_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Open Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.open_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.open_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.open_price.translate(raw)
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.open_price, range, value, display)

  return offset + length, value
end

-- Opening Condition
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.opening_condition = {}

-- Size: Opening Condition
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.opening_condition.size = 1

-- Display: Opening Condition
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.opening_condition.display = function(value)
  if value == "O" then
    return "Opening Condition: Would Open (O)"
  end
  if value == "Q" then
    return "Opening Condition: Need Quote To Open (Q)"
  end
  if value == "B" then
    return "Opening Condition: Need More Buyers (B)"
  end
  if value == "S" then
    return "Opening Condition: Need More Sellers (S)"
  end
  if value == "C" then
    return "Opening Condition: Crossed Composite Market (C)"
  end

  return "Opening Condition: Unknown("..value..")"
end

-- Dissect: Opening Condition
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.opening_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.opening_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.opening_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.opening_condition, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id = {}

-- Size: Order Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.size = 8

-- Display: Order Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.order_id, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.participant_id = {}

-- Size: Participant Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.participant_id.size = 4

-- Display: Participant Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Price Formation Discovery Process
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_formation_discovery_process = {}

-- Size: Price Formation Discovery Process
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_formation_discovery_process.size = 1

-- Display: Price Formation Discovery Process
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_formation_discovery_process.display = function(value)
  if value == "P" then
    return "Price Formation Discovery Process: Standard Trade For The Specified Market Mechanism Or Trading Mode (P)"
  end
  if value == "T" then
    return "Price Formation Discovery Process: Non Price Forming Trade Formerly Known As Technical Trade (T)"
  end
  if value == "J" then
    return "Price Formation Discovery Process: Trade Not Contributing To Price Discovery Process Formerly Technical Trade (J)"
  end
  if value == "N" then
    return "Price Formation Discovery Process: Price Is Currently Not Available But Pending (N)"
  end

  return "Price Formation Discovery Process: Unknown("..value..")"
end

-- Dissect: Price Formation Discovery Process
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_formation_discovery_process.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_formation_discovery_process.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_formation_discovery_process.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.price_formation_discovery_process, range, value, display)

  return offset + length, value
end

-- Price Increment
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_increment = {}

-- Size: Price Increment
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_increment.size = 8

-- Display: Price Increment
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_increment.display = function(value)
  return "Price Increment: "..value
end

-- Translate: Price Increment
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_increment.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Increment
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_increment.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_increment.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_increment.translate(raw)
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.price_increment, range, value, display)

  return offset + length, value
end

-- Price Level
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level = {}

-- Size: Price Level
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level.size = 8

-- Display: Price Level
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level.display = function(value)
  return "Price Level: "..value
end

-- Translate: Price Level
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Level
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level.translate(raw)
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.price_level, range, value, display)

  return offset + length, value
end

-- Price Level Count
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level_count = {}

-- Size: Price Level Count
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level_count.size = 1

-- Display: Price Level Count
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level_count.display = function(value)
  return "Price Level Count: "..value
end

-- Dissect: Price Level Count
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.price_level_count, range, value, display)

  return offset + length, value
end

-- Price Long
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long = {}

-- Size: Price Long
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long.size = 8

-- Display: Price Long
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long.display = function(value)
  return "Price Long: "..value
end

-- Translate: Price Long
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Long
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long.translate(raw)
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_short = {}

-- Size: Price Short
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_short.size = 2

-- Display: Price Short
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Price Short
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_short.translate(raw)
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.price_short, range, value, display)

  return offset + length, value
end

-- Product Code
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.product_code = {}

-- Size: Product Code
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.product_code.size = 8

-- Display: Product Code
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.product_code.display = function(value)
  return "Product Code: "..value
end

-- Dissect: Product Code
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.product_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.product_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.product_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.product_code, range, value, display)

  return offset + length, value
end

-- Publication Mode Deferral Reason
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.publication_mode_deferral_reason = {}

-- Size: Publication Mode Deferral Reason
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.publication_mode_deferral_reason.size = 1

-- Display: Publication Mode Deferral Reason
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.publication_mode_deferral_reason.display = function(value)
  if value == "1" then
    return "Publication Mode Deferral Reason: Trade Report Reported Late Without Permitted Deferral (1)"
  end
  if value == "2" then
    return "Publication Mode Deferral Reason: Deferral Trade For Large In Scale (2)"
  end
  if value == "3" then
    return "Publication Mode Deferral Reason: Deferral Trade For Illiquid Instrument (3)"
  end
  if value == "4" then
    return "Publication Mode Deferral Reason: Deferral Trade For Size Specific (4)"
  end
  if value == "5" then
    return "Publication Mode Deferral Reason: Deferral Trade For Illiquid Instrument And Size Specific (5)"
  end
  if value == "6" then
    return "Publication Mode Deferral Reason: Deferral Trade For Illiquid Instrument And Large In Scale (6)"
  end
  if value == "-" then
    return "Publication Mode Deferral Reason: Not Specified Immediate Publication (-)"
  end

  return "Publication Mode Deferral Reason: Unknown("..value..")"
end

-- Dissect: Publication Mode Deferral Reason
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.publication_mode_deferral_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.publication_mode_deferral_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.publication_mode_deferral_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.publication_mode_deferral_reason, range, value, display)

  return offset + length, value
end

-- Quantity Long
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.quantity_long = {}

-- Size: Quantity Long
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.quantity_long.size = 4

-- Display: Quantity Long
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.quantity_long.display = function(value)
  return "Quantity Long: "..value
end

-- Dissect: Quantity Long
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.quantity_long, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.quantity_short = {}

-- Size: Quantity Short
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.quantity_short.size = 2

-- Display: Quantity Short
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reference_price = {}

-- Size: Reference Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reference_price.size = 8

-- Display: Reference Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reference_price.translate(raw)
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Remaining Quantity
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.remaining_quantity = {}

-- Size: Remaining Quantity
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.remaining_quantity.size = 4

-- Display: Remaining Quantity
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.remaining_quantity.display = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.remaining_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Reserved 3
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reserved_3 = {}

-- Size: Reserved 3
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reserved_3.size = 3

-- Display: Reserved 3
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reserved_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Sell Contracts
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.sell_contracts = {}

-- Size: Sell Contracts
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.sell_contracts.size = 4

-- Display: Sell Contracts
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.sell_contracts.display = function(value)
  return "Sell Contracts: "..value
end

-- Dissect: Sell Contracts
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.sell_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.sell_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.sell_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.sell_contracts, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.sequence = {}

-- Size: Sequence
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.sequence.size = 4

-- Display: Sequence
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.sequence, range, value, display)

  return offset + length, value
end

-- Settlement Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.settlement_price = {}

-- Size: Settlement Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.settlement_price.size = 8

-- Display: Settlement Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Translate: Settlement Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.settlement_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Settlement Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.settlement_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.settlement_price.translate(raw)
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Side
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.side = {}

-- Size: Side
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.side.size = 1

-- Display: Side
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.side.display = function(value)
  return "Side: "..value
end

-- Dissect: Side
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.side, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.side_indicator = {}

-- Size: Side Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.side_indicator.size = 1

-- Display: Side Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Special Dividend
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.special_dividend = {}

-- Size: Special Dividend
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.special_dividend.size = 1

-- Display: Special Dividend
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.special_dividend.display = function(value)
  return "Special Dividend: "..value
end

-- Dissect: Special Dividend
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.special_dividend.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.special_dividend.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.special_dividend.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.special_dividend, range, value, display)

  return offset + length, value
end

-- Status
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.status = {}

-- Size: Status
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.status.size = 1

-- Display: Status
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.status.display = function(value)
  if value == "C" then
    return "Status: Closed (C)"
  end
  if value == "Q" then
    return "Status: Queuing (Q)"
  end
  if value == "O" then
    return "Status: Opening Reopening Auction (O)"
  end
  if value == "T" then
    return "Status: Trading (T)"
  end
  if value == "S" then
    return "Status: Suspension (S)"
  end
  if value == "H" then
    return "Status: Halted (H)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.status, range, value, display)

  return offset + length, value
end

-- Strike Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.strike_price = {}

-- Size: Strike Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.strike_price.size = 8

-- Display: Strike Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.strike_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Strike Price
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.strike_price.translate(raw)
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol = {}

-- Size: Symbol
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol.size = 6

-- Display: Symbol
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Long
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol_long = {}

-- Size: Symbol Long
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol_long.size = 8

-- Display: Symbol Long
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol_long.display = function(value)
  return "Symbol Long: "..value
end

-- Dissect: Symbol Long
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol_long.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.symbol_long, range, value, display)

  return offset + length, value
end

-- Time
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time = {}

-- Size: Time
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time.size = 4

-- Store: Time
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time.current = nil

-- Generated: Time
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time.generated = function(value, range, packet, parent)
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time.display(value)
  local time = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.time, range, value, display)
  time:set_generated()
end

-- Display: Time
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset = {}

-- Size: Time Offset
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size = 4

-- Display: Time Offset
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Total Volume
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.total_volume = {}

-- Size: Total Volume
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.total_volume.size = 4

-- Display: Total Volume
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Trade Date
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_date = {}

-- Size: Trade Date
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_date.size = 4

-- Display: Trade Date
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trade Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_id = {}

-- Size: Trade Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_id.size = 8

-- Display: Trade Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Timestamp
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_timestamp = {}

-- Size: Trade Timestamp
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_timestamp.size = 8

-- Display: Trade Timestamp
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_timestamp.display = function(value)
  return "Trade Timestamp: "..value
end

-- Dissect: Trade Timestamp
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.trade_timestamp, range, value, display)

  return offset + length, value
end

-- Trading Mode
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trading_mode = {}

-- Size: Trading Mode
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trading_mode.size = 1

-- Display: Trading Mode
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trading_mode.display = function(value)
  if value == "1" then
    return "Trading Mode: Undefined Auction (1)"
  end
  if value == "2" then
    return "Trading Mode: Continuous Trading (2)"
  end
  if value == "3" then
    return "Trading Mode: At Market Close Trading (3)"
  end
  if value == "4" then
    return "Trading Mode: Out Of Main Session (4)"
  end
  if value == "5" then
    return "Trading Mode: Trade Reporting On Exchange (5)"
  end
  if value == "6" then
    return "Trading Mode: Trade Reporting Off Exchange (6)"
  end
  if value == "7" then
    return "Trading Mode: Trade Reporting Systematic Internalizer (7)"
  end
  if value == "O" then
    return "Trading Mode: Scheduled Opening Auction (O)"
  end
  if value == "K" then
    return "Trading Mode: Scheduled Closing Auction (K)"
  end
  if value == "I" then
    return "Trading Mode: Scheduled Intraday Auction (I)"
  end
  if value == "U" then
    return "Trading Mode: Unscheduled Auction (U)"
  end

  return "Trading Mode: Unknown("..value..")"
end

-- Dissect: Trading Mode
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trading_mode.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trading_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trading_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.trading_mode, range, value, display)

  return offset + length, value
end

-- Transaction Category
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_category = {}

-- Size: Transaction Category
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_category.size = 1

-- Display: Transaction Category
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_category.display = function(value)
  if value == "D" then
    return "Transaction Category: Dark Trade (D)"
  end
  if value == "R" then
    return "Transaction Category: Trade That Has Received Price Improvement (R)"
  end
  if value == "Z" then
    return "Transaction Category: Packaged Trade (Z)"
  end
  if value == "Y" then
    return "Transaction Category: Exchange For Physicals Trade (Y)"
  end
  if value == "-" then
    return "Transaction Category: None Of The Above Apply (-)"
  end

  return "Transaction Category: Unknown("..value..")"
end

-- Dissect: Transaction Category
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Unit
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.unit = {}

-- Size: Unit
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.unit.size = 1

-- Display: Unit
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.unit, range, value, display)

  return offset + length, value
end

-- Volume
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.volume = {}

-- Size: Volume
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.volume.size = 4

-- Display: Volume
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.volume, range, value, display)

  return offset + length, value
end

-- Width Type
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.width_type = {}

-- Size: Width Type
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.width_type.size = 1

-- Display: Width Type
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.width_type.display = function(value)
  if value == "R" then
    return "Width Type: Regular (R)"
  end
  if value == "V" then
    return "Width Type: Volatility (V)"
  end

  return "Width Type: Unknown("..value..")"
end

-- Dissect: Width Type
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.width_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.width_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.width_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.width_type, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp = {}

-- Translate: Timestamp
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.translate = function(time_offset, stored_time)
  return UInt64.new(stored_time * 1000000000 + time_offset)
end

-- Display: Timestamp
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.display = function(time_offset, stored_time, packet)
  -- Raw display mode
  if cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp_format == 0 then
    return "Timestamp: "..(stored_time * 1000000000 + time_offset)
  end

  -- Full datetime mode (calculate from capture date + UTC offset)
  if cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400
    local full_seconds = local_midnight + stored_time

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", time_offset)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", stored_time)..string.format("%09d", time_offset)
end

-- Composite: Timestamp
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.composite = function(buffer, offset, stored_time, packet, parent)
  local length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size
  local range = buffer(offset, length)
  local time_offset = range:le_uint()
  local value = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.translate(time_offset, stored_time)
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.display(time_offset, stored_time, packet)
  parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.timestamp, range, value, display)

  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time.generated(stored_time, range, packet, parent)

  display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.display(time_offset)
  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.time_offset, range, time_offset, display)

  return offset + length, value
end

-- Dissect: Timestamp
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect = function(buffer, offset, packet, parent)
  if cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.format_timestamp then
    local stored_time = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time.current

    if stored_time ~= nil then
      return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.composite(buffer, offset, stored_time, packet, parent)
    end
  end

  return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Cboe CedxDerivatives MulticastDepthOfBook Pitch 1.01
-----------------------------------------------------------------------

-- Summary Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.summary_flags = {}

-- Size: Summary Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.summary_flags.size = 1

-- Display: Summary Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.summary_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is High Price 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "High Price 1"
  end
  -- Is Unused 1 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Unused 1"
  end
  -- Is Low Price 1 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Low Price 1"
  end
  -- Is Second Unused 1 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Second Unused 1"
  end
  -- Is Open And Close Price flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Open And Close Price"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Summary Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.summary_flags.bits = function(range, value, packet, parent)

  -- High Price 1: 1 Bit
  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.high_price_1, range, value)

  -- Unused 1: 1 Bit
  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.unused_1, range, value)

  -- Low Price 1: 1 Bit
  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.low_price_1, range, value)

  -- Second Unused 1: 1 Bit
  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.second_unused_1, range, value)

  -- Open And Close Price: 1 Bit
  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.open_and_close_price, range, value)

  -- Unused 3: 3 Bit
  parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.unused_3, range, value)
end

-- Dissect: Summary Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.summary_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.summary_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.summary_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.summary_flags, range, display)

  if show.structs then
    cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.summary_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- End Of Day Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.end_of_day_message = {}

-- Size: End Of Day Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.end_of_day_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_date.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.open_interest.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.high_price_binary_price_8.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.low_price_binary_price_8.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.open_price.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.close_price.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.total_volume.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.block_volume.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.ecrp_volume.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.summary_flags.size

-- Display: End Of Day Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.end_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.end_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_date.dissect(buffer, index, packet, parent)

  -- Open Interest: Binary
  index, open_interest = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.open_interest.dissect(buffer, index, packet, parent)

  -- High Price Binary Price 8: Binary Price
  index, high_price_binary_price_8 = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.high_price_binary_price_8.dissect(buffer, index, packet, parent)

  -- Low Price Binary Price 8: Binary Price
  index, low_price_binary_price_8 = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.low_price_binary_price_8.dissect(buffer, index, packet, parent)

  -- Open Price: Binary Price
  index, open_price = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.open_price.dissect(buffer, index, packet, parent)

  -- Close Price: Binary Price
  index, close_price = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.close_price.dissect(buffer, index, packet, parent)

  -- Total Volume: Binary
  index, total_volume = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.total_volume.dissect(buffer, index, packet, parent)

  -- Block Volume: Binary
  index, block_volume = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.block_volume.dissect(buffer, index, packet, parent)

  -- Ecrp Volume: Binary
  index, ecrp_volume = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.ecrp_volume.dissect(buffer, index, packet, parent)

  -- Summary Flags: Struct of 6 fields
  index, summary_flags = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.summary_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.end_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.end_of_day_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.end_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.end_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.end_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Settlement Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.settlement_message = {}

-- Size: Settlement Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.settlement_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_date.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.settlement_price.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.issue.size

-- Display: Settlement Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.settlement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Settlement Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.settlement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_date.dissect(buffer, index, packet, parent)

  -- Settlement Price: Binary Price
  index, settlement_price = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.settlement_price.dissect(buffer, index, packet, parent)

  -- Issue: Alphanumeric
  index, issue = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.issue.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Settlement Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.settlement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.settlement_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.settlement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.settlement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.settlement_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_break_message = {}

-- Size: Trade Break Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_break_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_id.size

-- Display: Trade Break Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Group
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_group = {}

-- Size: Leg Group
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_group.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_symbol.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_ratio.size

-- Display: Leg Group
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Group
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_group.fields = function(buffer, offset, packet, parent, leg_group_index)
  local index = offset

  -- Implicit Leg Group Index
  if leg_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.leg_group_index, leg_group_index)
    iteration:set_generated()
  end

  -- Leg Symbol: Printable ASCII
  index, leg_symbol = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_symbol.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Signed Binary
  index, leg_ratio = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Group
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_group.dissect = function(buffer, offset, packet, parent, leg_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.leg_group, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_group.fields(buffer, offset, packet, parent, leg_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_group.fields(buffer, offset, packet, parent, leg_group_index)
  end
end

-- Complex Instrument Definition Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.complex_instrument_definition_message = {}

-- Calculate size of: Complex Instrument Definition Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.complex_instrument_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size

  index = index + cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.complex_instrument_id.size

  index = index + cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reference_price.size

  index = index + cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_count.size

  -- Calculate field size from count
  local leg_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + leg_group_count * 10

  return index
end

-- Display: Complex Instrument Definition Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.complex_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Instrument Definition Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.complex_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary Long Price
  index, reference_price = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reference_price.dissect(buffer, index, packet, parent)

  -- Leg Count: Binary
  index, leg_count = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_count.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Group
  for leg_group_index = 1, leg_count do
    index, leg_group = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.leg_group.dissect(buffer, index, packet, parent, leg_group_index)
  end

  return index
end

-- Dissect: Complex Instrument Definition Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.complex_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.complex_instrument_definition_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.complex_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.complex_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.complex_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Instrument Definition Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.options_instrument_definition_message = {}

-- Size: Options Instrument Definition Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.options_instrument_definition_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.product_code.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.call_put.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.expiration_date.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.strike_price.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contract_size.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.listing_state.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_increment.size

-- Display: Options Instrument Definition Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.options_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Instrument Definition Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.options_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol.dissect(buffer, index, packet, parent)

  -- Product Code: Alphanumeric
  index, product_code = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.product_code.dissect(buffer, index, packet, parent)

  -- Call Put: Alphanumeric
  index, call_put = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.call_put.dissect(buffer, index, packet, parent)

  -- Expiration Date: Binary Date
  index, expiration_date = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.expiration_date.dissect(buffer, index, packet, parent)

  -- Strike Price: Binary Long Price
  index, strike_price = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.strike_price.dissect(buffer, index, packet, parent)

  -- Contract Size: Binary
  index, contract_size = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contract_size.dissect(buffer, index, packet, parent)

  -- Listing State: Alphanumeric
  index, listing_state = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.listing_state.dissect(buffer, index, packet, parent)

  -- Price Increment: Binary Long Price
  index, price_increment = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_increment.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Instrument Definition Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.options_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.options_instrument_definition_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.options_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.options_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.options_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Instrument Definition Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.futures_instrument_definition_message = {}

-- Size: Futures Instrument Definition Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.futures_instrument_definition_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.product_code.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.expiration_date.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contract_size.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.listing_state.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_increment.size

-- Display: Futures Instrument Definition Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.futures_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Instrument Definition Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.futures_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol.dissect(buffer, index, packet, parent)

  -- Product Code: Alphanumeric
  index, product_code = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.product_code.dissect(buffer, index, packet, parent)

  -- Expiration Date: Binary Date
  index, expiration_date = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.expiration_date.dissect(buffer, index, packet, parent)

  -- Contract Size: Binary
  index, contract_size = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contract_size.dissect(buffer, index, packet, parent)

  -- Listing State: Alphanumeric
  index, listing_state = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.listing_state.dissect(buffer, index, packet, parent)

  -- Price Increment: Binary Long Price
  index, price_increment = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_increment.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Instrument Definition Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.futures_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.futures_instrument_definition_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.futures_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.futures_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.futures_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Width Update Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.width_update_message = {}

-- Size: Width Update Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.width_update_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.product_code.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.width_type.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.multiplier.size

-- Display: Width Update Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.width_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Width Update Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.width_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Product Code: Alphanumeric
  index, product_code = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.product_code.dissect(buffer, index, packet, parent)

  -- Width Type: Alphanumeric
  index, width_type = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.width_type.dissect(buffer, index, packet, parent)

  -- Multiplier: Multiplier
  index, multiplier = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.multiplier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Width Update Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.width_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.width_update_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.width_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.width_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.width_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Level Group
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level_group = {}

-- Size: Price Level Group
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level_group.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.volume.size

-- Display: Price Level Group
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Level Group
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level_group.fields = function(buffer, offset, packet, parent, price_level_group_index)
  local index = offset

  -- Implicit Price Level Group Index
  if price_level_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.price_level_group_index, price_level_group_index)
    iteration:set_generated()
  end

  -- Price Level: Binary Long Price
  index, price_level = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Level Group
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level_group.dissect = function(buffer, offset, packet, parent, price_level_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.price_level_group, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level_group.fields(buffer, offset, packet, parent, price_level_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level_group.fields(buffer, offset, packet, parent, price_level_group_index)
  end
end

-- Auction Liquidity Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_liquidity_message = {}

-- Calculate size of: Auction Liquidity Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_liquidity_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size

  index = index + cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_id.size

  index = index + cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level_count.size

  -- Calculate field size from count
  local price_level_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + price_level_group_count * 12

  return index
end

-- Display: Auction Liquidity Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_liquidity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Liquidity Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_liquidity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_id.dissect(buffer, index, packet, parent)

  -- Price Level Count: Binary
  index, price_level_count = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level_count.dissect(buffer, index, packet, parent)

  -- Repeating: Price Level Group
  for price_level_group_index = 1, price_level_count do
    index, price_level_group = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_level_group.dissect(buffer, index, packet, parent, price_level_group_index)
  end

  return index
end

-- Dissect: Auction Liquidity Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_liquidity_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.auction_liquidity_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_liquidity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_liquidity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_liquidity_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_flags = {}

-- Size: Execution Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_flags.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.market_mechanism.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trading_mode.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.ex_cum_dividend.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.algorithmic_trade.size

-- Display: Execution Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_flags.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_flags.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Mechanism: Alphanumeric
  index, market_mechanism = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.market_mechanism.dissect(buffer, index, packet, parent)

  -- Trading Mode: Alphanumeric
  index, trading_mode = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trading_mode.dissect(buffer, index, packet, parent)

  -- Ex Cum Dividend: Alphanumeric
  index, ex_cum_dividend = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.ex_cum_dividend.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade: Alphanumeric
  index, algorithmic_trade = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.algorithmic_trade.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_flags.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.execution_flags, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_flags.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_flags.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_flags.fields(buffer, offset, packet, parent)
  end
end

-- Auction Trade Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_trade_message = {}

-- Size: Auction Trade Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_trade_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_id.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_id.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_long.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_flags.size

-- Display: Auction Trade Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Trade Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_id.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_id.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long.dissect(buffer, index, packet, parent)

  -- Contracts Long: Binary
  index, contracts_long = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_long.dissect(buffer, index, packet, parent)

  -- Execution Flags: Struct of 4 fields
  index, execution_flags = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.auction_trade_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Cancel Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_cancel_message = {}

-- Size: Auction Cancel Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_cancel_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_id.size

-- Display: Auction Cancel Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Cancel Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Cancel Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.auction_cancel_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Notification Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_notification_message = {}

-- Size: Auction Notification Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_notification_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_id.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_type.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.side.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_long.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.customer_indicator.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.participant_id.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_end_offset.size

-- Display: Auction Notification Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_type.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.side.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long.dissect(buffer, index, packet, parent)

  -- Contracts Long: Binary
  index, contracts_long = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_long.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.customer_indicator.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.participant_id.dissect(buffer, index, packet, parent)

  -- Auction End Offset: Binary
  index, auction_end_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_end_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.auction_notification_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Opening Auction Update Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.opening_auction_update_message = {}

-- Size: Opening Auction Update Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.opening_auction_update_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol_long.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_type.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reference_price.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.buy_contracts.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.sell_contracts.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.indicative_price.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_only_price.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.opening_condition.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.composite_market_bid_price.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.composite_market_offer_price.size

-- Display: Opening Auction Update Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.opening_auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Opening Auction Update Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.opening_auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Long: Alphanumeric
  index, symbol_long = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol_long.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary Long Price
  index, reference_price = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reference_price.dissect(buffer, index, packet, parent)

  -- Buy Contracts: Binary
  index, buy_contracts = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.buy_contracts.dissect(buffer, index, packet, parent)

  -- Sell Contracts: Binary
  index, sell_contracts = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.sell_contracts.dissect(buffer, index, packet, parent)

  -- Indicative Price: Binary Long Price
  index, indicative_price = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.indicative_price.dissect(buffer, index, packet, parent)

  -- Auction Only Price: Binary Long Price
  index, auction_only_price = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_only_price.dissect(buffer, index, packet, parent)

  -- Opening Condition: Alphanumeric
  index, opening_condition = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.opening_condition.dissect(buffer, index, packet, parent)

  -- Composite Market Bid Price: Binary Long Price
  index, composite_market_bid_price = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.composite_market_bid_price.dissect(buffer, index, packet, parent)

  -- Composite Market Offer Price: Binary Long Price
  index, composite_market_offer_price = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.composite_market_offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Opening Auction Update Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.opening_auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.opening_auction_update_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.opening_auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.opening_auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.opening_auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_summary_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol_long.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_type.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_long.size

-- Display: Auction Summary Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Long: Alphanumeric
  index, symbol_long = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol_long.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_type.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long.dissect(buffer, index, packet, parent)

  -- Contracts Long: Binary
  index, contracts_long = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trading_status_message = {}

-- Size: Trading Status Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trading_status_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol_long.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.status.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reserved_3.size

-- Display: Trading Status Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Long: Alphanumeric
  index, symbol_long = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol_long.dissect(buffer, index, packet, parent)

  -- Status: Alpha
  index, status = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.status.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alpha
  index, reserved_3 = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction End Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_end_message = {}

-- Size: Transaction End Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_end_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size

-- Display: Transaction End Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_end_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction End Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_end_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction End Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_end_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.transaction_end_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_end_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_end_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_end_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction Begin Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_begin_message = {}

-- Size: Transaction Begin Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_begin_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size

-- Display: Transaction Begin Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction Begin Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Begin Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.transaction_begin_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Session Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.end_of_session_message = {}

-- Size: End Of Session Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.end_of_session_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size

-- Display: End Of Session Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Trade Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.extended_trade_flags = {}

-- Size: Extended Trade Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.extended_trade_flags.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.market_mechanism.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trading_mode.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_category.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.negotiated_trade.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.crossing_trade.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modification_indicator.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.benchmark_reference_price_indicator.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.special_dividend.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.off_book_automated_indicator.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_formation_discovery_process.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.algorithmic_indicator.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.publication_mode_deferral_reason.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.deferral_or_enrichement_type.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.duplicative_indicator.size

-- Display: Extended Trade Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.extended_trade_flags.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Trade Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.extended_trade_flags.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Mechanism: Alphanumeric
  index, market_mechanism = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.market_mechanism.dissect(buffer, index, packet, parent)

  -- Trading Mode: Alphanumeric
  index, trading_mode = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trading_mode.dissect(buffer, index, packet, parent)

  -- Transaction Category: Alphanumeric
  index, transaction_category = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_category.dissect(buffer, index, packet, parent)

  -- Negotiated Trade: Alphanumeric
  index, negotiated_trade = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.negotiated_trade.dissect(buffer, index, packet, parent)

  -- Crossing Trade: Alphanumeric
  index, crossing_trade = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.crossing_trade.dissect(buffer, index, packet, parent)

  -- Modification Indicator: Alphanumeric
  index, modification_indicator = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modification_indicator.dissect(buffer, index, packet, parent)

  -- Benchmark Reference Price Indicator: Alphanumeric
  index, benchmark_reference_price_indicator = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.benchmark_reference_price_indicator.dissect(buffer, index, packet, parent)

  -- Special Dividend: Alphanumeric
  index, special_dividend = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.special_dividend.dissect(buffer, index, packet, parent)

  -- Off Book Automated Indicator: Alphanumeric
  index, off_book_automated_indicator = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.off_book_automated_indicator.dissect(buffer, index, packet, parent)

  -- Price Formation Discovery Process: Alphanumeric
  index, price_formation_discovery_process = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_formation_discovery_process.dissect(buffer, index, packet, parent)

  -- Algorithmic Indicator: Alphanumeric
  index, algorithmic_indicator = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.algorithmic_indicator.dissect(buffer, index, packet, parent)

  -- Publication Mode Deferral Reason: Alphanumeric
  index, publication_mode_deferral_reason = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.publication_mode_deferral_reason.dissect(buffer, index, packet, parent)

  -- Deferral Or Enrichement Type: Alphanumeric
  index, deferral_or_enrichement_type = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.deferral_or_enrichement_type.dissect(buffer, index, packet, parent)

  -- Duplicative Indicator: Alphanumeric
  index, duplicative_indicator = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.duplicative_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Trade Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.extended_trade_flags.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.extended_trade_flags, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.extended_trade_flags.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.extended_trade_flags.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.extended_trade_flags.fields(buffer, offset, packet, parent)
  end
end

-- Trade Extended Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_extended_message = {}

-- Size: Trade Extended Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_extended_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_extended.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol_long.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_id.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_timestamp.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_venue.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.currency.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cboe_trade_flags.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.extended_trade_flags.size

-- Display: Trade Extended Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_extended_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Extended Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_extended_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Contracts Extended: Binary
  index, contracts_extended = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_extended.dissect(buffer, index, packet, parent)

  -- Symbol Long: Alphanumeric
  index, symbol_long = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Timestamp: Binary
  index, trade_timestamp = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_timestamp.dissect(buffer, index, packet, parent)

  -- Execution Venue: Alphanumeric
  index, execution_venue = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_venue.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.currency.dissect(buffer, index, packet, parent)

  -- Cboe Trade Flags: Alphanumeric
  index, cboe_trade_flags = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cboe_trade_flags.dissect(buffer, index, packet, parent)

  -- Extended Trade Flags: Struct of 14 fields
  index, extended_trade_flags = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.extended_trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Extended Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_extended_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.trade_extended_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_extended_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_extended_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_extended_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_flags = {}

-- Size: Trade Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_flags.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.market_mechanism.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trading_mode.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_category.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.benchmark_reference_price_indicator.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.algorithmic_trade.size

-- Display: Trade Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_flags.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_flags.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Mechanism: Alphanumeric
  index, market_mechanism = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.market_mechanism.dissect(buffer, index, packet, parent)

  -- Trading Mode: Alphanumeric
  index, trading_mode = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trading_mode.dissect(buffer, index, packet, parent)

  -- Transaction Category: Alphanumeric
  index, transaction_category = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_category.dissect(buffer, index, packet, parent)

  -- Benchmark Reference Price Indicator: Alphanumeric
  index, benchmark_reference_price_indicator = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.benchmark_reference_price_indicator.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade: Alphanumeric
  index, algorithmic_trade = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.algorithmic_trade.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Flags
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_flags.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.trade_flags, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_flags.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_flags.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_flags.fields(buffer, offset, packet, parent)
  end
end

-- Trade Short Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_short_message = {}

-- Size: Trade Short Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_short_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.side_indicator.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_short.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_short.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_id.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_flags.size

-- Display: Trade Short Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.side_indicator.dissect(buffer, index, packet, parent)

  -- Contracts Short: Binary
  index, contracts_short = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_short.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_short.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 5 fields
  index, trade_flags = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Long Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_long_message = {}

-- Size: Trade Long Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_long_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.side_indicator.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_long.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol_long.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_id.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_flags.size

-- Display: Trade Long Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.side_indicator.dissect(buffer, index, packet, parent)

  -- Contracts Long: Binary
  index, contracts_long = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_long.dissect(buffer, index, packet, parent)

  -- Symbol Long: Alphanumeric
  index, symbol_long = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 5 fields
  index, trade_flags = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.delete_order_message = {}

-- Size: Delete Order Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.delete_order_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.size

-- Display: Delete Order Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Short Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modify_order_short_message = {}

-- Size: Modify Order Short Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modify_order_short_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_short.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_short.size

-- Display: Modify Order Short Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modify_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modify_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.dissect(buffer, index, packet, parent)

  -- Contracts Short: Binary
  index, contracts_short = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_short.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modify_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modify_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modify_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modify_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Long Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modify_order_long_message = {}

-- Size: Modify Order Long Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modify_order_long_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_long.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long.size

-- Display: Modify Order Long Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modify_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modify_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.dissect(buffer, index, packet, parent)

  -- Contracts Long: Binary
  index, contracts_long = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.contracts_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modify_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modify_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modify_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modify_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Short Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reduce_size_short_message = {}

-- Size: Reduce Size Short Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reduce_size_short_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cancelled_contracts_short.size

-- Display: Reduce Size Short Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reduce_size_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reduce_size_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.dissect(buffer, index, packet, parent)

  -- Cancelled Contracts Short: Binary
  index, cancelled_contracts_short = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cancelled_contracts_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reduce_size_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reduce_size_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reduce_size_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reduce_size_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Long Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reduce_size_long_message = {}

-- Size: Reduce Size Long Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reduce_size_long_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cancelled_contracts_long.size

-- Display: Reduce Size Long Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reduce_size_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reduce_size_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.dissect(buffer, index, packet, parent)

  -- Cancelled Contracts Long: Binary
  index, cancelled_contracts_long = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.cancelled_contracts_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reduce_size_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reduce_size_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reduce_size_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reduce_size_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed At Price Size Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_executed_at_price_size_message = {}

-- Size: Order Executed At Price Size Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_executed_at_price_size_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.executed_quantity.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.remaining_quantity.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_id.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_flags.size

-- Display: Order Executed At Price Size Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_executed_at_price_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_executed_at_price_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: Binary
  index, remaining_quantity = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_id.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long.dissect(buffer, index, packet, parent)

  -- Execution Flags: Struct of 4 fields
  index, execution_flags = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_executed_at_price_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.order_executed_at_price_size_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_executed_at_price_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_executed_message = {}

-- Size: Order Executed Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_executed_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.executed_quantity.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_id.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_flags.size

-- Display: Order Executed Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_id.dissect(buffer, index, packet, parent)

  -- Execution Flags: Struct of 4 fields
  index, execution_flags = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.execution_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.add_order_short_message = {}

-- Size: Add Order Short Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.add_order_short_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.side_indicator.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.quantity_short.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_short.size

-- Display: Add Order Short Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.quantity_short.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.add_order_long_message = {}

-- Size: Add Order Long Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.add_order_long_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.side_indicator.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.quantity_long.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol_long.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long.size

-- Display: Add Order Long Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.quantity_long.dissect(buffer, index, packet, parent)

  -- Symbol Long: Alphanumeric
  index, symbol_long = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.symbol_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.price_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.unit_clear_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_offset.size

-- Display: Unit Clear Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_message = {}

-- Size: Time Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_message.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time.size

-- Display: Time Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time.dissect(buffer, index, packet, parent)

  -- Store Time Value
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time.current = time

  if not packet.visited then
    cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.conversation.current.time.last = time
  end

  return index
end

-- Dissect: Time Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.time_message, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.payload = {}

-- Dissect: Payload
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x40 then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.add_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.add_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.order_executed_at_price_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reduce_size_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.reduce_size_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modify_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.modify_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x41 then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Extended Message
  if message_type == 0x32 then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_extended_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.end_of_session_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction Begin Message
  if message_type == 0xBC then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction End Message
  if message_type == 0xBD then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.transaction_end_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Opening Auction Update Message
  if message_type == 0xD1 then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.opening_auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == 0xAD then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Cancel Message
  if message_type == 0xAE then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if message_type == 0xDF then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Liquidity Message
  if message_type == 0xDE then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.auction_liquidity_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Width Update Message
  if message_type == 0xD2 then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.width_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Instrument Definition Message
  if message_type == 0xDA then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.futures_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Instrument Definition Message
  if message_type == 0xDB then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.options_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Instrument Definition Message
  if message_type == 0xDC then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.complex_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0x2C then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Settlement Message
  if message_type == 0xB9 then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.settlement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Message
  if message_type == 0xBA then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.end_of_day_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_header = {}

-- Size: Message Header
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_header.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_length.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_type.size

-- Display: Message Header
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 31 values
  index, message_type = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.message_header, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message = {}

-- Read runtime size of: Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.packet_sequence ~= nil then
    local sequence = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.message_sequence_number, UInt64.new(cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 31 branches
  index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.message, buffer(offset, 0))
    local current = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.heartbeat = {}

-- Display: Heartbeat
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.messages = {}

-- Dissect: Messages
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.heartbeat.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.packet_header = {}

-- Size: Packet Header
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.packet_header.size =
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.length.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_count.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.unit.size + 
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.sequence.size

-- Display: Packet Header
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.message_count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.sequence.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.packet_sequence = sequence

  return index
end

-- Dissect: Packet Header
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.fields.packet_header, buffer(offset, 0))
    local index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.packet = {}

-- Verify required size of Udp packet
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.packet_header.size
end

-- Dissect Packet
cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.conversation.data(packet)
  if not packet.visited then
    data.time.frames[packet.number] = data.time.last
  end
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time.current = data.time.frames[packet.number]
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.init()
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.time.current = nil
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.conversation.current = nil
  cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.conversation.flows = {}
end

-- Dissector for Cboe CedxDerivatives MulticastDepthOfBook Pitch 1.01
function omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01, buffer(), omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.description, "("..buffer:len().." Bytes)")
  return cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe CedxDerivatives MulticastDepthOfBook Pitch 1.01 (Udp)
local function omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01
  omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe CedxDerivatives MulticastDepthOfBook Pitch 1.01
omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01:register_heuristic("udp", omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01_udp_heuristic)

-- Register Cboe CedxDerivatives MulticastDepthOfBook Pitch 1.01 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cboe_cedxderivatives_multicastdepthofbook_pitch_v1_01)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.01
--   Date: Wednesday, April 7, 2021
--   Specification: Cboe Europe CEDX MCP Specification (2021-05-11).pdf
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
