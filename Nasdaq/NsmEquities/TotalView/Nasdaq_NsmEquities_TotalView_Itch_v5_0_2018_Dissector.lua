-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NsmEquities TotalView Itch 5.0.2018 Protocol
local omi_nasdaq_nsmequities_totalview_itch_v5_0_2018 = Proto("Omi.Nasdaq.NsmEquities.TotalView.Itch.v5.0.2018", "Nasdaq NsmEquities TotalView Itch 5.0.2018")

-- Protocol table
local nasdaq_nsmequities_totalview_itch_v5_0_2018 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NsmEquities TotalView Itch 5.0.2018 Fields
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.nsmequities.totalview.itch.v5.0.2018.acceptedsequencenumber", ftypes.UINT64, nil, nil, nil, "The sequence number in ASCII of the next Sequenced Message to be sent. Left padded with spaces.")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.nsmequities.totalview.itch.v5.0.2018.acceptedsession", ftypes.STRING, nil, nil, nil, "The session ID of the session that is now logged into. Left padded with spaces.")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.attribution = ProtoField.new("Attribution", "nasdaq.nsmequities.totalview.itch.v5.0.2018.attribution", ftypes.STRING, nil, nil, nil, "Nasdaq market participant identifier associated with the entered order")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.auction_collar_extension = ProtoField.new("Auction Collar Extension", "nasdaq.nsmequities.totalview.itch.v5.0.2018.auctioncollarextension", ftypes.UINT32, nil, nil, nil, "Indicates the number of extensions to the Reopening Auction")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.auction_collar_reference_price = ProtoField.new("Auction Collar Reference Price", "nasdaq.nsmequities.totalview.itch.v5.0.2018.auctioncollarreferenceprice", ftypes.DOUBLE, nil, nil, nil, "Reference price used to set the auction collars")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.nsmequities.totalview.itch.v5.0.2018.authenticity", ftypes.STRING, nil, nil, nil, "Denotes if an issue or quoting participant record is set-up in NASDAQ systems in a live/production, test, or demo state")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.breached_level = ProtoField.new("Breached Level", "nasdaq.nsmequities.totalview.itch.v5.0.2018.breachedlevel", ftypes.STRING, nil, nil, nil, "Denotes the MWCB Level that was breached")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.nsmequities.totalview.itch.v5.0.2018.buysellindicator", ftypes.STRING, nil, nil, nil, "The type of order being added")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.canceled_shares = ProtoField.new("Canceled Shares", "nasdaq.nsmequities.totalview.itch.v5.0.2018.canceledshares", ftypes.UINT32, nil, nil, nil, "The number of shares being removed from the display size of the order as the result of a cancellation")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.nsmequities.totalview.itch.v5.0.2018.clientpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the client")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.cross_price = ProtoField.new("Cross Price", "nasdaq.nsmequities.totalview.itch.v5.0.2018.crossprice", ftypes.DOUBLE, nil, nil, nil, "The price at which the cross occurred")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.cross_shares = ProtoField.new("Cross Shares", "nasdaq.nsmequities.totalview.itch.v5.0.2018.crossshares", ftypes.UINT64, nil, nil, nil, "The number of shares matched in the Nasdaq Cross")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.nsmequities.totalview.itch.v5.0.2018.crosstype", ftypes.STRING, nil, nil, nil, "The Nasdaq cross session for which the message is being generated")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.current_reference_price = ProtoField.new("Current Reference Price", "nasdaq.nsmequities.totalview.itch.v5.0.2018.currentreferenceprice", ftypes.DOUBLE, nil, nil, nil, "The price at which the NOII shares are being calculated")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.debug_text = ProtoField.new("Debug Text", "nasdaq.nsmequities.totalview.itch.v5.0.2018.debugtext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.nsmequities.totalview.itch.v5.0.2018.etpflag", ftypes.STRING, nil, nil, nil, "Indicates whether the security is an exchange traded product")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.nsmequities.totalview.itch.v5.0.2018.etpleveragefactor", ftypes.UINT32, nil, nil, nil, "Tracks the integral relationship of the ETP to the underlying index")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.event_code = ProtoField.new("Event Code", "nasdaq.nsmequities.totalview.itch.v5.0.2018.eventcode", ftypes.STRING, nil, nil, nil, "System Event Codes")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.executed_shares = ProtoField.new("Executed Shares", "nasdaq.nsmequities.totalview.itch.v5.0.2018.executedshares", ftypes.UINT32, nil, nil, nil, "The number of shares executed")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.execution_price = ProtoField.new("Execution Price", "nasdaq.nsmequities.totalview.itch.v5.0.2018.executionprice", ftypes.DOUBLE, nil, nil, nil, "The price at which the order execution occurred")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.far_price = ProtoField.new("Far Price", "nasdaq.nsmequities.totalview.itch.v5.0.2018.farprice", ftypes.DOUBLE, nil, nil, nil, "A hypothetical auction-clearing price for cross orders only")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.nsmequities.totalview.itch.v5.0.2018.financialstatusindicator", ftypes.STRING, nil, nil, nil, "Indicates when a firm is not in compliance with NASDAQ continued listing requirements")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.nsmequities.totalview.itch.v5.0.2018.imbalancedirection", ftypes.STRING, nil, nil, nil, "The market side of the order imbalance")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.imbalance_shares = ProtoField.new("Imbalance Shares", "nasdaq.nsmequities.totalview.itch.v5.0.2018.imbalanceshares", ftypes.UINT64, nil, nil, nil, "The number of shares not paired at the Current Reference Price")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.interest_flag = ProtoField.new("Interest Flag", "nasdaq.nsmequities.totalview.itch.v5.0.2018.interestflag", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.nsmequities.totalview.itch.v5.0.2018.inverseindicator", ftypes.STRING, nil, nil, nil, "Indicates the directional relationship between the ETP and underlying index. Example: An ETP Leverage Factor of 3 and an Inverse value of 'Y' indicates the ETP will decrease by a value of 3.")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.nsmequities.totalview.itch.v5.0.2018.ipoflag", ftypes.STRING, nil, nil, nil, "Indicates if the NASDAQ security is set up for IPO release")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.ipo_price = ProtoField.new("Ipo Price", "nasdaq.nsmequities.totalview.itch.v5.0.2018.ipoprice", ftypes.DOUBLE, nil, nil, nil, "Denotes the IPO price to be used for intraday net change calculations")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.ipo_quotation_release_qualifier = ProtoField.new("Ipo Quotation Release Qualifier", "nasdaq.nsmequities.totalview.itch.v5.0.2018.ipoquotationreleasequalifier", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.ipo_quotation_release_time = ProtoField.new("Ipo Quotation Release Time", "nasdaq.nsmequities.totalview.itch.v5.0.2018.ipoquotationreleasetime", ftypes.UINT32, nil, nil, nil, "Denotes the IPO release time, in seconds since midnight, for quotation to the nearest second")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.nsmequities.totalview.itch.v5.0.2018.issueclassification", ftypes.STRING, nil, nil, nil, "Identifies the security class for the issue as assigned by NASDAQ")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.issue_sub_type = ProtoField.new("Issue Sub Type", "nasdaq.nsmequities.totalview.itch.v5.0.2018.issuesubtype", ftypes.STRING, nil, nil, nil, "Identifies the security sub-type for the issue as assigned by NASDAQ")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.level_1 = ProtoField.new("Level 1", "nasdaq.nsmequities.totalview.itch.v5.0.2018.level1", ftypes.DOUBLE, nil, nil, nil, "Denotes the MWCB Level 1 Value.")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.level_2 = ProtoField.new("Level 2", "nasdaq.nsmequities.totalview.itch.v5.0.2018.level2", ftypes.DOUBLE, nil, nil, nil, "Denotes the MWCB Level 2 Value.")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.level_3 = ProtoField.new("Level 3", "nasdaq.nsmequities.totalview.itch.v5.0.2018.level3", ftypes.DOUBLE, nil, nil, nil, "Denotes the MWCB Level 3 Value.")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.locate_code = ProtoField.new("Locate Code", "nasdaq.nsmequities.totalview.itch.v5.0.2018.locatecode", ftypes.UINT16, nil, nil, nil, "Locate code identifying the security")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.lower_auction_collar_price = ProtoField.new("Lower Auction Collar Price", "nasdaq.nsmequities.totalview.itch.v5.0.2018.lowerauctioncollarprice", ftypes.DOUBLE, nil, nil, nil, "Indicates the price of the lower auction collar threshold")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.nsmequities.totalview.itch.v5.0.2018.luldreferencepricetier", ftypes.STRING, nil, nil, nil, "Indicates which Limit Up / Limit Down price band calculation parameter is to be used for the instrument")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.market_category = ProtoField.new("Market Category", "nasdaq.nsmequities.totalview.itch.v5.0.2018.marketcategory", ftypes.STRING, nil, nil, nil, "Indicates listing market or listing market tier for the issue")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.market_code = ProtoField.new("Market Code", "nasdaq.nsmequities.totalview.itch.v5.0.2018.marketcode", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.market_maker_mode = ProtoField.new("Market Maker Mode", "nasdaq.nsmequities.totalview.itch.v5.0.2018.marketmakermode", ftypes.STRING, nil, nil, nil, "Indicates the quoting participant's registration status in relation to SEC Rules 101 and 104 of Regulation M")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.market_participant_state = ProtoField.new("Market Participant State", "nasdaq.nsmequities.totalview.itch.v5.0.2018.marketparticipantstate", ftypes.STRING, nil, nil, nil, "Indicates the market participant's current registration status in the issue")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.match_number = ProtoField.new("Match Number", "nasdaq.nsmequities.totalview.itch.v5.0.2018.matchnumber", ftypes.UINT64, nil, nil, nil, "The Nasdaq generated day-unique Match Number of this execution")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.message_count = ProtoField.new("Message Count", "nasdaq.nsmequities.totalview.itch.v5.0.2018.messagecount", ftypes.UINT16, nil, nil, nil, "Number of messages to follow this header")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.message_length = ProtoField.new("Message Length", "nasdaq.nsmequities.totalview.itch.v5.0.2018.messagelength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.message_type = ProtoField.new("Message Type", "nasdaq.nsmequities.totalview.itch.v5.0.2018.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.mpid = ProtoField.new("Mpid", "nasdaq.nsmequities.totalview.itch.v5.0.2018.mpid", ftypes.STRING, nil, nil, nil, "Denotes the market participant identifier for which the position message is being generated")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.near_price = ProtoField.new("Near Price", "nasdaq.nsmequities.totalview.itch.v5.0.2018.nearprice", ftypes.DOUBLE, nil, nil, nil, "A hypothetical auction-clearing price for cross orders as well as continuous orders")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.new_order_reference_number = ProtoField.new("New Order Reference Number", "nasdaq.nsmequities.totalview.itch.v5.0.2018.neworderreferencenumber", ftypes.UINT64, nil, nil, nil, "The new reference number for this order at time of replacement")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.operational_halt_action = ProtoField.new("Operational Halt Action", "nasdaq.nsmequities.totalview.itch.v5.0.2018.operationalhaltaction", ftypes.STRING, nil, nil, nil, "Indicates the operational halt action for the security")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.nsmequities.totalview.itch.v5.0.2018.orderreferencenumber", ftypes.UINT64, nil, nil, nil, "The unique reference number assigned to the new order at the time of receipt")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.original_order_reference_number = ProtoField.new("Original Order Reference Number", "nasdaq.nsmequities.totalview.itch.v5.0.2018.originalorderreferencenumber", ftypes.UINT64, nil, nil, nil, "The original reference number of the order being replaced")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.nsmequities.totalview.itch.v5.0.2018.packetlength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.paired_shares = ProtoField.new("Paired Shares", "nasdaq.nsmequities.totalview.itch.v5.0.2018.pairedshares", ftypes.UINT64, nil, nil, nil, "The total number of shares that are eligible to be matched at the Current Reference Price")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.password = ProtoField.new("Password", "nasdaq.nsmequities.totalview.itch.v5.0.2018.password", ftypes.STRING, nil, nil, nil, "Login password")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.price = ProtoField.new("Price", "nasdaq.nsmequities.totalview.itch.v5.0.2018.price", ftypes.DOUBLE, nil, nil, nil, "The display price of the new order")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.price_variation_indicator = ProtoField.new("Price Variation Indicator", "nasdaq.nsmequities.totalview.itch.v5.0.2018.pricevariationindicator", ftypes.STRING, nil, nil, nil, "Indicates the absolute value of the percentage of deviation of the Near Indicative Clearing Price to the nearest Current Reference Price")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.primary_market_maker = ProtoField.new("Primary Market Maker", "nasdaq.nsmequities.totalview.itch.v5.0.2018.primarymarketmaker", ftypes.STRING, nil, nil, nil, "Indicates if the market participant firm qualifies as a Primary Market Maker in accordance with NASDAQ marketplace rules")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.printable = ProtoField.new("Printable", "nasdaq.nsmequities.totalview.itch.v5.0.2018.printable", ftypes.STRING, nil, nil, nil, "Indicates if the execution should be reflected on time and sale displays and volume calculations")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.reason_code = ProtoField.new("Reason Code", "nasdaq.nsmequities.totalview.itch.v5.0.2018.reasoncode", ftypes.STRING, nil, nil, nil, "Trading Action reason")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.nsmequities.totalview.itch.v5.0.2018.regshoaction", ftypes.STRING, nil, nil, nil, "Denotes the Reg SHO Short Sale Price Test Restriction status for the issue at the time of the message dissemination")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.nsmequities.totalview.itch.v5.0.2018.rejectreasoncode", ftypes.STRING, nil, nil, nil, "Login Reject Codes")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.nsmequities.totalview.itch.v5.0.2018.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies the next sequence number in ASCII the client wants to receive upon connection, or 0 to start receiving the most recently generated message.")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.nsmequities.totalview.itch.v5.0.2018.requestedsession", ftypes.STRING, nil, nil, nil, "Specifies the session the client would like to log into, or all blanks to log into the currently active session.")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.reserved = ProtoField.new("Reserved", "nasdaq.nsmequities.totalview.itch.v5.0.2018.reserved", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.nsmequities.totalview.itch.v5.0.2018.roundlotsize", ftypes.UINT32, nil, nil, nil, "Denotes the number of shares that represent a round lot for the issue")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.nsmequities.totalview.itch.v5.0.2018.roundlotsonly", ftypes.STRING, nil, nil, nil, "Indicates if Nasdaq system limits order entry for issue")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nsmequities.totalview.itch.v5.0.2018.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first message to follow this header")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.nsmequities.totalview.itch.v5.0.2018.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Value identifying sequenced message type")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.nsmequities.totalview.itch.v5.0.2018.serverpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the server")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.session = ProtoField.new("Session", "nasdaq.nsmequities.totalview.itch.v5.0.2018.session", ftypes.STRING, nil, nil, nil, "Identity of the multicast session")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.shares = ProtoField.new("Shares", "nasdaq.nsmequities.totalview.itch.v5.0.2018.shares", ftypes.UINT32, nil, nil, nil, "The total number of shares associated with the order being added to the book")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.nsmequities.totalview.itch.v5.0.2018.shortsalethresholdindicator", ftypes.STRING, nil, nil, nil, "Indicates if a security is subject to mandatory close-out of short sales under SEC Rule 203(b)(3).")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.stock = ProtoField.new("Stock", "nasdaq.nsmequities.totalview.itch.v5.0.2018.stock", ftypes.STRING, nil, nil, nil, "Denotes the security symbol for the issue in the NASDAQ execution system.")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.stock_locate = ProtoField.new("Stock Locate", "nasdaq.nsmequities.totalview.itch.v5.0.2018.stocklocate", ftypes.UINT16, nil, nil, nil, "Locate Code uniquely assigned to the security symbol for the day")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nsmequities.totalview.itch.v5.0.2018.timestamp", ftypes.UINT64, nil, nil, nil, "Nanoseconds since midnight")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.nsmequities.totalview.itch.v5.0.2018.trackingnumber", ftypes.UINT16, nil, nil, nil, "Nasdaq internal tracking number")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.trading_state = ProtoField.new("Trading State", "nasdaq.nsmequities.totalview.itch.v5.0.2018.tradingstate", ftypes.STRING, nil, nil, nil, "Indicates the current trading state for the stock")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.unsequencedmessage", ftypes.BYTES, nil, nil, nil, "The unsequenced (client to server) message carried by the packet, opaque bytes unless an application source dispatches it")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.nsmequities.totalview.itch.v5.0.2018.unsequencedmessagetype", ftypes.STRING, nil, nil, nil, "Value identifying unsequenced message type")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.upper_auction_collar_price = ProtoField.new("Upper Auction Collar Price", "nasdaq.nsmequities.totalview.itch.v5.0.2018.upperauctioncollarprice", ftypes.DOUBLE, nil, nil, nil, "Indicates the price of the upper auction collar threshold")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.username = ProtoField.new("Username", "nasdaq.nsmequities.totalview.itch.v5.0.2018.username", ftypes.STRING, nil, nil, nil, "Session username")

