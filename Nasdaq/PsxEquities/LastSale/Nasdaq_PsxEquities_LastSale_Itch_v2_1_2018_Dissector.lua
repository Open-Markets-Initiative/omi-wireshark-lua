-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PsxEquities LastSale Itch 2.1.2018 Protocol
local omi_nasdaq_psxequities_lastsale_itch_v2_1_2018 = Proto("Omi.Nasdaq.PsxEquities.LastSale.Itch.v2.1.2018", "Nasdaq PsxEquities LastSale Itch 2.1.2018")

-- Protocol table
local nasdaq_psxequities_lastsale_itch_v2_1_2018 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PsxEquities LastSale Itch 2.1.2018 Fields
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.psxequities.lastsale.itch.v2.1.2018.authenticity", ftypes.STRING, nil, nil, nil, "Denotes if an issue or quoting participant record is set-up in Nasdaq systems in a live/production, test, or demo state. Please note that firms should only show live issues and quoting participants on public quotation displays.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.breached_level = ProtoField.new("Breached Level", "nasdaq.psxequities.lastsale.itch.v2.1.2018.breachedlevel", ftypes.STRING, nil, nil, nil, "Denotes the MWCB Level that was breached.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.corrected_nav_premium_discount_amount = ProtoField.new("Corrected Nav Premium Discount Amount", "nasdaq.psxequities.lastsale.itch.v2.1.2018.correctednavpremiumdiscountamount", ftypes.DOUBLE, nil, nil, nil, "Indicates the corrected NAV premium or discount originally applied to the Proxy Price.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.corrected_sale_condition_modifier = ProtoField.new("Corrected Sale Condition Modifier", "nasdaq.psxequities.lastsale.itch.v2.1.2018.correctedsaleconditionmodifier", ftypes.STRING, nil, nil, nil, "Denotes the sale condition modifiers associated with the corrected trade transaction.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.corrected_trade_control_number = ProtoField.new("Corrected Trade Control Number", "nasdaq.psxequities.lastsale.itch.v2.1.2018.correctedtradecontrolnumber", ftypes.STRING, nil, nil, nil, "Indicates the PSX internal control number associated with the adjusted trade transaction.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.corrected_trade_price = ProtoField.new("Corrected Trade Price", "nasdaq.psxequities.lastsale.itch.v2.1.2018.correctedtradeprice", ftypes.DOUBLE, nil, nil, nil, "Indicates the price for the corrected trade transaction.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.corrected_trade_size = ProtoField.new("Corrected Trade Size", "nasdaq.psxequities.lastsale.itch.v2.1.2018.correctedtradesize", ftypes.UINT32, nil, nil, nil, "Indicates the number of shares for the corrected trade transaction.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.psxequities.lastsale.itch.v2.1.2018.currenttradingstate", ftypes.STRING, nil, nil, nil, "Reflects the current trading state for the issue.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.psxequities.lastsale.itch.v2.1.2018.etpflag", ftypes.STRING, nil, nil, nil, "Indicates whether the security is an exchange traded product (ETP)")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.psxequities.lastsale.itch.v2.1.2018.etpleveragefactor", ftypes.UINT32, nil, nil, nil, "Tracks the integral relationship of the ETP to the underlying index.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.event_code = ProtoField.new("Event Code", "nasdaq.psxequities.lastsale.itch.v2.1.2018.eventcode", ftypes.STRING, nil, nil, nil, "System Event Codes")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.psxequities.lastsale.itch.v2.1.2018.financialstatusindicator", ftypes.STRING, nil, nil, nil, "For Nasdaq-listed issues, this field indicates when a firm is not in compliance with Nasdaq continued listing requirements.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.psxequities.lastsale.itch.v2.1.2018.inverseindicator", ftypes.STRING, nil, nil, nil, "Indicates the directional relationship between the ETP and underlying index.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.psxequities.lastsale.itch.v2.1.2018.ipoflag", ftypes.STRING, nil, nil, nil, "Indicates if the Nasdaq security is set up for IPO release. This field is intended to help Nasdaq market participant firms comply with FINRA Rule 5131(b).")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.psxequities.lastsale.itch.v2.1.2018.issueclassification", ftypes.STRING, nil, nil, nil, "Identifies the security class for the issue as assigned by Nasdaq.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.issue_sub_type = ProtoField.new("Issue Sub Type", "nasdaq.psxequities.lastsale.itch.v2.1.2018.issuesubtype", ftypes.STRING, nil, nil, nil, "Identifies the security sub-type for the issue as assigned by Nasdaq.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.issue_symbol = ProtoField.new("Issue Symbol", "nasdaq.psxequities.lastsale.itch.v2.1.2018.issuesymbol", ftypes.STRING, nil, nil, nil, "Denotes the security symbol for the issue of the security for which the trade report is being generated.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.level_1 = ProtoField.new("Level 1", "nasdaq.psxequities.lastsale.itch.v2.1.2018.level1", ftypes.DOUBLE, nil, nil, nil, "Denotes the MWCB Level 1 Value.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.level_2 = ProtoField.new("Level 2", "nasdaq.psxequities.lastsale.itch.v2.1.2018.level2", ftypes.DOUBLE, nil, nil, nil, "Denotes the MWCB Level 2 Value.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.level_3 = ProtoField.new("Level 3", "nasdaq.psxequities.lastsale.itch.v2.1.2018.level3", ftypes.DOUBLE, nil, nil, nil, "Denotes the MWCB Level 3 Value.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.psxequities.lastsale.itch.v2.1.2018.luldreferencepricetier", ftypes.STRING, nil, nil, nil, "Indicates which Limit Up / Limit Down price band calculation parameter is to be used for the instrument.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.market_category = ProtoField.new("Market Category", "nasdaq.psxequities.lastsale.itch.v2.1.2018.marketcategory", ftypes.STRING, nil, nil, nil, "Indicates Listing market or listing market tier for the issue")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.market_center_identifier = ProtoField.new("Market Center Identifier", "nasdaq.psxequities.lastsale.itch.v2.1.2018.marketcenteridentifier", ftypes.STRING, nil, nil, nil, "Denotes the PSX market system that generated the trade report message.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.market_code = ProtoField.new("Market Code", "nasdaq.psxequities.lastsale.itch.v2.1.2018.marketcode", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.message_count = ProtoField.new("Message Count", "nasdaq.psxequities.lastsale.itch.v2.1.2018.messagecount", ftypes.UINT16, nil, nil, nil, "Number of messages to follow this header")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.message_length = ProtoField.new("Message Length", "nasdaq.psxequities.lastsale.itch.v2.1.2018.messagelength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.message_type = ProtoField.new("Message Type", "nasdaq.psxequities.lastsale.itch.v2.1.2018.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.nav_premium_discount_amount = ProtoField.new("Nav Premium Discount Amount", "nasdaq.psxequities.lastsale.itch.v2.1.2018.navpremiumdiscountamount", ftypes.DOUBLE, nil, nil, nil, "The NAV premium or discount that should be applied to the Proxy Price.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.next_shares_symbol = ProtoField.new("Next Shares Symbol", "nasdaq.psxequities.lastsale.itch.v2.1.2018.nextsharessymbol", ftypes.STRING, nil, nil, nil, "Denotes the symbol of the NextShares for which the trade report is being generated.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.operational_halt_action = ProtoField.new("Operational Halt Action", "nasdaq.psxequities.lastsale.itch.v2.1.2018.operationalhaltaction", ftypes.STRING, nil, nil, nil, "Indicates the price of the Upper Auction Collar Threshold")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.original_nav_premium_discount_amount = ProtoField.new("Original Nav Premium Discount Amount", "nasdaq.psxequities.lastsale.itch.v2.1.2018.originalnavpremiumdiscountamount", ftypes.DOUBLE, nil, nil, nil, "Original NAV premium or discount originally applied to the Proxy Price.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.original_sale_condition_modifier = ProtoField.new("Original Sale Condition Modifier", "nasdaq.psxequities.lastsale.itch.v2.1.2018.originalsaleconditionmodifier", ftypes.STRING, nil, nil, nil, "Defines the sale condition modifiers as reported on the original trade transaction.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.original_trade_control_number = ProtoField.new("Original Trade Control Number", "nasdaq.psxequities.lastsale.itch.v2.1.2018.originaltradecontrolnumber", ftypes.STRING, nil, nil, nil, "Indicates the PSX system internal control number associated with the given trade transaction.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.original_trade_price = ProtoField.new("Original Trade Price", "nasdaq.psxequities.lastsale.itch.v2.1.2018.originaltradeprice", ftypes.DOUBLE, nil, nil, nil, "Reported price for the transaction.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.original_trade_size = ProtoField.new("Original Trade Size", "nasdaq.psxequities.lastsale.itch.v2.1.2018.originaltradesize", ftypes.UINT32, nil, nil, nil, "Reported number of shares for transaction.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.proxy_price = ProtoField.new("Proxy Price", "nasdaq.psxequities.lastsale.itch.v2.1.2018.proxyprice", ftypes.DOUBLE, nil, nil, nil, "Denotes the proxy price on the NextShares trade transaction")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.psxequities.lastsale.itch.v2.1.2018.regshoaction", ftypes.STRING, nil, nil, nil, "Denotes the Reg SHO Short Sale Price Test Restriction status for the issue at the time of the message dissemination.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.psxequities.lastsale.itch.v2.1.2018.roundlotsize", ftypes.UINT32, nil, nil, nil, "Denotes the number of shares that represent a round lot for the issue")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.psxequities.lastsale.itch.v2.1.2018.roundlotsonly", ftypes.STRING, nil, nil, nil, "Indicates if Nasdaq system limits order entry for issue")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.sale_condition_modifier_level_1 = ProtoField.new("Sale Condition Modifier Level 1", "nasdaq.psxequities.lastsale.itch.v2.1.2018.saleconditionmodifierlevel1", ftypes.STRING, nil, nil, nil, "Sale Condition Modifier Level 1 value")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.sale_condition_modifier_level_2 = ProtoField.new("Sale Condition Modifier Level 2", "nasdaq.psxequities.lastsale.itch.v2.1.2018.saleconditionmodifierlevel2", ftypes.STRING, nil, nil, nil, "Sale Condition Modifier Level 2 value")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.sale_condition_modifier_level_3 = ProtoField.new("Sale Condition Modifier Level 3", "nasdaq.psxequities.lastsale.itch.v2.1.2018.saleconditionmodifierlevel3", ftypes.STRING, nil, nil, nil, "Sale Condition Modifier Level 3 value")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.sale_condition_modifier_level_4 = ProtoField.new("Sale Condition Modifier Level 4", "nasdaq.psxequities.lastsale.itch.v2.1.2018.saleconditionmodifierlevel4", ftypes.STRING, nil, nil, nil, "Sale Condition Modifier Level 4 value")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.security_class = ProtoField.new("Security Class", "nasdaq.psxequities.lastsale.itch.v2.1.2018.securityclass", ftypes.STRING, nil, nil, nil, "Indicates the primary listing market for the issue.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.psxequities.lastsale.itch.v2.1.2018.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first message to follow this header")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.session = ProtoField.new("Session", "nasdaq.psxequities.lastsale.itch.v2.1.2018.session", ftypes.STRING, nil, nil, nil, "Identity of the multicast session")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.psxequities.lastsale.itch.v2.1.2018.shortsalethresholdindicator", ftypes.STRING, nil, nil, nil, "Indicates if a security is subject to mandatory close-out of short sales under SEC Rule 203(b)(3).")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.stock = ProtoField.new("Stock", "nasdaq.psxequities.lastsale.itch.v2.1.2018.stock", ftypes.STRING, nil, nil, nil, "Denotes the security symbol for the issue in Nasdaq execution system")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.psxequities.lastsale.itch.v2.1.2018.timestamp", ftypes.UINT64, nil, nil, nil, "Number of nanoseconds past midnight")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.psxequities.lastsale.itch.v2.1.2018.trackingnumber", ftypes.UINT16, nil, nil, nil, "Internal tracking number")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.trade_control_number = ProtoField.new("Trade Control Number", "nasdaq.psxequities.lastsale.itch.v2.1.2018.tradecontrolnumber", ftypes.STRING, nil, nil, nil, "Indicates the PSX system internal control number associated with the given trade transaction.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.trade_price = ProtoField.new("Trade Price", "nasdaq.psxequities.lastsale.itch.v2.1.2018.tradeprice", ftypes.DOUBLE, nil, nil, nil, "Denotes the report price on the trade transaction.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.trade_size = ProtoField.new("Trade Size", "nasdaq.psxequities.lastsale.itch.v2.1.2018.tradesize", ftypes.UINT32, nil, nil, nil, "Indicates the reported number of shares on the trade transaction.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.trading_action_reason = ProtoField.new("Trading Action Reason", "nasdaq.psxequities.lastsale.itch.v2.1.2018.tradingactionreason", ftypes.STRING, nil, nil, nil, "Reflects the Market Ops or Market Watch code for the trading state change.")

-- Nasdaq PsxEquities LastSale Itch 2.1.2018 Framing
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.message = ProtoField.new("Message", "nasdaq.psxequities.lastsale.itch.v2.1.2018.message", ftypes.STRING, nil, nil, nil, "Itch Message")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.message_header = ProtoField.new("Message Header", "nasdaq.psxequities.lastsale.itch.v2.1.2018.messageheader", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.packet = ProtoField.new("Packet", "nasdaq.psxequities.lastsale.itch.v2.1.2018.packet", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.psxequities.lastsale.itch.v2.1.2018.packetheader", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet Header")

-- Nasdaq PsxEquities LastSale 2.1.2018 Session Messages
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.psxequities.lastsale.itch.v2.1.2018.endofsession", ftypes.BYTES, nil, nil, nil, "Mold Udp64 end of session")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.psxequities.lastsale.itch.v2.1.2018.heartbeat", ftypes.BYTES, nil, nil, nil, "Mold Udp64 heartbeat")

-- Nasdaq PsxEquities LastSale 2.1.2018 Application Messages
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.mwcb_breach_message = ProtoField.new("Mwcb Breach Message", "nasdaq.psxequities.lastsale.itch.v2.1.2018.mwcbbreachmessage", ftypes.STRING, nil, nil, nil, "Informs data recipients when a MWCB has breached one of the established levels")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.mwcb_decline_level_message = ProtoField.new("Mwcb Decline Level Message", "nasdaq.psxequities.lastsale.itch.v2.1.2018.mwcbdeclinelevelmessage", ftypes.STRING, nil, nil, nil, "Informs data recipients what the daily MWCB breach points are set to for the current trading day.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.next_shares_trade_report_message = ProtoField.new("Next Shares Trade Report Message", "nasdaq.psxequities.lastsale.itch.v2.1.2018.nextsharestradereportmessage", ftypes.STRING, nil, nil, nil, "The following message is used to relay PSX execution system and TRF trade transactions for Exchange Traded Managed Funds (NextShares) that are reported for the current business day.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.operational_halt_message = ProtoField.new("Operational Halt Message", "nasdaq.psxequities.lastsale.itch.v2.1.2018.operationalhaltmessage", ftypes.STRING, nil, nil, nil, "Nasdaq uses this administrative message to indicate the current trading status of the three market centers operated by Nasdaq.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.psxequities.lastsale.itch.v2.1.2018.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING, nil, nil, nil, "For Nasdaq-listed issues, Nasdaq supports a full pre-opening spin of Reg SHO Short Sale Price Test Restricted Indicator messages indicating the Rule 201 status for all active issues. Nasdaq also sends the Reg SHO Short Sale Price Test Restricted Indicator message in the event of an intraday status change. For other exchange-listed issues, Nasdaq relays the Reg SHO Short Sale Price Test Restricted Indicator message when it receives an update from the primary listing exchange.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.psxequities.lastsale.itch.v2.1.2018.stockdirectorymessage", ftypes.STRING, nil, nil, nil, "At the start of each trading day, PSX disseminates stock directory messages for all active symbols in the PSX system")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.psxequities.lastsale.itch.v2.1.2018.systemeventmessage", ftypes.STRING, nil, nil, nil, "System Event Messages is used to signal key market or data feed control events.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.trade_cancel_error_for_next_shares_message = ProtoField.new("Trade Cancel Error For Next Shares Message", "nasdaq.psxequities.lastsale.itch.v2.1.2018.tradecancelerrorfornextsharesmessage", ftypes.STRING, nil, nil, nil, "The following message is used in the event that a Nasdaq or TRF trade transaction for an NextShares is cancelled on the same business day that it is reported.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.trade_cancel_error_message = ProtoField.new("Trade Cancel Error Message", "nasdaq.psxequities.lastsale.itch.v2.1.2018.tradecancelerrormessage", ftypes.STRING, nil, nil, nil, "The following message is used in the event that a PSX trade transaction is cancelled on the same business day that it is reported")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.trade_correction_for_next_shares_message = ProtoField.new("Trade Correction For Next Shares Message", "nasdaq.psxequities.lastsale.itch.v2.1.2018.tradecorrectionfornextsharesmessage", ftypes.STRING, nil, nil, nil, "The following message is used in the event that a TRF trade transaction for a NextShares is corrected on the same business day that it is reported.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "nasdaq.psxequities.lastsale.itch.v2.1.2018.tradecorrectionmessage", ftypes.STRING, nil, nil, nil, "The following message is used in the event that a TRF trade transaction is corrected on the same business day that it is reported.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.trade_report_message = ProtoField.new("Trade Report Message", "nasdaq.psxequities.lastsale.itch.v2.1.2018.tradereportmessage", ftypes.STRING, nil, nil, nil, "The following message is used to relay PSX execution system transactions that are reported for the current business day. Please note that PSX only reports one-side of a trade execution on the PSX Last Sale (PLS) feed and other data feed products.")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.psxequities.lastsale.itch.v2.1.2018.tradingactionmessage", ftypes.STRING, nil, nil, nil, "PSX uses this administrative message to indicate the current trading status of a security to the trading community.")

-- Nasdaq PsxEquities LastSale Itch 2.1.2018 Generated Fields
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.message_index = ProtoField.new("Message Index", "nasdaq.psxequities.lastsale.itch.v2.1.2018.messageindex", ftypes.UINT16)
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.psxequities.lastsale.itch.v2.1.2018.messagesequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq PsxEquities LastSale Itch 2.1.2018 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_psxequities_lastsale_itch_v2_1_2018.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq PsxEquities LastSale Itch 2.1.2018 Element Dissection Options
show.structs = true
show.headers = true
show.application_messages = true
show.indexes = true
show.sequences = true

-- Register Nasdaq PsxEquities LastSale Itch 2.1.2018 Show Options
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)

-- Handle changed preferences
function omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.prefs.show_headers then
    show.headers = omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.prefs.show_structs then
    show.structs = omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.prefs.show_indexes then
    show.indexes = omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.prefs.show_sequences then
    show.sequences = omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.prefs.show_sequences
  end
  if nasdaq_psxequities_lastsale_itch_v2_1_2018.timestamp_format ~= omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.prefs.timestamp_format then
    nasdaq_psxequities_lastsale_itch_v2_1_2018.timestamp_format = omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.prefs.timestamp_format
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
-- Nasdaq PsxEquities LastSale Itch 2.1.2018 Fields
-----------------------------------------------------------------------

-- Authenticity
nasdaq_psxequities_lastsale_itch_v2_1_2018.authenticity = {}

-- Size: Authenticity
nasdaq_psxequities_lastsale_itch_v2_1_2018.authenticity.size = 1

-- Display: Authenticity
nasdaq_psxequities_lastsale_itch_v2_1_2018.authenticity.labels = {
  ["P"] = "Authenticity: Live Production (P)",
  ["T"] = "Authenticity: Test (T)",
}

nasdaq_psxequities_lastsale_itch_v2_1_2018.authenticity.display = function(value)
  return nasdaq_psxequities_lastsale_itch_v2_1_2018.authenticity.labels[value] or "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_psxequities_lastsale_itch_v2_1_2018.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Breached Level
nasdaq_psxequities_lastsale_itch_v2_1_2018.breached_level = {}

-- Size: Breached Level
nasdaq_psxequities_lastsale_itch_v2_1_2018.breached_level.size = 1

-- Display: Breached Level
nasdaq_psxequities_lastsale_itch_v2_1_2018.breached_level.labels = {
  ["1"] = "Breached Level: Level 1 (1)",
  ["2"] = "Breached Level: Level 2 (2)",
  ["3"] = "Breached Level: Level 3 (3)",
}

nasdaq_psxequities_lastsale_itch_v2_1_2018.breached_level.display = function(value)
  return nasdaq_psxequities_lastsale_itch_v2_1_2018.breached_level.labels[value] or "Breached Level: Unknown("..value..")"
end

-- Dissect: Breached Level
nasdaq_psxequities_lastsale_itch_v2_1_2018.breached_level.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.breached_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.breached_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.breached_level, range, value, display)

  return offset + length, value
end

-- Corrected Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_nav_premium_discount_amount = {}

-- Size: Corrected Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_nav_premium_discount_amount.size = 4

-- Display: Corrected Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_nav_premium_discount_amount.display = function(value)
  return "Corrected Nav Premium Discount Amount: "..value
end

-- Translate: Corrected Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_nav_premium_discount_amount.translate = function(raw)
  return raw/10000
end

-- Dissect: Corrected Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_nav_premium_discount_amount.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_nav_premium_discount_amount.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_nav_premium_discount_amount.translate(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_nav_premium_discount_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.corrected_nav_premium_discount_amount, range, value, display)

  return offset + length, value
end

-- Corrected Sale Condition Modifier
nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_sale_condition_modifier = {}

-- Size: Corrected Sale Condition Modifier
nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_sale_condition_modifier.size = 4

-- Display: Corrected Sale Condition Modifier
nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_sale_condition_modifier.display = function(value)
  return "Corrected Sale Condition Modifier: "..value
end

-- Dissect: Corrected Sale Condition Modifier
nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_sale_condition_modifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_sale_condition_modifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_sale_condition_modifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.corrected_sale_condition_modifier, range, value, display)

  return offset + length, value
end

-- Corrected Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_control_number = {}

-- Size: Corrected Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_control_number.size = 10

-- Display: Corrected Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_control_number.display = function(value)
  return "Corrected Trade Control Number: "..value
end

-- Dissect: Corrected Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_control_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_control_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_control_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.corrected_trade_control_number, range, value, display)

  return offset + length, value
end

-- Corrected Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_price = {}

-- Size: Corrected Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_price.size = 4

-- Display: Corrected Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_price.display = function(value)
  return "Corrected Trade Price: "..value
end

-- Translate: Corrected Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Corrected Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_price.translate(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.corrected_trade_price, range, value, display)

  return offset + length, value
end

-- Corrected Trade Size
nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_size = {}

-- Size: Corrected Trade Size
nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_size.size = 4

-- Display: Corrected Trade Size
nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_size.display = function(value)
  return "Corrected Trade Size: "..value
end

-- Dissect: Corrected Trade Size
nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.corrected_trade_size, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_psxequities_lastsale_itch_v2_1_2018.current_trading_state = {}

-- Size: Current Trading State
nasdaq_psxequities_lastsale_itch_v2_1_2018.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_psxequities_lastsale_itch_v2_1_2018.current_trading_state.labels = {
  ["H"] = "Current Trading State: Halted (H)",
  ["Q"] = "Current Trading State: Quotation Only (Q)",
  ["T"] = "Current Trading State: Trading (T)",
}

nasdaq_psxequities_lastsale_itch_v2_1_2018.current_trading_state.display = function(value)
  return nasdaq_psxequities_lastsale_itch_v2_1_2018.current_trading_state.labels[value] or "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_psxequities_lastsale_itch_v2_1_2018.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Etp Flag
nasdaq_psxequities_lastsale_itch_v2_1_2018.etp_flag = {}

-- Size: Etp Flag
nasdaq_psxequities_lastsale_itch_v2_1_2018.etp_flag.size = 1

-- Display: Etp Flag
nasdaq_psxequities_lastsale_itch_v2_1_2018.etp_flag.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1_2018.etp_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.etp_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.etp_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.etp_flag, range, value, display)

  return offset + length, value
end

-- Etp Leverage Factor
nasdaq_psxequities_lastsale_itch_v2_1_2018.etp_leverage_factor = {}

-- Size: Etp Leverage Factor
nasdaq_psxequities_lastsale_itch_v2_1_2018.etp_leverage_factor.size = 4

-- Display: Etp Leverage Factor
nasdaq_psxequities_lastsale_itch_v2_1_2018.etp_leverage_factor.display = function(value)
  return "Etp Leverage Factor: "..value
end

-- Dissect: Etp Leverage Factor
nasdaq_psxequities_lastsale_itch_v2_1_2018.etp_leverage_factor.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.etp_leverage_factor.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.etp_leverage_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.etp_leverage_factor, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_psxequities_lastsale_itch_v2_1_2018.event_code = {}

-- Size: Event Code
nasdaq_psxequities_lastsale_itch_v2_1_2018.event_code.size = 1

-- Display: Event Code
nasdaq_psxequities_lastsale_itch_v2_1_2018.event_code.labels = {
  ["O"] = "Event Code: Start Of Transmissions (O)",
  ["Q"] = "Event Code: Start Of Market Hours (Q)",
  ["S"] = "Event Code: Start Of System Hours (S)",
  ["M"] = "Event Code: End Of Market Hours (M)",
  ["E"] = "Event Code: End Of System Hours (E)",
  ["C"] = "Event Code: End Of Transmissions (C)",
}

nasdaq_psxequities_lastsale_itch_v2_1_2018.event_code.display = function(value)
  return nasdaq_psxequities_lastsale_itch_v2_1_2018.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_psxequities_lastsale_itch_v2_1_2018.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.event_code, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_psxequities_lastsale_itch_v2_1_2018.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_psxequities_lastsale_itch_v2_1_2018.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_psxequities_lastsale_itch_v2_1_2018.financial_status_indicator.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1_2018.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Inverse Indicator
nasdaq_psxequities_lastsale_itch_v2_1_2018.inverse_indicator = {}

-- Size: Inverse Indicator
nasdaq_psxequities_lastsale_itch_v2_1_2018.inverse_indicator.size = 1

-- Display: Inverse Indicator
nasdaq_psxequities_lastsale_itch_v2_1_2018.inverse_indicator.labels = {
  ["Y"] = "Inverse Indicator: Inverse Etp (Y)",
  ["N"] = "Inverse Indicator: Not Inverse Etp (N)",
}

nasdaq_psxequities_lastsale_itch_v2_1_2018.inverse_indicator.display = function(value)
  return nasdaq_psxequities_lastsale_itch_v2_1_2018.inverse_indicator.labels[value] or "Inverse Indicator: Unknown("..value..")"
end

-- Dissect: Inverse Indicator
nasdaq_psxequities_lastsale_itch_v2_1_2018.inverse_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.inverse_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.inverse_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.inverse_indicator, range, value, display)

  return offset + length, value
end

-- Ipo Flag
nasdaq_psxequities_lastsale_itch_v2_1_2018.ipo_flag = {}

-- Size: Ipo Flag
nasdaq_psxequities_lastsale_itch_v2_1_2018.ipo_flag.size = 1

-- Display: Ipo Flag
nasdaq_psxequities_lastsale_itch_v2_1_2018.ipo_flag.display = function(value)
  if value == "Y" then
    return "Ipo Flag: Nasdaq Listed Instrument (Y)"
  end
  if value == "N" then
    return "Ipo Flag: Nasdaq Listed Instrument (N)"
  end
  if value == " " then
    return "Ipo Flag: Na (<whitespace>)"
  end

  return "Ipo Flag: Unknown("..value..")"
end

-- Dissect: Ipo Flag
nasdaq_psxequities_lastsale_itch_v2_1_2018.ipo_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.ipo_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.ipo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.ipo_flag, range, value, display)

  return offset + length, value
end

-- Issue Classification
nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_classification = {}

-- Size: Issue Classification
nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_classification.size = 1

-- Display: Issue Classification
nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_classification.labels = {
  ["A"] = "Issue Classification: American Depositary Share (A)",
  ["B"] = "Issue Classification: Bond (B)",
  ["C"] = "Issue Classification: Common (C)",
  ["F"] = "Issue Classification: Depository (F)",
  ["I"] = "Issue Classification: Sec 144 A (I)",
  ["L"] = "Issue Classification: Limited (L)",
  ["N"] = "Issue Classification: Notes (N)",
  ["O"] = "Issue Classification: Ordinary Share (O)",
  ["P"] = "Issue Classification: Preferred (P)",
  ["Q"] = "Issue Classification: Other (Q)",
  ["R"] = "Issue Classification: Right (R)",
  ["S"] = "Issue Classification: Shares (S)",
  ["T"] = "Issue Classification: Convertible (T)",
  ["U"] = "Issue Classification: Unit (U)",
  ["V"] = "Issue Classification: Units Benif Int (V)",
  ["W"] = "Issue Classification: Warrant (W)",
}

nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_classification.display = function(value)
  return nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_classification.labels[value] or "Issue Classification: Unknown("..value..")"
end

-- Dissect: Issue Classification
nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_classification.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Issue Sub Type
nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_sub_type = {}

-- Size: Issue Sub Type
nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_sub_type.size = 2

-- Display: Issue Sub Type
nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_sub_type.labels = {
  ["A"] = "Issue Sub Type: Preferred Trust Securities (A)",
  ["AI"] = "Issue Sub Type: Alpha Index Et Ns (AI)",
  ["B"] = "Issue Sub Type: Index Based Derivative (B)",
  ["C"] = "Issue Sub Type: Common Shares (C)",
  ["CB"] = "Issue Sub Type: Commodity Based Trust Shares (CB)",
  ["CF"] = "Issue Sub Type: Commodity Futures Trust Shares (CF)",
  ["CL"] = "Issue Sub Type: Currency Trust Shares (CL)",
  ["CM"] = "Issue Sub Type: Commodity Index Trust Shares (CM)",
  ["CO"] = "Issue Sub Type: Collateralized Mortgage Obligation (CO)",
  ["CT"] = "Issue Sub Type: Currency Trust Shares (CT)",
  ["CU"] = "Issue Sub Type: Commodity­ Currency (CU)",
  ["CW"] = "Issue Sub Type: Currency Warrants (CW)",
  ["D"] = "Issue Sub Type: Global Depositary (D)",
  ["E"] = "Issue Sub Type: Etf­ Portfolio Depositary Receipt (E)",
  ["EG"] = "Issue Sub Type: Equity Gold Shares (EG)",
  ["EI"] = "Issue Sub Type: Etn Equity (EI)",
  ["EM"] = "Issue Sub Type: Next Shares Exchange (EM)",
  ["EN"] = "Issue Sub Type: Exchange Traded Notes (EN)",
  ["EU"] = "Issue Sub Type: Equity Units (EU)",
  ["F"] = "Issue Sub Type: Holdrs (F)",
  ["FI"] = "Issue Sub Type: Etn Fixed Income (FI)",
  ["FL"] = "Issue Sub Type: Etn Futures (FL)",
  ["G"] = "Issue Sub Type: Global Shares (G)",
  ["I"] = "Issue Sub Type: Etf (I)",
  ["IR"] = "Issue Sub Type: Interest (IR)",
  ["IW"] = "Issue Sub Type: Index (IW)",
  ["IX"] = "Issue Sub Type: Index (IX)",
  ["J"] = "Issue Sub Type: Corporate (J)",
  ["L"] = "Issue Sub Type: Contingent (L)",
  ["LL"] = "Issue Sub Type: Llc (LL)",
  ["M"] = "Issue Sub Type: Equity Based Derivative (M)",
  ["MF"] = "Issue Sub Type: Managed Fund Shares (MF)",
  ["ML"] = "Issue Sub Type: Etn (ML)",
  ["MT"] = "Issue Sub Type: Managed Trust Securities (MT)",
  ["N"] = "Issue Sub Type: Ny Registry Shares (N)",
  ["O"] = "Issue Sub Type: Open Ended Mutual Fund (O)",
  ["P"] = "Issue Sub Type: Privately Held Security (P)",
  ["PP"] = "Issue Sub Type: Poison Pill (PP)",
  ["PU"] = "Issue Sub Type: Partnership Units (PU)",
  ["Q"] = "Issue Sub Type: Closed End Funds (Q)",
  ["R"] = "Issue Sub Type: Reg S (R)",
  ["RC"] = "Issue Sub Type: Commodity Redeemable (RC)",
  ["RF"] = "Issue Sub Type: Etn (RF)",
  ["RT"] = "Issue Sub Type: Reit (RT)",
  ["RU"] = "Issue Sub Type: Commodity­ Redeemable (RU)",
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

nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_sub_type.display = function(value)
  return nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_sub_type.labels[value] or "Issue Sub Type: Unknown("..value..")"
end

-- Dissect: Issue Sub Type
nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_sub_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.issue_sub_type, range, value, display)

  return offset + length, value
end

-- Issue Symbol
nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_symbol = {}

-- Size: Issue Symbol
nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_symbol.size = 8

-- Display: Issue Symbol
nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_symbol.display = function(value)
  return "Issue Symbol: "..value
end

-- Dissect: Issue Symbol
nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.issue_symbol, range, value, display)

  return offset + length, value
end

-- Level 1
nasdaq_psxequities_lastsale_itch_v2_1_2018.level_1 = {}

-- Size: Level 1
nasdaq_psxequities_lastsale_itch_v2_1_2018.level_1.size = 8

-- Display: Level 1
nasdaq_psxequities_lastsale_itch_v2_1_2018.level_1.display = function(value)
  return "Level 1: "..value
end

-- Translate: Level 1
nasdaq_psxequities_lastsale_itch_v2_1_2018.level_1.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 1
nasdaq_psxequities_lastsale_itch_v2_1_2018.level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.level_1.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_psxequities_lastsale_itch_v2_1_2018.level_1.translate(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.level_1, range, value, display)

  return offset + length, value
end

-- Level 2
nasdaq_psxequities_lastsale_itch_v2_1_2018.level_2 = {}

-- Size: Level 2
nasdaq_psxequities_lastsale_itch_v2_1_2018.level_2.size = 8

-- Display: Level 2
nasdaq_psxequities_lastsale_itch_v2_1_2018.level_2.display = function(value)
  return "Level 2: "..value
end

-- Translate: Level 2
nasdaq_psxequities_lastsale_itch_v2_1_2018.level_2.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 2
nasdaq_psxequities_lastsale_itch_v2_1_2018.level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.level_2.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_psxequities_lastsale_itch_v2_1_2018.level_2.translate(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.level_2, range, value, display)

  return offset + length, value
end

-- Level 3
nasdaq_psxequities_lastsale_itch_v2_1_2018.level_3 = {}

-- Size: Level 3
nasdaq_psxequities_lastsale_itch_v2_1_2018.level_3.size = 8

-- Display: Level 3
nasdaq_psxequities_lastsale_itch_v2_1_2018.level_3.display = function(value)
  return "Level 3: "..value
end

-- Translate: Level 3
nasdaq_psxequities_lastsale_itch_v2_1_2018.level_3.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 3
nasdaq_psxequities_lastsale_itch_v2_1_2018.level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.level_3.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_psxequities_lastsale_itch_v2_1_2018.level_3.translate(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.level_3, range, value, display)

  return offset + length, value
end

-- Luld Reference Price Tier
nasdaq_psxequities_lastsale_itch_v2_1_2018.luld_reference_price_tier = {}

-- Size: Luld Reference Price Tier
nasdaq_psxequities_lastsale_itch_v2_1_2018.luld_reference_price_tier.size = 1

-- Display: Luld Reference Price Tier
nasdaq_psxequities_lastsale_itch_v2_1_2018.luld_reference_price_tier.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1_2018.luld_reference_price_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.luld_reference_price_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.luld_reference_price_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_psxequities_lastsale_itch_v2_1_2018.market_category = {}

-- Size: Market Category
nasdaq_psxequities_lastsale_itch_v2_1_2018.market_category.size = 1

-- Display: Market Category
nasdaq_psxequities_lastsale_itch_v2_1_2018.market_category.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1_2018.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.market_category, range, value, display)

  return offset + length, value
end

-- Market Center Identifier
nasdaq_psxequities_lastsale_itch_v2_1_2018.market_center_identifier = {}

-- Size: Market Center Identifier
nasdaq_psxequities_lastsale_itch_v2_1_2018.market_center_identifier.size = 1

-- Display: Market Center Identifier
nasdaq_psxequities_lastsale_itch_v2_1_2018.market_center_identifier.labels = {
  ["B"] = "Market Center Identifier: Psx Execution System (B)",
  ["X"] = "Market Center Identifier: Psx Execution System (X)",
}

nasdaq_psxequities_lastsale_itch_v2_1_2018.market_center_identifier.display = function(value)
  return nasdaq_psxequities_lastsale_itch_v2_1_2018.market_center_identifier.labels[value] or "Market Center Identifier: Unknown("..value..")"
end

-- Dissect: Market Center Identifier
nasdaq_psxequities_lastsale_itch_v2_1_2018.market_center_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.market_center_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.market_center_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.market_center_identifier, range, value, display)

  return offset + length, value
end

-- Market Code
nasdaq_psxequities_lastsale_itch_v2_1_2018.market_code = {}

-- Size: Market Code
nasdaq_psxequities_lastsale_itch_v2_1_2018.market_code.size = 1

-- Display: Market Code
nasdaq_psxequities_lastsale_itch_v2_1_2018.market_code.labels = {
  ["Q"] = "Market Code: Nasdaq (Q)",
  ["B"] = "Market Code: Bx (B)",
  ["X"] = "Market Code: Psx (X)",
}

nasdaq_psxequities_lastsale_itch_v2_1_2018.market_code.display = function(value)
  return nasdaq_psxequities_lastsale_itch_v2_1_2018.market_code.labels[value] or "Market Code: Unknown("..value..")"
end

-- Dissect: Market Code
nasdaq_psxequities_lastsale_itch_v2_1_2018.market_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.market_code, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_psxequities_lastsale_itch_v2_1_2018.message_count = {}

-- Size: Message Count
nasdaq_psxequities_lastsale_itch_v2_1_2018.message_count.size = 2

-- Display: Message Count
nasdaq_psxequities_lastsale_itch_v2_1_2018.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_psxequities_lastsale_itch_v2_1_2018.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_psxequities_lastsale_itch_v2_1_2018.message_length = {}

-- Size: Message Length
nasdaq_psxequities_lastsale_itch_v2_1_2018.message_length.size = 2

-- Display: Message Length
nasdaq_psxequities_lastsale_itch_v2_1_2018.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_psxequities_lastsale_itch_v2_1_2018.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_psxequities_lastsale_itch_v2_1_2018.message_type = {}

-- Size: Message Type
nasdaq_psxequities_lastsale_itch_v2_1_2018.message_type.size = 1

-- Display: Message Type
nasdaq_psxequities_lastsale_itch_v2_1_2018.message_type.labels = {
  ["S"] = "Message Type: System Event Message (S)",
  ["T"] = "Message Type: Trade Report Message (T)",
  ["M"] = "Message Type: Next Shares Trade Report Message (M)",
  ["X"] = "Message Type: Trade Cancel Error Message (X)",
  ["O"] = "Message Type: Trade Cancel Error For Next Shares Message (O)",
  ["C"] = "Message Type: Trade Correction Message (C)",
  ["Z"] = "Message Type: Trade Correction For Next Shares Message (Z)",
  ["H"] = "Message Type: Trading Action Message (H)",
  ["Y"] = "Message Type: Reg Sho Short Sale Price Test Restricted Indicator Message (Y)",
  ["R"] = "Message Type: Stock Directory Message (R)",
  ["V"] = "Message Type: Mwcb Decline Level Message (V)",
  ["W"] = "Message Type: Mwcb Breach Message (W)",
  ["h"] = "Message Type: Operational Halt Message (h)",
}

nasdaq_psxequities_lastsale_itch_v2_1_2018.message_type.display = function(value)
  return nasdaq_psxequities_lastsale_itch_v2_1_2018.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_psxequities_lastsale_itch_v2_1_2018.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_2018.nav_premium_discount_amount = {}

-- Size: Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_2018.nav_premium_discount_amount.size = 4

-- Display: Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_2018.nav_premium_discount_amount.display = function(value)
  return "Nav Premium Discount Amount: "..value
end

-- Translate: Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_2018.nav_premium_discount_amount.translate = function(raw)
  return raw/10000
end

-- Dissect: Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_2018.nav_premium_discount_amount.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.nav_premium_discount_amount.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_lastsale_itch_v2_1_2018.nav_premium_discount_amount.translate(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.nav_premium_discount_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.nav_premium_discount_amount, range, value, display)

  return offset + length, value
end

-- Next Shares Symbol
nasdaq_psxequities_lastsale_itch_v2_1_2018.next_shares_symbol = {}

-- Size: Next Shares Symbol
nasdaq_psxequities_lastsale_itch_v2_1_2018.next_shares_symbol.size = 8

-- Display: Next Shares Symbol
nasdaq_psxequities_lastsale_itch_v2_1_2018.next_shares_symbol.display = function(value)
  return "Next Shares Symbol: "..value
end

-- Dissect: Next Shares Symbol
nasdaq_psxequities_lastsale_itch_v2_1_2018.next_shares_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.next_shares_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.next_shares_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.next_shares_symbol, range, value, display)

  return offset + length, value
end

-- Operational Halt Action
nasdaq_psxequities_lastsale_itch_v2_1_2018.operational_halt_action = {}

-- Size: Operational Halt Action
nasdaq_psxequities_lastsale_itch_v2_1_2018.operational_halt_action.size = 1

-- Display: Operational Halt Action
nasdaq_psxequities_lastsale_itch_v2_1_2018.operational_halt_action.labels = {
  ["H"] = "Operational Halt Action: Halted (H)",
  ["T"] = "Operational Halt Action: Resumed (T)",
}

nasdaq_psxequities_lastsale_itch_v2_1_2018.operational_halt_action.display = function(value)
  return nasdaq_psxequities_lastsale_itch_v2_1_2018.operational_halt_action.labels[value] or "Operational Halt Action: Unknown("..value..")"
end

-- Dissect: Operational Halt Action
nasdaq_psxequities_lastsale_itch_v2_1_2018.operational_halt_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.operational_halt_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.operational_halt_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.operational_halt_action, range, value, display)

  return offset + length, value
end

-- Original Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_2018.original_nav_premium_discount_amount = {}

-- Size: Original Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_2018.original_nav_premium_discount_amount.size = 4

-- Display: Original Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_2018.original_nav_premium_discount_amount.display = function(value)
  return "Original Nav Premium Discount Amount: "..value
end

-- Translate: Original Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_2018.original_nav_premium_discount_amount.translate = function(raw)
  return raw/10000
end

-- Dissect: Original Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_2018.original_nav_premium_discount_amount.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_nav_premium_discount_amount.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_nav_premium_discount_amount.translate(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_nav_premium_discount_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.original_nav_premium_discount_amount, range, value, display)

  return offset + length, value
end

-- Original Sale Condition Modifier
nasdaq_psxequities_lastsale_itch_v2_1_2018.original_sale_condition_modifier = {}

-- Size: Original Sale Condition Modifier
nasdaq_psxequities_lastsale_itch_v2_1_2018.original_sale_condition_modifier.size = 4

-- Display: Original Sale Condition Modifier
nasdaq_psxequities_lastsale_itch_v2_1_2018.original_sale_condition_modifier.display = function(value)
  return "Original Sale Condition Modifier: "..value
end

-- Dissect: Original Sale Condition Modifier
nasdaq_psxequities_lastsale_itch_v2_1_2018.original_sale_condition_modifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_sale_condition_modifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_sale_condition_modifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.original_sale_condition_modifier, range, value, display)

  return offset + length, value
