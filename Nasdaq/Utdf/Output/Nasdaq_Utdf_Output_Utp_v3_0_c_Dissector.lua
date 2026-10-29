-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Utdf Output Utp 3.0.c Protocol
local omi_nasdaq_utdf_output_utp_v3_0_c = Proto("Omi.Nasdaq.Utdf.Output.Utp.v3.0.c", "Nasdaq Utdf Output Utp 3.0.c")

-- Protocol table
local nasdaq_utdf_output_utp_v3_0_c = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq Utdf Output Utp 3.0.c Fields
omi_nasdaq_utdf_output_utp_v3_0_c.fields.action_time = ProtoField.new("Action Time", "nasdaq.utdf.output.utp.v3.0.c.actiontime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Timestamp of when the action occurred")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.action_time_utc = ProtoField.new("Action Time", "nasdaq.utdf.output.utp.v3.0.c.actiontime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Timestamp of when the action occurred")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.administrative_message = ProtoField.new("Administrative Message", "nasdaq.utdf.output.utp.v3.0.c.administrativemessage", ftypes.STRING, nil, nil, nil, "Administrative Messages")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "nasdaq.utdf.output.utp.v3.0.c.administrativemessagetype", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.as_of_action = ProtoField.new("As Of Action", "nasdaq.utdf.output.utp.v3.0.c.asofaction", ftypes.STRING, nil, nil, nil, "As-Of Action")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.utdf.output.utp.v3.0.c.authenticity", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.collar_down_price = ProtoField.new("Collar Down Price", "nasdaq.utdf.output.utp.v3.0.c.collardownprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.collar_extension_indicator = ProtoField.new("Collar Extension Indicator", "nasdaq.utdf.output.utp.v3.0.c.collarextensionindicator", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.collar_reference_price = ProtoField.new("Collar Reference Price", "nasdaq.utdf.output.utp.v3.0.c.collarreferenceprice", ftypes.DOUBLE, nil, nil, nil, "Reference price used to set collar")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.collar_up_price = ProtoField.new("Collar Up Price", "nasdaq.utdf.output.utp.v3.0.c.collarupprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.consolidated_high_price = ProtoField.new("Consolidated High Price", "nasdaq.utdf.output.utp.v3.0.c.consolidatedhighprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.consolidated_last_price = ProtoField.new("Consolidated Last Price", "nasdaq.utdf.output.utp.v3.0.c.consolidatedlastprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.consolidated_last_price_originator = ProtoField.new("Consolidated Last Price Originator", "nasdaq.utdf.output.utp.v3.0.c.consolidatedlastpriceoriginator", ftypes.STRING, nil, nil, nil, "Market Center Originator for consolidated last price")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.consolidated_low_price = ProtoField.new("Consolidated Low Price", "nasdaq.utdf.output.utp.v3.0.c.consolidatedlowprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.consolidated_price_change_indicator = ProtoField.new("Consolidated Price Change Indicator", "nasdaq.utdf.output.utp.v3.0.c.consolidatedpricechangeindicator", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.consolidated_volume = ProtoField.new("Consolidated Volume", "nasdaq.utdf.output.utp.v3.0.c.consolidatedvolume", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.control_message = ProtoField.new("Control Message", "nasdaq.utdf.output.utp.v3.0.c.controlmessage", ftypes.STRING, nil, nil, nil, "Control Messages")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.control_message_type = ProtoField.new("Control Message Type", "nasdaq.utdf.output.utp.v3.0.c.controlmessagetype", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.corrected_sale_condition = ProtoField.new("Corrected Sale Condition", "nasdaq.utdf.output.utp.v3.0.c.correctedsalecondition", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.corrected_sellers_sale_days = ProtoField.new("Corrected Sellers Sale Days", "nasdaq.utdf.output.utp.v3.0.c.correctedsellerssaledays", ftypes.UINT16, nil, nil, nil, "Corrected Seller's Sale Days")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.corrected_trade_id = ProtoField.new("Corrected Trade Id", "nasdaq.utdf.output.utp.v3.0.c.correctedtradeid", ftypes.UINT64)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.corrected_trade_price = ProtoField.new("Corrected Trade Price", "nasdaq.utdf.output.utp.v3.0.c.correctedtradeprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.corrected_trade_through_exempt_flag = ProtoField.new("Corrected Trade Through Exempt Flag", "nasdaq.utdf.output.utp.v3.0.c.correctedtradethroughexemptflag", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.corrected_volume_long = ProtoField.new("Corrected Volume Long", "nasdaq.utdf.output.utp.v3.0.c.correctedvolumelong", ftypes.DOUBLE, nil, nil, nil, "Corrected Volume, 6 implied decimal places")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.corrected_volume_short = ProtoField.new("Corrected Volume Short", "nasdaq.utdf.output.utp.v3.0.c.correctedvolumeshort", ftypes.UINT32, nil, nil, nil, "Corrected Volume")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.daily_consolidated_closing_price = ProtoField.new("Daily Consolidated Closing Price", "nasdaq.utdf.output.utp.v3.0.c.dailyconsolidatedclosingprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.daily_consolidated_high_price = ProtoField.new("Daily Consolidated High Price", "nasdaq.utdf.output.utp.v3.0.c.dailyconsolidatedhighprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.daily_consolidated_low_price = ProtoField.new("Daily Consolidated Low Price", "nasdaq.utdf.output.utp.v3.0.c.dailyconsolidatedlowprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.utdf.output.utp.v3.0.c.financialstatusindicator", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.issue_name = ProtoField.new("Issue Name", "nasdaq.utdf.output.utp.v3.0.c.issuename", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.issue_subtype = ProtoField.new("Issue Subtype", "nasdaq.utdf.output.utp.v3.0.c.issuesubtype", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.issue_type = ProtoField.new("Issue Type", "nasdaq.utdf.output.utp.v3.0.c.issuetype", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.limit_down_price = ProtoField.new("Limit Down Price", "nasdaq.utdf.output.utp.v3.0.c.limitdownprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.limit_up_price = ProtoField.new("Limit Up Price", "nasdaq.utdf.output.utp.v3.0.c.limitupprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.luld_price_band_effective_time = ProtoField.new("Luld Price Band Effective Time", "nasdaq.utdf.output.utp.v3.0.c.luldpricebandeffectivetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.luld_price_band_effective_time_utc = ProtoField.new("Luld Price Band Effective Time", "nasdaq.utdf.output.utp.v3.0.c.luldpricebandeffectivetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.luld_price_band_indicator = ProtoField.new("Luld Price Band Indicator", "nasdaq.utdf.output.utp.v3.0.c.luldpricebandindicator", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_center_close_indicator = ProtoField.new("Market Center Close Indicator", "nasdaq.utdf.output.utp.v3.0.c.marketcentercloseindicator", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_center_closing_price = ProtoField.new("Market Center Closing Price", "nasdaq.utdf.output.utp.v3.0.c.marketcenterclosingprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_center_closing_price_and_volume_summary = ProtoField.new("Market Center Closing Price And Volume Summary", "nasdaq.utdf.output.utp.v3.0.c.marketcenterclosingpriceandvolumesummary", ftypes.STRING, nil, nil, nil, "Market Center Closing Price and Volume Summary attachment following the Closing Trade Summary Report Message. Repeats Number of Market Center Attachments times.")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_center_identifier = ProtoField.new("Market Center Identifier", "nasdaq.utdf.output.utp.v3.0.c.marketcenteridentifier", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_center_originator = ProtoField.new("Market Center Originator", "nasdaq.utdf.output.utp.v3.0.c.marketcenteroriginator", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_center_volume = ProtoField.new("Market Center Volume", "nasdaq.utdf.output.utp.v3.0.c.marketcentervolume", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_center_volume_group = ProtoField.new("Market Center Volume Group", "nasdaq.utdf.output.utp.v3.0.c.marketcentervolumegroup", ftypes.STRING, nil, nil, nil, "Market Center Volume attachment following the Total Consolidated and Market Center Volume Message. Repeats Number of Market Center Attachments times.")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_participant_high_price = ProtoField.new("Market Participant High Price", "nasdaq.utdf.output.utp.v3.0.c.marketparticipanthighprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_participant_last_price = ProtoField.new("Market Participant Last Price", "nasdaq.utdf.output.utp.v3.0.c.marketparticipantlastprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_participant_low_price = ProtoField.new("Market Participant Low Price", "nasdaq.utdf.output.utp.v3.0.c.marketparticipantlowprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_participant_volume = ProtoField.new("Market Participant Volume", "nasdaq.utdf.output.utp.v3.0.c.marketparticipantvolume", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_tier = ProtoField.new("Market Tier", "nasdaq.utdf.output.utp.v3.0.c.markettier", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.message_category = ProtoField.new("Message Category", "nasdaq.utdf.output.utp.v3.0.c.messagecategory", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.message_count = ProtoField.new("Message Count", "nasdaq.utdf.output.utp.v3.0.c.messagecount", ftypes.UINT16, nil, nil, nil, "Number of messages to follow this header")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.message_length = ProtoField.new("Message Length", "nasdaq.utdf.output.utp.v3.0.c.messagelength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.mwcb_level_1 = ProtoField.new("Mwcb Level 1", "nasdaq.utdf.output.utp.v3.0.c.mwcblevel1", ftypes.UINT64, nil, nil, nil, "MWCB Level 1 (7% decline) price")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.mwcb_level_2 = ProtoField.new("Mwcb Level 2", "nasdaq.utdf.output.utp.v3.0.c.mwcblevel2", ftypes.UINT64, nil, nil, nil, "MWCB Level 2 (13% decline) price")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.mwcb_level_3 = ProtoField.new("Mwcb Level 3", "nasdaq.utdf.output.utp.v3.0.c.mwcblevel3", ftypes.UINT64, nil, nil, nil, "MWCB Level 3 (20% decline) price")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.mwcb_status_level_indicator = ProtoField.new("Mwcb Status Level Indicator", "nasdaq.utdf.output.utp.v3.0.c.mwcbstatuslevelindicator", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.number_of_market_center_attachments = ProtoField.new("Number Of Market Center Attachments", "nasdaq.utdf.output.utp.v3.0.c.numberofmarketcenterattachments", ftypes.UINT16)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.old_symbol = ProtoField.new("Old Symbol", "nasdaq.utdf.output.utp.v3.0.c.oldsymbol", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.original_sale_condition = ProtoField.new("Original Sale Condition", "nasdaq.utdf.output.utp.v3.0.c.originalsalecondition", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.original_sellers_sale_days = ProtoField.new("Original Sellers Sale Days", "nasdaq.utdf.output.utp.v3.0.c.originalsellerssaledays", ftypes.UINT16, nil, nil, nil, "Original Seller's Sale Days")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.original_trade_id = ProtoField.new("Original Trade Id", "nasdaq.utdf.output.utp.v3.0.c.originaltradeid", ftypes.UINT64, nil, nil, nil, "Original Trade Id of the trade being canceled")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.original_trade_price = ProtoField.new("Original Trade Price", "nasdaq.utdf.output.utp.v3.0.c.originaltradeprice", ftypes.DOUBLE, nil, nil, nil, "Original Trade Price, 6 implied decimal places")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.original_trade_through_exempt_flag = ProtoField.new("Original Trade Through Exempt Flag", "nasdaq.utdf.output.utp.v3.0.c.originaltradethroughexemptflag", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.original_volume_long = ProtoField.new("Original Volume Long", "nasdaq.utdf.output.utp.v3.0.c.originalvolumelong", ftypes.DOUBLE, nil, nil, nil, "Original Volume, 6 implied decimal places")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.original_volume_short = ProtoField.new("Original Volume Short", "nasdaq.utdf.output.utp.v3.0.c.originalvolumeshort", ftypes.UINT32, nil, nil, nil, "Original Volume")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.participant_price_change_indicator = ProtoField.new("Participant Price Change Indicator", "nasdaq.utdf.output.utp.v3.0.c.participantpricechangeindicator", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.participant_token = ProtoField.new("Participant Token", "nasdaq.utdf.output.utp.v3.0.c.participanttoken", ftypes.UINT64)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.reason_for_the_trading_action = ProtoField.new("Reason For The Trading Action", "nasdaq.utdf.output.utp.v3.0.c.reasonforthetradingaction", ftypes.STRING, nil, nil, nil, "Trading Action Reason Code")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.utdf.output.utp.v3.0.c.regshoaction", ftypes.STRING, nil, nil, nil, "Reg SHO Action Code")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.utdf.output.utp.v3.0.c.roundlotsize", ftypes.UINT16)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.sale_condition = ProtoField.new("Sale Condition", "nasdaq.utdf.output.utp.v3.0.c.salecondition", ftypes.STRING, nil, nil, nil, "Sale Condition, Level1/Level2/Level3/Level4 byte values")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.sellers_sale_days = ProtoField.new("Sellers Sale Days", "nasdaq.utdf.output.utp.v3.0.c.sellerssaledays", ftypes.UINT16, nil, nil, nil, "Seller's Sale Days. Zero filled unless Sale Condition is R (Seller)")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.utdf.output.utp.v3.0.c.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first message to follow this header")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.session = ProtoField.new("Session", "nasdaq.utdf.output.utp.v3.0.c.session", ftypes.STRING, nil, nil, nil, "Identity of the multicast session")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.utdf.output.utp.v3.0.c.shortsalethresholdindicator", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.sip_timestamp = ProtoField.new("Sip Timestamp", "nasdaq.utdf.output.utp.v3.0.c.siptimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.sip_timestamp_utc = ProtoField.new("Sip Timestamp", "nasdaq.utdf.output.utp.v3.0.c.siptimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.sub_market_center_id = ProtoField.new("Sub Market Center Id", "nasdaq.utdf.output.utp.v3.0.c.submarketcenterid", ftypes.STRING, nil, nil, nil, "Sub-Market Center ID")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.symbol_long = ProtoField.new("Symbol Long", "nasdaq.utdf.output.utp.v3.0.c.symbollong", ftypes.STRING, nil, nil, nil, "Security symbol")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.symbol_short = ProtoField.new("Symbol Short", "nasdaq.utdf.output.utp.v3.0.c.symbolshort", ftypes.STRING, nil, nil, nil, "Security symbol")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.text = ProtoField.new("Text", "nasdaq.utdf.output.utp.v3.0.c.text", ftypes.STRING, nil, nil, nil, "Administrative text; variable-length, sized by Text Length")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.text_length = ProtoField.new("Text Length", "nasdaq.utdf.output.utp.v3.0.c.textlength", ftypes.UINT16, nil, nil, nil, "Length of the variable Text field")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.timestamp_1 = ProtoField.new("Timestamp 1", "nasdaq.utdf.output.utp.v3.0.c.timestamp1", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Participant Timestamp")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.timestamp_1_utc = ProtoField.new("Timestamp 1", "nasdaq.utdf.output.utp.v3.0.c.timestamp1.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Participant Timestamp")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.timestamp_2 = ProtoField.new("Timestamp 2", "nasdaq.utdf.output.utp.v3.0.c.timestamp2", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "FINRA Timestamp, nanoseconds since Epoch. Set to 0 if from an exchange")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.timestamp_2_utc = ProtoField.new("Timestamp 2", "nasdaq.utdf.output.utp.v3.0.c.timestamp2.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "FINRA Timestamp, nanoseconds since Epoch. Set to 0 if from an exchange")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.timestamp_of_trade = ProtoField.new("Timestamp Of Trade", "nasdaq.utdf.output.utp.v3.0.c.timestampoftrade", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Timestamp of original trade")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.timestamp_of_trade_utc = ProtoField.new("Timestamp Of Trade", "nasdaq.utdf.output.utp.v3.0.c.timestampoftrade.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Timestamp of original trade")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.total_consolidated_volume = ProtoField.new("Total Consolidated Volume", "nasdaq.utdf.output.utp.v3.0.c.totalconsolidatedvolume", ftypes.DOUBLE, nil, nil, nil, "Total Consolidated Volume, 6 implied decimal places")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.total_consolidated_volume_message = ProtoField.new("Total Consolidated Volume Message", "nasdaq.utdf.output.utp.v3.0.c.totalconsolidatedvolumemessage", ftypes.STRING, nil, nil, nil, "Total Consolidated And Market Center Volume Messages")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.total_consolidated_volume_message_type = ProtoField.new("Total Consolidated Volume Message Type", "nasdaq.utdf.output.utp.v3.0.c.totalconsolidatedvolumemessagetype", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_cancellation_type = ProtoField.new("Trade Cancellation Type", "nasdaq.utdf.output.utp.v3.0.c.tradecancellationtype", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_id = ProtoField.new("Trade Id", "nasdaq.utdf.output.utp.v3.0.c.tradeid", ftypes.UINT64, nil, nil, nil, "Trade Id, unique per participant per sub market center per symbol per session")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_message = ProtoField.new("Trade Message", "nasdaq.utdf.output.utp.v3.0.c.trademessage", ftypes.STRING, nil, nil, nil, "Trade Messages Utp Trade Feed Only")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_message_type = ProtoField.new("Trade Message Type", "nasdaq.utdf.output.utp.v3.0.c.trademessagetype", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_price_long = ProtoField.new("Trade Price Long", "nasdaq.utdf.output.utp.v3.0.c.tradepricelong", ftypes.DOUBLE, nil, nil, nil, "Trade Price, 6 implied decimal places")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_price_short = ProtoField.new("Trade Price Short", "nasdaq.utdf.output.utp.v3.0.c.tradepriceshort", ftypes.DOUBLE, nil, nil, nil, "Trade Price, 2 implied decimal places")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_through_exempt_flag = ProtoField.new("Trade Through Exempt Flag", "nasdaq.utdf.output.utp.v3.0.c.tradethroughexemptflag", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_volume = ProtoField.new("Trade Volume", "nasdaq.utdf.output.utp.v3.0.c.tradevolume", ftypes.DOUBLE, nil, nil, nil, "Trade Volume, 6 implied decimal places")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_volume_long = ProtoField.new("Trade Volume Long", "nasdaq.utdf.output.utp.v3.0.c.tradevolumelong", ftypes.UINT32, nil, nil, nil, "Trade Volume")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_volume_short = ProtoField.new("Trade Volume Short", "nasdaq.utdf.output.utp.v3.0.c.tradevolumeshort", ftypes.UINT16, nil, nil, nil, "Trade Volume, in number of actual shares")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.trading_action_code = ProtoField.new("Trading Action Code", "nasdaq.utdf.output.utp.v3.0.c.tradingactioncode", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.trading_action_indicator = ProtoField.new("Trading Action Indicator", "nasdaq.utdf.output.utp.v3.0.c.tradingactionindicator", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.trading_action_sequence_number = ProtoField.new("Trading Action Sequence Number", "nasdaq.utdf.output.utp.v3.0.c.tradingactionsequencenumber", ftypes.UINT32)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.version = ProtoField.new("Version", "nasdaq.utdf.output.utp.v3.0.c.version", ftypes.STRING, nil, nil, nil, "Protocol Version. Allows each message format to be updated while still supporting previous versions during transition")

-- Nasdaq Utdf Output Utp 3.0.c Framing
omi_nasdaq_utdf_output_utp_v3_0_c.fields.message = ProtoField.new("Message", "nasdaq.utdf.output.utp.v3.0.c.message", ftypes.STRING, nil, nil, nil, "Mold Udp64 Message")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.message_header = ProtoField.new("Message Header", "nasdaq.utdf.output.utp.v3.0.c.messageheader", ftypes.STRING, nil, nil, nil, "Utp Mold Udp 64 Message Header")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.packet = ProtoField.new("Packet", "nasdaq.utdf.output.utp.v3.0.c.packet", ftypes.STRING, nil, nil, nil, "Utp Mold Udp 64 Packet")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.utdf.output.utp.v3.0.c.packetheader", ftypes.STRING, nil, nil, nil, "Utp Mold Udp 64 Packet Header")

-- Nasdaq Utdf Output 3.0.c Application Messages
omi_nasdaq_utdf_output_utp_v3_0_c.fields.auction_collar_message = ProtoField.new("Auction Collar Message", "nasdaq.utdf.output.utp.v3.0.c.auctioncollarmessage", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.closing_trade_summary_report_message = ProtoField.new("Closing Trade Summary Report Message", "nasdaq.utdf.output.utp.v3.0.c.closingtradesummaryreportmessage", ftypes.STRING, nil, nil, nil, "Fractional Closing Trade Summary Report Message. Disseminated three times daily, last at End of Trading Reporting event, with attachments per market center")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.cross_sro_trading_action_message = ProtoField.new("Cross Sro Trading Action Message", "nasdaq.utdf.output.utp.v3.0.c.crosssrotradingactionmessage", ftypes.STRING, nil, nil, nil, "Informs subscribers of trading actions across all UTP participants")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.end_of_consolidated_last_sale_eligibility_message = ProtoField.new("End Of Consolidated Last Sale Eligibility Message", "nasdaq.utdf.output.utp.v3.0.c.endofconsolidatedlastsaleeligibilitymessage", ftypes.STRING, nil, nil, nil, "Signals the closing of the trade-reporting window for consolidated last sale calculation eligibility. Generated 10 seconds after the market close message from the primary market")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.end_of_day_message = ProtoField.new("End Of Day Message", "nasdaq.utdf.output.utp.v3.0.c.endofdaymessage", ftypes.STRING, nil, nil, nil, "Signals the end of active message dissemination for the UTP SIP operational cycle")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.end_of_trade_reporting_message = ProtoField.new("End Of Trade Reporting Message", "nasdaq.utdf.output.utp.v3.0.c.endoftradereportingmessage", ftypes.STRING, nil, nil, nil, "Signals that SIP has completed its trade entry eligibility and no further trade data will be accepted for the market session")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.end_of_transmissions_message = ProtoField.new("End Of Transmissions Message", "nasdaq.utdf.output.utp.v3.0.c.endoftransmissionsmessage", ftypes.STRING, nil, nil, nil, "Signals that there will be no further transmissions for the day")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.fractional_as_of_trade_message = ProtoField.new("Fractional As Of Trade Message", "nasdaq.utdf.output.utp.v3.0.c.fractionalasoftrademessage", ftypes.STRING, nil, nil, nil, "Fractional As-Of Trade Message. Introduced with the Fractional Share Release on February 23, 2026.")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.fractional_trade_cancel_error_message = ProtoField.new("Fractional Trade Cancel Error Message", "nasdaq.utdf.output.utp.v3.0.c.fractionaltradecancelerrormessage", ftypes.STRING, nil, nil, nil, "Fractional Trade Cancel/Error Message. Introduced with the Fractional Share Release on February 23, 2026.")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.fractional_trade_correction_message = ProtoField.new("Fractional Trade Correction Message", "nasdaq.utdf.output.utp.v3.0.c.fractionaltradecorrectionmessage", ftypes.STRING, nil, nil, nil, "Fractional Trade Correction Message. Introduced with the Fractional Share Release on February 23, 2026.")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.fractional_trade_report_message_long_form_message = ProtoField.new("Fractional Trade Report Message Long Form Message", "nasdaq.utdf.output.utp.v3.0.c.fractionaltradereportmessagelongformmessage", ftypes.STRING, nil, nil, nil, "Fractional Long-format Trade Report Message. Introduced with the Fractional Share Release on February 23, 2026.")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.fractional_trade_report_message_short_form_message = ProtoField.new("Fractional Trade Report Message Short Form Message", "nasdaq.utdf.output.utp.v3.0.c.fractionaltradereportmessageshortformmessage", ftypes.STRING, nil, nil, nil, "Fractional Short-format Trade Report Message. Introduced with the Fractional Share Release on February 23, 2026.")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.general_administrative_message = ProtoField.new("General Administrative Message", "nasdaq.utdf.output.utp.v3.0.c.generaladministrativemessage", ftypes.STRING, nil, nil, nil, "General Administrative Message containing free-form text")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.issue_symbol_directory_message = ProtoField.new("Issue Symbol Directory Message", "nasdaq.utdf.output.utp.v3.0.c.issuesymboldirectorymessage", ftypes.STRING, nil, nil, nil, "Issue Symbol Directory Message providing reference data for NASDAQ-listed securities")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.limit_up_limit_down_price_band_message = ProtoField.new("Limit Up Limit Down Price Band Message", "nasdaq.utdf.output.utp.v3.0.c.limituplimitdownpricebandmessage", ftypes.STRING, nil, nil, nil, "LULD Price Band Message")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_center_trading_action_message = ProtoField.new("Market Center Trading Action Message", "nasdaq.utdf.output.utp.v3.0.c.marketcentertradingactionmessage", ftypes.STRING, nil, nil, nil, "Informs UTP data feed subscribers when a UTP participant invokes or releases a market center-specific trading halt")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_session_close_message = ProtoField.new("Market Session Close Message", "nasdaq.utdf.output.utp.v3.0.c.marketsessionclosemessage", ftypes.STRING, nil, nil, nil, "Signals the closing of market systems")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_session_open_message = ProtoField.new("Market Session Open Message", "nasdaq.utdf.output.utp.v3.0.c.marketsessionopenmessage", ftypes.STRING, nil, nil, nil, "Signifies the opening of market systems")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_wide_circuit_breaker_decline_level_message = ProtoField.new("Market Wide Circuit Breaker Decline Level Message", "nasdaq.utdf.output.utp.v3.0.c.marketwidecircuitbreakerdeclinelevelmessage", ftypes.STRING, nil, nil, nil, "MWCB Decline Message")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_wide_circuit_breaker_status_message = ProtoField.new("Market Wide Circuit Breaker Status Message", "nasdaq.utdf.output.utp.v3.0.c.marketwidecircuitbreakerstatusmessage", ftypes.STRING, nil, nil, nil, "MWCB Status Message")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.prior_day_as_of_trade_message = ProtoField.new("Prior Day As Of Trade Message", "nasdaq.utdf.output.utp.v3.0.c.priordayasoftrademessage", ftypes.STRING, nil, nil, nil, "Prior Day As-Of Trade Message. To be retired with the Fractional Share Release on February 23, 2026.")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.utdf.output.utp.v3.0.c.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING, nil, nil, nil, "Reg SHO Restriction Indicator Message")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "nasdaq.utdf.output.utp.v3.0.c.startofdaymessage", ftypes.STRING, nil, nil, nil, "Signifies the beginning of each operational cycle for SIP Processing")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.total_consolidated_and_market_center_volume_message = ProtoField.new("Total Consolidated And Market Center Volume Message", "nasdaq.utdf.output.utp.v3.0.c.totalconsolidatedandmarketcentervolumemessage", ftypes.STRING, nil, nil, nil, "Fractional Total Consolidated and Market Center Volume Message. Relays intra-day cumulative consolidated share volume and per-market center volume")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_cancel_error_message = ProtoField.new("Trade Cancel Error Message", "nasdaq.utdf.output.utp.v3.0.c.tradecancelerrormessage", ftypes.STRING, nil, nil, nil, "Trade Cancel/Error Message. To be retired with the Fractional Share Release on February 23, 2026.")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "nasdaq.utdf.output.utp.v3.0.c.tradecorrectionmessage", ftypes.STRING, nil, nil, nil, "Trade Correction Message. To be retired with the Fractional Share Release on February 23, 2026.")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_report_message_long_form_message = ProtoField.new("Trade Report Message Long Form Message", "nasdaq.utdf.output.utp.v3.0.c.tradereportmessagelongformmessage", ftypes.STRING, nil, nil, nil, "Long-format Trade Report Message. To be retired with the Fractional Share Release on February 23, 2026.")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_report_message_short_form_message = ProtoField.new("Trade Report Message Short Form Message", "nasdaq.utdf.output.utp.v3.0.c.tradereportmessageshortformmessage", ftypes.STRING, nil, nil, nil, "Short-format Trade Report Message. To be retired with the Fractional Share Release on February 23, 2026.")

-- Nasdaq Utdf Output 3.0.c Session Messages
omi_nasdaq_utdf_output_utp_v3_0_c.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.utdf.output.utp.v3.0.c.endofsession", ftypes.BYTES, nil, nil, nil, "Mold Udp64 end of session")
omi_nasdaq_utdf_output_utp_v3_0_c.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.utdf.output.utp.v3.0.c.heartbeat", ftypes.BYTES, nil, nil, nil, "Mold Udp64 heartbeat")

-- Nasdaq Utdf Output Utp 3.0.c Generated Fields
omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_center_closing_price_and_volume_summary_index = ProtoField.new("Market Center Closing Price And Volume Summary Index", "nasdaq.utdf.output.utp.v3.0.c.marketcenterclosingpriceandvolumesummaryindex", ftypes.UINT16)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_center_volume_group_index = ProtoField.new("Market Center Volume Group Index", "nasdaq.utdf.output.utp.v3.0.c.marketcentervolumegroupindex", ftypes.UINT16)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.message_index = ProtoField.new("Message Index", "nasdaq.utdf.output.utp.v3.0.c.messageindex", ftypes.UINT16)
omi_nasdaq_utdf_output_utp_v3_0_c.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.utdf.output.utp.v3.0.c.messagesequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq Utdf Output Utp 3.0.c Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
nasdaq_utdf_output_utp_v3_0_c.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq Utdf Output Utp 3.0.c Element Dissection Options
show.structs = true
show.application_messages = true
show.repeating_groups = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Nasdaq Utdf Output Utp 3.0.c Show Options
omi_nasdaq_utdf_output_utp_v3_0_c.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_utdf_output_utp_v3_0_c.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_utdf_output_utp_v3_0_c.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_nasdaq_utdf_output_utp_v3_0_c.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_utdf_output_utp_v3_0_c.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_utdf_output_utp_v3_0_c.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_utdf_output_utp_v3_0_c.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_nasdaq_utdf_output_utp_v3_0_c.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_utdf_output_utp_v3_0_c.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_utdf_output_utp_v3_0_c.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_utdf_output_utp_v3_0_c.prefs.show_headers then
    show.headers = omi_nasdaq_utdf_output_utp_v3_0_c.prefs.show_headers
  end
  if show.repeating_groups ~= omi_nasdaq_utdf_output_utp_v3_0_c.prefs.show_repeating_groups then
    show.repeating_groups = omi_nasdaq_utdf_output_utp_v3_0_c.prefs.show_repeating_groups
  end
  if show.structs ~= omi_nasdaq_utdf_output_utp_v3_0_c.prefs.show_structs then
    show.structs = omi_nasdaq_utdf_output_utp_v3_0_c.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_utdf_output_utp_v3_0_c.prefs.show_indexes then
    show.indexes = omi_nasdaq_utdf_output_utp_v3_0_c.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_utdf_output_utp_v3_0_c.prefs.show_sequences then
    show.sequences = omi_nasdaq_utdf_output_utp_v3_0_c.prefs.show_sequences
  end
  if nasdaq_utdf_output_utp_v3_0_c.absolute_time_base ~= omi_nasdaq_utdf_output_utp_v3_0_c.prefs.absolute_time_base then
    nasdaq_utdf_output_utp_v3_0_c.absolute_time_base = omi_nasdaq_utdf_output_utp_v3_0_c.prefs.absolute_time_base
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
-- Nasdaq Utdf Output Utp 3.0.c Fields
-----------------------------------------------------------------------

-- Action Time
nasdaq_utdf_output_utp_v3_0_c.action_time = {}

-- Size: Action Time
nasdaq_utdf_output_utp_v3_0_c.action_time.size = 8

-- Dissect: Action Time
nasdaq_utdf_output_utp_v3_0_c.action_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.action_time.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nasdaq_utdf_output_utp_v3_0_c.fields.action_time
  if nasdaq_utdf_output_utp_v3_0_c.absolute_time_base == 1 then field = omi_nasdaq_utdf_output_utp_v3_0_c.fields.action_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Administrative Message Type
nasdaq_utdf_output_utp_v3_0_c.administrative_message_type = {}

-- Size: Administrative Message Type
nasdaq_utdf_output_utp_v3_0_c.administrative_message_type.size = 1

-- Display: Administrative Message Type
nasdaq_utdf_output_utp_v3_0_c.administrative_message_type.display = function(value)
  return "Administrative Message Type: "..value
end

-- Dissect: Administrative Message Type
nasdaq_utdf_output_utp_v3_0_c.administrative_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.administrative_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.administrative_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- As Of Action
nasdaq_utdf_output_utp_v3_0_c.as_of_action = {}

-- Size: As Of Action
nasdaq_utdf_output_utp_v3_0_c.as_of_action.size = 1

-- Display: As Of Action
nasdaq_utdf_output_utp_v3_0_c.as_of_action.labels = {
  ["A"] = "As Of Action: As Of Trade Addition (A)",
  ["C"] = "As Of Action: As Of Trade Cancel (C)",
}

nasdaq_utdf_output_utp_v3_0_c.as_of_action.display = function(value)
  return nasdaq_utdf_output_utp_v3_0_c.as_of_action.labels[value] or "As Of Action: Unknown("..value..")"
end

-- Dissect: As Of Action
nasdaq_utdf_output_utp_v3_0_c.as_of_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.as_of_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.as_of_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.as_of_action, range, value, display)

  return offset + length, value
end

-- Authenticity
nasdaq_utdf_output_utp_v3_0_c.authenticity = {}

-- Size: Authenticity
nasdaq_utdf_output_utp_v3_0_c.authenticity.size = 1

-- Display: Authenticity
nasdaq_utdf_output_utp_v3_0_c.authenticity.labels = {
  ["P"] = "Authenticity: Live Production (P)",
  ["T"] = "Authenticity: Test (T)",
  ["D"] = "Authenticity: Demo (D)",
  ["X"] = "Authenticity: Deleted (X)",
}

nasdaq_utdf_output_utp_v3_0_c.authenticity.display = function(value)
  return nasdaq_utdf_output_utp_v3_0_c.authenticity.labels[value] or "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_utdf_output_utp_v3_0_c.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Collar Down Price
nasdaq_utdf_output_utp_v3_0_c.collar_down_price = {}

-- Size: Collar Down Price
nasdaq_utdf_output_utp_v3_0_c.collar_down_price.size = 8

-- Display: Collar Down Price
nasdaq_utdf_output_utp_v3_0_c.collar_down_price.display = function(value)
  return "Collar Down Price: "..value
end

-- Translate: Collar Down Price
nasdaq_utdf_output_utp_v3_0_c.collar_down_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Down Price
nasdaq_utdf_output_utp_v3_0_c.collar_down_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.collar_down_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.collar_down_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.collar_down_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.collar_down_price, range, value, display)

  return offset + length, value
end

-- Collar Extension Indicator
nasdaq_utdf_output_utp_v3_0_c.collar_extension_indicator = {}

-- Size: Collar Extension Indicator
nasdaq_utdf_output_utp_v3_0_c.collar_extension_indicator.size = 1

-- Display: Collar Extension Indicator
nasdaq_utdf_output_utp_v3_0_c.collar_extension_indicator.display = function(value)
  return "Collar Extension Indicator: "..value
end

-- Dissect: Collar Extension Indicator
nasdaq_utdf_output_utp_v3_0_c.collar_extension_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.collar_extension_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.collar_extension_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.collar_extension_indicator, range, value, display)

  return offset + length, value
end

-- Collar Reference Price
nasdaq_utdf_output_utp_v3_0_c.collar_reference_price = {}

-- Size: Collar Reference Price
nasdaq_utdf_output_utp_v3_0_c.collar_reference_price.size = 8

-- Display: Collar Reference Price
nasdaq_utdf_output_utp_v3_0_c.collar_reference_price.display = function(value)
  return "Collar Reference Price: "..value
end

-- Translate: Collar Reference Price
nasdaq_utdf_output_utp_v3_0_c.collar_reference_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Reference Price
nasdaq_utdf_output_utp_v3_0_c.collar_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.collar_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.collar_reference_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.collar_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.collar_reference_price, range, value, display)

  return offset + length, value
end

-- Collar Up Price
nasdaq_utdf_output_utp_v3_0_c.collar_up_price = {}

-- Size: Collar Up Price
nasdaq_utdf_output_utp_v3_0_c.collar_up_price.size = 8

-- Display: Collar Up Price
nasdaq_utdf_output_utp_v3_0_c.collar_up_price.display = function(value)
  return "Collar Up Price: "..value
end

-- Translate: Collar Up Price
nasdaq_utdf_output_utp_v3_0_c.collar_up_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Up Price
nasdaq_utdf_output_utp_v3_0_c.collar_up_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.collar_up_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.collar_up_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.collar_up_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.collar_up_price, range, value, display)

  return offset + length, value
end

-- Consolidated High Price
nasdaq_utdf_output_utp_v3_0_c.consolidated_high_price = {}

-- Size: Consolidated High Price
nasdaq_utdf_output_utp_v3_0_c.consolidated_high_price.size = 8

-- Display: Consolidated High Price
nasdaq_utdf_output_utp_v3_0_c.consolidated_high_price.display = function(value)
  return "Consolidated High Price: "..value
end

-- Translate: Consolidated High Price
nasdaq_utdf_output_utp_v3_0_c.consolidated_high_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Consolidated High Price
nasdaq_utdf_output_utp_v3_0_c.consolidated_high_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.consolidated_high_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.consolidated_high_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.consolidated_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.consolidated_high_price, range, value, display)

  return offset + length, value
end

-- Consolidated Last Price
nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price = {}

-- Size: Consolidated Last Price
nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price.size = 8

-- Display: Consolidated Last Price
nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price.display = function(value)
  return "Consolidated Last Price: "..value
end

-- Translate: Consolidated Last Price
nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Consolidated Last Price
nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.consolidated_last_price, range, value, display)

  return offset + length, value
end

-- Consolidated Last Price Originator
nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price_originator = {}

-- Size: Consolidated Last Price Originator
nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price_originator.size = 1

-- Display: Consolidated Last Price Originator
nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price_originator.display = function(value)
  return "Consolidated Last Price Originator: "..value
end

-- Dissect: Consolidated Last Price Originator
nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price_originator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price_originator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price_originator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.consolidated_last_price_originator, range, value, display)

  return offset + length, value
end

-- Consolidated Low Price
nasdaq_utdf_output_utp_v3_0_c.consolidated_low_price = {}

-- Size: Consolidated Low Price
nasdaq_utdf_output_utp_v3_0_c.consolidated_low_price.size = 8

-- Display: Consolidated Low Price
nasdaq_utdf_output_utp_v3_0_c.consolidated_low_price.display = function(value)
  return "Consolidated Low Price: "..value
end

-- Translate: Consolidated Low Price
nasdaq_utdf_output_utp_v3_0_c.consolidated_low_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Consolidated Low Price
nasdaq_utdf_output_utp_v3_0_c.consolidated_low_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.consolidated_low_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.consolidated_low_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.consolidated_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.consolidated_low_price, range, value, display)

  return offset + length, value
end

-- Consolidated Price Change Indicator
nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator = {}

-- Size: Consolidated Price Change Indicator
nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator.size = 1

-- Display: Consolidated Price Change Indicator
nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator.labels = {
  ["0"] = "Consolidated Price Change Indicator: No Prices Changed (0)",
  ["1"] = "Consolidated Price Change Indicator: Consolidated Last Price Changed (1)",
  ["2"] = "Consolidated Price Change Indicator: Consolidated Low Price Changed (2)",
  ["3"] = "Consolidated Price Change Indicator: Consolidated Last And Consolidated Low Prices Changed (3)",
  ["4"] = "Consolidated Price Change Indicator: Consolidated High Price Changed (4)",
  ["5"] = "Consolidated Price Change Indicator: Consolidated Last And Consolidated High Prices Changed (5)",
  ["6"] = "Consolidated Price Change Indicator: Consolidated High And Consolidated Low Prices Changed (6)",
  ["7"] = "Consolidated Price Change Indicator: All Consolidated Prices Changed (7)",
}

nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator.display = function(value)
  return nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator.labels[value] or "Consolidated Price Change Indicator: Unknown("..value..")"
end

-- Dissect: Consolidated Price Change Indicator
nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.consolidated_price_change_indicator, range, value, display)

  return offset + length, value
end

-- Consolidated Volume
nasdaq_utdf_output_utp_v3_0_c.consolidated_volume = {}

-- Size: Consolidated Volume
nasdaq_utdf_output_utp_v3_0_c.consolidated_volume.size = 8

-- Display: Consolidated Volume
nasdaq_utdf_output_utp_v3_0_c.consolidated_volume.display = function(value)
  return "Consolidated Volume: "..value
end

-- Translate: Consolidated Volume
nasdaq_utdf_output_utp_v3_0_c.consolidated_volume.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Consolidated Volume
nasdaq_utdf_output_utp_v3_0_c.consolidated_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.consolidated_volume.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.consolidated_volume.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.consolidated_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.consolidated_volume, range, value, display)

  return offset + length, value
end

-- Control Message Type
nasdaq_utdf_output_utp_v3_0_c.control_message_type = {}

-- Size: Control Message Type
nasdaq_utdf_output_utp_v3_0_c.control_message_type.size = 1

-- Display: Control Message Type
nasdaq_utdf_output_utp_v3_0_c.control_message_type.display = function(value)
  return "Control Message Type: "..value
end

-- Dissect: Control Message Type
nasdaq_utdf_output_utp_v3_0_c.control_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.control_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.control_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Corrected Sale Condition
nasdaq_utdf_output_utp_v3_0_c.corrected_sale_condition = {}

-- Size: Corrected Sale Condition
nasdaq_utdf_output_utp_v3_0_c.corrected_sale_condition.size = 4

-- Display: Corrected Sale Condition
nasdaq_utdf_output_utp_v3_0_c.corrected_sale_condition.display = function(value)
  return "Corrected Sale Condition: "..value
end

-- Dissect: Corrected Sale Condition
nasdaq_utdf_output_utp_v3_0_c.corrected_sale_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.corrected_sale_condition.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utdf_output_utp_v3_0_c.corrected_sale_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.corrected_sale_condition, range, value, display)

  return offset + length, value
end

-- Corrected Sellers Sale Days
nasdaq_utdf_output_utp_v3_0_c.corrected_sellers_sale_days = {}

-- Size: Corrected Sellers Sale Days
nasdaq_utdf_output_utp_v3_0_c.corrected_sellers_sale_days.size = 2

-- Display: Corrected Sellers Sale Days
nasdaq_utdf_output_utp_v3_0_c.corrected_sellers_sale_days.display = function(value)
  return "Corrected Sellers Sale Days: "..value
end

-- Dissect: Corrected Sellers Sale Days
nasdaq_utdf_output_utp_v3_0_c.corrected_sellers_sale_days.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.corrected_sellers_sale_days.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v3_0_c.corrected_sellers_sale_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.corrected_sellers_sale_days, range, value, display)

  return offset + length, value
end

-- Corrected Trade Id
nasdaq_utdf_output_utp_v3_0_c.corrected_trade_id = {}

-- Size: Corrected Trade Id
nasdaq_utdf_output_utp_v3_0_c.corrected_trade_id.size = 8

-- Display: Corrected Trade Id
nasdaq_utdf_output_utp_v3_0_c.corrected_trade_id.display = function(value)
  return "Corrected Trade Id: "..value
end

-- Dissect: Corrected Trade Id
nasdaq_utdf_output_utp_v3_0_c.corrected_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.corrected_trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v3_0_c.corrected_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.corrected_trade_id, range, value, display)

  return offset + length, value
end

-- Corrected Trade Price
nasdaq_utdf_output_utp_v3_0_c.corrected_trade_price = {}

-- Size: Corrected Trade Price
nasdaq_utdf_output_utp_v3_0_c.corrected_trade_price.size = 8

-- Display: Corrected Trade Price
nasdaq_utdf_output_utp_v3_0_c.corrected_trade_price.display = function(value)
  return "Corrected Trade Price: "..value
end

-- Translate: Corrected Trade Price
nasdaq_utdf_output_utp_v3_0_c.corrected_trade_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Corrected Trade Price
nasdaq_utdf_output_utp_v3_0_c.corrected_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.corrected_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.corrected_trade_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.corrected_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.corrected_trade_price, range, value, display)

  return offset + length, value
end

-- Corrected Trade Through Exempt Flag
nasdaq_utdf_output_utp_v3_0_c.corrected_trade_through_exempt_flag = {}

-- Size: Corrected Trade Through Exempt Flag
nasdaq_utdf_output_utp_v3_0_c.corrected_trade_through_exempt_flag.size = 1

-- Display: Corrected Trade Through Exempt Flag
nasdaq_utdf_output_utp_v3_0_c.corrected_trade_through_exempt_flag.display = function(value)
  return "Corrected Trade Through Exempt Flag: "..value
end

-- Dissect: Corrected Trade Through Exempt Flag
nasdaq_utdf_output_utp_v3_0_c.corrected_trade_through_exempt_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.corrected_trade_through_exempt_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.corrected_trade_through_exempt_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.corrected_trade_through_exempt_flag, range, value, display)

  return offset + length, value
end

-- Corrected Volume Long
nasdaq_utdf_output_utp_v3_0_c.corrected_volume_long = {}

-- Size: Corrected Volume Long
nasdaq_utdf_output_utp_v3_0_c.corrected_volume_long.size = 8

-- Display: Corrected Volume Long
nasdaq_utdf_output_utp_v3_0_c.corrected_volume_long.display = function(value)
  return "Corrected Volume Long: "..value
end

-- Translate: Corrected Volume Long
nasdaq_utdf_output_utp_v3_0_c.corrected_volume_long.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Corrected Volume Long
nasdaq_utdf_output_utp_v3_0_c.corrected_volume_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.corrected_volume_long.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.corrected_volume_long.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.corrected_volume_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.corrected_volume_long, range, value, display)

  return offset + length, value
end

-- Corrected Volume Short
nasdaq_utdf_output_utp_v3_0_c.corrected_volume_short = {}

-- Size: Corrected Volume Short
nasdaq_utdf_output_utp_v3_0_c.corrected_volume_short.size = 4

-- Display: Corrected Volume Short
nasdaq_utdf_output_utp_v3_0_c.corrected_volume_short.display = function(value)
  return "Corrected Volume Short: "..value
end

-- Dissect: Corrected Volume Short
nasdaq_utdf_output_utp_v3_0_c.corrected_volume_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.corrected_volume_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v3_0_c.corrected_volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.corrected_volume_short, range, value, display)

  return offset + length, value
end

-- Daily Consolidated Closing Price
nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_closing_price = {}

-- Size: Daily Consolidated Closing Price
nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_closing_price.size = 8

-- Display: Daily Consolidated Closing Price
nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_closing_price.display = function(value)
  return "Daily Consolidated Closing Price: "..value
end

-- Translate: Daily Consolidated Closing Price
nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_closing_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Daily Consolidated Closing Price
nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_closing_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.daily_consolidated_closing_price, range, value, display)

  return offset + length, value
end

-- Daily Consolidated High Price
nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_high_price = {}

-- Size: Daily Consolidated High Price
nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_high_price.size = 8

-- Display: Daily Consolidated High Price
nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_high_price.display = function(value)
  return "Daily Consolidated High Price: "..value
end

-- Translate: Daily Consolidated High Price
nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_high_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Daily Consolidated High Price
nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_high_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_high_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_high_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.daily_consolidated_high_price, range, value, display)

  return offset + length, value
