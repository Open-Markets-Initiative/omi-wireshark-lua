-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx Tsx Level1 Qrtmd 2.8 Protocol
local omi_tmx_tsx_level1_qrtmd_v2_8 = Proto("Omi.Tmx.Tsx.Level1.Qrtmd.v2.8", "Tmx Tsx Level1 Qrtmd 2.8")

-- Protocol table
local tmx_tsx_level1_qrtmd_v2_8 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tmx Tsx Level1 Qrtmd 2.8 Fields
omi_tmx_tsx_level1_qrtmd_v2_8.fields.ask_price = ProtoField.new("Ask Price", "tmx.tsx.level1.qrtmd.v2.8.askprice", ftypes.DOUBLE, nil, nil, nil, "Ask price for the equity.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.ask_size = ProtoField.new("Ask Size", "tmx.tsx.level1.qrtmd.v2.8.asksize", ftypes.UINT32, nil, nil, nil, "Volume on the ask side.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.bid_price = ProtoField.new("Bid Price", "tmx.tsx.level1.qrtmd.v2.8.bidprice", ftypes.DOUBLE, nil, nil, nil, "Bid price for the equity.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.bid_size = ProtoField.new("Bid Size", "tmx.tsx.level1.qrtmd.v2.8.bidsize", ftypes.UINT32, nil, nil, nil, "Volume on the bid side.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.board_lot = ProtoField.new("Board Lot", "tmx.tsx.level1.qrtmd.v2.8.boardlot", ftypes.UINT32, nil, nil, nil, "Board lot volume.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.bulletin_indicator = ProtoField.new("Bulletin Indicator", "tmx.tsx.level1.qrtmd.v2.8.bulletinindicator", ftypes.STRING, nil, nil, nil, "Indicates the message is a bulletin.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.business_date = ProtoField.new("Business Date", "tmx.tsx.level1.qrtmd.v2.8.businessdate", ftypes.STRING, nil, nil, nil, "Business Date.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.buy_maximum_quantity = ProtoField.new("Buy Maximum Quantity", "tmx.tsx.level1.qrtmd.v2.8.buymaximumquantity", ftypes.UINT32, nil, nil, nil, "The maximum quantity of a mutual fund allowed to buy.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.buy_minimum_quantity = ProtoField.new("Buy Minimum Quantity", "tmx.tsx.level1.qrtmd.v2.8.buyminimumquantity", ftypes.UINT32, nil, nil, nil, "The minimum quantity of a mutual fund required to buy.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.buyer_id = ProtoField.new("Buyer Id", "tmx.tsx.level1.qrtmd.v2.8.buyerid", ftypes.UINT16, nil, nil, nil, "Identifies the buying broker.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.bypass = ProtoField.new("Bypass", "tmx.tsx.level1.qrtmd.v2.8.bypass", ftypes.STRING, nil, nil, nil, "An indicator for bypass crosses, which can be printed outside of the Protected NBBO and are not subject to cross interference.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.ccp = ProtoField.new("Ccp", "tmx.tsx.level1.qrtmd.v2.8.ccp", ftypes.DOUBLE, nil, nil, nil, "The price at which the maximum amount of stock will trade.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.comment = ProtoField.new("Comment", "tmx.tsx.level1.qrtmd.v2.8.comment", ftypes.STRING, nil, nil, nil, "Free text accompanying the state change.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.continuation_identifier = ProtoField.new("Continuation Identifier", "tmx.tsx.level1.qrtmd.v2.8.continuationidentifier", ftypes.STRING, nil, nil, nil, "Provides for fragmentation of a message exceeding the maximum transmission unit")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.cop = ProtoField.new("Cop", "tmx.tsx.level1.qrtmd.v2.8.cop", ftypes.DOUBLE, nil, nil, nil, "Calculated and published by the trading engine continuously before the Tsx market opens.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.cross_type = ProtoField.new("Cross Type", "tmx.tsx.level1.qrtmd.v2.8.crosstype", ftypes.STRING, nil, nil, nil, "Identifies the type of an intentional cross.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.currency = ProtoField.new("Currency", "tmx.tsx.level1.qrtmd.v2.8.currency", ftypes.STRING, nil, nil, nil, "The currency of a price.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.cusip = ProtoField.new("Cusip", "tmx.tsx.level1.qrtmd.v2.8.cusip", ftypes.STRING, nil, nil, nil, "Clearing and settlement registration number.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.exchange_id = ProtoField.new("Exchange Id", "tmx.tsx.level1.qrtmd.v2.8.exchangeid", ftypes.STRING, nil, nil, nil, "Identifies the exchange from which the message originated.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.exchange_identifier = ProtoField.new("Exchange Identifier", "tmx.tsx.level1.qrtmd.v2.8.exchangeidentifier", ftypes.STRING, nil, nil, nil, "Code assigned to the originating exchange")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.face_value = ProtoField.new("Face Value", "tmx.tsx.level1.qrtmd.v2.8.facevalue", ftypes.DOUBLE, nil, nil, nil, "The face value of a debenture.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.far_indicative_closing_price = ProtoField.new("Far Indicative Closing Price", "tmx.tsx.level1.qrtmd.v2.8.farindicativeclosingprice", ftypes.DOUBLE, nil, nil, nil, "The calculated closing price that will maximize the number of shares matched based on closing interest only.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.imbalance_reference_price = ProtoField.new("Imbalance Reference Price", "tmx.tsx.level1.qrtmd.v2.8.imbalancereferenceprice", ftypes.DOUBLE, nil, nil, nil, "The price that decides if a given limit-priced Market on Close order can contribute to the MOC Imbalance.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.imbalance_side = ProtoField.new("Imbalance Side", "tmx.tsx.level1.qrtmd.v2.8.imbalanceside", ftypes.STRING, nil, nil, nil, "Marker to indicate which side has a Volume Imbalance for Market On Close.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.imbalance_volume = ProtoField.new("Imbalance Volume", "tmx.tsx.level1.qrtmd.v2.8.imbalancevolume", ftypes.UINT32, nil, nil, nil, "Identifies the volume of shares of the Imbalance side of Market on Close.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.indicative_price = ProtoField.new("Indicative Price", "tmx.tsx.level1.qrtmd.v2.8.indicativeprice", ftypes.DOUBLE, nil, nil, nil, "Represents the Indicative Closing Price when the Price Marker is C.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.is_conditional = ProtoField.new("Is Conditional", "tmx.tsx.level1.qrtmd.v2.8.isconditional", ftypes.STRING, nil, nil, nil, "Indicates a firm-up conditional to firm-up conditional execution.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.is_dark = ProtoField.new("Is Dark", "tmx.tsx.level1.qrtmd.v2.8.isdark", ftypes.STRING, nil, nil, nil, "Indicates the passive side of the trade is dark.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.is_mid_only = ProtoField.new("Is Mid Only", "tmx.tsx.level1.qrtmd.v2.8.ismidonly", ftypes.STRING, nil, nil, nil, "Indicates a dark Contra Midpoint Only Plus to Contra Midpoint Only Plus execution.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.last_sale = ProtoField.new("Last Sale", "tmx.tsx.level1.qrtmd.v2.8.lastsale", ftypes.DOUBLE, nil, nil, nil, "Last sale price of the symbol.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.listing_market = ProtoField.new("Listing Market", "tmx.tsx.level1.qrtmd.v2.8.listingmarket", ftypes.STRING, nil, nil, nil, "The market on which a security is listed.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.market_order_imbalance_side = ProtoField.new("Market Order Imbalance Side", "tmx.tsx.level1.qrtmd.v2.8.marketorderimbalanceside", ftypes.STRING, nil, nil, nil, "Side of the Market Order Imbalance Volume.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.market_order_imbalance_volume = ProtoField.new("Market Order Imbalance Volume", "tmx.tsx.level1.qrtmd.v2.8.marketorderimbalancevolume", ftypes.UINT32, nil, nil, nil, "Indicates the share imbalance when only MOC orders are considered.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.market_state = ProtoField.new("Market State", "tmx.tsx.level1.qrtmd.v2.8.marketstate", ftypes.STRING, nil, nil, nil, "The indication of the current market state.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.message_length = ProtoField.new("Message Length", "tmx.tsx.level1.qrtmd.v2.8.messagelength", ftypes.UINT16, nil, nil, nil, "Total length of header and message business content, excluding Stx and Etx")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.message_text = ProtoField.new("Message Text", "tmx.tsx.level1.qrtmd.v2.8.messagetext", ftypes.STRING, nil, nil, nil, "Bulletin in textual format.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.message_type = ProtoField.new("Message Type", "tmx.tsx.level1.qrtmd.v2.8.messagetype", ftypes.STRING, nil, nil, nil, "Unique code assigned to each message type, specific to each market service")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.moc = ProtoField.new("Moc", "tmx.tsx.level1.qrtmd.v2.8.moc", ftypes.STRING, nil, nil, nil, "Marks a Market On Close trade.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.moc_eligible = ProtoField.new("Moc Eligible", "tmx.tsx.level1.qrtmd.v2.8.moceligible", ftypes.STRING, nil, nil, nil, "Identifies whether the stock is eligible to participate in the Market On Close session each day.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.near_indicative_closing_price = ProtoField.new("Near Indicative Closing Price", "tmx.tsx.level1.qrtmd.v2.8.nearindicativeclosingprice", ftypes.DOUBLE, nil, nil, nil, "The calculated closing price that will maximize the number of shares matched based on the on-close orders and visible continuous market orders.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.opening_time = ProtoField.new("Opening Time", "tmx.tsx.level1.qrtmd.v2.8.openingtime", ftypes.STRING, nil, nil, nil, "The opening time for a stock.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.opening_trade = ProtoField.new("Opening Trade", "tmx.tsx.level1.qrtmd.v2.8.openingtrade", ftypes.STRING, nil, nil, nil, "An indicator as to whether the trade occurred at the opening or was the first board lot trade of the day.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.original_trade_id = ProtoField.new("Original Trade Id", "tmx.tsx.level1.qrtmd.v2.8.originaltradeid", ftypes.UINT32, nil, nil, nil, "Trade number.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.paired_volume = ProtoField.new("Paired Volume", "tmx.tsx.level1.qrtmd.v2.8.pairedvolume", ftypes.UINT32, nil, nil, nil, "The number of MOC and LOC shares that can be matched at the reference price.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.price_marker = ProtoField.new("Price Marker", "tmx.tsx.level1.qrtmd.v2.8.pricemarker", ftypes.STRING, nil, nil, nil, "Identifies the price type.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.price_variation = ProtoField.new("Price Variation", "tmx.tsx.level1.qrtmd.v2.8.pricevariation", ftypes.DOUBLE, nil, nil, nil, "The absolute value of the percentage of deviation of the Near Indicative Closing Price from the Reference Price.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.product_type = ProtoField.new("Product Type", "tmx.tsx.level1.qrtmd.v2.8.producttype", ftypes.STRING, nil, nil, nil, "The product type for a symbol.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.qrtmd_etx = ProtoField.new("Qrtmd Etx", "tmx.tsx.level1.qrtmd.v2.8.qrtmdetx", ftypes.INT8, nil, nil, nil, "End of Qrtmd message")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.qrtmd_stx = ProtoField.new("Qrtmd Stx", "tmx.tsx.level1.qrtmd.v2.8.qrtmdstx", ftypes.INT8, nil, nil, nil, "Start of Qrtmd message")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.retransmission_identifier = ProtoField.new("Retransmission Identifier", "tmx.tsx.level1.qrtmd.v2.8.retransmissionidentifier", ftypes.STRING, nil, nil, nil, "Marks a normal transmission, and is always blank on a heartbeat")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.sell_maximum_quantity = ProtoField.new("Sell Maximum Quantity", "tmx.tsx.level1.qrtmd.v2.8.sellmaximumquantity", ftypes.UINT32, nil, nil, nil, "The maximum quantity of a mutual fund allowed to sell.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.sell_minimum_quantity = ProtoField.new("Sell Minimum Quantity", "tmx.tsx.level1.qrtmd.v2.8.sellminimumquantity", ftypes.UINT32, nil, nil, nil, "The minimum quantity of a mutual fund required to sell.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.seller_id = ProtoField.new("Seller Id", "tmx.tsx.level1.qrtmd.v2.8.sellerid", ftypes.UINT16, nil, nil, nil, "Identifies the selling broker.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.sequence_number = ProtoField.new("Sequence Number", "tmx.tsx.level1.qrtmd.v2.8.sequencenumber", ftypes.UINT32, nil, nil, nil, "Assigned at service broadcast from 000000001 to 999999999, blank on a heartbeat")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.service_identifier = ProtoField.new("Service Identifier", "tmx.tsx.level1.qrtmd.v2.8.serviceidentifier", ftypes.STRING, nil, nil, nil, "Service code identifying the market data service carried on the feed")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.settlement_terms = ProtoField.new("Settlement Terms", "tmx.tsx.level1.qrtmd.v2.8.settlementterms", ftypes.STRING, nil, nil, nil, "Settlement terms associated with the order.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.stock_group = ProtoField.new("Stock Group", "tmx.tsx.level1.qrtmd.v2.8.stockgroup", ftypes.UINT8, nil, nil, nil, "An indicator of stock group.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.stock_state = ProtoField.new("Stock State", "tmx.tsx.level1.qrtmd.v2.8.stockstate", ftypes.STRING, nil, nil, nil, "The state of the stock.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.symbol = ProtoField.new("Symbol", "tmx.tsx.level1.qrtmd.v2.8.symbol", ftypes.STRING, nil, nil, nil, "Stock symbol.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.symbol_name = ProtoField.new("Symbol Name", "tmx.tsx.level1.qrtmd.v2.8.symbolname", ftypes.STRING, nil, nil, nil, "The security or issue symbol's complete company name.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.test_symbol = ProtoField.new("Test Symbol", "tmx.tsx.level1.qrtmd.v2.8.testsymbol", ftypes.STRING, nil, nil, nil, "Indicates the symbol is a test symbol.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.total_number_of_stock_groups = ProtoField.new("Total Number Of Stock Groups", "tmx.tsx.level1.qrtmd.v2.8.totalnumberofstockgroups", ftypes.UINT16, nil, nil, nil, "Total number of stock groups per trading tier and exchange ID.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.total_number_of_symbols = ProtoField.new("Total Number Of Symbols", "tmx.tsx.level1.qrtmd.v2.8.totalnumberofsymbols", ftypes.UINT24, nil, nil, nil, "The total number of stocks per trading tier and Exchange ID.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.trade_date = ProtoField.new("Trade Date", "tmx.tsx.level1.qrtmd.v2.8.tradedate", ftypes.STRING, nil, nil, nil, "Effective date of the trade, filled in only when it differs from the current date.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.trade_id = ProtoField.new("Trade Id", "tmx.tsx.level1.qrtmd.v2.8.tradeid", ftypes.UINT32, nil, nil, nil, "Unique identifier per stock assigned to each trade.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.trade_price = ProtoField.new("Trade Price", "tmx.tsx.level1.qrtmd.v2.8.tradeprice", ftypes.DOUBLE, nil, nil, nil, "Price at which the transaction took place.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.trade_time_stamp = ProtoField.new("Trade Time Stamp", "tmx.tsx.level1.qrtmd.v2.8.tradetimestamp", ftypes.STRING, nil, nil, nil, "Time of trade.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.trading_system_time_stamp = ProtoField.new("Trading System Time Stamp", "tmx.tsx.level1.qrtmd.v2.8.tradingsystemtimestamp", ftypes.STRING, nil, nil, nil, "The time at which the business action occurred.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.trading_tier_id = ProtoField.new("Trading Tier Id", "tmx.tsx.level1.qrtmd.v2.8.tradingtierid", ftypes.STRING, nil, nil, nil, "A Trading Engine identifier.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.tsx_tsxv_closing_price = ProtoField.new("Tsx Tsxv Closing Price", "tmx.tsx.level1.qrtmd.v2.8.tsxtsxvclosingprice", ftypes.DOUBLE, nil, nil, nil, "For non ETF securities the Last Sales Price of the current trading day is the closing price.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.tsx_tsxv_last_ask = ProtoField.new("Tsx Tsxv Last Ask", "tmx.tsx.level1.qrtmd.v2.8.tsxtsxvlastask", ftypes.DOUBLE, nil, nil, nil, "The time weighted average price of the best offers during the last ten minutes of the trading session.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.tsx_tsxv_last_bid = ProtoField.new("Tsx Tsxv Last Bid", "tmx.tsx.level1.qrtmd.v2.8.tsxtsxvlastbid", ftypes.DOUBLE, nil, nil, nil, "The time weighted average price of the best bids during the last ten minutes of the trading session.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.volume = ProtoField.new("Volume", "tmx.tsx.level1.qrtmd.v2.8.volume", ftypes.UINT32, nil, nil, nil, "Volume of shares traded.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.vwap = ProtoField.new("Vwap", "tmx.tsx.level1.qrtmd.v2.8.vwap", ftypes.DOUBLE, nil, nil, nil, "Volume-weighted average price based on trades.")

-- Tmx Tsx Level1 Qrtmd 2.8 Framing
omi_tmx_tsx_level1_qrtmd_v2_8.fields.message_header = ProtoField.new("Message Header", "tmx.tsx.level1.qrtmd.v2.8.messageheader", ftypes.STRING, nil, nil, nil, "Twenty two byte ascii header carried on every Qrtmd message")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.packet = ProtoField.new("Packet", "tmx.tsx.level1.qrtmd.v2.8.packet", ftypes.STRING, nil, nil, nil, "Qrtmd Udp Packet")

-- Tmx Tsx Level1 2.8 Application Messages
omi_tmx_tsx_level1_qrtmd_v2_8.fields.calculated_opening_price_message = ProtoField.new("Calculated Opening Price Message", "tmx.tsx.level1.qrtmd.v2.8.calculatedopeningpricemessage", ftypes.STRING, nil, nil, nil, "Calculated Opening Price, published continuously from seven in the morning until the Tsx market opens.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.general_message = ProtoField.new("General Message", "tmx.tsx.level1.qrtmd.v2.8.generalmessage", ftypes.STRING, nil, nil, nil, "Bulletin in textual format.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.indicative_price_message = ProtoField.new("Indicative Price Message", "tmx.tsx.level1.qrtmd.v2.8.indicativepricemessage", ftypes.STRING, nil, nil, nil, "Indicative Closing Price, calculated and published at sixteen hundred London time on every trading day.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.market_state_message = ProtoField.new("Market State Message", "tmx.tsx.level1.qrtmd.v2.8.marketstatemessage", ftypes.STRING, nil, nil, nil, "The indication of the current market state for a stock group.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.moc_imbalance_notification_message = ProtoField.new("Moc Imbalance Notification Message", "tmx.tsx.level1.qrtmd.v2.8.mocimbalancenotificationmessage", ftypes.STRING, nil, nil, nil, "Volume imbalance for a Market On Close eligible symbol, sent every ten seconds from the beginning of the MOC Imbalance session.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.moc_price_movement_delay_message = ProtoField.new("Moc Price Movement Delay Message", "tmx.tsx.level1.qrtmd.v2.8.mocpricemovementdelaymessage", ftypes.STRING, nil, nil, nil, "Transmitted when Price Movement Extension is invoked.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.quote_message = ProtoField.new("Quote Message", "tmx.tsx.level1.qrtmd.v2.8.quotemessage", ftypes.STRING, nil, nil, nil, "Full update quote sent whenever either the bid or the ask has changed.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.stock_state_message = ProtoField.new("Stock State Message", "tmx.tsx.level1.qrtmd.v2.8.stockstatemessage", ftypes.STRING, nil, nil, nil, "A change in the trading state of a stock.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.symbol_status_message = ProtoField.new("Symbol Status Message", "tmx.tsx.level1.qrtmd.v2.8.symbolstatusmessage", ftypes.STRING, nil, nil, nil, "Reference information for a symbol trading on the current day.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.trade_cancellation_message = ProtoField.new("Trade Cancellation Message", "tmx.tsx.level1.qrtmd.v2.8.tradecancellationmessage", ftypes.STRING, nil, nil, nil, "Cancellation of a trade, reducing total volume, value and transactions by the amount of the cancellation.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "tmx.tsx.level1.qrtmd.v2.8.tradecorrectionmessage", ftypes.STRING, nil, nil, nil, "Correction of a trade already disseminated.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.trade_message = ProtoField.new("Trade Message", "tmx.tsx.level1.qrtmd.v2.8.trademessage", ftypes.STRING, nil, nil, nil, "A trade in an equity on the Tsx or Tsx Venture market.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.trading_tier_status_message = ProtoField.new("Trading Tier Status Message", "tmx.tsx.level1.qrtmd.v2.8.tradingtierstatusmessage", ftypes.STRING, nil, nil, nil, "Statistical information on the number of symbols and stock groups for the current trading day, sent at the beginning of each trading day.")
omi_tmx_tsx_level1_qrtmd_v2_8.fields.tsx_tsxv_closing_price_message = ProtoField.new("Tsx Tsxv Closing Price Message", "tmx.tsx.level1.qrtmd.v2.8.tsxtsxvclosingpricemessage", ftypes.STRING, nil, nil, nil, "Closing price of the trading day with the last bid and ask behind it.")

-- Tmx Tsx Level1 Qrtmd 2.8 Expert Info
tmx_tsx_level1_qrtmd_v2_8.experts = {}
tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number = ProtoExpert.new("tmx.tsx.level1.qrtmd.v2.8.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_tmx_tsx_level1_qrtmd_v2_8.experts = { tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number }

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Tmx Tsx Level1 Qrtmd 2.8 Element Dissection Options
show.application_messages = true
show.headers = true
show.structs = true

-- Register Tmx Tsx Level1 Qrtmd 2.8 Show Options
omi_tmx_tsx_level1_qrtmd_v2_8.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_tmx_tsx_level1_qrtmd_v2_8.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_tmx_tsx_level1_qrtmd_v2_8.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_tmx_tsx_level1_qrtmd_v2_8.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_tmx_tsx_level1_qrtmd_v2_8.prefs.show_application_messages then
    show.application_messages = omi_tmx_tsx_level1_qrtmd_v2_8.prefs.show_application_messages
  end
  if show.headers ~= omi_tmx_tsx_level1_qrtmd_v2_8.prefs.show_headers then
    show.headers = omi_tmx_tsx_level1_qrtmd_v2_8.prefs.show_headers
  end
  if show.structs ~= omi_tmx_tsx_level1_qrtmd_v2_8.prefs.show_structs then
    show.structs = omi_tmx_tsx_level1_qrtmd_v2_8.prefs.show_structs
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

-- trim leading spaces
trim_left_spaces = function(str)
  local start = 1

  while start <= str:len() and str:byte(start) == 0x20 do
    start = start + 1
  end

  return str:sub(start)
end

-- trim leading zeros
trim_left_zeros = function(str)
  local start = 1

  while start < str:len() and str:byte(start) == 0x30 do
    start = start + 1
  end

  return str:sub(start)
end

-- is every character a digit
is_digits = function(str)
  if str:len() == 0 then
    return false
  end

  for index = 1, str:len() do
    local byte = str:byte(index)

    if byte < 0x30 or byte > 0x39 then
      return false
    end
  end

  return true
end

-- the number a digit run of implied decimal places spells
format_implied_decimal_text = function(str, places)
  local digits = trim_left_spaces(str)
  local sign = ""
  local first = digits:sub(1, 1)

  if first == "-" or first == "+" then
    sign = first
    digits = digits:sub(2)
  end

  if not is_digits(digits) then
    return nil
  end

  digits = trim_left_zeros(digits)

  while digits:len() <= places do
    digits = "0"..digits
  end

  return sign..digits:sub(1, digits:len() - places).."."..digits:sub(-places)
end


-----------------------------------------------------------------------
-- Tmx Tsx Level1 Qrtmd 2.8 Fields
-----------------------------------------------------------------------

-- Ask Price
tmx_tsx_level1_qrtmd_v2_8.ask_price = {}

-- Size: Ask Price
tmx_tsx_level1_qrtmd_v2_8.ask_price.size = 9

-- Display: Ask Price
tmx_tsx_level1_qrtmd_v2_8.ask_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_level1_qrtmd_v2_8.ask_price.size):string(), 3)

  if text == nil then
    return "Ask Price: "..tostring(value)
  end

  return "Ask Price: "..text
end

-- Dissect: Ask Price
tmx_tsx_level1_qrtmd_v2_8.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.ask_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.ask_price, range, value, "Ask Price: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Ask Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000

  local display = tmx_tsx_level1_qrtmd_v2_8.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Size
tmx_tsx_level1_qrtmd_v2_8.ask_size = {}

-- Size: Ask Size
tmx_tsx_level1_qrtmd_v2_8.ask_size.size = 9

-- Display: Ask Size
tmx_tsx_level1_qrtmd_v2_8.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
tmx_tsx_level1_qrtmd_v2_8.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.ask_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.ask_size, range, value, "Ask Size: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Ask Size is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_level1_qrtmd_v2_8.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Bid Price
tmx_tsx_level1_qrtmd_v2_8.bid_price = {}

-- Size: Bid Price
tmx_tsx_level1_qrtmd_v2_8.bid_price.size = 9

-- Display: Bid Price
tmx_tsx_level1_qrtmd_v2_8.bid_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_level1_qrtmd_v2_8.bid_price.size):string(), 3)

  if text == nil then
    return "Bid Price: "..tostring(value)
  end

  return "Bid Price: "..text
end

-- Dissect: Bid Price
tmx_tsx_level1_qrtmd_v2_8.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.bid_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.bid_price, range, value, "Bid Price: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Bid Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000

  local display = tmx_tsx_level1_qrtmd_v2_8.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Size
tmx_tsx_level1_qrtmd_v2_8.bid_size = {}

-- Size: Bid Size
tmx_tsx_level1_qrtmd_v2_8.bid_size.size = 9

-- Display: Bid Size
tmx_tsx_level1_qrtmd_v2_8.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
tmx_tsx_level1_qrtmd_v2_8.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.bid_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.bid_size, range, value, "Bid Size: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Bid Size is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_level1_qrtmd_v2_8.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Board Lot
tmx_tsx_level1_qrtmd_v2_8.board_lot = {}

-- Size: Board Lot
tmx_tsx_level1_qrtmd_v2_8.board_lot.size = 9

-- Display: Board Lot
tmx_tsx_level1_qrtmd_v2_8.board_lot.display = function(value)
  return "Board Lot: "..value
end

-- Dissect: Board Lot
tmx_tsx_level1_qrtmd_v2_8.board_lot.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.board_lot.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.board_lot, range, value, "Board Lot: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Board Lot is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_level1_qrtmd_v2_8.board_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.board_lot, range, value, display)

  return offset + length, value
end

-- Bulletin Indicator
tmx_tsx_level1_qrtmd_v2_8.bulletin_indicator = {}

-- Size: Bulletin Indicator
tmx_tsx_level1_qrtmd_v2_8.bulletin_indicator.size = 1

-- Display: Bulletin Indicator
tmx_tsx_level1_qrtmd_v2_8.bulletin_indicator.display = function(value)
  if value == "Y" then
    return "Bulletin Indicator: Yes (Y)"
  end
  if value == "N" then
    return "Bulletin Indicator: No (N)"
  end

  return "Bulletin Indicator: Unknown("..value..")"
end

-- Dissect: Bulletin Indicator
tmx_tsx_level1_qrtmd_v2_8.bulletin_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.bulletin_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_level1_qrtmd_v2_8.bulletin_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.bulletin_indicator, range, value, display)

  return offset + length, value
end

-- Business Date
tmx_tsx_level1_qrtmd_v2_8.business_date = {}

-- Size: Business Date
tmx_tsx_level1_qrtmd_v2_8.business_date.size = 8

-- Display: Business Date
tmx_tsx_level1_qrtmd_v2_8.business_date.display = function(value)
  if #value < 8 then
    return "Business Date: "..value
  end

  return "Business Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Business Date
tmx_tsx_level1_qrtmd_v2_8.business_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.business_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_level1_qrtmd_v2_8.business_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.business_date, range, value, display)

  return offset + length, value
end

-- Buy Maximum Quantity
tmx_tsx_level1_qrtmd_v2_8.buy_maximum_quantity = {}

-- Size: Buy Maximum Quantity
tmx_tsx_level1_qrtmd_v2_8.buy_maximum_quantity.size = 9

-- Display: Buy Maximum Quantity
tmx_tsx_level1_qrtmd_v2_8.buy_maximum_quantity.display = function(value)
  return "Buy Maximum Quantity: "..value
end

-- Dissect: Buy Maximum Quantity
tmx_tsx_level1_qrtmd_v2_8.buy_maximum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.buy_maximum_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.buy_maximum_quantity, range, value, "Buy Maximum Quantity: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Buy Maximum Quantity is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_level1_qrtmd_v2_8.buy_maximum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.buy_maximum_quantity, range, value, display)

  return offset + length, value
end

-- Buy Minimum Quantity
tmx_tsx_level1_qrtmd_v2_8.buy_minimum_quantity = {}

-- Size: Buy Minimum Quantity
tmx_tsx_level1_qrtmd_v2_8.buy_minimum_quantity.size = 9

-- Display: Buy Minimum Quantity
tmx_tsx_level1_qrtmd_v2_8.buy_minimum_quantity.display = function(value)
  return "Buy Minimum Quantity: "..value
end

-- Dissect: Buy Minimum Quantity
tmx_tsx_level1_qrtmd_v2_8.buy_minimum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.buy_minimum_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.buy_minimum_quantity, range, value, "Buy Minimum Quantity: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Buy Minimum Quantity is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_level1_qrtmd_v2_8.buy_minimum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.buy_minimum_quantity, range, value, display)

  return offset + length, value
end

-- Buyer Id
tmx_tsx_level1_qrtmd_v2_8.buyer_id = {}

-- Size: Buyer Id
tmx_tsx_level1_qrtmd_v2_8.buyer_id.size = 3

-- Display: Buyer Id
tmx_tsx_level1_qrtmd_v2_8.buyer_id.display = function(value)
  return "Buyer Id: "..value
end

-- Dissect: Buyer Id
tmx_tsx_level1_qrtmd_v2_8.buyer_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.buyer_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.buyer_id, range, value, "Buyer Id: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Buyer Id is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_level1_qrtmd_v2_8.buyer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.buyer_id, range, value, display)

  return offset + length, value
end

-- Bypass
tmx_tsx_level1_qrtmd_v2_8.bypass = {}

-- Size: Bypass
tmx_tsx_level1_qrtmd_v2_8.bypass.size = 1

-- Display: Bypass
tmx_tsx_level1_qrtmd_v2_8.bypass.display = function(value)
  if value == "Y" then
    return "Bypass: Yes (Y)"
  end
  if value == "N" then
    return "Bypass: No (N)"
  end

  return "Bypass: Unknown("..value..")"
end

-- Dissect: Bypass
tmx_tsx_level1_qrtmd_v2_8.bypass.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.bypass.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_level1_qrtmd_v2_8.bypass.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.bypass, range, value, display)

  return offset + length, value
end

-- Ccp
tmx_tsx_level1_qrtmd_v2_8.ccp = {}

-- Size: Ccp
tmx_tsx_level1_qrtmd_v2_8.ccp.size = 11

-- Display: Ccp
tmx_tsx_level1_qrtmd_v2_8.ccp.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_level1_qrtmd_v2_8.ccp.size):string(), 5)

  if text == nil then
    return "Ccp: "..tostring(value)
  end

  return "Ccp: "..text
end

-- Dissect: Ccp
tmx_tsx_level1_qrtmd_v2_8.ccp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.ccp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.ccp, range, value, "Ccp: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Ccp is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100000

  local display = tmx_tsx_level1_qrtmd_v2_8.ccp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.ccp, range, value, display)

  return offset + length, value
end

-- Comment
tmx_tsx_level1_qrtmd_v2_8.comment = {}

-- Size: Comment
tmx_tsx_level1_qrtmd_v2_8.comment.size = 40

-- Display: Comment
tmx_tsx_level1_qrtmd_v2_8.comment.display = function(value)
  return "Comment: "..value
end

-- Dissect: Comment
tmx_tsx_level1_qrtmd_v2_8.comment.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.comment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_level1_qrtmd_v2_8.comment.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.comment, range, value, display)

  return offset + length, value
end

-- Continuation Identifier
tmx_tsx_level1_qrtmd_v2_8.continuation_identifier = {}

-- Size: Continuation Identifier
tmx_tsx_level1_qrtmd_v2_8.continuation_identifier.size = 1

-- Display: Continuation Identifier
tmx_tsx_level1_qrtmd_v2_8.continuation_identifier.display = function(value)
  if value == "0" then
    return "Continuation Identifier: Stand Alone Message (0)"
  end

  return "Continuation Identifier: Unknown("..value..")"
end

-- Dissect: Continuation Identifier
tmx_tsx_level1_qrtmd_v2_8.continuation_identifier.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.continuation_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_level1_qrtmd_v2_8.continuation_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.continuation_identifier, range, value, display)

  return offset + length, value
end

-- Cop
tmx_tsx_level1_qrtmd_v2_8.cop = {}

-- Size: Cop
tmx_tsx_level1_qrtmd_v2_8.cop.size = 11

-- Display: Cop
tmx_tsx_level1_qrtmd_v2_8.cop.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_level1_qrtmd_v2_8.cop.size):string(), 5)

  if text == nil then
    return "Cop: "..tostring(value)
  end

  return "Cop: "..text
end

-- Dissect: Cop
tmx_tsx_level1_qrtmd_v2_8.cop.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.cop.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.cop, range, value, "Cop: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Cop is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100000

  local display = tmx_tsx_level1_qrtmd_v2_8.cop.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.cop, range, value, display)

  return offset + length, value
end

-- Cross Type
tmx_tsx_level1_qrtmd_v2_8.cross_type = {}

-- Size: Cross Type
tmx_tsx_level1_qrtmd_v2_8.cross_type.size = 1

-- Display: Cross Type
tmx_tsx_level1_qrtmd_v2_8.cross_type.display = function(value)
  if value == "I" then
    return "Cross Type: Internal (I)"
  end
  if value == "B" then
    return "Cross Type: Basis (B)"
  end
  if value == "C" then
    return "Cross Type: Contingent (C)"
  end
  if value == "D" then
    return "Cross Type: Derivative Related (D)"
  end
  if value == "R" then
    return "Cross Type: Regular (R)"
  end
  if value == "S" then
    return "Cross Type: Special Trading Session (S)"
  end
  if value == "V" then
    return "Cross Type: Volume Weighted Average Price (V)"
  end
  if value == " " then
    return "Cross Type: Default (<whitespace>)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
tmx_tsx_level1_qrtmd_v2_8.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_level1_qrtmd_v2_8.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Currency
tmx_tsx_level1_qrtmd_v2_8.currency = {}

-- Size: Currency
tmx_tsx_level1_qrtmd_v2_8.currency.size = 1

-- Display: Currency
tmx_tsx_level1_qrtmd_v2_8.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
tmx_tsx_level1_qrtmd_v2_8.currency.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_level1_qrtmd_v2_8.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.currency, range, value, display)

  return offset + length, value
end

-- Cusip
tmx_tsx_level1_qrtmd_v2_8.cusip = {}

-- Size: Cusip
tmx_tsx_level1_qrtmd_v2_8.cusip.size = 12

-- Display: Cusip
tmx_tsx_level1_qrtmd_v2_8.cusip.display = function(value)
  return "Cusip: "..value
end

-- Dissect: Cusip
tmx_tsx_level1_qrtmd_v2_8.cusip.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.cusip.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_level1_qrtmd_v2_8.cusip.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.cusip, range, value, display)

  return offset + length, value
end

-- Exchange Id
tmx_tsx_level1_qrtmd_v2_8.exchange_id = {}

-- Size: Exchange Id
tmx_tsx_level1_qrtmd_v2_8.exchange_id.size = 3

-- Display: Exchange Id
tmx_tsx_level1_qrtmd_v2_8.exchange_id.display = function(value)
  return "Exchange Id: "..value
end

-- Dissect: Exchange Id
tmx_tsx_level1_qrtmd_v2_8.exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.exchange_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_level1_qrtmd_v2_8.exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.exchange_id, range, value, display)

  return offset + length, value
end

-- Exchange Identifier
tmx_tsx_level1_qrtmd_v2_8.exchange_identifier = {}

-- Size: Exchange Identifier
tmx_tsx_level1_qrtmd_v2_8.exchange_identifier.size = 2

-- Display: Exchange Identifier
tmx_tsx_level1_qrtmd_v2_8.exchange_identifier.display = function(value)
  if value == "T" then
    return "Exchange Identifier: Toronto Stock Exchange (T)"
  end
  if value == "V" then
    return "Exchange Identifier: Tsx Venture Exchange (V)"
  end
  if value == "A" then
    return "Exchange Identifier: Tsx Alpha Exchange (A)"
  end

  return "Exchange Identifier: Unknown("..value..")"
end

-- Dissect: Exchange Identifier
tmx_tsx_level1_qrtmd_v2_8.exchange_identifier.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.exchange_identifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_level1_qrtmd_v2_8.exchange_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.exchange_identifier, range, value, display)

  return offset + length, value
end

-- Face Value
tmx_tsx_level1_qrtmd_v2_8.face_value = {}

-- Size: Face Value
tmx_tsx_level1_qrtmd_v2_8.face_value.size = 9

-- Display: Face Value
tmx_tsx_level1_qrtmd_v2_8.face_value.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_level1_qrtmd_v2_8.face_value.size):string(), 3)

  if text == nil then
    return "Face Value: "..tostring(value)
  end

  return "Face Value: "..text
end

-- Dissect: Face Value
tmx_tsx_level1_qrtmd_v2_8.face_value.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.face_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.face_value, range, value, "Face Value: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Face Value is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000

  local display = tmx_tsx_level1_qrtmd_v2_8.face_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.face_value, range, value, display)

  return offset + length, value
end

-- Far Indicative Closing Price
tmx_tsx_level1_qrtmd_v2_8.far_indicative_closing_price = {}

-- Size: Far Indicative Closing Price
tmx_tsx_level1_qrtmd_v2_8.far_indicative_closing_price.size = 11

-- Display: Far Indicative Closing Price
tmx_tsx_level1_qrtmd_v2_8.far_indicative_closing_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_level1_qrtmd_v2_8.far_indicative_closing_price.size):string(), 5)

  if text == nil then
    return "Far Indicative Closing Price: "..tostring(value)
  end

  return "Far Indicative Closing Price: "..text
end

-- Dissect: Far Indicative Closing Price
tmx_tsx_level1_qrtmd_v2_8.far_indicative_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.far_indicative_closing_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.far_indicative_closing_price, range, value, "Far Indicative Closing Price: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Far Indicative Closing Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100000

  local display = tmx_tsx_level1_qrtmd_v2_8.far_indicative_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.far_indicative_closing_price, range, value, display)

  return offset + length, value
end

-- Imbalance Reference Price
tmx_tsx_level1_qrtmd_v2_8.imbalance_reference_price = {}

-- Size: Imbalance Reference Price
tmx_tsx_level1_qrtmd_v2_8.imbalance_reference_price.size = 11

-- Display: Imbalance Reference Price
tmx_tsx_level1_qrtmd_v2_8.imbalance_reference_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_level1_qrtmd_v2_8.imbalance_reference_price.size):string(), 5)

  if text == nil then
    return "Imbalance Reference Price: "..tostring(value)
  end

  return "Imbalance Reference Price: "..text
end

-- Dissect: Imbalance Reference Price
tmx_tsx_level1_qrtmd_v2_8.imbalance_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.imbalance_reference_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.imbalance_reference_price, range, value, "Imbalance Reference Price: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Imbalance Reference Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100000

  local display = tmx_tsx_level1_qrtmd_v2_8.imbalance_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.imbalance_reference_price, range, value, display)

  return offset + length, value
end

-- Imbalance Side
tmx_tsx_level1_qrtmd_v2_8.imbalance_side = {}

-- Size: Imbalance Side
tmx_tsx_level1_qrtmd_v2_8.imbalance_side.size = 1

-- Display: Imbalance Side
tmx_tsx_level1_qrtmd_v2_8.imbalance_side.display = function(value)
  if value == "B" then
    return "Imbalance Side: Buy (B)"
  end
  if value == "S" then
    return "Imbalance Side: Sell (S)"
  end
  if value == " " then
    return "Imbalance Side: Not Applicable (<whitespace>)"
  end

  return "Imbalance Side: Unknown("..value..")"
end

-- Dissect: Imbalance Side
tmx_tsx_level1_qrtmd_v2_8.imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.imbalance_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_level1_qrtmd_v2_8.imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Imbalance Volume
tmx_tsx_level1_qrtmd_v2_8.imbalance_volume = {}

-- Size: Imbalance Volume
tmx_tsx_level1_qrtmd_v2_8.imbalance_volume.size = 9

-- Display: Imbalance Volume
tmx_tsx_level1_qrtmd_v2_8.imbalance_volume.display = function(value)
  return "Imbalance Volume: "..value
end

-- Dissect: Imbalance Volume
tmx_tsx_level1_qrtmd_v2_8.imbalance_volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.imbalance_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.imbalance_volume, range, value, "Imbalance Volume: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Imbalance Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_level1_qrtmd_v2_8.imbalance_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.imbalance_volume, range, value, display)

  return offset + length, value
end

-- Indicative Price
tmx_tsx_level1_qrtmd_v2_8.indicative_price = {}

-- Size: Indicative Price
tmx_tsx_level1_qrtmd_v2_8.indicative_price.size = 11

-- Display: Indicative Price
tmx_tsx_level1_qrtmd_v2_8.indicative_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_level1_qrtmd_v2_8.indicative_price.size):string(), 5)

  if text == nil then
    return "Indicative Price: "..tostring(value)
  end

  return "Indicative Price: "..text
end

-- Dissect: Indicative Price
tmx_tsx_level1_qrtmd_v2_8.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.indicative_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.indicative_price, range, value, "Indicative Price: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Indicative Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100000

  local display = tmx_tsx_level1_qrtmd_v2_8.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Is Conditional
tmx_tsx_level1_qrtmd_v2_8.is_conditional = {}

-- Size: Is Conditional
tmx_tsx_level1_qrtmd_v2_8.is_conditional.size = 1

-- Display: Is Conditional
tmx_tsx_level1_qrtmd_v2_8.is_conditional.display = function(value)
  if value == "Y" then
    return "Is Conditional: Yes (Y)"
  end
  if value == "N" then
    return "Is Conditional: No (N)"
  end

  return "Is Conditional: Unknown("..value..")"
end

-- Dissect: Is Conditional
tmx_tsx_level1_qrtmd_v2_8.is_conditional.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.is_conditional.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_level1_qrtmd_v2_8.is_conditional.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.is_conditional, range, value, display)

  return offset + length, value
end

-- Is Dark
tmx_tsx_level1_qrtmd_v2_8.is_dark = {}

-- Size: Is Dark
tmx_tsx_level1_qrtmd_v2_8.is_dark.size = 1

-- Display: Is Dark
tmx_tsx_level1_qrtmd_v2_8.is_dark.display = function(value)
  if value == "Y" then
    return "Is Dark: Yes (Y)"
  end
  if value == "N" then
    return "Is Dark: No (N)"
  end

  return "Is Dark: Unknown("..value..")"
end

-- Dissect: Is Dark
tmx_tsx_level1_qrtmd_v2_8.is_dark.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.is_dark.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_level1_qrtmd_v2_8.is_dark.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.is_dark, range, value, display)

  return offset + length, value
end

-- Is Mid Only
tmx_tsx_level1_qrtmd_v2_8.is_mid_only = {}

-- Size: Is Mid Only
tmx_tsx_level1_qrtmd_v2_8.is_mid_only.size = 1

-- Display: Is Mid Only
tmx_tsx_level1_qrtmd_v2_8.is_mid_only.display = function(value)
  if value == "Y" then
    return "Is Mid Only: Yes (Y)"
  end
  if value == "N" then
    return "Is Mid Only: No (N)"
  end

  return "Is Mid Only: Unknown("..value..")"
end

-- Dissect: Is Mid Only
tmx_tsx_level1_qrtmd_v2_8.is_mid_only.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.is_mid_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_level1_qrtmd_v2_8.is_mid_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.is_mid_only, range, value, display)

  return offset + length, value
end

-- Last Sale
tmx_tsx_level1_qrtmd_v2_8.last_sale = {}

-- Size: Last Sale
tmx_tsx_level1_qrtmd_v2_8.last_sale.size = 11

-- Display: Last Sale
tmx_tsx_level1_qrtmd_v2_8.last_sale.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_level1_qrtmd_v2_8.last_sale.size):string(), 5)

  if text == nil then
    return "Last Sale: "..tostring(value)
  end

  return "Last Sale: "..text
end

-- Dissect: Last Sale
tmx_tsx_level1_qrtmd_v2_8.last_sale.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.last_sale.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.last_sale, range, value, "Last Sale: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Last Sale is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100000

  local display = tmx_tsx_level1_qrtmd_v2_8.last_sale.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.last_sale, range, value, display)

  return offset + length, value
end

-- Listing Market
tmx_tsx_level1_qrtmd_v2_8.listing_market = {}

-- Size: Listing Market
tmx_tsx_level1_qrtmd_v2_8.listing_market.size = 1

-- Display: Listing Market
tmx_tsx_level1_qrtmd_v2_8.listing_market.display = function(value)
  if value == "T" then
    return "Listing Market: Tsx (T)"
  end
  if value == "V" then
    return "Listing Market: Tsxv (V)"
  end
  if value == "N" then
    return "Listing Market: Navex (N)"
  end
  if value == "Q" then
    return "Listing Market: Nasdaq (Q)"
  end
  if value == "S" then
    return "Listing Market: Nyse (S)"
  end
  if value == "M" then
    return "Listing Market: Nyse Mkt (M)"
  end
  if value == "X" then
    return "Listing Market: No Market (X)"
  end

  return "Listing Market: Unknown("..value..")"
end

-- Dissect: Listing Market
tmx_tsx_level1_qrtmd_v2_8.listing_market.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.listing_market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_level1_qrtmd_v2_8.listing_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.listing_market, range, value, display)

  return offset + length, value
end

-- Market Order Imbalance Side
tmx_tsx_level1_qrtmd_v2_8.market_order_imbalance_side = {}

-- Size: Market Order Imbalance Side
tmx_tsx_level1_qrtmd_v2_8.market_order_imbalance_side.size = 1

-- Display: Market Order Imbalance Side
tmx_tsx_level1_qrtmd_v2_8.market_order_imbalance_side.display = function(value)
  if value == "B" then
    return "Market Order Imbalance Side: Buy (B)"
  end
  if value == "S" then
    return "Market Order Imbalance Side: Sell (S)"
  end
  if value == " " then
    return "Market Order Imbalance Side: Not Applicable (<whitespace>)"
  end

  return "Market Order Imbalance Side: Unknown("..value..")"
end

-- Dissect: Market Order Imbalance Side
tmx_tsx_level1_qrtmd_v2_8.market_order_imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.market_order_imbalance_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_level1_qrtmd_v2_8.market_order_imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.market_order_imbalance_side, range, value, display)

  return offset + length, value
