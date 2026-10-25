-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PsxEquities TotalView Itch 5.0.2018 Protocol
local omi_nasdaq_psxequities_totalview_itch_v5_0_2018 = Proto("Omi.Nasdaq.PsxEquities.TotalView.Itch.v5.0.2018", "Nasdaq PsxEquities TotalView Itch 5.0.2018")

-- Protocol table
local nasdaq_psxequities_totalview_itch_v5_0_2018 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PsxEquities TotalView Itch 5.0.2018 Fields
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.attribution = ProtoField.new("Attribution", "nasdaq.psxequities.totalview.itch.v5.0.2018.attribution", ftypes.STRING, nil, nil, nil, "NASDAQ market participant identifier associated with the entered order.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.auction_collar_extension = ProtoField.new("Auction Collar Extension", "nasdaq.psxequities.totalview.itch.v5.0.2018.auctioncollarextension", ftypes.UINT32, nil, nil, nil, "Indicates the number of the extensions to the Reopening Auction")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.auction_collar_reference_price = ProtoField.new("Auction Collar Reference Price", "nasdaq.psxequities.totalview.itch.v5.0.2018.auctioncollarreferenceprice", ftypes.DOUBLE, nil, nil, nil, "Reference price used to set the Auction Collars")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.psxequities.totalview.itch.v5.0.2018.authenticity", ftypes.STRING, nil, nil, nil, "Denotes if an issue or quoting participant record is set-up in NASDAQ systems in a live/production, test, or demo state. Please note that firms should only show live issues and quoting participants on public quotation displays.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.breached_level = ProtoField.new("Breached Level", "nasdaq.psxequities.totalview.itch.v5.0.2018.breachedlevel", ftypes.STRING, nil, nil, nil, "Denotes the MWCB Level that was breached.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.psxequities.totalview.itch.v5.0.2018.buysellindicator", ftypes.STRING, nil, nil, nil, "The type of order being added.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.canceled_shares = ProtoField.new("Canceled Shares", "nasdaq.psxequities.totalview.itch.v5.0.2018.canceledshares", ftypes.UINT32, nil, nil, nil, "The number of shares being removed from the display size of the order as the result of a cancellation.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.cross_price = ProtoField.new("Cross Price", "nasdaq.psxequities.totalview.itch.v5.0.2018.crossprice", ftypes.DOUBLE, nil, nil, nil, "The price at which the cross occurred. Refer to Data Types for field processing notes.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.cross_shares = ProtoField.new("Cross Shares", "nasdaq.psxequities.totalview.itch.v5.0.2018.crossshares", ftypes.UINT64, nil, nil, nil, "The number of shares matched in the Nasdaq PSX Cross.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.psxequities.totalview.itch.v5.0.2018.crosstype", ftypes.STRING, nil, nil, nil, "The Nasdaq PSX cross session for which the message is being generated.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.current_reference_price = ProtoField.new("Current Reference Price", "nasdaq.psxequities.totalview.itch.v5.0.2018.currentreferenceprice", ftypes.DOUBLE, nil, nil, nil, "The price at which the NOII shares are being calculated. Refer to Data Types for field processing notes.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.psxequities.totalview.itch.v5.0.2018.etpflag", ftypes.STRING, nil, nil, nil, "Indicates whether the security is an exchange traded product (ETP):")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.psxequities.totalview.itch.v5.0.2018.etpleveragefactor", ftypes.UINT32, nil, nil, nil, "Tracks the integral relationship of the ETP to the underlying index. Example: If the underlying Index increases by a value of 1 and the ETP’s Leverage factor is 3, indicates the ETF will increase/decrease (see Inverse) by 3. Note: Leverage Factor of 1 indicates the ETP is NOT leveraged. This field is used for LULD Tier I price band calculation purposes.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.event_code = ProtoField.new("Event Code", "nasdaq.psxequities.totalview.itch.v5.0.2018.eventcode", ftypes.STRING, nil, nil, nil, "System Event Codes")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.executed_shares = ProtoField.new("Executed Shares", "nasdaq.psxequities.totalview.itch.v5.0.2018.executedshares", ftypes.UINT32, nil, nil, nil, "The number of shares executed.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.execution_price = ProtoField.new("Execution Price", "nasdaq.psxequities.totalview.itch.v5.0.2018.executionprice", ftypes.DOUBLE, nil, nil, nil, "The price at which the order execution occurred. Refer to Data Types for field processing notes.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.far_price = ProtoField.new("Far Price", "nasdaq.psxequities.totalview.itch.v5.0.2018.farprice", ftypes.DOUBLE, nil, nil, nil, "A hypothetical auction-clearing price for cross orders only. Refer to Data Types for field processing notes.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.psxequities.totalview.itch.v5.0.2018.financialstatusindicator", ftypes.STRING, nil, nil, nil, "For NASDAQ-listed issues, this field indicates when a firm is not in compliance with NASDAQ continued listing requirements.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.psxequities.totalview.itch.v5.0.2018.imbalancedirection", ftypes.STRING, nil, nil, nil, "The market side of the order imbalance.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.imbalance_shares = ProtoField.new("Imbalance Shares", "nasdaq.psxequities.totalview.itch.v5.0.2018.imbalanceshares", ftypes.UINT64, nil, nil, nil, "The number of shares not paired at the Current Reference Price.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.psxequities.totalview.itch.v5.0.2018.inverseindicator", ftypes.STRING, nil, nil, nil, "Indicates the directional relationship between the ETP and underlying index. Example: An ETP Leverage Factor of 3 and an Inverse value of ‘Y’ indicates the ETP will decrease by a value of 3.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.psxequities.totalview.itch.v5.0.2018.ipoflag", ftypes.STRING, nil, nil, nil, "Indicates if the NASDAQ security is set up for IPO release. This field is intended to help NASDAQ market participant firms comply with FINRA Rule 5131(b).")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.psxequities.totalview.itch.v5.0.2018.issueclassification", ftypes.STRING, nil, nil, nil, "Identifies the security class for the issue as assigned by NASDAQ. See Appendix for allowable values.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.issue_sub_type = ProtoField.new("Issue Sub Type", "nasdaq.psxequities.totalview.itch.v5.0.2018.issuesubtype", ftypes.STRING, nil, nil, nil, "Identifies the security sub-type for the issue as assigned by NASDAQ. See Appendix for allowable values.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.level_1 = ProtoField.new("Level 1", "nasdaq.psxequities.totalview.itch.v5.0.2018.level1", ftypes.DOUBLE, nil, nil, nil, "Denotes the MWCB Level 1 Value.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.level_2 = ProtoField.new("Level 2", "nasdaq.psxequities.totalview.itch.v5.0.2018.level2", ftypes.DOUBLE, nil, nil, nil, "Denotes the MWCB Level 2 Value.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.level_3 = ProtoField.new("Level 3", "nasdaq.psxequities.totalview.itch.v5.0.2018.level3", ftypes.DOUBLE, nil, nil, nil, "Denotes the MWCB Level 3 Value.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.locate_code = ProtoField.new("Locate Code", "nasdaq.psxequities.totalview.itch.v5.0.2018.locatecode", ftypes.UINT16, nil, nil, nil, "Locate code identifying the security")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.lower_auction_collar_price = ProtoField.new("Lower Auction Collar Price", "nasdaq.psxequities.totalview.itch.v5.0.2018.lowerauctioncollarprice", ftypes.DOUBLE, nil, nil, nil, "Indicates the price of the Lower Auction Collar Threshold")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.psxequities.totalview.itch.v5.0.2018.luldreferencepricetier", ftypes.STRING, nil, nil, nil, "Indicates which Limit Up / Limit Down price band calculation parameter is to be used for the instrument.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.market_category = ProtoField.new("Market Category", "nasdaq.psxequities.totalview.itch.v5.0.2018.marketcategory", ftypes.STRING, nil, nil, nil, "Indicates Listing market or listing market tier for the issue")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.market_code = ProtoField.new("Market Code", "nasdaq.psxequities.totalview.itch.v5.0.2018.marketcode", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.market_maker_mode = ProtoField.new("Market Maker Mode", "nasdaq.psxequities.totalview.itch.v5.0.2018.marketmakermode", ftypes.STRING, nil, nil, nil, "Indicates the quoting participant’s registration status in relation to SEC Rules 101 and 104 of Regulation M")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.market_participant_state = ProtoField.new("Market Participant State", "nasdaq.psxequities.totalview.itch.v5.0.2018.marketparticipantstate", ftypes.STRING, nil, nil, nil, "Indicates the market participant’s current registration status in the issue")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.match_number = ProtoField.new("Match Number", "nasdaq.psxequities.totalview.itch.v5.0.2018.matchnumber", ftypes.UINT64, nil, nil, nil, "The Nasdaq PSX generated day unique Match Number of this execution")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message_count = ProtoField.new("Message Count", "nasdaq.psxequities.totalview.itch.v5.0.2018.messagecount", ftypes.UINT16, nil, nil, nil, "Number of messages to follow this header")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message_length = ProtoField.new("Message Length", "nasdaq.psxequities.totalview.itch.v5.0.2018.messagelength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message_type = ProtoField.new("Message Type", "nasdaq.psxequities.totalview.itch.v5.0.2018.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.mpid = ProtoField.new("Mpid", "nasdaq.psxequities.totalview.itch.v5.0.2018.mpid", ftypes.STRING, nil, nil, nil, "Denotes the market participant identifier for which the position message is being generated")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.near_price = ProtoField.new("Near Price", "nasdaq.psxequities.totalview.itch.v5.0.2018.nearprice", ftypes.DOUBLE, nil, nil, nil, "A hypothetical auction-clearing price for cross orders as well as continuous orders. Refer to Data Types for field processing notes.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.new_order_reference_number = ProtoField.new("New Order Reference Number", "nasdaq.psxequities.totalview.itch.v5.0.2018.neworderreferencenumber", ftypes.UINT64, nil, nil, nil, "The new reference number for this order at time of replacement. Please note that the NASDAQ PSX system will use this new order reference number for all subsequent updates.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.operational_halt_action = ProtoField.new("Operational Halt Action", "nasdaq.psxequities.totalview.itch.v5.0.2018.operationalhaltaction", ftypes.STRING, nil, nil, nil, "Indicates the price of the Upper Auction Collar Threshold")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.psxequities.totalview.itch.v5.0.2018.orderreferencenumber", ftypes.UINT64, nil, nil, nil, "The unique reference number assigned to the new order at the time of receipt.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.original_order_reference_number = ProtoField.new("Original Order Reference Number", "nasdaq.psxequities.totalview.itch.v5.0.2018.originalorderreferencenumber", ftypes.UINT64, nil, nil, nil, "The original reference number of the order being replaced.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.paired_shares = ProtoField.new("Paired Shares", "nasdaq.psxequities.totalview.itch.v5.0.2018.pairedshares", ftypes.UINT64, nil, nil, nil, "The total number of shares that are eligible to be matched at the Current Reference Price.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.price = ProtoField.new("Price", "nasdaq.psxequities.totalview.itch.v5.0.2018.price", ftypes.DOUBLE, nil, nil, nil, "The display price of the new order. Refer to Data Types for field processing notes.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.price_variation_indicator = ProtoField.new("Price Variation Indicator", "nasdaq.psxequities.totalview.itch.v5.0.2018.pricevariationindicator", ftypes.STRING, nil, nil, nil, "This field indicates the absolute value of the percentage of deviation of the Near Indicative Clearing Price to the nearest Current Reference Price.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.primary_market_maker = ProtoField.new("Primary Market Maker", "nasdaq.psxequities.totalview.itch.v5.0.2018.primarymarketmaker", ftypes.STRING, nil, nil, nil, "Indicates if the market participant firm qualifies as a Primary Market Maker in accordance with NASDAQ marketplace rules")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.printable = ProtoField.new("Printable", "nasdaq.psxequities.totalview.itch.v5.0.2018.printable", ftypes.STRING, nil, nil, nil, "Indicates if the execution should be reflected on time and sale displays and volume calculations.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.reason = ProtoField.new("Reason", "nasdaq.psxequities.totalview.itch.v5.0.2018.reason", ftypes.STRING, nil, nil, nil, "Trading Action reason")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.psxequities.totalview.itch.v5.0.2018.regshoaction", ftypes.STRING, nil, nil, nil, "Denotes the Reg SHO Short Sale Price Test Restriction status for the issue at the time of the message dissemination")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.reserved = ProtoField.new("Reserved", "nasdaq.psxequities.totalview.itch.v5.0.2018.reserved", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.psxequities.totalview.itch.v5.0.2018.roundlotsize", ftypes.UINT32, nil, nil, nil, "Denotes the number of shares that represent a round lot for the issue")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.psxequities.totalview.itch.v5.0.2018.roundlotsonly", ftypes.STRING, nil, nil, nil, "Indicates if NASDAQ system limits order entry for issue")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.psxequities.totalview.itch.v5.0.2018.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first message to follow this header")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.session = ProtoField.new("Session", "nasdaq.psxequities.totalview.itch.v5.0.2018.session", ftypes.STRING, nil, nil, nil, "Identity of the multicast session")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.shares = ProtoField.new("Shares", "nasdaq.psxequities.totalview.itch.v5.0.2018.shares", ftypes.UINT32, nil, nil, nil, "The total number of shares associated with the order being added to the book.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.psxequities.totalview.itch.v5.0.2018.shortsalethresholdindicator", ftypes.STRING, nil, nil, nil, "Indicates if a security is subject to mandatory close-out of short sales under SEC Rule 203(b)(3).")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.stock = ProtoField.new("Stock", "nasdaq.psxequities.totalview.itch.v5.0.2018.stock", ftypes.STRING, nil, nil, nil, "Denotes the security symbol for the issue in the NASDAQ execution system.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.stock_locate = ProtoField.new("Stock Locate", "nasdaq.psxequities.totalview.itch.v5.0.2018.stocklocate", ftypes.UINT16, nil, nil, nil, "Always 0")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.psxequities.totalview.itch.v5.0.2018.timestamp", ftypes.UINT64, nil, nil, nil, "Nanoseconds since midnight.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.psxequities.totalview.itch.v5.0.2018.trackingnumber", ftypes.UINT16, nil, nil, nil, "NASDAQ PSX internal tracking number")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.trading_state = ProtoField.new("Trading State", "nasdaq.psxequities.totalview.itch.v5.0.2018.tradingstate", ftypes.STRING, nil, nil, nil, "Indicates the current trading state for the stock.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.upper_auction_collar_price = ProtoField.new("Upper Auction Collar Price", "nasdaq.psxequities.totalview.itch.v5.0.2018.upperauctioncollarprice", ftypes.DOUBLE, nil, nil, nil, "Indicates the price of the Upper Auction Collar Threshold")

-- Nasdaq PsxEquities TotalView Itch 5.0.2018 Framing
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message = ProtoField.new("Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.message", ftypes.STRING, nil, nil, nil, "Mold Udp64 Message")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message_header = ProtoField.new("Message Header", "nasdaq.psxequities.totalview.itch.v5.0.2018.messageheader", ftypes.STRING, nil, nil, nil, "Mold Udp 64 Message Header")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.packet = ProtoField.new("Packet", "nasdaq.psxequities.totalview.itch.v5.0.2018.packet", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.psxequities.totalview.itch.v5.0.2018.packetheader", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet Header")

-- Nasdaq PsxEquities TotalView 5.0.2018 Application Messages
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.add_order_no_mpid_attribution_message = ProtoField.new("Add Order No Mpid Attribution Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.addordernompidattributionmessage", ftypes.STRING, nil, nil, nil, "This message will be generated for unattributed orders accepted by the NASDAQ PSX system.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.add_order_with_mpid_attribution_message = ProtoField.new("Add Order With Mpid Attribution Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.addorderwithmpidattributionmessage", ftypes.STRING, nil, nil, nil, "This message will be generated for attributed orders and quotations accepted by the NASDAQ PSX system.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.brokentrademessage", ftypes.STRING, nil, nil, nil, "The Broken Trade Message is sent whenever an execution on Nasdaq PSX is broken. An execution may be broken if it is found to be “clearly erroneous” pursuant to Nasdaq’s Clearly Erroneous Policy. A trade break is final; once a trade is broken, it cannot be reinstated.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.cross_trade_message = ProtoField.new("Cross Trade Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.crosstrademessage", ftypes.STRING, nil, nil, nil, "Cross Trade message indicates that Nasdaq PSX has completed its cross process for a specific security. Nasdaq PSX sends out a Cross Trade message for all active issues in the system following the Opening, Closing and EMC cross events. Firms may use the Cross Trade message to determine when the cross for each security has been completed. (Note: For the halted / paused securities, firms should use the Trading Action message to determine when an issue has been released for trading.)")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.luld_auction_collar_message = ProtoField.new("Luld Auction Collar Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.luldauctioncollarmessage", ftypes.STRING, nil, nil, nil, "Indicates the auction collar thresholds within which a paused security can reopen following a LULD Trading Pause")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.market_participant_position_message = ProtoField.new("Market Participant Position Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.marketparticipantpositionmessage", ftypes.STRING, nil, nil, nil, "Throughout the day, Nasdaq PSX will send out this message only if Nasdaq Operations changes the status of a market participant firm in an issue.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.mwcb_decline_level_message = ProtoField.new("Mwcb Decline Level Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.mwcbdeclinelevelmessage", ftypes.STRING, nil, nil, nil, "Informs data recipients what the daily MWCB breach points are set to for the current trading day.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.mwcb_status_level_message = ProtoField.new("Mwcb Status Level Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.mwcbstatuslevelmessage", ftypes.STRING, nil, nil, nil, "Informs data recipients when a MWCB has breached one of the established levels")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.net_order_imbalance_indicator_message = ProtoField.new("Net Order Imbalance Indicator Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.netorderimbalanceindicatormessage", ftypes.STRING, nil, nil, nil, "NASDAQ PSX disseminates NOII data at 5-second intervals in the minutes leading up to the NASDAQ Opening Cross and NASDAQ Closing Cross")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.operational_halt_message = ProtoField.new("Operational Halt Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.operationalhaltmessage", ftypes.STRING, nil, nil, nil, "Nasdaq uses this administrative message to indicate the current trading status of the three market centers operated by Nasdaq.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.ordercancelmessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever an order on the book is modified as a result of a partial cancellation.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_delete_message = ProtoField.new("Order Delete Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.orderdeletemessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever an order on the book is being cancelled. All remaining shares are no longer accessible so the order must be removed from the book.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_executed_message = ProtoField.new("Order Executed Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever an order on the book is executed in whole or in part. It is possible to receive several Order Executed Messages for the same order reference number if that order is executed in several parts. The multiple Order Executed Messages on the same order are cumulative.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.orderexecutedwithpricemessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever an order on the book is executed in whole or in part at a price different from the initial display price. Since the execution price is different than the display price of the original Add Order, Nasdaq PSX includes a price field within this execution message.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_replace_message = ProtoField.new("Order Replace Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.orderreplacemessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever an order on the book has been cancel-replaced. All remaining shares from the original order are no longer accessible, and must be removed. The new order details are provided for the replacement, along with a new order reference number which will be used henceforth. Since the side, stock symbol and attribution (if any) cannot be changed by an Order Replace event, these fields are not included in the message. Firms should retain the side, stock symbol and MPID from the original Add Order message.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING, nil, nil, nil, "NASDAQ PSX processes orders based on the most Reg SHO Restriction status value.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.stockdirectorymessage", ftypes.STRING, nil, nil, nil, "Market data redistributors should process this message to populate the Financial Status Indicator (required display field) and the Market Category (recommended display field) for NASDAQ-listed issues.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.stocktradingactionmessage", ftypes.STRING, nil, nil, nil, "Nasdaq PSX uses this administrative message to indicate the current trading status of a security to the trading community.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.systemeventmessage", ftypes.STRING, nil, nil, nil, "Reflects the number of seconds past midnight that the Timestamp message was generated.")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.trade_message_non_cross = ProtoField.new("Trade Message Non Cross", "nasdaq.psxequities.totalview.itch.v5.0.2018.trademessagenoncross", ftypes.STRING, nil, nil, nil, "The Trade Message is designed to provide execution details for normal match events involving non-displayable order types. (Note: There is a separate message for Nasdaq PSX cross events.)")

-- Nasdaq PsxEquities TotalView 5.0.2018 Session Messages
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.psxequities.totalview.itch.v5.0.2018.endofsession", ftypes.BYTES, nil, nil, nil, "Mold Udp64 end of session")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.psxequities.totalview.itch.v5.0.2018.heartbeat", ftypes.BYTES, nil, nil, nil, "Mold Udp64 heartbeat")

-- Nasdaq PsxEquities TotalView Itch 5.0.2018 Generated Fields
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message_index = ProtoField.new("Message Index", "nasdaq.psxequities.totalview.itch.v5.0.2018.messageindex", ftypes.UINT16)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.psxequities.totalview.itch.v5.0.2018.messagesequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq PsxEquities TotalView Itch 5.0.2018 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp_format = 2

-- Hours behind UTC (America/New_York) for midnight calculation
nasdaq_psxequities_totalview_itch_v5_0_2018.utc_offset_hours = 5


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq PsxEquities TotalView Itch 5.0.2018 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Nasdaq PsxEquities TotalView Itch 5.0.2018 Show Options
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (America/New_York) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_headers then
    show.headers = omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_structs then
    show.structs = omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_indexes then
    show.indexes = omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_sequences then
    show.sequences = omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_sequences
  end
  if nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp_format ~= omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.timestamp_format then
    nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp_format = omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.timestamp_format
  end
  if nasdaq_psxequities_totalview_itch_v5_0_2018.utc_offset_hours ~= omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.utc_offset_hours then
    nasdaq_psxequities_totalview_itch_v5_0_2018.utc_offset_hours = omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.utc_offset_hours
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
-- Nasdaq PsxEquities TotalView Itch 5.0.2018 Fields
-----------------------------------------------------------------------

-- Attribution
nasdaq_psxequities_totalview_itch_v5_0_2018.attribution = {}

-- Size: Attribution
nasdaq_psxequities_totalview_itch_v5_0_2018.attribution.size = 4

-- Display: Attribution
nasdaq_psxequities_totalview_itch_v5_0_2018.attribution.display = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
nasdaq_psxequities_totalview_itch_v5_0_2018.attribution.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.attribution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.attribution, range, value, display)

  return offset + length, value
end

-- Auction Collar Extension
nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_extension = {}

-- Size: Auction Collar Extension
nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_extension.size = 4

-- Display: Auction Collar Extension
nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_extension.display = function(value)
  return "Auction Collar Extension: "..value
end

-- Dissect: Auction Collar Extension
nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_extension.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_extension.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_extension.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.auction_collar_extension, range, value, display)

  return offset + length, value
end

-- Auction Collar Reference Price
nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_reference_price = {}

-- Size: Auction Collar Reference Price
nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_reference_price.size = 4

-- Display: Auction Collar Reference Price
nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_reference_price.display = function(value)
  return "Auction Collar Reference Price: "..value
end

-- Translate: Auction Collar Reference Price
nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_reference_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Auction Collar Reference Price
nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_reference_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.auction_collar_reference_price, range, value, display)

  return offset + length, value
end

-- Authenticity
nasdaq_psxequities_totalview_itch_v5_0_2018.authenticity = {}

-- Size: Authenticity
nasdaq_psxequities_totalview_itch_v5_0_2018.authenticity.size = 1

-- Display: Authenticity
nasdaq_psxequities_totalview_itch_v5_0_2018.authenticity.labels = {
  ["P"] = "Authenticity: Live Production (P)",
  ["T"] = "Authenticity: Test (T)",
}

nasdaq_psxequities_totalview_itch_v5_0_2018.authenticity.display = function(value)
  return nasdaq_psxequities_totalview_itch_v5_0_2018.authenticity.labels[value] or "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_psxequities_totalview_itch_v5_0_2018.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Breached Level
nasdaq_psxequities_totalview_itch_v5_0_2018.breached_level = {}

-- Size: Breached Level
nasdaq_psxequities_totalview_itch_v5_0_2018.breached_level.size = 1

-- Display: Breached Level
nasdaq_psxequities_totalview_itch_v5_0_2018.breached_level.labels = {
  ["1"] = "Breached Level: Level 1 (1)",
  ["2"] = "Breached Level: Level 2 (2)",
  ["3"] = "Breached Level: Level 3 (3)",
}

nasdaq_psxequities_totalview_itch_v5_0_2018.breached_level.display = function(value)
  return nasdaq_psxequities_totalview_itch_v5_0_2018.breached_level.labels[value] or "Breached Level: Unknown("..value..")"
end

-- Dissect: Breached Level
nasdaq_psxequities_totalview_itch_v5_0_2018.breached_level.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.breached_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.breached_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.breached_level, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.labels = {
  ["B"] = "Buy Sell Indicator: Buy (B)",
  ["S"] = "Buy Sell Indicator: Sell (S)",
}

nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.display = function(value)
  return nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.labels[value] or "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Canceled Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.canceled_shares = {}

-- Size: Canceled Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.canceled_shares.size = 4

-- Display: Canceled Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.canceled_shares.display = function(value)
  return "Canceled Shares: "..value
end

-- Dissect: Canceled Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.canceled_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.canceled_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.canceled_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.canceled_shares, range, value, display)

  return offset + length, value
end

-- Cross Price
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_price = {}

-- Size: Cross Price
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_price.size = 4

-- Display: Cross Price
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_price.display = function(value)
  return "Cross Price: "..value
end

-- Translate: Cross Price
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Cross Price
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.cross_price, range, value, display)

  return offset + length, value
end

-- Cross Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_shares = {}

-- Size: Cross Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_shares.size = 8

-- Display: Cross Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_shares.display = function(value)
  return "Cross Shares: "..value
end

-- Dissect: Cross Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.cross_shares, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_type = {}

-- Size: Cross Type
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_type.size = 1

-- Display: Cross Type
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_type.labels = {
  ["O"] = "Cross Type: Opening Cross (O)",
  ["C"] = "Cross Type: Closing Cross (C)",
  ["H"] = "Cross Type: Cross Halted Or Paused (H)",
  ["I"] = "Cross Type: Intraday Cross And Post Close Cross (I)",
}

nasdaq_psxequities_totalview_itch_v5_0_2018.cross_type.display = function(value)
  return nasdaq_psxequities_totalview_itch_v5_0_2018.cross_type.labels[value] or "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Current Reference Price
nasdaq_psxequities_totalview_itch_v5_0_2018.current_reference_price = {}

-- Size: Current Reference Price
nasdaq_psxequities_totalview_itch_v5_0_2018.current_reference_price.size = 4

-- Display: Current Reference Price
nasdaq_psxequities_totalview_itch_v5_0_2018.current_reference_price.display = function(value)
  return "Current Reference Price: "..value
end

-- Translate: Current Reference Price
nasdaq_psxequities_totalview_itch_v5_0_2018.current_reference_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Current Reference Price
nasdaq_psxequities_totalview_itch_v5_0_2018.current_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.current_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.current_reference_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.current_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.current_reference_price, range, value, display)

  return offset + length, value
end

-- Etp Flag
nasdaq_psxequities_totalview_itch_v5_0_2018.etp_flag = {}

-- Size: Etp Flag
nasdaq_psxequities_totalview_itch_v5_0_2018.etp_flag.size = 1

-- Display: Etp Flag
nasdaq_psxequities_totalview_itch_v5_0_2018.etp_flag.display = function(value)
  if value == "Y" then
    return "Etp Flag: Etp (Y)"
  end
  if value == "N" then
    return "Etp Flag: Not Etp (N)"
  end
  if value == " " then
    return "Etp Flag: Na (<whitespace>)"
  end

  return "Etp Flag: Unknown("..value..")"
end

-- Dissect: Etp Flag
nasdaq_psxequities_totalview_itch_v5_0_2018.etp_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.etp_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.etp_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.etp_flag, range, value, display)

  return offset + length, value
end

-- Etp Leverage Factor
nasdaq_psxequities_totalview_itch_v5_0_2018.etp_leverage_factor = {}

-- Size: Etp Leverage Factor
nasdaq_psxequities_totalview_itch_v5_0_2018.etp_leverage_factor.size = 4

-- Display: Etp Leverage Factor
nasdaq_psxequities_totalview_itch_v5_0_2018.etp_leverage_factor.display = function(value)
  return "Etp Leverage Factor: "..value
end

-- Dissect: Etp Leverage Factor
nasdaq_psxequities_totalview_itch_v5_0_2018.etp_leverage_factor.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.etp_leverage_factor.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.etp_leverage_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.etp_leverage_factor, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_psxequities_totalview_itch_v5_0_2018.event_code = {}

-- Size: Event Code
nasdaq_psxequities_totalview_itch_v5_0_2018.event_code.size = 1

-- Display: Event Code
nasdaq_psxequities_totalview_itch_v5_0_2018.event_code.labels = {
  ["O"] = "Event Code: Start Of Messages (O)",
  ["S"] = "Event Code: Start Of System Hours (S)",
  ["Q"] = "Event Code: Start Of Market Hours (Q)",
  ["M"] = "Event Code: End Of Market Hours (M)",
  ["E"] = "Event Code: End Of System Hours (E)",
  ["C"] = "Event Code: End Of Messages (C)",
}

nasdaq_psxequities_totalview_itch_v5_0_2018.event_code.display = function(value)
  return nasdaq_psxequities_totalview_itch_v5_0_2018.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_psxequities_totalview_itch_v5_0_2018.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.executed_shares = {}

-- Size: Executed Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.executed_shares.size = 4

-- Display: Executed Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.executed_shares.display = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.executed_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Execution Price
nasdaq_psxequities_totalview_itch_v5_0_2018.execution_price = {}

-- Size: Execution Price
nasdaq_psxequities_totalview_itch_v5_0_2018.execution_price.size = 4

-- Display: Execution Price
nasdaq_psxequities_totalview_itch_v5_0_2018.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
nasdaq_psxequities_totalview_itch_v5_0_2018.execution_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Execution Price
nasdaq_psxequities_totalview_itch_v5_0_2018.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.execution_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.execution_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Far Price
nasdaq_psxequities_totalview_itch_v5_0_2018.far_price = {}

-- Size: Far Price
nasdaq_psxequities_totalview_itch_v5_0_2018.far_price.size = 4

-- Display: Far Price
nasdaq_psxequities_totalview_itch_v5_0_2018.far_price.display = function(value)
  return "Far Price: "..value
end

-- Translate: Far Price
nasdaq_psxequities_totalview_itch_v5_0_2018.far_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Far Price
nasdaq_psxequities_totalview_itch_v5_0_2018.far_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.far_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.far_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.far_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.far_price, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.financial_status_indicator.display = function(value)
  if value == "D" then
    return "Financial Status Indicator: Deficient (D)"
  end
  if value == "E" then
    return "Financial Status Indicator: Delinquent (E)"
  end
  if value == "Q" then
    return "Financial Status Indicator: Bankrupt (Q)"
  end
  if value == "S" then
    return "Financial Status Indicator: Suspended (S)"
  end
  if value == "G" then
    return "Financial Status Indicator: Deficient And Bankrupt (G)"
  end
  if value == "H" then
    return "Financial Status Indicator: Deficient And Delinquent (H)"
  end
  if value == "J" then
    return "Financial Status Indicator: Delinquent And Bankrupt (J)"
  end
  if value == "K" then
    return "Financial Status Indicator: Deficient Delinquent And Bankrupt (K)"
  end
  if value == "C" then
    return "Financial Status Indicator: Creations And Redemptions Suspended (C)"
  end
  if value == "N" then
    return "Financial Status Indicator: Normal (N)"
  end
  if value == " " then
    return "Financial Status Indicator: Na (<whitespace>)"
  end

  return "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Imbalance Direction
nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_direction = {}

-- Size: Imbalance Direction
nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_direction.size = 1

-- Display: Imbalance Direction
nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_direction.labels = {
  ["B"] = "Imbalance Direction: Buy (B)",
  ["S"] = "Imbalance Direction: Sell (S)",
  ["N"] = "Imbalance Direction: No Imbalance (N)",
  ["O"] = "Imbalance Direction: Insufficient Orders (O)",
}

nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_direction.display = function(value)
  return nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_direction.labels[value] or "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Imbalance Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_shares = {}

-- Size: Imbalance Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_shares.size = 8

-- Display: Imbalance Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_shares.display = function(value)
  return "Imbalance Shares: "..value
end

-- Dissect: Imbalance Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.imbalance_shares, range, value, display)

  return offset + length, value
end

-- Inverse Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.inverse_indicator = {}

-- Size: Inverse Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.inverse_indicator.size = 1

-- Display: Inverse Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.inverse_indicator.labels = {
  ["Y"] = "Inverse Indicator: Inverse Etp (Y)",
  ["N"] = "Inverse Indicator: Not Inverse Etp (N)",
}

nasdaq_psxequities_totalview_itch_v5_0_2018.inverse_indicator.display = function(value)
  return nasdaq_psxequities_totalview_itch_v5_0_2018.inverse_indicator.labels[value] or "Inverse Indicator: Unknown("..value..")"
end

-- Dissect: Inverse Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.inverse_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.inverse_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.inverse_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.inverse_indicator, range, value, display)

  return offset + length, value
end

-- Ipo Flag
nasdaq_psxequities_totalview_itch_v5_0_2018.ipo_flag = {}

-- Size: Ipo Flag
nasdaq_psxequities_totalview_itch_v5_0_2018.ipo_flag.size = 1

-- Display: Ipo Flag
nasdaq_psxequities_totalview_itch_v5_0_2018.ipo_flag.display = function(value)
  if value == "Y" then
    return "Ipo Flag: Yes (Y)"
  end
  if value == "N" then
    return "Ipo Flag: No (N)"
  end
  if value == " " then
    return "Ipo Flag: Na (<whitespace>)"
  end

  return "Ipo Flag: Unknown("..value..")"
end

-- Dissect: Ipo Flag
nasdaq_psxequities_totalview_itch_v5_0_2018.ipo_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.ipo_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.ipo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.ipo_flag, range, value, display)

  return offset + length, value
end

-- Issue Classification
nasdaq_psxequities_totalview_itch_v5_0_2018.issue_classification = {}

-- Size: Issue Classification
nasdaq_psxequities_totalview_itch_v5_0_2018.issue_classification.size = 1

-- Display: Issue Classification
nasdaq_psxequities_totalview_itch_v5_0_2018.issue_classification.display = function(value)
  return "Issue Classification: "..value
end

-- Dissect: Issue Classification
nasdaq_psxequities_totalview_itch_v5_0_2018.issue_classification.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.issue_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.issue_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Issue Sub Type
nasdaq_psxequities_totalview_itch_v5_0_2018.issue_sub_type = {}

-- Size: Issue Sub Type
nasdaq_psxequities_totalview_itch_v5_0_2018.issue_sub_type.size = 2

-- Display: Issue Sub Type
nasdaq_psxequities_totalview_itch_v5_0_2018.issue_sub_type.display = function(value)
  return "Issue Sub Type: "..value
end

-- Dissect: Issue Sub Type
nasdaq_psxequities_totalview_itch_v5_0_2018.issue_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.issue_sub_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.issue_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.issue_sub_type, range, value, display)

  return offset + length, value
end

-- Level 1
nasdaq_psxequities_totalview_itch_v5_0_2018.level_1 = {}

-- Size: Level 1
nasdaq_psxequities_totalview_itch_v5_0_2018.level_1.size = 8

-- Display: Level 1
nasdaq_psxequities_totalview_itch_v5_0_2018.level_1.display = function(value)
  return "Level 1: "..value
end

-- Translate: Level 1
nasdaq_psxequities_totalview_itch_v5_0_2018.level_1.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 1
nasdaq_psxequities_totalview_itch_v5_0_2018.level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.level_1.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.level_1.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.level_1, range, value, display)

  return offset + length, value
end

-- Level 2
nasdaq_psxequities_totalview_itch_v5_0_2018.level_2 = {}

-- Size: Level 2
nasdaq_psxequities_totalview_itch_v5_0_2018.level_2.size = 8

-- Display: Level 2
nasdaq_psxequities_totalview_itch_v5_0_2018.level_2.display = function(value)
  return "Level 2: "..value
end

-- Translate: Level 2
nasdaq_psxequities_totalview_itch_v5_0_2018.level_2.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 2
nasdaq_psxequities_totalview_itch_v5_0_2018.level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.level_2.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.level_2.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.level_2, range, value, display)

  return offset + length, value