end

-- Daily Consolidated Low Price
nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_low_price = {}

-- Size: Daily Consolidated Low Price
nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_low_price.size = 8

-- Display: Daily Consolidated Low Price
nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_low_price.display = function(value)
  return "Daily Consolidated Low Price: "..value
end

-- Translate: Daily Consolidated Low Price
nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_low_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Daily Consolidated Low Price
nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_low_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_low_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_low_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.daily_consolidated_low_price, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_utdf_output_utp_v3_0_c.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_utdf_output_utp_v3_0_c.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_utdf_output_utp_v3_0_c.financial_status_indicator.labels = {
  ["C"] = "Financial Status Indicator: Creations Andor Redemptions Suspended For Exchange Traded Product (C)",
  ["D"] = "Financial Status Indicator: Deficient Issuer Failed To Meet Nasdaq Continued Listing Requirements (D)",
  ["E"] = "Financial Status Indicator: Delinquent Issuer Missed Regulatory Filing Deadline (E)",
  ["Q"] = "Financial Status Indicator: Bankrupt Issuer Has Filed For Bankruptcy (Q)",
  ["N"] = "Financial Status Indicator: Normal Default Issuer Is Not Deficient Delinquent Or Bankrupt (N)",
  ["G"] = "Financial Status Indicator: Deficient And Bankrupt (G)",
  ["H"] = "Financial Status Indicator: Deficient And Delinquent (H)",
  ["J"] = "Financial Status Indicator: Delinquent And Bankrupt (J)",
  ["K"] = "Financial Status Indicator: Deficient Delinquent And Bankrupt (K)",
}