-- Nasdaq NsmEquities TotalView Itch 5.0.2018 Framing
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.client_packet = ProtoField.new("Packet", "nasdaq.nsmequities.totalview.itch.v5.0.2018.clientpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Packet sent by the client")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.client_packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.totalview.itch.v5.0.2018.clientpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the client")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nsmequities.totalview.itch.v5.0.2018.clientsoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the client")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.file = ProtoField.new("File", "nasdaq.nsmequities.totalview.itch.v5.0.2018.file", ftypes.STRING, nil, nil, nil, "Nasdaq historical file: every message of the day, each preceded by its length")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.file_message = ProtoField.new("File Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.filemessage", ftypes.STRING, nil, nil, nil, "Nasdaq historical file message: its length, then the message")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.message = ProtoField.new("Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.message", ftypes.STRING, nil, nil, nil, "Mold Udp64 Message")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.message_header = ProtoField.new("Message Header", "nasdaq.nsmequities.totalview.itch.v5.0.2018.messageheader", ftypes.STRING, nil, nil, nil, "Mold Udp 64 Message Header")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.packet = ProtoField.new("Packet", "nasdaq.nsmequities.totalview.itch.v5.0.2018.packet", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.totalview.itch.v5.0.2018.packetheader", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet Header")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.server_packet = ProtoField.new("Packet", "nasdaq.nsmequities.totalview.itch.v5.0.2018.serverpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Packet sent by the server")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.server_packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.totalview.itch.v5.0.2018.serverpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the server")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nsmequities.totalview.itch.v5.0.2018.serversoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the server")

-- Nasdaq NsmEquities TotalView 5.0.2018 Application Messages
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.add_order_no_mpid_attribution_message = ProtoField.new("Add Order No Mpid Attribution Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.addordernompidattributionmessage", ftypes.STRING, nil, nil, nil, "This message will be generated for unattributed orders accepted by the Nasdaq system")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.add_order_with_mpid_attribution_message = ProtoField.new("Add Order With Mpid Attribution Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.addorderwithmpidattributionmessage", ftypes.STRING, nil, nil, nil, "This message will be generated for attributed orders and quotations accepted by the Nasdaq system")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.brokentrademessage", ftypes.STRING, nil, nil, nil, "The Broken Trade Message is sent whenever an execution on Nasdaq is broken")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.cross_trade_message = ProtoField.new("Cross Trade Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.crosstrademessage", ftypes.STRING, nil, nil, nil, "Cross Trade message indicates that Nasdaq has completed its cross process for a specific security")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.ipo_quoting_period_update = ProtoField.new("Ipo Quoting Period Update", "nasdaq.nsmequities.totalview.itch.v5.0.2018.ipoquotingperiodupdate", ftypes.STRING, nil, nil, nil, "Indicates the anticipated IPO quotation release time of a security.")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.luld_auction_collar_message = ProtoField.new("Luld Auction Collar Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.luldauctioncollarmessage", ftypes.STRING, nil, nil, nil, "Indicates the auction collar thresholds within which a paused security can reopen following a LULD trading pause")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.market_participant_position_message = ProtoField.new("Market Participant Position Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.marketparticipantpositionmessage", ftypes.STRING, nil, nil, nil, "Nasdaq will send out this message only if Nasdaq Operations changes the status of a market participant firm in an issue")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.mwcb_decline_level_message = ProtoField.new("Mwcb Decline Level Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.mwcbdeclinelevelmessage", ftypes.STRING, nil, nil, nil, "Informs data recipients what the daily MWCB breach points are set to for the current trading day.")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.mwcb_status_level_message = ProtoField.new("Mwcb Status Level Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.mwcbstatuslevelmessage", ftypes.STRING, nil, nil, nil, "Informs data recipients when a MWCB has breached one of the established levels")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.net_order_imbalance_indicator_message = ProtoField.new("Net Order Imbalance Indicator Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.netorderimbalanceindicatormessage", ftypes.STRING, nil, nil, nil, "NASDAQ disseminates NOII data")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.non_cross_trade_message = ProtoField.new("Non Cross Trade Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.noncrosstrademessage", ftypes.STRING, nil, nil, nil, "Trade Messages should be included in NASDAQ time-and-sales displays as well as volume and other market statistics")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.operational_halt_message = ProtoField.new("Operational Halt Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.operationalhaltmessage", ftypes.STRING, nil, nil, nil, "An Operational Halt means that there has been an interruption of service on the identified security impacting only the designated Market Center")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.ordercancelmessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever an order on the book is modified as a result of a partial cancellation")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.order_delete_message = ProtoField.new("Order Delete Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.orderdeletemessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever an order on the book is being cancelled")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.order_executed_message = ProtoField.new("Order Executed Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever an order on the book is executed in whole or in part")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.orderexecutedwithpricemessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever an order on the book is executed in whole or in part at a price different from the initial display price")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.order_replace_message = ProtoField.new("Order Replace Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.orderreplacemessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever an order on the book has been cancel-replaced")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING, nil, nil, nil, "Nasaq processes orders based on the most Reg SHO Restriction status value")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.retail_price_improvement_indicator_message = ProtoField.new("Retail Price Improvement Indicator Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.retailpriceimprovementindicatormessage", ftypes.STRING, nil, nil, nil, "Identifies a retail interest indication of the Bid, Ask or both the Bid and Ask for NASDAQ-listed securities.")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.stockdirectorymessage", ftypes.STRING, nil, nil, nil, "Market data redistributors should process this message to populate the Financial Status Indicator (required display field) and the Market Category (recommended display field) for NASDAQ-listed issues.")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.stocktradingactionmessage", ftypes.STRING, nil, nil, nil, "Nasdaq uses this administrative message to indicate the current trading status of a security to the trading community")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nsmequities.totalview.itch.v5.0.2018.systemeventmessage", ftypes.STRING, nil, nil, nil, "The system event message type is used to signal a market or data feed handler event")

-- Nasdaq NsmEquities TotalView 5.0.2018 Session Messages
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "nasdaq.nsmequities.totalview.itch.v5.0.2018.clientheartbeat", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client sends a heartbeat to indicate the connection is alive; carries no payload")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.nsmequities.totalview.itch.v5.0.2018.debugpacket", ftypes.STRING, nil, nil, nil, "Debug packets are intended to provide human readable text that may aid in debugging problems")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.nsmequities.totalview.itch.v5.0.2018.endofsession", ftypes.BYTES, nil, nil, nil, "Mold Udp64 end of session")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.nsmequities.totalview.itch.v5.0.2018.heartbeat", ftypes.BYTES, nil, nil, nil, "Mold Udp64 heartbeat")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.nsmequities.totalview.itch.v5.0.2018.loginacceptedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends a Login Accepted Packet in response to receiving a valid Login Request from the client")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.nsmequities.totalview.itch.v5.0.2018.loginrejectedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends this packet in response to an invalid Login Request Packet from the client")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.nsmequities.totalview.itch.v5.0.2018.loginrequestpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP client must send a Login Request Packet immediately upon establishing a new TCP/IP socket connection to the server")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.logout_request = ProtoField.new("Logout Request", "nasdaq.nsmequities.totalview.itch.v5.0.2018.logoutrequest", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client requests session logout; server completes any in-flight messages then closes. Carries no payload")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.nsmequities.totalview.itch.v5.0.2018.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Sequenced Data Packets act as an envelope to carry the actual sequenced data messages that are transferred from the server to the client. Each Sequenced Data Packet carries one message from the higher-lever protocol")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "nasdaq.nsmequities.totalview.itch.v5.0.2018.serverheartbeat", ftypes.BYTES, nil, nil, nil, "SoupBinTCP server sends a heartbeat to indicate the connection is alive; carries no payload")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.nsmequities.totalview.itch.v5.0.2018.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Unsequenced Data Packets act as an envelope to carry the actual data messages that are transferred from the client to the server")

-- Nasdaq NsmEquities TotalView Itch 5.0.2018 Generated Fields
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.message_index = ProtoField.new("Message Index", "nasdaq.nsmequities.totalview.itch.v5.0.2018.messageindex", ftypes.UINT16)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.nsmequities.totalview.itch.v5.0.2018.messagesequencenumber", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "nasdaq.nsmequities.totalview.itch.v5.0.2018.sequenceddatapacketsequencenumber", ftypes.UINT64)

-- Nasdaq NsmEquities TotalView Itch 5.0.2018 Expert Info
nasdaq_nsmequities_totalview_itch_v5_0_2018.experts = {}
nasdaq_nsmequities_totalview_itch_v5_0_2018.experts.not_a_number = ProtoExpert.new("nasdaq.nsmequities.totalview.itch.v5.0.2018.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.experts = { nasdaq_nsmequities_totalview_itch_v5_0_2018.experts.not_a_number }

-----------------------------------------------------------------------
-- Nasdaq NsmEquities TotalView Itch 5.0.2018 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp_format = 2

-- Hours behind UTC (America/New_York) for midnight calculation
nasdaq_nsmequities_totalview_itch_v5_0_2018.utc_offset_hours = 5

-- assumed connection role
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NsmEquities TotalView Itch 5.0.2018 Element Dissection Options
show.records = true
show.application_messages = true
show.structs = true
show.headers = true
show.session_messages = true
show.indexes = true
show.sequences = true

-- Register Nasdaq NsmEquities TotalView Itch 5.0.2018 Show Options
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.resolve_records = Pref.bool("Stock Directory Message", show.records, "Cache records and resolve cross-packet lookups")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (America/New_York) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs_changed()

  -- Check if preferences have changed
  if show.records ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.resolve_records then
    show.records = omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.resolve_records
  end
  if show.application_messages ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.show_headers then
    show.headers = omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.show_headers
  end
  if show.session_messages ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.show_structs then
    show.structs = omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.show_indexes then
    show.indexes = omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.show_sequences then
    show.sequences = omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.show_sequences
  end
  if nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp_format ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.timestamp_format then
    nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp_format = omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.timestamp_format
  end
  if nasdaq_nsmequities_totalview_itch_v5_0_2018.utc_offset_hours ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.utc_offset_hours then
    nasdaq_nsmequities_totalview_itch_v5_0_2018.utc_offset_hours = omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_nsmequities_totalview_itch_v5_0_2018.conversation = {}
nasdaq_nsmequities_totalview_itch_v5_0_2018.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nasdaq_nsmequities_totalview_itch_v5_0_2018.stream_frame = nil
nasdaq_nsmequities_totalview_itch_v5_0_2018.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nasdaq_nsmequities_totalview_itch_v5_0_2018.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_nsmequities_totalview_itch_v5_0_2018.conversation.data = function(packet)
  local key = nasdaq_nsmequities_totalview_itch_v5_0_2018.conversation.key(packet)
  local data = nasdaq_nsmequities_totalview_itch_v5_0_2018.conversation.flows[key]
  if data == nil then
    data = { accepted_sequence_number = { last = nil, frames = {} }, stock_directory_message = {}, sequence = { next = nil, frames = {} } }
    nasdaq_nsmequities_totalview_itch_v5_0_2018.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_nsmequities_totalview_itch_v5_0_2018.conversation.current = nil


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

-- ascii digits as an unsigned 64 bit value, nil when the run is no number
ascii_to_uint64 = function(str)
  local digits = str:match("^%s*(%d+)%s*$")

  if digits == nil then
    return nil
  end

  local value = UInt64.new(digits)

  -- UInt64.new stops at its maximum rather than failing, so an overrun would
  -- read as that maximum. Nineteen digits always fit, so only a longer run is
  -- read back and compared against the digits it came from
  if #digits > 19 then
    local significant = digits:match("^0*(%d+)$")

    if tostring(value) ~= significant then
      return nil
    end
  end

  return value
end


-----------------------------------------------------------------------
-- Nasdaq NsmEquities TotalView Itch 5.0.2018 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.accepted_sequence_number, range, value, "Accepted Sequence Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_nsmequities_totalview_itch_v5_0_2018.experts.not_a_number, "Accepted Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_nsmequities_totalview_itch_v5_0_2018.accepted_session = {}

-- Size: Accepted Session
nasdaq_nsmequities_totalview_itch_v5_0_2018.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_nsmequities_totalview_itch_v5_0_2018.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_nsmequities_totalview_itch_v5_0_2018.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Attribution
nasdaq_nsmequities_totalview_itch_v5_0_2018.attribution = {}

-- Size: Attribution
nasdaq_nsmequities_totalview_itch_v5_0_2018.attribution.size = 4

-- Display: Attribution
nasdaq_nsmequities_totalview_itch_v5_0_2018.attribution.display = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
nasdaq_nsmequities_totalview_itch_v5_0_2018.attribution.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.attribution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.attribution, range, value, display)

  return offset + length, value
end

-- Auction Collar Extension
nasdaq_nsmequities_totalview_itch_v5_0_2018.auction_collar_extension = {}

-- Size: Auction Collar Extension
nasdaq_nsmequities_totalview_itch_v5_0_2018.auction_collar_extension.size = 4

-- Display: Auction Collar Extension
nasdaq_nsmequities_totalview_itch_v5_0_2018.auction_collar_extension.display = function(value)
  return "Auction Collar Extension: "..value
end

-- Dissect: Auction Collar Extension
nasdaq_nsmequities_totalview_itch_v5_0_2018.auction_collar_extension.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.auction_collar_extension.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.auction_collar_extension.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.auction_collar_extension, range, value, display)

  return offset + length, value
end

-- Auction Collar Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.auction_collar_reference_price = {}

-- Size: Auction Collar Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.auction_collar_reference_price.size = 4

-- Display: Auction Collar Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.auction_collar_reference_price.display = function(value)
  return "Auction Collar Reference Price: "..value
end

-- Translate: Auction Collar Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.auction_collar_reference_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Auction Collar Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.auction_collar_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.auction_collar_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_totalview_itch_v5_0_2018.auction_collar_reference_price.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.auction_collar_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.auction_collar_reference_price, range, value, display)

  return offset + length, value
end

-- Authenticity
nasdaq_nsmequities_totalview_itch_v5_0_2018.authenticity = {}

-- Size: Authenticity
nasdaq_nsmequities_totalview_itch_v5_0_2018.authenticity.size = 1