end

-- Original Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_control_number = {}

-- Size: Original Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_control_number.size = 10

-- Display: Original Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_control_number.display = function(value)
  return "Original Trade Control Number: "..value
end

-- Dissect: Original Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_control_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_control_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_control_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.original_trade_control_number, range, value, display)

  return offset + length, value
end

-- Original Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_price = {}

-- Size: Original Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_price.size = 4

-- Display: Original Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_price.display = function(value)
  return "Original Trade Price: "..value
end

-- Translate: Original Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Original Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_price.translate(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.original_trade_price, range, value, display)

  return offset + length, value
end

-- Original Trade Size
nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_size = {}

-- Size: Original Trade Size
nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_size.size = 4

-- Display: Original Trade Size
nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_size.display = function(value)
  return "Original Trade Size: "..value
end

-- Dissect: Original Trade Size
nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.original_trade_size, range, value, display)

  return offset + length, value
end

-- Proxy Price
nasdaq_psxequities_lastsale_itch_v2_1_2018.proxy_price = {}

-- Size: Proxy Price
nasdaq_psxequities_lastsale_itch_v2_1_2018.proxy_price.size = 4

-- Display: Proxy Price
nasdaq_psxequities_lastsale_itch_v2_1_2018.proxy_price.display = function(value)
  return "Proxy Price: "..value