end

-- Level 3
nasdaq_psxequities_totalview_itch_v5_0_2018.level_3 = {}

-- Size: Level 3
nasdaq_psxequities_totalview_itch_v5_0_2018.level_3.size = 8

-- Display: Level 3
nasdaq_psxequities_totalview_itch_v5_0_2018.level_3.display = function(value)
  return "Level 3: "..value
end

-- Translate: Level 3
nasdaq_psxequities_totalview_itch_v5_0_2018.level_3.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 3
nasdaq_psxequities_totalview_itch_v5_0_2018.level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.level_3.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.level_3.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.level_3, range, value, display)

  return offset + length, value
end

-- Locate Code
nasdaq_psxequities_totalview_itch_v5_0_2018.locate_code = {}

-- Size: Locate Code
nasdaq_psxequities_totalview_itch_v5_0_2018.locate_code.size = 2

-- Display: Locate Code
nasdaq_psxequities_totalview_itch_v5_0_2018.locate_code.display = function(value)
  return "Locate Code: "..value
end

-- Dissect: Locate Code
nasdaq_psxequities_totalview_itch_v5_0_2018.locate_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.locate_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.locate_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.locate_code, range, value, display)

  return offset + length, value
end

-- Lower Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0_2018.lower_auction_collar_price = {}