end

-- Market Order Imbalance Volume
tmx_tsx_level1_qrtmd_v2_8.market_order_imbalance_volume = {}

-- Size: Market Order Imbalance Volume
tmx_tsx_level1_qrtmd_v2_8.market_order_imbalance_volume.size = 9

-- Display: Market Order Imbalance Volume
tmx_tsx_level1_qrtmd_v2_8.market_order_imbalance_volume.display = function(value)
  return "Market Order Imbalance Volume: "..value
end

-- Dissect: Market Order Imbalance Volume
tmx_tsx_level1_qrtmd_v2_8.market_order_imbalance_volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.market_order_imbalance_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.market_order_imbalance_volume, range, value, "Market Order Imbalance Volume: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Market Order Imbalance Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_level1_qrtmd_v2_8.market_order_imbalance_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.market_order_imbalance_volume, range, value, display)

  return offset + length, value
end

-- Market State
tmx_tsx_level1_qrtmd_v2_8.market_state = {}

-- Size: Market State
tmx_tsx_level1_qrtmd_v2_8.market_state.size = 1

-- Display: Market State
tmx_tsx_level1_qrtmd_v2_8.market_state.display = function(value)
  if value == "P" then
    return "Market State: Pre Open (P)"
  end
  if value == "O" then
    return "Market State: Opening (O)"
  end
  if value == "S" then
    return "Market State: Open (S)"
  end
  if value == "C" then
    return "Market State: Closed (C)"
  end
  if value == "R" then
    return "Market State: Extended Hours Open (R)"
  end
  if value == "F" then
    return "Market State: Extended Hours Close (F)"
  end
  if value == "N" then
    return "Market State: Extended Hours Cxls (N)"
  end
  if value == "M" then
    return "Market State: Moc Imbalance (M)"
  end
  if value == "T" then
    return "Market State: Moc Freeze (T)"
  end
  if value == "A" then
    return "Market State: Ccp Determination (A)"
  end
  if value == "E" then
    return "Market State: Price Movement Extension (E)"
  end
  if value == "L" then
    return "Market State: Closing (L)"
  end
  if value == "J" then
    return "Market State: Navex Closed (J)"
  end
  if value == "G" then
    return "Market State: Navex Order Entry (G)"
  end
  if value == "H" then
    return "Market State: Navex Order Entry Close (H)"
  end
  if value == "K" then
    return "Market State: Navex Am Execution (K)"
  end
  if value == "X" then
    return "Market State: Navex Pm Execution (X)"
  end
  if value == "Y" then
    return "Market State: Navex Close (Y)"
  end

  return "Market State: Unknown("..value..")"