end

-- Translate: Proxy Price
nasdaq_psxequities_lastsale_itch_v2_1_2018.proxy_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Proxy Price
nasdaq_psxequities_lastsale_itch_v2_1_2018.proxy_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.proxy_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_lastsale_itch_v2_1_2018.proxy_price.translate(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.proxy_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.proxy_price, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_psxequities_lastsale_itch_v2_1_2018.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_psxequities_lastsale_itch_v2_1_2018.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_psxequities_lastsale_itch_v2_1_2018.reg_sho_action.labels = {
  ["0"] = "Reg Sho Action: No Price Test (0)",
  ["1"] = "Reg Sho Action: Reg Sho Short Sale Price Test Restriction (1)",
  ["2"] = "Reg Sho Action: Test Restriction Remains (2)",
}

nasdaq_psxequities_lastsale_itch_v2_1_2018.reg_sho_action.display = function(value)
  return nasdaq_psxequities_lastsale_itch_v2_1_2018.reg_sho_action.labels[value] or "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
nasdaq_psxequities_lastsale_itch_v2_1_2018.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_psxequities_lastsale_itch_v2_1_2018.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_psxequities_lastsale_itch_v2_1_2018.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_psxequities_lastsale_itch_v2_1_2018.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_psxequities_lastsale_itch_v2_1_2018.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Round Lots Only
nasdaq_psxequities_lastsale_itch_v2_1_2018.round_lots_only = {}

-- Size: Round Lots Only
nasdaq_psxequities_lastsale_itch_v2_1_2018.round_lots_only.size = 1

-- Display: Round Lots Only
nasdaq_psxequities_lastsale_itch_v2_1_2018.round_lots_only.labels = {
  ["Y"] = "Round Lots Only: Round Lots Only (Y)",
  ["N"] = "Round Lots Only: No Restriction (N)",
}

nasdaq_psxequities_lastsale_itch_v2_1_2018.round_lots_only.display = function(value)
  return nasdaq_psxequities_lastsale_itch_v2_1_2018.round_lots_only.labels[value] or "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_psxequities_lastsale_itch_v2_1_2018.round_lots_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.round_lots_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.round_lots_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Sale Condition Modifier Level 1
nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_1 = {}

-- Size: Sale Condition Modifier Level 1
nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_1.size = 1

-- Display: Sale Condition Modifier Level 1
nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_1.labels = {
  ["J"] = "Sale Condition Modifier Level 1: Proxy Price Settlement (J)",
  ["@"] = "Sale Condition Modifier Level 1: Regular Settlement (@)",
  ["C"] = "Sale Condition Modifier Level 1: Cash Settlement (C)",
  ["N"] = "Sale Condition Modifier Level 1: Next Day Settlement (N)",
  ["R"] = "Sale Condition Modifier Level 1: Seller Settlement (R)",
}

nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_1.display = function(value)
  return nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_1.labels[value] or "Sale Condition Modifier Level 1: Unknown("..value..")"
end

-- Dissect: Sale Condition Modifier Level 1
nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.sale_condition_modifier_level_1, range, value, display)

  return offset + length, value