-- Size: Lower Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0_2018.lower_auction_collar_price.size = 4

-- Display: Lower Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0_2018.lower_auction_collar_price.display = function(value)
  return "Lower Auction Collar Price: "..value
end

-- Translate: Lower Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0_2018.lower_auction_collar_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Lower Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0_2018.lower_auction_collar_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.lower_auction_collar_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.lower_auction_collar_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.lower_auction_collar_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.lower_auction_collar_price, range, value, display)

  return offset + length, value
end

-- Luld Reference Price Tier
nasdaq_psxequities_totalview_itch_v5_0_2018.luld_reference_price_tier = {}

-- Size: Luld Reference Price Tier
nasdaq_psxequities_totalview_itch_v5_0_2018.luld_reference_price_tier.size = 1

-- Display: Luld Reference Price Tier
nasdaq_psxequities_totalview_itch_v5_0_2018.luld_reference_price_tier.display = function(value)
  if value == "1" then
    return "Luld Reference Price Tier: Tier 1 (1)"
  end
  if value == "2" then
    return "Luld Reference Price Tier: Tier 2 (2)"
  end
  if value == " " then
    return "Luld Reference Price Tier: Na (<whitespace>)"
  end

  return "Luld Reference Price Tier: Unknown("..value..")"
end

-- Dissect: Luld Reference Price Tier
nasdaq_psxequities_totalview_itch_v5_0_2018.luld_reference_price_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.luld_reference_price_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.luld_reference_price_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_psxequities_totalview_itch_v5_0_2018.market_category = {}