end

-- Dissect: Market State
tmx_tsx_level1_qrtmd_v2_8.market_state.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.market_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_level1_qrtmd_v2_8.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.market_state, range, value, display)

  return offset + length, value
end

-- Message Length
tmx_tsx_level1_qrtmd_v2_8.message_length = {}

-- Size: Message Length
tmx_tsx_level1_qrtmd_v2_8.message_length.size = 4

-- Display: Message Length
tmx_tsx_level1_qrtmd_v2_8.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
tmx_tsx_level1_qrtmd_v2_8.message_length.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.message_length.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.message_length, range, value, "Message Length: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Message Length is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_level1_qrtmd_v2_8.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Text
tmx_tsx_level1_qrtmd_v2_8.message_text = {}

-- Size: Message Text
tmx_tsx_level1_qrtmd_v2_8.message_text.size = 80

-- Display: Message Text
tmx_tsx_level1_qrtmd_v2_8.message_text.display = function(value)
  return "Message Text: "..value
end

-- Dissect: Message Text
tmx_tsx_level1_qrtmd_v2_8.message_text.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.message_text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_level1_qrtmd_v2_8.message_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.message_text, range, value, display)

  return offset + length, value
end

-- Message Type
tmx_tsx_level1_qrtmd_v2_8.message_type = {}