-- Display: Authenticity
nasdaq_nsmequities_totalview_itch_v5_0_2018.authenticity.labels = {
  ["P"] = "Authenticity: Live Production (P)",
  ["T"] = "Authenticity: Test (T)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.authenticity.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.authenticity.labels[value] or "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_nsmequities_totalview_itch_v5_0_2018.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Breached Level
nasdaq_nsmequities_totalview_itch_v5_0_2018.breached_level = {}

-- Size: Breached Level
nasdaq_nsmequities_totalview_itch_v5_0_2018.breached_level.size = 1

-- Display: Breached Level
nasdaq_nsmequities_totalview_itch_v5_0_2018.breached_level.labels = {
  ["1"] = "Breached Level: Level 1 (1)",
  ["2"] = "Breached Level: Level 2 (2)",
  ["3"] = "Breached Level: Level 3 (3)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.breached_level.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.breached_level.labels[value] or "Breached Level: Unknown("..value..")"
end

-- Dissect: Breached Level
nasdaq_nsmequities_totalview_itch_v5_0_2018.breached_level.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.breached_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.breached_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.breached_level, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2018.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2018.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2018.buy_sell_indicator.labels = {
  ["B"] = "Buy Sell Indicator: Buy (B)",
  ["S"] = "Buy Sell Indicator: Sell (S)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.buy_sell_indicator.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.buy_sell_indicator.labels[value] or "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2018.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Canceled Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.canceled_shares = {}

-- Size: Canceled Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.canceled_shares.size = 4

-- Display: Canceled Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.canceled_shares.display = function(value)
  return "Canceled Shares: "..value
end

-- Dissect: Canceled Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.canceled_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.canceled_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.canceled_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.canceled_shares, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["L"] = "Packet Type: Login Request Packet (L)",
  ["U"] = "Packet Type: Unsequenced Data Packet (U)",
  ["R"] = "Packet Type: Client Heartbeat Packet (R)",
  ["O"] = "Packet Type: Logout Request Packet (O)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet_type.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Client Packet Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Cross Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_price = {}

-- Size: Cross Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_price.size = 4

-- Display: Cross Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_price.display = function(value)
  return "Cross Price: "..value
end

-- Translate: Cross Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Cross Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_price.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.cross_price, range, value, display)

  return offset + length, value
end

-- Cross Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_shares = {}

-- Size: Cross Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_shares.size = 8

-- Display: Cross Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_shares.display = function(value)
  return "Cross Shares: "..value
end

-- Dissect: Cross Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.cross_shares, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_type = {}

-- Size: Cross Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_type.size = 1

-- Display: Cross Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_type.labels = {
  ["O"] = "Cross Type: Opening (O)",
  ["C"] = "Cross Type: Closing (C)",
  ["H"] = "Cross Type: Halted Or Paused (H)",
  ["I"] = "Cross Type: Intraday Cross And Post Close Cross (I)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_type.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_type.labels[value] or "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Current Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.current_reference_price = {}

-- Size: Current Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.current_reference_price.size = 4

-- Display: Current Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.current_reference_price.display = function(value)
  return "Current Reference Price: "..value
end

-- Translate: Current Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.current_reference_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Current Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.current_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.current_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_totalview_itch_v5_0_2018.current_reference_price.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.current_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.current_reference_price, range, value, display)

  return offset + length, value
end

-- Debug Text
nasdaq_nsmequities_totalview_itch_v5_0_2018.debug_text = {}

-- Display: Debug Text
nasdaq_nsmequities_totalview_itch_v5_0_2018.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect runtime sized field: Debug Text
nasdaq_nsmequities_totalview_itch_v5_0_2018.debug_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.debug_text.display(value, packet, parent, size)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.debug_text, range, value, display)

  return offset + size, value
end

-- Etp Flag
nasdaq_nsmequities_totalview_itch_v5_0_2018.etp_flag = {}

-- Size: Etp Flag
nasdaq_nsmequities_totalview_itch_v5_0_2018.etp_flag.size = 1

-- Display: Etp Flag
nasdaq_nsmequities_totalview_itch_v5_0_2018.etp_flag.display = function(value)
  if value == "Y" then
    return "Etp Flag: Etp (Y)"
  end
  if value == "N" then
    return "Etp Flag: Not Etp (N)"
  end
  if value == " " then
    return "Etp Flag: Not Available (<whitespace>)"
  end

  return "Etp Flag: Unknown("..value..")"
end

-- Dissect: Etp Flag
nasdaq_nsmequities_totalview_itch_v5_0_2018.etp_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.etp_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.etp_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.etp_flag, range, value, display)

  return offset + length, value
end

-- Etp Leverage Factor
nasdaq_nsmequities_totalview_itch_v5_0_2018.etp_leverage_factor = {}

-- Size: Etp Leverage Factor
nasdaq_nsmequities_totalview_itch_v5_0_2018.etp_leverage_factor.size = 4

-- Display: Etp Leverage Factor
nasdaq_nsmequities_totalview_itch_v5_0_2018.etp_leverage_factor.display = function(value)
  return "Etp Leverage Factor: "..value
end

-- Dissect: Etp Leverage Factor
nasdaq_nsmequities_totalview_itch_v5_0_2018.etp_leverage_factor.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.etp_leverage_factor.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.etp_leverage_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.etp_leverage_factor, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nsmequities_totalview_itch_v5_0_2018.event_code = {}

-- Size: Event Code
nasdaq_nsmequities_totalview_itch_v5_0_2018.event_code.size = 1

-- Display: Event Code
nasdaq_nsmequities_totalview_itch_v5_0_2018.event_code.labels = {
  ["O"] = "Event Code: Start Of Messages (O)",
  ["S"] = "Event Code: Start Of System Hours (S)",
  ["Q"] = "Event Code: Start Of Market Hours (Q)",
  ["M"] = "Event Code: End Of Market Hours (M)",
  ["E"] = "Event Code: End Of System Hours (E)",
  ["C"] = "Event Code: End Of Messages (C)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.event_code.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nsmequities_totalview_itch_v5_0_2018.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.executed_shares = {}

-- Size: Executed Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.executed_shares.size = 4

-- Display: Executed Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.executed_shares.display = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.executed_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Execution Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.execution_price = {}

-- Size: Execution Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.execution_price.size = 4

-- Display: Execution Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.execution_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Execution Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.execution_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_totalview_itch_v5_0_2018.execution_price.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Far Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.far_price = {}

-- Size: Far Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.far_price.size = 4

-- Display: Far Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.far_price.display = function(value)
  return "Far Price: "..value
end

-- Translate: Far Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.far_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Far Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.far_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.far_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_totalview_itch_v5_0_2018.far_price.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.far_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.far_price, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2018.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2018.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2018.financial_status_indicator.display = function(value)
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
    return "Financial Status Indicator: Not Available (<whitespace>)"
  end

  return "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2018.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Imbalance Direction
nasdaq_nsmequities_totalview_itch_v5_0_2018.imbalance_direction = {}

-- Size: Imbalance Direction
nasdaq_nsmequities_totalview_itch_v5_0_2018.imbalance_direction.size = 1

-- Display: Imbalance Direction
nasdaq_nsmequities_totalview_itch_v5_0_2018.imbalance_direction.labels = {
  ["B"] = "Imbalance Direction: Buy (B)",
  ["S"] = "Imbalance Direction: Sell (S)",
  ["N"] = "Imbalance Direction: None (N)",
  ["O"] = "Imbalance Direction: Insufficient Orders (O)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.imbalance_direction.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.imbalance_direction.labels[value] or "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
nasdaq_nsmequities_totalview_itch_v5_0_2018.imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Imbalance Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.imbalance_shares = {}

-- Size: Imbalance Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.imbalance_shares.size = 8

-- Display: Imbalance Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.imbalance_shares.display = function(value)
  return "Imbalance Shares: "..value
end

-- Dissect: Imbalance Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.imbalance_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.imbalance_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.imbalance_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.imbalance_shares, range, value, display)

  return offset + length, value
end

-- Interest Flag
nasdaq_nsmequities_totalview_itch_v5_0_2018.interest_flag = {}

-- Size: Interest Flag
nasdaq_nsmequities_totalview_itch_v5_0_2018.interest_flag.size = 1

-- Display: Interest Flag
nasdaq_nsmequities_totalview_itch_v5_0_2018.interest_flag.labels = {
  ["B"] = "Interest Flag: Buy Side (B)",
  ["S"] = "Interest Flag: Sell Side (S)",
  ["A"] = "Interest Flag: Both Sides (A)",
  ["N"] = "Interest Flag: No Rpi Orders Available (N)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.interest_flag.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.interest_flag.labels[value] or "Interest Flag: Unknown("..value..")"
end

-- Dissect: Interest Flag
nasdaq_nsmequities_totalview_itch_v5_0_2018.interest_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.interest_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.interest_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.interest_flag, range, value, display)

  return offset + length, value
end

-- Inverse Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2018.inverse_indicator = {}

-- Size: Inverse Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2018.inverse_indicator.size = 1

-- Display: Inverse Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2018.inverse_indicator.labels = {
  ["Y"] = "Inverse Indicator: Inverse Etp (Y)",
  ["N"] = "Inverse Indicator: Not Inverse Etp (N)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.inverse_indicator.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.inverse_indicator.labels[value] or "Inverse Indicator: Unknown("..value..")"
end

-- Dissect: Inverse Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2018.inverse_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.inverse_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.inverse_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.inverse_indicator, range, value, display)

  return offset + length, value
end

-- Ipo Flag
nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_flag = {}

-- Size: Ipo Flag
nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_flag.size = 1

-- Display: Ipo Flag
nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_flag.display = function(value)
  if value == "Y" then
    return "Ipo Flag: Set Up For Ipo Release (Y)"
  end
  if value == "N" then
    return "Ipo Flag: Not Set Up For Ipo Release (N)"
  end
  if value == " " then
    return "Ipo Flag: Not Available (<whitespace>)"
  end

  return "Ipo Flag: Unknown("..value..")"
end

-- Dissect: Ipo Flag
nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.ipo_flag, range, value, display)

  return offset + length, value
end

-- Ipo Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_price = {}

-- Size: Ipo Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_price.size = 4

-- Display: Ipo Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_price.display = function(value)
  return "Ipo Price: "..value
end

-- Translate: Ipo Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Ipo Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_price.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.ipo_price, range, value, display)

  return offset + length, value
end

-- Ipo Quotation Release Qualifier
nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quotation_release_qualifier = {}

-- Size: Ipo Quotation Release Qualifier
nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quotation_release_qualifier.size = 1

-- Display: Ipo Quotation Release Qualifier
nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quotation_release_qualifier.labels = {
  ["A"] = "Ipo Quotation Release Qualifier: Anticipated Quotation Release Time (A)",
  ["C"] = "Ipo Quotation Release Qualifier: Ipo Release Canceled Or Postponed (C)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quotation_release_qualifier.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quotation_release_qualifier.labels[value] or "Ipo Quotation Release Qualifier: Unknown("..value..")"
end

-- Dissect: Ipo Quotation Release Qualifier
nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quotation_release_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quotation_release_qualifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quotation_release_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.ipo_quotation_release_qualifier, range, value, display)

  return offset + length, value
end

-- Ipo Quotation Release Time
nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quotation_release_time = {}

-- Size: Ipo Quotation Release Time
nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quotation_release_time.size = 4

-- Display: Ipo Quotation Release Time
nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quotation_release_time.display = function(value)
  return "Ipo Quotation Release Time: "..value
end

-- Dissect: Ipo Quotation Release Time
nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quotation_release_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quotation_release_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quotation_release_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.ipo_quotation_release_time, range, value, display)

  return offset + length, value
end

-- Issue Classification
nasdaq_nsmequities_totalview_itch_v5_0_2018.issue_classification = {}

-- Size: Issue Classification
nasdaq_nsmequities_totalview_itch_v5_0_2018.issue_classification.size = 1

-- Display: Issue Classification
nasdaq_nsmequities_totalview_itch_v5_0_2018.issue_classification.labels = {
  ["A"] = "Issue Classification: American Depositary Share (A)",
  ["B"] = "Issue Classification: Bond (B)",
  ["C"] = "Issue Classification: Common Stock (C)",
  ["F"] = "Issue Classification: Depository Receipt (F)",
  ["I"] = "Issue Classification: Sec 144 A (I)",
  ["L"] = "Issue Classification: Limited Partnership (L)",
  ["N"] = "Issue Classification: Notes (N)",
  ["O"] = "Issue Classification: Ordinary Share (O)",
  ["P"] = "Issue Classification: Preferred Stock (P)",
  ["Q"] = "Issue Classification: Other Securities (Q)",
  ["R"] = "Issue Classification: Right (R)",
  ["S"] = "Issue Classification: Shares Of Beneficial Interest (S)",
  ["T"] = "Issue Classification: Convertible Debenture (T)",
  ["U"] = "Issue Classification: Unit (U)",
  ["V"] = "Issue Classification: Units Of Beneficial Interest (V)",
  ["W"] = "Issue Classification: Warrant (W)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.issue_classification.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.issue_classification.labels[value] or "Issue Classification: Unknown("..value..")"
end

-- Dissect: Issue Classification
nasdaq_nsmequities_totalview_itch_v5_0_2018.issue_classification.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.issue_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.issue_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Issue Sub Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.issue_sub_type = {}

-- Size: Issue Sub Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.issue_sub_type.size = 2

-- Display: Issue Sub Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.issue_sub_type.labels = {
  ["A"] = "Issue Sub Type: Preferred Trust Securities (A)",
  ["AI"] = "Issue Sub Type: Alpha Index Et Ns (AI)",
  ["B"] = "Issue Sub Type: Index Based Derivative (B)",
  ["C"] = "Issue Sub Type: Common Shares (C)",
  ["CB"] = "Issue Sub Type: Commodity Based Trust Shares (CB)",
  ["CF"] = "Issue Sub Type: Commodity Futures Trust Shares (CF)",
  ["CL"] = "Issue Sub Type: Commodity Linked Securities (CL)",
  ["CM"] = "Issue Sub Type: Commodity Index Trust Shares (CM)",
  ["CO"] = "Issue Sub Type: Collateralized Mortgage Obligation (CO)",
  ["CT"] = "Issue Sub Type: Currency Trust Shares (CT)",
  ["CU"] = "Issue Sub Type: Commodity Currency Linked Securities (CU)",
  ["CW"] = "Issue Sub Type: Currency Warrants (CW)",
  ["D"] = "Issue Sub Type: Global Depositary Shares (D)",
  ["E"] = "Issue Sub Type: Etf Portfolio Depositary Receipt (E)",
  ["EG"] = "Issue Sub Type: Equity Gold Shares (EG)",
  ["EI"] = "Issue Sub Type: Etn Equity Index Linked Securities (EI)",
  ["EM"] = "Issue Sub Type: Next Shares Exchange Traded Managed Fund (EM)",
  ["EN"] = "Issue Sub Type: Exchange Traded Notes (EN)",
  ["EU"] = "Issue Sub Type: Equity Units (EU)",
  ["F"] = "Issue Sub Type: Holdrs (F)",
  ["FI"] = "Issue Sub Type: Etn Fixed Income Linked Securities (FI)",
  ["FL"] = "Issue Sub Type: Etn Futures Linked Securities (FL)",
  ["G"] = "Issue Sub Type: Global Shares (G)",
  ["I"] = "Issue Sub Type: Etf Index Fund Shares (I)",
  ["IR"] = "Issue Sub Type: Interest Rate (IR)",
  ["IW"] = "Issue Sub Type: Index Warrant (IW)",
  ["IX"] = "Issue Sub Type: Index Linked Exchangeable Notes (IX)",
  ["J"] = "Issue Sub Type: Corporate Backed Trust Security (J)",
  ["L"] = "Issue Sub Type: Contingent Litigation Right (L)",
  ["LL"] = "Issue Sub Type: Limited Liability Company (LL)",
  ["M"] = "Issue Sub Type: Equity Based Derivative (M)",
  ["MF"] = "Issue Sub Type: Managed Fund Shares (MF)",
  ["ML"] = "Issue Sub Type: Etn Multi Factor Index Linked Securities (ML)",
  ["MT"] = "Issue Sub Type: Managed Trust Securities (MT)",
  ["N"] = "Issue Sub Type: Ny Registry Shares (N)",
  ["O"] = "Issue Sub Type: Open Ended Mutual Fund (O)",
  ["P"] = "Issue Sub Type: Privately Held Security (P)",
  ["PP"] = "Issue Sub Type: Poison Pill (PP)",
  ["PU"] = "Issue Sub Type: Partnership Units (PU)",
  ["Q"] = "Issue Sub Type: Closed End Funds (Q)",
  ["R"] = "Issue Sub Type: Reg S (R)",
  ["RC"] = "Issue Sub Type: Commodity Redeemable Commodity Linked Securities (RC)",
  ["RF"] = "Issue Sub Type: Etn Redeemable Futures Linked Securities (RF)",
  ["RT"] = "Issue Sub Type: Reit (RT)",
  ["RU"] = "Issue Sub Type: Commodity Redeemable Currency Linked Securities (RU)",
  ["S"] = "Issue Sub Type: Seed (S)",
  ["SC"] = "Issue Sub Type: Spot Rate Closing (SC)",
  ["SI"] = "Issue Sub Type: Spot Rate Intraday (SI)",
  ["T"] = "Issue Sub Type: Tracking Stock (T)",
  ["TC"] = "Issue Sub Type: Trust Certificates (TC)",
  ["TU"] = "Issue Sub Type: Trust Units (TU)",
  ["U"] = "Issue Sub Type: Portal (U)",
  ["V"] = "Issue Sub Type: Contingent Value Right (V)",
  ["W"] = "Issue Sub Type: Trust Issued Receipts (W)",
  ["WC"] = "Issue Sub Type: World Currency Option (WC)",
  ["X"] = "Issue Sub Type: Trust (X)",
  ["Y"] = "Issue Sub Type: Other (Y)",
  ["Z"] = "Issue Sub Type: Not Applicable (Z)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.issue_sub_type.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.issue_sub_type.labels[value] or "Issue Sub Type: Unknown("..value..")"
end

-- Dissect: Issue Sub Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.issue_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.issue_sub_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.issue_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.issue_sub_type, range, value, display)

  return offset + length, value
end

-- Level 1
nasdaq_nsmequities_totalview_itch_v5_0_2018.level_1 = {}

-- Size: Level 1
nasdaq_nsmequities_totalview_itch_v5_0_2018.level_1.size = 8

-- Display: Level 1
nasdaq_nsmequities_totalview_itch_v5_0_2018.level_1.display = function(value)
  return "Level 1: "..value
end

-- Translate: Level 1
nasdaq_nsmequities_totalview_itch_v5_0_2018.level_1.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 1
nasdaq_nsmequities_totalview_itch_v5_0_2018.level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.level_1.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_totalview_itch_v5_0_2018.level_1.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.level_1, range, value, display)

  return offset + length, value