-- Size: Market Category
nasdaq_psxequities_totalview_itch_v5_0_2018.market_category.size = 1

-- Display: Market Category
nasdaq_psxequities_totalview_itch_v5_0_2018.market_category.display = function(value)
  if value == "Q" then
    return "Market Category: Nasdaq Global Select Market (Q)"
  end
  if value == "G" then
    return "Market Category: Nasdaq Global Market (G)"
  end
  if value == "S" then
    return "Market Category: Nasdaq Capital Market (S)"
  end
  if value == "N" then
    return "Market Category: Nyse (N)"
  end
  if value == "A" then
    return "Market Category: Nyse Mkt (A)"
  end
  if value == "P" then
    return "Market Category: Nyse Arca (P)"
  end
  if value == "Z" then
    return "Market Category: Bats Z (Z)"
  end
  if value == "V" then
    return "Market Category: Investors Exchange (V)"
  end
  if value == " " then
    return "Market Category: Na (<whitespace>)"
  end

  return "Market Category: Unknown("..value..")"
end

-- Dissect: Market Category
nasdaq_psxequities_totalview_itch_v5_0_2018.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.market_category, range, value, display)

  return offset + length, value
end

-- Market Code
nasdaq_psxequities_totalview_itch_v5_0_2018.market_code = {}