-- Size: Message Type
tmx_tsx_level1_qrtmd_v2_8.message_type.size = 2

-- Display: Message Type
tmx_tsx_level1_qrtmd_v2_8.message_type.display = function(value)
  if value == "A" then
    return "Message Type: Trade Message (A)"
  end
  if value == "B" then
    return "Message Type: Symbol Status Message (B)"
  end
  if value == "C" then
    return "Message Type: Moc Imbalance Notification Message (C)"
  end
  if value == "CA" then
    return "Message Type: Moc Price Movement Delay Message (CA)"
  end
  if value == "D" then
    return "Message Type: Stock State Message (D)"
  end
  if value == "E" then
    return "Message Type: Quote Message (E)"
  end
  if value == "G" then
    return "Message Type: General Message (G)"
  end
  if value == "H" then
    return "Message Type: Trade Cancellation Message (H)"
  end
  if value == "I" then
    return "Message Type: Indicative Price Message (I)"
  end
  if value == "O" then
    return "Message Type: Calculated Opening Price Message (O)"
  end
  if value == "R" then
    return "Message Type: Tsx Tsxv Closing Price Message (R)"
  end
  if value == "S" then
    return "Message Type: Market State Message (S)"
  end
  if value == "T" then
    return "Message Type: Trading Tier Status Message (T)"
  end
  if value == "X" then
    return "Message Type: Trade Correction Message (X)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
tmx_tsx_level1_qrtmd_v2_8.message_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.message_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_level1_qrtmd_v2_8.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.message_type, range, value, display)

  return offset + length, value
end

-- Moc
tmx_tsx_level1_qrtmd_v2_8.moc = {}

-- Size: Moc
tmx_tsx_level1_qrtmd_v2_8.moc.size = 1

-- Display: Moc
tmx_tsx_level1_qrtmd_v2_8.moc.display = function(value)
  if value == "Y" then
    return "Moc: Yes (Y)"
  end
  if value == "N" then
    return "Moc: No (N)"
  end

  return "Moc: Unknown("..value..")"
end

-- Dissect: Moc
tmx_tsx_level1_qrtmd_v2_8.moc.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.moc.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_level1_qrtmd_v2_8.moc.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.moc, range, value, display)

  return offset + length, value
end

-- Moc Eligible
tmx_tsx_level1_qrtmd_v2_8.moc_eligible = {}

-- Size: Moc Eligible
tmx_tsx_level1_qrtmd_v2_8.moc_eligible.size = 1

-- Display: Moc Eligible
tmx_tsx_level1_qrtmd_v2_8.moc_eligible.display = function(value)
  if value == "Y" then
    return "Moc Eligible: Yes (Y)"
  end
  if value == "N" then
    return "Moc Eligible: No (N)"
  end

  return "Moc Eligible: Unknown("..value..")"
end

-- Dissect: Moc Eligible
tmx_tsx_level1_qrtmd_v2_8.moc_eligible.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.moc_eligible.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_level1_qrtmd_v2_8.moc_eligible.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.moc_eligible, range, value, display)

  return offset + length, value
end

-- Near Indicative Closing Price
tmx_tsx_level1_qrtmd_v2_8.near_indicative_closing_price = {}

-- Size: Near Indicative Closing Price
tmx_tsx_level1_qrtmd_v2_8.near_indicative_closing_price.size = 11

-- Display: Near Indicative Closing Price
tmx_tsx_level1_qrtmd_v2_8.near_indicative_closing_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_level1_qrtmd_v2_8.near_indicative_closing_price.size):string(), 5)

  if text == nil then
    return "Near Indicative Closing Price: "..tostring(value)
  end

  return "Near Indicative Closing Price: "..text
end

-- Dissect: Near Indicative Closing Price
tmx_tsx_level1_qrtmd_v2_8.near_indicative_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.near_indicative_closing_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.near_indicative_closing_price, range, value, "Near Indicative Closing Price: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Near Indicative Closing Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100000

  local display = tmx_tsx_level1_qrtmd_v2_8.near_indicative_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.near_indicative_closing_price, range, value, display)

  return offset + length, value
end

-- Opening Time
tmx_tsx_level1_qrtmd_v2_8.opening_time = {}

-- Size: Opening Time
tmx_tsx_level1_qrtmd_v2_8.opening_time.size = 6

-- Display: Opening Time
tmx_tsx_level1_qrtmd_v2_8.opening_time.display = function(value)
  if #value < 6 then
    return "Opening Time: "..value
  end

  return "Opening Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Opening Time
tmx_tsx_level1_qrtmd_v2_8.opening_time.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.opening_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_level1_qrtmd_v2_8.opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Opening Trade
tmx_tsx_level1_qrtmd_v2_8.opening_trade = {}

-- Size: Opening Trade
tmx_tsx_level1_qrtmd_v2_8.opening_trade.size = 1

-- Display: Opening Trade
tmx_tsx_level1_qrtmd_v2_8.opening_trade.display = function(value)
  if value == "Y" then
    return "Opening Trade: Yes (Y)"
  end
  if value == "N" then
    return "Opening Trade: No (N)"
  end

  return "Opening Trade: Unknown("..value..")"
end

-- Dissect: Opening Trade
tmx_tsx_level1_qrtmd_v2_8.opening_trade.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.opening_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_level1_qrtmd_v2_8.opening_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.opening_trade, range, value, display)

  return offset + length, value
end

-- Original Trade Id
tmx_tsx_level1_qrtmd_v2_8.original_trade_id = {}

-- Size: Original Trade Id
tmx_tsx_level1_qrtmd_v2_8.original_trade_id.size = 9

-- Display: Original Trade Id
tmx_tsx_level1_qrtmd_v2_8.original_trade_id.display = function(value)
  return "Original Trade Id: "..value
end

-- Dissect: Original Trade Id
tmx_tsx_level1_qrtmd_v2_8.original_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.original_trade_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.original_trade_id, range, value, "Original Trade Id: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Original Trade Id is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_level1_qrtmd_v2_8.original_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.original_trade_id, range, value, display)

  return offset + length, value
end

-- Paired Volume
tmx_tsx_level1_qrtmd_v2_8.paired_volume = {}

-- Size: Paired Volume
tmx_tsx_level1_qrtmd_v2_8.paired_volume.size = 9

-- Display: Paired Volume
tmx_tsx_level1_qrtmd_v2_8.paired_volume.display = function(value)
  return "Paired Volume: "..value
end

-- Dissect: Paired Volume
tmx_tsx_level1_qrtmd_v2_8.paired_volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.paired_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.paired_volume, range, value, "Paired Volume: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Paired Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_level1_qrtmd_v2_8.paired_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.paired_volume, range, value, display)

  return offset + length, value
end

-- Price Marker
tmx_tsx_level1_qrtmd_v2_8.price_marker = {}

-- Size: Price Marker
tmx_tsx_level1_qrtmd_v2_8.price_marker.size = 1

-- Display: Price Marker
tmx_tsx_level1_qrtmd_v2_8.price_marker.display = function(value)
  if value == "C" then
    return "Price Marker: Indicative Closing Price (C)"
  end
  if value == "O" then
    return "Price Marker: Calculated Opening Price (O)"
  end

  return "Price Marker: Unknown("..value..")"
end

-- Dissect: Price Marker
tmx_tsx_level1_qrtmd_v2_8.price_marker.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.price_marker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_level1_qrtmd_v2_8.price_marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.price_marker, range, value, display)

  return offset + length, value
end

-- Price Variation
tmx_tsx_level1_qrtmd_v2_8.price_variation = {}

-- Size: Price Variation
tmx_tsx_level1_qrtmd_v2_8.price_variation.size = 5

-- Display: Price Variation
tmx_tsx_level1_qrtmd_v2_8.price_variation.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_level1_qrtmd_v2_8.price_variation.size):string(), 2)

  if text == nil then
    return "Price Variation: "..tostring(value)
  end

  return "Price Variation: "..text
end

-- Dissect: Price Variation
tmx_tsx_level1_qrtmd_v2_8.price_variation.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.price_variation.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.price_variation, range, value, "Price Variation: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Price Variation is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = tmx_tsx_level1_qrtmd_v2_8.price_variation.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.price_variation, range, value, display)

  return offset + length, value
end

-- Product Type
tmx_tsx_level1_qrtmd_v2_8.product_type = {}

-- Size: Product Type
tmx_tsx_level1_qrtmd_v2_8.product_type.size = 1

-- Display: Product Type
tmx_tsx_level1_qrtmd_v2_8.product_type.display = function(value)
  if value == "B" then
    return "Product Type: Debenture (B)"
  end
  if value == "E" then
    return "Product Type: Equity (E)"
  end
  if value == "M" then
    return "Product Type: Mutual Fund (M)"
  end
  if value == "F" then
    return "Product Type: Etf (F)"
  end
  if value == "U" then
    return "Product Type: Us Equity (U)"
  end
  if value == "O" then
    return "Product Type: Bond (O)"
  end

  return "Product Type: Unknown("..value..")"
end

-- Dissect: Product Type
tmx_tsx_level1_qrtmd_v2_8.product_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.product_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_level1_qrtmd_v2_8.product_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.product_type, range, value, display)

  return offset + length, value
end

-- Qrtmd Etx
tmx_tsx_level1_qrtmd_v2_8.qrtmd_etx = {}

-- Size: Qrtmd Etx
tmx_tsx_level1_qrtmd_v2_8.qrtmd_etx.size = 1

-- Display: Qrtmd Etx
tmx_tsx_level1_qrtmd_v2_8.qrtmd_etx.display = function(value)
  return "Qrtmd Etx: "..value
end

-- Dissect: Qrtmd Etx
tmx_tsx_level1_qrtmd_v2_8.qrtmd_etx.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.qrtmd_etx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_tsx_level1_qrtmd_v2_8.qrtmd_etx.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.qrtmd_etx, range, value, display)

  return offset + length, value
end

-- Qrtmd Stx
tmx_tsx_level1_qrtmd_v2_8.qrtmd_stx = {}

-- Size: Qrtmd Stx
tmx_tsx_level1_qrtmd_v2_8.qrtmd_stx.size = 1

-- Display: Qrtmd Stx
tmx_tsx_level1_qrtmd_v2_8.qrtmd_stx.display = function(value)
  if value == 2 then
    return "Qrtmd Stx: Stx"
  end

  return "Qrtmd Stx: Unknown("..value..")"
end

-- Dissect: Qrtmd Stx
tmx_tsx_level1_qrtmd_v2_8.qrtmd_stx.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.qrtmd_stx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_tsx_level1_qrtmd_v2_8.qrtmd_stx.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.qrtmd_stx, range, value, display)

  return offset + length, value
end

-- Retransmission Identifier
tmx_tsx_level1_qrtmd_v2_8.retransmission_identifier = {}

-- Size: Retransmission Identifier
tmx_tsx_level1_qrtmd_v2_8.retransmission_identifier.size = 1

-- Display: Retransmission Identifier
tmx_tsx_level1_qrtmd_v2_8.retransmission_identifier.display = function(value)
  if value == "0" then
    return "Retransmission Identifier: Normal Transmission (0)"
  end

  return "Retransmission Identifier: Unknown("..value..")"