end

-- Sale Condition Modifier Level 2
nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_2 = {}

-- Size: Sale Condition Modifier Level 2
nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_2.size = 1

-- Display: Sale Condition Modifier Level 2
nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_2.display = function(value)
  if value == "F" then
    return "Sale Condition Modifier Level 2: Intermarket Sweep (F)"
  end
  if value == "O" then
    return "Sale Condition Modifier Level 2: Opening Print (O)"
  end
  if value == "4" then
    return "Sale Condition Modifier Level 2: Derivative Priced (4)"
  end
  if value == "5" then
    return "Sale Condition Modifier Level 2: Re Opening Print (5)"
  end
  if value == "6" then
    return "Sale Condition Modifier Level 2: Closing Print (6)"
  end
  if value == " " then
    return "Sale Condition Modifier Level 2: Not Applicable (<whitespace>)"
  end

  return "Sale Condition Modifier Level 2: Unknown("..value..")"
end

-- Dissect: Sale Condition Modifier Level 2
nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.sale_condition_modifier_level_2, range, value, display)

  return offset + length, value
end

-- Sale Condition Modifier Level 3
nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_3 = {}

-- Size: Sale Condition Modifier Level 3
nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_3.size = 1

-- Display: Sale Condition Modifier Level 3
nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_3.display = function(value)
  if value == "T" then
    return "Sale Condition Modifier Level 3: Extended Hours Trade (T)"
  end
  if value == "U" then
    return "Sale Condition Modifier Level 3: Reported Late Or Out Of Sequence (U)"
  end
  if value == "L" then
    return "Sale Condition Modifier Level 3: Reported Late But In Sequence (L)"
  end
  if value == "Z" then
    return "Sale Condition Modifier Level 3: Sold Out Of Sequence (Z)"
  end
  if value == " " then
    return "Sale Condition Modifier Level 3: Not Applicable (<whitespace>)"
  end

  return "Sale Condition Modifier Level 3: Unknown("..value..")"