-- Size: Market Code
nasdaq_psxequities_totalview_itch_v5_0_2018.market_code.size = 1

-- Display: Market Code
nasdaq_psxequities_totalview_itch_v5_0_2018.market_code.labels = {
  ["Q"] = "Market Code: Nasdaq (Q)",
  ["B"] = "Market Code: Bx (B)",
  ["X"] = "Market Code: Psx (X)",
}

nasdaq_psxequities_totalview_itch_v5_0_2018.market_code.display = function(value)
  return nasdaq_psxequities_totalview_itch_v5_0_2018.market_code.labels[value] or "Market Code: Unknown("..value..")"
end

-- Dissect: Market Code
nasdaq_psxequities_totalview_itch_v5_0_2018.market_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.market_code, range, value, display)

  return offset + length, value
end

-- Market Maker Mode
nasdaq_psxequities_totalview_itch_v5_0_2018.market_maker_mode = {}

-- Size: Market Maker Mode
nasdaq_psxequities_totalview_itch_v5_0_2018.market_maker_mode.size = 1

-- Display: Market Maker Mode
nasdaq_psxequities_totalview_itch_v5_0_2018.market_maker_mode.labels = {
  ["N"] = "Market Maker Mode: Normal (N)",
  ["P"] = "Market Maker Mode: Passive (P)",
  ["S"] = "Market Maker Mode: Syndicate (S)",
  ["R"] = "Market Maker Mode: Pre Syndicate (R)",
  ["L"] = "Market Maker Mode: Penalty (L)",
}

nasdaq_psxequities_totalview_itch_v5_0_2018.market_maker_mode.display = function(value)
  return nasdaq_psxequities_totalview_itch_v5_0_2018.market_maker_mode.labels[value] or "Market Maker Mode: Unknown("..value..")"
end

-- Dissect: Market Maker Mode
nasdaq_psxequities_totalview_itch_v5_0_2018.market_maker_mode.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.market_maker_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.market_maker_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.market_maker_mode, range, value, display)

  return offset + length, value
end

-- Market Participant State
nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_state = {}

-- Size: Market Participant State
nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_state.size = 1

-- Display: Market Participant State
nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_state.labels = {
  ["A"] = "Market Participant State: Active (A)",
  ["E"] = "Market Participant State: Excused Withdrawn (E)",
  ["W"] = "Market Participant State: Withdrawn (W)",
  ["S"] = "Market Participant State: Suspended (S)",
  ["D"] = "Market Participant State: Deleted (D)",
}

nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_state.display = function(value)
  return nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_state.labels[value] or "Market Participant State: Unknown("..value..")"
end

-- Dissect: Market Participant State
nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.market_participant_state, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_psxequities_totalview_itch_v5_0_2018.match_number = {}

-- Size: Match Number
nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.size = 8

-- Display: Match Number
nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_psxequities_totalview_itch_v5_0_2018.message_count = {}

-- Size: Message Count
nasdaq_psxequities_totalview_itch_v5_0_2018.message_count.size = 2

-- Display: Message Count
nasdaq_psxequities_totalview_itch_v5_0_2018.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_psxequities_totalview_itch_v5_0_2018.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_psxequities_totalview_itch_v5_0_2018.message_length = {}

-- Size: Message Length
nasdaq_psxequities_totalview_itch_v5_0_2018.message_length.size = 2

-- Display: Message Length
nasdaq_psxequities_totalview_itch_v5_0_2018.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_psxequities_totalview_itch_v5_0_2018.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_psxequities_totalview_itch_v5_0_2018.message_type = {}

-- Size: Message Type
nasdaq_psxequities_totalview_itch_v5_0_2018.message_type.size = 1

-- Display: Message Type
nasdaq_psxequities_totalview_itch_v5_0_2018.message_type.labels = {
  ["S"] = "Message Type: System Event Message (S)",
  ["R"] = "Message Type: Stock Directory Message (R)",
  ["H"] = "Message Type: Stock Trading Action Message (H)",
  ["Y"] = "Message Type: Reg Sho Short Sale Price Test Restricted Indicator Message (Y)",
  ["L"] = "Message Type: Market Participant Position Message (L)",
  ["V"] = "Message Type: Mwcb Decline Level Message (V)",
  ["W"] = "Message Type: Mwcb Status Level Message (W)",
  ["J"] = "Message Type: Luld Auction Collar Message (J)",
  ["h"] = "Message Type: Operational Halt Message (h)",
  ["A"] = "Message Type: Add Order No Mpid Attribution Message (A)",
  ["F"] = "Message Type: Add Order With Mpid Attribution Message (F)",
  ["E"] = "Message Type: Order Executed Message (E)",
  ["C"] = "Message Type: Order Executed With Price Message (C)",
  ["X"] = "Message Type: Order Cancel Message (X)",
  ["D"] = "Message Type: Order Delete Message (D)",
  ["U"] = "Message Type: Order Replace Message (U)",
  ["P"] = "Message Type: Trade Message Non Cross (P)",
  ["Q"] = "Message Type: Cross Trade Message (Q)",
  ["B"] = "Message Type: Broken Trade Message (B)",
  ["I"] = "Message Type: Net Order Imbalance Indicator Message (I)",
}

nasdaq_psxequities_totalview_itch_v5_0_2018.message_type.display = function(value)
  return nasdaq_psxequities_totalview_itch_v5_0_2018.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_psxequities_totalview_itch_v5_0_2018.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpid
nasdaq_psxequities_totalview_itch_v5_0_2018.mpid = {}

-- Size: Mpid
nasdaq_psxequities_totalview_itch_v5_0_2018.mpid.size = 4

-- Display: Mpid
nasdaq_psxequities_totalview_itch_v5_0_2018.mpid.display = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
nasdaq_psxequities_totalview_itch_v5_0_2018.mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.mpid, range, value, display)

  return offset + length, value
end

-- Near Price
nasdaq_psxequities_totalview_itch_v5_0_2018.near_price = {}

-- Size: Near Price
nasdaq_psxequities_totalview_itch_v5_0_2018.near_price.size = 4

-- Display: Near Price
nasdaq_psxequities_totalview_itch_v5_0_2018.near_price.display = function(value)
  return "Near Price: "..value
end

-- Translate: Near Price
nasdaq_psxequities_totalview_itch_v5_0_2018.near_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Near Price
nasdaq_psxequities_totalview_itch_v5_0_2018.near_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.near_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.near_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.near_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.near_price, range, value, display)

  return offset + length, value
end

-- New Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.new_order_reference_number = {}

-- Size: New Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.new_order_reference_number.size = 8

-- Display: New Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.new_order_reference_number.display = function(value)
  return "New Order Reference Number: "..value
end

-- Dissect: New Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.new_order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.new_order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.new_order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.new_order_reference_number, range, value, display)

  return offset + length, value
end

-- Operational Halt Action
nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_action = {}

-- Size: Operational Halt Action
nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_action.size = 1

-- Display: Operational Halt Action
nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_action.labels = {
  ["H"] = "Operational Halt Action: Halted (H)",
  ["T"] = "Operational Halt Action: Resumed (T)",
}

nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_action.display = function(value)
  return nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_action.labels[value] or "Operational Halt Action: Unknown("..value..")"
end

-- Dissect: Operational Halt Action
nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.operational_halt_action, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Original Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.original_order_reference_number = {}

-- Size: Original Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.original_order_reference_number.size = 8

-- Display: Original Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.original_order_reference_number.display = function(value)
  return "Original Order Reference Number: "..value
end

-- Dissect: Original Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.original_order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.original_order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.original_order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.original_order_reference_number, range, value, display)

  return offset + length, value
end

-- Paired Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.paired_shares = {}

-- Size: Paired Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.paired_shares.size = 8

-- Display: Paired Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.paired_shares.display = function(value)
  return "Paired Shares: "..value
end

-- Dissect: Paired Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.paired_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.paired_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.paired_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.paired_shares, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_psxequities_totalview_itch_v5_0_2018.price = {}

-- Size: Price
nasdaq_psxequities_totalview_itch_v5_0_2018.price.size = 4

-- Display: Price
nasdaq_psxequities_totalview_itch_v5_0_2018.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_psxequities_totalview_itch_v5_0_2018.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_psxequities_totalview_itch_v5_0_2018.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.price, range, value, display)

  return offset + length, value
end

-- Price Variation Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.price_variation_indicator = {}

-- Size: Price Variation Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.price_variation_indicator.size = 1

-- Display: Price Variation Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.price_variation_indicator.display = function(value)
  if value == "L" then
    return "Price Variation Indicator: Less Than 1% (L)"
  end
  if value == "1" then
    return "Price Variation Indicator: One To One Point Nine Nine Percent (1)"
  end
  if value == "2" then
    return "Price Variation Indicator: Two To Two Point Nine Nine Percent (2)"
  end
  if value == "3" then
    return "Price Variation Indicator: Three To Three Point Nine Nine Percent (3)"
  end
  if value == "4" then
    return "Price Variation Indicator: Four To Four Point Nine Nine Percent (4)"
  end
  if value == "5" then
    return "Price Variation Indicator: Five To Five Point Nine Nine Percent (5)"
  end
  if value == "6" then
    return "Price Variation Indicator: Six To Six Point Nine Nine Percent (6)"
  end
  if value == "7" then
    return "Price Variation Indicator: Seven To Seven Point Nine Nine Percent (7)"
  end
  if value == "8" then
    return "Price Variation Indicator: Eight To Eight Point Nine Nine Percent (8)"
  end
  if value == "9" then
    return "Price Variation Indicator: Nine To Nine Point Nine Nine Percent (9)"
  end
  if value == "A" then
    return "Price Variation Indicator: Ten To Nineteen Point Nine Nine Percent (A)"
  end
  if value == "B" then
    return "Price Variation Indicator: Twenty To Twenty Nine Point Nine Nine Percent (B)"
  end
  if value == "C" then
    return "Price Variation Indicator: Thirty Percent Or Greater (C)"
  end
  if value == " " then
    return "Price Variation Indicator: No Calculation (<whitespace>)"
  end

  return "Price Variation Indicator: Unknown("..value..")"