end

-- Dissect: Retransmission Identifier
tmx_tsx_level1_qrtmd_v2_8.retransmission_identifier.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.retransmission_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_level1_qrtmd_v2_8.retransmission_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.retransmission_identifier, range, value, display)

  return offset + length, value
end

-- Sell Maximum Quantity
tmx_tsx_level1_qrtmd_v2_8.sell_maximum_quantity = {}

-- Size: Sell Maximum Quantity
tmx_tsx_level1_qrtmd_v2_8.sell_maximum_quantity.size = 9

-- Display: Sell Maximum Quantity
tmx_tsx_level1_qrtmd_v2_8.sell_maximum_quantity.display = function(value)
  return "Sell Maximum Quantity: "..value
end

-- Dissect: Sell Maximum Quantity
tmx_tsx_level1_qrtmd_v2_8.sell_maximum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.sell_maximum_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.sell_maximum_quantity, range, value, "Sell Maximum Quantity: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Sell Maximum Quantity is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_level1_qrtmd_v2_8.sell_maximum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.sell_maximum_quantity, range, value, display)

  return offset + length, value
end

-- Sell Minimum Quantity
tmx_tsx_level1_qrtmd_v2_8.sell_minimum_quantity = {}

-- Size: Sell Minimum Quantity
tmx_tsx_level1_qrtmd_v2_8.sell_minimum_quantity.size = 9

-- Display: Sell Minimum Quantity
tmx_tsx_level1_qrtmd_v2_8.sell_minimum_quantity.display = function(value)
  return "Sell Minimum Quantity: "..value
end

-- Dissect: Sell Minimum Quantity
tmx_tsx_level1_qrtmd_v2_8.sell_minimum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.sell_minimum_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.sell_minimum_quantity, range, value, "Sell Minimum Quantity: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Sell Minimum Quantity is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_level1_qrtmd_v2_8.sell_minimum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.sell_minimum_quantity, range, value, display)

  return offset + length, value
end

-- Seller Id
tmx_tsx_level1_qrtmd_v2_8.seller_id = {}

-- Size: Seller Id
tmx_tsx_level1_qrtmd_v2_8.seller_id.size = 3

-- Display: Seller Id
tmx_tsx_level1_qrtmd_v2_8.seller_id.display = function(value)
  return "Seller Id: "..value
end

-- Dissect: Seller Id
tmx_tsx_level1_qrtmd_v2_8.seller_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.seller_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.seller_id, range, value, "Seller Id: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Seller Id is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_level1_qrtmd_v2_8.seller_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.seller_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
tmx_tsx_level1_qrtmd_v2_8.sequence_number = {}

-- Size: Sequence Number
tmx_tsx_level1_qrtmd_v2_8.sequence_number.size = 9

-- Display: Sequence Number
tmx_tsx_level1_qrtmd_v2_8.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
tmx_tsx_level1_qrtmd_v2_8.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.sequence_number, range, value, "Sequence Number: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_level1_qrtmd_v2_8.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Service Identifier
tmx_tsx_level1_qrtmd_v2_8.service_identifier = {}

-- Size: Service Identifier
tmx_tsx_level1_qrtmd_v2_8.service_identifier.size = 3

-- Display: Service Identifier
tmx_tsx_level1_qrtmd_v2_8.service_identifier.display = function(value)
  if value == "TL1" then
    return "Service Identifier: Toronto Level 1 (TL1)"
  end
  if value == "CL1" then
    return "Service Identifier: Tsx Venture Exchange Level 1 (CL1)"
  end
  if value == "AL1" then
    return "Service Identifier: Alpha Level 1 (AL1)"
  end
  if value == "TL2" then
    return "Service Identifier: Toronto Level 2 (TL2)"
  end
  if value == "CL2" then
    return "Service Identifier: Tsx Venture Exchange Level 2 (CL2)"
  end
  if value == "AL2" then
    return "Service Identifier: Alpha Level 2 (AL2)"
  end
  if value == "TX1" then
    return "Service Identifier: Index Service Level 1 (TX1)"
  end
  if value == "TRD" then
    return "Service Identifier: Reference Data Feed Toronto (TRD)"
  end
  if value == "VRD" then
    return "Service Identifier: Reference Data Feed Venture (VRD)"
  end

  return "Service Identifier: Unknown("..value..")"
end

-- Dissect: Service Identifier
tmx_tsx_level1_qrtmd_v2_8.service_identifier.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.service_identifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_level1_qrtmd_v2_8.service_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.service_identifier, range, value, display)

  return offset + length, value
end

-- Settlement Terms
tmx_tsx_level1_qrtmd_v2_8.settlement_terms = {}

-- Size: Settlement Terms
tmx_tsx_level1_qrtmd_v2_8.settlement_terms.size = 1

-- Display: Settlement Terms
tmx_tsx_level1_qrtmd_v2_8.settlement_terms.display = function(value)
  if value == " " then
    return "Settlement Terms: Default (<whitespace>)"
  end
  if value == "C" then
    return "Settlement Terms: Cash (C)"
  end
  if value == "N" then
    return "Settlement Terms: Non Net (N)"
  end
  if value == "M" then
    return "Settlement Terms: Derivatives Related Contingent Equity Trade (M)"
  end
  if value == "T" then
    return "Settlement Terms: Cash Today (T)"
  end
  if value == "D" then
    return "Settlement Terms: Settlement Date (D)"
  end

  return "Settlement Terms: Unknown("..value..")"
end

-- Dissect: Settlement Terms
tmx_tsx_level1_qrtmd_v2_8.settlement_terms.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.settlement_terms.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_level1_qrtmd_v2_8.settlement_terms.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.settlement_terms, range, value, display)

  return offset + length, value
end

-- Stock Group
tmx_tsx_level1_qrtmd_v2_8.stock_group = {}

-- Size: Stock Group
tmx_tsx_level1_qrtmd_v2_8.stock_group.size = 2

-- Display: Stock Group
tmx_tsx_level1_qrtmd_v2_8.stock_group.display = function(value)
  return "Stock Group: "..value
end

-- Dissect: Stock Group
tmx_tsx_level1_qrtmd_v2_8.stock_group.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.stock_group.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.stock_group, range, value, "Stock Group: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Stock Group is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_level1_qrtmd_v2_8.stock_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.stock_group, range, value, display)

  return offset + length, value
end

-- Stock State
tmx_tsx_level1_qrtmd_v2_8.stock_state = {}

-- Size: Stock State
tmx_tsx_level1_qrtmd_v2_8.stock_state.size = 2

-- Display: Stock State
tmx_tsx_level1_qrtmd_v2_8.stock_state.display = function(value)
  if value == "AR" then
    return "Stock State: Authorized Delayed (AR)"
  end
  if value == "IR" then
    return "Stock State: Inhibited Delayed (IR)"
  end
  if value == "AS" then
    return "Stock State: Authorized Halted (AS)"
  end
  if value == "IS" then
    return "Stock State: Inhibited Halted (IS)"
  end
  if value == "A" then
    return "Stock State: Authorized (A)"
  end
  if value == "I" then
    return "Stock State: Inhibited (I)"
  end
  if value == "AE" then
    return "Stock State: Authorized Price Movement Delayed (AE)"
  end
  if value == "IE" then
    return "Stock State: Inhibited Price Movement Delayed (IE)"
  end

  return "Stock State: Unknown("..value..")"
end

-- Dissect: Stock State
tmx_tsx_level1_qrtmd_v2_8.stock_state.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.stock_state.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_level1_qrtmd_v2_8.stock_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.stock_state, range, value, display)

  return offset + length, value
end

-- Symbol
tmx_tsx_level1_qrtmd_v2_8.symbol = {}

-- Size: Symbol
tmx_tsx_level1_qrtmd_v2_8.symbol.size = 12

-- Display: Symbol
tmx_tsx_level1_qrtmd_v2_8.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
tmx_tsx_level1_qrtmd_v2_8.symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_level1_qrtmd_v2_8.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Name
tmx_tsx_level1_qrtmd_v2_8.symbol_name = {}

-- Size: Symbol Name
tmx_tsx_level1_qrtmd_v2_8.symbol_name.size = 40

-- Display: Symbol Name
tmx_tsx_level1_qrtmd_v2_8.symbol_name.display = function(value)
  return "Symbol Name: "..value
end

-- Dissect: Symbol Name
tmx_tsx_level1_qrtmd_v2_8.symbol_name.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.symbol_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_level1_qrtmd_v2_8.symbol_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.symbol_name, range, value, display)

  return offset + length, value
end

-- Test Symbol
tmx_tsx_level1_qrtmd_v2_8.test_symbol = {}

-- Size: Test Symbol
tmx_tsx_level1_qrtmd_v2_8.test_symbol.size = 1

-- Display: Test Symbol
tmx_tsx_level1_qrtmd_v2_8.test_symbol.display = function(value)
  if value == "Y" then
    return "Test Symbol: Yes (Y)"
  end
  if value == "N" then
    return "Test Symbol: No (N)"
  end

  return "Test Symbol: Unknown("..value..")"
end

-- Dissect: Test Symbol
tmx_tsx_level1_qrtmd_v2_8.test_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.test_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_level1_qrtmd_v2_8.test_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.test_symbol, range, value, display)

  return offset + length, value
end

-- Total Number Of Stock Groups
tmx_tsx_level1_qrtmd_v2_8.total_number_of_stock_groups = {}

-- Size: Total Number Of Stock Groups
tmx_tsx_level1_qrtmd_v2_8.total_number_of_stock_groups.size = 3

-- Display: Total Number Of Stock Groups
tmx_tsx_level1_qrtmd_v2_8.total_number_of_stock_groups.display = function(value)
  return "Total Number Of Stock Groups: "..value
end

-- Dissect: Total Number Of Stock Groups
tmx_tsx_level1_qrtmd_v2_8.total_number_of_stock_groups.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.total_number_of_stock_groups.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.total_number_of_stock_groups, range, value, "Total Number Of Stock Groups: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Total Number Of Stock Groups is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_level1_qrtmd_v2_8.total_number_of_stock_groups.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.total_number_of_stock_groups, range, value, display)

  return offset + length, value
end

-- Total Number Of Symbols
tmx_tsx_level1_qrtmd_v2_8.total_number_of_symbols = {}

-- Size: Total Number Of Symbols
tmx_tsx_level1_qrtmd_v2_8.total_number_of_symbols.size = 5

-- Display: Total Number Of Symbols
tmx_tsx_level1_qrtmd_v2_8.total_number_of_symbols.display = function(value)
  return "Total Number Of Symbols: "..value
end

-- Dissect: Total Number Of Symbols
tmx_tsx_level1_qrtmd_v2_8.total_number_of_symbols.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.total_number_of_symbols.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.total_number_of_symbols, range, value, "Total Number Of Symbols: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Total Number Of Symbols is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_level1_qrtmd_v2_8.total_number_of_symbols.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.total_number_of_symbols, range, value, display)

  return offset + length, value
end

-- Trade Date
tmx_tsx_level1_qrtmd_v2_8.trade_date = {}

-- Size: Trade Date
tmx_tsx_level1_qrtmd_v2_8.trade_date.size = 8

-- Display: Trade Date
tmx_tsx_level1_qrtmd_v2_8.trade_date.display = function(value)
  if #value < 8 then
    return "Trade Date: "..value
  end

  return "Trade Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Trade Date
tmx_tsx_level1_qrtmd_v2_8.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.trade_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_level1_qrtmd_v2_8.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trade Id
tmx_tsx_level1_qrtmd_v2_8.trade_id = {}

-- Size: Trade Id
tmx_tsx_level1_qrtmd_v2_8.trade_id.size = 9

-- Display: Trade Id
tmx_tsx_level1_qrtmd_v2_8.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
tmx_tsx_level1_qrtmd_v2_8.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.trade_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.trade_id, range, value, "Trade Id: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Trade Id is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_level1_qrtmd_v2_8.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Price
tmx_tsx_level1_qrtmd_v2_8.trade_price = {}

-- Size: Trade Price
tmx_tsx_level1_qrtmd_v2_8.trade_price.size = 11

-- Display: Trade Price
tmx_tsx_level1_qrtmd_v2_8.trade_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_level1_qrtmd_v2_8.trade_price.size):string(), 5)

  if text == nil then
    return "Trade Price: "..tostring(value)
  end

  return "Trade Price: "..text
end

-- Dissect: Trade Price
tmx_tsx_level1_qrtmd_v2_8.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.trade_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.trade_price, range, value, "Trade Price: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Trade Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100000

  local display = tmx_tsx_level1_qrtmd_v2_8.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Time Stamp
tmx_tsx_level1_qrtmd_v2_8.trade_time_stamp = {}

-- Size: Trade Time Stamp
tmx_tsx_level1_qrtmd_v2_8.trade_time_stamp.size = 6

-- Display: Trade Time Stamp
tmx_tsx_level1_qrtmd_v2_8.trade_time_stamp.display = function(value)
  if #value < 6 then
    return "Trade Time Stamp: "..value
  end

  return "Trade Time Stamp: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Trade Time Stamp
tmx_tsx_level1_qrtmd_v2_8.trade_time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.trade_time_stamp.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_level1_qrtmd_v2_8.trade_time_stamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.trade_time_stamp, range, value, display)

  return offset + length, value
end

-- Trading System Time Stamp
tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp = {}

-- Size: Trading System Time Stamp
tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.size = 23

-- Display: Trading System Time Stamp
tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.display = function(value)
  if #value < 23 then
    return "Trading System Time Stamp: "..value
  end

  return "Trading System Time Stamp: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8).." "..value:sub(9, 10)..":"..value:sub(11, 12)..":"..value:sub(13, 14).."."..value:sub(15, 23)
end

-- Dissect: Trading System Time Stamp
tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.trading_system_time_stamp, range, value, display)

  return offset + length, value
end

-- Trading Tier Id
tmx_tsx_level1_qrtmd_v2_8.trading_tier_id = {}

-- Size: Trading Tier Id
tmx_tsx_level1_qrtmd_v2_8.trading_tier_id.size = 6

-- Display: Trading Tier Id
tmx_tsx_level1_qrtmd_v2_8.trading_tier_id.display = function(value)
  return "Trading Tier Id: "..value
end

-- Dissect: Trading Tier Id
tmx_tsx_level1_qrtmd_v2_8.trading_tier_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.trading_tier_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_level1_qrtmd_v2_8.trading_tier_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.trading_tier_id, range, value, display)

  return offset + length, value
end

-- Tsx Tsxv Closing Price
tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_closing_price = {}

-- Size: Tsx Tsxv Closing Price
tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_closing_price.size = 11

-- Display: Tsx Tsxv Closing Price
tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_closing_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_closing_price.size):string(), 5)

  if text == nil then
    return "Tsx Tsxv Closing Price: "..tostring(value)
  end

  return "Tsx Tsxv Closing Price: "..text
end

-- Dissect: Tsx Tsxv Closing Price
tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_closing_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.tsx_tsxv_closing_price, range, value, "Tsx Tsxv Closing Price: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Tsx Tsxv Closing Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100000

  local display = tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.tsx_tsxv_closing_price, range, value, display)

  return offset + length, value
end

-- Tsx Tsxv Last Ask
tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_last_ask = {}

-- Size: Tsx Tsxv Last Ask
tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_last_ask.size = 9

-- Display: Tsx Tsxv Last Ask
tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_last_ask.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_last_ask.size):string(), 3)

  if text == nil then
    return "Tsx Tsxv Last Ask: "..tostring(value)
  end

  return "Tsx Tsxv Last Ask: "..text
end