end

-- Dissect: Sale Condition Modifier Level 3
nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.sale_condition_modifier_level_3, range, value, display)

  return offset + length, value
end

-- Sale Condition Modifier Level 4
nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_4 = {}

-- Size: Sale Condition Modifier Level 4
nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_4.size = 1

-- Display: Sale Condition Modifier Level 4
nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_4.display = function(value)
  if value == "A" then
    return "Sale Condition Modifier Level 4: Acquisition (A)"
  end
  if value == "B" then
    return "Sale Condition Modifier Level 4: Bunched (B)"
  end
  if value == "D" then
    return "Sale Condition Modifier Level 4: Distribution (D)"
  end
  if value == "H" then
    return "Sale Condition Modifier Level 4: Price Variation Transaction (H)"
  end
  if value == "M" then
    return "Sale Condition Modifier Level 4: Psx Official Close Price (M)"
  end
  if value == "P" then
    return "Sale Condition Modifier Level 4: Prior Reference Price (P)"
  end
  if value == "Q" then
    return "Sale Condition Modifier Level 4: Psx Official Opening Price (Q)"
  end
  if value == "S" then
    return "Sale Condition Modifier Level 4: Split Trade (S)"
  end
  if value == "W" then
    return "Sale Condition Modifier Level 4: Weighted Average Price (W)"
  end
  if value == "X" then
    return "Sale Condition Modifier Level 4: Cross Trade (X)"
  end
  if value == "o" then
    return "Sale Condition Modifier Level 4: Odd Lot Execution (o)"
  end
  if value == "x" then
    return "Sale Condition Modifier Level 4: Odd Lot Cross Execution (x)"
  end
  if value == " " then
    return "Sale Condition Modifier Level 4: Not Applicable (<whitespace>)"
  end

  return "Sale Condition Modifier Level 4: Unknown("..value..")"