end

-- Dissect: Price Variation Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.price_variation_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.price_variation_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.price_variation_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.price_variation_indicator, range, value, display)

  return offset + length, value
end

-- Primary Market Maker
nasdaq_psxequities_totalview_itch_v5_0_2018.primary_market_maker = {}

-- Size: Primary Market Maker
nasdaq_psxequities_totalview_itch_v5_0_2018.primary_market_maker.size = 1

-- Display: Primary Market Maker
nasdaq_psxequities_totalview_itch_v5_0_2018.primary_market_maker.labels = {
  ["Y"] = "Primary Market Maker: Primary (Y)",
  ["N"] = "Primary Market Maker: Non Primary (N)",
}

nasdaq_psxequities_totalview_itch_v5_0_2018.primary_market_maker.display = function(value)
  return nasdaq_psxequities_totalview_itch_v5_0_2018.primary_market_maker.labels[value] or "Primary Market Maker: Unknown("..value..")"
end

-- Dissect: Primary Market Maker
nasdaq_psxequities_totalview_itch_v5_0_2018.primary_market_maker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.primary_market_maker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.primary_market_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.primary_market_maker, range, value, display)

  return offset + length, value
end

-- Printable
nasdaq_psxequities_totalview_itch_v5_0_2018.printable = {}

-- Size: Printable
nasdaq_psxequities_totalview_itch_v5_0_2018.printable.size = 1

-- Display: Printable
nasdaq_psxequities_totalview_itch_v5_0_2018.printable.labels = {
  ["N"] = "Printable: Non Printable (N)",
  ["Y"] = "Printable: Printable (Y)",
}

nasdaq_psxequities_totalview_itch_v5_0_2018.printable.display = function(value)
  return nasdaq_psxequities_totalview_itch_v5_0_2018.printable.labels[value] or "Printable: Unknown("..value..")"
end

-- Dissect: Printable
nasdaq_psxequities_totalview_itch_v5_0_2018.printable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.printable, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_psxequities_totalview_itch_v5_0_2018.reason = {}

-- Size: Reason
nasdaq_psxequities_totalview_itch_v5_0_2018.reason.size = 4

-- Display: Reason
nasdaq_psxequities_totalview_itch_v5_0_2018.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
nasdaq_psxequities_totalview_itch_v5_0_2018.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.reason, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_action.labels = {
  ["0"] = "Reg Sho Action: No Price Test (0)",
  ["1"] = "Reg Sho Action: Reg Sho Short Sale Price Test Restriction (1)",
  ["2"] = "Reg Sho Action: Test Restriction Remains (2)",
}

nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_action.display = function(value)
  return nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_action.labels[value] or "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Reserved
nasdaq_psxequities_totalview_itch_v5_0_2018.reserved = {}

-- Size: Reserved
nasdaq_psxequities_totalview_itch_v5_0_2018.reserved.size = 1

-- Display: Reserved
nasdaq_psxequities_totalview_itch_v5_0_2018.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
nasdaq_psxequities_totalview_itch_v5_0_2018.reserved.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.reserved.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.reserved, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_psxequities_totalview_itch_v5_0_2018.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_psxequities_totalview_itch_v5_0_2018.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_psxequities_totalview_itch_v5_0_2018.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_psxequities_totalview_itch_v5_0_2018.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Round Lots Only
nasdaq_psxequities_totalview_itch_v5_0_2018.round_lots_only = {}

-- Size: Round Lots Only
nasdaq_psxequities_totalview_itch_v5_0_2018.round_lots_only.size = 1

-- Display: Round Lots Only
nasdaq_psxequities_totalview_itch_v5_0_2018.round_lots_only.labels = {
  ["Y"] = "Round Lots Only: Yes (Y)",
  ["N"] = "Round Lots Only: No (N)",
}

nasdaq_psxequities_totalview_itch_v5_0_2018.round_lots_only.display = function(value)
  return nasdaq_psxequities_totalview_itch_v5_0_2018.round_lots_only.labels[value] or "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_psxequities_totalview_itch_v5_0_2018.round_lots_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.round_lots_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.round_lots_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_psxequities_totalview_itch_v5_0_2018.sequence_number = {}

-- Size: Sequence Number
nasdaq_psxequities_totalview_itch_v5_0_2018.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_psxequities_totalview_itch_v5_0_2018.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_psxequities_totalview_itch_v5_0_2018.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_psxequities_totalview_itch_v5_0_2018.session = {}

-- Size: Session
nasdaq_psxequities_totalview_itch_v5_0_2018.session.size = 10

-- Display: Session
nasdaq_psxequities_totalview_itch_v5_0_2018.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_psxequities_totalview_itch_v5_0_2018.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.session.size
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

  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.session, range, value, display)

  return offset + length, value
end

-- Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.shares = {}

-- Size: Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.shares.size = 4

-- Display: Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.shares, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator.display = function(value)
  if value == "Y" then
    return "Short Sale Threshold Indicator: Restricted (Y)"
  end
  if value == "N" then
    return "Short Sale Threshold Indicator: Not Restricted (N)"
  end
  if value == " " then
    return "Short Sale Threshold Indicator: Na (<whitespace>)"
  end

  return "Short Sale Threshold Indicator: Unknown("..value..")"
end

-- Dissect: Short Sale Threshold Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_psxequities_totalview_itch_v5_0_2018.stock = {}

-- Size: Stock
nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size = 8

-- Display: Stock
nasdaq_psxequities_totalview_itch_v5_0_2018.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.stock, range, value, display)

  return offset + length, value
end

-- Stock Locate
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate = {}

-- Size: Stock Locate
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size = 2

-- Display: Stock Locate
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.display = function(value)
  return "Stock Locate: "..value
end

-- Dissect: Stock Locate
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.stock_locate, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp = {}

-- Size: Timestamp
nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size = 6

-- Display: Timestamp
nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_psxequities_totalview_itch_v5_0_2018.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number = {}

-- Size: Tracking Number
nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Trading State
nasdaq_psxequities_totalview_itch_v5_0_2018.trading_state = {}

-- Size: Trading State
nasdaq_psxequities_totalview_itch_v5_0_2018.trading_state.size = 1

-- Display: Trading State
nasdaq_psxequities_totalview_itch_v5_0_2018.trading_state.labels = {
  ["H"] = "Trading State: Halted (H)",
  ["P"] = "Trading State: Paused (P)",
  ["Q"] = "Trading State: Quotation Only Period (Q)",
  ["T"] = "Trading State: Trading (T)",
}

nasdaq_psxequities_totalview_itch_v5_0_2018.trading_state.display = function(value)
  return nasdaq_psxequities_totalview_itch_v5_0_2018.trading_state.labels[value] or "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
nasdaq_psxequities_totalview_itch_v5_0_2018.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Upper Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0_2018.upper_auction_collar_price = {}

-- Size: Upper Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0_2018.upper_auction_collar_price.size = 4

-- Display: Upper Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0_2018.upper_auction_collar_price.display = function(value)
  return "Upper Auction Collar Price: "..value
end

-- Translate: Upper Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0_2018.upper_auction_collar_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Upper Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0_2018.upper_auction_collar_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.upper_auction_collar_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.upper_auction_collar_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.upper_auction_collar_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.upper_auction_collar_price, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq PsxEquities TotalView Itch 5.0.2018
-----------------------------------------------------------------------

-- Net Order Imbalance Indicator Message
nasdaq_psxequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message = {}

-- Size: Net Order Imbalance Indicator Message
nasdaq_psxequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.paired_shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_direction.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.far_price.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.near_price.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.current_reference_price.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.cross_type.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.price_variation_indicator.size

-- Display: Net Order Imbalance Indicator Message
nasdaq_psxequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Net Order Imbalance Indicator Message
nasdaq_psxequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Paired Shares: Integer
  index, paired_shares = nasdaq_psxequities_totalview_itch_v5_0_2018.paired_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Shares: Integer
  index, imbalance_shares = nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: Alpha
  index, imbalance_direction = nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Far Price: Price (4)
  index, far_price = nasdaq_psxequities_totalview_itch_v5_0_2018.far_price.dissect(buffer, index, packet, parent)

  -- Near Price: Price (4)
  index, near_price = nasdaq_psxequities_totalview_itch_v5_0_2018.near_price.dissect(buffer, index, packet, parent)

  -- Current Reference Price: Price (4)
  index, current_reference_price = nasdaq_psxequities_totalview_itch_v5_0_2018.current_reference_price.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_type.dissect(buffer, index, packet, parent)

  -- Price Variation Indicator: Alpha
  index, price_variation_indicator = nasdaq_psxequities_totalview_itch_v5_0_2018.price_variation_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Order Imbalance Indicator Message
nasdaq_psxequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.net_order_imbalance_indicator_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
nasdaq_psxequities_totalview_itch_v5_0_2018.broken_trade_message = {}

-- Size: Broken Trade Message
nasdaq_psxequities_totalview_itch_v5_0_2018.broken_trade_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.size

-- Display: Broken Trade Message
nasdaq_psxequities_totalview_itch_v5_0_2018.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_psxequities_totalview_itch_v5_0_2018.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nasdaq_psxequities_totalview_itch_v5_0_2018.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.broken_trade_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Trade Message
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_trade_message = {}

-- Size: Cross Trade Message
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_trade_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.cross_shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.cross_price.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.cross_type.size

-- Display: Cross Trade Message
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Trade Message
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Cross Shares: Integer
  index, cross_shares = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_shares.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Cross Price: Price (4)
  index, cross_price = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_price.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Trade Message
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.cross_trade_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.cross_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message Non Cross
nasdaq_psxequities_totalview_itch_v5_0_2018.trade_message_non_cross = {}

-- Size: Trade Message Non Cross
nasdaq_psxequities_totalview_itch_v5_0_2018.trade_message_non_cross.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.price.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.size