end

-- Level 2
nasdaq_nsmequities_totalview_itch_v5_0_2018.level_2 = {}

-- Size: Level 2
nasdaq_nsmequities_totalview_itch_v5_0_2018.level_2.size = 8

-- Display: Level 2
nasdaq_nsmequities_totalview_itch_v5_0_2018.level_2.display = function(value)
  return "Level 2: "..value
end

-- Translate: Level 2
nasdaq_nsmequities_totalview_itch_v5_0_2018.level_2.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 2
nasdaq_nsmequities_totalview_itch_v5_0_2018.level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.level_2.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_totalview_itch_v5_0_2018.level_2.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.level_2, range, value, display)

  return offset + length, value
end

-- Level 3
nasdaq_nsmequities_totalview_itch_v5_0_2018.level_3 = {}

-- Size: Level 3
nasdaq_nsmequities_totalview_itch_v5_0_2018.level_3.size = 8

-- Display: Level 3
nasdaq_nsmequities_totalview_itch_v5_0_2018.level_3.display = function(value)
  return "Level 3: "..value
end

-- Translate: Level 3
nasdaq_nsmequities_totalview_itch_v5_0_2018.level_3.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 3
nasdaq_nsmequities_totalview_itch_v5_0_2018.level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.level_3.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_totalview_itch_v5_0_2018.level_3.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.level_3, range, value, display)

  return offset + length, value
end

-- Locate Code
nasdaq_nsmequities_totalview_itch_v5_0_2018.locate_code = {}

-- Size: Locate Code
nasdaq_nsmequities_totalview_itch_v5_0_2018.locate_code.size = 2

-- Display: Locate Code
nasdaq_nsmequities_totalview_itch_v5_0_2018.locate_code.display = function(value)
  return "Locate Code: "..value
end

-- Dissect: Locate Code
nasdaq_nsmequities_totalview_itch_v5_0_2018.locate_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.locate_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.locate_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.locate_code, range, value, display)

  return offset + length, value
end


-- Lookup: Locate Code
nasdaq_nsmequities_totalview_itch_v5_0_2018.locate_code.lookup = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.locate_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.locate_code.display(value, buffer, offset, packet, parent)

  if not show.records then
    parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.locate_code, range, value, display)

    return offset + length, value
  end

  -- Lookup Stock Directory Message record
  local record = nasdaq_nsmequities_totalview_itch_v5_0_2018.conversation.current.stock_directory_message[value]
  if record ~= nil and record.stock ~= nil then
    display = "Locate Code: " .. tostring(record.stock) .. " (" .. tostring(value) .. ")"
  end

  local field_tree = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.locate_code, range, value, display)

  if record ~= nil then
    nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_directory_message.current = record
    if record.tracking_number ~= nil then
      local entry_tracking_number = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.tracking_number, record.tracking_number)
      entry_tracking_number:set_generated()
    end
    if record.stock ~= nil then
      local entry_stock = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.stock, record.stock)
      entry_stock:set_generated()
    end
    if record.market_category ~= nil then
      local entry_market_category = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.market_category, record.market_category)
      entry_market_category:set_generated()
    end
    if record.financial_status_indicator ~= nil then
      local entry_financial_status_indicator = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.financial_status_indicator, record.financial_status_indicator)
      entry_financial_status_indicator:set_generated()
    end
    if record.round_lot_size ~= nil then
      local entry_round_lot_size = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.round_lot_size, record.round_lot_size)
      entry_round_lot_size:set_generated()
    end
    if record.round_lots_only ~= nil then
      local entry_round_lots_only = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.round_lots_only, record.round_lots_only)
      entry_round_lots_only:set_generated()
    end
    if record.issue_classification ~= nil then
      local entry_issue_classification = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.issue_classification, record.issue_classification)
      entry_issue_classification:set_generated()
    end
    if record.issue_sub_type ~= nil then
      local entry_issue_sub_type = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.issue_sub_type, record.issue_sub_type)
      entry_issue_sub_type:set_generated()
    end
    if record.authenticity ~= nil then
      local entry_authenticity = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.authenticity, record.authenticity)
      entry_authenticity:set_generated()
    end
    if record.short_sale_threshold_indicator ~= nil then
      local entry_short_sale_threshold_indicator = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.short_sale_threshold_indicator, record.short_sale_threshold_indicator)
      entry_short_sale_threshold_indicator:set_generated()
    end
    if record.ipo_flag ~= nil then
      local entry_ipo_flag = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.ipo_flag, record.ipo_flag)
      entry_ipo_flag:set_generated()
    end
    if record.luld_reference_price_tier ~= nil then
      local entry_luld_reference_price_tier = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.luld_reference_price_tier, record.luld_reference_price_tier)
      entry_luld_reference_price_tier:set_generated()
    end
    if record.etp_flag ~= nil then
      local entry_etp_flag = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.etp_flag, record.etp_flag)
      entry_etp_flag:set_generated()
    end
    if record.etp_leverage_factor ~= nil then
      local entry_etp_leverage_factor = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.etp_leverage_factor, record.etp_leverage_factor)
      entry_etp_leverage_factor:set_generated()
    end
    if record.inverse_indicator ~= nil then
      local entry_inverse_indicator = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.inverse_indicator, record.inverse_indicator)
      entry_inverse_indicator:set_generated()
    end
  end

  return offset + length, value, record
end

-- Lower Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.lower_auction_collar_price = {}

-- Size: Lower Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.lower_auction_collar_price.size = 4

-- Display: Lower Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.lower_auction_collar_price.display = function(value)
  return "Lower Auction Collar Price: "..value
end

-- Translate: Lower Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.lower_auction_collar_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Lower Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.lower_auction_collar_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.lower_auction_collar_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_totalview_itch_v5_0_2018.lower_auction_collar_price.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.lower_auction_collar_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.lower_auction_collar_price, range, value, display)

  return offset + length, value
end

-- Luld Reference Price Tier
nasdaq_nsmequities_totalview_itch_v5_0_2018.luld_reference_price_tier = {}

-- Size: Luld Reference Price Tier
nasdaq_nsmequities_totalview_itch_v5_0_2018.luld_reference_price_tier.size = 1

-- Display: Luld Reference Price Tier
nasdaq_nsmequities_totalview_itch_v5_0_2018.luld_reference_price_tier.display = function(value)
  if value == "1" then
    return "Luld Reference Price Tier: Tier 1 (1)"
  end
  if value == "2" then
    return "Luld Reference Price Tier: Tier 2 (2)"
  end
  if value == " " then
    return "Luld Reference Price Tier: Not Available (<whitespace>)"
  end

  return "Luld Reference Price Tier: Unknown("..value..")"
end

-- Dissect: Luld Reference Price Tier
nasdaq_nsmequities_totalview_itch_v5_0_2018.luld_reference_price_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.luld_reference_price_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.luld_reference_price_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_nsmequities_totalview_itch_v5_0_2018.market_category = {}

-- Size: Market Category
nasdaq_nsmequities_totalview_itch_v5_0_2018.market_category.size = 1

-- Display: Market Category
nasdaq_nsmequities_totalview_itch_v5_0_2018.market_category.display = function(value)
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
    return "Market Category: Not Available (<whitespace>)"
  end

  return "Market Category: Unknown("..value..")"
end

-- Dissect: Market Category
nasdaq_nsmequities_totalview_itch_v5_0_2018.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.market_category, range, value, display)

  return offset + length, value
end

-- Market Code
nasdaq_nsmequities_totalview_itch_v5_0_2018.market_code = {}

-- Size: Market Code
nasdaq_nsmequities_totalview_itch_v5_0_2018.market_code.size = 1

-- Display: Market Code
nasdaq_nsmequities_totalview_itch_v5_0_2018.market_code.labels = {
  ["Q"] = "Market Code: Nasdaq (Q)",
  ["B"] = "Market Code: Bx (B)",
  ["X"] = "Market Code: Psx (X)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.market_code.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.market_code.labels[value] or "Market Code: Unknown("..value..")"
end

-- Dissect: Market Code
nasdaq_nsmequities_totalview_itch_v5_0_2018.market_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.market_code, range, value, display)

  return offset + length, value
end

-- Market Maker Mode
nasdaq_nsmequities_totalview_itch_v5_0_2018.market_maker_mode = {}

-- Size: Market Maker Mode
nasdaq_nsmequities_totalview_itch_v5_0_2018.market_maker_mode.size = 1

-- Display: Market Maker Mode
nasdaq_nsmequities_totalview_itch_v5_0_2018.market_maker_mode.labels = {
  ["N"] = "Market Maker Mode: Normal (N)",
  ["P"] = "Market Maker Mode: Passive (P)",
  ["S"] = "Market Maker Mode: Syndicate (S)",
  ["R"] = "Market Maker Mode: Pre Syndicate (R)",
  ["L"] = "Market Maker Mode: Penalty (L)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.market_maker_mode.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.market_maker_mode.labels[value] or "Market Maker Mode: Unknown("..value..")"
end

-- Dissect: Market Maker Mode
nasdaq_nsmequities_totalview_itch_v5_0_2018.market_maker_mode.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.market_maker_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.market_maker_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.market_maker_mode, range, value, display)

  return offset + length, value
end

-- Market Participant State
nasdaq_nsmequities_totalview_itch_v5_0_2018.market_participant_state = {}

-- Size: Market Participant State
nasdaq_nsmequities_totalview_itch_v5_0_2018.market_participant_state.size = 1

-- Display: Market Participant State
nasdaq_nsmequities_totalview_itch_v5_0_2018.market_participant_state.labels = {
  ["A"] = "Market Participant State: Active (A)",
  ["E"] = "Market Participant State: Excused (E)",
  ["W"] = "Market Participant State: Withdrawn (W)",
  ["S"] = "Market Participant State: Suspended (S)",
  ["D"] = "Market Participant State: Deleted (D)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.market_participant_state.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.market_participant_state.labels[value] or "Market Participant State: Unknown("..value..")"
end

-- Dissect: Market Participant State
nasdaq_nsmequities_totalview_itch_v5_0_2018.market_participant_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.market_participant_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.market_participant_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.market_participant_state, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.match_number = {}

-- Size: Match Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.match_number.size = 8

-- Display: Match Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_nsmequities_totalview_itch_v5_0_2018.message_count = {}

-- Size: Message Count
nasdaq_nsmequities_totalview_itch_v5_0_2018.message_count.size = 2

-- Display: Message Count
nasdaq_nsmequities_totalview_itch_v5_0_2018.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_nsmequities_totalview_itch_v5_0_2018.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_nsmequities_totalview_itch_v5_0_2018.message_length = {}

-- Size: Message Length
nasdaq_nsmequities_totalview_itch_v5_0_2018.message_length.size = 2

-- Display: Message Length
nasdaq_nsmequities_totalview_itch_v5_0_2018.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_nsmequities_totalview_itch_v5_0_2018.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.message_type = {}

-- Size: Message Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.message_type.size = 1

-- Display: Message Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.message_type.labels = {
  ["S"] = "Message Type: System Event Message (S)",
  ["R"] = "Message Type: Stock Directory Message (R)",
  ["H"] = "Message Type: Stock Trading Action Message (H)",
  ["Y"] = "Message Type: Reg Sho Short Sale Price Test Restricted Indicator Message (Y)",
  ["L"] = "Message Type: Market Participant Position Message (L)",
  ["V"] = "Message Type: Mwcb Decline Level Message (V)",
  ["W"] = "Message Type: Mwcb Status Level Message (W)",
  ["K"] = "Message Type: Ipo Quoting Period Update (K)",
  ["J"] = "Message Type: Luld Auction Collar Message (J)",
  ["h"] = "Message Type: Operational Halt Message (h)",
  ["A"] = "Message Type: Add Order No Mpid Attribution Message (A)",
  ["F"] = "Message Type: Add Order With Mpid Attribution Message (F)",
  ["E"] = "Message Type: Order Executed Message (E)",
  ["C"] = "Message Type: Order Executed With Price Message (C)",
  ["X"] = "Message Type: Order Cancel Message (X)",
  ["D"] = "Message Type: Order Delete Message (D)",
  ["U"] = "Message Type: Order Replace Message (U)",
  ["P"] = "Message Type: Non Cross Trade Message (P)",
  ["Q"] = "Message Type: Cross Trade Message (Q)",
  ["B"] = "Message Type: Broken Trade Message (B)",
  ["I"] = "Message Type: Net Order Imbalance Indicator Message (I)",
  ["N"] = "Message Type: Retail Price Improvement Indicator Message (N)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.message_type.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpid
nasdaq_nsmequities_totalview_itch_v5_0_2018.mpid = {}

-- Size: Mpid
nasdaq_nsmequities_totalview_itch_v5_0_2018.mpid.size = 4

-- Display: Mpid
nasdaq_nsmequities_totalview_itch_v5_0_2018.mpid.display = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
nasdaq_nsmequities_totalview_itch_v5_0_2018.mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.mpid, range, value, display)

  return offset + length, value
end

-- Near Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.near_price = {}

-- Size: Near Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.near_price.size = 4

-- Display: Near Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.near_price.display = function(value)
  return "Near Price: "..value
end

-- Translate: Near Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.near_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Near Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.near_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.near_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_totalview_itch_v5_0_2018.near_price.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.near_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.near_price, range, value, display)

  return offset + length, value
end

-- New Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.new_order_reference_number = {}

-- Size: New Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.new_order_reference_number.size = 8

-- Display: New Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.new_order_reference_number.display = function(value)
  return "New Order Reference Number: "..value
end

-- Dissect: New Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.new_order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.new_order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.new_order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.new_order_reference_number, range, value, display)

  return offset + length, value
end

-- Operational Halt Action
nasdaq_nsmequities_totalview_itch_v5_0_2018.operational_halt_action = {}

-- Size: Operational Halt Action
nasdaq_nsmequities_totalview_itch_v5_0_2018.operational_halt_action.size = 1

-- Display: Operational Halt Action
nasdaq_nsmequities_totalview_itch_v5_0_2018.operational_halt_action.labels = {
  ["H"] = "Operational Halt Action: Halted (H)",
  ["T"] = "Operational Halt Action: Trading Resumed (T)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.operational_halt_action.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.operational_halt_action.labels[value] or "Operational Halt Action: Unknown("..value..")"
end

-- Dissect: Operational Halt Action
nasdaq_nsmequities_totalview_itch_v5_0_2018.operational_halt_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.operational_halt_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.operational_halt_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.operational_halt_action, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Original Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.original_order_reference_number = {}

-- Size: Original Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.original_order_reference_number.size = 8

-- Display: Original Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.original_order_reference_number.display = function(value)
  return "Original Order Reference Number: "..value
end

-- Dissect: Original Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.original_order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.original_order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.original_order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.original_order_reference_number, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_nsmequities_totalview_itch_v5_0_2018.packet_length = {}

-- Size: Packet Length
nasdaq_nsmequities_totalview_itch_v5_0_2018.packet_length.size = 2

-- Display: Packet Length
nasdaq_nsmequities_totalview_itch_v5_0_2018.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_nsmequities_totalview_itch_v5_0_2018.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Paired Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.paired_shares = {}

-- Size: Paired Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.paired_shares.size = 8

-- Display: Paired Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.paired_shares.display = function(value)
  return "Paired Shares: "..value
end

-- Dissect: Paired Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.paired_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.paired_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.paired_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.paired_shares, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_nsmequities_totalview_itch_v5_0_2018.password = {}

-- Size: Password
nasdaq_nsmequities_totalview_itch_v5_0_2018.password.size = 10

-- Display: Password
nasdaq_nsmequities_totalview_itch_v5_0_2018.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_nsmequities_totalview_itch_v5_0_2018.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.password, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.price = {}

-- Size: Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.price.size = 4

-- Display: Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_totalview_itch_v5_0_2018.price.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.price, range, value, display)

  return offset + length, value