end

-- Dissect: Sale Condition Modifier Level 4
nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.sale_condition_modifier_level_4, range, value, display)

  return offset + length, value
end

-- Security Class
nasdaq_psxequities_lastsale_itch_v2_1_2018.security_class = {}

-- Size: Security Class
nasdaq_psxequities_lastsale_itch_v2_1_2018.security_class.size = 1

-- Display: Security Class
nasdaq_psxequities_lastsale_itch_v2_1_2018.security_class.labels = {
  ["Q"] = "Security Class: Nasdaq (Q)",
  ["N"] = "Security Class: Nyse (N)",
  ["A"] = "Security Class: Nyse Amex (A)",
  ["P"] = "Security Class: Nyse Arca (P)",
  ["Z"] = "Security Class: Bats (Z)",
  ["V"] = "Security Class: Investors Exchange (V)",
}

nasdaq_psxequities_lastsale_itch_v2_1_2018.security_class.display = function(value)
  return nasdaq_psxequities_lastsale_itch_v2_1_2018.security_class.labels[value] or "Security Class: Unknown("..value..")"
end

-- Dissect: Security Class
nasdaq_psxequities_lastsale_itch_v2_1_2018.security_class.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.security_class.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.security_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.security_class, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_psxequities_lastsale_itch_v2_1_2018.sequence_number = {}

-- Size: Sequence Number
nasdaq_psxequities_lastsale_itch_v2_1_2018.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_psxequities_lastsale_itch_v2_1_2018.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_psxequities_lastsale_itch_v2_1_2018.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_psxequities_lastsale_itch_v2_1_2018.session = {}

-- Size: Session
nasdaq_psxequities_lastsale_itch_v2_1_2018.session.size = 10

-- Display: Session
nasdaq_psxequities_lastsale_itch_v2_1_2018.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_psxequities_lastsale_itch_v2_1_2018.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.session.size
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

  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.session, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_psxequities_lastsale_itch_v2_1_2018.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_psxequities_lastsale_itch_v2_1_2018.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_psxequities_lastsale_itch_v2_1_2018.short_sale_threshold_indicator.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1_2018.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_psxequities_lastsale_itch_v2_1_2018.stock = {}

-- Size: Stock
nasdaq_psxequities_lastsale_itch_v2_1_2018.stock.size = 8

-- Display: Stock
nasdaq_psxequities_lastsale_itch_v2_1_2018.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_psxequities_lastsale_itch_v2_1_2018.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.stock, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_psxequities_lastsale_itch_v2_1_2018.timestamp = {}

-- Size: Timestamp
nasdaq_psxequities_lastsale_itch_v2_1_2018.timestamp.size = 6

-- Display: Timestamp
nasdaq_psxequities_lastsale_itch_v2_1_2018.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_psxequities_lastsale_itch_v2_1_2018.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (the day the frame that carried it settled on)
  if nasdaq_psxequities_lastsale_itch_v2_1_2018.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      local midnight = math.floor(settled / 86400 + 0.5) * 86400

      return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", midnight + seconds)..string.format("%09d", nanoseconds)
    end
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_psxequities_lastsale_itch_v2_1_2018.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_psxequities_lastsale_itch_v2_1_2018.tracking_number = {}

-- Size: Tracking Number
nasdaq_psxequities_lastsale_itch_v2_1_2018.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_psxequities_lastsale_itch_v2_1_2018.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_psxequities_lastsale_itch_v2_1_2018.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_control_number = {}

-- Size: Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_control_number.size = 10

-- Display: Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_control_number.display = function(value)
  return "Trade Control Number: "..value
end

-- Dissect: Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_control_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_control_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_control_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.trade_control_number, range, value, display)

  return offset + length, value
end

-- Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_price = {}

-- Size: Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_price.size = 4

-- Display: Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_price.translate(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Size
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_size = {}

-- Size: Trade Size
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_size.size = 4

-- Display: Trade Size
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_size.display = function(value)
  return "Trade Size: "..value
end

-- Dissect: Trade Size
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.trade_size, range, value, display)

  return offset + length, value
end

-- Trading Action Reason
nasdaq_psxequities_lastsale_itch_v2_1_2018.trading_action_reason = {}

-- Size: Trading Action Reason
nasdaq_psxequities_lastsale_itch_v2_1_2018.trading_action_reason.size = 4

-- Display: Trading Action Reason
nasdaq_psxequities_lastsale_itch_v2_1_2018.trading_action_reason.display = function(value)
  if value == "T1" then
    return "Trading Action Reason: Halt News Pending (T1)"
  end
  if value == "T2" then
    return "Trading Action Reason: Halt News Disseminated (T2)"
  end
  if value == "T5" then
    return "Trading Action Reason: Single Security Trading Pause In Effect (T5)"
  end
  if value == "T6" then
    return "Trading Action Reason: Regulatory Halt (T6)"
  end
  if value == "T8" then
    return "Trading Action Reason: Halt Etf (T8)"
  end
  if value == "T12" then
    return "Trading Action Reason: Trading Halted (T12)"
  end
  if value == "H4" then
    return "Trading Action Reason: Halt Non Compliance (H4)"
  end
  if value == "H9" then
    return "Trading Action Reason: Halt Filings Not Current (H9)"
  end
  if value == "H10" then
    return "Trading Action Reason: Halt Sec Trading Suspension (H10)"
  end
  if value == "H11" then
    return "Trading Action Reason: Halt Regulatory Concern (H11)"
  end
  if value == "LUDP" then
    return "Trading Action Reason: Volatility Trading Pause (LUDP)"
  end
  if value == "LUDS" then
    return "Trading Action Reason: Straddle Condition Trading Pause (LUDS)"
  end
  if value == "MWC1" then
    return "Trading Action Reason: Circuit Breaker Halt Level 1 (MWC1)"
  end
  if value == "MWC2" then
    return "Trading Action Reason: Circuit Breaker Halt Level 2 (MWC2)"
  end
  if value == "MWC3" then
    return "Trading Action Reason: Circuit Breaker Halt Level 3 (MWC3)"
  end
  if value == "MWC0" then
    return "Trading Action Reason: Carry Over Circuit Breaker Halt (MWC0)"
  end
  if value == "O1" then
    return "Trading Action Reason: Operations Halt (O1)"
  end
  if value == "IPO1" then
    return "Trading Action Reason: Ipo Issue (IPO1)"
  end
  if value == "M1" then
    return "Trading Action Reason: Corporate Action (M1)"
  end
  if value == "M2" then
    return "Trading Action Reason: Not Available (M2)"
  end
  if value == "T3" then
    return "Trading Action Reason: News And Resumption Times (T3)"
  end
  if value == "T7" then
    return "Trading Action Reason: Trading Pause Quotation Only Period (T7)"
  end
  if value == "R4" then
    return "Trading Action Reason: Qualifications Issues Resolved (R4)"
  end
  if value == "R9" then
    return "Trading Action Reason: Filing Requirements Satisfied (R9)"
  end
  if value == "C3" then
    return "Trading Action Reason: Issuer News Not Forthcoming (C3)"
  end
  if value == "C4" then
    return "Trading Action Reason: Qualifications Halt Ended (C4)"
  end
  if value == "C9" then
    return "Trading Action Reason: Qualifications Halt Concluded (C9)"
  end
  if value == "C11" then
    return "Trading Action Reason: Trade Halt Concluded By Other Regulatory Authority (C11)"
  end
  if value == "MWCQ" then
    return "Trading Action Reason: Market Wide Circuit Breaker Resumption (MWCQ)"
  end
  if value == "R1" then
    return "Trading Action Reason: New Issue (R1)"
  end
  if value == "R2" then
    return "Trading Action Reason: Issue Available (R2)"
  end
  if value == "IPOQ" then
    return "Trading Action Reason: Ipo Security Released (IPOQ)"
  end
  if value == "IPOE" then
    return "Trading Action Reason: Ipo Security Positioning Window Extension (IPOE)"
  end
  if value == "" then
    return "Trading Action Reason: Reason Not Available (<whitespace>)"
  end

  return "Trading Action Reason: Unknown("..value..")"
end

-- Dissect: Trading Action Reason
nasdaq_psxequities_lastsale_itch_v2_1_2018.trading_action_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_2018.trading_action_reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.trading_action_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.trading_action_reason, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq PsxEquities LastSale Itch 2.1.2018
-----------------------------------------------------------------------

-- Operational Halt Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.operational_halt_message = {}

-- Size: Operational Halt Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.operational_halt_message.size =
  nasdaq_psxequities_lastsale_itch_v2_1_2018.stock.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.market_code.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.operational_halt_action.size

-- Display: Operational Halt Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.operational_halt_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Operational Halt Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.operational_halt_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_lastsale_itch_v2_1_2018.stock.dissect(buffer, index, packet, parent)

  -- Market Code: Alpha
  index, market_code = nasdaq_psxequities_lastsale_itch_v2_1_2018.market_code.dissect(buffer, index, packet, parent)

  -- Operational Halt Action: Alpha
  index, operational_halt_action = nasdaq_psxequities_lastsale_itch_v2_1_2018.operational_halt_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Operational Halt Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.operational_halt_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.operational_halt_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_2018.operational_halt_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.operational_halt_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_2018.operational_halt_message.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Breach Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.mwcb_breach_message = {}

-- Size: Mwcb Breach Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.mwcb_breach_message.size =
  nasdaq_psxequities_lastsale_itch_v2_1_2018.breached_level.size

-- Display: Mwcb Breach Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.mwcb_breach_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Breach Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.mwcb_breach_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Breached Level: Alphanumeric
  index, breached_level = nasdaq_psxequities_lastsale_itch_v2_1_2018.breached_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Breach Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.mwcb_breach_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.mwcb_breach_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_2018.mwcb_breach_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.mwcb_breach_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_2018.mwcb_breach_message.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Decline Level Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.mwcb_decline_level_message = {}

-- Size: Mwcb Decline Level Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.mwcb_decline_level_message.size =
  nasdaq_psxequities_lastsale_itch_v2_1_2018.level_1.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.level_2.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.level_3.size