-- Display: Trade Message Non Cross
nasdaq_psxequities_totalview_itch_v5_0_2018.trade_message_non_cross.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message Non Cross
nasdaq_psxequities_totalview_itch_v5_0_2018.trade_message_non_cross.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = nasdaq_psxequities_totalview_itch_v5_0_2018.shares.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Price: Price (4)
  index, price = nasdaq_psxequities_totalview_itch_v5_0_2018.price.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message Non Cross
nasdaq_psxequities_totalview_itch_v5_0_2018.trade_message_non_cross.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.trade_message_non_cross, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.trade_message_non_cross.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.trade_message_non_cross.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.trade_message_non_cross.fields(buffer, offset, packet, parent)
  end
end

-- Order Replace Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_replace_message = {}

-- Size: Order Replace Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_replace_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.original_order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.new_order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.price.size

-- Display: Order Replace Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Original Order Reference Number: Integer
  index, original_order_reference_number = nasdaq_psxequities_totalview_itch_v5_0_2018.original_order_reference_number.dissect(buffer, index, packet, parent)

  -- New Order Reference Number: Integer
  index, new_order_reference_number = nasdaq_psxequities_totalview_itch_v5_0_2018.new_order_reference_number.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = nasdaq_psxequities_totalview_itch_v5_0_2018.shares.dissect(buffer, index, packet, parent)

  -- Price: Price (4)
  index, price = nasdaq_psxequities_totalview_itch_v5_0_2018.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_replace_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_replace_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.order_replace_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.order_replace_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.order_replace_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_delete_message = {}

-- Size: Order Delete Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_delete_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.size

-- Display: Order Delete Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_delete_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_cancel_message = {}

-- Size: Order Cancel Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_cancel_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.canceled_shares.size

-- Display: Order Cancel Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.dissect(buffer, index, packet, parent)

  -- Canceled Shares: Integer
  index, canceled_shares = nasdaq_psxequities_totalview_itch_v5_0_2018.canceled_shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_cancel_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed With Price Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_with_price_message = {}

-- Size: Order Executed With Price Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_with_price_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.executed_shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.printable.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.execution_price.size

-- Display: Order Executed With Price Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.dissect(buffer, index, packet, parent)

  -- Executed Shares: Integer
  index, executed_shares = nasdaq_psxequities_totalview_itch_v5_0_2018.executed_shares.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = nasdaq_psxequities_totalview_itch_v5_0_2018.printable.dissect(buffer, index, packet, parent)

  -- Execution Price: Price (4)
  index, execution_price = nasdaq_psxequities_totalview_itch_v5_0_2018.execution_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_message = {}

-- Size: Order Executed Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.executed_shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.size

-- Display: Order Executed Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.dissect(buffer, index, packet, parent)

  -- Executed Shares: Integer
  index, executed_shares = nasdaq_psxequities_totalview_itch_v5_0_2018.executed_shares.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_executed_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order With Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message = {}

-- Size: Add Order With Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.price.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.attribution.size

-- Display: Add Order With Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order With Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = nasdaq_psxequities_totalview_itch_v5_0_2018.shares.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Price: Price (4)
  index, price = nasdaq_psxequities_totalview_itch_v5_0_2018.price.dissect(buffer, index, packet, parent)

  -- Attribution: Alpha
  index, attribution = nasdaq_psxequities_totalview_itch_v5_0_2018.attribution.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order With Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.add_order_with_mpid_attribution_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order No Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message = {}

-- Size: Add Order No Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.price.size

-- Display: Add Order No Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order No Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = nasdaq_psxequities_totalview_itch_v5_0_2018.shares.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Price: Price (4)
  index, price = nasdaq_psxequities_totalview_itch_v5_0_2018.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order No Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.add_order_no_mpid_attribution_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.fields(buffer, offset, packet, parent)
  end
end

-- Operational Halt Message
nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_message = {}

-- Size: Operational Halt Message
nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.market_code.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_action.size

-- Display: Operational Halt Message
nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Operational Halt Message
nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Market Code: Alpha
  index, market_code = nasdaq_psxequities_totalview_itch_v5_0_2018.market_code.dissect(buffer, index, packet, parent)

  -- Operational Halt Action: Alpha
  index, operational_halt_action = nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Operational Halt Message
nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.operational_halt_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_message.fields(buffer, offset, packet, parent)
  end
end

-- Luld Auction Collar Message
nasdaq_psxequities_totalview_itch_v5_0_2018.luld_auction_collar_message = {}

-- Size: Luld Auction Collar Message
nasdaq_psxequities_totalview_itch_v5_0_2018.luld_auction_collar_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_reference_price.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.upper_auction_collar_price.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.lower_auction_collar_price.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_extension.size

-- Display: Luld Auction Collar Message
nasdaq_psxequities_totalview_itch_v5_0_2018.luld_auction_collar_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Luld Auction Collar Message
nasdaq_psxequities_totalview_itch_v5_0_2018.luld_auction_collar_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Auction Collar Reference Price: Price (4)
  index, auction_collar_reference_price = nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_reference_price.dissect(buffer, index, packet, parent)

  -- Upper Auction Collar Price: Price (4)
  index, upper_auction_collar_price = nasdaq_psxequities_totalview_itch_v5_0_2018.upper_auction_collar_price.dissect(buffer, index, packet, parent)

  -- Lower Auction Collar Price: Price (4)
  index, lower_auction_collar_price = nasdaq_psxequities_totalview_itch_v5_0_2018.lower_auction_collar_price.dissect(buffer, index, packet, parent)

  -- Auction Collar Extension: Integer
  index, auction_collar_extension = nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_extension.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Luld Auction Collar Message
nasdaq_psxequities_totalview_itch_v5_0_2018.luld_auction_collar_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.luld_auction_collar_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.luld_auction_collar_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.luld_auction_collar_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.luld_auction_collar_message.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Status Level Message
nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_status_level_message = {}

-- Size: Mwcb Status Level Message
nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_status_level_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.breached_level.size

-- Display: Mwcb Status Level Message
nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_status_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Status Level Message
nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_status_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Breached Level: Alpha
  index, breached_level = nasdaq_psxequities_totalview_itch_v5_0_2018.breached_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Status Level Message
nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_status_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.mwcb_status_level_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_status_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_status_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_status_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Decline Level Message
nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_decline_level_message = {}

-- Size: Mwcb Decline Level Message
nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.level_1.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.level_2.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.level_3.size

-- Display: Mwcb Decline Level Message
nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Decline Level Message
nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Level 1: Price (8)
  index, level_1 = nasdaq_psxequities_totalview_itch_v5_0_2018.level_1.dissect(buffer, index, packet, parent)

  -- Level 2: Price (8)
  index, level_2 = nasdaq_psxequities_totalview_itch_v5_0_2018.level_2.dissect(buffer, index, packet, parent)

  -- Level 3: Price (8)
  index, level_3 = nasdaq_psxequities_totalview_itch_v5_0_2018.level_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Decline Level Message
nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.mwcb_decline_level_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Participant Position Message
nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_position_message = {}

-- Size: Market Participant Position Message
nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_position_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.mpid.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.primary_market_maker.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.market_maker_mode.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_state.size

-- Display: Market Participant Position Message
nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_position_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Participant Position Message
nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_position_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Mpid: Alpha
  index, mpid = nasdaq_psxequities_totalview_itch_v5_0_2018.mpid.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Primary Market Maker: Alpha
  index, primary_market_maker = nasdaq_psxequities_totalview_itch_v5_0_2018.primary_market_maker.dissect(buffer, index, packet, parent)

  -- Market Maker Mode: Alpha
  index, market_maker_mode = nasdaq_psxequities_totalview_itch_v5_0_2018.market_maker_mode.dissect(buffer, index, packet, parent)

  -- Market Participant State: Alpha
  index, market_participant_state = nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Participant Position Message
nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_position_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.market_participant_position_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_position_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_position_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_position_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message = {}

-- Size: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.locate_code.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_action.size

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Locate Code: Integer
  index, locate_code = nasdaq_psxequities_totalview_itch_v5_0_2018.locate_code.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alpha
  index, reg_sho_action = nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.reg_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Trading Action Message
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_trading_action_message = {}

-- Size: Stock Trading Action Message
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_trading_action_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.trading_state.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.reserved.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.reason.size

-- Display: Stock Trading Action Message
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Trading State: Alpha
  index, trading_state = nasdaq_psxequities_totalview_itch_v5_0_2018.trading_state.dissect(buffer, index, packet, parent)

  -- Reserved: Alpha
  index, reserved = nasdaq_psxequities_totalview_itch_v5_0_2018.reserved.dissect(buffer, index, packet, parent)

  -- Reason: Alpha
  index, reason = nasdaq_psxequities_totalview_itch_v5_0_2018.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.stock_trading_action_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.stock_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory Message
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_directory_message = {}

-- Size: Stock Directory Message
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_directory_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.market_category.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.financial_status_indicator.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.round_lot_size.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.round_lots_only.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.issue_classification.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.issue_sub_type.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.authenticity.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.ipo_flag.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.luld_reference_price_tier.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.etp_flag.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.etp_leverage_factor.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.inverse_indicator.size