end

-- Price Variation Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2018.price_variation_indicator = {}

-- Size: Price Variation Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2018.price_variation_indicator.size = 1

-- Display: Price Variation Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2018.price_variation_indicator.display = function(value)
  if value == "L" then
    return "Price Variation Indicator: Less Than 1 Percent (L)"
  end
  if value == "1" then
    return "Price Variation Indicator: Less Than 2 Percent (1)"
  end
  if value == "2" then
    return "Price Variation Indicator: Less Than 3 Percent (2)"
  end
  if value == "3" then
    return "Price Variation Indicator: Less Than 4 Percent (3)"
  end
  if value == "4" then
    return "Price Variation Indicator: Less Than 5 Percent (4)"
  end
  if value == "5" then
    return "Price Variation Indicator: Less Than 6 Percent (5)"
  end
  if value == "6" then
    return "Price Variation Indicator: Less Than 7 Percent (6)"
  end
  if value == "7" then
    return "Price Variation Indicator: Less Than 8 Percent (7)"
  end
  if value == "8" then
    return "Price Variation Indicator: Less Than 9 Percent (8)"
  end
  if value == "9" then
    return "Price Variation Indicator: Less Than 10 Percent (9)"
  end
  if value == "A" then
    return "Price Variation Indicator: Less Than 20 Percent (A)"
  end
  if value == "B" then
    return "Price Variation Indicator: Less Than 30 Percent (B)"
  end
  if value == "C" then
    return "Price Variation Indicator: More Than 30 Percent (C)"
  end
  if value == " " then
    return "Price Variation Indicator: Not Available (<whitespace>)"
  end

  return "Price Variation Indicator: Unknown("..value..")"
end

-- Dissect: Price Variation Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2018.price_variation_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.price_variation_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.price_variation_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.price_variation_indicator, range, value, display)

  return offset + length, value
end

-- Primary Market Maker
nasdaq_nsmequities_totalview_itch_v5_0_2018.primary_market_maker = {}

-- Size: Primary Market Maker
nasdaq_nsmequities_totalview_itch_v5_0_2018.primary_market_maker.size = 1

-- Display: Primary Market Maker
nasdaq_nsmequities_totalview_itch_v5_0_2018.primary_market_maker.labels = {
  ["Y"] = "Primary Market Maker: Primary (Y)",
  ["N"] = "Primary Market Maker: Non Primary (N)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.primary_market_maker.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.primary_market_maker.labels[value] or "Primary Market Maker: Unknown("..value..")"
end

-- Dissect: Primary Market Maker
nasdaq_nsmequities_totalview_itch_v5_0_2018.primary_market_maker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.primary_market_maker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.primary_market_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.primary_market_maker, range, value, display)

  return offset + length, value
end

-- Printable
nasdaq_nsmequities_totalview_itch_v5_0_2018.printable = {}

-- Size: Printable
nasdaq_nsmequities_totalview_itch_v5_0_2018.printable.size = 1

-- Display: Printable
nasdaq_nsmequities_totalview_itch_v5_0_2018.printable.labels = {
  ["N"] = "Printable: No (N)",
  ["Y"] = "Printable: Yes (Y)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.printable.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.printable.labels[value] or "Printable: Unknown("..value..")"
end

-- Dissect: Printable
nasdaq_nsmequities_totalview_itch_v5_0_2018.printable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.printable, range, value, display)

  return offset + length, value
end

-- Reason Code
nasdaq_nsmequities_totalview_itch_v5_0_2018.reason_code = {}

-- Size: Reason Code
nasdaq_nsmequities_totalview_itch_v5_0_2018.reason_code.size = 4

-- Display: Reason Code
nasdaq_nsmequities_totalview_itch_v5_0_2018.reason_code.display = function(value)
  if value == "T1" then
    return "Reason Code: Halt News Pending (T1)"
  end
  if value == "T2" then
    return "Reason Code: Halt News Disseminated (T2)"
  end
  if value == "T5" then
    return "Reason Code: Single Security Trading Pause In Effect (T5)"
  end
  if value == "T6" then
    return "Reason Code: Regulatory Halt Extraordinary Market Activity (T6)"
  end
  if value == "T8" then
    return "Reason Code: Halt Etf (T8)"
  end
  if value == "T12" then
    return "Reason Code: Trading Halted (T12)"
  end
  if value == "H4" then
    return "Reason Code: Halt Non Compliance (H4)"
  end
  if value == "H9" then
    return "Reason Code: Halt Filings Not Current (H9)"
  end
  if value == "H10" then
    return "Reason Code: Halt Sec Trading Suspension (H10)"
  end
  if value == "H11" then
    return "Reason Code: Halt Regulatory Concern (H11)"
  end
  if value == "O1" then
    return "Reason Code: Operations Halt (O1)"
  end
  if value == "LUDP" then
    return "Reason Code: Volatility Trading Pause (LUDP)"
  end
  if value == "LUDS" then
    return "Reason Code: Straddle Condition Trading Pause (LUDS)"
  end
  if value == "MWC1" then
    return "Reason Code: Circuit Breaker Halt Level 1 (MWC1)"
  end
  if value == "MWC2" then
    return "Reason Code: Circuit Breaker Halt Level 2 (MWC2)"
  end
  if value == "MWC3" then
    return "Reason Code: Circuit Breaker Halt Level 3 (MWC3)"
  end
  if value == "MWC0" then
    return "Reason Code: Carry Over Circuit Breaker Halt (MWC0)"
  end
  if value == "IPO1" then
    return "Reason Code: Ipo Issue (IPO1)"
  end
  if value == "M1" then
    return "Reason Code: Corporate Action (M1)"
  end
  if value == "M2" then
    return "Reason Code: Not Available (M2)"
  end
  if value == "T3" then
    return "Reason Code: News And Resumption Times (T3)"
  end
  if value == "T7" then
    return "Reason Code: Trading Pause Quotation Only Period (T7)"
  end
  if value == "R4" then
    return "Reason Code: Qualifications Issues Resolved (R4)"
  end
  if value == "R9" then
    return "Reason Code: Filing Requirements Satisfied (R9)"
  end
  if value == "C3" then
    return "Reason Code: Issuer News Not Forthcoming (C3)"
  end
  if value == "C4" then
    return "Reason Code: Qualifications Halt Ended (C4)"
  end
  if value == "C9" then
    return "Reason Code: Qualifications Halt Concluded (C9)"
  end
  if value == "C11" then
    return "Reason Code: Trade Halt Concluded By Other Regulatory Authority (C11)"
  end
  if value == "MWCQ" then
    return "Reason Code: Market Wide Circuit Breaker Resumption (MWCQ)"
  end
  if value == "R1" then
    return "Reason Code: New Issue Available (R1)"
  end
  if value == "R2" then
    return "Reason Code: Issue Available (R2)"
  end
  if value == "IPOQ" then
    return "Reason Code: Ipo Security Released (IPOQ)"
  end
  if value == "IPOE" then
    return "Reason Code: Ipo Security Positioning Window Extension (IPOE)"
  end
  if value == " " then
    return "Reason Code: Reason Not Available (<whitespace>)"
  end

  return "Reason Code: Unknown("..value..")"
end

-- Dissect: Reason Code
nasdaq_nsmequities_totalview_itch_v5_0_2018.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.reason_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_nsmequities_totalview_itch_v5_0_2018.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_nsmequities_totalview_itch_v5_0_2018.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_nsmequities_totalview_itch_v5_0_2018.reg_sho_action.labels = {
  ["0"] = "Reg Sho Action: No Price Test (0)",
  ["1"] = "Reg Sho Action: Reg Sho Short Sale Price Test Restriction (1)",
  ["2"] = "Reg Sho Action: Test Restriction Remains (2)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.reg_sho_action.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.reg_sho_action.labels[value] or "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
nasdaq_nsmequities_totalview_itch_v5_0_2018.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_nsmequities_totalview_itch_v5_0_2018.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_nsmequities_totalview_itch_v5_0_2018.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_nsmequities_totalview_itch_v5_0_2018.reject_reason_code.labels = {
  ["A"] = "Reject Reason Code: Not Authorized (A)",
  ["S"] = "Reject Reason Code: Session Not Available (S)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.reject_reason_code.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.reject_reason_code.labels[value] or "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
nasdaq_nsmequities_totalview_itch_v5_0_2018.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.requested_sequence_number, range, value, "Requested Sequence Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_nsmequities_totalview_itch_v5_0_2018.experts.not_a_number, "Requested Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_nsmequities_totalview_itch_v5_0_2018.requested_session = {}

-- Size: Requested Session
nasdaq_nsmequities_totalview_itch_v5_0_2018.requested_session.size = 10

-- Display: Requested Session
nasdaq_nsmequities_totalview_itch_v5_0_2018.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_nsmequities_totalview_itch_v5_0_2018.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.requested_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved
nasdaq_nsmequities_totalview_itch_v5_0_2018.reserved = {}

-- Size: Reserved
nasdaq_nsmequities_totalview_itch_v5_0_2018.reserved.size = 1

-- Display: Reserved
nasdaq_nsmequities_totalview_itch_v5_0_2018.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
nasdaq_nsmequities_totalview_itch_v5_0_2018.reserved.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.reserved.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.reserved, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_nsmequities_totalview_itch_v5_0_2018.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_nsmequities_totalview_itch_v5_0_2018.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_nsmequities_totalview_itch_v5_0_2018.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_nsmequities_totalview_itch_v5_0_2018.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Round Lots Only
nasdaq_nsmequities_totalview_itch_v5_0_2018.round_lots_only = {}

-- Size: Round Lots Only
nasdaq_nsmequities_totalview_itch_v5_0_2018.round_lots_only.size = 1

-- Display: Round Lots Only
nasdaq_nsmequities_totalview_itch_v5_0_2018.round_lots_only.labels = {
  ["Y"] = "Round Lots Only: Yes (Y)",
  ["N"] = "Round Lots Only: No (N)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.round_lots_only.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.round_lots_only.labels[value] or "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_nsmequities_totalview_itch_v5_0_2018.round_lots_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.round_lots_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.round_lots_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.sequence_number = {}

-- Size: Sequence Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.sequenced_message_type.display = function(value)
  return "Sequenced Message Type: "..value
end

-- Dissect: Sequenced Message Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["A"] = "Packet Type: Login Accepted Packet (A)",
  ["J"] = "Packet Type: Login Rejected Packet (J)",
  ["S"] = "Packet Type: Sequenced Data Packet (S)",
  ["H"] = "Packet Type: Server Heartbeat Packet (H)",
  ["Z"] = "Packet Type: End Of Session Packet (Z)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet_type.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nsmequities_totalview_itch_v5_0_2018.session = {}

-- Size: Session
nasdaq_nsmequities_totalview_itch_v5_0_2018.session.size = 10

-- Display: Session
nasdaq_nsmequities_totalview_itch_v5_0_2018.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_nsmequities_totalview_itch_v5_0_2018.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.session.size
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

  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.session, range, value, display)

  return offset + length, value
end

-- Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.shares = {}

-- Size: Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.shares.size = 4

-- Display: Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_nsmequities_totalview_itch_v5_0_2018.shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.shares, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator.display = function(value)
  if value == "Y" then
    return "Short Sale Threshold Indicator: Restricted (Y)"
  end
  if value == "N" then
    return "Short Sale Threshold Indicator: Not Restricted (N)"
  end
  if value == " " then
    return "Short Sale Threshold Indicator: Not Available (<whitespace>)"
  end

  return "Short Sale Threshold Indicator: Unknown("..value..")"
end

-- Dissect: Short Sale Threshold Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_nsmequities_totalview_itch_v5_0_2018.stock = {}

-- Size: Stock
nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.size = 8

-- Display: Stock
nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.stock, range, value, display)

  return offset + length, value
end

-- Stock Locate
nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate = {}

-- Size: Stock Locate
nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size = 2

-- Display: Stock Locate
nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.display = function(value)
  return "Stock Locate: "..value
end

-- Dissect: Stock Locate
nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.stock_locate, range, value, display)

  return offset + length, value
end


-- Lookup: Stock Locate
nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.lookup = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.display(value, buffer, offset, packet, parent)

  if not show.records then
    parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.stock_locate, range, value, display)

    return offset + length, value
  end

  -- Lookup Stock Directory Message record
  local record = nasdaq_nsmequities_totalview_itch_v5_0_2018.conversation.current.stock_directory_message[value]
  if record ~= nil and record.stock ~= nil then
    display = "Stock Locate: " .. tostring(record.stock) .. " (" .. tostring(value) .. ")"
  end

  local field_tree = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.stock_locate, range, value, display)

  if record ~= nil then
    nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_directory_message.current = record
    if record.tracking_number ~= nil then
      local entry_tracking_number = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.tracking_number, record.tracking_number)
      entry_tracking_number:set_generated()
    end
    if record.stock ~= nil then
      local entry_stock = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.stock, record.stock)
      entry_stock:set_generated()
    end
    if record.market_category ~= nil then
      local entry_market_category = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.market_category, record.market_category)
      entry_market_category:set_generated()
    end
    if record.financial_status_indicator ~= nil then
      local entry_financial_status_indicator = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.financial_status_indicator, record.financial_status_indicator)
      entry_financial_status_indicator:set_generated()
    end
    if record.round_lot_size ~= nil then
      local entry_round_lot_size = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.round_lot_size, record.round_lot_size)
      entry_round_lot_size:set_generated()
    end
    if record.round_lots_only ~= nil then
      local entry_round_lots_only = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.round_lots_only, record.round_lots_only)
      entry_round_lots_only:set_generated()
    end
    if record.issue_classification ~= nil then
      local entry_issue_classification = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.issue_classification, record.issue_classification)
      entry_issue_classification:set_generated()
    end
    if record.issue_sub_type ~= nil then
      local entry_issue_sub_type = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.issue_sub_type, record.issue_sub_type)
      entry_issue_sub_type:set_generated()
    end
    if record.authenticity ~= nil then
      local entry_authenticity = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.authenticity, record.authenticity)
      entry_authenticity:set_generated()
    end
    if record.short_sale_threshold_indicator ~= nil then
      local entry_short_sale_threshold_indicator = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.short_sale_threshold_indicator, record.short_sale_threshold_indicator)
      entry_short_sale_threshold_indicator:set_generated()
    end
    if record.ipo_flag ~= nil then
      local entry_ipo_flag = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.ipo_flag, record.ipo_flag)
      entry_ipo_flag:set_generated()
    end
    if record.luld_reference_price_tier ~= nil then
      local entry_luld_reference_price_tier = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.luld_reference_price_tier, record.luld_reference_price_tier)
      entry_luld_reference_price_tier:set_generated()
    end
    if record.etp_flag ~= nil then
      local entry_etp_flag = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.etp_flag, record.etp_flag)
      entry_etp_flag:set_generated()
    end
    if record.etp_leverage_factor ~= nil then
      local entry_etp_leverage_factor = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.etp_leverage_factor, record.etp_leverage_factor)
      entry_etp_leverage_factor:set_generated()
    end
    if record.inverse_indicator ~= nil then
      local entry_inverse_indicator = field_tree:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.inverse_indicator, record.inverse_indicator)
      entry_inverse_indicator:set_generated()
    end
  end

  return offset + length, value, record
end

-- Timestamp
nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp = {}

-- Size: Timestamp
nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size = 6

-- Display: Timestamp
nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_nsmequities_totalview_itch_v5_0_2018.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number = {}

-- Size: Tracking Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Trading State
nasdaq_nsmequities_totalview_itch_v5_0_2018.trading_state = {}

-- Size: Trading State
nasdaq_nsmequities_totalview_itch_v5_0_2018.trading_state.size = 1