-- Dissect: Tsx Tsxv Last Ask
tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_last_ask.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_last_ask.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.tsx_tsxv_last_ask, range, value, "Tsx Tsxv Last Ask: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Tsx Tsxv Last Ask is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000

  local display = tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_last_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.tsx_tsxv_last_ask, range, value, display)

  return offset + length, value
end

-- Tsx Tsxv Last Bid
tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_last_bid = {}

-- Size: Tsx Tsxv Last Bid
tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_last_bid.size = 9

-- Display: Tsx Tsxv Last Bid
tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_last_bid.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_last_bid.size):string(), 3)

  if text == nil then
    return "Tsx Tsxv Last Bid: "..tostring(value)
  end

  return "Tsx Tsxv Last Bid: "..text
end

-- Dissect: Tsx Tsxv Last Bid
tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_last_bid.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_last_bid.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.tsx_tsxv_last_bid, range, value, "Tsx Tsxv Last Bid: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Tsx Tsxv Last Bid is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000

  local display = tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_last_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.tsx_tsxv_last_bid, range, value, display)

  return offset + length, value
end

-- Volume
tmx_tsx_level1_qrtmd_v2_8.volume = {}

-- Size: Volume
tmx_tsx_level1_qrtmd_v2_8.volume.size = 9

-- Display: Volume
tmx_tsx_level1_qrtmd_v2_8.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
tmx_tsx_level1_qrtmd_v2_8.volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.volume, range, value, "Volume: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_level1_qrtmd_v2_8.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.volume, range, value, display)

  return offset + length, value
end

-- Vwap
tmx_tsx_level1_qrtmd_v2_8.vwap = {}

-- Size: Vwap
tmx_tsx_level1_qrtmd_v2_8.vwap.size = 11

-- Display: Vwap
tmx_tsx_level1_qrtmd_v2_8.vwap.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, tmx_tsx_level1_qrtmd_v2_8.vwap.size):string(), 5)

  if text == nil then
    return "Vwap: "..tostring(value)
  end

  return "Vwap: "..text
end

-- Dissect: Vwap
tmx_tsx_level1_qrtmd_v2_8.vwap.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_level1_qrtmd_v2_8.vwap.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.vwap, range, value, "Vwap: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_level1_qrtmd_v2_8.experts.not_a_number, "Vwap is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100000

  local display = tmx_tsx_level1_qrtmd_v2_8.vwap.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.vwap, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Tmx Tsx Level1 Qrtmd 2.8
-----------------------------------------------------------------------

-- Trade Correction Message
tmx_tsx_level1_qrtmd_v2_8.trade_correction_message = {}

-- Size: Trade Correction Message
tmx_tsx_level1_qrtmd_v2_8.trade_correction_message.size =
  tmx_tsx_level1_qrtmd_v2_8.symbol.size + 
  tmx_tsx_level1_qrtmd_v2_8.volume.size + 
  tmx_tsx_level1_qrtmd_v2_8.trade_price.size + 
  tmx_tsx_level1_qrtmd_v2_8.buyer_id.size + 
  tmx_tsx_level1_qrtmd_v2_8.seller_id.size + 
  tmx_tsx_level1_qrtmd_v2_8.trade_time_stamp.size + 
  tmx_tsx_level1_qrtmd_v2_8.last_sale.size + 
  tmx_tsx_level1_qrtmd_v2_8.trade_id.size + 
  tmx_tsx_level1_qrtmd_v2_8.cross_type.size + 
  tmx_tsx_level1_qrtmd_v2_8.moc.size + 
  tmx_tsx_level1_qrtmd_v2_8.bypass.size + 
  tmx_tsx_level1_qrtmd_v2_8.opening_trade.size + 
  tmx_tsx_level1_qrtmd_v2_8.settlement_terms.size + 
  tmx_tsx_level1_qrtmd_v2_8.original_trade_id.size + 
  tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.size + 
  tmx_tsx_level1_qrtmd_v2_8.listing_market.size + 
  tmx_tsx_level1_qrtmd_v2_8.product_type.size + 
  tmx_tsx_level1_qrtmd_v2_8.trade_date.size + 
  tmx_tsx_level1_qrtmd_v2_8.is_mid_only.size + 
  tmx_tsx_level1_qrtmd_v2_8.is_dark.size + 
  tmx_tsx_level1_qrtmd_v2_8.is_conditional.size

-- Display: Trade Correction Message
tmx_tsx_level1_qrtmd_v2_8.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
tmx_tsx_level1_qrtmd_v2_8.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alphanumeric
  index, symbol = tmx_tsx_level1_qrtmd_v2_8.symbol.dissect(buffer, index, packet, parent)

  -- Volume: Numeric
  index, volume = tmx_tsx_level1_qrtmd_v2_8.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: Numeric
  index, trade_price = tmx_tsx_level1_qrtmd_v2_8.trade_price.dissect(buffer, index, packet, parent)

  -- Buyer Id: Numeric
  index, buyer_id = tmx_tsx_level1_qrtmd_v2_8.buyer_id.dissect(buffer, index, packet, parent)

  -- Seller Id: Numeric
  index, seller_id = tmx_tsx_level1_qrtmd_v2_8.seller_id.dissect(buffer, index, packet, parent)

  -- Trade Time Stamp: Numeric
  index, trade_time_stamp = tmx_tsx_level1_qrtmd_v2_8.trade_time_stamp.dissect(buffer, index, packet, parent)

  -- Last Sale: Numeric
  index, last_sale = tmx_tsx_level1_qrtmd_v2_8.last_sale.dissect(buffer, index, packet, parent)

  -- Trade Id: Numeric
  index, trade_id = tmx_tsx_level1_qrtmd_v2_8.trade_id.dissect(buffer, index, packet, parent)

  -- Cross Type: Alphanumeric
  index, cross_type = tmx_tsx_level1_qrtmd_v2_8.cross_type.dissect(buffer, index, packet, parent)

  -- Moc: Alphanumeric
  index, moc = tmx_tsx_level1_qrtmd_v2_8.moc.dissect(buffer, index, packet, parent)

  -- Bypass: Alphanumeric
  index, bypass = tmx_tsx_level1_qrtmd_v2_8.bypass.dissect(buffer, index, packet, parent)

  -- Opening Trade: Alphanumeric
  index, opening_trade = tmx_tsx_level1_qrtmd_v2_8.opening_trade.dissect(buffer, index, packet, parent)

  -- Settlement Terms: Alphanumeric
  index, settlement_terms = tmx_tsx_level1_qrtmd_v2_8.settlement_terms.dissect(buffer, index, packet, parent)

  -- Original Trade Id: Numeric
  index, original_trade_id = tmx_tsx_level1_qrtmd_v2_8.original_trade_id.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: Numeric
  index, trading_system_time_stamp = tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  -- Listing Market: Alphanumeric
  index, listing_market = tmx_tsx_level1_qrtmd_v2_8.listing_market.dissect(buffer, index, packet, parent)

  -- Product Type: Alphanumeric
  index, product_type = tmx_tsx_level1_qrtmd_v2_8.product_type.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = tmx_tsx_level1_qrtmd_v2_8.trade_date.dissect(buffer, index, packet, parent)

  -- Is Mid Only: Alphanumeric
  index, is_mid_only = tmx_tsx_level1_qrtmd_v2_8.is_mid_only.dissect(buffer, index, packet, parent)

  -- Is Dark: Alphanumeric
  index, is_dark = tmx_tsx_level1_qrtmd_v2_8.is_dark.dissect(buffer, index, packet, parent)

  -- Is Conditional: Alphanumeric
  index, is_conditional = tmx_tsx_level1_qrtmd_v2_8.is_conditional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
tmx_tsx_level1_qrtmd_v2_8.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.trade_correction_message, buffer(offset, 0))
    local index = tmx_tsx_level1_qrtmd_v2_8.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_level1_qrtmd_v2_8.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_level1_qrtmd_v2_8.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Tier Status Message
tmx_tsx_level1_qrtmd_v2_8.trading_tier_status_message = {}

-- Size: Trading Tier Status Message
tmx_tsx_level1_qrtmd_v2_8.trading_tier_status_message.size =
  tmx_tsx_level1_qrtmd_v2_8.exchange_id.size + 
  tmx_tsx_level1_qrtmd_v2_8.total_number_of_symbols.size + 
  tmx_tsx_level1_qrtmd_v2_8.total_number_of_stock_groups.size + 
  tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.size + 
  tmx_tsx_level1_qrtmd_v2_8.trading_tier_id.size

-- Display: Trading Tier Status Message
tmx_tsx_level1_qrtmd_v2_8.trading_tier_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Tier Status Message
tmx_tsx_level1_qrtmd_v2_8.trading_tier_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: Alphanumeric
  index, exchange_id = tmx_tsx_level1_qrtmd_v2_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Total Number Of Symbols: Numeric
  index, total_number_of_symbols = tmx_tsx_level1_qrtmd_v2_8.total_number_of_symbols.dissect(buffer, index, packet, parent)

  -- Total Number Of Stock Groups: Numeric
  index, total_number_of_stock_groups = tmx_tsx_level1_qrtmd_v2_8.total_number_of_stock_groups.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: Numeric
  index, trading_system_time_stamp = tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  -- Trading Tier Id: Alphanumeric
  index, trading_tier_id = tmx_tsx_level1_qrtmd_v2_8.trading_tier_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Tier Status Message
tmx_tsx_level1_qrtmd_v2_8.trading_tier_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.trading_tier_status_message, buffer(offset, 0))
    local index = tmx_tsx_level1_qrtmd_v2_8.trading_tier_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_level1_qrtmd_v2_8.trading_tier_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_level1_qrtmd_v2_8.trading_tier_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Market State Message
tmx_tsx_level1_qrtmd_v2_8.market_state_message = {}

-- Size: Market State Message
tmx_tsx_level1_qrtmd_v2_8.market_state_message.size =
  tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.size + 
  tmx_tsx_level1_qrtmd_v2_8.stock_group.size + 
  tmx_tsx_level1_qrtmd_v2_8.market_state.size

-- Display: Market State Message
tmx_tsx_level1_qrtmd_v2_8.market_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market State Message
tmx_tsx_level1_qrtmd_v2_8.market_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading System Time Stamp: Numeric
  index, trading_system_time_stamp = tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  -- Stock Group: Numeric
  index, stock_group = tmx_tsx_level1_qrtmd_v2_8.stock_group.dissect(buffer, index, packet, parent)

  -- Market State: Alphanumeric
  index, market_state = tmx_tsx_level1_qrtmd_v2_8.market_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market State Message
tmx_tsx_level1_qrtmd_v2_8.market_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.market_state_message, buffer(offset, 0))
    local index = tmx_tsx_level1_qrtmd_v2_8.market_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_level1_qrtmd_v2_8.market_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_level1_qrtmd_v2_8.market_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Tsx Tsxv Closing Price Message
tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_closing_price_message = {}

-- Size: Tsx Tsxv Closing Price Message
tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_closing_price_message.size =
  tmx_tsx_level1_qrtmd_v2_8.symbol.size + 
  tmx_tsx_level1_qrtmd_v2_8.cusip.size + 
  tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_closing_price.size + 
  tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_last_bid.size + 
  tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_last_ask.size + 
  tmx_tsx_level1_qrtmd_v2_8.business_date.size

-- Display: Tsx Tsxv Closing Price Message
tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_closing_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tsx Tsxv Closing Price Message
tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_closing_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alphanumeric
  index, symbol = tmx_tsx_level1_qrtmd_v2_8.symbol.dissect(buffer, index, packet, parent)

  -- Cusip: Alphanumeric
  index, cusip = tmx_tsx_level1_qrtmd_v2_8.cusip.dissect(buffer, index, packet, parent)

  -- Tsx Tsxv Closing Price: Numeric
  index, tsx_tsxv_closing_price = tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_closing_price.dissect(buffer, index, packet, parent)

  -- Tsx Tsxv Last Bid: Numeric
  index, tsx_tsxv_last_bid = tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_last_bid.dissect(buffer, index, packet, parent)

  -- Tsx Tsxv Last Ask: Numeric
  index, tsx_tsxv_last_ask = tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_last_ask.dissect(buffer, index, packet, parent)

  -- Business Date: Numeric
  index, business_date = tmx_tsx_level1_qrtmd_v2_8.business_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tsx Tsxv Closing Price Message
tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_closing_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.tsx_tsxv_closing_price_message, buffer(offset, 0))
    local index = tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_closing_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_closing_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_closing_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Calculated Opening Price Message
tmx_tsx_level1_qrtmd_v2_8.calculated_opening_price_message = {}

-- Size: Calculated Opening Price Message
tmx_tsx_level1_qrtmd_v2_8.calculated_opening_price_message.size =
  tmx_tsx_level1_qrtmd_v2_8.symbol.size + 
  tmx_tsx_level1_qrtmd_v2_8.cusip.size + 
  tmx_tsx_level1_qrtmd_v2_8.cop.size + 
  tmx_tsx_level1_qrtmd_v2_8.price_marker.size + 
  tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.size

-- Display: Calculated Opening Price Message
tmx_tsx_level1_qrtmd_v2_8.calculated_opening_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Calculated Opening Price Message
tmx_tsx_level1_qrtmd_v2_8.calculated_opening_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alphanumeric
  index, symbol = tmx_tsx_level1_qrtmd_v2_8.symbol.dissect(buffer, index, packet, parent)

  -- Cusip: Alphanumeric
  index, cusip = tmx_tsx_level1_qrtmd_v2_8.cusip.dissect(buffer, index, packet, parent)

  -- Cop: Numeric
  index, cop = tmx_tsx_level1_qrtmd_v2_8.cop.dissect(buffer, index, packet, parent)

  -- Price Marker: Alphanumeric
  index, price_marker = tmx_tsx_level1_qrtmd_v2_8.price_marker.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: Numeric
  index, trading_system_time_stamp = tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Calculated Opening Price Message
tmx_tsx_level1_qrtmd_v2_8.calculated_opening_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.calculated_opening_price_message, buffer(offset, 0))
    local index = tmx_tsx_level1_qrtmd_v2_8.calculated_opening_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_level1_qrtmd_v2_8.calculated_opening_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_level1_qrtmd_v2_8.calculated_opening_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Indicative Price Message
tmx_tsx_level1_qrtmd_v2_8.indicative_price_message = {}

-- Size: Indicative Price Message
tmx_tsx_level1_qrtmd_v2_8.indicative_price_message.size =
  tmx_tsx_level1_qrtmd_v2_8.symbol.size + 
  tmx_tsx_level1_qrtmd_v2_8.cusip.size + 
  tmx_tsx_level1_qrtmd_v2_8.indicative_price.size + 
  tmx_tsx_level1_qrtmd_v2_8.price_marker.size + 
  tmx_tsx_level1_qrtmd_v2_8.business_date.size

-- Display: Indicative Price Message
tmx_tsx_level1_qrtmd_v2_8.indicative_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indicative Price Message
tmx_tsx_level1_qrtmd_v2_8.indicative_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alphanumeric
  index, symbol = tmx_tsx_level1_qrtmd_v2_8.symbol.dissect(buffer, index, packet, parent)

  -- Cusip: Alphanumeric
  index, cusip = tmx_tsx_level1_qrtmd_v2_8.cusip.dissect(buffer, index, packet, parent)

  -- Indicative Price: Numeric
  index, indicative_price = tmx_tsx_level1_qrtmd_v2_8.indicative_price.dissect(buffer, index, packet, parent)

  -- Price Marker: Alphanumeric
  index, price_marker = tmx_tsx_level1_qrtmd_v2_8.price_marker.dissect(buffer, index, packet, parent)

  -- Business Date: Numeric
  index, business_date = tmx_tsx_level1_qrtmd_v2_8.business_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indicative Price Message