-- Display: Stock Directory Message
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Market Category: Alpha
  index, market_category = nasdaq_psxequities_totalview_itch_v5_0_2018.market_category.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Alpha
  index, financial_status_indicator = nasdaq_psxequities_totalview_itch_v5_0_2018.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = nasdaq_psxequities_totalview_itch_v5_0_2018.round_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lots Only: Alpha
  index, round_lots_only = nasdaq_psxequities_totalview_itch_v5_0_2018.round_lots_only.dissect(buffer, index, packet, parent)

  -- Issue Classification: Alpha
  index, issue_classification = nasdaq_psxequities_totalview_itch_v5_0_2018.issue_classification.dissect(buffer, index, packet, parent)

  -- Issue Sub Type: Alpha
  index, issue_sub_type = nasdaq_psxequities_totalview_itch_v5_0_2018.issue_sub_type.dissect(buffer, index, packet, parent)

  -- Authenticity: Alpha
  index, authenticity = nasdaq_psxequities_totalview_itch_v5_0_2018.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: Alpha
  index, short_sale_threshold_indicator = nasdaq_psxequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Ipo Flag: Alpha
  index, ipo_flag = nasdaq_psxequities_totalview_itch_v5_0_2018.ipo_flag.dissect(buffer, index, packet, parent)

  -- Luld Reference Price Tier: Alpha
  index, luld_reference_price_tier = nasdaq_psxequities_totalview_itch_v5_0_2018.luld_reference_price_tier.dissect(buffer, index, packet, parent)

  -- Etp Flag: Alpha
  index, etp_flag = nasdaq_psxequities_totalview_itch_v5_0_2018.etp_flag.dissect(buffer, index, packet, parent)

  -- Etp Leverage Factor: Integer
  index, etp_leverage_factor = nasdaq_psxequities_totalview_itch_v5_0_2018.etp_leverage_factor.dissect(buffer, index, packet, parent)

  -- Inverse Indicator: Alpha
  index, inverse_indicator = nasdaq_psxequities_totalview_itch_v5_0_2018.inverse_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_psxequities_totalview_itch_v5_0_2018.system_event_message = {}

-- Size: System Event Message
nasdaq_psxequities_totalview_itch_v5_0_2018.system_event_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.event_code.size

-- Display: System Event Message
nasdaq_psxequities_totalview_itch_v5_0_2018.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_psxequities_totalview_itch_v5_0_2018.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_psxequities_totalview_itch_v5_0_2018.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_psxequities_totalview_itch_v5_0_2018.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_psxequities_totalview_itch_v5_0_2018.payload = {}

-- Dissect: Payload
nasdaq_psxequities_totalview_itch_v5_0_2018.payload.dispatch = {
  ["S"] = nasdaq_psxequities_totalview_itch_v5_0_2018.system_event_message.dissect,
  ["R"] = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_directory_message.dissect,
  ["H"] = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_trading_action_message.dissect,
  ["Y"] = nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.dissect,
  ["L"] = nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_position_message.dissect,
  ["V"] = nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.dissect,
  ["W"] = nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_status_level_message.dissect,
  ["J"] = nasdaq_psxequities_totalview_itch_v5_0_2018.luld_auction_collar_message.dissect,
  ["h"] = nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_message.dissect,
  ["A"] = nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.dissect,
  ["F"] = nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.dissect,
  ["E"] = nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_message.dissect,
  ["C"] = nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_with_price_message.dissect,
  ["X"] = nasdaq_psxequities_totalview_itch_v5_0_2018.order_cancel_message.dissect,
  ["D"] = nasdaq_psxequities_totalview_itch_v5_0_2018.order_delete_message.dissect,
  ["U"] = nasdaq_psxequities_totalview_itch_v5_0_2018.order_replace_message.dissect,
  ["P"] = nasdaq_psxequities_totalview_itch_v5_0_2018.trade_message_non_cross.dissect,
  ["Q"] = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_trade_message.dissect,
  ["B"] = nasdaq_psxequities_totalview_itch_v5_0_2018.broken_trade_message.dissect,
  ["I"] = nasdaq_psxequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.dissect,
}

nasdaq_psxequities_totalview_itch_v5_0_2018.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nasdaq_psxequities_totalview_itch_v5_0_2018.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_psxequities_totalview_itch_v5_0_2018.message_header = {}

-- Size: Message Header
nasdaq_psxequities_totalview_itch_v5_0_2018.message_header.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.message_length.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.message_type.size

-- Display: Message Header
nasdaq_psxequities_totalview_itch_v5_0_2018.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_psxequities_totalview_itch_v5_0_2018.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_psxequities_totalview_itch_v5_0_2018.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 20 values
  index, message_type = nasdaq_psxequities_totalview_itch_v5_0_2018.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_psxequities_totalview_itch_v5_0_2018.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message_header, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_psxequities_totalview_itch_v5_0_2018.message = {}

-- Read runtime size of: Message
nasdaq_psxequities_totalview_itch_v5_0_2018.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_psxequities_totalview_itch_v5_0_2018.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_psxequities_totalview_itch_v5_0_2018.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_psxequities_totalview_itch_v5_0_2018.packet_sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message_sequence_number, UInt64.new(nasdaq_psxequities_totalview_itch_v5_0_2018.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_psxequities_totalview_itch_v5_0_2018.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 20 branches
  index = nasdaq_psxequities_totalview_itch_v5_0_2018.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_psxequities_totalview_itch_v5_0_2018.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_psxequities_totalview_itch_v5_0_2018.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message, buffer(offset, 0))
    local current = nasdaq_psxequities_totalview_itch_v5_0_2018.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_psxequities_totalview_itch_v5_0_2018.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_psxequities_totalview_itch_v5_0_2018.end_of_session = {}

-- Display: End Of Session
nasdaq_psxequities_totalview_itch_v5_0_2018.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_psxequities_totalview_itch_v5_0_2018.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_psxequities_totalview_itch_v5_0_2018.heartbeat = {}

-- Display: Heartbeat
nasdaq_psxequities_totalview_itch_v5_0_2018.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_psxequities_totalview_itch_v5_0_2018.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_psxequities_totalview_itch_v5_0_2018.messages = {}

-- Dissect: Messages
nasdaq_psxequities_totalview_itch_v5_0_2018.messages.dispatch = {
  [0] = nasdaq_psxequities_totalview_itch_v5_0_2018.heartbeat.dissect,
  [65535] = nasdaq_psxequities_totalview_itch_v5_0_2018.end_of_session.dissect,
}

nasdaq_psxequities_totalview_itch_v5_0_2018.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = nasdaq_psxequities_totalview_itch_v5_0_2018.messages.dispatch[message_count]
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
    offset = nasdaq_psxequities_totalview_itch_v5_0_2018.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_psxequities_totalview_itch_v5_0_2018.packet_header = {}

-- Size: Packet Header
nasdaq_psxequities_totalview_itch_v5_0_2018.packet_header.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.session.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.sequence_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.message_count.size

-- Display: Packet Header
nasdaq_psxequities_totalview_itch_v5_0_2018.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_psxequities_totalview_itch_v5_0_2018.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_psxequities_totalview_itch_v5_0_2018.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_psxequities_totalview_itch_v5_0_2018.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_psxequities_totalview_itch_v5_0_2018.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_psxequities_totalview_itch_v5_0_2018.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_psxequities_totalview_itch_v5_0_2018.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_psxequities_totalview_itch_v5_0_2018.packet = {}

-- Verify required size of Udp packet
nasdaq_psxequities_totalview_itch_v5_0_2018.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_psxequities_totalview_itch_v5_0_2018.packet_header.size
end

-- Dissect Packet
nasdaq_psxequities_totalview_itch_v5_0_2018.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_psxequities_totalview_itch_v5_0_2018.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_psxequities_totalview_itch_v5_0_2018.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_psxequities_totalview_itch_v5_0_2018.init()
end

-- Dissector for Nasdaq PsxEquities TotalView Itch 5.0.2018
function omi_nasdaq_psxequities_totalview_itch_v5_0_2018.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_psxequities_totalview_itch_v5_0_2018.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018, buffer(), omi_nasdaq_psxequities_totalview_itch_v5_0_2018.description, "("..buffer:len().." Bytes)")
  return nasdaq_psxequities_totalview_itch_v5_0_2018.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
nasdaq_psxequities_totalview_itch_v5_0_2018.packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local message_count = buffer(18, 2):uint()

  -- Heartbeat
  if message_count == 0 then
    return true
  end

  -- End Of Session
  if message_count == 65535 then
    return true
  end

  -- Message: carries the application messages, which tell this protocol from others sharing the session framing
  if buffer:len() < 23 then
    return false
  end

  local message_type = buffer(22, 1):string()

  -- System Event Message
  if message_type == "S" then
    return true
  end

  -- Stock Directory Message
  if message_type == "R" then
    return true
  end

  -- Stock Trading Action Message
  if message_type == "H" then
    return true
  end

  -- Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return true
  end

  -- Market Participant Position Message
  if message_type == "L" then
    return true
  end

  -- Mwcb Decline Level Message
  if message_type == "V" then
    return true
  end

  -- Mwcb Status Level Message
  if message_type == "W" then
    return true
  end

  -- Luld Auction Collar Message
  if message_type == "J" then
    return true
  end

  -- Operational Halt Message
  if message_type == "h" then
    return true
  end

  -- Add Order No Mpid Attribution Message
  if message_type == "A" then
    return true
  end

  -- Add Order With Mpid Attribution Message
  if message_type == "F" then
    return true
  end

  -- Order Executed Message
  if message_type == "E" then
    return true
  end

  -- Order Executed With Price Message
  if message_type == "C" then
    return true
  end

  -- Order Cancel Message
  if message_type == "X" then
    return true
  end

  -- Order Delete Message
  if message_type == "D" then
    return true
  end

  -- Order Replace Message
  if message_type == "U" then
    return true
  end

  -- Trade Message Non Cross
  if message_type == "P" then
    return true
  end

  -- Cross Trade Message
  if message_type == "Q" then
    return true
  end

  -- Broken Trade Message
  if message_type == "B" then
    return true
  end

  -- Net Order Imbalance Indicator Message
  if message_type == "I" then
    return true
  end


  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq PsxEquities TotalView Itch 5.0.2018 (Udp)
local function omi_nasdaq_psxequities_totalview_itch_v5_0_2018_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_psxequities_totalview_itch_v5_0_2018.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not nasdaq_psxequities_totalview_itch_v5_0_2018.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_psxequities_totalview_itch_v5_0_2018
  omi_nasdaq_psxequities_totalview_itch_v5_0_2018.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq PsxEquities TotalView Itch 5.0.2018
omi_nasdaq_psxequities_totalview_itch_v5_0_2018:register_heuristic("udp", omi_nasdaq_psxequities_totalview_itch_v5_0_2018_udp_heuristic)

-- Register Nasdaq PsxEquities TotalView Itch 5.0.2018 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_psxequities_totalview_itch_v5_0_2018)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 5.0.2018
--   Date: Thursday, May 3, 2018
--   Specification: PSXTVITCHSpecification.pdf
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