nasdaq_utdf_output_utp_v3_0_c.financial_status_indicator.display = function(value)
  return nasdaq_utdf_output_utp_v3_0_c.financial_status_indicator.labels[value] or "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
nasdaq_utdf_output_utp_v3_0_c.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Issue Name
nasdaq_utdf_output_utp_v3_0_c.issue_name = {}

-- Size: Issue Name
nasdaq_utdf_output_utp_v3_0_c.issue_name.size = 30

-- Display: Issue Name
nasdaq_utdf_output_utp_v3_0_c.issue_name.display = function(value)
  return "Issue Name: "..value
end

-- Dissect: Issue Name
nasdaq_utdf_output_utp_v3_0_c.issue_name.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.issue_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utdf_output_utp_v3_0_c.issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.issue_name, range, value, display)

  return offset + length, value
end

-- Issue Subtype
nasdaq_utdf_output_utp_v3_0_c.issue_subtype = {}

-- Size: Issue Subtype
nasdaq_utdf_output_utp_v3_0_c.issue_subtype.size = 2

-- Display: Issue Subtype
nasdaq_utdf_output_utp_v3_0_c.issue_subtype.labels = {
  ["A"] = "Issue Subtype: Trust Preferred (A)",
  ["AI"] = "Issue Subtype: Alpha Index Et Ns (AI)",
  ["B"] = "Issue Subtype: Index Linked Note (B)",
  ["C"] = "Issue Subtype: Common Shares (C)",
  ["CB"] = "Issue Subtype: Commodity Based Trust Shares (CB)",
  ["CF"] = "Issue Subtype: Commodity Futures Trust Shares (CF)",
  ["CL"] = "Issue Subtype: Commodity Linked Securities (CL)",
  ["CM"] = "Issue Subtype: Commodity Index Trust Shares (CM)",
  ["CO"] = "Issue Subtype: Collateralized Mortgage Obligation (CO)",
  ["CT"] = "Issue Subtype: Currency Trust Shares (CT)",
  ["CU"] = "Issue Subtype: Commodity Currency Linked Securities (CU)",
  ["CW"] = "Issue Subtype: Currency Warrants (CW)",
  ["D"] = "Issue Subtype: Global Depositary Shares (D)",
  ["E"] = "Issue Subtype: Etf Unit Investment Trust (E)",
  ["EG"] = "Issue Subtype: Equity Gold Shares (EG)",
  ["EI"] = "Issue Subtype: Etn Equity Index Linked Securities (EI)",
  ["EM"] = "Issue Subtype: Exchange Traded Managed Fund Etmf (EM)",
  ["EN"] = "Issue Subtype: Exchange Traded Note (EN)",
  ["EU"] = "Issue Subtype: Equity Units (EU)",
  ["F"] = "Issue Subtype: Holdrs (F)",
  ["FI"] = "Issue Subtype: Etn Fixed Income Linked Securities (FI)",
  ["FL"] = "Issue Subtype: Etn Futures Linked Securities (FL)",
  ["G"] = "Issue Subtype: Exchange Traded Debt (G)",
  ["I"] = "Issue Subtype: Etf Management Investment Company (I)",
  ["IR"] = "Issue Subtype: Interest Rate (IR)",
  ["IW"] = "Issue Subtype: Index Warrant (IW)",
  ["IX"] = "Issue Subtype: Index Linked Exchangeable Notes (IX)",
  ["J"] = "Issue Subtype: Corporate Backed Trust Security (J)",
  ["L"] = "Issue Subtype: Contingent Litigation Right Warrant (L)",
  ["LL"] = "Issue Subtype: Limited Liability Company (LL)",
  ["M"] = "Issue Subtype: Equity Linked Note (M)",
  ["MF"] = "Issue Subtype: Managed Fund Shares (MF)",
  ["ML"] = "Issue Subtype: Etn Multi Factor Index Linked Securities (ML)",
  ["MT"] = "Issue Subtype: Managed Trust Securities (MT)",
  ["N"] = "Issue Subtype: Ny Registry Shares (N)",
  ["O"] = "Issue Subtype: Income Depositary Shares (O)",
  ["P"] = "Issue Subtype: Third Party Trust Certificate (P)",
  ["PP"] = "Issue Subtype: Poison Pill (PP)",
  ["PU"] = "Issue Subtype: Partnership Units (PU)",
  ["Q"] = "Issue Subtype: Closed End Funds (Q)",
  ["R"] = "Issue Subtype: Reg S (R)",
  ["RC"] = "Issue Subtype: Commodity Redeemable Commodity Linked Securities (RC)",
  ["RF"] = "Issue Subtype: Etn Redeemable Futures Linked Securities (RF)",
  ["RT"] = "Issue Subtype: Reit (RT)",
  ["RU"] = "Issue Subtype: Commodity Redeemable Currency Linked Securities (RU)",
  ["S"] = "Issue Subtype: Seed (S)",
  ["SC"] = "Issue Subtype: Spot Rate Closing (SC)",
  ["SI"] = "Issue Subtype: Spot Rate Intraday (SI)",
  ["T"] = "Issue Subtype: Tracking Stock (T)",
  ["TC"] = "Issue Subtype: Trust Certificate (TC)",
  ["TU"] = "Issue Subtype: Trust Units (TU)",
  ["U"] = "Issue Subtype: Portal (U)",
  ["V"] = "Issue Subtype: Contingent Value Right (V)",
  ["W"] = "Issue Subtype: Trust Issued Receipts (W)",
  ["WC"] = "Issue Subtype: World Currency Option (WC)",
  ["X"] = "Issue Subtype: Trust (X)",
  ["Y"] = "Issue Subtype: Other (Y)",
  ["Z"] = "Issue Subtype: Na (Z)",
}

nasdaq_utdf_output_utp_v3_0_c.issue_subtype.display = function(value)
  return nasdaq_utdf_output_utp_v3_0_c.issue_subtype.labels[value] or "Issue Subtype: Unknown("..value..")"
end

-- Dissect: Issue Subtype
nasdaq_utdf_output_utp_v3_0_c.issue_subtype.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.issue_subtype.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utdf_output_utp_v3_0_c.issue_subtype.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.issue_subtype, range, value, display)

  return offset + length, value
end

-- Issue Type
nasdaq_utdf_output_utp_v3_0_c.issue_type = {}

-- Size: Issue Type
nasdaq_utdf_output_utp_v3_0_c.issue_type.size = 1

-- Display: Issue Type
nasdaq_utdf_output_utp_v3_0_c.issue_type.labels = {
  ["A"] = "Issue Type: American Depository Receipt (A)",
  ["B"] = "Issue Type: Bond (B)",
  ["C"] = "Issue Type: Common Stock (C)",
  ["F"] = "Issue Type: Depository Receipt (F)",
  ["I"] = "Issue Type: Sec 144 A (I)",
  ["L"] = "Issue Type: Limited Partnership (L)",
  ["N"] = "Issue Type: Note (N)",
  ["O"] = "Issue Type: Ordinary Shares (O)",
  ["P"] = "Issue Type: Preferred Stock (P)",
  ["Q"] = "Issue Type: Other Securities (Q)",
  ["R"] = "Issue Type: Rights (R)",
  ["S"] = "Issue Type: Shares Of Beneficial Interest (S)",
  ["T"] = "Issue Type: Convertible Debenture (T)",
  ["U"] = "Issue Type: Unit (U)",
  ["V"] = "Issue Type: Units Of Beneficial Interest (V)",
  ["W"] = "Issue Type: Warrant (W)",
}

nasdaq_utdf_output_utp_v3_0_c.issue_type.display = function(value)
  return nasdaq_utdf_output_utp_v3_0_c.issue_type.labels[value] or "Issue Type: Unknown("..value..")"
end

-- Dissect: Issue Type
nasdaq_utdf_output_utp_v3_0_c.issue_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.issue_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.issue_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.issue_type, range, value, display)

  return offset + length, value
end

-- Limit Down Price
nasdaq_utdf_output_utp_v3_0_c.limit_down_price = {}

-- Size: Limit Down Price
nasdaq_utdf_output_utp_v3_0_c.limit_down_price.size = 8

-- Display: Limit Down Price
nasdaq_utdf_output_utp_v3_0_c.limit_down_price.display = function(value)
  return "Limit Down Price: "..value
end

-- Translate: Limit Down Price
nasdaq_utdf_output_utp_v3_0_c.limit_down_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Limit Down Price
nasdaq_utdf_output_utp_v3_0_c.limit_down_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.limit_down_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.limit_down_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.limit_down_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.limit_down_price, range, value, display)

  return offset + length, value
end

-- Limit Up Price
nasdaq_utdf_output_utp_v3_0_c.limit_up_price = {}

-- Size: Limit Up Price
nasdaq_utdf_output_utp_v3_0_c.limit_up_price.size = 8

-- Display: Limit Up Price
nasdaq_utdf_output_utp_v3_0_c.limit_up_price.display = function(value)
  return "Limit Up Price: "..value
end

-- Translate: Limit Up Price
nasdaq_utdf_output_utp_v3_0_c.limit_up_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Limit Up Price
nasdaq_utdf_output_utp_v3_0_c.limit_up_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.limit_up_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.limit_up_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.limit_up_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.limit_up_price, range, value, display)

  return offset + length, value
end

-- Luld Price Band Effective Time
nasdaq_utdf_output_utp_v3_0_c.luld_price_band_effective_time = {}

-- Size: Luld Price Band Effective Time
nasdaq_utdf_output_utp_v3_0_c.luld_price_band_effective_time.size = 8

-- Dissect: Luld Price Band Effective Time
nasdaq_utdf_output_utp_v3_0_c.luld_price_band_effective_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.luld_price_band_effective_time.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nasdaq_utdf_output_utp_v3_0_c.fields.luld_price_band_effective_time
  if nasdaq_utdf_output_utp_v3_0_c.absolute_time_base == 1 then field = omi_nasdaq_utdf_output_utp_v3_0_c.fields.luld_price_band_effective_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Luld Price Band Indicator
nasdaq_utdf_output_utp_v3_0_c.luld_price_band_indicator = {}

-- Size: Luld Price Band Indicator
nasdaq_utdf_output_utp_v3_0_c.luld_price_band_indicator.size = 1

-- Display: Luld Price Band Indicator
nasdaq_utdf_output_utp_v3_0_c.luld_price_band_indicator.display = function(value)
  if value == "A" then
    return "Luld Price Band Indicator: Opening Update (A)"
  end
  if value == "B" then
    return "Luld Price Band Indicator: Intra Day Update (B)"
  end
  if value == "C" then
    return "Luld Price Band Indicator: Restated Value (C)"
  end
  if value == "D" then
    return "Luld Price Band Indicator: Suspended During Trading Halt Or Trading Pause (D)"
  end
  if value == "E" then
    return "Luld Price Band Indicator: Re Opening Update (E)"
  end
  if value == "F" then
    return "Luld Price Band Indicator: Outside Price Band Rule Hours (F)"
  end
  if value == " " then
    return "Luld Price Band Indicator: None Provided (<whitespace>)"
  end

  return "Luld Price Band Indicator: Unknown("..value..")"
end

-- Dissect: Luld Price Band Indicator
nasdaq_utdf_output_utp_v3_0_c.luld_price_band_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.luld_price_band_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.luld_price_band_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.luld_price_band_indicator, range, value, display)

  return offset + length, value
end

-- Market Center Close Indicator
nasdaq_utdf_output_utp_v3_0_c.market_center_close_indicator = {}

-- Size: Market Center Close Indicator
nasdaq_utdf_output_utp_v3_0_c.market_center_close_indicator.size = 1

-- Display: Market Center Close Indicator
nasdaq_utdf_output_utp_v3_0_c.market_center_close_indicator.display = function(value)
  if value == "M" then
    return "Market Center Close Indicator: Market Center Closing Price Is Based On Transaction With M Sale Condition Modifier (M)"
  end
  if value == " " then
    return "Market Center Close Indicator: Market Center Closing Price Is Not Based On A Transaction With An M Sale Condition Modifier (<whitespace>)"
  end

  return "Market Center Close Indicator: Unknown("..value..")"
end

-- Dissect: Market Center Close Indicator
nasdaq_utdf_output_utp_v3_0_c.market_center_close_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.market_center_close_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.market_center_close_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_center_close_indicator, range, value, display)

  return offset + length, value
end

-- Market Center Closing Price
nasdaq_utdf_output_utp_v3_0_c.market_center_closing_price = {}

-- Size: Market Center Closing Price
nasdaq_utdf_output_utp_v3_0_c.market_center_closing_price.size = 8

-- Display: Market Center Closing Price
nasdaq_utdf_output_utp_v3_0_c.market_center_closing_price.display = function(value)
  return "Market Center Closing Price: "..value
end

-- Translate: Market Center Closing Price
nasdaq_utdf_output_utp_v3_0_c.market_center_closing_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Market Center Closing Price
nasdaq_utdf_output_utp_v3_0_c.market_center_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.market_center_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.market_center_closing_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.market_center_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_center_closing_price, range, value, display)

  return offset + length, value
end

-- Market Center Identifier
nasdaq_utdf_output_utp_v3_0_c.market_center_identifier = {}

-- Size: Market Center Identifier
nasdaq_utdf_output_utp_v3_0_c.market_center_identifier.size = 1

-- Display: Market Center Identifier
nasdaq_utdf_output_utp_v3_0_c.market_center_identifier.display = function(value)
  return "Market Center Identifier: "..value
end

-- Dissect: Market Center Identifier
nasdaq_utdf_output_utp_v3_0_c.market_center_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.market_center_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.market_center_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_center_identifier, range, value, display)

  return offset + length, value
end

-- Market Center Originator
nasdaq_utdf_output_utp_v3_0_c.market_center_originator = {}

-- Size: Market Center Originator
nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size = 1

-- Display: Market Center Originator
nasdaq_utdf_output_utp_v3_0_c.market_center_originator.labels = {
  ["Y"] = "Market Center Originator: Cboe Byx Exchange Inc (Y)",
  ["Z"] = "Market Center Originator: Cboe Bzx Exchange Inc (Z)",
  ["J"] = "Market Center Originator: Cboe Edga Exchange Inc (J)",
  ["K"] = "Market Center Originator: Cboe Edgx Exchange Inc (K)",
  ["W"] = "Market Center Originator: Cboe Exchange Inc (W)",
  ["B"] = "Market Center Originator: Nasdaq Texas Llc (B)",
  ["X"] = "Market Center Originator: Nasdaq Phlx Llc (X)",
  ["Q"] = "Market Center Originator: Nasdaq Inc (Q)",
  ["I"] = "Market Center Originator: Nasdaq Ise Llc (I)",
  ["N"] = "Market Center Originator: New York Stock Exchange Llc (N)",
  ["P"] = "Market Center Originator: Nyse Arca Inc (P)",
  ["A"] = "Market Center Originator: Nyse American Llc (A)",
  ["C"] = "Market Center Originator: Nyse National Inc (C)",
  ["M"] = "Market Center Originator: Nyse Texas (M)",
  ["F"] = "Market Center Originator: Texas Stock Exchange Llc (F)",
  ["G"] = "Market Center Originator: 24X National Exchange, LLC (G)",
  ["D"] = "Market Center Originator: Financial Industry Regulatory Authority (D)",
  ["V"] = "Market Center Originator: Investors Exchange Llc (V)",
  ["L"] = "Market Center Originator: Long Term Stock Exchange (L)",
  ["H"] = "Market Center Originator: Miax Pearl Llc (H)",
  ["U"] = "Market Center Originator: Memx Llc (U)",
  ["E"] = "Market Center Originator: Market Independent Generated By Sip (E)",
}

nasdaq_utdf_output_utp_v3_0_c.market_center_originator.display = function(value)
  return nasdaq_utdf_output_utp_v3_0_c.market_center_originator.labels[value] or "Market Center Originator: Unknown("..value..")"
end

-- Dissect: Market Center Originator
nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_center_originator, range, value, display)

  return offset + length, value
end

-- Market Center Volume
nasdaq_utdf_output_utp_v3_0_c.market_center_volume = {}

-- Size: Market Center Volume
nasdaq_utdf_output_utp_v3_0_c.market_center_volume.size = 8

-- Display: Market Center Volume
nasdaq_utdf_output_utp_v3_0_c.market_center_volume.display = function(value)
  return "Market Center Volume: "..value
end

-- Translate: Market Center Volume
nasdaq_utdf_output_utp_v3_0_c.market_center_volume.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Market Center Volume
nasdaq_utdf_output_utp_v3_0_c.market_center_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.market_center_volume.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.market_center_volume.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.market_center_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_center_volume, range, value, display)

  return offset + length, value
end

-- Market Participant High Price
nasdaq_utdf_output_utp_v3_0_c.market_participant_high_price = {}

-- Size: Market Participant High Price
nasdaq_utdf_output_utp_v3_0_c.market_participant_high_price.size = 8

-- Display: Market Participant High Price
nasdaq_utdf_output_utp_v3_0_c.market_participant_high_price.display = function(value)
  return "Market Participant High Price: "..value
end

-- Translate: Market Participant High Price
nasdaq_utdf_output_utp_v3_0_c.market_participant_high_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Market Participant High Price
nasdaq_utdf_output_utp_v3_0_c.market_participant_high_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.market_participant_high_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.market_participant_high_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.market_participant_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_participant_high_price, range, value, display)

  return offset + length, value
end

-- Market Participant Last Price
nasdaq_utdf_output_utp_v3_0_c.market_participant_last_price = {}

-- Size: Market Participant Last Price
nasdaq_utdf_output_utp_v3_0_c.market_participant_last_price.size = 8

-- Display: Market Participant Last Price
nasdaq_utdf_output_utp_v3_0_c.market_participant_last_price.display = function(value)
  return "Market Participant Last Price: "..value
end

-- Translate: Market Participant Last Price
nasdaq_utdf_output_utp_v3_0_c.market_participant_last_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Market Participant Last Price
nasdaq_utdf_output_utp_v3_0_c.market_participant_last_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.market_participant_last_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.market_participant_last_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.market_participant_last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_participant_last_price, range, value, display)

  return offset + length, value
end

-- Market Participant Low Price
nasdaq_utdf_output_utp_v3_0_c.market_participant_low_price = {}

-- Size: Market Participant Low Price
nasdaq_utdf_output_utp_v3_0_c.market_participant_low_price.size = 8

-- Display: Market Participant Low Price
nasdaq_utdf_output_utp_v3_0_c.market_participant_low_price.display = function(value)
  return "Market Participant Low Price: "..value
end

-- Translate: Market Participant Low Price
nasdaq_utdf_output_utp_v3_0_c.market_participant_low_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Market Participant Low Price
nasdaq_utdf_output_utp_v3_0_c.market_participant_low_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.market_participant_low_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.market_participant_low_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.market_participant_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_participant_low_price, range, value, display)

  return offset + length, value
end

-- Market Participant Volume
nasdaq_utdf_output_utp_v3_0_c.market_participant_volume = {}

-- Size: Market Participant Volume
nasdaq_utdf_output_utp_v3_0_c.market_participant_volume.size = 8

-- Display: Market Participant Volume
nasdaq_utdf_output_utp_v3_0_c.market_participant_volume.display = function(value)
  return "Market Participant Volume: "..value
end

-- Translate: Market Participant Volume
nasdaq_utdf_output_utp_v3_0_c.market_participant_volume.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Market Participant Volume
nasdaq_utdf_output_utp_v3_0_c.market_participant_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.market_participant_volume.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.market_participant_volume.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.market_participant_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_participant_volume, range, value, display)

  return offset + length, value
end

-- Market Tier
nasdaq_utdf_output_utp_v3_0_c.market_tier = {}

-- Size: Market Tier
nasdaq_utdf_output_utp_v3_0_c.market_tier.size = 1

-- Display: Market Tier
nasdaq_utdf_output_utp_v3_0_c.market_tier.labels = {
  ["Q"] = "Market Tier: Nasdaq Global Select Market (Q)",
  ["G"] = "Market Tier: Nasdaq Global Market (G)",
  ["S"] = "Market Tier: Nasdaq Capital Market (S)",
}