tmx_tsx_level1_qrtmd_v2_8.indicative_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.indicative_price_message, buffer(offset, 0))
    local index = tmx_tsx_level1_qrtmd_v2_8.indicative_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_level1_qrtmd_v2_8.indicative_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_level1_qrtmd_v2_8.indicative_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancellation Message
tmx_tsx_level1_qrtmd_v2_8.trade_cancellation_message = {}

-- Size: Trade Cancellation Message
tmx_tsx_level1_qrtmd_v2_8.trade_cancellation_message.size =
  tmx_tsx_level1_qrtmd_v2_8.symbol.size + 
  tmx_tsx_level1_qrtmd_v2_8.volume.size + 
  tmx_tsx_level1_qrtmd_v2_8.trade_price.size + 
  tmx_tsx_level1_qrtmd_v2_8.buyer_id.size + 
  tmx_tsx_level1_qrtmd_v2_8.seller_id.size + 
  tmx_tsx_level1_qrtmd_v2_8.trade_time_stamp.size + 
  tmx_tsx_level1_qrtmd_v2_8.original_trade_id.size + 
  tmx_tsx_level1_qrtmd_v2_8.last_sale.size + 
  tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.size + 
  tmx_tsx_level1_qrtmd_v2_8.listing_market.size + 
  tmx_tsx_level1_qrtmd_v2_8.product_type.size + 
  tmx_tsx_level1_qrtmd_v2_8.trade_date.size

-- Display: Trade Cancellation Message
tmx_tsx_level1_qrtmd_v2_8.trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancellation Message
tmx_tsx_level1_qrtmd_v2_8.trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alphanumeric
  index, symbol = tmx_tsx_level1_qrtmd_v2_8.symbol.dissect(buffer, index, packet, parent)

  -- Volume: Numeric
  index, volume = tmx_tsx_level1_qrtmd_v2_8.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: Numeric
  index, trade_price = tmx_tsx_level1_qrtmd_v2_8.trade_price.dissect(buffer, index, packet, parent)

  -- Buyer Id: Numeric
  index, buyer_id = tmx_tsx_level1_qrtmd_v2_8.buyer_id.dissect(buffer, index, packet, parent)

  -- Seller Id: Numeric
  index, seller_id = tmx_tsx_level1_qrtmd_v2_8.seller_id.dissect(buffer, index, packet, parent)

  -- Trade Time Stamp: Numeric
  index, trade_time_stamp = tmx_tsx_level1_qrtmd_v2_8.trade_time_stamp.dissect(buffer, index, packet, parent)

  -- Original Trade Id: Numeric
  index, original_trade_id = tmx_tsx_level1_qrtmd_v2_8.original_trade_id.dissect(buffer, index, packet, parent)

  -- Last Sale: Numeric
  index, last_sale = tmx_tsx_level1_qrtmd_v2_8.last_sale.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: Numeric
  index, trading_system_time_stamp = tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  -- Listing Market: Alphanumeric
  index, listing_market = tmx_tsx_level1_qrtmd_v2_8.listing_market.dissect(buffer, index, packet, parent)

  -- Product Type: Alphanumeric
  index, product_type = tmx_tsx_level1_qrtmd_v2_8.product_type.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = tmx_tsx_level1_qrtmd_v2_8.trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancellation Message
tmx_tsx_level1_qrtmd_v2_8.trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.trade_cancellation_message, buffer(offset, 0))
    local index = tmx_tsx_level1_qrtmd_v2_8.trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_level1_qrtmd_v2_8.trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_level1_qrtmd_v2_8.trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- General Message
tmx_tsx_level1_qrtmd_v2_8.general_message = {}

-- Size: General Message
tmx_tsx_level1_qrtmd_v2_8.general_message.size =
  tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.size + 
  tmx_tsx_level1_qrtmd_v2_8.bulletin_indicator.size + 
  tmx_tsx_level1_qrtmd_v2_8.message_text.size

-- Display: General Message
tmx_tsx_level1_qrtmd_v2_8.general_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: General Message
tmx_tsx_level1_qrtmd_v2_8.general_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading System Time Stamp: Numeric
  index, trading_system_time_stamp = tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  -- Bulletin Indicator: Alphanumeric
  index, bulletin_indicator = tmx_tsx_level1_qrtmd_v2_8.bulletin_indicator.dissect(buffer, index, packet, parent)

  -- Message Text: Alphanumeric
  index, message_text = tmx_tsx_level1_qrtmd_v2_8.message_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: General Message
tmx_tsx_level1_qrtmd_v2_8.general_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.general_message, buffer(offset, 0))
    local index = tmx_tsx_level1_qrtmd_v2_8.general_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_level1_qrtmd_v2_8.general_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_level1_qrtmd_v2_8.general_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Message
tmx_tsx_level1_qrtmd_v2_8.quote_message = {}

-- Size: Quote Message
tmx_tsx_level1_qrtmd_v2_8.quote_message.size =
  tmx_tsx_level1_qrtmd_v2_8.symbol.size + 
  tmx_tsx_level1_qrtmd_v2_8.bid_price.size + 
  tmx_tsx_level1_qrtmd_v2_8.bid_size.size + 
  tmx_tsx_level1_qrtmd_v2_8.ask_price.size + 
  tmx_tsx_level1_qrtmd_v2_8.ask_size.size + 
  tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.size

-- Display: Quote Message
tmx_tsx_level1_qrtmd_v2_8.quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Message
tmx_tsx_level1_qrtmd_v2_8.quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alphanumeric
  index, symbol = tmx_tsx_level1_qrtmd_v2_8.symbol.dissect(buffer, index, packet, parent)

  -- Bid Price: Numeric
  index, bid_price = tmx_tsx_level1_qrtmd_v2_8.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: Numeric
  index, bid_size = tmx_tsx_level1_qrtmd_v2_8.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: Numeric
  index, ask_price = tmx_tsx_level1_qrtmd_v2_8.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: Numeric
  index, ask_size = tmx_tsx_level1_qrtmd_v2_8.ask_size.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: Numeric
  index, trading_system_time_stamp = tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Message
tmx_tsx_level1_qrtmd_v2_8.quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.quote_message, buffer(offset, 0))
    local index = tmx_tsx_level1_qrtmd_v2_8.quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_level1_qrtmd_v2_8.quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_level1_qrtmd_v2_8.quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock State Message
tmx_tsx_level1_qrtmd_v2_8.stock_state_message = {}

-- Size: Stock State Message
tmx_tsx_level1_qrtmd_v2_8.stock_state_message.size =
  tmx_tsx_level1_qrtmd_v2_8.symbol.size + 
  tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.size + 
  tmx_tsx_level1_qrtmd_v2_8.comment.size + 
  tmx_tsx_level1_qrtmd_v2_8.stock_state.size + 
  tmx_tsx_level1_qrtmd_v2_8.opening_time.size + 
  tmx_tsx_level1_qrtmd_v2_8.listing_market.size + 
  tmx_tsx_level1_qrtmd_v2_8.product_type.size

-- Display: Stock State Message
tmx_tsx_level1_qrtmd_v2_8.stock_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock State Message
tmx_tsx_level1_qrtmd_v2_8.stock_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alphanumeric
  index, symbol = tmx_tsx_level1_qrtmd_v2_8.symbol.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: Numeric
  index, trading_system_time_stamp = tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  -- Comment: Alphanumeric
  index, comment = tmx_tsx_level1_qrtmd_v2_8.comment.dissect(buffer, index, packet, parent)

  -- Stock State: Alphanumeric
  index, stock_state = tmx_tsx_level1_qrtmd_v2_8.stock_state.dissect(buffer, index, packet, parent)

  -- Opening Time: Numeric
  index, opening_time = tmx_tsx_level1_qrtmd_v2_8.opening_time.dissect(buffer, index, packet, parent)

  -- Listing Market: Alphanumeric
  index, listing_market = tmx_tsx_level1_qrtmd_v2_8.listing_market.dissect(buffer, index, packet, parent)

  -- Product Type: Alphanumeric
  index, product_type = tmx_tsx_level1_qrtmd_v2_8.product_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock State Message
tmx_tsx_level1_qrtmd_v2_8.stock_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.stock_state_message, buffer(offset, 0))
    local index = tmx_tsx_level1_qrtmd_v2_8.stock_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_level1_qrtmd_v2_8.stock_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_level1_qrtmd_v2_8.stock_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Moc Price Movement Delay Message
tmx_tsx_level1_qrtmd_v2_8.moc_price_movement_delay_message = {}

-- Size: Moc Price Movement Delay Message
tmx_tsx_level1_qrtmd_v2_8.moc_price_movement_delay_message.size =
  tmx_tsx_level1_qrtmd_v2_8.symbol.size + 
  tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.size + 
  tmx_tsx_level1_qrtmd_v2_8.stock_state.size + 
  tmx_tsx_level1_qrtmd_v2_8.ccp.size + 
  tmx_tsx_level1_qrtmd_v2_8.vwap.size

-- Display: Moc Price Movement Delay Message
tmx_tsx_level1_qrtmd_v2_8.moc_price_movement_delay_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Moc Price Movement Delay Message
tmx_tsx_level1_qrtmd_v2_8.moc_price_movement_delay_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alphanumeric
  index, symbol = tmx_tsx_level1_qrtmd_v2_8.symbol.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: Numeric
  index, trading_system_time_stamp = tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  -- Stock State: Alphanumeric
  index, stock_state = tmx_tsx_level1_qrtmd_v2_8.stock_state.dissect(buffer, index, packet, parent)

  -- Ccp: Numeric
  index, ccp = tmx_tsx_level1_qrtmd_v2_8.ccp.dissect(buffer, index, packet, parent)

  -- Vwap: Numeric
  index, vwap = tmx_tsx_level1_qrtmd_v2_8.vwap.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Moc Price Movement Delay Message
tmx_tsx_level1_qrtmd_v2_8.moc_price_movement_delay_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.moc_price_movement_delay_message, buffer(offset, 0))
    local index = tmx_tsx_level1_qrtmd_v2_8.moc_price_movement_delay_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_level1_qrtmd_v2_8.moc_price_movement_delay_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_level1_qrtmd_v2_8.moc_price_movement_delay_message.fields(buffer, offset, packet, parent)
  end
end

-- Moc Imbalance Notification Message
tmx_tsx_level1_qrtmd_v2_8.moc_imbalance_notification_message = {}

-- Size: Moc Imbalance Notification Message
tmx_tsx_level1_qrtmd_v2_8.moc_imbalance_notification_message.size =
  tmx_tsx_level1_qrtmd_v2_8.symbol.size + 
  tmx_tsx_level1_qrtmd_v2_8.imbalance_side.size + 
  tmx_tsx_level1_qrtmd_v2_8.imbalance_volume.size + 
  tmx_tsx_level1_qrtmd_v2_8.imbalance_reference_price.size + 
  tmx_tsx_level1_qrtmd_v2_8.paired_volume.size + 
  tmx_tsx_level1_qrtmd_v2_8.market_order_imbalance_volume.size + 
  tmx_tsx_level1_qrtmd_v2_8.market_order_imbalance_side.size + 
  tmx_tsx_level1_qrtmd_v2_8.near_indicative_closing_price.size + 
  tmx_tsx_level1_qrtmd_v2_8.far_indicative_closing_price.size + 
  tmx_tsx_level1_qrtmd_v2_8.price_variation.size + 
  tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.size

-- Display: Moc Imbalance Notification Message
tmx_tsx_level1_qrtmd_v2_8.moc_imbalance_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Moc Imbalance Notification Message
tmx_tsx_level1_qrtmd_v2_8.moc_imbalance_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alphanumeric
  index, symbol = tmx_tsx_level1_qrtmd_v2_8.symbol.dissect(buffer, index, packet, parent)

  -- Imbalance Side: Alphanumeric
  index, imbalance_side = tmx_tsx_level1_qrtmd_v2_8.imbalance_side.dissect(buffer, index, packet, parent)

  -- Imbalance Volume: Numeric
  index, imbalance_volume = tmx_tsx_level1_qrtmd_v2_8.imbalance_volume.dissect(buffer, index, packet, parent)

  -- Imbalance Reference Price: Numeric
  index, imbalance_reference_price = tmx_tsx_level1_qrtmd_v2_8.imbalance_reference_price.dissect(buffer, index, packet, parent)

  -- Paired Volume: Numeric
  index, paired_volume = tmx_tsx_level1_qrtmd_v2_8.paired_volume.dissect(buffer, index, packet, parent)

  -- Market Order Imbalance Volume: Numeric
  index, market_order_imbalance_volume = tmx_tsx_level1_qrtmd_v2_8.market_order_imbalance_volume.dissect(buffer, index, packet, parent)

  -- Market Order Imbalance Side: Alphanumeric
  index, market_order_imbalance_side = tmx_tsx_level1_qrtmd_v2_8.market_order_imbalance_side.dissect(buffer, index, packet, parent)

  -- Near Indicative Closing Price: Numeric
  index, near_indicative_closing_price = tmx_tsx_level1_qrtmd_v2_8.near_indicative_closing_price.dissect(buffer, index, packet, parent)

  -- Far Indicative Closing Price: Numeric
  index, far_indicative_closing_price = tmx_tsx_level1_qrtmd_v2_8.far_indicative_closing_price.dissect(buffer, index, packet, parent)

  -- Price Variation: Numeric
  index, price_variation = tmx_tsx_level1_qrtmd_v2_8.price_variation.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: Numeric
  index, trading_system_time_stamp = tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Moc Imbalance Notification Message
tmx_tsx_level1_qrtmd_v2_8.moc_imbalance_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.moc_imbalance_notification_message, buffer(offset, 0))
    local index = tmx_tsx_level1_qrtmd_v2_8.moc_imbalance_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_level1_qrtmd_v2_8.moc_imbalance_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_level1_qrtmd_v2_8.moc_imbalance_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Status Message
tmx_tsx_level1_qrtmd_v2_8.symbol_status_message = {}

-- Size: Symbol Status Message
tmx_tsx_level1_qrtmd_v2_8.symbol_status_message.size =
  tmx_tsx_level1_qrtmd_v2_8.symbol.size + 
  tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.size + 
  tmx_tsx_level1_qrtmd_v2_8.exchange_id.size + 
  tmx_tsx_level1_qrtmd_v2_8.cusip.size + 
  tmx_tsx_level1_qrtmd_v2_8.board_lot.size + 
  tmx_tsx_level1_qrtmd_v2_8.currency.size + 
  tmx_tsx_level1_qrtmd_v2_8.face_value.size + 
  tmx_tsx_level1_qrtmd_v2_8.last_sale.size + 
  tmx_tsx_level1_qrtmd_v2_8.moc_eligible.size + 
  tmx_tsx_level1_qrtmd_v2_8.product_type.size + 
  tmx_tsx_level1_qrtmd_v2_8.symbol_name.size + 
  tmx_tsx_level1_qrtmd_v2_8.stock_group.size + 
  tmx_tsx_level1_qrtmd_v2_8.stock_state.size + 
  tmx_tsx_level1_qrtmd_v2_8.listing_market.size + 
  tmx_tsx_level1_qrtmd_v2_8.buy_maximum_quantity.size + 
  tmx_tsx_level1_qrtmd_v2_8.buy_minimum_quantity.size + 
  tmx_tsx_level1_qrtmd_v2_8.sell_maximum_quantity.size + 
  tmx_tsx_level1_qrtmd_v2_8.sell_minimum_quantity.size + 
  tmx_tsx_level1_qrtmd_v2_8.test_symbol.size