-- Display: Trading State
nasdaq_nsmequities_totalview_itch_v5_0_2018.trading_state.labels = {
  ["H"] = "Trading State: Halted (H)",
  ["P"] = "Trading State: Paused (P)",
  ["Q"] = "Trading State: Quotation Only Period (Q)",
  ["T"] = "Trading State: Trading (T)",
}

nasdaq_nsmequities_totalview_itch_v5_0_2018.trading_state.display = function(value)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.trading_state.labels[value] or "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
nasdaq_nsmequities_totalview_itch_v5_0_2018.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.unsequenced_message = {}

-- Display: Unsequenced Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Unsequenced Message Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
nasdaq_nsmequities_totalview_itch_v5_0_2018.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Upper Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.upper_auction_collar_price = {}

-- Size: Upper Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.upper_auction_collar_price.size = 4

-- Display: Upper Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.upper_auction_collar_price.display = function(value)
  return "Upper Auction Collar Price: "..value
end

-- Translate: Upper Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.upper_auction_collar_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Upper Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2018.upper_auction_collar_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.upper_auction_collar_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_totalview_itch_v5_0_2018.upper_auction_collar_price.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.upper_auction_collar_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.upper_auction_collar_price, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_nsmequities_totalview_itch_v5_0_2018.username = {}

-- Size: Username
nasdaq_nsmequities_totalview_itch_v5_0_2018.username.size = 6

-- Display: Username
nasdaq_nsmequities_totalview_itch_v5_0_2018.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_nsmequities_totalview_itch_v5_0_2018.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2018.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NsmEquities TotalView Itch 5.0.2018
-----------------------------------------------------------------------

-- Retail Price Improvement Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.retail_price_improvement_indicator_message = {}

-- Size: Retail Price Improvement Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.retail_price_improvement_indicator_message.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.interest_flag.size