nasdaq_utdf_output_utp_v3_0_c.market_tier.display = function(value)
  return nasdaq_utdf_output_utp_v3_0_c.market_tier.labels[value] or "Market Tier: Unknown("..value..")"
end

-- Dissect: Market Tier
nasdaq_utdf_output_utp_v3_0_c.market_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.market_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.market_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_tier, range, value, display)

  return offset + length, value
end

-- Message Category
nasdaq_utdf_output_utp_v3_0_c.message_category = {}

-- Size: Message Category
nasdaq_utdf_output_utp_v3_0_c.message_category.size = 1

-- Display: Message Category
nasdaq_utdf_output_utp_v3_0_c.message_category.display = function(value)
  return "Message Category: "..value
end

-- Dissect: Message Category
nasdaq_utdf_output_utp_v3_0_c.message_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.message_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.message_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.message_category, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_utdf_output_utp_v3_0_c.message_count = {}

-- Size: Message Count
nasdaq_utdf_output_utp_v3_0_c.message_count.size = 2

-- Display: Message Count
nasdaq_utdf_output_utp_v3_0_c.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_utdf_output_utp_v3_0_c.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v3_0_c.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_utdf_output_utp_v3_0_c.message_length = {}

-- Size: Message Length
nasdaq_utdf_output_utp_v3_0_c.message_length.size = 2

-- Display: Message Length
nasdaq_utdf_output_utp_v3_0_c.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_utdf_output_utp_v3_0_c.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v3_0_c.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.message_length, range, value, display)

  return offset + length, value
end

-- Mwcb Level 1
nasdaq_utdf_output_utp_v3_0_c.mwcb_level_1 = {}

-- Size: Mwcb Level 1
nasdaq_utdf_output_utp_v3_0_c.mwcb_level_1.size = 8

-- Display: Mwcb Level 1
nasdaq_utdf_output_utp_v3_0_c.mwcb_level_1.display = function(value)
  return "Mwcb Level 1: "..value
end

-- Dissect: Mwcb Level 1
nasdaq_utdf_output_utp_v3_0_c.mwcb_level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.mwcb_level_1.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v3_0_c.mwcb_level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.mwcb_level_1, range, value, display)

  return offset + length, value
end

-- Mwcb Level 2
nasdaq_utdf_output_utp_v3_0_c.mwcb_level_2 = {}

-- Size: Mwcb Level 2
nasdaq_utdf_output_utp_v3_0_c.mwcb_level_2.size = 8

-- Display: Mwcb Level 2
nasdaq_utdf_output_utp_v3_0_c.mwcb_level_2.display = function(value)
  return "Mwcb Level 2: "..value
end

-- Dissect: Mwcb Level 2
nasdaq_utdf_output_utp_v3_0_c.mwcb_level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.mwcb_level_2.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v3_0_c.mwcb_level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.mwcb_level_2, range, value, display)

  return offset + length, value
end

-- Mwcb Level 3
nasdaq_utdf_output_utp_v3_0_c.mwcb_level_3 = {}

-- Size: Mwcb Level 3
nasdaq_utdf_output_utp_v3_0_c.mwcb_level_3.size = 8

-- Display: Mwcb Level 3
nasdaq_utdf_output_utp_v3_0_c.mwcb_level_3.display = function(value)
  return "Mwcb Level 3: "..value
end

-- Dissect: Mwcb Level 3
nasdaq_utdf_output_utp_v3_0_c.mwcb_level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.mwcb_level_3.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v3_0_c.mwcb_level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.mwcb_level_3, range, value, display)

  return offset + length, value
end

-- Mwcb Status Level Indicator
nasdaq_utdf_output_utp_v3_0_c.mwcb_status_level_indicator = {}

-- Size: Mwcb Status Level Indicator
nasdaq_utdf_output_utp_v3_0_c.mwcb_status_level_indicator.size = 1

-- Display: Mwcb Status Level Indicator
nasdaq_utdf_output_utp_v3_0_c.mwcb_status_level_indicator.labels = {
  ["1"] = "Mwcb Status Level Indicator: Market Wide Circuit Breaker Decline Level 1 Breached 7% Decline (1)",
  ["2"] = "Mwcb Status Level Indicator: Market Wide Circuit Breaker Decline Level 2 Breached 13% Decline (2)",
  ["3"] = "Mwcb Status Level Indicator: Market Wide Circuit Breaker Decline Level 3 Breached 20% Decline (3)",
}

nasdaq_utdf_output_utp_v3_0_c.mwcb_status_level_indicator.display = function(value)
  return nasdaq_utdf_output_utp_v3_0_c.mwcb_status_level_indicator.labels[value] or "Mwcb Status Level Indicator: Unknown("..value..")"
end

-- Dissect: Mwcb Status Level Indicator
nasdaq_utdf_output_utp_v3_0_c.mwcb_status_level_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.mwcb_status_level_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.mwcb_status_level_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.mwcb_status_level_indicator, range, value, display)

  return offset + length, value
end

-- Number Of Market Center Attachments
nasdaq_utdf_output_utp_v3_0_c.number_of_market_center_attachments = {}

-- Size: Number Of Market Center Attachments
nasdaq_utdf_output_utp_v3_0_c.number_of_market_center_attachments.size = 2

-- Display: Number Of Market Center Attachments
nasdaq_utdf_output_utp_v3_0_c.number_of_market_center_attachments.display = function(value)
  return "Number Of Market Center Attachments: "..value
end

-- Dissect: Number Of Market Center Attachments
nasdaq_utdf_output_utp_v3_0_c.number_of_market_center_attachments.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.number_of_market_center_attachments.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v3_0_c.number_of_market_center_attachments.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.number_of_market_center_attachments, range, value, display)

  return offset + length, value
end

-- Old Symbol
nasdaq_utdf_output_utp_v3_0_c.old_symbol = {}

-- Size: Old Symbol
nasdaq_utdf_output_utp_v3_0_c.old_symbol.size = 11

-- Display: Old Symbol
nasdaq_utdf_output_utp_v3_0_c.old_symbol.display = function(value)
  return "Old Symbol: "..value
end

-- Dissect: Old Symbol
nasdaq_utdf_output_utp_v3_0_c.old_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.old_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utdf_output_utp_v3_0_c.old_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.old_symbol, range, value, display)

  return offset + length, value
end

-- Original Sale Condition
nasdaq_utdf_output_utp_v3_0_c.original_sale_condition = {}

-- Size: Original Sale Condition
nasdaq_utdf_output_utp_v3_0_c.original_sale_condition.size = 4

-- Display: Original Sale Condition
nasdaq_utdf_output_utp_v3_0_c.original_sale_condition.display = function(value)
  return "Original Sale Condition: "..value
end

-- Dissect: Original Sale Condition
nasdaq_utdf_output_utp_v3_0_c.original_sale_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.original_sale_condition.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utdf_output_utp_v3_0_c.original_sale_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.original_sale_condition, range, value, display)

  return offset + length, value
end

-- Original Sellers Sale Days
nasdaq_utdf_output_utp_v3_0_c.original_sellers_sale_days = {}

-- Size: Original Sellers Sale Days
nasdaq_utdf_output_utp_v3_0_c.original_sellers_sale_days.size = 2

-- Display: Original Sellers Sale Days
nasdaq_utdf_output_utp_v3_0_c.original_sellers_sale_days.display = function(value)
  return "Original Sellers Sale Days: "..value
end

-- Dissect: Original Sellers Sale Days
nasdaq_utdf_output_utp_v3_0_c.original_sellers_sale_days.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.original_sellers_sale_days.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v3_0_c.original_sellers_sale_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.original_sellers_sale_days, range, value, display)

  return offset + length, value
end

-- Original Trade Id
nasdaq_utdf_output_utp_v3_0_c.original_trade_id = {}

-- Size: Original Trade Id
nasdaq_utdf_output_utp_v3_0_c.original_trade_id.size = 8

-- Display: Original Trade Id
nasdaq_utdf_output_utp_v3_0_c.original_trade_id.display = function(value)
  return "Original Trade Id: "..value
end

-- Dissect: Original Trade Id
nasdaq_utdf_output_utp_v3_0_c.original_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.original_trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v3_0_c.original_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.original_trade_id, range, value, display)

  return offset + length, value
end

-- Original Trade Price
nasdaq_utdf_output_utp_v3_0_c.original_trade_price = {}

-- Size: Original Trade Price
nasdaq_utdf_output_utp_v3_0_c.original_trade_price.size = 8

-- Display: Original Trade Price
nasdaq_utdf_output_utp_v3_0_c.original_trade_price.display = function(value)
  return "Original Trade Price: "..value
end

-- Translate: Original Trade Price
nasdaq_utdf_output_utp_v3_0_c.original_trade_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Original Trade Price
nasdaq_utdf_output_utp_v3_0_c.original_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.original_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.original_trade_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.original_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.original_trade_price, range, value, display)

  return offset + length, value
end

-- Original Trade Through Exempt Flag
nasdaq_utdf_output_utp_v3_0_c.original_trade_through_exempt_flag = {}

-- Size: Original Trade Through Exempt Flag
nasdaq_utdf_output_utp_v3_0_c.original_trade_through_exempt_flag.size = 1

-- Display: Original Trade Through Exempt Flag
nasdaq_utdf_output_utp_v3_0_c.original_trade_through_exempt_flag.display = function(value)
  return "Original Trade Through Exempt Flag: "..value
end

-- Dissect: Original Trade Through Exempt Flag
nasdaq_utdf_output_utp_v3_0_c.original_trade_through_exempt_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.original_trade_through_exempt_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.original_trade_through_exempt_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.original_trade_through_exempt_flag, range, value, display)

  return offset + length, value
end

-- Original Volume Long
nasdaq_utdf_output_utp_v3_0_c.original_volume_long = {}

-- Size: Original Volume Long
nasdaq_utdf_output_utp_v3_0_c.original_volume_long.size = 8

-- Display: Original Volume Long
nasdaq_utdf_output_utp_v3_0_c.original_volume_long.display = function(value)
  return "Original Volume Long: "..value
end

-- Translate: Original Volume Long
nasdaq_utdf_output_utp_v3_0_c.original_volume_long.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Original Volume Long
nasdaq_utdf_output_utp_v3_0_c.original_volume_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.original_volume_long.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.original_volume_long.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.original_volume_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.original_volume_long, range, value, display)

  return offset + length, value
end

-- Original Volume Short
nasdaq_utdf_output_utp_v3_0_c.original_volume_short = {}

-- Size: Original Volume Short
nasdaq_utdf_output_utp_v3_0_c.original_volume_short.size = 4

-- Display: Original Volume Short
nasdaq_utdf_output_utp_v3_0_c.original_volume_short.display = function(value)
  return "Original Volume Short: "..value
end

-- Dissect: Original Volume Short
nasdaq_utdf_output_utp_v3_0_c.original_volume_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.original_volume_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v3_0_c.original_volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.original_volume_short, range, value, display)

  return offset + length, value
end

-- Participant Price Change Indicator
nasdaq_utdf_output_utp_v3_0_c.participant_price_change_indicator = {}

-- Size: Participant Price Change Indicator
nasdaq_utdf_output_utp_v3_0_c.participant_price_change_indicator.size = 1

-- Display: Participant Price Change Indicator
nasdaq_utdf_output_utp_v3_0_c.participant_price_change_indicator.labels = {
  ["0"] = "Participant Price Change Indicator: No Prices Changed (0)",
  ["1"] = "Participant Price Change Indicator: Participant Last Price Changed (1)",
  ["2"] = "Participant Price Change Indicator: Participant Low Price Changed (2)",
  ["3"] = "Participant Price Change Indicator: Participant Last And Low Prices Changed (3)",
  ["4"] = "Participant Price Change Indicator: Participant High Price Changed (4)",
  ["5"] = "Participant Price Change Indicator: Participant Last And High Prices Changed (5)",
  ["6"] = "Participant Price Change Indicator: Participant High And Low Prices Changed (6)",
  ["7"] = "Participant Price Change Indicator: All Participant Prices Changed (7)",
}

nasdaq_utdf_output_utp_v3_0_c.participant_price_change_indicator.display = function(value)
  return nasdaq_utdf_output_utp_v3_0_c.participant_price_change_indicator.labels[value] or "Participant Price Change Indicator: Unknown("..value..")"
end

-- Dissect: Participant Price Change Indicator
nasdaq_utdf_output_utp_v3_0_c.participant_price_change_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.participant_price_change_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.participant_price_change_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.participant_price_change_indicator, range, value, display)

  return offset + length, value
end

-- Participant Token
nasdaq_utdf_output_utp_v3_0_c.participant_token = {}

-- Size: Participant Token
nasdaq_utdf_output_utp_v3_0_c.participant_token.size = 8

-- Display: Participant Token
nasdaq_utdf_output_utp_v3_0_c.participant_token.display = function(value)
  return "Participant Token: "..value
end

-- Dissect: Participant Token
nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.participant_token.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v3_0_c.participant_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.participant_token, range, value, display)

  return offset + length, value
end

-- Reason For The Trading Action
nasdaq_utdf_output_utp_v3_0_c.reason_for_the_trading_action = {}

-- Size: Reason For The Trading Action
nasdaq_utdf_output_utp_v3_0_c.reason_for_the_trading_action.size = 6

-- Display: Reason For The Trading Action
nasdaq_utdf_output_utp_v3_0_c.reason_for_the_trading_action.display = function(value)
  if value == "T1" then
    return "Reason For The Trading Action: Halt News Pending (T1)"
  end
  if value == "T2" then
    return "Reason For The Trading Action: Halt News Dissemination (T2)"
  end
  if value == "T5" then
    return "Reason For The Trading Action: Single Stock Trading Pause In Affect (T5)"
  end
  if value == "T6" then
    return "Reason For The Trading Action: Regulatory Halt Extraordinary Market Activity (T6)"
  end
  if value == "T8" then
    return "Reason For The Trading Action: Halt Etf (T8)"
  end
  if value == "T12" then
    return "Reason For The Trading Action: Trading Halted For Information Requested By Nasdaq (T12)"
  end
  if value == "H4" then
    return "Reason For The Trading Action: Halt Non Compliance (H4)"
  end
  if value == "H9" then
    return "Reason For The Trading Action: Halt Filings Not Current (H9)"
  end
  if value == "H10" then
    return "Reason For The Trading Action: Halt Sec Trading Suspension (H10)"
  end
  if value == "H11" then
    return "Reason For The Trading Action: Halt Regulatory Concern (H11)"
  end
  if value == "O1" then
    return "Reason For The Trading Action: Operations Halt Contact Market Operations (O1)"
  end
  if value == "IPO1" then
    return "Reason For The Trading Action: Ipo Issue Not Yet Trading (IPO1)"
  end
  if value == "M1" then
    return "Reason For The Trading Action: Corporate Action (M1)"
  end
  if value == "M2" then
    return "Reason For The Trading Action: Quotation Not Available (M2)"
  end
  if value == "LUDP" then
    return "Reason For The Trading Action: Volatility Trading Pause (LUDP)"
  end
  if value == "LUDS" then
    return "Reason For The Trading Action: Volatility Trading Pause Straddle Condition (LUDS)"
  end
  if value == "MWC1" then
    return "Reason For The Trading Action: Market Wide Circuit Breaker Halt Level 1 (MWC1)"
  end
  if value == "MWC2" then
    return "Reason For The Trading Action: Market Wide Circuit Breaker Halt Level 2 (MWC2)"
  end
  if value == "MWC3" then
    return "Reason For The Trading Action: Market Wide Circuit Breaker Halt Level 3 (MWC3)"
  end
  if value == "MWC0" then
    return "Reason For The Trading Action: Market Wide Circuit Breaker Halt Carry Over From Previous Day (MWC0)"
  end
  if value == "T3" then
    return "Reason For The Trading Action: News And Resumption Times (T3)"
  end
  if value == "T7" then
    return "Reason For The Trading Action: Single Stock Trading Pause Quotation Only Period (T7)"
  end
  if value == "R4" then
    return "Reason For The Trading Action: Qualifications Issues Reviewed Resolved Quotations Trading To Resume (R4)"
  end
  if value == "R9" then
    return "Reason For The Trading Action: Filing Requirements Satisfied Resolved Quotations Trading To Resume (R9)"
  end
  if value == "C3" then
    return "Reason For The Trading Action: Issuer News Not Forthcoming Quotations Trading To Resume (C3)"
  end
  if value == "C4" then
    return "Reason For The Trading Action: Qualifications Halt Ended Maintenance Requirements Met Resume (C4)"
  end
  if value == "C9" then
    return "Reason For The Trading Action: Qualifications Halt Concluded Filings Met Quotes Trades Resume (C9)"
  end
  if value == "C11" then
    return "Reason For The Trading Action: Trade Halt Concluded By Other Regulatory Authority Quotes Trades Resume (C11)"
  end
  if value == "R1" then
    return "Reason For The Trading Action: New Issue Available (R1)"
  end
  if value == "R2" then
    return "Reason For The Trading Action: Issue Available (R2)"
  end
  if value == "IPOQ" then
    return "Reason For The Trading Action: Ipo Security Released For Quotation (IPOQ)"
  end
  if value == "IPOE" then
    return "Reason For The Trading Action: Ipo Security Positioning Window Extension (IPOE)"
  end
  if value == "MWCQ" then
    return "Reason For The Trading Action: Market Wide Circuit Breaker Resumption (MWCQ)"
  end
  if value == "" then
    return "Reason For The Trading Action: Reason Not Available (<whitespace>)"
  end

  return "Reason For The Trading Action: Unknown("..value..")"
end

-- Dissect: Reason For The Trading Action
nasdaq_utdf_output_utp_v3_0_c.reason_for_the_trading_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.reason_for_the_trading_action.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utdf_output_utp_v3_0_c.reason_for_the_trading_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.reason_for_the_trading_action, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_utdf_output_utp_v3_0_c.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_utdf_output_utp_v3_0_c.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_utdf_output_utp_v3_0_c.reg_sho_action.labels = {
  ["0"] = "Reg Sho Action: No Price Test In Effect (0)",
  ["1"] = "Reg Sho Action: Reg Sho In Effect Due To An Intra Day Price Drop In Security (1)",
  ["2"] = "Reg Sho Action: Reg Sho Restriction Remains In Effect (2)",
}

nasdaq_utdf_output_utp_v3_0_c.reg_sho_action.display = function(value)
  return nasdaq_utdf_output_utp_v3_0_c.reg_sho_action.labels[value] or "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
nasdaq_utdf_output_utp_v3_0_c.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_utdf_output_utp_v3_0_c.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_utdf_output_utp_v3_0_c.round_lot_size.size = 2

-- Display: Round Lot Size
nasdaq_utdf_output_utp_v3_0_c.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_utdf_output_utp_v3_0_c.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v3_0_c.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Sale Condition
nasdaq_utdf_output_utp_v3_0_c.sale_condition = {}

-- Size: Sale Condition
nasdaq_utdf_output_utp_v3_0_c.sale_condition.size = 4

-- Display: Sale Condition
nasdaq_utdf_output_utp_v3_0_c.sale_condition.labels = {
  ["@"] = "Sale Condition: Regular Sale (@)",
  ["A"] = "Sale Condition: Acquisition (A)",
  ["B"] = "Sale Condition: Bunched Trade (B)",
  ["C"] = "Sale Condition: Cash Sale (C)",
  ["D"] = "Sale Condition: Distribution (D)",
  ["E"] = "Sale Condition: Placeholder (E)",
  ["F"] = "Sale Condition: Intermarket Sweep (F)",
  ["G"] = "Sale Condition: Bunched Sold Trade (G)",
  ["H"] = "Sale Condition: Price Variation Trade (H)",
  ["I"] = "Sale Condition: Odd Lot Trade (I)",
  ["K"] = "Sale Condition: Rule 155 Trade Amex (K)",
  ["L"] = "Sale Condition: Sold Last (L)",
  ["M"] = "Sale Condition: Market Center Official Close (M)",
  ["N"] = "Sale Condition: Reserved (N)",
  ["O"] = "Sale Condition: Opening Prints (O)",
  ["P"] = "Sale Condition: Prior Reference Price (P)",
  ["Q"] = "Sale Condition: Market Center Official Open (Q)",
  ["R"] = "Sale Condition: Seller (R)",
  ["S"] = "Sale Condition: Split Trade (S)",
  ["T"] = "Sale Condition: Form T (T)",
  ["U"] = "Sale Condition: Extended Trading Hours Sold Out Of Sequence (U)",
  ["V"] = "Sale Condition: Contingent Trade (V)",
  ["W"] = "Sale Condition: Average Price Trade (W)",
  ["X"] = "Sale Condition: Cross Periodic Auction Trade (X)",
  ["Y"] = "Sale Condition: Yellow Flag Regular Trade (Y)",
  ["Z"] = "Sale Condition: Sold Out Of Sequence (Z)",
  ["1"] = "Sale Condition: Stopped Stock Regular Trade (1)",
  ["4"] = "Sale Condition: Derivatively Priced (4)",
  ["5"] = "Sale Condition: Re Opening Prints (5)",
  ["6"] = "Sale Condition: Closing Prints (6)",
  ["7"] = "Sale Condition: Qualified Contingent Trade Qct (7)",
  ["8"] = "Sale Condition: Placeholder For 611 Exempt (8)",
  ["9"] = "Sale Condition: Corrected Consolidated Close Per Listing Market (9)",
}

nasdaq_utdf_output_utp_v3_0_c.sale_condition.display = function(value)
  return nasdaq_utdf_output_utp_v3_0_c.sale_condition.labels[value] or "Sale Condition: Unknown("..value..")"
end

-- Dissect: Sale Condition
nasdaq_utdf_output_utp_v3_0_c.sale_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.sale_condition.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utdf_output_utp_v3_0_c.sale_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.sale_condition, range, value, display)

  return offset + length, value
end

-- Sellers Sale Days
nasdaq_utdf_output_utp_v3_0_c.sellers_sale_days = {}

-- Size: Sellers Sale Days
nasdaq_utdf_output_utp_v3_0_c.sellers_sale_days.size = 2

-- Display: Sellers Sale Days
nasdaq_utdf_output_utp_v3_0_c.sellers_sale_days.display = function(value)
  return "Sellers Sale Days: "..value
end

-- Dissect: Sellers Sale Days
nasdaq_utdf_output_utp_v3_0_c.sellers_sale_days.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.sellers_sale_days.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v3_0_c.sellers_sale_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.sellers_sale_days, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_utdf_output_utp_v3_0_c.sequence_number = {}

-- Size: Sequence Number
nasdaq_utdf_output_utp_v3_0_c.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_utdf_output_utp_v3_0_c.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_utdf_output_utp_v3_0_c.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v3_0_c.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_utdf_output_utp_v3_0_c.session = {}

-- Size: Session
nasdaq_utdf_output_utp_v3_0_c.session.size = 10