-- Display: Mwcb Decline Level Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.mwcb_decline_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Decline Level Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.mwcb_decline_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Level 1: Price (8)
  index, level_1 = nasdaq_psxequities_lastsale_itch_v2_1_2018.level_1.dissect(buffer, index, packet, parent)

  -- Level 2: Price (8)
  index, level_2 = nasdaq_psxequities_lastsale_itch_v2_1_2018.level_2.dissect(buffer, index, packet, parent)

  -- Level 3: Price (8)
  index, level_3 = nasdaq_psxequities_lastsale_itch_v2_1_2018.level_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Decline Level Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.mwcb_decline_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.mwcb_decline_level_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_2018.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.mwcb_decline_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_2018.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.stock_directory_message = {}

-- Size: Stock Directory Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.stock_directory_message.size =
  nasdaq_psxequities_lastsale_itch_v2_1_2018.stock.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.market_category.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.financial_status_indicator.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.round_lot_size.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.round_lots_only.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_classification.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_sub_type.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.authenticity.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.short_sale_threshold_indicator.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.ipo_flag.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.luld_reference_price_tier.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.etp_flag.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.etp_leverage_factor.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.inverse_indicator.size

-- Display: Stock Directory Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_lastsale_itch_v2_1_2018.stock.dissect(buffer, index, packet, parent)

  -- Market Category: Alphanumeric
  index, market_category = nasdaq_psxequities_lastsale_itch_v2_1_2018.market_category.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Alphanumeric
  index, financial_status_indicator = nasdaq_psxequities_lastsale_itch_v2_1_2018.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = nasdaq_psxequities_lastsale_itch_v2_1_2018.round_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lots Only: Alphanumeric
  index, round_lots_only = nasdaq_psxequities_lastsale_itch_v2_1_2018.round_lots_only.dissect(buffer, index, packet, parent)

  -- Issue Classification: Alphanumeric
  index, issue_classification = nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_classification.dissect(buffer, index, packet, parent)

  -- Issue Sub Type: Alphanumeric
  index, issue_sub_type = nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_sub_type.dissect(buffer, index, packet, parent)

  -- Authenticity: Alphanumeric
  index, authenticity = nasdaq_psxequities_lastsale_itch_v2_1_2018.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: Alphanumeric
  index, short_sale_threshold_indicator = nasdaq_psxequities_lastsale_itch_v2_1_2018.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Ipo Flag: Alphanumeric
  index, ipo_flag = nasdaq_psxequities_lastsale_itch_v2_1_2018.ipo_flag.dissect(buffer, index, packet, parent)

  -- Luld Reference Price Tier: Alphanumeric
  index, luld_reference_price_tier = nasdaq_psxequities_lastsale_itch_v2_1_2018.luld_reference_price_tier.dissect(buffer, index, packet, parent)

  -- Etp Flag: Alphanumeric
  index, etp_flag = nasdaq_psxequities_lastsale_itch_v2_1_2018.etp_flag.dissect(buffer, index, packet, parent)

  -- Etp Leverage Factor: Integer
  index, etp_leverage_factor = nasdaq_psxequities_lastsale_itch_v2_1_2018.etp_leverage_factor.dissect(buffer, index, packet, parent)

  -- Inverse Indicator: Alphanumeric
  index, inverse_indicator = nasdaq_psxequities_lastsale_itch_v2_1_2018.inverse_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_2018.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_2018.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.reg_sho_short_sale_price_test_restricted_indicator_message = {}

-- Size: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.reg_sho_short_sale_price_test_restricted_indicator_message.size =
  nasdaq_psxequities_lastsale_itch_v2_1_2018.stock.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.reg_sho_action.size

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.reg_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.reg_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: Alpha
  index, stock = nasdaq_psxequities_lastsale_itch_v2_1_2018.stock.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alphanumeric
  index, reg_sho_action = nasdaq_psxequities_lastsale_itch_v2_1_2018.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.reg_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.reg_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_2018.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.reg_sho_short_sale_price_test_restricted_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_2018.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Action Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trading_action_message = {}

-- Size: Trading Action Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trading_action_message.size =
  nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_symbol.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.security_class.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.current_trading_state.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.trading_action_reason.size

-- Display: Trading Action Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_psxequities_lastsale_itch_v2_1_2018.security_class.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alphanumeric
  index, current_trading_state = nasdaq_psxequities_lastsale_itch_v2_1_2018.current_trading_state.dissect(buffer, index, packet, parent)

  -- Trading Action Reason: Alphanumeric
  index, trading_action_reason = nasdaq_psxequities_lastsale_itch_v2_1_2018.trading_action_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.trading_action_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_2018.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_2018.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_correction_for_next_shares_message = {}

-- Size: Trade Correction For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_correction_for_next_shares_message.size =
  nasdaq_psxequities_lastsale_itch_v2_1_2018.market_center_identifier.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_symbol.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.security_class.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_control_number.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_price.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.original_nav_premium_discount_amount.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_size.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.original_sale_condition_modifier.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_control_number.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_price.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_nav_premium_discount_amount.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_size.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_sale_condition_modifier.size

-- Display: Trade Correction For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_correction_for_next_shares_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_correction_for_next_shares_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: Alphanumeric
  index, market_center_identifier = nasdaq_psxequities_lastsale_itch_v2_1_2018.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_psxequities_lastsale_itch_v2_1_2018.security_class.dissect(buffer, index, packet, parent)

  -- Original Trade Control Number: Alphanumeric
  index, original_trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_control_number.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Price (4)
  index, original_trade_price = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Nav Premium Discount Amount: Price (4)
  index, original_nav_premium_discount_amount = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_nav_premium_discount_amount.dissect(buffer, index, packet, parent)

  -- Original Trade Size: Integer
  index, original_trade_size = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_size.dissect(buffer, index, packet, parent)

  -- Original Sale Condition Modifier: Alphanumeric
  index, original_sale_condition_modifier = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_sale_condition_modifier.dissect(buffer, index, packet, parent)

  -- Corrected Trade Control Number: Alphanumeric
  index, corrected_trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_control_number.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: Price (4)
  index, corrected_trade_price = nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Nav Premium Discount Amount: Price (4)
  index, corrected_nav_premium_discount_amount = nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_nav_premium_discount_amount.dissect(buffer, index, packet, parent)

  -- Corrected Trade Size: Integer
  index, corrected_trade_size = nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_size.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition Modifier: Alphanumeric
  index, corrected_sale_condition_modifier = nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_sale_condition_modifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_correction_for_next_shares_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.trade_correction_for_next_shares_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_correction_for_next_shares_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_correction_for_next_shares_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_correction_for_next_shares_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_correction_message = {}

-- Size: Trade Correction Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_correction_message.size =
  nasdaq_psxequities_lastsale_itch_v2_1_2018.market_center_identifier.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_symbol.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.security_class.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_control_number.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_price.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_size.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.original_sale_condition_modifier.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_control_number.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_price.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_size.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_sale_condition_modifier.size

-- Display: Trade Correction Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: Alphanumeric
  index, market_center_identifier = nasdaq_psxequities_lastsale_itch_v2_1_2018.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_psxequities_lastsale_itch_v2_1_2018.security_class.dissect(buffer, index, packet, parent)

  -- Original Trade Control Number: Alphanumeric
  index, original_trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_control_number.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Price (4)
  index, original_trade_price = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Trade Size: Integer
  index, original_trade_size = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_size.dissect(buffer, index, packet, parent)

  -- Original Sale Condition Modifier: Alphanumeric
  index, original_sale_condition_modifier = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_sale_condition_modifier.dissect(buffer, index, packet, parent)

  -- Corrected Trade Control Number: Alphanumeric
  index, corrected_trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_control_number.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: Price (4)
  index, corrected_trade_price = nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Trade Size: Integer
  index, corrected_trade_size = nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_trade_size.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition Modifier: Alphanumeric
  index, corrected_sale_condition_modifier = nasdaq_psxequities_lastsale_itch_v2_1_2018.corrected_sale_condition_modifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.trade_correction_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Error For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_cancel_error_for_next_shares_message = {}

-- Size: Trade Cancel Error For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_cancel_error_for_next_shares_message.size =
  nasdaq_psxequities_lastsale_itch_v2_1_2018.market_center_identifier.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_symbol.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.security_class.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_control_number.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_price.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.original_nav_premium_discount_amount.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_size.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.original_sale_condition_modifier.size

-- Display: Trade Cancel Error For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_cancel_error_for_next_shares_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Error For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_cancel_error_for_next_shares_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: Alphanumeric
  index, market_center_identifier = nasdaq_psxequities_lastsale_itch_v2_1_2018.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_psxequities_lastsale_itch_v2_1_2018.security_class.dissect(buffer, index, packet, parent)

  -- Original Trade Control Number: Alphanumeric
  index, original_trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_control_number.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Price (4)
  index, original_trade_price = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Nav Premium Discount Amount: Price (4)
  index, original_nav_premium_discount_amount = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_nav_premium_discount_amount.dissect(buffer, index, packet, parent)

  -- Original Trade Size: Integer
  index, original_trade_size = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_size.dissect(buffer, index, packet, parent)

  -- Original Sale Condition Modifier: Alphanumeric
  index, original_sale_condition_modifier = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_sale_condition_modifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Error For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_cancel_error_for_next_shares_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.trade_cancel_error_for_next_shares_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_cancel_error_for_next_shares_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_cancel_error_for_next_shares_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_cancel_error_for_next_shares_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Error Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_cancel_error_message = {}

-- Size: Trade Cancel Error Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_cancel_error_message.size =
  nasdaq_psxequities_lastsale_itch_v2_1_2018.market_center_identifier.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_symbol.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.security_class.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_control_number.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_price.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_size.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.original_sale_condition_modifier.size

-- Display: Trade Cancel Error Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_cancel_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Error Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_cancel_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: Alphanumeric
  index, market_center_identifier = nasdaq_psxequities_lastsale_itch_v2_1_2018.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_psxequities_lastsale_itch_v2_1_2018.security_class.dissect(buffer, index, packet, parent)

  -- Original Trade Control Number: Alphanumeric
  index, original_trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_control_number.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Price (4)
  index, original_trade_price = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Trade Size: Integer
  index, original_trade_size = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_trade_size.dissect(buffer, index, packet, parent)

  -- Original Sale Condition Modifier: Alphanumeric
  index, original_sale_condition_modifier = nasdaq_psxequities_lastsale_itch_v2_1_2018.original_sale_condition_modifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Error Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_cancel_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.trade_cancel_error_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_cancel_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_cancel_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_cancel_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Next Shares Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.next_shares_trade_report_message = {}