-- Display: Symbol Status Message
tmx_tsx_level1_qrtmd_v2_8.symbol_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Status Message
tmx_tsx_level1_qrtmd_v2_8.symbol_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alphanumeric
  index, symbol = tmx_tsx_level1_qrtmd_v2_8.symbol.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: Numeric
  index, trading_system_time_stamp = tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  -- Exchange Id: Alphanumeric
  index, exchange_id = tmx_tsx_level1_qrtmd_v2_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Cusip: Alphanumeric
  index, cusip = tmx_tsx_level1_qrtmd_v2_8.cusip.dissect(buffer, index, packet, parent)

  -- Board Lot: Numeric
  index, board_lot = tmx_tsx_level1_qrtmd_v2_8.board_lot.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = tmx_tsx_level1_qrtmd_v2_8.currency.dissect(buffer, index, packet, parent)

  -- Face Value: Numeric
  index, face_value = tmx_tsx_level1_qrtmd_v2_8.face_value.dissect(buffer, index, packet, parent)

  -- Last Sale: Numeric
  index, last_sale = tmx_tsx_level1_qrtmd_v2_8.last_sale.dissect(buffer, index, packet, parent)

  -- Moc Eligible: Alphanumeric
  index, moc_eligible = tmx_tsx_level1_qrtmd_v2_8.moc_eligible.dissect(buffer, index, packet, parent)

  -- Product Type: Alphanumeric
  index, product_type = tmx_tsx_level1_qrtmd_v2_8.product_type.dissect(buffer, index, packet, parent)

  -- Symbol Name: Alphanumeric
  index, symbol_name = tmx_tsx_level1_qrtmd_v2_8.symbol_name.dissect(buffer, index, packet, parent)

  -- Stock Group: Numeric
  index, stock_group = tmx_tsx_level1_qrtmd_v2_8.stock_group.dissect(buffer, index, packet, parent)

  -- Stock State: Alphanumeric
  index, stock_state = tmx_tsx_level1_qrtmd_v2_8.stock_state.dissect(buffer, index, packet, parent)

  -- Listing Market: Alphanumeric
  index, listing_market = tmx_tsx_level1_qrtmd_v2_8.listing_market.dissect(buffer, index, packet, parent)

  -- Buy Maximum Quantity: Numeric
  index, buy_maximum_quantity = tmx_tsx_level1_qrtmd_v2_8.buy_maximum_quantity.dissect(buffer, index, packet, parent)

  -- Buy Minimum Quantity: Numeric
  index, buy_minimum_quantity = tmx_tsx_level1_qrtmd_v2_8.buy_minimum_quantity.dissect(buffer, index, packet, parent)

  -- Sell Maximum Quantity: Numeric
  index, sell_maximum_quantity = tmx_tsx_level1_qrtmd_v2_8.sell_maximum_quantity.dissect(buffer, index, packet, parent)

  -- Sell Minimum Quantity: Numeric
  index, sell_minimum_quantity = tmx_tsx_level1_qrtmd_v2_8.sell_minimum_quantity.dissect(buffer, index, packet, parent)

  -- Test Symbol: Alphanumeric
  index, test_symbol = tmx_tsx_level1_qrtmd_v2_8.test_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Status Message
tmx_tsx_level1_qrtmd_v2_8.symbol_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.symbol_status_message, buffer(offset, 0))
    local index = tmx_tsx_level1_qrtmd_v2_8.symbol_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_level1_qrtmd_v2_8.symbol_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_level1_qrtmd_v2_8.symbol_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
tmx_tsx_level1_qrtmd_v2_8.trade_message = {}

-- Size: Trade Message
tmx_tsx_level1_qrtmd_v2_8.trade_message.size =
  tmx_tsx_level1_qrtmd_v2_8.symbol.size + 
  tmx_tsx_level1_qrtmd_v2_8.volume.size + 
  tmx_tsx_level1_qrtmd_v2_8.trade_price.size + 
  tmx_tsx_level1_qrtmd_v2_8.buyer_id.size + 
  tmx_tsx_level1_qrtmd_v2_8.seller_id.size + 
  tmx_tsx_level1_qrtmd_v2_8.trade_time_stamp.size + 
  tmx_tsx_level1_qrtmd_v2_8.last_sale.size + 
  tmx_tsx_level1_qrtmd_v2_8.trade_id.size + 
  tmx_tsx_level1_qrtmd_v2_8.cross_type.size + 
  tmx_tsx_level1_qrtmd_v2_8.moc.size + 
  tmx_tsx_level1_qrtmd_v2_8.bypass.size + 
  tmx_tsx_level1_qrtmd_v2_8.opening_trade.size + 
  tmx_tsx_level1_qrtmd_v2_8.settlement_terms.size + 
  tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.size + 
  tmx_tsx_level1_qrtmd_v2_8.listing_market.size + 
  tmx_tsx_level1_qrtmd_v2_8.product_type.size + 
  tmx_tsx_level1_qrtmd_v2_8.trade_date.size + 
  tmx_tsx_level1_qrtmd_v2_8.is_mid_only.size + 
  tmx_tsx_level1_qrtmd_v2_8.is_dark.size + 
  tmx_tsx_level1_qrtmd_v2_8.is_conditional.size

-- Display: Trade Message
tmx_tsx_level1_qrtmd_v2_8.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
tmx_tsx_level1_qrtmd_v2_8.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alphanumeric
  index, symbol = tmx_tsx_level1_qrtmd_v2_8.symbol.dissect(buffer, index, packet, parent)

  -- Volume: Numeric
  index, volume = tmx_tsx_level1_qrtmd_v2_8.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: Numeric
  index, trade_price = tmx_tsx_level1_qrtmd_v2_8.trade_price.dissect(buffer, index, packet, parent)

  -- Buyer Id: Numeric
  index, buyer_id = tmx_tsx_level1_qrtmd_v2_8.buyer_id.dissect(buffer, index, packet, parent)

  -- Seller Id: Numeric
  index, seller_id = tmx_tsx_level1_qrtmd_v2_8.seller_id.dissect(buffer, index, packet, parent)

  -- Trade Time Stamp: Numeric
  index, trade_time_stamp = tmx_tsx_level1_qrtmd_v2_8.trade_time_stamp.dissect(buffer, index, packet, parent)

  -- Last Sale: Numeric
  index, last_sale = tmx_tsx_level1_qrtmd_v2_8.last_sale.dissect(buffer, index, packet, parent)

  -- Trade Id: Numeric
  index, trade_id = tmx_tsx_level1_qrtmd_v2_8.trade_id.dissect(buffer, index, packet, parent)

  -- Cross Type: Alphanumeric
  index, cross_type = tmx_tsx_level1_qrtmd_v2_8.cross_type.dissect(buffer, index, packet, parent)

  -- Moc: Alphanumeric
  index, moc = tmx_tsx_level1_qrtmd_v2_8.moc.dissect(buffer, index, packet, parent)

  -- Bypass: Alphanumeric
  index, bypass = tmx_tsx_level1_qrtmd_v2_8.bypass.dissect(buffer, index, packet, parent)

  -- Opening Trade: Alphanumeric
  index, opening_trade = tmx_tsx_level1_qrtmd_v2_8.opening_trade.dissect(buffer, index, packet, parent)

  -- Settlement Terms: Alphanumeric
  index, settlement_terms = tmx_tsx_level1_qrtmd_v2_8.settlement_terms.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: Numeric
  index, trading_system_time_stamp = tmx_tsx_level1_qrtmd_v2_8.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  -- Listing Market: Alphanumeric
  index, listing_market = tmx_tsx_level1_qrtmd_v2_8.listing_market.dissect(buffer, index, packet, parent)

  -- Product Type: Alphanumeric
  index, product_type = tmx_tsx_level1_qrtmd_v2_8.product_type.dissect(buffer, index, packet, parent)

  -- Trade Date: Numeric
  index, trade_date = tmx_tsx_level1_qrtmd_v2_8.trade_date.dissect(buffer, index, packet, parent)

  -- Is Mid Only: Alphanumeric
  index, is_mid_only = tmx_tsx_level1_qrtmd_v2_8.is_mid_only.dissect(buffer, index, packet, parent)

  -- Is Dark: Alphanumeric
  index, is_dark = tmx_tsx_level1_qrtmd_v2_8.is_dark.dissect(buffer, index, packet, parent)

  -- Is Conditional: Alphanumeric
  index, is_conditional = tmx_tsx_level1_qrtmd_v2_8.is_conditional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
tmx_tsx_level1_qrtmd_v2_8.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.trade_message, buffer(offset, 0))
    local index = tmx_tsx_level1_qrtmd_v2_8.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_level1_qrtmd_v2_8.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_level1_qrtmd_v2_8.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Body
tmx_tsx_level1_qrtmd_v2_8.message_body = {}

-- Dissect: Message Body
tmx_tsx_level1_qrtmd_v2_8.message_body.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Trade Message
  if message_type == "A" then
    return tmx_tsx_level1_qrtmd_v2_8.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Status Message
  if message_type == "B" then
    return tmx_tsx_level1_qrtmd_v2_8.symbol_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Moc Imbalance Notification Message
  if message_type == "C" then
    return tmx_tsx_level1_qrtmd_v2_8.moc_imbalance_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Moc Price Movement Delay Message
  if message_type == "CA" then
    return tmx_tsx_level1_qrtmd_v2_8.moc_price_movement_delay_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock State Message
  if message_type == "D" then
    return tmx_tsx_level1_qrtmd_v2_8.stock_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Message
  if message_type == "E" then
    return tmx_tsx_level1_qrtmd_v2_8.quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect General Message
  if message_type == "G" then
    return tmx_tsx_level1_qrtmd_v2_8.general_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancellation Message
  if message_type == "H" then
    return tmx_tsx_level1_qrtmd_v2_8.trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Indicative Price Message
  if message_type == "I" then
    return tmx_tsx_level1_qrtmd_v2_8.indicative_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Calculated Opening Price Message
  if message_type == "O" then
    return tmx_tsx_level1_qrtmd_v2_8.calculated_opening_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tsx Tsxv Closing Price Message
  if message_type == "R" then
    return tmx_tsx_level1_qrtmd_v2_8.tsx_tsxv_closing_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market State Message
  if message_type == "S" then
    return tmx_tsx_level1_qrtmd_v2_8.market_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Tier Status Message
  if message_type == "T" then
    return tmx_tsx_level1_qrtmd_v2_8.trading_tier_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if message_type == "X" then
    return tmx_tsx_level1_qrtmd_v2_8.trade_correction_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
tmx_tsx_level1_qrtmd_v2_8.message_header = {}

-- Size: Message Header
tmx_tsx_level1_qrtmd_v2_8.message_header.size =
  tmx_tsx_level1_qrtmd_v2_8.message_length.size + 
  tmx_tsx_level1_qrtmd_v2_8.sequence_number.size + 
  tmx_tsx_level1_qrtmd_v2_8.service_identifier.size + 
  tmx_tsx_level1_qrtmd_v2_8.retransmission_identifier.size + 
  tmx_tsx_level1_qrtmd_v2_8.continuation_identifier.size + 
  tmx_tsx_level1_qrtmd_v2_8.message_type.size + 
  tmx_tsx_level1_qrtmd_v2_8.exchange_identifier.size

-- Display: Message Header
tmx_tsx_level1_qrtmd_v2_8.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
tmx_tsx_level1_qrtmd_v2_8.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: Numeric
  index, message_length = tmx_tsx_level1_qrtmd_v2_8.message_length.dissect(buffer, index, packet, parent)

  -- Sequence Number: Numeric
  index, sequence_number = tmx_tsx_level1_qrtmd_v2_8.sequence_number.dissect(buffer, index, packet, parent)

  -- Service Identifier: Alphanumeric
  index, service_identifier = tmx_tsx_level1_qrtmd_v2_8.service_identifier.dissect(buffer, index, packet, parent)

  -- Retransmission Identifier: Alphanumeric
  index, retransmission_identifier = tmx_tsx_level1_qrtmd_v2_8.retransmission_identifier.dissect(buffer, index, packet, parent)

  -- Continuation Identifier: Alphanumeric
  index, continuation_identifier = tmx_tsx_level1_qrtmd_v2_8.continuation_identifier.dissect(buffer, index, packet, parent)

  -- Message Type: Alphanumeric
  index, message_type = tmx_tsx_level1_qrtmd_v2_8.message_type.dissect(buffer, index, packet, parent)

  -- Exchange Identifier: Alphanumeric
  index, exchange_identifier = tmx_tsx_level1_qrtmd_v2_8.exchange_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
tmx_tsx_level1_qrtmd_v2_8.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8.fields.message_header, buffer(offset, 0))
    local index = tmx_tsx_level1_qrtmd_v2_8.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_level1_qrtmd_v2_8.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_level1_qrtmd_v2_8.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
tmx_tsx_level1_qrtmd_v2_8.packet = {}

-- Verify required size of Udp packet
tmx_tsx_level1_qrtmd_v2_8.packet.requiredsize = function(buffer)
  return buffer:len() >= tmx_tsx_level1_qrtmd_v2_8.qrtmd_stx.size + tmx_tsx_level1_qrtmd_v2_8.message_header.size
end

-- Dissect Packet
tmx_tsx_level1_qrtmd_v2_8.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Qrtmd Stx: character
  index, qrtmd_stx = tmx_tsx_level1_qrtmd_v2_8.qrtmd_stx.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 7 fields
  index, message_header = tmx_tsx_level1_qrtmd_v2_8.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = trim_right_spaces(buffer(index - 4, 2):string())

  -- Message Body: Runtime Type with 14 branches
  index = tmx_tsx_level1_qrtmd_v2_8.message_body.dissect(buffer, index, packet, parent, message_type)

  -- Qrtmd Etx: character
  index, qrtmd_etx = tmx_tsx_level1_qrtmd_v2_8.qrtmd_etx.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_tmx_tsx_level1_qrtmd_v2_8.init()
end

-- Dissector for Tmx Tsx Level1 Qrtmd 2.8
function omi_tmx_tsx_level1_qrtmd_v2_8.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_tmx_tsx_level1_qrtmd_v2_8.name

  -- Dissect protocol
  local protocol = parent:add(omi_tmx_tsx_level1_qrtmd_v2_8, buffer(), omi_tmx_tsx_level1_qrtmd_v2_8.description, "("..buffer:len().." Bytes)")
  return tmx_tsx_level1_qrtmd_v2_8.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Qrtmd Stx Field
tmx_tsx_level1_qrtmd_v2_8.qrtmd_stx.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(0, 1):int()

  if value == 2 then
    return true
  end

  return false
end

-- Dissector Heuristic for Tmx Tsx Level1 Qrtmd 2.8 (Udp)
local function omi_tmx_tsx_level1_qrtmd_v2_8_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tmx_tsx_level1_qrtmd_v2_8.packet.requiredsize(buffer) then return false end

  -- Verify Qrtmd Stx
  if not tmx_tsx_level1_qrtmd_v2_8.qrtmd_stx.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tmx_tsx_level1_qrtmd_v2_8
  omi_tmx_tsx_level1_qrtmd_v2_8.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Tmx Tsx Level1 Qrtmd 2.8
omi_tmx_tsx_level1_qrtmd_v2_8:register_heuristic("udp", omi_tmx_tsx_level1_qrtmd_v2_8_udp_heuristic)

-- Register Tmx Tsx Level1 Qrtmd 2.8 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_tmx_tsx_level1_qrtmd_v2_8)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: TMX Group
--   Version: 2.8
--   Date: Tuesday, August 10, 2021
--   Specification: QRTMD TSX Level 1 CL1 (2.8.0).pdf
--   Specification: QRTMD PSSAG (2.10).pdf
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