-- Display: Session
nasdaq_utdf_output_utp_v3_0_c.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_utdf_output_utp_v3_0_c.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.session.size
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

  local display = nasdaq_utdf_output_utp_v3_0_c.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.session, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_utdf_output_utp_v3_0_c.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_utdf_output_utp_v3_0_c.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_utdf_output_utp_v3_0_c.short_sale_threshold_indicator.display = function(value)
  if value == "Y" then
    return "Short Sale Threshold Indicator: Issue Is Restricted Under Sec Rule 203 B 3 (Y)"
  end
  if value == "N" then
    return "Short Sale Threshold Indicator: Issue Is Not Restricted (N)"
  end
  if value == " " then
    return "Short Sale Threshold Indicator: Threshold Indicator Not Available (<whitespace>)"
  end

  return "Short Sale Threshold Indicator: Unknown("..value..")"
end

-- Dissect: Short Sale Threshold Indicator
nasdaq_utdf_output_utp_v3_0_c.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Sip Timestamp
nasdaq_utdf_output_utp_v3_0_c.sip_timestamp = {}

-- Size: Sip Timestamp
nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size = 8

-- Dissect: Sip Timestamp
nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nasdaq_utdf_output_utp_v3_0_c.fields.sip_timestamp
  if nasdaq_utdf_output_utp_v3_0_c.absolute_time_base == 1 then field = omi_nasdaq_utdf_output_utp_v3_0_c.fields.sip_timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Sub Market Center Id
nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id = {}

-- Size: Sub Market Center Id
nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size = 1

-- Display: Sub Market Center Id
nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.display = function(value)
  if value == "N" then
    return "Sub Market Center Id: Finra Nyse Trf (N)"
  end
  if value == "Q" then
    return "Sub Market Center Id: Finra Nasdaq Trf Carteret (Q)"
  end
  if value == "B" then
    return "Sub Market Center Id: Finra Nasdaq Trf Chicago (B)"
  end
  if value == " " then
    return "Sub Market Center Id: Trade Originates From Finra Alternative Display Facility (<whitespace>)"
  end

  return "Sub Market Center Id: Unknown("..value..")"
end

-- Dissect: Sub Market Center Id
nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.sub_market_center_id, range, value, display)

  return offset + length, value
end

-- Symbol Long
nasdaq_utdf_output_utp_v3_0_c.symbol_long = {}

-- Size: Symbol Long
nasdaq_utdf_output_utp_v3_0_c.symbol_long.size = 11

-- Display: Symbol Long
nasdaq_utdf_output_utp_v3_0_c.symbol_long.display = function(value)
  return "Symbol Long: "..value
end

-- Dissect: Symbol Long
nasdaq_utdf_output_utp_v3_0_c.symbol_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.symbol_long.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utdf_output_utp_v3_0_c.symbol_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.symbol_long, range, value, display)

  return offset + length, value
end

-- Symbol Short
nasdaq_utdf_output_utp_v3_0_c.symbol_short = {}

-- Size: Symbol Short
nasdaq_utdf_output_utp_v3_0_c.symbol_short.size = 5

-- Display: Symbol Short
nasdaq_utdf_output_utp_v3_0_c.symbol_short.display = function(value)
  return "Symbol Short: "..value
end

-- Dissect: Symbol Short
nasdaq_utdf_output_utp_v3_0_c.symbol_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.symbol_short.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utdf_output_utp_v3_0_c.symbol_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.symbol_short, range, value, display)

  return offset + length, value
end

-- Text
nasdaq_utdf_output_utp_v3_0_c.text = {}

-- Display: Text
nasdaq_utdf_output_utp_v3_0_c.text.display = function(value)
  return "Text: "..value
end

-- Dissect runtime sized field: Text
nasdaq_utdf_output_utp_v3_0_c.text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.text.display(value, packet, parent, size)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.text, range, value, display)

  return offset + size, value
end

-- Text Length
nasdaq_utdf_output_utp_v3_0_c.text_length = {}

-- Size: Text Length
nasdaq_utdf_output_utp_v3_0_c.text_length.size = 2

-- Display: Text Length
nasdaq_utdf_output_utp_v3_0_c.text_length.display = function(value)
  return "Text Length: "..value
end

-- Dissect: Text Length
nasdaq_utdf_output_utp_v3_0_c.text_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.text_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v3_0_c.text_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.text_length, range, value, display)

  return offset + length, value
end

-- Timestamp 1
nasdaq_utdf_output_utp_v3_0_c.timestamp_1 = {}

-- Size: Timestamp 1
nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size = 8

-- Dissect: Timestamp 1
nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nasdaq_utdf_output_utp_v3_0_c.fields.timestamp_1
  if nasdaq_utdf_output_utp_v3_0_c.absolute_time_base == 1 then field = omi_nasdaq_utdf_output_utp_v3_0_c.fields.timestamp_1_utc end

  if value == UInt64(0x00000000, 0x00000000) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Timestamp 1: Not Applicable")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Timestamp 2
nasdaq_utdf_output_utp_v3_0_c.timestamp_2 = {}

-- Size: Timestamp 2
nasdaq_utdf_output_utp_v3_0_c.timestamp_2.size = 8

-- Dissect: Timestamp 2
nasdaq_utdf_output_utp_v3_0_c.timestamp_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.timestamp_2.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nasdaq_utdf_output_utp_v3_0_c.fields.timestamp_2
  if nasdaq_utdf_output_utp_v3_0_c.absolute_time_base == 1 then field = omi_nasdaq_utdf_output_utp_v3_0_c.fields.timestamp_2_utc end

  if value == UInt64(0x00000000, 0x00000000) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Timestamp 2: Not Applicable")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Timestamp Of Trade
nasdaq_utdf_output_utp_v3_0_c.timestamp_of_trade = {}

-- Size: Timestamp Of Trade
nasdaq_utdf_output_utp_v3_0_c.timestamp_of_trade.size = 8

-- Dissect: Timestamp Of Trade
nasdaq_utdf_output_utp_v3_0_c.timestamp_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.timestamp_of_trade.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nasdaq_utdf_output_utp_v3_0_c.fields.timestamp_of_trade
  if nasdaq_utdf_output_utp_v3_0_c.absolute_time_base == 1 then field = omi_nasdaq_utdf_output_utp_v3_0_c.fields.timestamp_of_trade_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Total Consolidated Volume
nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume = {}

-- Size: Total Consolidated Volume
nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume.size = 8

-- Display: Total Consolidated Volume
nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume.display = function(value)
  return "Total Consolidated Volume: "..value
end

-- Translate: Total Consolidated Volume
nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Total Consolidated Volume
nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.total_consolidated_volume, range, value, display)

  return offset + length, value
end

-- Total Consolidated Volume Message Type
nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume_message_type = {}

-- Size: Total Consolidated Volume Message Type
nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume_message_type.size = 1

-- Display: Total Consolidated Volume Message Type
nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume_message_type.display = function(value)
  return "Total Consolidated Volume Message Type: "..value
end

-- Dissect: Total Consolidated Volume Message Type
nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.total_consolidated_volume_message_type, range, value, display)

  return offset + length, value
end

-- Trade Cancellation Type
nasdaq_utdf_output_utp_v3_0_c.trade_cancellation_type = {}

-- Size: Trade Cancellation Type
nasdaq_utdf_output_utp_v3_0_c.trade_cancellation_type.size = 1

-- Display: Trade Cancellation Type
nasdaq_utdf_output_utp_v3_0_c.trade_cancellation_type.labels = {
  ["C"] = "Trade Cancellation Type: Cancel (C)",
  ["E"] = "Trade Cancellation Type: Error (E)",
}

nasdaq_utdf_output_utp_v3_0_c.trade_cancellation_type.display = function(value)
  return nasdaq_utdf_output_utp_v3_0_c.trade_cancellation_type.labels[value] or "Trade Cancellation Type: Unknown("..value..")"
end

-- Dissect: Trade Cancellation Type
nasdaq_utdf_output_utp_v3_0_c.trade_cancellation_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.trade_cancellation_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.trade_cancellation_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_cancellation_type, range, value, display)

  return offset + length, value
end

-- Trade Id
nasdaq_utdf_output_utp_v3_0_c.trade_id = {}

-- Size: Trade Id
nasdaq_utdf_output_utp_v3_0_c.trade_id.size = 8

-- Display: Trade Id
nasdaq_utdf_output_utp_v3_0_c.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nasdaq_utdf_output_utp_v3_0_c.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v3_0_c.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Message Type
nasdaq_utdf_output_utp_v3_0_c.trade_message_type = {}

-- Size: Trade Message Type
nasdaq_utdf_output_utp_v3_0_c.trade_message_type.size = 1

-- Display: Trade Message Type
nasdaq_utdf_output_utp_v3_0_c.trade_message_type.display = function(value)
  return "Trade Message Type: "..value
end

-- Dissect: Trade Message Type
nasdaq_utdf_output_utp_v3_0_c.trade_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.trade_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.trade_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_message_type, range, value, display)

  return offset + length, value
end

-- Trade Price Long
nasdaq_utdf_output_utp_v3_0_c.trade_price_long = {}

-- Size: Trade Price Long
nasdaq_utdf_output_utp_v3_0_c.trade_price_long.size = 8

-- Display: Trade Price Long
nasdaq_utdf_output_utp_v3_0_c.trade_price_long.display = function(value)
  return "Trade Price Long: "..value
end

-- Translate: Trade Price Long
nasdaq_utdf_output_utp_v3_0_c.trade_price_long.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Trade Price Long
nasdaq_utdf_output_utp_v3_0_c.trade_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.trade_price_long.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.trade_price_long.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.trade_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_price_long, range, value, display)

  return offset + length, value
end

-- Trade Price Short
nasdaq_utdf_output_utp_v3_0_c.trade_price_short = {}

-- Size: Trade Price Short
nasdaq_utdf_output_utp_v3_0_c.trade_price_short.size = 2

-- Display: Trade Price Short
nasdaq_utdf_output_utp_v3_0_c.trade_price_short.display = function(value)
  return "Trade Price Short: "..value
end

-- Translate: Trade Price Short
nasdaq_utdf_output_utp_v3_0_c.trade_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Trade Price Short
nasdaq_utdf_output_utp_v3_0_c.trade_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.trade_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_utdf_output_utp_v3_0_c.trade_price_short.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.trade_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_price_short, range, value, display)

  return offset + length, value
end

-- Trade Through Exempt Flag
nasdaq_utdf_output_utp_v3_0_c.trade_through_exempt_flag = {}

-- Size: Trade Through Exempt Flag
nasdaq_utdf_output_utp_v3_0_c.trade_through_exempt_flag.size = 1

-- Display: Trade Through Exempt Flag
nasdaq_utdf_output_utp_v3_0_c.trade_through_exempt_flag.display = function(value)
  if value == "X" then
    return "Trade Through Exempt Flag: Rule 611 Trade Through Exempt (X)"
  end
  if value == " " then
    return "Trade Through Exempt Flag: Not Rule 611 Trade Through Exempt (<whitespace>)"
  end

  return "Trade Through Exempt Flag: Unknown("..value..")"
end

-- Dissect: Trade Through Exempt Flag
nasdaq_utdf_output_utp_v3_0_c.trade_through_exempt_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.trade_through_exempt_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.trade_through_exempt_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_through_exempt_flag, range, value, display)

  return offset + length, value
end

-- Trade Volume
nasdaq_utdf_output_utp_v3_0_c.trade_volume = {}

-- Size: Trade Volume
nasdaq_utdf_output_utp_v3_0_c.trade_volume.size = 8

-- Display: Trade Volume
nasdaq_utdf_output_utp_v3_0_c.trade_volume.display = function(value)
  return "Trade Volume: "..value
end

-- Translate: Trade Volume
nasdaq_utdf_output_utp_v3_0_c.trade_volume.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Trade Volume
nasdaq_utdf_output_utp_v3_0_c.trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.trade_volume.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v3_0_c.trade_volume.translate(raw)
  local display = nasdaq_utdf_output_utp_v3_0_c.trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Trade Volume Long
nasdaq_utdf_output_utp_v3_0_c.trade_volume_long = {}

-- Size: Trade Volume Long
nasdaq_utdf_output_utp_v3_0_c.trade_volume_long.size = 4

-- Display: Trade Volume Long
nasdaq_utdf_output_utp_v3_0_c.trade_volume_long.display = function(value)
  return "Trade Volume Long: "..value
end

-- Dissect: Trade Volume Long
nasdaq_utdf_output_utp_v3_0_c.trade_volume_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.trade_volume_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v3_0_c.trade_volume_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_volume_long, range, value, display)

  return offset + length, value
end

-- Trade Volume Short
nasdaq_utdf_output_utp_v3_0_c.trade_volume_short = {}

-- Size: Trade Volume Short
nasdaq_utdf_output_utp_v3_0_c.trade_volume_short.size = 2

-- Display: Trade Volume Short
nasdaq_utdf_output_utp_v3_0_c.trade_volume_short.display = function(value)
  return "Trade Volume Short: "..value
end

-- Dissect: Trade Volume Short
nasdaq_utdf_output_utp_v3_0_c.trade_volume_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.trade_volume_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v3_0_c.trade_volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_volume_short, range, value, display)

  return offset + length, value
end

-- Trading Action Code
nasdaq_utdf_output_utp_v3_0_c.trading_action_code = {}

-- Size: Trading Action Code
nasdaq_utdf_output_utp_v3_0_c.trading_action_code.size = 1

-- Display: Trading Action Code
nasdaq_utdf_output_utp_v3_0_c.trading_action_code.labels = {
  ["H"] = "Trading Action Code: Trading Halt (H)",
  ["Q"] = "Trading Action Code: Quotation Resumption Including After Ema (Q)",
  ["T"] = "Trading Action Code: Trading Resumption (T)",
  ["P"] = "Trading Action Code: Volatility Trading Pause (P)",
}

nasdaq_utdf_output_utp_v3_0_c.trading_action_code.display = function(value)
  return nasdaq_utdf_output_utp_v3_0_c.trading_action_code.labels[value] or "Trading Action Code: Unknown("..value..")"
end

-- Dissect: Trading Action Code
nasdaq_utdf_output_utp_v3_0_c.trading_action_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.trading_action_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.trading_action_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.trading_action_code, range, value, display)

  return offset + length, value
end

-- Trading Action Indicator
nasdaq_utdf_output_utp_v3_0_c.trading_action_indicator = {}

-- Size: Trading Action Indicator
nasdaq_utdf_output_utp_v3_0_c.trading_action_indicator.size = 1

-- Display: Trading Action Indicator
nasdaq_utdf_output_utp_v3_0_c.trading_action_indicator.display = function(value)
  if value == "H" then
    return "Trading Action Indicator: Trading Halt In Effect (H)"
  end
  if value == " " then
    return "Trading Action Indicator: Regular Trading In Effect (<whitespace>)"
  end

  return "Trading Action Indicator: Unknown("..value..")"
end

-- Dissect: Trading Action Indicator
nasdaq_utdf_output_utp_v3_0_c.trading_action_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.trading_action_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.trading_action_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.trading_action_indicator, range, value, display)

  return offset + length, value
end

-- Trading Action Sequence Number
nasdaq_utdf_output_utp_v3_0_c.trading_action_sequence_number = {}

-- Size: Trading Action Sequence Number
nasdaq_utdf_output_utp_v3_0_c.trading_action_sequence_number.size = 4

-- Display: Trading Action Sequence Number
nasdaq_utdf_output_utp_v3_0_c.trading_action_sequence_number.display = function(value)
  return "Trading Action Sequence Number: "..value
end

-- Dissect: Trading Action Sequence Number
nasdaq_utdf_output_utp_v3_0_c.trading_action_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.trading_action_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v3_0_c.trading_action_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.trading_action_sequence_number, range, value, display)

  return offset + length, value
end

-- Version
nasdaq_utdf_output_utp_v3_0_c.version = {}

-- Size: Version
nasdaq_utdf_output_utp_v3_0_c.version.size = 1

-- Display: Version
nasdaq_utdf_output_utp_v3_0_c.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_utdf_output_utp_v3_0_c.version.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v3_0_c.version.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v3_0_c.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Utdf Output Utp 3.0.c
-----------------------------------------------------------------------

-- End Of Consolidated Last Sale Eligibility Message
nasdaq_utdf_output_utp_v3_0_c.end_of_consolidated_last_sale_eligibility_message = {}

-- Size: End Of Consolidated Last Sale Eligibility Message
nasdaq_utdf_output_utp_v3_0_c.end_of_consolidated_last_sale_eligibility_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size

-- Display: End Of Consolidated Last Sale Eligibility Message
nasdaq_utdf_output_utp_v3_0_c.end_of_consolidated_last_sale_eligibility_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Consolidated Last Sale Eligibility Message
nasdaq_utdf_output_utp_v3_0_c.end_of_consolidated_last_sale_eligibility_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Consolidated Last Sale Eligibility Message
nasdaq_utdf_output_utp_v3_0_c.end_of_consolidated_last_sale_eligibility_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.end_of_consolidated_last_sale_eligibility_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.end_of_consolidated_last_sale_eligibility_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.end_of_consolidated_last_sale_eligibility_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.end_of_consolidated_last_sale_eligibility_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Trade Reporting Message
nasdaq_utdf_output_utp_v3_0_c.end_of_trade_reporting_message = {}

-- Size: End Of Trade Reporting Message
nasdaq_utdf_output_utp_v3_0_c.end_of_trade_reporting_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size

-- Display: End Of Trade Reporting Message
nasdaq_utdf_output_utp_v3_0_c.end_of_trade_reporting_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Trade Reporting Message
nasdaq_utdf_output_utp_v3_0_c.end_of_trade_reporting_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Trade Reporting Message
nasdaq_utdf_output_utp_v3_0_c.end_of_trade_reporting_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.end_of_trade_reporting_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.end_of_trade_reporting_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.end_of_trade_reporting_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.end_of_trade_reporting_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Transmissions Message
nasdaq_utdf_output_utp_v3_0_c.end_of_transmissions_message = {}

-- Size: End Of Transmissions Message
nasdaq_utdf_output_utp_v3_0_c.end_of_transmissions_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size

-- Display: End Of Transmissions Message
nasdaq_utdf_output_utp_v3_0_c.end_of_transmissions_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmissions Message
nasdaq_utdf_output_utp_v3_0_c.end_of_transmissions_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmissions Message
nasdaq_utdf_output_utp_v3_0_c.end_of_transmissions_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.end_of_transmissions_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.end_of_transmissions_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.end_of_transmissions_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.end_of_transmissions_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Session Close Message
nasdaq_utdf_output_utp_v3_0_c.market_session_close_message = {}

-- Size: Market Session Close Message
nasdaq_utdf_output_utp_v3_0_c.market_session_close_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size

-- Display: Market Session Close Message
nasdaq_utdf_output_utp_v3_0_c.market_session_close_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Close Message
nasdaq_utdf_output_utp_v3_0_c.market_session_close_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Close Message
nasdaq_utdf_output_utp_v3_0_c.market_session_close_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_session_close_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.market_session_close_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.market_session_close_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.market_session_close_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Session Open Message
nasdaq_utdf_output_utp_v3_0_c.market_session_open_message = {}

-- Size: Market Session Open Message
nasdaq_utdf_output_utp_v3_0_c.market_session_open_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size

-- Display: Market Session Open Message
nasdaq_utdf_output_utp_v3_0_c.market_session_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Open Message
nasdaq_utdf_output_utp_v3_0_c.market_session_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Open Message
nasdaq_utdf_output_utp_v3_0_c.market_session_open_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_session_open_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.market_session_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.market_session_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.market_session_open_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Day Message
nasdaq_utdf_output_utp_v3_0_c.end_of_day_message = {}

-- Size: End Of Day Message
nasdaq_utdf_output_utp_v3_0_c.end_of_day_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size

-- Display: End Of Day Message
nasdaq_utdf_output_utp_v3_0_c.end_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Message
nasdaq_utdf_output_utp_v3_0_c.end_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
nasdaq_utdf_output_utp_v3_0_c.end_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.end_of_day_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.end_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.end_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.end_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Day Message
nasdaq_utdf_output_utp_v3_0_c.start_of_day_message = {}

-- Size: Start Of Day Message
nasdaq_utdf_output_utp_v3_0_c.start_of_day_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size

-- Display: Start Of Day Message
nasdaq_utdf_output_utp_v3_0_c.start_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Day Message
nasdaq_utdf_output_utp_v3_0_c.start_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
nasdaq_utdf_output_utp_v3_0_c.start_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.start_of_day_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.start_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.start_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.start_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Control Message Payload
nasdaq_utdf_output_utp_v3_0_c.control_message_payload = {}

-- Dispatch: Control Message Payload
nasdaq_utdf_output_utp_v3_0_c.control_message_payload.dispatch = {
  ["I"] = nasdaq_utdf_output_utp_v3_0_c.start_of_day_message.dissect,
  ["J"] = nasdaq_utdf_output_utp_v3_0_c.end_of_day_message.dissect,
  ["O"] = nasdaq_utdf_output_utp_v3_0_c.market_session_open_message.dissect,
  ["C"] = nasdaq_utdf_output_utp_v3_0_c.market_session_close_message.dissect,
  ["Z"] = nasdaq_utdf_output_utp_v3_0_c.end_of_transmissions_message.dissect,
  ["X"] = nasdaq_utdf_output_utp_v3_0_c.end_of_trade_reporting_message.dissect,
  ["S"] = nasdaq_utdf_output_utp_v3_0_c.end_of_consolidated_last_sale_eligibility_message.dissect,
}