-- Display: Retail Price Improvement Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.retail_price_improvement_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Price Improvement Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.retail_price_improvement_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer (record lookup)
  index, stock_locate, stock_locate_record = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.lookup(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Interest Flag: Alpha
  index, interest_flag = nasdaq_nsmequities_totalview_itch_v5_0_2018.interest_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Price Improvement Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.retail_price_improvement_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.retail_price_improvement_indicator_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.retail_price_improvement_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.retail_price_improvement_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.retail_price_improvement_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message = {}

-- Size: Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.paired_shares.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.imbalance_shares.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.imbalance_direction.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.far_price.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.near_price.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.current_reference_price.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_type.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.price_variation_indicator.size

-- Display: Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer (record lookup)
  index, stock_locate, stock_locate_record = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.lookup(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Paired Shares: Integer
  index, paired_shares = nasdaq_nsmequities_totalview_itch_v5_0_2018.paired_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Shares: Integer
  index, imbalance_shares = nasdaq_nsmequities_totalview_itch_v5_0_2018.imbalance_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: Alpha
  index, imbalance_direction = nasdaq_nsmequities_totalview_itch_v5_0_2018.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Far Price: Price (4)
  index, far_price = nasdaq_nsmequities_totalview_itch_v5_0_2018.far_price.dissect(buffer, index, packet, parent)

  -- Near Price: Price (4)
  index, near_price = nasdaq_nsmequities_totalview_itch_v5_0_2018.near_price.dissect(buffer, index, packet, parent)

  -- Current Reference Price: Price (4)
  index, current_reference_price = nasdaq_nsmequities_totalview_itch_v5_0_2018.current_reference_price.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_type.dissect(buffer, index, packet, parent)

  -- Price Variation Indicator: Alpha
  index, price_variation_indicator = nasdaq_nsmequities_totalview_itch_v5_0_2018.price_variation_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.net_order_imbalance_indicator_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.broken_trade_message = {}

-- Size: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.broken_trade_message.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.match_number.size

-- Display: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer (record lookup)
  index, stock_locate, stock_locate_record = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.lookup(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.broken_trade_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_trade_message = {}

-- Size: Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_trade_message.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_shares.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_price.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.match_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_type.size

-- Display: Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer (record lookup)
  index, stock_locate, stock_locate_record = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.lookup(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Cross Shares: Integer
  index, cross_shares = nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_shares.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Cross Price: Price (4)
  index, cross_price = nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_price.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.match_number.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.cross_trade_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Non Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.non_cross_trade_message = {}

-- Size: Non Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.non_cross_trade_message.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.buy_sell_indicator.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.shares.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.price.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.match_number.size

-- Display: Non Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.non_cross_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Non Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.non_cross_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer (record lookup)
  index, stock_locate, stock_locate_record = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.lookup(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_nsmequities_totalview_itch_v5_0_2018.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = nasdaq_nsmequities_totalview_itch_v5_0_2018.shares.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Price: Price (4)
  index, price = nasdaq_nsmequities_totalview_itch_v5_0_2018.price.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Non Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.non_cross_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.non_cross_trade_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.non_cross_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.non_cross_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.non_cross_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replace Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_replace_message = {}

-- Size: Order Replace Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_replace_message.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.original_order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.new_order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.shares.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.price.size

-- Display: Order Replace Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer (record lookup)
  index, stock_locate, stock_locate_record = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.lookup(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Original Order Reference Number: Integer
  index, original_order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.original_order_reference_number.dissect(buffer, index, packet, parent)

  -- New Order Reference Number: Integer
  index, new_order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.new_order_reference_number.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = nasdaq_nsmequities_totalview_itch_v5_0_2018.shares.dissect(buffer, index, packet, parent)

  -- Price: Price (4)
  index, price = nasdaq_nsmequities_totalview_itch_v5_0_2018.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_replace_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.order_replace_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_replace_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_replace_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.order_replace_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_delete_message = {}

-- Size: Order Delete Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_delete_message.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.order_reference_number.size

-- Display: Order Delete Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer (record lookup)
  index, stock_locate, stock_locate_record = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.lookup(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.order_delete_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_cancel_message = {}

-- Size: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_cancel_message.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.canceled_shares.size

-- Display: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer (record lookup)
  index, stock_locate, stock_locate_record = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.lookup(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_reference_number.dissect(buffer, index, packet, parent)

  -- Canceled Shares: Integer
  index, canceled_shares = nasdaq_nsmequities_totalview_itch_v5_0_2018.canceled_shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.order_cancel_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_executed_with_price_message = {}

-- Size: Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_executed_with_price_message.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.executed_shares.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.match_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.printable.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.execution_price.size

-- Display: Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer (record lookup)
  index, stock_locate, stock_locate_record = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.lookup(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_reference_number.dissect(buffer, index, packet, parent)

  -- Executed Shares: Integer
  index, executed_shares = nasdaq_nsmequities_totalview_itch_v5_0_2018.executed_shares.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.match_number.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = nasdaq_nsmequities_totalview_itch_v5_0_2018.printable.dissect(buffer, index, packet, parent)

  -- Execution Price: Price (4)
  index, execution_price = nasdaq_nsmequities_totalview_itch_v5_0_2018.execution_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.order_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_executed_message = {}

-- Size: Order Executed Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_executed_message.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.executed_shares.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.match_number.size

-- Display: Order Executed Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer (record lookup)
  index, stock_locate, stock_locate_record = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.lookup(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_reference_number.dissect(buffer, index, packet, parent)

  -- Executed Shares: Integer
  index, executed_shares = nasdaq_nsmequities_totalview_itch_v5_0_2018.executed_shares.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.order_executed_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order With Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message = {}

-- Size: Add Order With Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.buy_sell_indicator.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.shares.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.price.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.attribution.size

-- Display: Add Order With Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order With Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer (record lookup)
  index, stock_locate, stock_locate_record = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.lookup(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_nsmequities_totalview_itch_v5_0_2018.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = nasdaq_nsmequities_totalview_itch_v5_0_2018.shares.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Price: Price (4)
  index, price = nasdaq_nsmequities_totalview_itch_v5_0_2018.price.dissect(buffer, index, packet, parent)

  -- Attribution: Alpha
  index, attribution = nasdaq_nsmequities_totalview_itch_v5_0_2018.attribution.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order With Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.add_order_with_mpid_attribution_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order No Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message = {}

-- Size: Add Order No Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.buy_sell_indicator.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.shares.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.price.size

-- Display: Add Order No Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order No Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer (record lookup)
  index, stock_locate, stock_locate_record = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.lookup(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_nsmequities_totalview_itch_v5_0_2018.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = nasdaq_nsmequities_totalview_itch_v5_0_2018.shares.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Price: Price (4)
  index, price = nasdaq_nsmequities_totalview_itch_v5_0_2018.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order No Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.add_order_no_mpid_attribution_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.fields(buffer, offset, packet, parent)
  end
end

-- Operational Halt Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.operational_halt_message = {}

-- Size: Operational Halt Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.operational_halt_message.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.market_code.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.operational_halt_action.size

-- Display: Operational Halt Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.operational_halt_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Operational Halt Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.operational_halt_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer (record lookup)
  index, stock_locate, stock_locate_record = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.lookup(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Market Code: Alpha
  index, market_code = nasdaq_nsmequities_totalview_itch_v5_0_2018.market_code.dissect(buffer, index, packet, parent)

  -- Operational Halt Action: Alpha
  index, operational_halt_action = nasdaq_nsmequities_totalview_itch_v5_0_2018.operational_halt_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Operational Halt Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.operational_halt_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.operational_halt_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.operational_halt_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.operational_halt_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.operational_halt_message.fields(buffer, offset, packet, parent)
  end
end

-- Luld Auction Collar Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.luld_auction_collar_message = {}

-- Size: Luld Auction Collar Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.luld_auction_collar_message.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.auction_collar_reference_price.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.upper_auction_collar_price.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.lower_auction_collar_price.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.auction_collar_extension.size

-- Display: Luld Auction Collar Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.luld_auction_collar_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Luld Auction Collar Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.luld_auction_collar_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer (record lookup)
  index, stock_locate, stock_locate_record = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.lookup(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Auction Collar Reference Price: Price (4)
  index, auction_collar_reference_price = nasdaq_nsmequities_totalview_itch_v5_0_2018.auction_collar_reference_price.dissect(buffer, index, packet, parent)

  -- Upper Auction Collar Price: Price (4)
  index, upper_auction_collar_price = nasdaq_nsmequities_totalview_itch_v5_0_2018.upper_auction_collar_price.dissect(buffer, index, packet, parent)

  -- Lower Auction Collar Price: Price (4)
  index, lower_auction_collar_price = nasdaq_nsmequities_totalview_itch_v5_0_2018.lower_auction_collar_price.dissect(buffer, index, packet, parent)

  -- Auction Collar Extension: Integer
  index, auction_collar_extension = nasdaq_nsmequities_totalview_itch_v5_0_2018.auction_collar_extension.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Luld Auction Collar Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.luld_auction_collar_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.luld_auction_collar_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.luld_auction_collar_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.luld_auction_collar_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.luld_auction_collar_message.fields(buffer, offset, packet, parent)
  end
end

-- Ipo Quoting Period Update
nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quoting_period_update = {}

-- Size: Ipo Quoting Period Update
nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quoting_period_update.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quotation_release_time.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quotation_release_qualifier.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_price.size

-- Display: Ipo Quoting Period Update
nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quoting_period_update.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ipo Quoting Period Update
nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quoting_period_update.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer (record lookup)
  index, stock_locate, stock_locate_record = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.lookup(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Ipo Quotation Release Time: Integer
  index, ipo_quotation_release_time = nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quotation_release_time.dissect(buffer, index, packet, parent)

  -- Ipo Quotation Release Qualifier: Alpha
  index, ipo_quotation_release_qualifier = nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quotation_release_qualifier.dissect(buffer, index, packet, parent)

  -- Ipo Price: Price (4)
  index, ipo_price = nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ipo Quoting Period Update
nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quoting_period_update.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.ipo_quoting_period_update, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quoting_period_update.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quoting_period_update.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quoting_period_update.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Status Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.mwcb_status_level_message = {}

-- Size: Mwcb Status Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.mwcb_status_level_message.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.breached_level.size

-- Display: Mwcb Status Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.mwcb_status_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Status Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.mwcb_status_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer (record lookup)
  index, stock_locate, stock_locate_record = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.lookup(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Breached Level: Alpha
  index, breached_level = nasdaq_nsmequities_totalview_itch_v5_0_2018.breached_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Status Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.mwcb_status_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.mwcb_status_level_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.mwcb_status_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.mwcb_status_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.mwcb_status_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Decline Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.mwcb_decline_level_message = {}

-- Size: Mwcb Decline Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.level_1.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.level_2.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.level_3.size

-- Display: Mwcb Decline Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Decline Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer (record lookup)
  index, stock_locate, stock_locate_record = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.lookup(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Level 1: Price (8)
  index, level_1 = nasdaq_nsmequities_totalview_itch_v5_0_2018.level_1.dissect(buffer, index, packet, parent)

  -- Level 2: Price (8)
  index, level_2 = nasdaq_nsmequities_totalview_itch_v5_0_2018.level_2.dissect(buffer, index, packet, parent)

  -- Level 3: Price (8)
  index, level_3 = nasdaq_nsmequities_totalview_itch_v5_0_2018.level_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Decline Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.mwcb_decline_level_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.market_participant_position_message = {}

-- Size: Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.market_participant_position_message.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.mpid.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.primary_market_maker.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.market_maker_mode.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.market_participant_state.size

-- Display: Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.market_participant_position_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.market_participant_position_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer (record lookup)
  index, stock_locate, stock_locate_record = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.lookup(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Mpid: Alpha
  index, mpid = nasdaq_nsmequities_totalview_itch_v5_0_2018.mpid.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Primary Market Maker: Alpha
  index, primary_market_maker = nasdaq_nsmequities_totalview_itch_v5_0_2018.primary_market_maker.dissect(buffer, index, packet, parent)

  -- Market Maker Mode: Alpha
  index, market_maker_mode = nasdaq_nsmequities_totalview_itch_v5_0_2018.market_maker_mode.dissect(buffer, index, packet, parent)

  -- Market Participant State: Alpha
  index, market_participant_state = nasdaq_nsmequities_totalview_itch_v5_0_2018.market_participant_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.market_participant_position_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.market_participant_position_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.market_participant_position_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.market_participant_position_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.market_participant_position_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message = {}

-- Size: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.locate_code.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.reg_sho_action.size

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Locate Code: Integer (record lookup)
  index, locate_code, locate_code_record = nasdaq_nsmequities_totalview_itch_v5_0_2018.locate_code.lookup(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alpha
  index, reg_sho_action = nasdaq_nsmequities_totalview_itch_v5_0_2018.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.reg_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Trading Action Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_trading_action_message = {}

-- Size: Stock Trading Action Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_trading_action_message.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.trading_state.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.reserved.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.reason_code.size

-- Display: Stock Trading Action Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer (record lookup)
  index, stock_locate, stock_locate_record = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.lookup(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Trading State: Alpha
  index, trading_state = nasdaq_nsmequities_totalview_itch_v5_0_2018.trading_state.dissect(buffer, index, packet, parent)

  -- Reserved: Alpha
  index, reserved = nasdaq_nsmequities_totalview_itch_v5_0_2018.reserved.dissect(buffer, index, packet, parent)

  -- Reason Code: Alpha
  index, reason_code = nasdaq_nsmequities_totalview_itch_v5_0_2018.reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.stock_trading_action_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_directory_message = {}

-- Size: Stock Directory Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_directory_message.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.market_category.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.financial_status_indicator.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.round_lot_size.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.round_lots_only.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.issue_classification.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.issue_sub_type.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.authenticity.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_flag.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.luld_reference_price_tier.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.etp_flag.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.etp_leverage_factor.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.inverse_indicator.size

-- Display: Stock Directory Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Market Category: Alpha
  index, market_category = nasdaq_nsmequities_totalview_itch_v5_0_2018.market_category.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Alpha
  index, financial_status_indicator = nasdaq_nsmequities_totalview_itch_v5_0_2018.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = nasdaq_nsmequities_totalview_itch_v5_0_2018.round_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lots Only: Alpha
  index, round_lots_only = nasdaq_nsmequities_totalview_itch_v5_0_2018.round_lots_only.dissect(buffer, index, packet, parent)

  -- Issue Classification: Alpha
  index, issue_classification = nasdaq_nsmequities_totalview_itch_v5_0_2018.issue_classification.dissect(buffer, index, packet, parent)

  -- Issue Sub Type: Alpha
  index, issue_sub_type = nasdaq_nsmequities_totalview_itch_v5_0_2018.issue_sub_type.dissect(buffer, index, packet, parent)

  -- Authenticity: Alpha
  index, authenticity = nasdaq_nsmequities_totalview_itch_v5_0_2018.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: Alpha
  index, short_sale_threshold_indicator = nasdaq_nsmequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Ipo Flag: Alpha
  index, ipo_flag = nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_flag.dissect(buffer, index, packet, parent)

  -- Luld Reference Price Tier: Alpha
  index, luld_reference_price_tier = nasdaq_nsmequities_totalview_itch_v5_0_2018.luld_reference_price_tier.dissect(buffer, index, packet, parent)

  -- Etp Flag: Alpha
  index, etp_flag = nasdaq_nsmequities_totalview_itch_v5_0_2018.etp_flag.dissect(buffer, index, packet, parent)

  -- Etp Leverage Factor: Integer
  index, etp_leverage_factor = nasdaq_nsmequities_totalview_itch_v5_0_2018.etp_leverage_factor.dissect(buffer, index, packet, parent)

  -- Inverse Indicator: Alpha
  index, inverse_indicator = nasdaq_nsmequities_totalview_itch_v5_0_2018.inverse_indicator.dissect(buffer, index, packet, parent)

  -- Cache Stock Directory Message record by stock_locate
  if show.records and not packet.visited then
    nasdaq_nsmequities_totalview_itch_v5_0_2018.conversation.current.stock_directory_message[stock_locate] = {
      stock_locate = stock_locate,
      tracking_number = tracking_number,
      stock = stock,
      market_category = market_category,
      financial_status_indicator = financial_status_indicator,
      round_lot_size = round_lot_size,
      round_lots_only = round_lots_only,
      issue_classification = issue_classification,
      issue_sub_type = issue_sub_type,
      authenticity = authenticity,
      short_sale_threshold_indicator = short_sale_threshold_indicator,
      ipo_flag = ipo_flag,
      luld_reference_price_tier = luld_reference_price_tier,
      etp_flag = etp_flag,
      etp_leverage_factor = etp_leverage_factor,
      inverse_indicator = inverse_indicator,
    }
  end

  return index
end

-- Dissect: Stock Directory Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.system_event_message = {}

-- Size: System Event Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.system_event_message.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.event_code.size

-- Display: System Event Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: Integer (record lookup)
  index, stock_locate, stock_locate_record = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_locate.lookup(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_nsmequities_totalview_itch_v5_0_2018.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- File Payload
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_payload = {}

-- Dispatch: File Payload
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_payload.dispatch = {
  ["S"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.system_event_message.dissect,
  ["R"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_directory_message.dissect,
  ["H"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_trading_action_message.dissect,
  ["Y"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.dissect,
  ["L"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.market_participant_position_message.dissect,
  ["V"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.dissect,
  ["W"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.mwcb_status_level_message.dissect,
  ["K"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quoting_period_update.dissect,
  ["J"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.luld_auction_collar_message.dissect,
  ["h"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.operational_halt_message.dissect,
  ["A"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.dissect,
  ["F"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.dissect,
  ["E"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_executed_message.dissect,
  ["C"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_executed_with_price_message.dissect,
  ["X"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_cancel_message.dissect,
  ["D"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_delete_message.dissect,
  ["U"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_replace_message.dissect,
  ["P"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.non_cross_trade_message.dissect,
  ["Q"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_trade_message.dissect,
  ["B"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.broken_trade_message.dissect,
  ["I"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.dissect,
  ["N"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.retail_price_improvement_indicator_message.dissect,
}

-- Dissect: File Payload
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nasdaq_nsmequities_totalview_itch_v5_0_2018.file_payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_nsmequities_totalview_itch_v5_0_2018.message_header = {}

-- Size: Message Header
nasdaq_nsmequities_totalview_itch_v5_0_2018.message_header.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.message_length.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.message_type.size

-- Display: Message Header
nasdaq_nsmequities_totalview_itch_v5_0_2018.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nsmequities_totalview_itch_v5_0_2018.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_nsmequities_totalview_itch_v5_0_2018.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 22 values
  index, message_type = nasdaq_nsmequities_totalview_itch_v5_0_2018.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nsmequities_totalview_itch_v5_0_2018.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.message_header.fields(buffer, offset, packet, parent)
  end
end

-- File Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_message = {}

-- Display: File Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: File Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_message.fields = function(buffer, offset, packet, parent, size_of_file_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_nsmequities_totalview_itch_v5_0_2018.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- File Payload: Runtime Type with 22 branches
  index = nasdaq_nsmequities_totalview_itch_v5_0_2018.file_payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: File Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_message.dissect = function(buffer, offset, packet, parent, size_of_file_message)
  local index = offset + size_of_file_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.file_message, buffer(offset, 0))
    local current = nasdaq_nsmequities_totalview_itch_v5_0_2018.file_message.fields(buffer, offset, packet, parent, size_of_file_message)
    parent:set_len(size_of_file_message)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.file_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_totalview_itch_v5_0_2018.file_message.fields(buffer, offset, packet, parent, size_of_file_message)

    return index
  end
end

-- Remaining Bytes For: File Message
local file_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_nsmequities_totalview_itch_v5_0_2018.message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- File
nasdaq_nsmequities_totalview_itch_v5_0_2018.file = {}

-- Verify required size of File packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.file.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nsmequities_totalview_itch_v5_0_2018.message_header.size
end

-- Dissect File
nasdaq_nsmequities_totalview_itch_v5_0_2018.file.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_nsmequities_totalview_itch_v5_0_2018.conversation.data(packet)
  if not packet.visited then
  end
  nasdaq_nsmequities_totalview_itch_v5_0_2018.conversation.current = data

  local index = 0

  -- Dependency for File Message
  local end_of_payload = buffer:len()

  -- File Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_file_message = file_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_file_message):tvb()
      index = nasdaq_nsmequities_totalview_itch_v5_0_2018.file_message.dissect(frame, index, packet, parent, size_of_file_message)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      -- Claim the whole buffer: tcp keeps the bytes from desegment_offset for reassembly
      return end_of_payload
    end
  end

  return index
end

-- Payload
nasdaq_nsmequities_totalview_itch_v5_0_2018.payload = {}

-- Dispatch: Payload
nasdaq_nsmequities_totalview_itch_v5_0_2018.payload.dispatch = {
  ["S"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.system_event_message.dissect,
  ["R"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_directory_message.dissect,
  ["H"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_trading_action_message.dissect,
  ["Y"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.dissect,
  ["L"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.market_participant_position_message.dissect,
  ["V"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.dissect,
  ["W"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.mwcb_status_level_message.dissect,
  ["K"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quoting_period_update.dissect,
  ["J"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.luld_auction_collar_message.dissect,
  ["h"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.operational_halt_message.dissect,
  ["A"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.dissect,
  ["F"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.dissect,
  ["E"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_executed_message.dissect,
  ["C"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_executed_with_price_message.dissect,
  ["X"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_cancel_message.dissect,
  ["D"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_delete_message.dissect,
  ["U"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_replace_message.dissect,
  ["P"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.non_cross_trade_message.dissect,
  ["Q"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_trade_message.dissect,
  ["B"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.broken_trade_message.dissect,
  ["I"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.dissect,
  ["N"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.retail_price_improvement_indicator_message.dissect,
}

-- Dissect: Payload
nasdaq_nsmequities_totalview_itch_v5_0_2018.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nasdaq_nsmequities_totalview_itch_v5_0_2018.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.message = {}

-- Read runtime size of: Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_nsmequities_totalview_itch_v5_0_2018.packet_sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.message_sequence_number, UInt64.new(nasdaq_nsmequities_totalview_itch_v5_0_2018.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_nsmequities_totalview_itch_v5_0_2018.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 22 branches
  index = nasdaq_nsmequities_totalview_itch_v5_0_2018.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_nsmequities_totalview_itch_v5_0_2018.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.message, buffer(offset, 0))
    local current = nasdaq_nsmequities_totalview_itch_v5_0_2018.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_totalview_itch_v5_0_2018.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_nsmequities_totalview_itch_v5_0_2018.end_of_session = {}

-- Display: End Of Session
nasdaq_nsmequities_totalview_itch_v5_0_2018.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nsmequities_totalview_itch_v5_0_2018.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_nsmequities_totalview_itch_v5_0_2018.heartbeat = {}

-- Display: Heartbeat
nasdaq_nsmequities_totalview_itch_v5_0_2018.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_nsmequities_totalview_itch_v5_0_2018.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_nsmequities_totalview_itch_v5_0_2018.messages = {}

-- Dispatch: Messages
nasdaq_nsmequities_totalview_itch_v5_0_2018.messages.dispatch = {
  [0] = nasdaq_nsmequities_totalview_itch_v5_0_2018.heartbeat.dissect,
  [65535] = nasdaq_nsmequities_totalview_itch_v5_0_2018.end_of_session.dissect,
}

-- Dissect: Messages
nasdaq_nsmequities_totalview_itch_v5_0_2018.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = nasdaq_nsmequities_totalview_itch_v5_0_2018.messages.dispatch[message_count]
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
    offset = nasdaq_nsmequities_totalview_itch_v5_0_2018.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2018.packet_header = {}

-- Size: Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2018.packet_header.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.session.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.sequence_number.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.message_count.size

-- Display: Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2018.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2018.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nsmequities_totalview_itch_v5_0_2018.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nsmequities_totalview_itch_v5_0_2018.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_nsmequities_totalview_itch_v5_0_2018.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2018.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.packet = {}

-- Verify required size of Udp packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nsmequities_totalview_itch_v5_0_2018.packet_header.size
end

-- Dissect Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_nsmequities_totalview_itch_v5_0_2018.conversation.data(packet)
  if not packet.visited then
  end
  nasdaq_nsmequities_totalview_itch_v5_0_2018.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nsmequities_totalview_itch_v5_0_2018.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_nsmequities_totalview_itch_v5_0_2018.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end

-- Server Heartbeat
nasdaq_nsmequities_totalview_itch_v5_0_2018.server_heartbeat = {}

-- Display: Server Heartbeat
nasdaq_nsmequities_totalview_itch_v5_0_2018.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
nasdaq_nsmequities_totalview_itch_v5_0_2018.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Sequenced Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.sequenced_message = {}

-- Dispatch: Sequenced Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.sequenced_message.dispatch = {
  ["S"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.system_event_message.dissect,
  ["R"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_directory_message.dissect,
  ["H"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.stock_trading_action_message.dissect,
  ["Y"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.dissect,
  ["L"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.market_participant_position_message.dissect,
  ["V"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.dissect,
  ["W"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.mwcb_status_level_message.dissect,
  ["K"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.ipo_quoting_period_update.dissect,
  ["J"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.luld_auction_collar_message.dissect,
  ["h"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.operational_halt_message.dissect,
  ["A"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.dissect,
  ["F"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.dissect,
  ["E"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_executed_message.dissect,
  ["C"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_executed_with_price_message.dissect,
  ["X"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_cancel_message.dissect,
  ["D"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_delete_message.dissect,
  ["U"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.order_replace_message.dissect,
  ["P"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.non_cross_trade_message.dissect,
  ["Q"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.cross_trade_message.dissect,
  ["B"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.broken_trade_message.dissect,
  ["I"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.dissect,
  ["N"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.retail_price_improvement_indicator_message.dissect,
}

-- Dissect: Sequenced Message
nasdaq_nsmequities_totalview_itch_v5_0_2018.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  local dissect = nasdaq_nsmequities_totalview_itch_v5_0_2018.sequenced_message.dispatch[sequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = nasdaq_nsmequities_totalview_itch_v5_0_2018.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(nasdaq_nsmequities_totalview_itch_v5_0_2018.accepted_sequence_number.current)
      end
      local value = flow.sequence.next
      if value ~= nil then
        if memo == nil then
          memo = {}
          flow.sequence.frames[packet.number] = memo
        end
        memo[#memo + 1] = value
        flow.sequence.next = value + 1
        if show.sequences then
          local sequence = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if nasdaq_nsmequities_totalview_itch_v5_0_2018.stream_frame ~= packet.number or nasdaq_nsmequities_totalview_itch_v5_0_2018.stream_occurrence >= #memo then
          nasdaq_nsmequities_totalview_itch_v5_0_2018.stream_frame = packet.number
          nasdaq_nsmequities_totalview_itch_v5_0_2018.stream_occurrence = 0
        end
        nasdaq_nsmequities_totalview_itch_v5_0_2018.stream_occurrence = nasdaq_nsmequities_totalview_itch_v5_0_2018.stream_occurrence + 1
        local value = memo[nasdaq_nsmequities_totalview_itch_v5_0_2018.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String
  index, sequenced_message_type = nasdaq_nsmequities_totalview_itch_v5_0_2018.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 22 branches
  index = nasdaq_nsmequities_totalview_itch_v5_0_2018.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_nsmequities_totalview_itch_v5_0_2018.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_nsmequities_totalview_itch_v5_0_2018.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_totalview_itch_v5_0_2018.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.login_rejected_packet.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = nasdaq_nsmequities_totalview_itch_v5_0_2018.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.login_accepted_packet.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.accepted_session.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_nsmequities_totalview_itch_v5_0_2018.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.accepted_sequence_number.dissect(buffer, index, packet, parent)

  -- Store Accepted Sequence Number Value
  nasdaq_nsmequities_totalview_itch_v5_0_2018.accepted_sequence_number.current = accepted_sequence_number

  if not packet.visited then
    nasdaq_nsmequities_totalview_itch_v5_0_2018.conversation.current.accepted_sequence_number.last = accepted_sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.debug_packet = {}

-- Calculate size of: Debug Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.debug_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Debug Text
  index = index + buffer(offset + index - 3, 2):uint()

  return index
end

-- Display: Debug Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Debug Text
  local size_of_debug_text = packet_length - 1

  -- Debug Text: 0 Byte Ascii String
  index, debug_text = nasdaq_nsmequities_totalview_itch_v5_0_2018.debug_text.dissect(buffer, index, packet, parent, size_of_debug_text)

  return index
end

-- Dissect: Debug Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_nsmequities_totalview_itch_v5_0_2018.server_payload = {}

-- Dispatch: Server Payload
nasdaq_nsmequities_totalview_itch_v5_0_2018.server_payload.dispatch = {
  ["+"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.debug_packet.dissect,
  ["A"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.login_accepted_packet.dissect,
  ["J"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.login_rejected_packet.dissect,
  ["S"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.sequenced_data_packet.dissect,
  ["H"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.server_heartbeat.dissect,
  ["Z"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.end_of_session.dissect,
}

-- Dissect: Server Payload
nasdaq_nsmequities_totalview_itch_v5_0_2018.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  local dissect = nasdaq_nsmequities_totalview_itch_v5_0_2018.server_payload.dispatch[server_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet_header.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.packet_length.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet_type.size

-- Display: Server Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_nsmequities_totalview_itch_v5_0_2018.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = nasdaq_nsmequities_totalview_itch_v5_0_2018.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_nsmequities_totalview_itch_v5_0_2018.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_totalview_itch_v5_0_2018.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Server Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_nsmequities_totalview_itch_v5_0_2018.conversation.data(packet)
  if not packet.visited then
    data.accepted_sequence_number.frames[packet.number] = data.accepted_sequence_number.last
  end
  nasdaq_nsmequities_totalview_itch_v5_0_2018.accepted_sequence_number.current = data.accepted_sequence_number.frames[packet.number]
  nasdaq_nsmequities_totalview_itch_v5_0_2018.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_server_soup_bin_tcp_packet):tvb()
      index = nasdaq_nsmequities_totalview_itch_v5_0_2018.server_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_server_soup_bin_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      -- Claim the whole buffer: tcp keeps the bytes from desegment_offset for reassembly
      return end_of_payload
    end
  end

  return index
end

-- Logout Request
nasdaq_nsmequities_totalview_itch_v5_0_2018.logout_request = {}

-- Display: Logout Request
nasdaq_nsmequities_totalview_itch_v5_0_2018.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
nasdaq_nsmequities_totalview_itch_v5_0_2018.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
nasdaq_nsmequities_totalview_itch_v5_0_2018.client_heartbeat = {}

-- Display: Client Heartbeat
nasdaq_nsmequities_totalview_itch_v5_0_2018.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
nasdaq_nsmequities_totalview_itch_v5_0_2018.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unsequenced Data Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = nasdaq_nsmequities_totalview_itch_v5_0_2018.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = nasdaq_nsmequities_totalview_itch_v5_0_2018.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_nsmequities_totalview_itch_v5_0_2018.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_nsmequities_totalview_itch_v5_0_2018.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_totalview_itch_v5_0_2018.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.login_request_packet.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.username.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.password.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.requested_session.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_nsmequities_totalview_itch_v5_0_2018.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_nsmequities_totalview_itch_v5_0_2018.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_nsmequities_totalview_itch_v5_0_2018.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_nsmequities_totalview_itch_v5_0_2018.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_nsmequities_totalview_itch_v5_0_2018.client_payload = {}

-- Dispatch: Client Payload
nasdaq_nsmequities_totalview_itch_v5_0_2018.client_payload.dispatch = {
  ["+"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.debug_packet.dissect,
  ["L"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.login_request_packet.dissect,
  ["U"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.unsequenced_data_packet.dissect,
  ["R"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.client_heartbeat.dissect,
  ["O"] = nasdaq_nsmequities_totalview_itch_v5_0_2018.logout_request.dissect,
}

-- Dissect: Client Payload
nasdaq_nsmequities_totalview_itch_v5_0_2018.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  local dissect = nasdaq_nsmequities_totalview_itch_v5_0_2018.client_payload.dispatch[client_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet_header.size =
  nasdaq_nsmequities_totalview_itch_v5_0_2018.packet_length.size + 
  nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet_type.size

-- Display: Client Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_nsmequities_totalview_itch_v5_0_2018.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = nasdaq_nsmequities_totalview_itch_v5_0_2018.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_nsmequities_totalview_itch_v5_0_2018.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2018.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_totalview_itch_v5_0_2018.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Client Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_client_soup_bin_tcp_packet):tvb()
      index = nasdaq_nsmequities_totalview_itch_v5_0_2018.client_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_client_soup_bin_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      -- Claim the whole buffer: tcp keeps the bytes from desegment_offset for reassembly
      return end_of_payload
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.init()
  nasdaq_nsmequities_totalview_itch_v5_0_2018.accepted_sequence_number.current = nil
  nasdaq_nsmequities_totalview_itch_v5_0_2018.conversation.current = nil
  nasdaq_nsmequities_totalview_itch_v5_0_2018.conversation.flows = {}
end

-- Connection roles for Nasdaq NsmEquities TotalView Itch 5.0.2018: Client is the initiator, Server is the acceptor
-- Initiator endpoint of each conversation, recorded from its first frame
local initiators = {}

-- Conversations whose first frame proved to be the acceptor's: the heuristic swaps the sides
local swapped = {}

-- Endpoint key of an address and port
local function endpoint(address, port)
  return tostring(address)..":"..tostring(port)
end


-- Conversation key, the same in both directions
local function conversation(packet)
  local source = endpoint(packet.src, packet.src_port)
  local destination = endpoint(packet.dst, packet.dst_port)

  if source < destination then
    return source.." "..destination
  end

  return destination.." "..source
end


-- Connection role of the frame's sender
nasdaq_nsmequities_totalview_itch_v5_0_2018.role = function(packet)
  if omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.acceptor_port

  if acceptor_port ~= 0 and packet.dst_port == acceptor_port then
    return "initiator"
  end

  if acceptor_port ~= 0 and packet.src_port == acceptor_port then
    return "acceptor"
  end

  local key = conversation(packet)
  local sender = endpoint(packet.src, packet.src_port)

  if initiators[key] == nil then
    initiators[key] = sender
  end

  local sender_initiated = initiators[key] == sender

  if omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.prefs.swap_sides then
    sender_initiated = not sender_initiated
  end

  if swapped[key] then
    sender_initiated = not sender_initiated
  end

  if sender_initiated then
    return "initiator"
  end

  return "acceptor"
end


-- Swap the resolved sides of the frame's conversation
nasdaq_nsmequities_totalview_itch_v5_0_2018.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq NsmEquities TotalView Itch 5.0.2018
function omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.name

  if packet.port_type == 2 then
    -- Dissect protocol
    local protocol = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018, buffer(), omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.description, "("..buffer:len().." Bytes)")
    local role = nasdaq_nsmequities_totalview_itch_v5_0_2018.role(packet)

    if role == "initiator" then
      return nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet.dissect(buffer, packet, protocol)
    end

    return nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet.dissect(buffer, packet, protocol)
  end

  if packet.port_type == 3 then
    -- Dissect protocol
    local protocol = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018, buffer(), omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.description, "("..buffer:len().." Bytes)")
    return nasdaq_nsmequities_totalview_itch_v5_0_2018.packet.dissect(buffer, packet, protocol)
  end
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local client_packet_type = buffer(2, 1):string()

  -- Debug Packet
  if client_packet_type == "+" then
    return true
  end

  -- Login Request Packet
  if client_packet_type == "L" then
    return true
  end

  -- Unsequenced Data Packet
  if client_packet_type == "U" then
    return true
  end

  -- Client Heartbeat
  if client_packet_type == "R" then
    return true
  end

  -- Logout Request
  if client_packet_type == "O" then
    return true
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local server_packet_type = buffer(2, 1):string()

  -- Debug Packet
  if server_packet_type == "+" then
    return true
  end

  -- Login Accepted Packet
  if server_packet_type == "A" then
    return true
  end

  -- Login Rejected Packet
  if server_packet_type == "J" then
    return true
  end

  -- Sequenced Data Packet
  if server_packet_type == "S" then
    return true
  end

  -- Server Heartbeat
  if server_packet_type == "H" then
    return true
  end

  -- End Of Session
  if server_packet_type == "Z" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NsmEquities TotalView Itch 5.0.2018 (Tcp)
local function omi_nasdaq_nsmequities_totalview_itch_v5_0_2018_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not nasdaq_nsmequities_totalview_itch_v5_0_2018.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_totalview_itch_v5_0_2018
  omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NsmEquities TotalView Itch 5.0.2018 (Tcp)
local function omi_nasdaq_nsmequities_totalview_itch_v5_0_2018_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not nasdaq_nsmequities_totalview_itch_v5_0_2018.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_totalview_itch_v5_0_2018
  omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NsmEquities TotalView Itch 5.0.2018 (Udp)
local function omi_nasdaq_nsmequities_totalview_itch_v5_0_2018_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_totalview_itch_v5_0_2018.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_totalview_itch_v5_0_2018
  omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NsmEquities TotalView Itch 5.0.2018 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_nsmequities_totalview_itch_v5_0_2018_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_nsmequities_totalview_itch_v5_0_2018.role(packet)
  local initiator = omi_nasdaq_nsmequities_totalview_itch_v5_0_2018_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_nsmequities_totalview_itch_v5_0_2018_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_nsmequities_totalview_itch_v5_0_2018.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_nsmequities_totalview_itch_v5_0_2018.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq NsmEquities TotalView Itch 5.0.2018
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018:register_heuristic("tcp", omi_nasdaq_nsmequities_totalview_itch_v5_0_2018_tcp_heuristic)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2018:register_heuristic("udp", omi_nasdaq_nsmequities_totalview_itch_v5_0_2018_udp_heuristic)
-- Nasdaq NsmEquities TotalView Itch 5.0.2018 is read from a file by a file handler, so it is registered for no transport; call nasdaq_nsmequities_totalview_itch_v5_0_2018.file.dissect to dissect it

-- Register Nasdaq NsmEquities TotalView Itch 5.0.2018 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018)

-- Register Nasdaq NsmEquities TotalView Itch 5.0.2018 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018)

-----------------------------------------------------------------------
-- File Tree Dissector
-----------------------------------------------------------------------

-- Nasdaq NsmEquities TotalView Itch 5.0.2018 file records: the dissector a file handler's frames name
local omi_nasdaq_nsmequities_totalview_itch_v5_0_2018_file = Proto("Omi.Nasdaq.NsmEquities.TotalView.Itch.v5.0.2018.File", "Nasdaq NsmEquities TotalView Itch 5.0.2018 File")

-- Dissect a frame of a file: what the file opens with, or one record
function omi_nasdaq_nsmequities_totalview_itch_v5_0_2018_file.dissector(buffer, packet, parent)
  packet.cols.protocol = omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.name

  local protocol = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2018, buffer(), omi_nasdaq_nsmequities_totalview_itch_v5_0_2018.description, "("..buffer:len().." Bytes)")
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.file.dissect(buffer, packet, protocol)
end



-----------------------------------------------------------------------
-- File Reader
-----------------------------------------------------------------------

-- File reader state and functions
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler = {}

-- The constants a file opens with, each at its offset
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.constants = {
}

-- How far each element a file opens with extends: a fixed size, or a length read at its start
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.preamble = {
}

-- How the records are framed: their length, and the sizes of the messages their type selects
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.framing = {
  length = { offset = 0, size = 2, big = true, operator = "Plus", operand = 2 },
  header = 3,
  discriminator = { offset = 2, size = 1 },
  arms = {
    ["\083"] = { minimum = 14, maximum = 14 },
    ["\082"] = { minimum = 41, maximum = 41 },
    ["\072"] = { minimum = 27, maximum = 27 },
    ["\089"] = { minimum = 22, maximum = 22 },
    ["\076"] = { minimum = 28, maximum = 28 },
    ["\086"] = { minimum = 37, maximum = 37 },
    ["\087"] = { minimum = 14, maximum = 14 },
    ["\075"] = { minimum = 30, maximum = 30 },
    ["\074"] = { minimum = 37, maximum = 37 },
    ["\104"] = { minimum = 23, maximum = 23 },
    ["\065"] = { minimum = 38, maximum = 38 },
    ["\070"] = { minimum = 42, maximum = 42 },
    ["\069"] = { minimum = 33, maximum = 33 },
    ["\067"] = { minimum = 38, maximum = 38 },
    ["\088"] = { minimum = 25, maximum = 25 },
    ["\068"] = { minimum = 21, maximum = 21 },
    ["\085"] = { minimum = 37, maximum = 37 },
    ["\080"] = { minimum = 46, maximum = 46 },
    ["\081"] = { minimum = 42, maximum = 42 },
    ["\066"] = { minimum = 21, maximum = 21 },
    ["\073"] = { minimum = 52, maximum = 52 },
    ["\078"] = { minimum = 22, maximum = 22 },
  },
}

-- An unsigned integer of a size at an offset (from zero) of a string
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.unsigned = function(bytes, at, size, big)
  local format = "<I"..size
  if big then
    format = ">I"..size
  end
  return (string.unpack(format, bytes, at + 1))
end


-- The bytes an element spans, from the length read at its start
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.measure = function(bytes, at, length)
  local value = nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.unsigned(bytes, at + length.offset, length.size, length.big)
  if length.operator == "Plus" then
    return value + length.operand
  end
  if length.operator == "Minus" then
    return value - length.operand
  end
  if length.operator == "Multiply" then
    return value * length.operand
  end
  if length.operator == "Divide" then
    return value // length.operand
  end
  return value
end


-- Does a record of a length frame the message its type selects, at that message's size?
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.frames = function(bytes, at, total)
  local framing = nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.framing
  if framing.discriminator == nil then
    return true
  end
  local from = at + framing.discriminator.offset
  local arm = framing.arms[bytes:sub(from + 1, from + framing.discriminator.size)]
  if arm == nil or total < arm.minimum then
    return false
  end
  if arm.maximum ~= nil then
    return total <= arm.maximum
  end
  return true
end


-- The layout a file is of: 1 when its first bytes read as a file of the tree (its constants, then up to 16 records framed), else nil
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.recognize = function(file)
  local head = file:read(65536)
  if head == nil then
    return nil
  end
  for _, constant in ipairs(nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.constants) do
    if head:sub(constant.offset + 1, constant.offset + #constant.bytes) ~= constant.bytes then
      return nil
    end
  end

  local position = 0
  for _, extent in ipairs(nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.preamble) do
    if extent.length == nil then
      position = position + extent.fixed
    else
      if position + extent.length.offset + extent.length.size > #head then
        return nil
      end
      position = position + nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.measure(head, position, extent.length)
    end
  end

  local framing = nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.framing
  local framed = 0
  while framed < 16 and position + framing.header <= #head do
    local total = nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.measure(head, position, framing.length)
    if total < framing.header or not nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.frames(head, position, total) then
      return nil
    end
    position = position + total
    framed = framed + 1
  end

  if framed > 0 then
    return 1
  end
  return nil
end


-- The bytes a file opens with: each element it opens with measured where it starts
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.opening = function(file)
  local position = 0
  for _, extent in ipairs(nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.preamble) do
    if extent.length == nil then
      position = position + extent.fixed
    else
      local needed = extent.length.offset + extent.length.size
      file:seek("set", position)
      local head = file:read(needed)
      if head == nil or #head < needed then
        return nil
      end
      position = position + nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.measure(head, 0, extent.length)
    end
  end
  return position
end


-- The frame at an offset, or with none the next: what the file opens with, then one record a frame
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.read = function(file, capture, offset)
  local state = capture.private_table
  if offset == nil then
    offset = state.next or 0
  end

  local size = nil
  if offset == 0 and #nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.preamble > 0 then
    size = nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.opening(file)
  else
    local header = nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.framing.header
    file:seek("set", offset)
    local head = file:read(header)
    if head == nil or #head < header then
      return nil
    end
    size = nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.measure(head, 0, nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.framing.length)
    if size < header then
      return nil
    end
  end
  if size == nil then
    return nil
  end

  file:seek("set", offset)
  local data = file:read(size)
  if data == nil or #data < size then
    return nil
  end
  state.next = offset + size
  return offset, data
end



-----------------------------------------------------------------------
-- File Handler
-----------------------------------------------------------------------

-- File handler state
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.file = {}

-- Exported pdu tags each frame starts with: the dissector it is for, then the end of the tags
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.file.prefix = "\000\012\000\052omi.nasdaq.nsmequities.totalview.itch.v5.0.2018.file\000\000\000\000"

-- The layout a file is of, or nil for a file of no layout
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.file.layout = nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.recognize

-- A record read into a frame, the one at an offset or with none the next: its offset, nil at the end of the file
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.file.frame = function(file, capture, frame, offset)
  local at, data, seconds, nanoseconds = nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.read(file, capture, offset)
  if at == nil then
    return nil
  end
  data = nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.file.prefix .. data
  frame.rec_type = wtap_rec_types.PACKET
  frame.captured_length = #data
  frame.original_length = #data
  frame.flags = wtap_presence_flags.CAP_LEN
  if seconds ~= nil then
    frame.time = NSTime(seconds, nanoseconds)
    frame.flags = wtap_presence_flags.TS + wtap_presence_flags.CAP_LEN
  end
  frame.data = data
  return at
end

-- Nasdaq NsmEquities TotalView Itch 5.0.2018 (Omi) file handler: a heuristic reader, recognising a file by how its records frame
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.file.handler = FileHandler.new("Nasdaq NsmEquities TotalView Itch 5.0.2018 (Omi)", "omi_nasdaq_nsmequities_totalview_itch_v5_0_2018", "Nasdaq NsmEquities TotalView Itch 5.0.2018 (Omi) file", "rh")

-- A file of a layout is this protocol's; read from its start, so its first line is the first frame
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.file.handler.read_open = function(file, capture)
  local layout = nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.file.layout(file)
  if layout == nil then
    return false
  end
  nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.file.variant = layout
  file:seek("set", 0)
  capture.private_table = {}
  capture.encap = wtap_encaps.WIRESHARK_UPPER_PDU
  capture.time_precision = wtap_tsprecs.NSEC
  return true
end

-- The next record, returning its offset in the file
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.file.handler.read = function(file, capture, frame)
  local offset = nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.file.frame(file, capture, frame, nil)
  if offset == nil then
    return false
  end
  return offset
end

-- The record at an offset read before
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.file.handler.seek_read = function(file, capture, frame, offset)
  return nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.file.frame(file, capture, frame, offset) ~= nil
end

-- Nothing is held open beyond the file Wireshark closes
nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.file.handler.read_close = function(file, capture)
  return true
end

nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.file.handler.seq_read_close = function(file, capture)
  return true
end

-- Register Nasdaq NsmEquities TotalView Itch 5.0.2018 (Omi) files
register_filehandler(nasdaq_nsmequities_totalview_itch_v5_0_2018.file_handler.file.handler)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 5.0.2018
--   Date: Saturday, March 3, 2018
--   Specification: NQTVITCHSpecification.pdf
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