-- Size: Next Shares Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.next_shares_trade_report_message.size =
  nasdaq_psxequities_lastsale_itch_v2_1_2018.market_center_identifier.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.next_shares_symbol.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.security_class.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_control_number.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.proxy_price.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_size.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.nav_premium_discount_amount.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_1.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_2.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_3.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_4.size

-- Display: Next Shares Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.next_shares_trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Next Shares Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.next_shares_trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: Alphanumeric
  index, market_center_identifier = nasdaq_psxequities_lastsale_itch_v2_1_2018.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Next Shares Symbol: Alphanumeric
  index, next_shares_symbol = nasdaq_psxequities_lastsale_itch_v2_1_2018.next_shares_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_psxequities_lastsale_itch_v2_1_2018.security_class.dissect(buffer, index, packet, parent)

  -- Trade Control Number: Alphanumeric
  index, trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_control_number.dissect(buffer, index, packet, parent)

  -- Proxy Price: Price (4)
  index, proxy_price = nasdaq_psxequities_lastsale_itch_v2_1_2018.proxy_price.dissect(buffer, index, packet, parent)

  -- Trade Size: Integer
  index, trade_size = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_size.dissect(buffer, index, packet, parent)

  -- Nav Premium Discount Amount: Price (4)
  index, nav_premium_discount_amount = nasdaq_psxequities_lastsale_itch_v2_1_2018.nav_premium_discount_amount.dissect(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 1: Alphanumeric
  index, sale_condition_modifier_level_1 = nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_1.dissect(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 2: Alphanumeric
  index, sale_condition_modifier_level_2 = nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_2.dissect(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 3: Alphanumeric
  index, sale_condition_modifier_level_3 = nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_3.dissect(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 4: Alphanumeric
  index, sale_condition_modifier_level_4 = nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Next Shares Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.next_shares_trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.next_shares_trade_report_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_2018.next_shares_trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.next_shares_trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_2018.next_shares_trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_report_message = {}

-- Size: Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_report_message.size =
  nasdaq_psxequities_lastsale_itch_v2_1_2018.market_center_identifier.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_symbol.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.security_class.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_control_number.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_price.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_size.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_1.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_2.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_3.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_4.size

-- Display: Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: Alphanumeric
  index, market_center_identifier = nasdaq_psxequities_lastsale_itch_v2_1_2018.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_psxequities_lastsale_itch_v2_1_2018.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_psxequities_lastsale_itch_v2_1_2018.security_class.dissect(buffer, index, packet, parent)

  -- Trade Control Number: Alphanumeric
  index, trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_control_number.dissect(buffer, index, packet, parent)

  -- Trade Price: Price (4)
  index, trade_price = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Size: Integer
  index, trade_size = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_size.dissect(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 1: Alphanumeric
  index, sale_condition_modifier_level_1 = nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_1.dissect(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 2: Alphanumeric
  index, sale_condition_modifier_level_2 = nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_2.dissect(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 3: Alphanumeric
  index, sale_condition_modifier_level_3 = nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_3.dissect(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 4: Alphanumeric
  index, sale_condition_modifier_level_4 = nasdaq_psxequities_lastsale_itch_v2_1_2018.sale_condition_modifier_level_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.trade_report_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.system_event_message = {}

-- Size: System Event Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.system_event_message.size =
  nasdaq_psxequities_lastsale_itch_v2_1_2018.event_code.size

-- Display: System Event Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Code: Alphanumeric
  index, event_code = nasdaq_psxequities_lastsale_itch_v2_1_2018.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_2018.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_2018.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_psxequities_lastsale_itch_v2_1_2018.payload = {}

-- Dispatch: Payload
nasdaq_psxequities_lastsale_itch_v2_1_2018.payload.dispatch = {
  ["S"] = nasdaq_psxequities_lastsale_itch_v2_1_2018.system_event_message.dissect,
  ["T"] = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_report_message.dissect,
  ["M"] = nasdaq_psxequities_lastsale_itch_v2_1_2018.next_shares_trade_report_message.dissect,
  ["X"] = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_cancel_error_message.dissect,
  ["O"] = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_cancel_error_for_next_shares_message.dissect,
  ["C"] = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_correction_message.dissect,
  ["Z"] = nasdaq_psxequities_lastsale_itch_v2_1_2018.trade_correction_for_next_shares_message.dissect,
  ["H"] = nasdaq_psxequities_lastsale_itch_v2_1_2018.trading_action_message.dissect,
  ["Y"] = nasdaq_psxequities_lastsale_itch_v2_1_2018.reg_sho_short_sale_price_test_restricted_indicator_message.dissect,
  ["R"] = nasdaq_psxequities_lastsale_itch_v2_1_2018.stock_directory_message.dissect,
  ["V"] = nasdaq_psxequities_lastsale_itch_v2_1_2018.mwcb_decline_level_message.dissect,
  ["W"] = nasdaq_psxequities_lastsale_itch_v2_1_2018.mwcb_breach_message.dissect,
  ["h"] = nasdaq_psxequities_lastsale_itch_v2_1_2018.operational_halt_message.dissect,
}

-- Dissect: Payload
nasdaq_psxequities_lastsale_itch_v2_1_2018.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nasdaq_psxequities_lastsale_itch_v2_1_2018.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_psxequities_lastsale_itch_v2_1_2018.message_header = {}

-- Size: Message Header
nasdaq_psxequities_lastsale_itch_v2_1_2018.message_header.size =
  nasdaq_psxequities_lastsale_itch_v2_1_2018.message_length.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.tracking_number.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.timestamp.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.message_type.size

-- Display: Message Header
nasdaq_psxequities_lastsale_itch_v2_1_2018.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_psxequities_lastsale_itch_v2_1_2018.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_psxequities_lastsale_itch_v2_1_2018.message_length.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_lastsale_itch_v2_1_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_lastsale_itch_v2_1_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 13 values
  index, message_type = nasdaq_psxequities_lastsale_itch_v2_1_2018.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_psxequities_lastsale_itch_v2_1_2018.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.message_header, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_2018.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_2018.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.message = {}

-- Read runtime size of: Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_psxequities_lastsale_itch_v2_1_2018.packet_sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.message_sequence_number, UInt64.new(nasdaq_psxequities_lastsale_itch_v2_1_2018.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 4 fields
  index, message_header = nasdaq_psxequities_lastsale_itch_v2_1_2018.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 13 branches
  index = nasdaq_psxequities_lastsale_itch_v2_1_2018.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_psxequities_lastsale_itch_v2_1_2018.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_psxequities_lastsale_itch_v2_1_2018.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.message, buffer(offset, 0))
    local current = nasdaq_psxequities_lastsale_itch_v2_1_2018.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_psxequities_lastsale_itch_v2_1_2018.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_psxequities_lastsale_itch_v2_1_2018.end_of_session = {}

-- Display: End Of Session
nasdaq_psxequities_lastsale_itch_v2_1_2018.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_psxequities_lastsale_itch_v2_1_2018.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_psxequities_lastsale_itch_v2_1_2018.heartbeat = {}

-- Display: Heartbeat
nasdaq_psxequities_lastsale_itch_v2_1_2018.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_psxequities_lastsale_itch_v2_1_2018.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_psxequities_lastsale_itch_v2_1_2018.messages = {}

-- Dispatch: Messages
nasdaq_psxequities_lastsale_itch_v2_1_2018.messages.dispatch = {
  [0] = nasdaq_psxequities_lastsale_itch_v2_1_2018.heartbeat.dissect,
  [65535] = nasdaq_psxequities_lastsale_itch_v2_1_2018.end_of_session.dissect,
}

-- Dissect: Messages
nasdaq_psxequities_lastsale_itch_v2_1_2018.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = nasdaq_psxequities_lastsale_itch_v2_1_2018.messages.dispatch[message_count]
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
    offset = nasdaq_psxequities_lastsale_itch_v2_1_2018.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_psxequities_lastsale_itch_v2_1_2018.packet_header = {}

-- Size: Packet Header
nasdaq_psxequities_lastsale_itch_v2_1_2018.packet_header.size =
  nasdaq_psxequities_lastsale_itch_v2_1_2018.session.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.sequence_number.size + 
  nasdaq_psxequities_lastsale_itch_v2_1_2018.message_count.size

-- Display: Packet Header
nasdaq_psxequities_lastsale_itch_v2_1_2018.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_psxequities_lastsale_itch_v2_1_2018.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_psxequities_lastsale_itch_v2_1_2018.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_psxequities_lastsale_itch_v2_1_2018.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_psxequities_lastsale_itch_v2_1_2018.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_psxequities_lastsale_itch_v2_1_2018.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_psxequities_lastsale_itch_v2_1_2018.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_2018.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_2018.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_2018.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_psxequities_lastsale_itch_v2_1_2018.packet = {}

-- Verify required size of Udp packet
nasdaq_psxequities_lastsale_itch_v2_1_2018.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_psxequities_lastsale_itch_v2_1_2018.packet_header.size
end

-- Dissect Packet
nasdaq_psxequities_lastsale_itch_v2_1_2018.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_psxequities_lastsale_itch_v2_1_2018.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_psxequities_lastsale_itch_v2_1_2018.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.init()
end

-- Dissector for Nasdaq PsxEquities LastSale Itch 2.1.2018
function omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018, buffer(), omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.description, "("..buffer:len().." Bytes)")
  return nasdaq_psxequities_lastsale_itch_v2_1_2018.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq PsxEquities LastSale Itch 2.1.2018 (Udp)
local function omi_nasdaq_psxequities_lastsale_itch_v2_1_2018_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_psxequities_lastsale_itch_v2_1_2018.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_psxequities_lastsale_itch_v2_1_2018
  omi_nasdaq_psxequities_lastsale_itch_v2_1_2018.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq PsxEquities LastSale Itch 2.1.2018
omi_nasdaq_psxequities_lastsale_itch_v2_1_2018:register_heuristic("udp", omi_nasdaq_psxequities_lastsale_itch_v2_1_2018_udp_heuristic)

-- Register Nasdaq PsxEquities LastSale Itch 2.1.2018 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_psxequities_lastsale_itch_v2_1_2018)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.1.2018
--   Date: Thursday, May 3, 2018
--   Specification: PLSSpecification2.1.pdf
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