-- Dissect: Control Message Payload
nasdaq_utdf_output_utp_v3_0_c.control_message_payload.dissect = function(buffer, offset, packet, parent, control_message_type)
  local dissect = nasdaq_utdf_output_utp_v3_0_c.control_message_payload.dispatch[control_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Control Message
nasdaq_utdf_output_utp_v3_0_c.control_message = {}

-- Calculate size of: Control Message
nasdaq_utdf_output_utp_v3_0_c.control_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utdf_output_utp_v3_0_c.control_message_type.size

  -- Calculate runtime size of Control Message Payload field
  local control_message_payload_offset = offset + index
  local control_message_payload_type = buffer(control_message_payload_offset - 1, 1):string()
  index = index + nasdaq_utdf_output_utp_v3_0_c.control_message_payload.size(buffer, control_message_payload_offset, control_message_payload_type)

  return index
end

-- Display: Control Message
nasdaq_utdf_output_utp_v3_0_c.control_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control Message
nasdaq_utdf_output_utp_v3_0_c.control_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Control Message Type: 1 Byte Ascii String
  index, control_message_type = nasdaq_utdf_output_utp_v3_0_c.control_message_type.dissect(buffer, index, packet, parent)

  -- Control Message Payload: Runtime Type with 7 branches
  index = nasdaq_utdf_output_utp_v3_0_c.control_message_payload.dissect(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control Message
nasdaq_utdf_output_utp_v3_0_c.control_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.control_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.control_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.control_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.control_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Center Volume Group
nasdaq_utdf_output_utp_v3_0_c.market_center_volume_group = {}

-- Size: Market Center Volume Group
nasdaq_utdf_output_utp_v3_0_c.market_center_volume_group.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_identifier.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_center_volume.size

-- Display: Market Center Volume Group
nasdaq_utdf_output_utp_v3_0_c.market_center_volume_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Center Volume Group
nasdaq_utdf_output_utp_v3_0_c.market_center_volume_group.fields = function(buffer, offset, packet, parent, market_center_volume_group_index)
  local index = offset

  -- Implicit Market Center Volume Group Index
  if market_center_volume_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_center_volume_group_index, market_center_volume_group_index)
    iteration:set_generated()
  end

  -- Market Center Identifier: byte
  index, market_center_identifier = nasdaq_utdf_output_utp_v3_0_c.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Market Center Volume: long
  index, market_center_volume = nasdaq_utdf_output_utp_v3_0_c.market_center_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Center Volume Group
nasdaq_utdf_output_utp_v3_0_c.market_center_volume_group.dissect = function(buffer, offset, packet, parent, market_center_volume_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_center_volume_group, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.market_center_volume_group.fields(buffer, offset, packet, parent, market_center_volume_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.market_center_volume_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.market_center_volume_group.fields(buffer, offset, packet, parent, market_center_volume_group_index)
  end
end

-- Total Consolidated And Market Center Volume Message
nasdaq_utdf_output_utp_v3_0_c.total_consolidated_and_market_center_volume_message = {}

-- Calculate size of: Total Consolidated And Market Center Volume Message
nasdaq_utdf_output_utp_v3_0_c.total_consolidated_and_market_center_volume_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size

  index = index + nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size

  index = index + nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size

  index = index + nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size

  index = index + nasdaq_utdf_output_utp_v3_0_c.participant_token.size

  index = index + nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume.size

  index = index + nasdaq_utdf_output_utp_v3_0_c.number_of_market_center_attachments.size

  -- Calculate field size from count
  local market_center_volume_group_count = buffer(offset + index - 2, 2):uint()
  index = index + market_center_volume_group_count * 9

  return index
end

-- Display: Total Consolidated And Market Center Volume Message
nasdaq_utdf_output_utp_v3_0_c.total_consolidated_and_market_center_volume_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Total Consolidated And Market Center Volume Message
nasdaq_utdf_output_utp_v3_0_c.total_consolidated_and_market_center_volume_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Total Consolidated Volume: long
  index, total_consolidated_volume = nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume.dissect(buffer, index, packet, parent)

  -- Number Of Market Center Attachments: short
  index, number_of_market_center_attachments = nasdaq_utdf_output_utp_v3_0_c.number_of_market_center_attachments.dissect(buffer, index, packet, parent)

  -- Repeating: Market Center Volume Group
  for market_center_volume_group_index = 1, number_of_market_center_attachments do
    index, market_center_volume_group = nasdaq_utdf_output_utp_v3_0_c.market_center_volume_group.dissect(buffer, index, packet, parent, market_center_volume_group_index)
  end

  return index
end

-- Dissect: Total Consolidated And Market Center Volume Message
nasdaq_utdf_output_utp_v3_0_c.total_consolidated_and_market_center_volume_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.total_consolidated_and_market_center_volume_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.total_consolidated_and_market_center_volume_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.total_consolidated_and_market_center_volume_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.total_consolidated_and_market_center_volume_message.fields(buffer, offset, packet, parent)
  end
end

-- Total Consolidated Volume Message Payload
nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume_message_payload = {}

-- Dispatch: Total Consolidated Volume Message Payload
nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume_message_payload.dispatch = {
  ["V"] = nasdaq_utdf_output_utp_v3_0_c.total_consolidated_and_market_center_volume_message.dissect,
}

-- Dissect: Total Consolidated Volume Message Payload
nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume_message_payload.dissect = function(buffer, offset, packet, parent, total_consolidated_volume_message_type)
  local dissect = nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume_message_payload.dispatch[total_consolidated_volume_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Total Consolidated Volume Message
nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume_message = {}

-- Calculate size of: Total Consolidated Volume Message
nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume_message_type.size

  -- Calculate runtime size of Total Consolidated Volume Message Payload field
  local total_consolidated_volume_message_payload_offset = offset + index
  local total_consolidated_volume_message_payload_type = buffer(total_consolidated_volume_message_payload_offset - 1, 1):string()
  index = index + nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume_message_payload.size(buffer, total_consolidated_volume_message_payload_offset, total_consolidated_volume_message_payload_type)

  return index
end

-- Display: Total Consolidated Volume Message
nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Total Consolidated Volume Message
nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Total Consolidated Volume Message Type: 1 Byte Ascii String
  index, total_consolidated_volume_message_type = nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume_message_type.dissect(buffer, index, packet, parent)

  -- Total Consolidated Volume Message Payload: Runtime Type with 1 branches
  index = nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume_message_payload.dissect(buffer, index, packet, parent, total_consolidated_volume_message_type)

  return index
end

-- Dissect: Total Consolidated Volume Message
nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.total_consolidated_volume_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Center Closing Price And Volume Summary
nasdaq_utdf_output_utp_v3_0_c.market_center_closing_price_and_volume_summary = {}

-- Size: Market Center Closing Price And Volume Summary
nasdaq_utdf_output_utp_v3_0_c.market_center_closing_price_and_volume_summary.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_identifier.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_center_closing_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_center_volume.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_center_close_indicator.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_participant_high_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_participant_low_price.size

-- Display: Market Center Closing Price And Volume Summary
nasdaq_utdf_output_utp_v3_0_c.market_center_closing_price_and_volume_summary.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Center Closing Price And Volume Summary
nasdaq_utdf_output_utp_v3_0_c.market_center_closing_price_and_volume_summary.fields = function(buffer, offset, packet, parent, market_center_closing_price_and_volume_summary_index)
  local index = offset

  -- Implicit Market Center Closing Price And Volume Summary Index
  if market_center_closing_price_and_volume_summary_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_center_closing_price_and_volume_summary_index, market_center_closing_price_and_volume_summary_index)
    iteration:set_generated()
  end

  -- Market Center Identifier: byte
  index, market_center_identifier = nasdaq_utdf_output_utp_v3_0_c.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Market Center Closing Price: long
  index, market_center_closing_price = nasdaq_utdf_output_utp_v3_0_c.market_center_closing_price.dissect(buffer, index, packet, parent)

  -- Market Center Volume: long
  index, market_center_volume = nasdaq_utdf_output_utp_v3_0_c.market_center_volume.dissect(buffer, index, packet, parent)

  -- Market Center Close Indicator: byte
  index, market_center_close_indicator = nasdaq_utdf_output_utp_v3_0_c.market_center_close_indicator.dissect(buffer, index, packet, parent)

  -- Market Participant High Price: long
  index, market_participant_high_price = nasdaq_utdf_output_utp_v3_0_c.market_participant_high_price.dissect(buffer, index, packet, parent)

  -- Market Participant Low Price: long
  index, market_participant_low_price = nasdaq_utdf_output_utp_v3_0_c.market_participant_low_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Center Closing Price And Volume Summary
nasdaq_utdf_output_utp_v3_0_c.market_center_closing_price_and_volume_summary.dissect = function(buffer, offset, packet, parent, market_center_closing_price_and_volume_summary_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_center_closing_price_and_volume_summary, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.market_center_closing_price_and_volume_summary.fields(buffer, offset, packet, parent, market_center_closing_price_and_volume_summary_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.market_center_closing_price_and_volume_summary.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.market_center_closing_price_and_volume_summary.fields(buffer, offset, packet, parent, market_center_closing_price_and_volume_summary_index)
  end
end

-- Closing Trade Summary Report Message
nasdaq_utdf_output_utp_v3_0_c.closing_trade_summary_report_message = {}

-- Calculate size of: Closing Trade Summary Report Message
nasdaq_utdf_output_utp_v3_0_c.closing_trade_summary_report_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size

  index = index + nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size

  index = index + nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size

  index = index + nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size

  index = index + nasdaq_utdf_output_utp_v3_0_c.participant_token.size

  index = index + nasdaq_utdf_output_utp_v3_0_c.symbol_long.size

  index = index + nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_high_price.size

  index = index + nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_low_price.size

  index = index + nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_closing_price.size

  index = index + nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price_originator.size

  index = index + nasdaq_utdf_output_utp_v3_0_c.consolidated_volume.size

  index = index + nasdaq_utdf_output_utp_v3_0_c.trading_action_indicator.size

  index = index + nasdaq_utdf_output_utp_v3_0_c.number_of_market_center_attachments.size

  -- Calculate field size from count
  local market_center_closing_price_and_volume_summary_count = buffer(offset + index - 2, 2):uint()
  index = index + market_center_closing_price_and_volume_summary_count * 34

  return index
end

-- Display: Closing Trade Summary Report Message
nasdaq_utdf_output_utp_v3_0_c.closing_trade_summary_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Closing Trade Summary Report Message
nasdaq_utdf_output_utp_v3_0_c.closing_trade_summary_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_utdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Daily Consolidated High Price: long
  index, daily_consolidated_high_price = nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_high_price.dissect(buffer, index, packet, parent)

  -- Daily Consolidated Low Price: long
  index, daily_consolidated_low_price = nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_low_price.dissect(buffer, index, packet, parent)

  -- Daily Consolidated Closing Price: long
  index, daily_consolidated_closing_price = nasdaq_utdf_output_utp_v3_0_c.daily_consolidated_closing_price.dissect(buffer, index, packet, parent)

  -- Consolidated Last Price Originator: byte
  index, consolidated_last_price_originator = nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price_originator.dissect(buffer, index, packet, parent)

  -- Consolidated Volume: long
  index, consolidated_volume = nasdaq_utdf_output_utp_v3_0_c.consolidated_volume.dissect(buffer, index, packet, parent)

  -- Trading Action Indicator: byte
  index, trading_action_indicator = nasdaq_utdf_output_utp_v3_0_c.trading_action_indicator.dissect(buffer, index, packet, parent)

  -- Number Of Market Center Attachments: short
  index, number_of_market_center_attachments = nasdaq_utdf_output_utp_v3_0_c.number_of_market_center_attachments.dissect(buffer, index, packet, parent)

  -- Repeating: Market Center Closing Price And Volume Summary
  for market_center_closing_price_and_volume_summary_index = 1, number_of_market_center_attachments do
    index, market_center_closing_price_and_volume_summary = nasdaq_utdf_output_utp_v3_0_c.market_center_closing_price_and_volume_summary.dissect(buffer, index, packet, parent, market_center_closing_price_and_volume_summary_index)
  end

  return index
end

-- Dissect: Closing Trade Summary Report Message
nasdaq_utdf_output_utp_v3_0_c.closing_trade_summary_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.closing_trade_summary_report_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.closing_trade_summary_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.closing_trade_summary_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.closing_trade_summary_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Collar Message
nasdaq_utdf_output_utp_v3_0_c.auction_collar_message = {}

-- Size: Auction Collar Message
nasdaq_utdf_output_utp_v3_0_c.auction_collar_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_utdf_output_utp_v3_0_c.symbol_long.size + 
  nasdaq_utdf_output_utp_v3_0_c.trading_action_sequence_number.size + 
  nasdaq_utdf_output_utp_v3_0_c.collar_reference_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.collar_up_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.collar_down_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.collar_extension_indicator.size

-- Display: Auction Collar Message
nasdaq_utdf_output_utp_v3_0_c.auction_collar_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Collar Message
nasdaq_utdf_output_utp_v3_0_c.auction_collar_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_utdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Trading Action Sequence Number: int
  index, trading_action_sequence_number = nasdaq_utdf_output_utp_v3_0_c.trading_action_sequence_number.dissect(buffer, index, packet, parent)

  -- Collar Reference Price: long
  index, collar_reference_price = nasdaq_utdf_output_utp_v3_0_c.collar_reference_price.dissect(buffer, index, packet, parent)

  -- Collar Up Price: long
  index, collar_up_price = nasdaq_utdf_output_utp_v3_0_c.collar_up_price.dissect(buffer, index, packet, parent)

  -- Collar Down Price: long
  index, collar_down_price = nasdaq_utdf_output_utp_v3_0_c.collar_down_price.dissect(buffer, index, packet, parent)

  -- Collar Extension Indicator: byte
  index, collar_extension_indicator = nasdaq_utdf_output_utp_v3_0_c.collar_extension_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Collar Message
nasdaq_utdf_output_utp_v3_0_c.auction_collar_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.auction_collar_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.auction_collar_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.auction_collar_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.auction_collar_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Wide Circuit Breaker Status Message
nasdaq_utdf_output_utp_v3_0_c.market_wide_circuit_breaker_status_message = {}

-- Size: Market Wide Circuit Breaker Status Message
nasdaq_utdf_output_utp_v3_0_c.market_wide_circuit_breaker_status_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_utdf_output_utp_v3_0_c.mwcb_status_level_indicator.size

-- Display: Market Wide Circuit Breaker Status Message
nasdaq_utdf_output_utp_v3_0_c.market_wide_circuit_breaker_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Status Message
nasdaq_utdf_output_utp_v3_0_c.market_wide_circuit_breaker_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Mwcb Status Level Indicator: byte
  index, mwcb_status_level_indicator = nasdaq_utdf_output_utp_v3_0_c.mwcb_status_level_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Status Message
nasdaq_utdf_output_utp_v3_0_c.market_wide_circuit_breaker_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_wide_circuit_breaker_status_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.market_wide_circuit_breaker_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.market_wide_circuit_breaker_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.market_wide_circuit_breaker_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Wide Circuit Breaker Decline Level Message
nasdaq_utdf_output_utp_v3_0_c.market_wide_circuit_breaker_decline_level_message = {}

-- Size: Market Wide Circuit Breaker Decline Level Message
nasdaq_utdf_output_utp_v3_0_c.market_wide_circuit_breaker_decline_level_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_utdf_output_utp_v3_0_c.mwcb_level_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.mwcb_level_2.size + 
  nasdaq_utdf_output_utp_v3_0_c.mwcb_level_3.size

-- Display: Market Wide Circuit Breaker Decline Level Message
nasdaq_utdf_output_utp_v3_0_c.market_wide_circuit_breaker_decline_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Decline Level Message
nasdaq_utdf_output_utp_v3_0_c.market_wide_circuit_breaker_decline_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Mwcb Level 1: long
  index, mwcb_level_1 = nasdaq_utdf_output_utp_v3_0_c.mwcb_level_1.dissect(buffer, index, packet, parent)

  -- Mwcb Level 2: long
  index, mwcb_level_2 = nasdaq_utdf_output_utp_v3_0_c.mwcb_level_2.dissect(buffer, index, packet, parent)

  -- Mwcb Level 3: long
  index, mwcb_level_3 = nasdaq_utdf_output_utp_v3_0_c.mwcb_level_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Decline Level Message
nasdaq_utdf_output_utp_v3_0_c.market_wide_circuit_breaker_decline_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_wide_circuit_breaker_decline_level_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.market_wide_circuit_breaker_decline_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.market_wide_circuit_breaker_decline_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.market_wide_circuit_breaker_decline_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Limit Up Limit Down Price Band Message
nasdaq_utdf_output_utp_v3_0_c.limit_up_limit_down_price_band_message = {}

-- Size: Limit Up Limit Down Price Band Message
nasdaq_utdf_output_utp_v3_0_c.limit_up_limit_down_price_band_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_utdf_output_utp_v3_0_c.symbol_long.size + 
  nasdaq_utdf_output_utp_v3_0_c.luld_price_band_indicator.size + 
  nasdaq_utdf_output_utp_v3_0_c.luld_price_band_effective_time.size + 
  nasdaq_utdf_output_utp_v3_0_c.limit_down_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.limit_up_price.size

-- Display: Limit Up Limit Down Price Band Message
nasdaq_utdf_output_utp_v3_0_c.limit_up_limit_down_price_band_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Up Limit Down Price Band Message
nasdaq_utdf_output_utp_v3_0_c.limit_up_limit_down_price_band_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_utdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Luld Price Band Indicator: byte
  index, luld_price_band_indicator = nasdaq_utdf_output_utp_v3_0_c.luld_price_band_indicator.dissect(buffer, index, packet, parent)

  -- Luld Price Band Effective Time: long
  index, luld_price_band_effective_time = nasdaq_utdf_output_utp_v3_0_c.luld_price_band_effective_time.dissect(buffer, index, packet, parent)

  -- Limit Down Price: long
  index, limit_down_price = nasdaq_utdf_output_utp_v3_0_c.limit_down_price.dissect(buffer, index, packet, parent)

  -- Limit Up Price: long
  index, limit_up_price = nasdaq_utdf_output_utp_v3_0_c.limit_up_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Limit Up Limit Down Price Band Message
nasdaq_utdf_output_utp_v3_0_c.limit_up_limit_down_price_band_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.limit_up_limit_down_price_band_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.limit_up_limit_down_price_band_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.limit_up_limit_down_price_band_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.limit_up_limit_down_price_band_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utdf_output_utp_v3_0_c.reg_sho_short_sale_price_test_restricted_indicator_message = {}

-- Size: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utdf_output_utp_v3_0_c.reg_sho_short_sale_price_test_restricted_indicator_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_utdf_output_utp_v3_0_c.symbol_long.size + 
  nasdaq_utdf_output_utp_v3_0_c.reg_sho_action.size

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utdf_output_utp_v3_0_c.reg_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utdf_output_utp_v3_0_c.reg_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_utdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: byte
  index, reg_sho_action = nasdaq_utdf_output_utp_v3_0_c.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utdf_output_utp_v3_0_c.reg_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.reg_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.reg_sho_short_sale_price_test_restricted_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Issue Symbol Directory Message
nasdaq_utdf_output_utp_v3_0_c.issue_symbol_directory_message = {}

-- Size: Issue Symbol Directory Message
nasdaq_utdf_output_utp_v3_0_c.issue_symbol_directory_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_utdf_output_utp_v3_0_c.symbol_long.size + 
  nasdaq_utdf_output_utp_v3_0_c.old_symbol.size + 
  nasdaq_utdf_output_utp_v3_0_c.issue_name.size + 
  nasdaq_utdf_output_utp_v3_0_c.issue_type.size + 
  nasdaq_utdf_output_utp_v3_0_c.issue_subtype.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_tier.size + 
  nasdaq_utdf_output_utp_v3_0_c.authenticity.size + 
  nasdaq_utdf_output_utp_v3_0_c.short_sale_threshold_indicator.size + 
  nasdaq_utdf_output_utp_v3_0_c.round_lot_size.size + 
  nasdaq_utdf_output_utp_v3_0_c.financial_status_indicator.size

-- Display: Issue Symbol Directory Message
nasdaq_utdf_output_utp_v3_0_c.issue_symbol_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Issue Symbol Directory Message
nasdaq_utdf_output_utp_v3_0_c.issue_symbol_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_utdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Old Symbol: byte[]
  index, old_symbol = nasdaq_utdf_output_utp_v3_0_c.old_symbol.dissect(buffer, index, packet, parent)

  -- Issue Name: byte[]
  index, issue_name = nasdaq_utdf_output_utp_v3_0_c.issue_name.dissect(buffer, index, packet, parent)

  -- Issue Type: byte
  index, issue_type = nasdaq_utdf_output_utp_v3_0_c.issue_type.dissect(buffer, index, packet, parent)

  -- Issue Subtype: byte[]
  index, issue_subtype = nasdaq_utdf_output_utp_v3_0_c.issue_subtype.dissect(buffer, index, packet, parent)

  -- Market Tier: byte
  index, market_tier = nasdaq_utdf_output_utp_v3_0_c.market_tier.dissect(buffer, index, packet, parent)

  -- Authenticity: byte
  index, authenticity = nasdaq_utdf_output_utp_v3_0_c.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: byte
  index, short_sale_threshold_indicator = nasdaq_utdf_output_utp_v3_0_c.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: short
  index, round_lot_size = nasdaq_utdf_output_utp_v3_0_c.round_lot_size.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: byte
  index, financial_status_indicator = nasdaq_utdf_output_utp_v3_0_c.financial_status_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Issue Symbol Directory Message
nasdaq_utdf_output_utp_v3_0_c.issue_symbol_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.issue_symbol_directory_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.issue_symbol_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.issue_symbol_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.issue_symbol_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Center Trading Action Message
nasdaq_utdf_output_utp_v3_0_c.market_center_trading_action_message = {}

-- Size: Market Center Trading Action Message
nasdaq_utdf_output_utp_v3_0_c.market_center_trading_action_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_utdf_output_utp_v3_0_c.symbol_long.size + 
  nasdaq_utdf_output_utp_v3_0_c.trading_action_code.size + 
  nasdaq_utdf_output_utp_v3_0_c.action_time.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_center_identifier.size

-- Display: Market Center Trading Action Message
nasdaq_utdf_output_utp_v3_0_c.market_center_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Center Trading Action Message
nasdaq_utdf_output_utp_v3_0_c.market_center_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_utdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Trading Action Code: byte
  index, trading_action_code = nasdaq_utdf_output_utp_v3_0_c.trading_action_code.dissect(buffer, index, packet, parent)

  -- Action Time: long
  index, action_time = nasdaq_utdf_output_utp_v3_0_c.action_time.dissect(buffer, index, packet, parent)

  -- Market Center Identifier: byte
  index, market_center_identifier = nasdaq_utdf_output_utp_v3_0_c.market_center_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Center Trading Action Message
nasdaq_utdf_output_utp_v3_0_c.market_center_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.market_center_trading_action_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.market_center_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.market_center_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.market_center_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Sro Trading Action Message
nasdaq_utdf_output_utp_v3_0_c.cross_sro_trading_action_message = {}

-- Size: Cross Sro Trading Action Message
nasdaq_utdf_output_utp_v3_0_c.cross_sro_trading_action_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_utdf_output_utp_v3_0_c.symbol_long.size + 
  nasdaq_utdf_output_utp_v3_0_c.trading_action_code.size + 
  nasdaq_utdf_output_utp_v3_0_c.trading_action_sequence_number.size + 
  nasdaq_utdf_output_utp_v3_0_c.action_time.size + 
  nasdaq_utdf_output_utp_v3_0_c.reason_for_the_trading_action.size

-- Display: Cross Sro Trading Action Message
nasdaq_utdf_output_utp_v3_0_c.cross_sro_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Sro Trading Action Message
nasdaq_utdf_output_utp_v3_0_c.cross_sro_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_utdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Trading Action Code: byte
  index, trading_action_code = nasdaq_utdf_output_utp_v3_0_c.trading_action_code.dissect(buffer, index, packet, parent)

  -- Trading Action Sequence Number: int
  index, trading_action_sequence_number = nasdaq_utdf_output_utp_v3_0_c.trading_action_sequence_number.dissect(buffer, index, packet, parent)

  -- Action Time: long
  index, action_time = nasdaq_utdf_output_utp_v3_0_c.action_time.dissect(buffer, index, packet, parent)

  -- Reason For The Trading Action: byte[]
  index, reason_for_the_trading_action = nasdaq_utdf_output_utp_v3_0_c.reason_for_the_trading_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Sro Trading Action Message
nasdaq_utdf_output_utp_v3_0_c.cross_sro_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.cross_sro_trading_action_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.cross_sro_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.cross_sro_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.cross_sro_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- General Administrative Message
nasdaq_utdf_output_utp_v3_0_c.general_administrative_message = {}

-- Calculate size of: General Administrative Message
nasdaq_utdf_output_utp_v3_0_c.general_administrative_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size

  index = index + nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size

  index = index + nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size

  index = index + nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size

  index = index + nasdaq_utdf_output_utp_v3_0_c.participant_token.size

  index = index + nasdaq_utdf_output_utp_v3_0_c.text_length.size

  -- Parse runtime size of: Text
  index = index + buffer(offset + index - 2, 2):uint()

  return index
end

-- Display: General Administrative Message
nasdaq_utdf_output_utp_v3_0_c.general_administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: General Administrative Message
nasdaq_utdf_output_utp_v3_0_c.general_administrative_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Text Length: short
  index, text_length = nasdaq_utdf_output_utp_v3_0_c.text_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Text
  index, text = nasdaq_utdf_output_utp_v3_0_c.text.dissect(buffer, index, packet, parent, text_length)

  return index
end

-- Dissect: General Administrative Message
nasdaq_utdf_output_utp_v3_0_c.general_administrative_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.general_administrative_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.general_administrative_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.general_administrative_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.general_administrative_message.fields(buffer, offset, packet, parent)
  end
end

-- Administrative Message Payload
nasdaq_utdf_output_utp_v3_0_c.administrative_message_payload = {}

-- Dispatch: Administrative Message Payload
nasdaq_utdf_output_utp_v3_0_c.administrative_message_payload.dispatch = {
  ["A"] = nasdaq_utdf_output_utp_v3_0_c.general_administrative_message.dissect,
  ["H"] = nasdaq_utdf_output_utp_v3_0_c.cross_sro_trading_action_message.dissect,
  ["K"] = nasdaq_utdf_output_utp_v3_0_c.market_center_trading_action_message.dissect,
  ["B"] = nasdaq_utdf_output_utp_v3_0_c.issue_symbol_directory_message.dissect,
  ["V"] = nasdaq_utdf_output_utp_v3_0_c.reg_sho_short_sale_price_test_restricted_indicator_message.dissect,
  ["P"] = nasdaq_utdf_output_utp_v3_0_c.limit_up_limit_down_price_band_message.dissect,
  ["C"] = nasdaq_utdf_output_utp_v3_0_c.market_wide_circuit_breaker_decline_level_message.dissect,
  ["D"] = nasdaq_utdf_output_utp_v3_0_c.market_wide_circuit_breaker_status_message.dissect,
  ["E"] = nasdaq_utdf_output_utp_v3_0_c.auction_collar_message.dissect,
  ["U"] = nasdaq_utdf_output_utp_v3_0_c.closing_trade_summary_report_message.dissect,
}

-- Dissect: Administrative Message Payload
nasdaq_utdf_output_utp_v3_0_c.administrative_message_payload.dissect = function(buffer, offset, packet, parent, administrative_message_type)
  local dissect = nasdaq_utdf_output_utp_v3_0_c.administrative_message_payload.dispatch[administrative_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Administrative Message
nasdaq_utdf_output_utp_v3_0_c.administrative_message = {}

-- Calculate size of: Administrative Message
nasdaq_utdf_output_utp_v3_0_c.administrative_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utdf_output_utp_v3_0_c.administrative_message_type.size

  -- Calculate runtime size of Administrative Message Payload field
  local administrative_message_payload_offset = offset + index
  local administrative_message_payload_type = buffer(administrative_message_payload_offset - 1, 1):string()
  index = index + nasdaq_utdf_output_utp_v3_0_c.administrative_message_payload.size(buffer, administrative_message_payload_offset, administrative_message_payload_type)

  return index
end

-- Display: Administrative Message
nasdaq_utdf_output_utp_v3_0_c.administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Administrative Message
nasdaq_utdf_output_utp_v3_0_c.administrative_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Administrative Message Type: 1 Byte Ascii String
  index, administrative_message_type = nasdaq_utdf_output_utp_v3_0_c.administrative_message_type.dissect(buffer, index, packet, parent)

  -- Administrative Message Payload: Runtime Type with 10 branches
  index = nasdaq_utdf_output_utp_v3_0_c.administrative_message_payload.dissect(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative Message
nasdaq_utdf_output_utp_v3_0_c.administrative_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.administrative_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.administrative_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.administrative_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.administrative_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional As Of Trade Message
nasdaq_utdf_output_utp_v3_0_c.fractional_as_of_trade_message = {}

-- Size: Fractional As Of Trade Message
nasdaq_utdf_output_utp_v3_0_c.fractional_as_of_trade_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_2.size + 
  nasdaq_utdf_output_utp_v3_0_c.symbol_long.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_price_long.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_volume.size + 
  nasdaq_utdf_output_utp_v3_0_c.sale_condition.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_through_exempt_flag.size + 
  nasdaq_utdf_output_utp_v3_0_c.sellers_sale_days.size + 
  nasdaq_utdf_output_utp_v3_0_c.as_of_action.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_of_trade.size

-- Display: Fractional As Of Trade Message
nasdaq_utdf_output_utp_v3_0_c.fractional_as_of_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional As Of Trade Message
nasdaq_utdf_output_utp_v3_0_c.fractional_as_of_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Timestamp 2: long
  index, timestamp_2 = nasdaq_utdf_output_utp_v3_0_c.timestamp_2.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_utdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Trade Id: long
  index, trade_id = nasdaq_utdf_output_utp_v3_0_c.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Price Long: long
  index, trade_price_long = nasdaq_utdf_output_utp_v3_0_c.trade_price_long.dissect(buffer, index, packet, parent)

  -- Trade Volume: long
  index, trade_volume = nasdaq_utdf_output_utp_v3_0_c.trade_volume.dissect(buffer, index, packet, parent)

  -- Sale Condition: byte[]
  index, sale_condition = nasdaq_utdf_output_utp_v3_0_c.sale_condition.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Flag: byte
  index, trade_through_exempt_flag = nasdaq_utdf_output_utp_v3_0_c.trade_through_exempt_flag.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: short
  index, sellers_sale_days = nasdaq_utdf_output_utp_v3_0_c.sellers_sale_days.dissect(buffer, index, packet, parent)

  -- As Of Action: byte
  index, as_of_action = nasdaq_utdf_output_utp_v3_0_c.as_of_action.dissect(buffer, index, packet, parent)

  -- Timestamp Of Trade: long
  index, timestamp_of_trade = nasdaq_utdf_output_utp_v3_0_c.timestamp_of_trade.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional As Of Trade Message
nasdaq_utdf_output_utp_v3_0_c.fractional_as_of_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.fractional_as_of_trade_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.fractional_as_of_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.fractional_as_of_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.fractional_as_of_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Trade Correction Message
nasdaq_utdf_output_utp_v3_0_c.fractional_trade_correction_message = {}

-- Size: Fractional Trade Correction Message
nasdaq_utdf_output_utp_v3_0_c.fractional_trade_correction_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_2.size + 
  nasdaq_utdf_output_utp_v3_0_c.symbol_long.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_trade_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_trade_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_volume_long.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_sale_condition.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_trade_through_exempt_flag.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_sellers_sale_days.size + 
  nasdaq_utdf_output_utp_v3_0_c.corrected_trade_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.corrected_trade_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.corrected_volume_long.size + 
  nasdaq_utdf_output_utp_v3_0_c.corrected_sale_condition.size + 
  nasdaq_utdf_output_utp_v3_0_c.corrected_trade_through_exempt_flag.size + 
  nasdaq_utdf_output_utp_v3_0_c.corrected_sellers_sale_days.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_high_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_low_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_volume.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_participant_high_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_participant_low_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_participant_last_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_participant_volume.size

-- Display: Fractional Trade Correction Message
nasdaq_utdf_output_utp_v3_0_c.fractional_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Trade Correction Message
nasdaq_utdf_output_utp_v3_0_c.fractional_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Timestamp 2: long
  index, timestamp_2 = nasdaq_utdf_output_utp_v3_0_c.timestamp_2.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_utdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Original Trade Id: long
  index, original_trade_id = nasdaq_utdf_output_utp_v3_0_c.original_trade_id.dissect(buffer, index, packet, parent)

  -- Original Trade Price: long
  index, original_trade_price = nasdaq_utdf_output_utp_v3_0_c.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Volume Long: long
  index, original_volume_long = nasdaq_utdf_output_utp_v3_0_c.original_volume_long.dissect(buffer, index, packet, parent)

  -- Original Sale Condition: byte[]
  index, original_sale_condition = nasdaq_utdf_output_utp_v3_0_c.original_sale_condition.dissect(buffer, index, packet, parent)

  -- Original Trade Through Exempt Flag: byte
  index, original_trade_through_exempt_flag = nasdaq_utdf_output_utp_v3_0_c.original_trade_through_exempt_flag.dissect(buffer, index, packet, parent)

  -- Original Sellers Sale Days: short
  index, original_sellers_sale_days = nasdaq_utdf_output_utp_v3_0_c.original_sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Corrected Trade Id: long
  index, corrected_trade_id = nasdaq_utdf_output_utp_v3_0_c.corrected_trade_id.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: long
  index, corrected_trade_price = nasdaq_utdf_output_utp_v3_0_c.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Volume Long: long
  index, corrected_volume_long = nasdaq_utdf_output_utp_v3_0_c.corrected_volume_long.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition: byte[]
  index, corrected_sale_condition = nasdaq_utdf_output_utp_v3_0_c.corrected_sale_condition.dissect(buffer, index, packet, parent)

  -- Corrected Trade Through Exempt Flag: byte
  index, corrected_trade_through_exempt_flag = nasdaq_utdf_output_utp_v3_0_c.corrected_trade_through_exempt_flag.dissect(buffer, index, packet, parent)

  -- Corrected Sellers Sale Days: short
  index, corrected_sellers_sale_days = nasdaq_utdf_output_utp_v3_0_c.corrected_sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Consolidated High Price: long
  index, consolidated_high_price = nasdaq_utdf_output_utp_v3_0_c.consolidated_high_price.dissect(buffer, index, packet, parent)

  -- Consolidated Low Price: long
  index, consolidated_low_price = nasdaq_utdf_output_utp_v3_0_c.consolidated_low_price.dissect(buffer, index, packet, parent)

  -- Consolidated Last Price: long
  index, consolidated_last_price = nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price.dissect(buffer, index, packet, parent)

  -- Consolidated Volume: long
  index, consolidated_volume = nasdaq_utdf_output_utp_v3_0_c.consolidated_volume.dissect(buffer, index, packet, parent)

  -- Consolidated Price Change Indicator: byte
  index, consolidated_price_change_indicator = nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator.dissect(buffer, index, packet, parent)

  -- Consolidated Last Price Originator: byte
  index, consolidated_last_price_originator = nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price_originator.dissect(buffer, index, packet, parent)

  -- Market Participant High Price: long
  index, market_participant_high_price = nasdaq_utdf_output_utp_v3_0_c.market_participant_high_price.dissect(buffer, index, packet, parent)

  -- Market Participant Low Price: long
  index, market_participant_low_price = nasdaq_utdf_output_utp_v3_0_c.market_participant_low_price.dissect(buffer, index, packet, parent)

  -- Market Participant Last Price: long
  index, market_participant_last_price = nasdaq_utdf_output_utp_v3_0_c.market_participant_last_price.dissect(buffer, index, packet, parent)

  -- Market Participant Volume: long
  index, market_participant_volume = nasdaq_utdf_output_utp_v3_0_c.market_participant_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Trade Correction Message
nasdaq_utdf_output_utp_v3_0_c.fractional_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.fractional_trade_correction_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.fractional_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.fractional_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.fractional_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Trade Cancel Error Message
nasdaq_utdf_output_utp_v3_0_c.fractional_trade_cancel_error_message = {}

-- Size: Fractional Trade Cancel Error Message
nasdaq_utdf_output_utp_v3_0_c.fractional_trade_cancel_error_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_2.size + 
  nasdaq_utdf_output_utp_v3_0_c.symbol_long.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_cancellation_type.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_trade_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_trade_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_volume_long.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_sale_condition.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_trade_through_exempt_flag.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_sellers_sale_days.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_high_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_low_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_volume.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_participant_high_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_participant_low_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_participant_last_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_participant_volume.size

-- Display: Fractional Trade Cancel Error Message
nasdaq_utdf_output_utp_v3_0_c.fractional_trade_cancel_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Trade Cancel Error Message
nasdaq_utdf_output_utp_v3_0_c.fractional_trade_cancel_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Timestamp 2: long
  index, timestamp_2 = nasdaq_utdf_output_utp_v3_0_c.timestamp_2.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_utdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Trade Cancellation Type: byte
  index, trade_cancellation_type = nasdaq_utdf_output_utp_v3_0_c.trade_cancellation_type.dissect(buffer, index, packet, parent)

  -- Original Trade Id: long
  index, original_trade_id = nasdaq_utdf_output_utp_v3_0_c.original_trade_id.dissect(buffer, index, packet, parent)

  -- Original Trade Price: long
  index, original_trade_price = nasdaq_utdf_output_utp_v3_0_c.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Volume Long: long
  index, original_volume_long = nasdaq_utdf_output_utp_v3_0_c.original_volume_long.dissect(buffer, index, packet, parent)

  -- Original Sale Condition: byte[]
  index, original_sale_condition = nasdaq_utdf_output_utp_v3_0_c.original_sale_condition.dissect(buffer, index, packet, parent)

  -- Original Trade Through Exempt Flag: byte
  index, original_trade_through_exempt_flag = nasdaq_utdf_output_utp_v3_0_c.original_trade_through_exempt_flag.dissect(buffer, index, packet, parent)

  -- Original Sellers Sale Days: short
  index, original_sellers_sale_days = nasdaq_utdf_output_utp_v3_0_c.original_sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Consolidated High Price: long
  index, consolidated_high_price = nasdaq_utdf_output_utp_v3_0_c.consolidated_high_price.dissect(buffer, index, packet, parent)

  -- Consolidated Low Price: long
  index, consolidated_low_price = nasdaq_utdf_output_utp_v3_0_c.consolidated_low_price.dissect(buffer, index, packet, parent)

  -- Consolidated Last Price: long
  index, consolidated_last_price = nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price.dissect(buffer, index, packet, parent)

  -- Consolidated Volume: long
  index, consolidated_volume = nasdaq_utdf_output_utp_v3_0_c.consolidated_volume.dissect(buffer, index, packet, parent)

  -- Consolidated Price Change Indicator: byte
  index, consolidated_price_change_indicator = nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator.dissect(buffer, index, packet, parent)

  -- Consolidated Last Price Originator: byte
  index, consolidated_last_price_originator = nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price_originator.dissect(buffer, index, packet, parent)

  -- Market Participant High Price: long
  index, market_participant_high_price = nasdaq_utdf_output_utp_v3_0_c.market_participant_high_price.dissect(buffer, index, packet, parent)

  -- Market Participant Low Price: long
  index, market_participant_low_price = nasdaq_utdf_output_utp_v3_0_c.market_participant_low_price.dissect(buffer, index, packet, parent)

  -- Market Participant Last Price: long
  index, market_participant_last_price = nasdaq_utdf_output_utp_v3_0_c.market_participant_last_price.dissect(buffer, index, packet, parent)

  -- Market Participant Volume: long
  index, market_participant_volume = nasdaq_utdf_output_utp_v3_0_c.market_participant_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Trade Cancel Error Message
nasdaq_utdf_output_utp_v3_0_c.fractional_trade_cancel_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.fractional_trade_cancel_error_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.fractional_trade_cancel_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.fractional_trade_cancel_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.fractional_trade_cancel_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Trade Report Message Long Form Message
nasdaq_utdf_output_utp_v3_0_c.fractional_trade_report_message_long_form_message = {}

-- Size: Fractional Trade Report Message Long Form Message
nasdaq_utdf_output_utp_v3_0_c.fractional_trade_report_message_long_form_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_2.size + 
  nasdaq_utdf_output_utp_v3_0_c.symbol_long.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_price_long.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_volume.size + 
  nasdaq_utdf_output_utp_v3_0_c.sale_condition.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_through_exempt_flag.size + 
  nasdaq_utdf_output_utp_v3_0_c.sellers_sale_days.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_price_change_indicator.size

-- Display: Fractional Trade Report Message Long Form Message
nasdaq_utdf_output_utp_v3_0_c.fractional_trade_report_message_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Trade Report Message Long Form Message
nasdaq_utdf_output_utp_v3_0_c.fractional_trade_report_message_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Timestamp 2: long
  index, timestamp_2 = nasdaq_utdf_output_utp_v3_0_c.timestamp_2.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_utdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Trade Id: long
  index, trade_id = nasdaq_utdf_output_utp_v3_0_c.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Price Long: long
  index, trade_price_long = nasdaq_utdf_output_utp_v3_0_c.trade_price_long.dissect(buffer, index, packet, parent)

  -- Trade Volume: long
  index, trade_volume = nasdaq_utdf_output_utp_v3_0_c.trade_volume.dissect(buffer, index, packet, parent)

  -- Sale Condition: byte[]
  index, sale_condition = nasdaq_utdf_output_utp_v3_0_c.sale_condition.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Flag: byte
  index, trade_through_exempt_flag = nasdaq_utdf_output_utp_v3_0_c.trade_through_exempt_flag.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: short
  index, sellers_sale_days = nasdaq_utdf_output_utp_v3_0_c.sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Consolidated Price Change Indicator: byte
  index, consolidated_price_change_indicator = nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator.dissect(buffer, index, packet, parent)

  -- Participant Price Change Indicator: byte
  index, participant_price_change_indicator = nasdaq_utdf_output_utp_v3_0_c.participant_price_change_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Trade Report Message Long Form Message
nasdaq_utdf_output_utp_v3_0_c.fractional_trade_report_message_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.fractional_trade_report_message_long_form_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.fractional_trade_report_message_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.fractional_trade_report_message_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.fractional_trade_report_message_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Trade Report Message Short Form Message
nasdaq_utdf_output_utp_v3_0_c.fractional_trade_report_message_short_form_message = {}

-- Size: Fractional Trade Report Message Short Form Message
nasdaq_utdf_output_utp_v3_0_c.fractional_trade_report_message_short_form_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_2.size + 
  nasdaq_utdf_output_utp_v3_0_c.symbol_short.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_price_short.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_volume.size + 
  nasdaq_utdf_output_utp_v3_0_c.sale_condition.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_through_exempt_flag.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_price_change_indicator.size

-- Display: Fractional Trade Report Message Short Form Message
nasdaq_utdf_output_utp_v3_0_c.fractional_trade_report_message_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Trade Report Message Short Form Message
nasdaq_utdf_output_utp_v3_0_c.fractional_trade_report_message_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Timestamp 2: long
  index, timestamp_2 = nasdaq_utdf_output_utp_v3_0_c.timestamp_2.dissect(buffer, index, packet, parent)

  -- Symbol Short: byte[]
  index, symbol_short = nasdaq_utdf_output_utp_v3_0_c.symbol_short.dissect(buffer, index, packet, parent)

  -- Trade Id: long
  index, trade_id = nasdaq_utdf_output_utp_v3_0_c.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Price Short: short
  index, trade_price_short = nasdaq_utdf_output_utp_v3_0_c.trade_price_short.dissect(buffer, index, packet, parent)

  -- Trade Volume: long
  index, trade_volume = nasdaq_utdf_output_utp_v3_0_c.trade_volume.dissect(buffer, index, packet, parent)

  -- Sale Condition: byte[]
  index, sale_condition = nasdaq_utdf_output_utp_v3_0_c.sale_condition.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Flag: byte
  index, trade_through_exempt_flag = nasdaq_utdf_output_utp_v3_0_c.trade_through_exempt_flag.dissect(buffer, index, packet, parent)

  -- Consolidated Price Change Indicator: byte
  index, consolidated_price_change_indicator = nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator.dissect(buffer, index, packet, parent)

  -- Participant Price Change Indicator: byte
  index, participant_price_change_indicator = nasdaq_utdf_output_utp_v3_0_c.participant_price_change_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Trade Report Message Short Form Message
nasdaq_utdf_output_utp_v3_0_c.fractional_trade_report_message_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.fractional_trade_report_message_short_form_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.fractional_trade_report_message_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.fractional_trade_report_message_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.fractional_trade_report_message_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Prior Day As Of Trade Message
nasdaq_utdf_output_utp_v3_0_c.prior_day_as_of_trade_message = {}

-- Size: Prior Day As Of Trade Message
nasdaq_utdf_output_utp_v3_0_c.prior_day_as_of_trade_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_2.size + 
  nasdaq_utdf_output_utp_v3_0_c.symbol_long.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_price_long.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_volume_long.size + 
  nasdaq_utdf_output_utp_v3_0_c.sale_condition.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_through_exempt_flag.size + 
  nasdaq_utdf_output_utp_v3_0_c.sellers_sale_days.size + 
  nasdaq_utdf_output_utp_v3_0_c.as_of_action.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_of_trade.size

-- Display: Prior Day As Of Trade Message
nasdaq_utdf_output_utp_v3_0_c.prior_day_as_of_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Prior Day As Of Trade Message
nasdaq_utdf_output_utp_v3_0_c.prior_day_as_of_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Timestamp 2: long
  index, timestamp_2 = nasdaq_utdf_output_utp_v3_0_c.timestamp_2.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_utdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Trade Id: long
  index, trade_id = nasdaq_utdf_output_utp_v3_0_c.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Price Long: long
  index, trade_price_long = nasdaq_utdf_output_utp_v3_0_c.trade_price_long.dissect(buffer, index, packet, parent)

  -- Trade Volume Long: int
  index, trade_volume_long = nasdaq_utdf_output_utp_v3_0_c.trade_volume_long.dissect(buffer, index, packet, parent)

  -- Sale Condition: byte[]
  index, sale_condition = nasdaq_utdf_output_utp_v3_0_c.sale_condition.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Flag: byte
  index, trade_through_exempt_flag = nasdaq_utdf_output_utp_v3_0_c.trade_through_exempt_flag.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: short
  index, sellers_sale_days = nasdaq_utdf_output_utp_v3_0_c.sellers_sale_days.dissect(buffer, index, packet, parent)

  -- As Of Action: byte
  index, as_of_action = nasdaq_utdf_output_utp_v3_0_c.as_of_action.dissect(buffer, index, packet, parent)

  -- Timestamp Of Trade: long
  index, timestamp_of_trade = nasdaq_utdf_output_utp_v3_0_c.timestamp_of_trade.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Prior Day As Of Trade Message
nasdaq_utdf_output_utp_v3_0_c.prior_day_as_of_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.prior_day_as_of_trade_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.prior_day_as_of_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.prior_day_as_of_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.prior_day_as_of_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction Message
nasdaq_utdf_output_utp_v3_0_c.trade_correction_message = {}

-- Size: Trade Correction Message
nasdaq_utdf_output_utp_v3_0_c.trade_correction_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_2.size + 
  nasdaq_utdf_output_utp_v3_0_c.symbol_long.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_trade_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_trade_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_volume_short.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_sale_condition.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_trade_through_exempt_flag.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_sellers_sale_days.size + 
  nasdaq_utdf_output_utp_v3_0_c.corrected_trade_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.corrected_trade_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.corrected_volume_short.size + 
  nasdaq_utdf_output_utp_v3_0_c.corrected_sale_condition.size + 
  nasdaq_utdf_output_utp_v3_0_c.corrected_trade_through_exempt_flag.size + 
  nasdaq_utdf_output_utp_v3_0_c.corrected_sellers_sale_days.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_high_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_low_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_volume.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_participant_high_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_participant_low_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_participant_last_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_participant_volume.size

-- Display: Trade Correction Message
nasdaq_utdf_output_utp_v3_0_c.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
nasdaq_utdf_output_utp_v3_0_c.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Timestamp 2: long
  index, timestamp_2 = nasdaq_utdf_output_utp_v3_0_c.timestamp_2.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_utdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Original Trade Id: long
  index, original_trade_id = nasdaq_utdf_output_utp_v3_0_c.original_trade_id.dissect(buffer, index, packet, parent)

  -- Original Trade Price: long
  index, original_trade_price = nasdaq_utdf_output_utp_v3_0_c.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Volume Short: int
  index, original_volume_short = nasdaq_utdf_output_utp_v3_0_c.original_volume_short.dissect(buffer, index, packet, parent)

  -- Original Sale Condition: byte[]
  index, original_sale_condition = nasdaq_utdf_output_utp_v3_0_c.original_sale_condition.dissect(buffer, index, packet, parent)

  -- Original Trade Through Exempt Flag: byte
  index, original_trade_through_exempt_flag = nasdaq_utdf_output_utp_v3_0_c.original_trade_through_exempt_flag.dissect(buffer, index, packet, parent)

  -- Original Sellers Sale Days: short
  index, original_sellers_sale_days = nasdaq_utdf_output_utp_v3_0_c.original_sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Corrected Trade Id: long
  index, corrected_trade_id = nasdaq_utdf_output_utp_v3_0_c.corrected_trade_id.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: long
  index, corrected_trade_price = nasdaq_utdf_output_utp_v3_0_c.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Volume Short: int
  index, corrected_volume_short = nasdaq_utdf_output_utp_v3_0_c.corrected_volume_short.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition: byte[]
  index, corrected_sale_condition = nasdaq_utdf_output_utp_v3_0_c.corrected_sale_condition.dissect(buffer, index, packet, parent)

  -- Corrected Trade Through Exempt Flag: byte
  index, corrected_trade_through_exempt_flag = nasdaq_utdf_output_utp_v3_0_c.corrected_trade_through_exempt_flag.dissect(buffer, index, packet, parent)

  -- Corrected Sellers Sale Days: short
  index, corrected_sellers_sale_days = nasdaq_utdf_output_utp_v3_0_c.corrected_sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Consolidated High Price: long
  index, consolidated_high_price = nasdaq_utdf_output_utp_v3_0_c.consolidated_high_price.dissect(buffer, index, packet, parent)

  -- Consolidated Low Price: long
  index, consolidated_low_price = nasdaq_utdf_output_utp_v3_0_c.consolidated_low_price.dissect(buffer, index, packet, parent)

  -- Consolidated Last Price: long
  index, consolidated_last_price = nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price.dissect(buffer, index, packet, parent)

  -- Consolidated Volume: long
  index, consolidated_volume = nasdaq_utdf_output_utp_v3_0_c.consolidated_volume.dissect(buffer, index, packet, parent)

  -- Consolidated Price Change Indicator: byte
  index, consolidated_price_change_indicator = nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator.dissect(buffer, index, packet, parent)

  -- Consolidated Last Price Originator: byte
  index, consolidated_last_price_originator = nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price_originator.dissect(buffer, index, packet, parent)

  -- Market Participant High Price: long
  index, market_participant_high_price = nasdaq_utdf_output_utp_v3_0_c.market_participant_high_price.dissect(buffer, index, packet, parent)

  -- Market Participant Low Price: long
  index, market_participant_low_price = nasdaq_utdf_output_utp_v3_0_c.market_participant_low_price.dissect(buffer, index, packet, parent)

  -- Market Participant Last Price: long
  index, market_participant_last_price = nasdaq_utdf_output_utp_v3_0_c.market_participant_last_price.dissect(buffer, index, packet, parent)

  -- Market Participant Volume: long
  index, market_participant_volume = nasdaq_utdf_output_utp_v3_0_c.market_participant_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
nasdaq_utdf_output_utp_v3_0_c.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_correction_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Error Message
nasdaq_utdf_output_utp_v3_0_c.trade_cancel_error_message = {}

-- Size: Trade Cancel Error Message
nasdaq_utdf_output_utp_v3_0_c.trade_cancel_error_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_2.size + 
  nasdaq_utdf_output_utp_v3_0_c.symbol_long.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_cancellation_type.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_trade_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_trade_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_volume_short.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_sale_condition.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_trade_through_exempt_flag.size + 
  nasdaq_utdf_output_utp_v3_0_c.original_sellers_sale_days.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_high_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_low_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_volume.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_participant_high_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_participant_low_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_participant_last_price.size + 
  nasdaq_utdf_output_utp_v3_0_c.market_participant_volume.size

-- Display: Trade Cancel Error Message
nasdaq_utdf_output_utp_v3_0_c.trade_cancel_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Error Message
nasdaq_utdf_output_utp_v3_0_c.trade_cancel_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Timestamp 2: long
  index, timestamp_2 = nasdaq_utdf_output_utp_v3_0_c.timestamp_2.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_utdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Trade Cancellation Type: byte
  index, trade_cancellation_type = nasdaq_utdf_output_utp_v3_0_c.trade_cancellation_type.dissect(buffer, index, packet, parent)

  -- Original Trade Id: long
  index, original_trade_id = nasdaq_utdf_output_utp_v3_0_c.original_trade_id.dissect(buffer, index, packet, parent)

  -- Original Trade Price: long
  index, original_trade_price = nasdaq_utdf_output_utp_v3_0_c.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Volume Short: int
  index, original_volume_short = nasdaq_utdf_output_utp_v3_0_c.original_volume_short.dissect(buffer, index, packet, parent)

  -- Original Sale Condition: byte[]
  index, original_sale_condition = nasdaq_utdf_output_utp_v3_0_c.original_sale_condition.dissect(buffer, index, packet, parent)

  -- Original Trade Through Exempt Flag: byte
  index, original_trade_through_exempt_flag = nasdaq_utdf_output_utp_v3_0_c.original_trade_through_exempt_flag.dissect(buffer, index, packet, parent)

  -- Original Sellers Sale Days: short
  index, original_sellers_sale_days = nasdaq_utdf_output_utp_v3_0_c.original_sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Consolidated High Price: long
  index, consolidated_high_price = nasdaq_utdf_output_utp_v3_0_c.consolidated_high_price.dissect(buffer, index, packet, parent)

  -- Consolidated Low Price: long
  index, consolidated_low_price = nasdaq_utdf_output_utp_v3_0_c.consolidated_low_price.dissect(buffer, index, packet, parent)

  -- Consolidated Last Price: long
  index, consolidated_last_price = nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price.dissect(buffer, index, packet, parent)

  -- Consolidated Volume: long
  index, consolidated_volume = nasdaq_utdf_output_utp_v3_0_c.consolidated_volume.dissect(buffer, index, packet, parent)

  -- Consolidated Price Change Indicator: byte
  index, consolidated_price_change_indicator = nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator.dissect(buffer, index, packet, parent)

  -- Consolidated Last Price Originator: byte
  index, consolidated_last_price_originator = nasdaq_utdf_output_utp_v3_0_c.consolidated_last_price_originator.dissect(buffer, index, packet, parent)

  -- Market Participant High Price: long
  index, market_participant_high_price = nasdaq_utdf_output_utp_v3_0_c.market_participant_high_price.dissect(buffer, index, packet, parent)

  -- Market Participant Low Price: long
  index, market_participant_low_price = nasdaq_utdf_output_utp_v3_0_c.market_participant_low_price.dissect(buffer, index, packet, parent)

  -- Market Participant Last Price: long
  index, market_participant_last_price = nasdaq_utdf_output_utp_v3_0_c.market_participant_last_price.dissect(buffer, index, packet, parent)

  -- Market Participant Volume: long
  index, market_participant_volume = nasdaq_utdf_output_utp_v3_0_c.market_participant_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Error Message
nasdaq_utdf_output_utp_v3_0_c.trade_cancel_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_cancel_error_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.trade_cancel_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.trade_cancel_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.trade_cancel_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Message Long Form Message
nasdaq_utdf_output_utp_v3_0_c.trade_report_message_long_form_message = {}

-- Size: Trade Report Message Long Form Message
nasdaq_utdf_output_utp_v3_0_c.trade_report_message_long_form_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_2.size + 
  nasdaq_utdf_output_utp_v3_0_c.symbol_long.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_price_long.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_volume_long.size + 
  nasdaq_utdf_output_utp_v3_0_c.sale_condition.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_through_exempt_flag.size + 
  nasdaq_utdf_output_utp_v3_0_c.sellers_sale_days.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_price_change_indicator.size

-- Display: Trade Report Message Long Form Message
nasdaq_utdf_output_utp_v3_0_c.trade_report_message_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message Long Form Message
nasdaq_utdf_output_utp_v3_0_c.trade_report_message_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Timestamp 2: long
  index, timestamp_2 = nasdaq_utdf_output_utp_v3_0_c.timestamp_2.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_utdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Trade Id: long
  index, trade_id = nasdaq_utdf_output_utp_v3_0_c.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Price Long: long
  index, trade_price_long = nasdaq_utdf_output_utp_v3_0_c.trade_price_long.dissect(buffer, index, packet, parent)

  -- Trade Volume Long: int
  index, trade_volume_long = nasdaq_utdf_output_utp_v3_0_c.trade_volume_long.dissect(buffer, index, packet, parent)

  -- Sale Condition: byte[]
  index, sale_condition = nasdaq_utdf_output_utp_v3_0_c.sale_condition.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Flag: byte
  index, trade_through_exempt_flag = nasdaq_utdf_output_utp_v3_0_c.trade_through_exempt_flag.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: short
  index, sellers_sale_days = nasdaq_utdf_output_utp_v3_0_c.sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Consolidated Price Change Indicator: byte
  index, consolidated_price_change_indicator = nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator.dissect(buffer, index, packet, parent)

  -- Participant Price Change Indicator: byte
  index, participant_price_change_indicator = nasdaq_utdf_output_utp_v3_0_c.participant_price_change_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message Long Form Message
nasdaq_utdf_output_utp_v3_0_c.trade_report_message_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_report_message_long_form_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.trade_report_message_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.trade_report_message_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.trade_report_message_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Message Short Form Message
nasdaq_utdf_output_utp_v3_0_c.trade_report_message_short_form_message = {}

-- Size: Trade Report Message Short Form Message
nasdaq_utdf_output_utp_v3_0_c.trade_report_message_short_form_message.size =
  nasdaq_utdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_utdf_output_utp_v3_0_c.timestamp_2.size + 
  nasdaq_utdf_output_utp_v3_0_c.symbol_short.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_id.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_price_short.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_volume_short.size + 
  nasdaq_utdf_output_utp_v3_0_c.sale_condition.size + 
  nasdaq_utdf_output_utp_v3_0_c.trade_through_exempt_flag.size + 
  nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator.size + 
  nasdaq_utdf_output_utp_v3_0_c.participant_price_change_indicator.size

-- Display: Trade Report Message Short Form Message
nasdaq_utdf_output_utp_v3_0_c.trade_report_message_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message Short Form Message
nasdaq_utdf_output_utp_v3_0_c.trade_report_message_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Timestamp 2: long
  index, timestamp_2 = nasdaq_utdf_output_utp_v3_0_c.timestamp_2.dissect(buffer, index, packet, parent)

  -- Symbol Short: byte[]
  index, symbol_short = nasdaq_utdf_output_utp_v3_0_c.symbol_short.dissect(buffer, index, packet, parent)

  -- Trade Id: long
  index, trade_id = nasdaq_utdf_output_utp_v3_0_c.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Price Short: short
  index, trade_price_short = nasdaq_utdf_output_utp_v3_0_c.trade_price_short.dissect(buffer, index, packet, parent)

  -- Trade Volume Short: short
  index, trade_volume_short = nasdaq_utdf_output_utp_v3_0_c.trade_volume_short.dissect(buffer, index, packet, parent)

  -- Sale Condition: byte[]
  index, sale_condition = nasdaq_utdf_output_utp_v3_0_c.sale_condition.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Flag: byte
  index, trade_through_exempt_flag = nasdaq_utdf_output_utp_v3_0_c.trade_through_exempt_flag.dissect(buffer, index, packet, parent)

  -- Consolidated Price Change Indicator: byte
  index, consolidated_price_change_indicator = nasdaq_utdf_output_utp_v3_0_c.consolidated_price_change_indicator.dissect(buffer, index, packet, parent)

  -- Participant Price Change Indicator: byte
  index, participant_price_change_indicator = nasdaq_utdf_output_utp_v3_0_c.participant_price_change_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message Short Form Message
nasdaq_utdf_output_utp_v3_0_c.trade_report_message_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_report_message_short_form_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.trade_report_message_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.trade_report_message_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.trade_report_message_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message Payload
nasdaq_utdf_output_utp_v3_0_c.trade_message_payload = {}

-- Dispatch: Trade Message Payload
nasdaq_utdf_output_utp_v3_0_c.trade_message_payload.dispatch = {
  ["A"] = nasdaq_utdf_output_utp_v3_0_c.trade_report_message_short_form_message.dissect,
  ["W"] = nasdaq_utdf_output_utp_v3_0_c.trade_report_message_long_form_message.dissect,
  ["Z"] = nasdaq_utdf_output_utp_v3_0_c.trade_cancel_error_message.dissect,
  ["Y"] = nasdaq_utdf_output_utp_v3_0_c.trade_correction_message.dissect,
  ["H"] = nasdaq_utdf_output_utp_v3_0_c.prior_day_as_of_trade_message.dissect,
  ["M"] = nasdaq_utdf_output_utp_v3_0_c.fractional_trade_report_message_short_form_message.dissect,
  ["N"] = nasdaq_utdf_output_utp_v3_0_c.fractional_trade_report_message_long_form_message.dissect,
  ["O"] = nasdaq_utdf_output_utp_v3_0_c.fractional_trade_cancel_error_message.dissect,
  ["P"] = nasdaq_utdf_output_utp_v3_0_c.fractional_trade_correction_message.dissect,
  ["Q"] = nasdaq_utdf_output_utp_v3_0_c.fractional_as_of_trade_message.dissect,
}

-- Dissect: Trade Message Payload
nasdaq_utdf_output_utp_v3_0_c.trade_message_payload.dissect = function(buffer, offset, packet, parent, trade_message_type)
  local dissect = nasdaq_utdf_output_utp_v3_0_c.trade_message_payload.dispatch[trade_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Trade Message
nasdaq_utdf_output_utp_v3_0_c.trade_message = {}

-- Calculate size of: Trade Message
nasdaq_utdf_output_utp_v3_0_c.trade_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utdf_output_utp_v3_0_c.trade_message_type.size

  -- Calculate runtime size of Trade Message Payload field
  local trade_message_payload_offset = offset + index
  local trade_message_payload_type = buffer(trade_message_payload_offset - 1, 1):string()
  index = index + nasdaq_utdf_output_utp_v3_0_c.trade_message_payload.size(buffer, trade_message_payload_offset, trade_message_payload_type)

  return index
end

-- Display: Trade Message
nasdaq_utdf_output_utp_v3_0_c.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
nasdaq_utdf_output_utp_v3_0_c.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Message Type: 1 Byte Ascii String
  index, trade_message_type = nasdaq_utdf_output_utp_v3_0_c.trade_message_type.dissect(buffer, index, packet, parent)

  -- Trade Message Payload: Runtime Type with 10 branches
  index = nasdaq_utdf_output_utp_v3_0_c.trade_message_payload.dissect(buffer, index, packet, parent, trade_message_type)

  return index
end

-- Dissect: Trade Message
nasdaq_utdf_output_utp_v3_0_c.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.trade_message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Category Payload
nasdaq_utdf_output_utp_v3_0_c.category_payload = {}

-- Dispatch: Category Payload
nasdaq_utdf_output_utp_v3_0_c.category_payload.dispatch = {
  ["T"] = nasdaq_utdf_output_utp_v3_0_c.trade_message.dissect,
  ["A"] = nasdaq_utdf_output_utp_v3_0_c.administrative_message.dissect,
  ["V"] = nasdaq_utdf_output_utp_v3_0_c.total_consolidated_volume_message.dissect,
  ["C"] = nasdaq_utdf_output_utp_v3_0_c.control_message.dissect,
}

-- Dissect: Category Payload
nasdaq_utdf_output_utp_v3_0_c.category_payload.dissect = function(buffer, offset, packet, parent, message_category)
  local dissect = nasdaq_utdf_output_utp_v3_0_c.category_payload.dispatch[message_category]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_utdf_output_utp_v3_0_c.message_header = {}

-- Size: Message Header
nasdaq_utdf_output_utp_v3_0_c.message_header.size =
  nasdaq_utdf_output_utp_v3_0_c.message_length.size + 
  nasdaq_utdf_output_utp_v3_0_c.version.size + 
  nasdaq_utdf_output_utp_v3_0_c.message_category.size

-- Display: Message Header
nasdaq_utdf_output_utp_v3_0_c.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_utdf_output_utp_v3_0_c.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_utdf_output_utp_v3_0_c.message_length.dissect(buffer, index, packet, parent)

  -- Version: 1 Byte Ascii String
  index, version = nasdaq_utdf_output_utp_v3_0_c.version.dissect(buffer, index, packet, parent)

  -- Message Category: 1 Byte Ascii String
  index, message_category = nasdaq_utdf_output_utp_v3_0_c.message_category.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_utdf_output_utp_v3_0_c.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.message_header, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_utdf_output_utp_v3_0_c.message = {}

-- Calculate size of: Message
nasdaq_utdf_output_utp_v3_0_c.message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utdf_output_utp_v3_0_c.message_header.size

  -- Parse runtime size of: Category Payload
  index = index + buffer(offset + index - 4, 2):uint()

  return index
end

-- Display: Message
nasdaq_utdf_output_utp_v3_0_c.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_utdf_output_utp_v3_0_c.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_utdf_output_utp_v3_0_c.packet_sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.message_sequence_number, UInt64.new(nasdaq_utdf_output_utp_v3_0_c.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = nasdaq_utdf_output_utp_v3_0_c.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 1, 1):string()

  -- Category Payload: Runtime Type with 4 branches
  index = nasdaq_utdf_output_utp_v3_0_c.category_payload.dissect(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
nasdaq_utdf_output_utp_v3_0_c.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.message, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- End Of Session
nasdaq_utdf_output_utp_v3_0_c.end_of_session = {}

-- Display: End Of Session
nasdaq_utdf_output_utp_v3_0_c.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_utdf_output_utp_v3_0_c.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_utdf_output_utp_v3_0_c.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_utdf_output_utp_v3_0_c.heartbeat = {}

-- Display: Heartbeat
nasdaq_utdf_output_utp_v3_0_c.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_utdf_output_utp_v3_0_c.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_utdf_output_utp_v3_0_c.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_utdf_output_utp_v3_0_c.messages = {}

-- Dispatch: Messages
nasdaq_utdf_output_utp_v3_0_c.messages.dispatch = {
  [0] = nasdaq_utdf_output_utp_v3_0_c.heartbeat.dissect,
  [65535] = nasdaq_utdf_output_utp_v3_0_c.end_of_session.dissect,
}

-- Dissect: Messages
nasdaq_utdf_output_utp_v3_0_c.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = nasdaq_utdf_output_utp_v3_0_c.messages.dispatch[message_count]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Message: Struct of 2 fields
    offset = nasdaq_utdf_output_utp_v3_0_c.message.dissect(buffer, offset, packet, parent, message_index)
  end
end

-- Packet Header
nasdaq_utdf_output_utp_v3_0_c.packet_header = {}

-- Size: Packet Header
nasdaq_utdf_output_utp_v3_0_c.packet_header.size =
  nasdaq_utdf_output_utp_v3_0_c.session.size + 
  nasdaq_utdf_output_utp_v3_0_c.sequence_number.size + 
  nasdaq_utdf_output_utp_v3_0_c.message_count.size

-- Display: Packet Header
nasdaq_utdf_output_utp_v3_0_c.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_utdf_output_utp_v3_0_c.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_utdf_output_utp_v3_0_c.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_utdf_output_utp_v3_0_c.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_utdf_output_utp_v3_0_c.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_utdf_output_utp_v3_0_c.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_utdf_output_utp_v3_0_c.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v3_0_c.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v3_0_c.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v3_0_c.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_utdf_output_utp_v3_0_c.packet = {}

-- Verify required size of Udp packet
nasdaq_utdf_output_utp_v3_0_c.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_utdf_output_utp_v3_0_c.packet_header.size
end

-- Dissect Packet
nasdaq_utdf_output_utp_v3_0_c.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_utdf_output_utp_v3_0_c.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_utdf_output_utp_v3_0_c.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_utdf_output_utp_v3_0_c.init()
end

-- Dissector for Nasdaq Utdf Output Utp 3.0.c
function omi_nasdaq_utdf_output_utp_v3_0_c.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_utdf_output_utp_v3_0_c.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_utdf_output_utp_v3_0_c, buffer(), omi_nasdaq_utdf_output_utp_v3_0_c.description, "("..buffer:len().." Bytes)")
  return nasdaq_utdf_output_utp_v3_0_c.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq Utdf Output Utp 3.0.c (Udp)
local function omi_nasdaq_utdf_output_utp_v3_0_c_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_utdf_output_utp_v3_0_c.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_utdf_output_utp_v3_0_c
  omi_nasdaq_utdf_output_utp_v3_0_c.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq Utdf Output Utp 3.0.c
omi_nasdaq_utdf_output_utp_v3_0_c:register_heuristic("udp", omi_nasdaq_utdf_output_utp_v3_0_c_udp_heuristic)

-- Register Nasdaq Utdf Output Utp 3.0.c for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_utdf_output_utp_v3_0_c)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 3.0.c
--   Date: Sunday, February 1, 2026
--   Specification: UTP Data Feed Services (3.0c).pdf
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
