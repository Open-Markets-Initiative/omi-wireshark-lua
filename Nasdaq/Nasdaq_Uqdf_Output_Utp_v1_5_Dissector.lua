-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Uqdf Output Utp 1.5 Protocol
local omi_nasdaq_uqdf_output_utp_v1_5 = Proto("Omi.Nasdaq.Uqdf.Output.Utp.v1.5", "Nasdaq Uqdf Output Utp 1.5")

-- Protocol table
local nasdaq_uqdf_output_utp_v1_5 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq Uqdf Output Utp 1.5 Fields
omi_nasdaq_uqdf_output_utp_v1_5.fields.action_timestamp = ProtoField.new("Action Timestamp", "nasdaq.uqdf.output.utp.v1.5.actiontimestamp", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.administrative_message = ProtoField.new("Administrative Message", "nasdaq.uqdf.output.utp.v1.5.administrativemessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "nasdaq.uqdf.output.utp.v1.5.administrativemessagetype", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.ask_adf_mpid = ProtoField.new("Ask Adf Mpid", "nasdaq.uqdf.output.utp.v1.5.askadfmpid", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.uqdf.output.utp.v1.5.askprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.ask_price_short = ProtoField.new("Ask Price Short", "nasdaq.uqdf.output.utp.v1.5.askpriceshort", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.ask_size = ProtoField.new("Ask Size", "nasdaq.uqdf.output.utp.v1.5.asksize", ftypes.UINT32)
omi_nasdaq_uqdf_output_utp_v1_5.fields.ask_size_short = ProtoField.new("Ask Size Short", "nasdaq.uqdf.output.utp.v1.5.asksizeshort", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v1_5.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.uqdf.output.utp.v1.5.authenticity", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.best_ask_market_center = ProtoField.new("Best Ask Market Center", "nasdaq.uqdf.output.utp.v1.5.bestaskmarketcenter", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.best_ask_price = ProtoField.new("Best Ask Price", "nasdaq.uqdf.output.utp.v1.5.bestaskprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.best_ask_size = ProtoField.new("Best Ask Size", "nasdaq.uqdf.output.utp.v1.5.bestasksize", ftypes.UINT32)
omi_nasdaq_uqdf_output_utp_v1_5.fields.best_bid_market_center = ProtoField.new("Best Bid Market Center", "nasdaq.uqdf.output.utp.v1.5.bestbidmarketcenter", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.best_bid_price = ProtoField.new("Best Bid Price", "nasdaq.uqdf.output.utp.v1.5.bestbidprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.best_bid_size = ProtoField.new("Best Bid Size", "nasdaq.uqdf.output.utp.v1.5.bestbidsize", ftypes.UINT32)
omi_nasdaq_uqdf_output_utp_v1_5.fields.bid_adf_mpid = ProtoField.new("Bid Adf Mpid", "nasdaq.uqdf.output.utp.v1.5.bidadfmpid", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.uqdf.output.utp.v1.5.bidprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.bid_price_short = ProtoField.new("Bid Price Short", "nasdaq.uqdf.output.utp.v1.5.bidpriceshort", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.bid_size = ProtoField.new("Bid Size", "nasdaq.uqdf.output.utp.v1.5.bidsize", ftypes.UINT32)
omi_nasdaq_uqdf_output_utp_v1_5.fields.bid_size_short = ProtoField.new("Bid Size Short", "nasdaq.uqdf.output.utp.v1.5.bidsizeshort", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v1_5.fields.collar_down_price = ProtoField.new("Collar Down Price", "nasdaq.uqdf.output.utp.v1.5.collardownprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.collar_extension_indicator = ProtoField.new("Collar Extension Indicator", "nasdaq.uqdf.output.utp.v1.5.collarextensionindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.collar_reference_price = ProtoField.new("Collar Reference Price", "nasdaq.uqdf.output.utp.v1.5.collarreferenceprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.collar_up_price = ProtoField.new("Collar Up Price", "nasdaq.uqdf.output.utp.v1.5.collarupprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.control_message = ProtoField.new("Control Message", "nasdaq.uqdf.output.utp.v1.5.controlmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.control_message_type = ProtoField.new("Control Message Type", "nasdaq.uqdf.output.utp.v1.5.controlmessagetype", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.count = ProtoField.new("Count", "nasdaq.uqdf.output.utp.v1.5.count", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v1_5.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.uqdf.output.utp.v1.5.financialstatusindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.finra_adf_mpid_appendage = ProtoField.new("Finra Adf Mpid Appendage", "nasdaq.uqdf.output.utp.v1.5.finraadfmpidappendage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.finra_adf_mpid_appendage_indicator = ProtoField.new("Finra Adf Mpid Appendage Indicator", "nasdaq.uqdf.output.utp.v1.5.finraadfmpidappendageindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.finra_market_participant = ProtoField.new("Finra Market Participant", "nasdaq.uqdf.output.utp.v1.5.finramarketparticipant", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.finra_timestamp = ProtoField.new("Finra Timestamp", "nasdaq.uqdf.output.utp.v1.5.finratimestamp", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.issue_name = ProtoField.new("Issue Name", "nasdaq.uqdf.output.utp.v1.5.issuename", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.issue_subtype = ProtoField.new("Issue Subtype", "nasdaq.uqdf.output.utp.v1.5.issuesubtype", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.issue_type = ProtoField.new("Issue Type", "nasdaq.uqdf.output.utp.v1.5.issuetype", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.limit_down_price = ProtoField.new("Limit Down Price", "nasdaq.uqdf.output.utp.v1.5.limitdownprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.limit_up_price = ProtoField.new("Limit Up Price", "nasdaq.uqdf.output.utp.v1.5.limitupprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.long_form_national_bbo_appendage = ProtoField.new("Long Form National Bbo Appendage", "nasdaq.uqdf.output.utp.v1.5.longformnationalbboappendage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.luld_bbo_indicator = ProtoField.new("Luld Bbo Indicator", "nasdaq.uqdf.output.utp.v1.5.luldbboindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.luld_national_bbo_indicator = ProtoField.new("Luld National Bbo Indicator", "nasdaq.uqdf.output.utp.v1.5.luldnationalbboindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.luld_price_band_indicator = ProtoField.new("Luld Price Band Indicator", "nasdaq.uqdf.output.utp.v1.5.luldpricebandindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.luld_timestamp = ProtoField.new("Luld Timestamp", "nasdaq.uqdf.output.utp.v1.5.luldtimestamp", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_ask_price = ProtoField.new("Market Center Ask Price", "nasdaq.uqdf.output.utp.v1.5.marketcenteraskprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_ask_size = ProtoField.new("Market Center Ask Size", "nasdaq.uqdf.output.utp.v1.5.marketcenterasksize", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_bid_price = ProtoField.new("Market Center Bid Price", "nasdaq.uqdf.output.utp.v1.5.marketcenterbidprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_bid_size = ProtoField.new("Market Center Bid Size", "nasdaq.uqdf.output.utp.v1.5.marketcenterbidsize", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_close_recap = ProtoField.new("Market Center Close Recap", "nasdaq.uqdf.output.utp.v1.5.marketcentercloserecap", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_identifier = ProtoField.new("Market Center Identifier", "nasdaq.uqdf.output.utp.v1.5.marketcenteridentifier", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_originator_id = ProtoField.new("Market Center Originator Id", "nasdaq.uqdf.output.utp.v1.5.marketcenteroriginatorid", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_tier = ProtoField.new("Market Tier", "nasdaq.uqdf.output.utp.v1.5.markettier", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.message_category = ProtoField.new("Message Category", "nasdaq.uqdf.output.utp.v1.5.messagecategory", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.message_info = ProtoField.new("Message Info", "nasdaq.uqdf.output.utp.v1.5.messageinfo", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.message_length = ProtoField.new("Message Length", "nasdaq.uqdf.output.utp.v1.5.messagelength", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v1_5.fields.mwcb_level_1 = ProtoField.new("Mwcb Level 1", "nasdaq.uqdf.output.utp.v1.5.mwcblevel1", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.mwcb_level_2 = ProtoField.new("Mwcb Level 2", "nasdaq.uqdf.output.utp.v1.5.mwcblevel2", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.mwcb_level_3 = ProtoField.new("Mwcb Level 3", "nasdaq.uqdf.output.utp.v1.5.mwcblevel3", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.mwcb_status_level_indicator = ProtoField.new("Mwcb Status Level Indicator", "nasdaq.uqdf.output.utp.v1.5.mwcbstatuslevelindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_market_center = ProtoField.new("National Best Ask Market Center", "nasdaq.uqdf.output.utp.v1.5.nationalbestaskmarketcenter", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_price = ProtoField.new("National Best Ask Price", "nasdaq.uqdf.output.utp.v1.5.nationalbestaskprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_price_short = ProtoField.new("National Best Ask Price Short", "nasdaq.uqdf.output.utp.v1.5.nationalbestaskpriceshort", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_size = ProtoField.new("National Best Ask Size", "nasdaq.uqdf.output.utp.v1.5.nationalbestasksize", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_size_short = ProtoField.new("National Best Ask Size Short", "nasdaq.uqdf.output.utp.v1.5.nationalbestasksizeshort", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_market_center = ProtoField.new("National Best Bid Market Center", "nasdaq.uqdf.output.utp.v1.5.nationalbestbidmarketcenter", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_price = ProtoField.new("National Best Bid Price", "nasdaq.uqdf.output.utp.v1.5.nationalbestbidprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_price_short = ProtoField.new("National Best Bid Price Short", "nasdaq.uqdf.output.utp.v1.5.nationalbestbidpriceshort", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_size = ProtoField.new("National Best Bid Size", "nasdaq.uqdf.output.utp.v1.5.nationalbestbidsize", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_size_short = ProtoField.new("National Best Bid Size Short", "nasdaq.uqdf.output.utp.v1.5.nationalbestbidsizeshort", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v1_5.fields.nbbo_appendage_indicator = ProtoField.new("Nbbo Appendage Indicator", "nasdaq.uqdf.output.utp.v1.5.nbboappendageindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.nbbo_quote_condition = ProtoField.new("Nbbo Quote Condition", "nasdaq.uqdf.output.utp.v1.5.nbboquotecondition", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.number_of_market_center_attachments = ProtoField.new("Number Of Market Center Attachments", "nasdaq.uqdf.output.utp.v1.5.numberofmarketcenterattachments", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v1_5.fields.old_symbol = ProtoField.new("Old Symbol", "nasdaq.uqdf.output.utp.v1.5.oldsymbol", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.participant_timestamp = ProtoField.new("Participant Timestamp", "nasdaq.uqdf.output.utp.v1.5.participanttimestamp", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.participant_token = ProtoField.new("Participant Token", "nasdaq.uqdf.output.utp.v1.5.participanttoken", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.quote_condition = ProtoField.new("Quote Condition", "nasdaq.uqdf.output.utp.v1.5.quotecondition", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.quote_message = ProtoField.new("Quote Message", "nasdaq.uqdf.output.utp.v1.5.quotemessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.quote_message_type = ProtoField.new("Quote Message Type", "nasdaq.uqdf.output.utp.v1.5.quotemessagetype", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.uqdf.output.utp.v1.5.regshoaction", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.retail_interest_indicator = ProtoField.new("Retail Interest Indicator", "nasdaq.uqdf.output.utp.v1.5.retailinterestindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.uqdf.output.utp.v1.5.roundlotsize", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v1_5.fields.sequence = ProtoField.new("Sequence", "nasdaq.uqdf.output.utp.v1.5.sequence", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.session = ProtoField.new("Session", "nasdaq.uqdf.output.utp.v1.5.session", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.short_form_national_bbo_appendage = ProtoField.new("Short Form National Bbo Appendage", "nasdaq.uqdf.output.utp.v1.5.shortformnationalbboappendage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.uqdf.output.utp.v1.5.shortsalethresholdindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.sip_generated_update = ProtoField.new("Sip Generated Update", "nasdaq.uqdf.output.utp.v1.5.sipgeneratedupdate", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.sip_timestamp = ProtoField.new("Sip Timestamp", "nasdaq.uqdf.output.utp.v1.5.siptimestamp", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.special_condition = ProtoField.new("Special Condition", "nasdaq.uqdf.output.utp.v1.5.specialcondition", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.sub_market_center_id = ProtoField.new("Sub Market Center Id", "nasdaq.uqdf.output.utp.v1.5.submarketcenterid", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.symbol_long = ProtoField.new("Symbol Long", "nasdaq.uqdf.output.utp.v1.5.symbollong", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.symbol_short = ProtoField.new("Symbol Short", "nasdaq.uqdf.output.utp.v1.5.symbolshort", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.text = ProtoField.new("Text", "nasdaq.uqdf.output.utp.v1.5.text", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.text_length = ProtoField.new("Text Length", "nasdaq.uqdf.output.utp.v1.5.textlength", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v1_5.fields.trading_action_code = ProtoField.new("Trading Action Code", "nasdaq.uqdf.output.utp.v1.5.tradingactioncode", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.trading_action_reason = ProtoField.new("Trading Action Reason", "nasdaq.uqdf.output.utp.v1.5.tradingactionreason", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.trading_action_sequence_number = ProtoField.new("Trading Action Sequence Number", "nasdaq.uqdf.output.utp.v1.5.tradingactionsequencenumber", ftypes.UINT32)
omi_nasdaq_uqdf_output_utp_v1_5.fields.version = ProtoField.new("Version", "nasdaq.uqdf.output.utp.v1.5.version", ftypes.UINT8)

-- Nasdaq Uqdf Output Utp 1.5 Headers
omi_nasdaq_uqdf_output_utp_v1_5.fields.message = ProtoField.new("Message", "nasdaq.uqdf.output.utp.v1.5.message", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.message_header = ProtoField.new("Message Header", "nasdaq.uqdf.output.utp.v1.5.messageheader", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.packet = ProtoField.new("Packet", "nasdaq.uqdf.output.utp.v1.5.packet", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.uqdf.output.utp.v1.5.packetheader", ftypes.STRING)

-- Nasdaq Uqdf Output 1.5 Application Messages
omi_nasdaq_uqdf_output_utp_v1_5.fields.auction_collar_message = ProtoField.new("Auction Collar Message", "nasdaq.uqdf.output.utp.v1.5.auctioncollarmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.cross_sro_trading_action_message = ProtoField.new("Cross Sro Trading Action Message", "nasdaq.uqdf.output.utp.v1.5.crosssrotradingactionmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.end_of_day_message = ProtoField.new("End Of Day Message", "nasdaq.uqdf.output.utp.v1.5.endofdaymessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.end_of_transmissions_message = ProtoField.new("End Of Transmissions Message", "nasdaq.uqdf.output.utp.v1.5.endoftransmissionsmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.finra_adf_market_participant_quotation_message = ProtoField.new("Finra Adf Market Participant Quotation Message", "nasdaq.uqdf.output.utp.v1.5.finraadfmarketparticipantquotationmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.general_administrative_message = ProtoField.new("General Administrative Message", "nasdaq.uqdf.output.utp.v1.5.generaladministrativemessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.issue_symbol_directory_message = ProtoField.new("Issue Symbol Directory Message", "nasdaq.uqdf.output.utp.v1.5.issuesymboldirectorymessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.limit_up_limit_down_price_band_message = ProtoField.new("Limit Up Limit Down Price Band Message", "nasdaq.uqdf.output.utp.v1.5.limituplimitdownpricebandmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_trading_action_message = ProtoField.new("Market Center Trading Action Message", "nasdaq.uqdf.output.utp.v1.5.marketcentertradingactionmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_session_close_message = ProtoField.new("Market Session Close Message", "nasdaq.uqdf.output.utp.v1.5.marketsessionclosemessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_session_open_message = ProtoField.new("Market Session Open Message", "nasdaq.uqdf.output.utp.v1.5.marketsessionopenmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_wide_circuit_breaker_decline_level_message = ProtoField.new("Market Wide Circuit Breaker Decline Level Message", "nasdaq.uqdf.output.utp.v1.5.marketwidecircuitbreakerdeclinelevelmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_wide_circuit_breaker_status_message = ProtoField.new("Market Wide Circuit Breaker Status Message", "nasdaq.uqdf.output.utp.v1.5.marketwidecircuitbreakerstatusmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.quote_long_form_message = ProtoField.new("Quote Long Form Message", "nasdaq.uqdf.output.utp.v1.5.quotelongformmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.quote_short_form_message = ProtoField.new("Quote Short Form Message", "nasdaq.uqdf.output.utp.v1.5.quoteshortformmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.quote_wipe_out_message = ProtoField.new("Quote Wipe Out Message", "nasdaq.uqdf.output.utp.v1.5.quotewipeoutmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.regulation_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Regulation Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.uqdf.output.utp.v1.5.regulationshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.session_close_recap_message = ProtoField.new("Session Close Recap Message", "nasdaq.uqdf.output.utp.v1.5.sessioncloserecapmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "nasdaq.uqdf.output.utp.v1.5.startofdaymessage", ftypes.STRING)

-- Nasdaq Uqdf Output Utp 1.5 generated fields
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_close_recap_index = ProtoField.new("Market Center Close Recap Index", "nasdaq.uqdf.output.utp.v1.5.marketcentercloserecapindex", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v1_5.fields.message_index = ProtoField.new("Message Index", "nasdaq.uqdf.output.utp.v1.5.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq Uqdf Output Utp 1.5 Element Dissection Options
show.structs = true
show.application_messages = true
show.repeating_groups = true
show.indexes = true

-- Register Nasdaq Uqdf Output Utp 1.5 Show Options
omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_nasdaq_uqdf_output_utp_v1_5.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_application_messages
  end
  if show.repeating_groups ~= omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_repeating_groups then
    show.repeating_groups = omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_repeating_groups
  end
  if show.structs ~= omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_structs then
    show.structs = omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_indexes then
    show.indexes = omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- trim trailing spaces
trim_right_spaces = function(str)
  local finish = str:len()

  for i = 1, finish do
    if str:byte(i) == 0x20 then
      return str:sub(1, i - 1)
    end
  end

  return str
end


-----------------------------------------------------------------------
-- Nasdaq Uqdf Output Utp 1.5 Fields
-----------------------------------------------------------------------

-- Action Timestamp
nasdaq_uqdf_output_utp_v1_5.action_timestamp = {}

-- Size: Action Timestamp
nasdaq_uqdf_output_utp_v1_5.action_timestamp.size = 8

-- Display: Action Timestamp
nasdaq_uqdf_output_utp_v1_5.action_timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Action Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Action Timestamp
nasdaq_uqdf_output_utp_v1_5.action_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.action_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.action_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.action_timestamp, range, value, display)

  return offset + length, value
end

-- Administrative Message Type
nasdaq_uqdf_output_utp_v1_5.administrative_message_type = {}

-- Size: Administrative Message Type
nasdaq_uqdf_output_utp_v1_5.administrative_message_type.size = 1

-- Display: Administrative Message Type
nasdaq_uqdf_output_utp_v1_5.administrative_message_type.display = function(value)
  return "Administrative Message Type: "..value
end

-- Dissect: Administrative Message Type
nasdaq_uqdf_output_utp_v1_5.administrative_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.administrative_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.administrative_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- Ask Adf Mpid
nasdaq_uqdf_output_utp_v1_5.ask_adf_mpid = {}

-- Size: Ask Adf Mpid
nasdaq_uqdf_output_utp_v1_5.ask_adf_mpid.size = 4

-- Display: Ask Adf Mpid
nasdaq_uqdf_output_utp_v1_5.ask_adf_mpid.display = function(value)
  return "Ask Adf Mpid: "..value
end

-- Dissect: Ask Adf Mpid
nasdaq_uqdf_output_utp_v1_5.ask_adf_mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.ask_adf_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_uqdf_output_utp_v1_5.ask_adf_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.ask_adf_mpid, range, value, display)

  return offset + length, value
end

-- Ask Price
nasdaq_uqdf_output_utp_v1_5.ask_price = {}

-- Size: Ask Price
nasdaq_uqdf_output_utp_v1_5.ask_price.size = 8

-- Display: Ask Price
nasdaq_uqdf_output_utp_v1_5.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
nasdaq_uqdf_output_utp_v1_5.ask_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ask Price
nasdaq_uqdf_output_utp_v1_5.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.ask_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Price Short
nasdaq_uqdf_output_utp_v1_5.ask_price_short = {}

-- Size: Ask Price Short
nasdaq_uqdf_output_utp_v1_5.ask_price_short.size = 2

-- Display: Ask Price Short
nasdaq_uqdf_output_utp_v1_5.ask_price_short.display = function(value)
  return "Ask Price Short: "..value
end

-- Translate: Ask Price Short
nasdaq_uqdf_output_utp_v1_5.ask_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Ask Price Short
nasdaq_uqdf_output_utp_v1_5.ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.ask_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_uqdf_output_utp_v1_5.ask_price_short.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.ask_price_short, range, value, display)

  return offset + length, value
end

-- Ask Size
nasdaq_uqdf_output_utp_v1_5.ask_size = {}

-- Size: Ask Size
nasdaq_uqdf_output_utp_v1_5.ask_size.size = 4

-- Display: Ask Size
nasdaq_uqdf_output_utp_v1_5.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
nasdaq_uqdf_output_utp_v1_5.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Ask Size Short
nasdaq_uqdf_output_utp_v1_5.ask_size_short = {}

-- Size: Ask Size Short
nasdaq_uqdf_output_utp_v1_5.ask_size_short.size = 2

-- Display: Ask Size Short
nasdaq_uqdf_output_utp_v1_5.ask_size_short.display = function(value)
  return "Ask Size Short: "..value
end

-- Dissect: Ask Size Short
nasdaq_uqdf_output_utp_v1_5.ask_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.ask_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.ask_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.ask_size_short, range, value, display)

  return offset + length, value
end

-- Authenticity
nasdaq_uqdf_output_utp_v1_5.authenticity = {}

-- Size: Authenticity
nasdaq_uqdf_output_utp_v1_5.authenticity.size = 1

-- Display: Authenticity
nasdaq_uqdf_output_utp_v1_5.authenticity.display = function(value)
  if value == "P" then
    return "Authenticity: Production (P)"
  end
  if value == "T" then
    return "Authenticity: Test (T)"
  end
  if value == "D" then
    return "Authenticity: Demo (D)"
  end
  if value == "X" then
    return "Authenticity: Deleted (X)"
  end

  return "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_uqdf_output_utp_v1_5.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Best Ask Market Center
nasdaq_uqdf_output_utp_v1_5.best_ask_market_center = {}

-- Size: Best Ask Market Center
nasdaq_uqdf_output_utp_v1_5.best_ask_market_center.size = 1

-- Display: Best Ask Market Center
nasdaq_uqdf_output_utp_v1_5.best_ask_market_center.display = function(value)
  return "Best Ask Market Center: "..value
end

-- Dissect: Best Ask Market Center
nasdaq_uqdf_output_utp_v1_5.best_ask_market_center.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.best_ask_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.best_ask_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.best_ask_market_center, range, value, display)

  return offset + length, value
end

-- Best Ask Price
nasdaq_uqdf_output_utp_v1_5.best_ask_price = {}

-- Size: Best Ask Price
nasdaq_uqdf_output_utp_v1_5.best_ask_price.size = 8

-- Display: Best Ask Price
nasdaq_uqdf_output_utp_v1_5.best_ask_price.display = function(value)
  return "Best Ask Price: "..value
end

-- Translate: Best Ask Price
nasdaq_uqdf_output_utp_v1_5.best_ask_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Best Ask Price
nasdaq_uqdf_output_utp_v1_5.best_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.best_ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.best_ask_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.best_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.best_ask_price, range, value, display)

  return offset + length, value
end

-- Best Ask Size
nasdaq_uqdf_output_utp_v1_5.best_ask_size = {}

-- Size: Best Ask Size
nasdaq_uqdf_output_utp_v1_5.best_ask_size.size = 4

-- Display: Best Ask Size
nasdaq_uqdf_output_utp_v1_5.best_ask_size.display = function(value)
  return "Best Ask Size: "..value
end

-- Dissect: Best Ask Size
nasdaq_uqdf_output_utp_v1_5.best_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.best_ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.best_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.best_ask_size, range, value, display)

  return offset + length, value
end

-- Best Bid Market Center
nasdaq_uqdf_output_utp_v1_5.best_bid_market_center = {}

-- Size: Best Bid Market Center
nasdaq_uqdf_output_utp_v1_5.best_bid_market_center.size = 1

-- Display: Best Bid Market Center
nasdaq_uqdf_output_utp_v1_5.best_bid_market_center.display = function(value)
  return "Best Bid Market Center: "..value
end

-- Dissect: Best Bid Market Center
nasdaq_uqdf_output_utp_v1_5.best_bid_market_center.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.best_bid_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.best_bid_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.best_bid_market_center, range, value, display)

  return offset + length, value
end

-- Best Bid Price
nasdaq_uqdf_output_utp_v1_5.best_bid_price = {}

-- Size: Best Bid Price
nasdaq_uqdf_output_utp_v1_5.best_bid_price.size = 8

-- Display: Best Bid Price
nasdaq_uqdf_output_utp_v1_5.best_bid_price.display = function(value)
  return "Best Bid Price: "..value
end

-- Translate: Best Bid Price
nasdaq_uqdf_output_utp_v1_5.best_bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Best Bid Price
nasdaq_uqdf_output_utp_v1_5.best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.best_bid_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Best Bid Size
nasdaq_uqdf_output_utp_v1_5.best_bid_size = {}

-- Size: Best Bid Size
nasdaq_uqdf_output_utp_v1_5.best_bid_size.size = 4

-- Display: Best Bid Size
nasdaq_uqdf_output_utp_v1_5.best_bid_size.display = function(value)
  return "Best Bid Size: "..value
end

-- Dissect: Best Bid Size
nasdaq_uqdf_output_utp_v1_5.best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.best_bid_size, range, value, display)

  return offset + length, value
end

-- Bid Adf Mpid
nasdaq_uqdf_output_utp_v1_5.bid_adf_mpid = {}

-- Size: Bid Adf Mpid
nasdaq_uqdf_output_utp_v1_5.bid_adf_mpid.size = 4

-- Display: Bid Adf Mpid
nasdaq_uqdf_output_utp_v1_5.bid_adf_mpid.display = function(value)
  return "Bid Adf Mpid: "..value
end

-- Dissect: Bid Adf Mpid
nasdaq_uqdf_output_utp_v1_5.bid_adf_mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.bid_adf_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_uqdf_output_utp_v1_5.bid_adf_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.bid_adf_mpid, range, value, display)

  return offset + length, value
end

-- Bid Price
nasdaq_uqdf_output_utp_v1_5.bid_price = {}

-- Size: Bid Price
nasdaq_uqdf_output_utp_v1_5.bid_price.size = 8

-- Display: Bid Price
nasdaq_uqdf_output_utp_v1_5.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
nasdaq_uqdf_output_utp_v1_5.bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Price
nasdaq_uqdf_output_utp_v1_5.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.bid_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Price Short
nasdaq_uqdf_output_utp_v1_5.bid_price_short = {}

-- Size: Bid Price Short
nasdaq_uqdf_output_utp_v1_5.bid_price_short.size = 2

-- Display: Bid Price Short
nasdaq_uqdf_output_utp_v1_5.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Translate: Bid Price Short
nasdaq_uqdf_output_utp_v1_5.bid_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price Short
nasdaq_uqdf_output_utp_v1_5.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_uqdf_output_utp_v1_5.bid_price_short.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Size
nasdaq_uqdf_output_utp_v1_5.bid_size = {}

-- Size: Bid Size
nasdaq_uqdf_output_utp_v1_5.bid_size.size = 4

-- Display: Bid Size
nasdaq_uqdf_output_utp_v1_5.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
nasdaq_uqdf_output_utp_v1_5.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Bid Size Short
nasdaq_uqdf_output_utp_v1_5.bid_size_short = {}

-- Size: Bid Size Short
nasdaq_uqdf_output_utp_v1_5.bid_size_short.size = 2

-- Display: Bid Size Short
nasdaq_uqdf_output_utp_v1_5.bid_size_short.display = function(value)
  return "Bid Size Short: "..value
end

-- Dissect: Bid Size Short
nasdaq_uqdf_output_utp_v1_5.bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.bid_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.bid_size_short, range, value, display)

  return offset + length, value
end

-- Collar Down Price
nasdaq_uqdf_output_utp_v1_5.collar_down_price = {}

-- Size: Collar Down Price
nasdaq_uqdf_output_utp_v1_5.collar_down_price.size = 8

-- Display: Collar Down Price
nasdaq_uqdf_output_utp_v1_5.collar_down_price.display = function(value)
  return "Collar Down Price: "..value
end

-- Translate: Collar Down Price
nasdaq_uqdf_output_utp_v1_5.collar_down_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Down Price
nasdaq_uqdf_output_utp_v1_5.collar_down_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.collar_down_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.collar_down_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.collar_down_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.collar_down_price, range, value, display)

  return offset + length, value
end

-- Collar Extension Indicator
nasdaq_uqdf_output_utp_v1_5.collar_extension_indicator = {}

-- Size: Collar Extension Indicator
nasdaq_uqdf_output_utp_v1_5.collar_extension_indicator.size = 1

-- Display: Collar Extension Indicator
nasdaq_uqdf_output_utp_v1_5.collar_extension_indicator.display = function(value)
  return "Collar Extension Indicator: "..value
end

-- Dissect: Collar Extension Indicator
nasdaq_uqdf_output_utp_v1_5.collar_extension_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.collar_extension_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.collar_extension_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.collar_extension_indicator, range, value, display)

  return offset + length, value
end

-- Collar Reference Price
nasdaq_uqdf_output_utp_v1_5.collar_reference_price = {}

-- Size: Collar Reference Price
nasdaq_uqdf_output_utp_v1_5.collar_reference_price.size = 8

-- Display: Collar Reference Price
nasdaq_uqdf_output_utp_v1_5.collar_reference_price.display = function(value)
  return "Collar Reference Price: "..value
end

-- Translate: Collar Reference Price
nasdaq_uqdf_output_utp_v1_5.collar_reference_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Reference Price
nasdaq_uqdf_output_utp_v1_5.collar_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.collar_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.collar_reference_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.collar_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.collar_reference_price, range, value, display)

  return offset + length, value
end

-- Collar Up Price
nasdaq_uqdf_output_utp_v1_5.collar_up_price = {}

-- Size: Collar Up Price
nasdaq_uqdf_output_utp_v1_5.collar_up_price.size = 8

-- Display: Collar Up Price
nasdaq_uqdf_output_utp_v1_5.collar_up_price.display = function(value)
  return "Collar Up Price: "..value
end

-- Translate: Collar Up Price
nasdaq_uqdf_output_utp_v1_5.collar_up_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Up Price
nasdaq_uqdf_output_utp_v1_5.collar_up_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.collar_up_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.collar_up_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.collar_up_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.collar_up_price, range, value, display)

  return offset + length, value
end

-- Control Message Type
nasdaq_uqdf_output_utp_v1_5.control_message_type = {}

-- Size: Control Message Type
nasdaq_uqdf_output_utp_v1_5.control_message_type.size = 1

-- Display: Control Message Type
nasdaq_uqdf_output_utp_v1_5.control_message_type.display = function(value)
  return "Control Message Type: "..value
end

-- Dissect: Control Message Type
nasdaq_uqdf_output_utp_v1_5.control_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.control_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.control_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Count
nasdaq_uqdf_output_utp_v1_5.count = {}

-- Size: Count
nasdaq_uqdf_output_utp_v1_5.count.size = 2

-- Display: Count
nasdaq_uqdf_output_utp_v1_5.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
nasdaq_uqdf_output_utp_v1_5.count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.count, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_uqdf_output_utp_v1_5.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_uqdf_output_utp_v1_5.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_uqdf_output_utp_v1_5.financial_status_indicator.display = function(value)
  if value == "C" then
    return "Financial Status Indicator: Creations And Or Redemptions Suspended (C)"
  end
  if value == "D" then
    return "Financial Status Indicator: Deficient (D)"
  end
  if value == "E" then
    return "Financial Status Indicator: Delinquent (E)"
  end
  if value == "Q" then
    return "Financial Status Indicator: Bankrupt (Q)"
  end
  if value == "N" then
    return "Financial Status Indicator: Normal (N)"
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

  return "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
nasdaq_uqdf_output_utp_v1_5.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Finra Adf Mpid Appendage Indicator
nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage_indicator = {}

-- Size: Finra Adf Mpid Appendage Indicator
nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage_indicator.size = 1

-- Display: Finra Adf Mpid Appendage Indicator
nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage_indicator.display = function(value)
  if value == " " then
    return "Finra Adf Mpid Appendage Indicator: Not Applicable (<whitespace>)"
  end
  if value == "0" then
    return "Finra Adf Mpid Appendage Indicator: No Adf Mpid Changes (0)"
  end
  if value == "1" then
    return "Finra Adf Mpid Appendage Indicator: No Adf Mpid Exists (1)"
  end
  if value == "2" then
    return "Finra Adf Mpid Appendage Indicator: Adf Mpi Ds Attached (2)"
  end

  return "Finra Adf Mpid Appendage Indicator: Unknown("..value..")"
end

-- Dissect: Finra Adf Mpid Appendage Indicator
nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.finra_adf_mpid_appendage_indicator, range, value, display)

  return offset + length, value
end

-- Finra Market Participant
nasdaq_uqdf_output_utp_v1_5.finra_market_participant = {}

-- Size: Finra Market Participant
nasdaq_uqdf_output_utp_v1_5.finra_market_participant.size = 4

-- Display: Finra Market Participant
nasdaq_uqdf_output_utp_v1_5.finra_market_participant.display = function(value)
  return "Finra Market Participant: "..value
end

-- Dissect: Finra Market Participant
nasdaq_uqdf_output_utp_v1_5.finra_market_participant.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.finra_market_participant.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_uqdf_output_utp_v1_5.finra_market_participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.finra_market_participant, range, value, display)

  return offset + length, value
end

-- Finra Timestamp
nasdaq_uqdf_output_utp_v1_5.finra_timestamp = {}

-- Size: Finra Timestamp
nasdaq_uqdf_output_utp_v1_5.finra_timestamp.size = 8

-- Display: Finra Timestamp
nasdaq_uqdf_output_utp_v1_5.finra_timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Finra Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Finra Timestamp
nasdaq_uqdf_output_utp_v1_5.finra_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.finra_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.finra_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.finra_timestamp, range, value, display)

  return offset + length, value
end

-- Issue Name
nasdaq_uqdf_output_utp_v1_5.issue_name = {}

-- Size: Issue Name
nasdaq_uqdf_output_utp_v1_5.issue_name.size = 30

-- Display: Issue Name
nasdaq_uqdf_output_utp_v1_5.issue_name.display = function(value)
  return "Issue Name: "..value
end

-- Dissect: Issue Name
nasdaq_uqdf_output_utp_v1_5.issue_name.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.issue_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_uqdf_output_utp_v1_5.issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.issue_name, range, value, display)

  return offset + length, value
end

-- Issue Subtype
nasdaq_uqdf_output_utp_v1_5.issue_subtype = {}

-- Size: Issue Subtype
nasdaq_uqdf_output_utp_v1_5.issue_subtype.size = 2

-- Display: Issue Subtype
nasdaq_uqdf_output_utp_v1_5.issue_subtype.display = function(value)
  return "Issue Subtype: "..value
end

-- Dissect: Issue Subtype
nasdaq_uqdf_output_utp_v1_5.issue_subtype.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.issue_subtype.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_uqdf_output_utp_v1_5.issue_subtype.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.issue_subtype, range, value, display)

  return offset + length, value
end

-- Issue Type
nasdaq_uqdf_output_utp_v1_5.issue_type = {}

-- Size: Issue Type
nasdaq_uqdf_output_utp_v1_5.issue_type.size = 1

-- Display: Issue Type
nasdaq_uqdf_output_utp_v1_5.issue_type.display = function(value)
  if value == "A" then
    return "Issue Type: American Depository Receipt (A)"
  end
  if value == "B" then
    return "Issue Type: Bond (B)"
  end
  if value == "C" then
    return "Issue Type: Common Stock (C)"
  end
  if value == "F" then
    return "Issue Type: Depository Receipt (F)"
  end
  if value == "I" then
    return "Issue Type: Rule 144a (I)"
  end
  if value == "L" then
    return "Issue Type: Limited Partnership (L)"
  end
  if value == "N" then
    return "Issue Type: Note (N)"
  end
  if value == "O" then
    return "Issue Type: Ordinary Shares (O)"
  end
  if value == "P" then
    return "Issue Type: Preferred Stock (P)"
  end
  if value == "Q" then
    return "Issue Type: Other Securities (Q)"
  end
  if value == "R" then
    return "Issue Type: Rights (R)"
  end
  if value == "S" then
    return "Issue Type: Shares Of Beneficial Interest (S)"
  end
  if value == "T" then
    return "Issue Type: Convertible Debenture (T)"
  end
  if value == "U" then
    return "Issue Type: Unit (U)"
  end
  if value == "V" then
    return "Issue Type: Units Of Beneficial Interest (V)"
  end
  if value == "W" then
    return "Issue Type: Warrant (W)"
  end

  return "Issue Type: Unknown("..value..")"
end

-- Dissect: Issue Type
nasdaq_uqdf_output_utp_v1_5.issue_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.issue_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.issue_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.issue_type, range, value, display)

  return offset + length, value
end

-- Limit Down Price
nasdaq_uqdf_output_utp_v1_5.limit_down_price = {}

-- Size: Limit Down Price
nasdaq_uqdf_output_utp_v1_5.limit_down_price.size = 8

-- Display: Limit Down Price
nasdaq_uqdf_output_utp_v1_5.limit_down_price.display = function(value)
  return "Limit Down Price: "..value
end

-- Translate: Limit Down Price
nasdaq_uqdf_output_utp_v1_5.limit_down_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Limit Down Price
nasdaq_uqdf_output_utp_v1_5.limit_down_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.limit_down_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.limit_down_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.limit_down_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.limit_down_price, range, value, display)

  return offset + length, value
end

-- Limit Up Price
nasdaq_uqdf_output_utp_v1_5.limit_up_price = {}

-- Size: Limit Up Price
nasdaq_uqdf_output_utp_v1_5.limit_up_price.size = 8

-- Display: Limit Up Price
nasdaq_uqdf_output_utp_v1_5.limit_up_price.display = function(value)
  return "Limit Up Price: "..value
end

-- Translate: Limit Up Price
nasdaq_uqdf_output_utp_v1_5.limit_up_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Limit Up Price
nasdaq_uqdf_output_utp_v1_5.limit_up_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.limit_up_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.limit_up_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.limit_up_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.limit_up_price, range, value, display)

  return offset + length, value
end

-- Luld Bbo Indicator
nasdaq_uqdf_output_utp_v1_5.luld_bbo_indicator = {}

-- Size: Luld Bbo Indicator
nasdaq_uqdf_output_utp_v1_5.luld_bbo_indicator.size = 1

-- Display: Luld Bbo Indicator
nasdaq_uqdf_output_utp_v1_5.luld_bbo_indicator.display = function(value)
  if value == " " then
    return "Luld Bbo Indicator: Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Luld Bbo Indicator: Bid Price Above Upper Limit Price Band (A)"
  end
  if value == "B" then
    return "Luld Bbo Indicator: Ask Price Below Lower Limit Price Band (B)"
  end
  if value == "C" then
    return "Luld Bbo Indicator: Bid And Ask Outside Price Band (C)"
  end

  return "Luld Bbo Indicator: Unknown("..value..")"
end

-- Dissect: Luld Bbo Indicator
nasdaq_uqdf_output_utp_v1_5.luld_bbo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.luld_bbo_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.luld_bbo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.luld_bbo_indicator, range, value, display)

  return offset + length, value
end

-- Luld National Bbo Indicator
nasdaq_uqdf_output_utp_v1_5.luld_national_bbo_indicator = {}

-- Size: Luld National Bbo Indicator
nasdaq_uqdf_output_utp_v1_5.luld_national_bbo_indicator.size = 1

-- Display: Luld National Bbo Indicator
nasdaq_uqdf_output_utp_v1_5.luld_national_bbo_indicator.display = function(value)
  if value == " " then
    return "Luld National Bbo Indicator: Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Luld National Bbo Indicator: National Best Bid And National Best Ask Are Executable (A)"
  end
  if value == "B" then
    return "Luld National Bbo Indicator: National Best Bid Below Lower Limit Price Band (B)"
  end
  if value == "C" then
    return "Luld National Bbo Indicator: National Best Ask Above Upper Limit Price Band (C)"
  end
  if value == "D" then
    return "Luld National Bbo Indicator: National Best Bid Below Lower Limit Price Band And National Best Ask Above Upper Limit Price Band (D)"
  end
  if value == "E" then
    return "Luld National Bbo Indicator: National Best Bid Equals Upper Limit Price Band (E)"
  end
  if value == "F" then
    return "Luld National Bbo Indicator: National Best Offer Equals Lower Limit Price Band (F)"
  end
  if value == "G" then
    return "Luld National Bbo Indicator: National Best Bid Equals Upper Limit Price Band (G)"
  end
  if value == "H" then
    return "Luld National Bbo Indicator: National Best Ask Equals Lower Limit Price Band (H)"
  end
  if value == "I" then
    return "Luld National Bbo Indicator: National Best Bid Equals Upper Limit Price Band And National Best Ask Equals Lower Limit Price Band (I)"
  end

  return "Luld National Bbo Indicator: Unknown("..value..")"
end

-- Dissect: Luld National Bbo Indicator
nasdaq_uqdf_output_utp_v1_5.luld_national_bbo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.luld_national_bbo_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.luld_national_bbo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.luld_national_bbo_indicator, range, value, display)

  return offset + length, value
end

-- Luld Price Band Indicator
nasdaq_uqdf_output_utp_v1_5.luld_price_band_indicator = {}

-- Size: Luld Price Band Indicator
nasdaq_uqdf_output_utp_v1_5.luld_price_band_indicator.size = 1

-- Display: Luld Price Band Indicator
nasdaq_uqdf_output_utp_v1_5.luld_price_band_indicator.display = function(value)
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
nasdaq_uqdf_output_utp_v1_5.luld_price_band_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.luld_price_band_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.luld_price_band_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.luld_price_band_indicator, range, value, display)

  return offset + length, value
end

-- Luld Timestamp
nasdaq_uqdf_output_utp_v1_5.luld_timestamp = {}

-- Size: Luld Timestamp
nasdaq_uqdf_output_utp_v1_5.luld_timestamp.size = 8

-- Display: Luld Timestamp
nasdaq_uqdf_output_utp_v1_5.luld_timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Luld Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Luld Timestamp
nasdaq_uqdf_output_utp_v1_5.luld_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.luld_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.luld_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.luld_timestamp, range, value, display)

  return offset + length, value
end

-- Market Center Ask Price
nasdaq_uqdf_output_utp_v1_5.market_center_ask_price = {}

-- Size: Market Center Ask Price
nasdaq_uqdf_output_utp_v1_5.market_center_ask_price.size = 8

-- Display: Market Center Ask Price
nasdaq_uqdf_output_utp_v1_5.market_center_ask_price.display = function(value)
  return "Market Center Ask Price: "..value
end

-- Translate: Market Center Ask Price
nasdaq_uqdf_output_utp_v1_5.market_center_ask_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Market Center Ask Price
nasdaq_uqdf_output_utp_v1_5.market_center_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.market_center_ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.market_center_ask_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.market_center_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_ask_price, range, value, display)

  return offset + length, value
end

-- Market Center Ask Size
nasdaq_uqdf_output_utp_v1_5.market_center_ask_size = {}

-- Size: Market Center Ask Size
nasdaq_uqdf_output_utp_v1_5.market_center_ask_size.size = 8

-- Display: Market Center Ask Size
nasdaq_uqdf_output_utp_v1_5.market_center_ask_size.display = function(value)
  return "Market Center Ask Size: "..value
end

-- Dissect: Market Center Ask Size
nasdaq_uqdf_output_utp_v1_5.market_center_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.market_center_ask_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.market_center_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_ask_size, range, value, display)

  return offset + length, value
end

-- Market Center Bid Price
nasdaq_uqdf_output_utp_v1_5.market_center_bid_price = {}

-- Size: Market Center Bid Price
nasdaq_uqdf_output_utp_v1_5.market_center_bid_price.size = 8

-- Display: Market Center Bid Price
nasdaq_uqdf_output_utp_v1_5.market_center_bid_price.display = function(value)
  return "Market Center Bid Price: "..value
end

-- Translate: Market Center Bid Price
nasdaq_uqdf_output_utp_v1_5.market_center_bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Market Center Bid Price
nasdaq_uqdf_output_utp_v1_5.market_center_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.market_center_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.market_center_bid_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.market_center_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_bid_price, range, value, display)

  return offset + length, value
end

-- Market Center Bid Size
nasdaq_uqdf_output_utp_v1_5.market_center_bid_size = {}

-- Size: Market Center Bid Size
nasdaq_uqdf_output_utp_v1_5.market_center_bid_size.size = 8

-- Display: Market Center Bid Size
nasdaq_uqdf_output_utp_v1_5.market_center_bid_size.display = function(value)
  return "Market Center Bid Size: "..value
end

-- Dissect: Market Center Bid Size
nasdaq_uqdf_output_utp_v1_5.market_center_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.market_center_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.market_center_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_bid_size, range, value, display)

  return offset + length, value
end

-- Market Center Identifier
nasdaq_uqdf_output_utp_v1_5.market_center_identifier = {}

-- Size: Market Center Identifier
nasdaq_uqdf_output_utp_v1_5.market_center_identifier.size = 1

-- Display: Market Center Identifier
nasdaq_uqdf_output_utp_v1_5.market_center_identifier.display = function(value)
  return "Market Center Identifier: "..value
end

-- Dissect: Market Center Identifier
nasdaq_uqdf_output_utp_v1_5.market_center_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.market_center_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.market_center_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_identifier, range, value, display)

  return offset + length, value
end

-- Market Center Originator Id
nasdaq_uqdf_output_utp_v1_5.market_center_originator_id = {}

-- Size: Market Center Originator Id
nasdaq_uqdf_output_utp_v1_5.market_center_originator_id.size = 1

-- Display: Market Center Originator Id
nasdaq_uqdf_output_utp_v1_5.market_center_originator_id.display = function(value)
  if value == "Y" then
    return "Market Center Originator Id: Byx (Y)"
  end
  if value == "Z" then
    return "Market Center Originator Id: Bzx (Z)"
  end
  if value == "J" then
    return "Market Center Originator Id: Edga (J)"
  end
  if value == "K" then
    return "Market Center Originator Id: Edgx (K)"
  end
  if value == "W" then
    return "Market Center Originator Id: Cboe (W)"
  end
  if value == "B" then
    return "Market Center Originator Id: Bx (B)"
  end
  if value == "X" then
    return "Market Center Originator Id: Phlx (X)"
  end
  if value == "Q" then
    return "Market Center Originator Id: Nasdaq (Q)"
  end
  if value == "I" then
    return "Market Center Originator Id: Ise (I)"
  end
  if value == "N" then
    return "Market Center Originator Id: Nyse (N)"
  end
  if value == "P" then
    return "Market Center Originator Id: Arca (P)"
  end
  if value == "A" then
    return "Market Center Originator Id: American (A)"
  end
  if value == "C" then
    return "Market Center Originator Id: National (C)"
  end
  if value == "M" then
    return "Market Center Originator Id: Chicago (M)"
  end
  if value == "D" then
    return "Market Center Originator Id: Finra (D)"
  end
  if value == "V" then
    return "Market Center Originator Id: Iex (V)"
  end
  if value == "L" then
    return "Market Center Originator Id: Ltse (L)"
  end
  if value == "H" then
    return "Market Center Originator Id: Pearl (H)"
  end
  if value == "U" then
    return "Market Center Originator Id: Memx (U)"
  end
  if value == "E" then
    return "Market Center Originator Id: Market Independent (E)"
  end

  return "Market Center Originator Id: Unknown("..value..")"
end

-- Dissect: Market Center Originator Id
nasdaq_uqdf_output_utp_v1_5.market_center_originator_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.market_center_originator_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.market_center_originator_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_originator_id, range, value, display)

  return offset + length, value
end

-- Market Tier
nasdaq_uqdf_output_utp_v1_5.market_tier = {}

-- Size: Market Tier
nasdaq_uqdf_output_utp_v1_5.market_tier.size = 1

-- Display: Market Tier
nasdaq_uqdf_output_utp_v1_5.market_tier.display = function(value)
  if value == "Q" then
    return "Market Tier: Nasdaq Global Select Market (Q)"
  end
  if value == "G" then
    return "Market Tier: Nasdaq Global Market (G)"
  end
  if value == "S" then
    return "Market Tier: Nasdaq Capital Market (S)"
  end

  return "Market Tier: Unknown("..value..")"
end

-- Dissect: Market Tier
nasdaq_uqdf_output_utp_v1_5.market_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.market_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.market_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_tier, range, value, display)

  return offset + length, value
end

-- Message Category
nasdaq_uqdf_output_utp_v1_5.message_category = {}

-- Size: Message Category
nasdaq_uqdf_output_utp_v1_5.message_category.size = 1

-- Display: Message Category
nasdaq_uqdf_output_utp_v1_5.message_category.display = function(value)
  return "Message Category: "..value
end

-- Dissect: Message Category
nasdaq_uqdf_output_utp_v1_5.message_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.message_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.message_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.message_category, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_uqdf_output_utp_v1_5.message_length = {}

-- Size: Message Length
nasdaq_uqdf_output_utp_v1_5.message_length.size = 2

-- Display: Message Length
nasdaq_uqdf_output_utp_v1_5.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_uqdf_output_utp_v1_5.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.message_length, range, value, display)

  return offset + length, value
end

-- Mwcb Level 1
nasdaq_uqdf_output_utp_v1_5.mwcb_level_1 = {}

-- Size: Mwcb Level 1
nasdaq_uqdf_output_utp_v1_5.mwcb_level_1.size = 8

-- Display: Mwcb Level 1
nasdaq_uqdf_output_utp_v1_5.mwcb_level_1.display = function(value)
  return "Mwcb Level 1: "..value
end

-- Dissect: Mwcb Level 1
nasdaq_uqdf_output_utp_v1_5.mwcb_level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.mwcb_level_1.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.mwcb_level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.mwcb_level_1, range, value, display)

  return offset + length, value
end

-- Mwcb Level 2
nasdaq_uqdf_output_utp_v1_5.mwcb_level_2 = {}

-- Size: Mwcb Level 2
nasdaq_uqdf_output_utp_v1_5.mwcb_level_2.size = 8

-- Display: Mwcb Level 2
nasdaq_uqdf_output_utp_v1_5.mwcb_level_2.display = function(value)
  return "Mwcb Level 2: "..value
end

-- Dissect: Mwcb Level 2
nasdaq_uqdf_output_utp_v1_5.mwcb_level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.mwcb_level_2.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.mwcb_level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.mwcb_level_2, range, value, display)

  return offset + length, value
end

-- Mwcb Level 3
nasdaq_uqdf_output_utp_v1_5.mwcb_level_3 = {}

-- Size: Mwcb Level 3
nasdaq_uqdf_output_utp_v1_5.mwcb_level_3.size = 8

-- Display: Mwcb Level 3
nasdaq_uqdf_output_utp_v1_5.mwcb_level_3.display = function(value)
  return "Mwcb Level 3: "..value
end

-- Dissect: Mwcb Level 3
nasdaq_uqdf_output_utp_v1_5.mwcb_level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.mwcb_level_3.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.mwcb_level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.mwcb_level_3, range, value, display)

  return offset + length, value
end

-- Mwcb Status Level Indicator
nasdaq_uqdf_output_utp_v1_5.mwcb_status_level_indicator = {}

-- Size: Mwcb Status Level Indicator
nasdaq_uqdf_output_utp_v1_5.mwcb_status_level_indicator.size = 1

-- Display: Mwcb Status Level Indicator
nasdaq_uqdf_output_utp_v1_5.mwcb_status_level_indicator.display = function(value)
  if value == "1" then
    return "Mwcb Status Level Indicator: Level 1 Breached (1)"
  end
  if value == "2" then
    return "Mwcb Status Level Indicator: Level 2 Breached (2)"
  end
  if value == "3" then
    return "Mwcb Status Level Indicator: Level 3 Breached (3)"
  end

  return "Mwcb Status Level Indicator: Unknown("..value..")"
end

-- Dissect: Mwcb Status Level Indicator
nasdaq_uqdf_output_utp_v1_5.mwcb_status_level_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.mwcb_status_level_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.mwcb_status_level_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.mwcb_status_level_indicator, range, value, display)

  return offset + length, value
end

-- National Best Ask Market Center
nasdaq_uqdf_output_utp_v1_5.national_best_ask_market_center = {}

-- Size: National Best Ask Market Center
nasdaq_uqdf_output_utp_v1_5.national_best_ask_market_center.size = 1

-- Display: National Best Ask Market Center
nasdaq_uqdf_output_utp_v1_5.national_best_ask_market_center.display = function(value)
  return "National Best Ask Market Center: "..value
end

-- Dissect: National Best Ask Market Center
nasdaq_uqdf_output_utp_v1_5.national_best_ask_market_center.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.national_best_ask_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.national_best_ask_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_market_center, range, value, display)

  return offset + length, value
end

-- National Best Ask Price
nasdaq_uqdf_output_utp_v1_5.national_best_ask_price = {}

-- Size: National Best Ask Price
nasdaq_uqdf_output_utp_v1_5.national_best_ask_price.size = 8

-- Display: National Best Ask Price
nasdaq_uqdf_output_utp_v1_5.national_best_ask_price.display = function(value)
  return "National Best Ask Price: "..value
end

-- Translate: National Best Ask Price
nasdaq_uqdf_output_utp_v1_5.national_best_ask_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: National Best Ask Price
nasdaq_uqdf_output_utp_v1_5.national_best_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.national_best_ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.national_best_ask_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.national_best_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_price, range, value, display)

  return offset + length, value
end

-- National Best Ask Price Short
nasdaq_uqdf_output_utp_v1_5.national_best_ask_price_short = {}

-- Size: National Best Ask Price Short
nasdaq_uqdf_output_utp_v1_5.national_best_ask_price_short.size = 2

-- Display: National Best Ask Price Short
nasdaq_uqdf_output_utp_v1_5.national_best_ask_price_short.display = function(value)
  return "National Best Ask Price Short: "..value
end

-- Translate: National Best Ask Price Short
nasdaq_uqdf_output_utp_v1_5.national_best_ask_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: National Best Ask Price Short
nasdaq_uqdf_output_utp_v1_5.national_best_ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.national_best_ask_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_uqdf_output_utp_v1_5.national_best_ask_price_short.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.national_best_ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_price_short, range, value, display)

  return offset + length, value
end

-- National Best Ask Size
nasdaq_uqdf_output_utp_v1_5.national_best_ask_size = {}

-- Size: National Best Ask Size
nasdaq_uqdf_output_utp_v1_5.national_best_ask_size.size = 8

-- Display: National Best Ask Size
nasdaq_uqdf_output_utp_v1_5.national_best_ask_size.display = function(value)
  return "National Best Ask Size: "..value
end

-- Dissect: National Best Ask Size
nasdaq_uqdf_output_utp_v1_5.national_best_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.national_best_ask_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.national_best_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_size, range, value, display)

  return offset + length, value
end

-- National Best Ask Size Short
nasdaq_uqdf_output_utp_v1_5.national_best_ask_size_short = {}

-- Size: National Best Ask Size Short
nasdaq_uqdf_output_utp_v1_5.national_best_ask_size_short.size = 2

-- Display: National Best Ask Size Short
nasdaq_uqdf_output_utp_v1_5.national_best_ask_size_short.display = function(value)
  return "National Best Ask Size Short: "..value
end

-- Dissect: National Best Ask Size Short
nasdaq_uqdf_output_utp_v1_5.national_best_ask_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.national_best_ask_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.national_best_ask_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_size_short, range, value, display)

  return offset + length, value
end

-- National Best Bid Market Center
nasdaq_uqdf_output_utp_v1_5.national_best_bid_market_center = {}

-- Size: National Best Bid Market Center
nasdaq_uqdf_output_utp_v1_5.national_best_bid_market_center.size = 1

-- Display: National Best Bid Market Center
nasdaq_uqdf_output_utp_v1_5.national_best_bid_market_center.display = function(value)
  return "National Best Bid Market Center: "..value
end

-- Dissect: National Best Bid Market Center
nasdaq_uqdf_output_utp_v1_5.national_best_bid_market_center.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.national_best_bid_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.national_best_bid_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_market_center, range, value, display)

  return offset + length, value
end

-- National Best Bid Price
nasdaq_uqdf_output_utp_v1_5.national_best_bid_price = {}

-- Size: National Best Bid Price
nasdaq_uqdf_output_utp_v1_5.national_best_bid_price.size = 8

-- Display: National Best Bid Price
nasdaq_uqdf_output_utp_v1_5.national_best_bid_price.display = function(value)
  return "National Best Bid Price: "..value
end

-- Translate: National Best Bid Price
nasdaq_uqdf_output_utp_v1_5.national_best_bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: National Best Bid Price
nasdaq_uqdf_output_utp_v1_5.national_best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.national_best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.national_best_bid_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.national_best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_price, range, value, display)

  return offset + length, value
end

-- National Best Bid Price Short
nasdaq_uqdf_output_utp_v1_5.national_best_bid_price_short = {}

-- Size: National Best Bid Price Short
nasdaq_uqdf_output_utp_v1_5.national_best_bid_price_short.size = 2

-- Display: National Best Bid Price Short
nasdaq_uqdf_output_utp_v1_5.national_best_bid_price_short.display = function(value)
  return "National Best Bid Price Short: "..value
end

-- Translate: National Best Bid Price Short
nasdaq_uqdf_output_utp_v1_5.national_best_bid_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: National Best Bid Price Short
nasdaq_uqdf_output_utp_v1_5.national_best_bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.national_best_bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_uqdf_output_utp_v1_5.national_best_bid_price_short.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.national_best_bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_price_short, range, value, display)

  return offset + length, value
end

-- National Best Bid Size
nasdaq_uqdf_output_utp_v1_5.national_best_bid_size = {}

-- Size: National Best Bid Size
nasdaq_uqdf_output_utp_v1_5.national_best_bid_size.size = 8

-- Display: National Best Bid Size
nasdaq_uqdf_output_utp_v1_5.national_best_bid_size.display = function(value)
  return "National Best Bid Size: "..value
end

-- Dissect: National Best Bid Size
nasdaq_uqdf_output_utp_v1_5.national_best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.national_best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.national_best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_size, range, value, display)

  return offset + length, value
end

-- National Best Bid Size Short
nasdaq_uqdf_output_utp_v1_5.national_best_bid_size_short = {}

-- Size: National Best Bid Size Short
nasdaq_uqdf_output_utp_v1_5.national_best_bid_size_short.size = 2

-- Display: National Best Bid Size Short
nasdaq_uqdf_output_utp_v1_5.national_best_bid_size_short.display = function(value)
  return "National Best Bid Size Short: "..value
end

-- Dissect: National Best Bid Size Short
nasdaq_uqdf_output_utp_v1_5.national_best_bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.national_best_bid_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.national_best_bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_size_short, range, value, display)

  return offset + length, value
end

-- Nbbo Appendage Indicator
nasdaq_uqdf_output_utp_v1_5.nbbo_appendage_indicator = {}

-- Size: Nbbo Appendage Indicator
nasdaq_uqdf_output_utp_v1_5.nbbo_appendage_indicator.size = 1

-- Display: Nbbo Appendage Indicator
nasdaq_uqdf_output_utp_v1_5.nbbo_appendage_indicator.display = function(value)
  if value == "0" then
    return "Nbbo Appendage Indicator: No National Bbo Change (0)"
  end
  if value == "1" then
    return "Nbbo Appendage Indicator: No National Bbo Can Be Calculated (1)"
  end
  if value == "2" then
    return "Nbbo Appendage Indicator: Short Form National Bbo Appendage (2)"
  end
  if value == "3" then
    return "Nbbo Appendage Indicator: Long Form National Bbo Appendage (3)"
  end
  if value == "4" then
    return "Nbbo Appendage Indicator: Quote Contains All National Bbo Information (4)"
  end

  return "Nbbo Appendage Indicator: Unknown("..value..")"
end

-- Dissect: Nbbo Appendage Indicator
nasdaq_uqdf_output_utp_v1_5.nbbo_appendage_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.nbbo_appendage_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.nbbo_appendage_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.nbbo_appendage_indicator, range, value, display)

  return offset + length, value
end

-- Nbbo Quote Condition
nasdaq_uqdf_output_utp_v1_5.nbbo_quote_condition = {}

-- Size: Nbbo Quote Condition
nasdaq_uqdf_output_utp_v1_5.nbbo_quote_condition.size = 1

-- Display: Nbbo Quote Condition
nasdaq_uqdf_output_utp_v1_5.nbbo_quote_condition.display = function(value)
  if value == "A" then
    return "Nbbo Quote Condition: Manual Ask Automated Bid (A)"
  end
  if value == "B" then
    return "Nbbo Quote Condition: Manual Bid Automated Ask (B)"
  end
  if value == "F" then
    return "Nbbo Quote Condition: Fast Trading (F)"
  end
  if value == "H" then
    return "Nbbo Quote Condition: Manual Bid And Ask (H)"
  end
  if value == "I" then
    return "Nbbo Quote Condition: Order Imbalance (I)"
  end
  if value == "L" then
    return "Nbbo Quote Condition: Closed Quote (L)"
  end
  if value == "N" then
    return "Nbbo Quote Condition: Non Firm Quote (N)"
  end
  if value == "O" then
    return "Nbbo Quote Condition: Opening Quote Automated (O)"
  end
  if value == "R" then
    return "Nbbo Quote Condition: Regular Two Sided Open Quote Automated (R)"
  end
  if value == "U" then
    return "Nbbo Quote Condition: Manual Bid And Ask Non Firm (U)"
  end
  if value == "X" then
    return "Nbbo Quote Condition: Order Influx (X)"
  end
  if value == "Y" then
    return "Nbbo Quote Condition: Automated Bid No Offer Or Automated Offer No Bid (Y)"
  end
  if value == "Z" then
    return "Nbbo Quote Condition: No Open No Resume (Z)"
  end
  if value == "4" then
    return "Nbbo Quote Condition: Intraday Auction (4)"
  end

  return "Nbbo Quote Condition: Unknown("..value..")"
end

-- Dissect: Nbbo Quote Condition
nasdaq_uqdf_output_utp_v1_5.nbbo_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.nbbo_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.nbbo_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.nbbo_quote_condition, range, value, display)

  return offset + length, value
end

-- Number Of Market Center Attachments
nasdaq_uqdf_output_utp_v1_5.number_of_market_center_attachments = {}

-- Size: Number Of Market Center Attachments
nasdaq_uqdf_output_utp_v1_5.number_of_market_center_attachments.size = 2

-- Display: Number Of Market Center Attachments
nasdaq_uqdf_output_utp_v1_5.number_of_market_center_attachments.display = function(value)
  return "Number Of Market Center Attachments: "..value
end

-- Dissect: Number Of Market Center Attachments
nasdaq_uqdf_output_utp_v1_5.number_of_market_center_attachments.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.number_of_market_center_attachments.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.number_of_market_center_attachments.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.number_of_market_center_attachments, range, value, display)

  return offset + length, value
end

-- Old Symbol
nasdaq_uqdf_output_utp_v1_5.old_symbol = {}

-- Size: Old Symbol
nasdaq_uqdf_output_utp_v1_5.old_symbol.size = 11

-- Display: Old Symbol
nasdaq_uqdf_output_utp_v1_5.old_symbol.display = function(value)
  return "Old Symbol: "..value
end

-- Dissect: Old Symbol
nasdaq_uqdf_output_utp_v1_5.old_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.old_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_uqdf_output_utp_v1_5.old_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.old_symbol, range, value, display)

  return offset + length, value
end

-- Participant Timestamp
nasdaq_uqdf_output_utp_v1_5.participant_timestamp = {}

-- Size: Participant Timestamp
nasdaq_uqdf_output_utp_v1_5.participant_timestamp.size = 8

-- Display: Participant Timestamp
nasdaq_uqdf_output_utp_v1_5.participant_timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Participant Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Participant Timestamp
nasdaq_uqdf_output_utp_v1_5.participant_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.participant_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.participant_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.participant_timestamp, range, value, display)

  return offset + length, value
end

-- Participant Token
nasdaq_uqdf_output_utp_v1_5.participant_token = {}

-- Size: Participant Token
nasdaq_uqdf_output_utp_v1_5.participant_token.size = 8

-- Display: Participant Token
nasdaq_uqdf_output_utp_v1_5.participant_token.display = function(value)
  return "Participant Token: "..value
end

-- Dissect: Participant Token
nasdaq_uqdf_output_utp_v1_5.participant_token.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.participant_token.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.participant_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.participant_token, range, value, display)

  return offset + length, value
end

-- Quote Condition
nasdaq_uqdf_output_utp_v1_5.quote_condition = {}

-- Size: Quote Condition
nasdaq_uqdf_output_utp_v1_5.quote_condition.size = 1

-- Display: Quote Condition
nasdaq_uqdf_output_utp_v1_5.quote_condition.display = function(value)
  if value == "A" then
    return "Quote Condition: Manual Ask Automated Bid (A)"
  end
  if value == "B" then
    return "Quote Condition: Manual Bid Automated Ask (B)"
  end
  if value == "F" then
    return "Quote Condition: Fast Trading (F)"
  end
  if value == "H" then
    return "Quote Condition: Manual Bid And Ask (H)"
  end
  if value == "I" then
    return "Quote Condition: Order Imbalance (I)"
  end
  if value == "L" then
    return "Quote Condition: Closed Quote (L)"
  end
  if value == "N" then
    return "Quote Condition: Non Firm Quote (N)"
  end
  if value == "O" then
    return "Quote Condition: Opening Quote Automated (O)"
  end
  if value == "R" then
    return "Quote Condition: Regular Two Sided Open Quote Automated (R)"
  end
  if value == "U" then
    return "Quote Condition: Manual Bid And Ask Non Firm (U)"
  end
  if value == "X" then
    return "Quote Condition: Order Influx (X)"
  end
  if value == "Y" then
    return "Quote Condition: Automated Bid No Offer Or Automated Offer No Bid (Y)"
  end
  if value == "Z" then
    return "Quote Condition: No Open No Resume (Z)"
  end
  if value == "4" then
    return "Quote Condition: Intraday Auction (4)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nasdaq_uqdf_output_utp_v1_5.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Quote Message Type
nasdaq_uqdf_output_utp_v1_5.quote_message_type = {}

-- Size: Quote Message Type
nasdaq_uqdf_output_utp_v1_5.quote_message_type.size = 1

-- Display: Quote Message Type
nasdaq_uqdf_output_utp_v1_5.quote_message_type.display = function(value)
  return "Quote Message Type: "..value
end

-- Dissect: Quote Message Type
nasdaq_uqdf_output_utp_v1_5.quote_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.quote_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.quote_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.quote_message_type, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_uqdf_output_utp_v1_5.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_uqdf_output_utp_v1_5.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_uqdf_output_utp_v1_5.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test In Effect (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho In Effect Due To An Intra Day Price Drop (1)"
  end
  if value == "2" then
    return "Reg Sho Action: Reg Sho Restriction Remains In Effect (2)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
nasdaq_uqdf_output_utp_v1_5.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Retail Interest Indicator
nasdaq_uqdf_output_utp_v1_5.retail_interest_indicator = {}

-- Size: Retail Interest Indicator
nasdaq_uqdf_output_utp_v1_5.retail_interest_indicator.size = 1

-- Display: Retail Interest Indicator
nasdaq_uqdf_output_utp_v1_5.retail_interest_indicator.display = function(value)
  if value == " " then
    return "Retail Interest Indicator: Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Retail Interest Indicator: On Bid Quote (A)"
  end
  if value == "B" then
    return "Retail Interest Indicator: On Ask Quote (B)"
  end
  if value == "C" then
    return "Retail Interest Indicator: On Both Bid And Ask Quote (C)"
  end

  return "Retail Interest Indicator: Unknown("..value..")"
end

-- Dissect: Retail Interest Indicator
nasdaq_uqdf_output_utp_v1_5.retail_interest_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.retail_interest_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.retail_interest_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.retail_interest_indicator, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_uqdf_output_utp_v1_5.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_uqdf_output_utp_v1_5.round_lot_size.size = 2

-- Display: Round Lot Size
nasdaq_uqdf_output_utp_v1_5.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_uqdf_output_utp_v1_5.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Sequence
nasdaq_uqdf_output_utp_v1_5.sequence = {}

-- Size: Sequence
nasdaq_uqdf_output_utp_v1_5.sequence.size = 8

-- Display: Sequence
nasdaq_uqdf_output_utp_v1_5.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
nasdaq_uqdf_output_utp_v1_5.sequence.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.sequence.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_uqdf_output_utp_v1_5.session = {}

-- Size: Session
nasdaq_uqdf_output_utp_v1_5.session.size = 10

-- Display: Session
nasdaq_uqdf_output_utp_v1_5.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_uqdf_output_utp_v1_5.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_uqdf_output_utp_v1_5.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.session, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_uqdf_output_utp_v1_5.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_uqdf_output_utp_v1_5.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_uqdf_output_utp_v1_5.short_sale_threshold_indicator.display = function(value)
  if value == "Y" then
    return "Short Sale Threshold Indicator: Issue Is Restricted (Y)"
  end
  if value == "N" then
    return "Short Sale Threshold Indicator: Issue Is Not Restricted (N)"
  end
  if value == " " then
    return "Short Sale Threshold Indicator: Not Available (<whitespace>)"
  end

  return "Short Sale Threshold Indicator: Unknown("..value..")"
end

-- Dissect: Short Sale Threshold Indicator
nasdaq_uqdf_output_utp_v1_5.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Sip Generated Update
nasdaq_uqdf_output_utp_v1_5.sip_generated_update = {}

-- Size: Sip Generated Update
nasdaq_uqdf_output_utp_v1_5.sip_generated_update.size = 1

-- Display: Sip Generated Update
nasdaq_uqdf_output_utp_v1_5.sip_generated_update.display = function(value)
  if value == " " then
    return "Sip Generated Update: Originated From The Market Participant (<whitespace>)"
  end
  if value == "E" then
    return "Sip Generated Update: Si Pgenerated Transaction (E)"
  end

  return "Sip Generated Update: Unknown("..value..")"
end

-- Dissect: Sip Generated Update
nasdaq_uqdf_output_utp_v1_5.sip_generated_update.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.sip_generated_update.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.sip_generated_update.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.sip_generated_update, range, value, display)

  return offset + length, value
end

-- Sip Timestamp
nasdaq_uqdf_output_utp_v1_5.sip_timestamp = {}

-- Size: Sip Timestamp
nasdaq_uqdf_output_utp_v1_5.sip_timestamp.size = 8

-- Display: Sip Timestamp
nasdaq_uqdf_output_utp_v1_5.sip_timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Sip Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sip Timestamp
nasdaq_uqdf_output_utp_v1_5.sip_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.sip_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.sip_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.sip_timestamp, range, value, display)

  return offset + length, value
end

-- Special Condition
nasdaq_uqdf_output_utp_v1_5.special_condition = {}

-- Size: Special Condition
nasdaq_uqdf_output_utp_v1_5.special_condition.size = 1

-- Display: Special Condition
nasdaq_uqdf_output_utp_v1_5.special_condition.display = function(value)
  if value == "O" then
    return "Special Condition: One Sided National Bbo At Market Close (O)"
  end
  if value == "H" then
    return "Special Condition: Trading Halt In Effect At Market Close (H)"
  end
  if value == "M" then
    return "Special Condition: No Eligible Market Participant Quotes In Issue At Market Close (M)"
  end
  if value == " " then
    return "Special Condition: No Special Condition Exists (<whitespace>)"
  end

  return "Special Condition: Unknown("..value..")"
end

-- Dissect: Special Condition
nasdaq_uqdf_output_utp_v1_5.special_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.special_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.special_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.special_condition, range, value, display)

  return offset + length, value
end

-- Sub Market Center Id
nasdaq_uqdf_output_utp_v1_5.sub_market_center_id = {}

-- Size: Sub Market Center Id
nasdaq_uqdf_output_utp_v1_5.sub_market_center_id.size = 1

-- Display: Sub Market Center Id
nasdaq_uqdf_output_utp_v1_5.sub_market_center_id.display = function(value)
  if value == "N" then
    return "Sub Market Center Id: Nyse Trf (N)"
  end
  if value == "Q" then
    return "Sub Market Center Id: Nasdaq Trf Carteret (Q)"
  end
  if value == "B" then
    return "Sub Market Center Id: Nasdaq Trf Chicago (B)"
  end
  if value == " " then
    return "Sub Market Center Id: Finra Alternative Display Facility (<whitespace>)"
  end

  return "Sub Market Center Id: Unknown("..value..")"
end

-- Dissect: Sub Market Center Id
nasdaq_uqdf_output_utp_v1_5.sub_market_center_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.sub_market_center_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.sub_market_center_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.sub_market_center_id, range, value, display)

  return offset + length, value
end

-- Symbol Long
nasdaq_uqdf_output_utp_v1_5.symbol_long = {}

-- Size: Symbol Long
nasdaq_uqdf_output_utp_v1_5.symbol_long.size = 11

-- Display: Symbol Long
nasdaq_uqdf_output_utp_v1_5.symbol_long.display = function(value)
  return "Symbol Long: "..value
end

-- Dissect: Symbol Long
nasdaq_uqdf_output_utp_v1_5.symbol_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.symbol_long.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_uqdf_output_utp_v1_5.symbol_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.symbol_long, range, value, display)

  return offset + length, value
end

-- Symbol Short
nasdaq_uqdf_output_utp_v1_5.symbol_short = {}

-- Size: Symbol Short
nasdaq_uqdf_output_utp_v1_5.symbol_short.size = 5

-- Display: Symbol Short
nasdaq_uqdf_output_utp_v1_5.symbol_short.display = function(value)
  return "Symbol Short: "..value
end

-- Dissect: Symbol Short
nasdaq_uqdf_output_utp_v1_5.symbol_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.symbol_short.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_uqdf_output_utp_v1_5.symbol_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.symbol_short, range, value, display)

  return offset + length, value
end

-- Text
nasdaq_uqdf_output_utp_v1_5.text = {}

-- Display: Text
nasdaq_uqdf_output_utp_v1_5.text.display = function(value)
  return "Text: "..value
end

-- Dissect runtime sized field: Text
nasdaq_uqdf_output_utp_v1_5.text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.text.display(value, packet, parent, size)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.text, range, value, display)

  return offset + size, value
end

-- Text Length
nasdaq_uqdf_output_utp_v1_5.text_length = {}

-- Size: Text Length
nasdaq_uqdf_output_utp_v1_5.text_length.size = 2

-- Display: Text Length
nasdaq_uqdf_output_utp_v1_5.text_length.display = function(value)
  return "Text Length: "..value
end

-- Dissect: Text Length
nasdaq_uqdf_output_utp_v1_5.text_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.text_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.text_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.text_length, range, value, display)

  return offset + length, value
end

-- Trading Action Code
nasdaq_uqdf_output_utp_v1_5.trading_action_code = {}

-- Size: Trading Action Code
nasdaq_uqdf_output_utp_v1_5.trading_action_code.size = 1

-- Display: Trading Action Code
nasdaq_uqdf_output_utp_v1_5.trading_action_code.display = function(value)
  if value == "H" then
    return "Trading Action Code: Trading Halt (H)"
  end
  if value == "Q" then
    return "Trading Action Code: Quotation Resumption Including After Ema (Q)"
  end
  if value == "T" then
    return "Trading Action Code: Trading Resumption (T)"
  end
  if value == "P" then
    return "Trading Action Code: Volatility Trading Pause (P)"
  end

  return "Trading Action Code: Unknown("..value..")"
end

-- Dissect: Trading Action Code
nasdaq_uqdf_output_utp_v1_5.trading_action_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.trading_action_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.trading_action_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.trading_action_code, range, value, display)

  return offset + length, value
end

-- Trading Action Reason
nasdaq_uqdf_output_utp_v1_5.trading_action_reason = {}

-- Size: Trading Action Reason
nasdaq_uqdf_output_utp_v1_5.trading_action_reason.size = 6

-- Display: Trading Action Reason
nasdaq_uqdf_output_utp_v1_5.trading_action_reason.display = function(value)
  return "Trading Action Reason: "..value
end

-- Dissect: Trading Action Reason
nasdaq_uqdf_output_utp_v1_5.trading_action_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.trading_action_reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_uqdf_output_utp_v1_5.trading_action_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.trading_action_reason, range, value, display)

  return offset + length, value
end

-- Trading Action Sequence Number
nasdaq_uqdf_output_utp_v1_5.trading_action_sequence_number = {}

-- Size: Trading Action Sequence Number
nasdaq_uqdf_output_utp_v1_5.trading_action_sequence_number.size = 4

-- Display: Trading Action Sequence Number
nasdaq_uqdf_output_utp_v1_5.trading_action_sequence_number.display = function(value)
  return "Trading Action Sequence Number: "..value
end

-- Dissect: Trading Action Sequence Number
nasdaq_uqdf_output_utp_v1_5.trading_action_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.trading_action_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.trading_action_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.trading_action_sequence_number, range, value, display)

  return offset + length, value
end

-- Version
nasdaq_uqdf_output_utp_v1_5.version = {}

-- Size: Version
nasdaq_uqdf_output_utp_v1_5.version.size = 1

-- Display: Version
nasdaq_uqdf_output_utp_v1_5.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_uqdf_output_utp_v1_5.version.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Uqdf Output Utp 1.5
-----------------------------------------------------------------------

-- Message Info
nasdaq_uqdf_output_utp_v1_5.message_info = {}

-- Size: Message Info
nasdaq_uqdf_output_utp_v1_5.message_info.size =
  nasdaq_uqdf_output_utp_v1_5.market_center_originator_id.size + 
  nasdaq_uqdf_output_utp_v1_5.sub_market_center_id.size + 
  nasdaq_uqdf_output_utp_v1_5.sip_timestamp.size + 
  nasdaq_uqdf_output_utp_v1_5.participant_timestamp.size + 
  nasdaq_uqdf_output_utp_v1_5.participant_token.size

-- Display: Message Info
nasdaq_uqdf_output_utp_v1_5.message_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Info
nasdaq_uqdf_output_utp_v1_5.message_info.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator Id: byte
  index, market_center_originator_id = nasdaq_uqdf_output_utp_v1_5.market_center_originator_id.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v1_5.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v1_5.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Participant Timestamp: long
  index, participant_timestamp = nasdaq_uqdf_output_utp_v1_5.participant_timestamp.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v1_5.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Info
nasdaq_uqdf_output_utp_v1_5.message_info.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.message_info, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.message_info.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.message_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.message_info.fields(buffer, offset, packet, parent)
  end
end

-- Quote Wipe Out Message
nasdaq_uqdf_output_utp_v1_5.quote_wipe_out_message = {}

-- Size: Quote Wipe Out Message
nasdaq_uqdf_output_utp_v1_5.quote_wipe_out_message.size =
  nasdaq_uqdf_output_utp_v1_5.message_info.size

-- Display: Quote Wipe Out Message
nasdaq_uqdf_output_utp_v1_5.quote_wipe_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Wipe Out Message
nasdaq_uqdf_output_utp_v1_5.quote_wipe_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Wipe Out Message
nasdaq_uqdf_output_utp_v1_5.quote_wipe_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.quote_wipe_out_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.quote_wipe_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.quote_wipe_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.quote_wipe_out_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Transmissions Message
nasdaq_uqdf_output_utp_v1_5.end_of_transmissions_message = {}

-- Size: End Of Transmissions Message
nasdaq_uqdf_output_utp_v1_5.end_of_transmissions_message.size =
  nasdaq_uqdf_output_utp_v1_5.message_info.size

-- Display: End Of Transmissions Message
nasdaq_uqdf_output_utp_v1_5.end_of_transmissions_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmissions Message
nasdaq_uqdf_output_utp_v1_5.end_of_transmissions_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmissions Message
nasdaq_uqdf_output_utp_v1_5.end_of_transmissions_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.end_of_transmissions_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.end_of_transmissions_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.end_of_transmissions_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.end_of_transmissions_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Session Close Message
nasdaq_uqdf_output_utp_v1_5.market_session_close_message = {}

-- Size: Market Session Close Message
nasdaq_uqdf_output_utp_v1_5.market_session_close_message.size =
  nasdaq_uqdf_output_utp_v1_5.message_info.size

-- Display: Market Session Close Message
nasdaq_uqdf_output_utp_v1_5.market_session_close_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Close Message
nasdaq_uqdf_output_utp_v1_5.market_session_close_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Close Message
nasdaq_uqdf_output_utp_v1_5.market_session_close_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_session_close_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.market_session_close_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.market_session_close_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.market_session_close_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Session Open Message
nasdaq_uqdf_output_utp_v1_5.market_session_open_message = {}

-- Size: Market Session Open Message
nasdaq_uqdf_output_utp_v1_5.market_session_open_message.size =
  nasdaq_uqdf_output_utp_v1_5.message_info.size

-- Display: Market Session Open Message
nasdaq_uqdf_output_utp_v1_5.market_session_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Open Message
nasdaq_uqdf_output_utp_v1_5.market_session_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Open Message
nasdaq_uqdf_output_utp_v1_5.market_session_open_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_session_open_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.market_session_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.market_session_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.market_session_open_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Day Message
nasdaq_uqdf_output_utp_v1_5.end_of_day_message = {}

-- Size: End Of Day Message
nasdaq_uqdf_output_utp_v1_5.end_of_day_message.size =
  nasdaq_uqdf_output_utp_v1_5.message_info.size

-- Display: End Of Day Message
nasdaq_uqdf_output_utp_v1_5.end_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Message
nasdaq_uqdf_output_utp_v1_5.end_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
nasdaq_uqdf_output_utp_v1_5.end_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.end_of_day_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.end_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.end_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.end_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Day Message
nasdaq_uqdf_output_utp_v1_5.start_of_day_message = {}

-- Size: Start Of Day Message
nasdaq_uqdf_output_utp_v1_5.start_of_day_message.size =
  nasdaq_uqdf_output_utp_v1_5.message_info.size

-- Display: Start Of Day Message
nasdaq_uqdf_output_utp_v1_5.start_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Day Message
nasdaq_uqdf_output_utp_v1_5.start_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
nasdaq_uqdf_output_utp_v1_5.start_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.start_of_day_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.start_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.start_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.start_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Control Message Payload
nasdaq_uqdf_output_utp_v1_5.control_message_payload = {}

-- Dissect: Control Message Payload
nasdaq_uqdf_output_utp_v1_5.control_message_payload.dissect = function(buffer, offset, packet, parent, control_message_type)
  -- Dissect Start Of Day Message
  if control_message_type == "I" then
    return nasdaq_uqdf_output_utp_v1_5.start_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Message
  if control_message_type == "J" then
    return nasdaq_uqdf_output_utp_v1_5.end_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Open Message
  if control_message_type == "O" then
    return nasdaq_uqdf_output_utp_v1_5.market_session_open_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Close Message
  if control_message_type == "C" then
    return nasdaq_uqdf_output_utp_v1_5.market_session_close_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Transmissions Message
  if control_message_type == "Z" then
    return nasdaq_uqdf_output_utp_v1_5.end_of_transmissions_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Wipe Out Message
  if control_message_type == "P" then
    return nasdaq_uqdf_output_utp_v1_5.quote_wipe_out_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Control Message
nasdaq_uqdf_output_utp_v1_5.control_message = {}

-- Calculate size of: Control Message
nasdaq_uqdf_output_utp_v1_5.control_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v1_5.control_message_type.size

  -- Calculate runtime size of Control Message Payload field
  local control_message_payload_offset = offset + index
  local control_message_payload_type = buffer(control_message_payload_offset - 1, 1):string()
  index = index + nasdaq_uqdf_output_utp_v1_5.control_message_payload.size(buffer, control_message_payload_offset, control_message_payload_type)

  return index
end

-- Display: Control Message
nasdaq_uqdf_output_utp_v1_5.control_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control Message
nasdaq_uqdf_output_utp_v1_5.control_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Control Message Type: 1 Byte Ascii String
  index, control_message_type = nasdaq_uqdf_output_utp_v1_5.control_message_type.dissect(buffer, index, packet, parent)

  -- Control Message Payload: Runtime Type with 6 branches
  index = nasdaq_uqdf_output_utp_v1_5.control_message_payload.dissect(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control Message
nasdaq_uqdf_output_utp_v1_5.control_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.control_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.control_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.control_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.control_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Center Close Recap
nasdaq_uqdf_output_utp_v1_5.market_center_close_recap = {}

-- Size: Market Center Close Recap
nasdaq_uqdf_output_utp_v1_5.market_center_close_recap.size =
  nasdaq_uqdf_output_utp_v1_5.market_center_identifier.size + 
  nasdaq_uqdf_output_utp_v1_5.market_center_bid_price.size + 
  nasdaq_uqdf_output_utp_v1_5.market_center_bid_size.size + 
  nasdaq_uqdf_output_utp_v1_5.market_center_ask_price.size + 
  nasdaq_uqdf_output_utp_v1_5.market_center_ask_size.size

-- Display: Market Center Close Recap
nasdaq_uqdf_output_utp_v1_5.market_center_close_recap.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Center Close Recap
nasdaq_uqdf_output_utp_v1_5.market_center_close_recap.fields = function(buffer, offset, packet, parent, market_center_close_recap_index)
  local index = offset

  -- Implicit Market Center Close Recap Index
  if market_center_close_recap_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_close_recap_index, market_center_close_recap_index)
    iteration:set_generated()
  end

  -- Market Center Identifier: byte
  index, market_center_identifier = nasdaq_uqdf_output_utp_v1_5.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Market Center Bid Price: long
  index, market_center_bid_price = nasdaq_uqdf_output_utp_v1_5.market_center_bid_price.dissect(buffer, index, packet, parent)

  -- Market Center Bid Size: long
  index, market_center_bid_size = nasdaq_uqdf_output_utp_v1_5.market_center_bid_size.dissect(buffer, index, packet, parent)

  -- Market Center Ask Price: long
  index, market_center_ask_price = nasdaq_uqdf_output_utp_v1_5.market_center_ask_price.dissect(buffer, index, packet, parent)

  -- Market Center Ask Size: long
  index, market_center_ask_size = nasdaq_uqdf_output_utp_v1_5.market_center_ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Center Close Recap
nasdaq_uqdf_output_utp_v1_5.market_center_close_recap.dissect = function(buffer, offset, packet, parent, market_center_close_recap_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_close_recap, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.market_center_close_recap.fields(buffer, offset, packet, parent, market_center_close_recap_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.market_center_close_recap.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.market_center_close_recap.fields(buffer, offset, packet, parent, market_center_close_recap_index)
  end
end

-- Session Close Recap Message
nasdaq_uqdf_output_utp_v1_5.session_close_recap_message = {}

-- Calculate size of: Session Close Recap Message
nasdaq_uqdf_output_utp_v1_5.session_close_recap_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v1_5.message_info.size

  index = index + nasdaq_uqdf_output_utp_v1_5.symbol_long.size

  index = index + nasdaq_uqdf_output_utp_v1_5.national_best_bid_market_center.size

  index = index + nasdaq_uqdf_output_utp_v1_5.national_best_bid_price.size

  index = index + nasdaq_uqdf_output_utp_v1_5.national_best_bid_size.size

  index = index + nasdaq_uqdf_output_utp_v1_5.national_best_ask_market_center.size

  index = index + nasdaq_uqdf_output_utp_v1_5.national_best_ask_price.size

  index = index + nasdaq_uqdf_output_utp_v1_5.national_best_ask_size.size

  index = index + nasdaq_uqdf_output_utp_v1_5.special_condition.size

  index = index + nasdaq_uqdf_output_utp_v1_5.number_of_market_center_attachments.size

  -- Calculate field size from count
  local market_center_close_recap_count = buffer(offset + index - 2, 2):uint()
  index = index + market_center_close_recap_count * 33

  return index
end

-- Display: Session Close Recap Message
nasdaq_uqdf_output_utp_v1_5.session_close_recap_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Close Recap Message
nasdaq_uqdf_output_utp_v1_5.session_close_recap_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_uqdf_output_utp_v1_5.symbol_long.dissect(buffer, index, packet, parent)

  -- National Best Bid Market Center: byte
  index, national_best_bid_market_center = nasdaq_uqdf_output_utp_v1_5.national_best_bid_market_center.dissect(buffer, index, packet, parent)

  -- National Best Bid Price: long
  index, national_best_bid_price = nasdaq_uqdf_output_utp_v1_5.national_best_bid_price.dissect(buffer, index, packet, parent)

  -- National Best Bid Size: long
  index, national_best_bid_size = nasdaq_uqdf_output_utp_v1_5.national_best_bid_size.dissect(buffer, index, packet, parent)

  -- National Best Ask Market Center: byte
  index, national_best_ask_market_center = nasdaq_uqdf_output_utp_v1_5.national_best_ask_market_center.dissect(buffer, index, packet, parent)

  -- National Best Ask Price: long
  index, national_best_ask_price = nasdaq_uqdf_output_utp_v1_5.national_best_ask_price.dissect(buffer, index, packet, parent)

  -- National Best Ask Size: long
  index, national_best_ask_size = nasdaq_uqdf_output_utp_v1_5.national_best_ask_size.dissect(buffer, index, packet, parent)

  -- Special Condition: byte
  index, special_condition = nasdaq_uqdf_output_utp_v1_5.special_condition.dissect(buffer, index, packet, parent)

  -- Number Of Market Center Attachments: short
  index, number_of_market_center_attachments = nasdaq_uqdf_output_utp_v1_5.number_of_market_center_attachments.dissect(buffer, index, packet, parent)

  -- Repeating: Market Center Close Recap
  for market_center_close_recap_index = 1, number_of_market_center_attachments do
    index, market_center_close_recap = nasdaq_uqdf_output_utp_v1_5.market_center_close_recap.dissect(buffer, index, packet, parent, market_center_close_recap_index)
  end

  return index
end

-- Dissect: Session Close Recap Message
nasdaq_uqdf_output_utp_v1_5.session_close_recap_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.session_close_recap_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.session_close_recap_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.session_close_recap_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.session_close_recap_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Collar Message
nasdaq_uqdf_output_utp_v1_5.auction_collar_message = {}

-- Size: Auction Collar Message
nasdaq_uqdf_output_utp_v1_5.auction_collar_message.size =
  nasdaq_uqdf_output_utp_v1_5.message_info.size + 
  nasdaq_uqdf_output_utp_v1_5.symbol_long.size + 
  nasdaq_uqdf_output_utp_v1_5.trading_action_sequence_number.size + 
  nasdaq_uqdf_output_utp_v1_5.collar_reference_price.size + 
  nasdaq_uqdf_output_utp_v1_5.collar_up_price.size + 
  nasdaq_uqdf_output_utp_v1_5.collar_down_price.size + 
  nasdaq_uqdf_output_utp_v1_5.collar_extension_indicator.size

-- Display: Auction Collar Message
nasdaq_uqdf_output_utp_v1_5.auction_collar_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Collar Message
nasdaq_uqdf_output_utp_v1_5.auction_collar_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_uqdf_output_utp_v1_5.symbol_long.dissect(buffer, index, packet, parent)

  -- Trading Action Sequence Number: int
  index, trading_action_sequence_number = nasdaq_uqdf_output_utp_v1_5.trading_action_sequence_number.dissect(buffer, index, packet, parent)

  -- Collar Reference Price: long
  index, collar_reference_price = nasdaq_uqdf_output_utp_v1_5.collar_reference_price.dissect(buffer, index, packet, parent)

  -- Collar Up Price: long
  index, collar_up_price = nasdaq_uqdf_output_utp_v1_5.collar_up_price.dissect(buffer, index, packet, parent)

  -- Collar Down Price: long
  index, collar_down_price = nasdaq_uqdf_output_utp_v1_5.collar_down_price.dissect(buffer, index, packet, parent)

  -- Collar Extension Indicator: byte
  index, collar_extension_indicator = nasdaq_uqdf_output_utp_v1_5.collar_extension_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Collar Message
nasdaq_uqdf_output_utp_v1_5.auction_collar_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.auction_collar_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.auction_collar_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.auction_collar_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.auction_collar_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Wide Circuit Breaker Status Message
nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_status_message = {}

-- Size: Market Wide Circuit Breaker Status Message
nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_status_message.size =
  nasdaq_uqdf_output_utp_v1_5.message_info.size + 
  nasdaq_uqdf_output_utp_v1_5.mwcb_status_level_indicator.size

-- Display: Market Wide Circuit Breaker Status Message
nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Status Message
nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Mwcb Status Level Indicator: byte
  index, mwcb_status_level_indicator = nasdaq_uqdf_output_utp_v1_5.mwcb_status_level_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Status Message
nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_wide_circuit_breaker_status_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Wide Circuit Breaker Decline Level Message
nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message = {}

-- Size: Market Wide Circuit Breaker Decline Level Message
nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.size =
  nasdaq_uqdf_output_utp_v1_5.message_info.size + 
  nasdaq_uqdf_output_utp_v1_5.mwcb_level_1.size + 
  nasdaq_uqdf_output_utp_v1_5.mwcb_level_2.size + 
  nasdaq_uqdf_output_utp_v1_5.mwcb_level_3.size

-- Display: Market Wide Circuit Breaker Decline Level Message
nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Decline Level Message
nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Mwcb Level 1: long
  index, mwcb_level_1 = nasdaq_uqdf_output_utp_v1_5.mwcb_level_1.dissect(buffer, index, packet, parent)

  -- Mwcb Level 2: long
  index, mwcb_level_2 = nasdaq_uqdf_output_utp_v1_5.mwcb_level_2.dissect(buffer, index, packet, parent)

  -- Mwcb Level 3: long
  index, mwcb_level_3 = nasdaq_uqdf_output_utp_v1_5.mwcb_level_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Decline Level Message
nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_wide_circuit_breaker_decline_level_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Limit Up Limit Down Price Band Message
nasdaq_uqdf_output_utp_v1_5.limit_up_limit_down_price_band_message = {}

-- Size: Limit Up Limit Down Price Band Message
nasdaq_uqdf_output_utp_v1_5.limit_up_limit_down_price_band_message.size =
  nasdaq_uqdf_output_utp_v1_5.message_info.size + 
  nasdaq_uqdf_output_utp_v1_5.symbol_long.size + 
  nasdaq_uqdf_output_utp_v1_5.luld_price_band_indicator.size + 
  nasdaq_uqdf_output_utp_v1_5.luld_timestamp.size + 
  nasdaq_uqdf_output_utp_v1_5.limit_down_price.size + 
  nasdaq_uqdf_output_utp_v1_5.limit_up_price.size

-- Display: Limit Up Limit Down Price Band Message
nasdaq_uqdf_output_utp_v1_5.limit_up_limit_down_price_band_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Up Limit Down Price Band Message
nasdaq_uqdf_output_utp_v1_5.limit_up_limit_down_price_band_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_uqdf_output_utp_v1_5.symbol_long.dissect(buffer, index, packet, parent)

  -- Luld Price Band Indicator: byte
  index, luld_price_band_indicator = nasdaq_uqdf_output_utp_v1_5.luld_price_band_indicator.dissect(buffer, index, packet, parent)

  -- Luld Timestamp: long
  index, luld_timestamp = nasdaq_uqdf_output_utp_v1_5.luld_timestamp.dissect(buffer, index, packet, parent)

  -- Limit Down Price: long
  index, limit_down_price = nasdaq_uqdf_output_utp_v1_5.limit_down_price.dissect(buffer, index, packet, parent)

  -- Limit Up Price: long
  index, limit_up_price = nasdaq_uqdf_output_utp_v1_5.limit_up_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Limit Up Limit Down Price Band Message
nasdaq_uqdf_output_utp_v1_5.limit_up_limit_down_price_band_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.limit_up_limit_down_price_band_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.limit_up_limit_down_price_band_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.limit_up_limit_down_price_band_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.limit_up_limit_down_price_band_message.fields(buffer, offset, packet, parent)
  end
end

-- Regulation Sho Short Sale Price Test Restricted Indicator Message
nasdaq_uqdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message = {}

-- Size: Regulation Sho Short Sale Price Test Restricted Indicator Message
nasdaq_uqdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.size =
  nasdaq_uqdf_output_utp_v1_5.message_info.size + 
  nasdaq_uqdf_output_utp_v1_5.symbol_short.size + 
  nasdaq_uqdf_output_utp_v1_5.reg_sho_action.size

-- Display: Regulation Sho Short Sale Price Test Restricted Indicator Message
nasdaq_uqdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Regulation Sho Short Sale Price Test Restricted Indicator Message
nasdaq_uqdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Symbol Short: byte[]
  index, symbol_short = nasdaq_uqdf_output_utp_v1_5.symbol_short.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: byte
  index, reg_sho_action = nasdaq_uqdf_output_utp_v1_5.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Regulation Sho Short Sale Price Test Restricted Indicator Message
nasdaq_uqdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.regulation_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Issue Symbol Directory Message
nasdaq_uqdf_output_utp_v1_5.issue_symbol_directory_message = {}

-- Size: Issue Symbol Directory Message
nasdaq_uqdf_output_utp_v1_5.issue_symbol_directory_message.size =
  nasdaq_uqdf_output_utp_v1_5.message_info.size + 
  nasdaq_uqdf_output_utp_v1_5.symbol_long.size + 
  nasdaq_uqdf_output_utp_v1_5.old_symbol.size + 
  nasdaq_uqdf_output_utp_v1_5.issue_name.size + 
  nasdaq_uqdf_output_utp_v1_5.issue_type.size + 
  nasdaq_uqdf_output_utp_v1_5.issue_subtype.size + 
  nasdaq_uqdf_output_utp_v1_5.market_tier.size + 
  nasdaq_uqdf_output_utp_v1_5.authenticity.size + 
  nasdaq_uqdf_output_utp_v1_5.short_sale_threshold_indicator.size + 
  nasdaq_uqdf_output_utp_v1_5.round_lot_size.size + 
  nasdaq_uqdf_output_utp_v1_5.financial_status_indicator.size

-- Display: Issue Symbol Directory Message
nasdaq_uqdf_output_utp_v1_5.issue_symbol_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Issue Symbol Directory Message
nasdaq_uqdf_output_utp_v1_5.issue_symbol_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_uqdf_output_utp_v1_5.symbol_long.dissect(buffer, index, packet, parent)

  -- Old Symbol: byte[]
  index, old_symbol = nasdaq_uqdf_output_utp_v1_5.old_symbol.dissect(buffer, index, packet, parent)

  -- Issue Name: byte[]
  index, issue_name = nasdaq_uqdf_output_utp_v1_5.issue_name.dissect(buffer, index, packet, parent)

  -- Issue Type: byte
  index, issue_type = nasdaq_uqdf_output_utp_v1_5.issue_type.dissect(buffer, index, packet, parent)

  -- Issue Subtype: byte[]
  index, issue_subtype = nasdaq_uqdf_output_utp_v1_5.issue_subtype.dissect(buffer, index, packet, parent)

  -- Market Tier: byte
  index, market_tier = nasdaq_uqdf_output_utp_v1_5.market_tier.dissect(buffer, index, packet, parent)

  -- Authenticity: byte
  index, authenticity = nasdaq_uqdf_output_utp_v1_5.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: byte
  index, short_sale_threshold_indicator = nasdaq_uqdf_output_utp_v1_5.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: short
  index, round_lot_size = nasdaq_uqdf_output_utp_v1_5.round_lot_size.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: byte
  index, financial_status_indicator = nasdaq_uqdf_output_utp_v1_5.financial_status_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Issue Symbol Directory Message
nasdaq_uqdf_output_utp_v1_5.issue_symbol_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.issue_symbol_directory_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.issue_symbol_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.issue_symbol_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.issue_symbol_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Center Trading Action Message
nasdaq_uqdf_output_utp_v1_5.market_center_trading_action_message = {}

-- Size: Market Center Trading Action Message
nasdaq_uqdf_output_utp_v1_5.market_center_trading_action_message.size =
  nasdaq_uqdf_output_utp_v1_5.message_info.size + 
  nasdaq_uqdf_output_utp_v1_5.symbol_long.size + 
  nasdaq_uqdf_output_utp_v1_5.trading_action_code.size + 
  nasdaq_uqdf_output_utp_v1_5.action_timestamp.size + 
  nasdaq_uqdf_output_utp_v1_5.market_center_identifier.size

-- Display: Market Center Trading Action Message
nasdaq_uqdf_output_utp_v1_5.market_center_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Center Trading Action Message
nasdaq_uqdf_output_utp_v1_5.market_center_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_uqdf_output_utp_v1_5.symbol_long.dissect(buffer, index, packet, parent)

  -- Trading Action Code: byte
  index, trading_action_code = nasdaq_uqdf_output_utp_v1_5.trading_action_code.dissect(buffer, index, packet, parent)

  -- Action Timestamp: long
  index, action_timestamp = nasdaq_uqdf_output_utp_v1_5.action_timestamp.dissect(buffer, index, packet, parent)

  -- Market Center Identifier: byte
  index, market_center_identifier = nasdaq_uqdf_output_utp_v1_5.market_center_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Center Trading Action Message
nasdaq_uqdf_output_utp_v1_5.market_center_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_trading_action_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.market_center_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.market_center_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.market_center_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Sro Trading Action Message
nasdaq_uqdf_output_utp_v1_5.cross_sro_trading_action_message = {}

-- Size: Cross Sro Trading Action Message
nasdaq_uqdf_output_utp_v1_5.cross_sro_trading_action_message.size =
  nasdaq_uqdf_output_utp_v1_5.message_info.size + 
  nasdaq_uqdf_output_utp_v1_5.symbol_long.size + 
  nasdaq_uqdf_output_utp_v1_5.trading_action_code.size + 
  nasdaq_uqdf_output_utp_v1_5.trading_action_sequence_number.size + 
  nasdaq_uqdf_output_utp_v1_5.action_timestamp.size + 
  nasdaq_uqdf_output_utp_v1_5.trading_action_reason.size

-- Display: Cross Sro Trading Action Message
nasdaq_uqdf_output_utp_v1_5.cross_sro_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Sro Trading Action Message
nasdaq_uqdf_output_utp_v1_5.cross_sro_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_uqdf_output_utp_v1_5.symbol_long.dissect(buffer, index, packet, parent)

  -- Trading Action Code: byte
  index, trading_action_code = nasdaq_uqdf_output_utp_v1_5.trading_action_code.dissect(buffer, index, packet, parent)

  -- Trading Action Sequence Number: int
  index, trading_action_sequence_number = nasdaq_uqdf_output_utp_v1_5.trading_action_sequence_number.dissect(buffer, index, packet, parent)

  -- Action Timestamp: long
  index, action_timestamp = nasdaq_uqdf_output_utp_v1_5.action_timestamp.dissect(buffer, index, packet, parent)

  -- Trading Action Reason: byte[]
  index, trading_action_reason = nasdaq_uqdf_output_utp_v1_5.trading_action_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Sro Trading Action Message
nasdaq_uqdf_output_utp_v1_5.cross_sro_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.cross_sro_trading_action_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.cross_sro_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.cross_sro_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.cross_sro_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- General Administrative Message
nasdaq_uqdf_output_utp_v1_5.general_administrative_message = {}

-- Calculate size of: General Administrative Message
nasdaq_uqdf_output_utp_v1_5.general_administrative_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v1_5.message_info.size

  index = index + nasdaq_uqdf_output_utp_v1_5.text_length.size

  -- Parse runtime size of: Text
  index = index + buffer(offset + index - 2, 2):uint()

  return index
end

-- Display: General Administrative Message
nasdaq_uqdf_output_utp_v1_5.general_administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: General Administrative Message
nasdaq_uqdf_output_utp_v1_5.general_administrative_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Text Length: short
  index, text_length = nasdaq_uqdf_output_utp_v1_5.text_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Text
  index, text = nasdaq_uqdf_output_utp_v1_5.text.dissect(buffer, index, packet, parent, text_length)

  return index
end

-- Dissect: General Administrative Message
nasdaq_uqdf_output_utp_v1_5.general_administrative_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.general_administrative_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.general_administrative_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.general_administrative_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.general_administrative_message.fields(buffer, offset, packet, parent)
  end
end

-- Administrative Message Payload
nasdaq_uqdf_output_utp_v1_5.administrative_message_payload = {}

-- Dissect: Administrative Message Payload
nasdaq_uqdf_output_utp_v1_5.administrative_message_payload.dissect = function(buffer, offset, packet, parent, administrative_message_type)
  -- Dissect General Administrative Message
  if administrative_message_type == "A" then
    return nasdaq_uqdf_output_utp_v1_5.general_administrative_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Sro Trading Action Message
  if administrative_message_type == "H" then
    return nasdaq_uqdf_output_utp_v1_5.cross_sro_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Center Trading Action Message
  if administrative_message_type == "K" then
    return nasdaq_uqdf_output_utp_v1_5.market_center_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Symbol Directory Message
  if administrative_message_type == "B" then
    return nasdaq_uqdf_output_utp_v1_5.issue_symbol_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Regulation Sho Short Sale Price Test Restricted Indicator Message
  if administrative_message_type == "V" then
    return nasdaq_uqdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Limit Up Limit Down Price Band Message
  if administrative_message_type == "P" then
    return nasdaq_uqdf_output_utp_v1_5.limit_up_limit_down_price_band_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Wide Circuit Breaker Decline Level Message
  if administrative_message_type == "C" then
    return nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Wide Circuit Breaker Status Message
  if administrative_message_type == "D" then
    return nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Collar Message
  if administrative_message_type == "E" then
    return nasdaq_uqdf_output_utp_v1_5.auction_collar_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Session Close Recap Message
  if administrative_message_type == "R" then
    return nasdaq_uqdf_output_utp_v1_5.session_close_recap_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Administrative Message
nasdaq_uqdf_output_utp_v1_5.administrative_message = {}

-- Calculate size of: Administrative Message
nasdaq_uqdf_output_utp_v1_5.administrative_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v1_5.administrative_message_type.size

  -- Calculate runtime size of Administrative Message Payload field
  local administrative_message_payload_offset = offset + index
  local administrative_message_payload_type = buffer(administrative_message_payload_offset - 1, 1):string()
  index = index + nasdaq_uqdf_output_utp_v1_5.administrative_message_payload.size(buffer, administrative_message_payload_offset, administrative_message_payload_type)

  return index
end

-- Display: Administrative Message
nasdaq_uqdf_output_utp_v1_5.administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Administrative Message
nasdaq_uqdf_output_utp_v1_5.administrative_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Administrative Message Type: 1 Byte Ascii String
  index, administrative_message_type = nasdaq_uqdf_output_utp_v1_5.administrative_message_type.dissect(buffer, index, packet, parent)

  -- Administrative Message Payload: Runtime Type with 10 branches
  index = nasdaq_uqdf_output_utp_v1_5.administrative_message_payload.dissect(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative Message
nasdaq_uqdf_output_utp_v1_5.administrative_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.administrative_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.administrative_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.administrative_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.administrative_message.fields(buffer, offset, packet, parent)
  end
end

-- Finra Adf Market Participant Quotation Message
nasdaq_uqdf_output_utp_v1_5.finra_adf_market_participant_quotation_message = {}

-- Size: Finra Adf Market Participant Quotation Message
nasdaq_uqdf_output_utp_v1_5.finra_adf_market_participant_quotation_message.size =
  nasdaq_uqdf_output_utp_v1_5.message_info.size + 
  nasdaq_uqdf_output_utp_v1_5.finra_timestamp.size + 
  nasdaq_uqdf_output_utp_v1_5.symbol_long.size + 
  nasdaq_uqdf_output_utp_v1_5.bid_price.size + 
  nasdaq_uqdf_output_utp_v1_5.bid_size.size + 
  nasdaq_uqdf_output_utp_v1_5.ask_price.size + 
  nasdaq_uqdf_output_utp_v1_5.ask_size.size + 
  nasdaq_uqdf_output_utp_v1_5.quote_condition.size + 
  nasdaq_uqdf_output_utp_v1_5.finra_market_participant.size

-- Display: Finra Adf Market Participant Quotation Message
nasdaq_uqdf_output_utp_v1_5.finra_adf_market_participant_quotation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Finra Adf Market Participant Quotation Message
nasdaq_uqdf_output_utp_v1_5.finra_adf_market_participant_quotation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Finra Timestamp: long
  index, finra_timestamp = nasdaq_uqdf_output_utp_v1_5.finra_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_uqdf_output_utp_v1_5.symbol_long.dissect(buffer, index, packet, parent)

  -- Bid Price: long
  index, bid_price = nasdaq_uqdf_output_utp_v1_5.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: int
  index, bid_size = nasdaq_uqdf_output_utp_v1_5.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: long
  index, ask_price = nasdaq_uqdf_output_utp_v1_5.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: int
  index, ask_size = nasdaq_uqdf_output_utp_v1_5.ask_size.dissect(buffer, index, packet, parent)

  -- Quote Condition: byte
  index, quote_condition = nasdaq_uqdf_output_utp_v1_5.quote_condition.dissect(buffer, index, packet, parent)

  -- Finra Market Participant: byte[]
  index, finra_market_participant = nasdaq_uqdf_output_utp_v1_5.finra_market_participant.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Finra Adf Market Participant Quotation Message
nasdaq_uqdf_output_utp_v1_5.finra_adf_market_participant_quotation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.finra_adf_market_participant_quotation_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.finra_adf_market_participant_quotation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.finra_adf_market_participant_quotation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.finra_adf_market_participant_quotation_message.fields(buffer, offset, packet, parent)
  end
end

-- Finra Adf Mpid Appendage
nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage = {}

-- Size: Finra Adf Mpid Appendage
nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage.size =
  nasdaq_uqdf_output_utp_v1_5.bid_adf_mpid.size + 
  nasdaq_uqdf_output_utp_v1_5.ask_adf_mpid.size

-- Display: Finra Adf Mpid Appendage
nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Finra Adf Mpid Appendage
nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Adf Mpid: byte[]
  index, bid_adf_mpid = nasdaq_uqdf_output_utp_v1_5.bid_adf_mpid.dissect(buffer, index, packet, parent)

  -- Ask Adf Mpid: byte[]
  index, ask_adf_mpid = nasdaq_uqdf_output_utp_v1_5.ask_adf_mpid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Finra Adf Mpid Appendage
nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.finra_adf_mpid_appendage, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage.fields(buffer, offset, packet, parent)
  end
end

-- Long Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5.long_form_national_bbo_appendage = {}

-- Size: Long Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5.long_form_national_bbo_appendage.size =
  nasdaq_uqdf_output_utp_v1_5.nbbo_quote_condition.size + 
  nasdaq_uqdf_output_utp_v1_5.best_bid_market_center.size + 
  nasdaq_uqdf_output_utp_v1_5.best_bid_price.size + 
  nasdaq_uqdf_output_utp_v1_5.best_bid_size.size + 
  nasdaq_uqdf_output_utp_v1_5.best_ask_market_center.size + 
  nasdaq_uqdf_output_utp_v1_5.best_ask_price.size + 
  nasdaq_uqdf_output_utp_v1_5.best_ask_size.size

-- Display: Long Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5.long_form_national_bbo_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5.long_form_national_bbo_appendage.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nbbo Quote Condition: byte
  index, nbbo_quote_condition = nasdaq_uqdf_output_utp_v1_5.nbbo_quote_condition.dissect(buffer, index, packet, parent)

  -- Best Bid Market Center: byte
  index, best_bid_market_center = nasdaq_uqdf_output_utp_v1_5.best_bid_market_center.dissect(buffer, index, packet, parent)

  -- Best Bid Price: long
  index, best_bid_price = nasdaq_uqdf_output_utp_v1_5.best_bid_price.dissect(buffer, index, packet, parent)

  -- Best Bid Size: int
  index, best_bid_size = nasdaq_uqdf_output_utp_v1_5.best_bid_size.dissect(buffer, index, packet, parent)

  -- Best Ask Market Center: byte
  index, best_ask_market_center = nasdaq_uqdf_output_utp_v1_5.best_ask_market_center.dissect(buffer, index, packet, parent)

  -- Best Ask Price: long
  index, best_ask_price = nasdaq_uqdf_output_utp_v1_5.best_ask_price.dissect(buffer, index, packet, parent)

  -- Best Ask Size: int
  index, best_ask_size = nasdaq_uqdf_output_utp_v1_5.best_ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5.long_form_national_bbo_appendage.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.long_form_national_bbo_appendage, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.long_form_national_bbo_appendage.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.long_form_national_bbo_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.long_form_national_bbo_appendage.fields(buffer, offset, packet, parent)
  end
end

-- Short Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5.short_form_national_bbo_appendage = {}

-- Size: Short Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5.short_form_national_bbo_appendage.size =
  nasdaq_uqdf_output_utp_v1_5.nbbo_quote_condition.size + 
  nasdaq_uqdf_output_utp_v1_5.national_best_bid_market_center.size + 
  nasdaq_uqdf_output_utp_v1_5.national_best_bid_price_short.size + 
  nasdaq_uqdf_output_utp_v1_5.national_best_bid_size_short.size + 
  nasdaq_uqdf_output_utp_v1_5.national_best_ask_market_center.size + 
  nasdaq_uqdf_output_utp_v1_5.national_best_ask_price_short.size + 
  nasdaq_uqdf_output_utp_v1_5.national_best_ask_size_short.size

-- Display: Short Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5.short_form_national_bbo_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5.short_form_national_bbo_appendage.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nbbo Quote Condition: byte
  index, nbbo_quote_condition = nasdaq_uqdf_output_utp_v1_5.nbbo_quote_condition.dissect(buffer, index, packet, parent)

  -- National Best Bid Market Center: byte
  index, national_best_bid_market_center = nasdaq_uqdf_output_utp_v1_5.national_best_bid_market_center.dissect(buffer, index, packet, parent)

  -- National Best Bid Price Short: short
  index, national_best_bid_price_short = nasdaq_uqdf_output_utp_v1_5.national_best_bid_price_short.dissect(buffer, index, packet, parent)

  -- National Best Bid Size Short: short
  index, national_best_bid_size_short = nasdaq_uqdf_output_utp_v1_5.national_best_bid_size_short.dissect(buffer, index, packet, parent)

  -- National Best Ask Market Center: byte
  index, national_best_ask_market_center = nasdaq_uqdf_output_utp_v1_5.national_best_ask_market_center.dissect(buffer, index, packet, parent)

  -- National Best Ask Price Short: short
  index, national_best_ask_price_short = nasdaq_uqdf_output_utp_v1_5.national_best_ask_price_short.dissect(buffer, index, packet, parent)

  -- National Best Ask Size Short: short
  index, national_best_ask_size_short = nasdaq_uqdf_output_utp_v1_5.national_best_ask_size_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5.short_form_national_bbo_appendage.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.short_form_national_bbo_appendage, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.short_form_national_bbo_appendage.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.short_form_national_bbo_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.short_form_national_bbo_appendage.fields(buffer, offset, packet, parent)
  end
end

-- Quote Long Form Message
nasdaq_uqdf_output_utp_v1_5.quote_long_form_message = {}

-- Calculate size of: Quote Long Form Message
nasdaq_uqdf_output_utp_v1_5.quote_long_form_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v1_5.message_info.size

  index = index + nasdaq_uqdf_output_utp_v1_5.finra_timestamp.size

  index = index + nasdaq_uqdf_output_utp_v1_5.symbol_long.size

  index = index + nasdaq_uqdf_output_utp_v1_5.bid_price.size

  index = index + nasdaq_uqdf_output_utp_v1_5.bid_size.size

  index = index + nasdaq_uqdf_output_utp_v1_5.ask_price.size

  index = index + nasdaq_uqdf_output_utp_v1_5.ask_size.size

  index = index + nasdaq_uqdf_output_utp_v1_5.quote_condition.size

  index = index + nasdaq_uqdf_output_utp_v1_5.sip_generated_update.size

  index = index + nasdaq_uqdf_output_utp_v1_5.luld_bbo_indicator.size

  index = index + nasdaq_uqdf_output_utp_v1_5.retail_interest_indicator.size

  index = index + nasdaq_uqdf_output_utp_v1_5.nbbo_appendage_indicator.size

  index = index + nasdaq_uqdf_output_utp_v1_5.luld_national_bbo_indicator.size

  index = index + nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage_indicator.size

  local nbbo_appendage_indicator = buffer(offset + 73, 1):string()

  if nbbo_appendage_indicator == "2" then
    index = index + nasdaq_uqdf_output_utp_v1_5.short_form_national_bbo_appendage.size

  end

  local nbbo_appendage_indicator = buffer(offset + 73, 1):string()

  if nbbo_appendage_indicator == "3" then
    index = index + nasdaq_uqdf_output_utp_v1_5.long_form_national_bbo_appendage.size

  end

  local finra_adf_mpid_appendage_indicator = buffer(offset + 75, 1):string()

  if finra_adf_mpid_appendage_indicator == "2" then
    index = index + nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage.size

  end

  return index
end

-- Display: Quote Long Form Message
nasdaq_uqdf_output_utp_v1_5.quote_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Long Form Message
nasdaq_uqdf_output_utp_v1_5.quote_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Finra Timestamp: long
  index, finra_timestamp = nasdaq_uqdf_output_utp_v1_5.finra_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_uqdf_output_utp_v1_5.symbol_long.dissect(buffer, index, packet, parent)

  -- Bid Price: long
  index, bid_price = nasdaq_uqdf_output_utp_v1_5.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: int
  index, bid_size = nasdaq_uqdf_output_utp_v1_5.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: long
  index, ask_price = nasdaq_uqdf_output_utp_v1_5.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: int
  index, ask_size = nasdaq_uqdf_output_utp_v1_5.ask_size.dissect(buffer, index, packet, parent)

  -- Quote Condition: byte
  index, quote_condition = nasdaq_uqdf_output_utp_v1_5.quote_condition.dissect(buffer, index, packet, parent)

  -- Sip Generated Update: byte
  index, sip_generated_update = nasdaq_uqdf_output_utp_v1_5.sip_generated_update.dissect(buffer, index, packet, parent)

  -- Luld Bbo Indicator: byte
  index, luld_bbo_indicator = nasdaq_uqdf_output_utp_v1_5.luld_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Retail Interest Indicator: byte
  index, retail_interest_indicator = nasdaq_uqdf_output_utp_v1_5.retail_interest_indicator.dissect(buffer, index, packet, parent)

  -- Nbbo Appendage Indicator: byte
  index, nbbo_appendage_indicator = nasdaq_uqdf_output_utp_v1_5.nbbo_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Luld National Bbo Indicator: byte
  index, luld_national_bbo_indicator = nasdaq_uqdf_output_utp_v1_5.luld_national_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Finra Adf Mpid Appendage Indicator: byte
  index, finra_adf_mpid_appendage_indicator = nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Short Form National Bbo Appendage
  local short_form_national_bbo_appendage = nil

  local short_form_national_bbo_appendage_exists = nbbo_appendage_indicator == "2"

  if short_form_national_bbo_appendage_exists then
    index, short_form_national_bbo_appendage = nasdaq_uqdf_output_utp_v1_5.short_form_national_bbo_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Long Form National Bbo Appendage
  local long_form_national_bbo_appendage = nil

  local long_form_national_bbo_appendage_exists = nbbo_appendage_indicator == "3"

  if long_form_national_bbo_appendage_exists then
    index, long_form_national_bbo_appendage = nasdaq_uqdf_output_utp_v1_5.long_form_national_bbo_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Finra Adf Mpid Appendage
  local finra_adf_mpid_appendage = nil

  local finra_adf_mpid_appendage_exists = finra_adf_mpid_appendage_indicator == "2"

  if finra_adf_mpid_appendage_exists then
    index, finra_adf_mpid_appendage = nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Long Form Message
nasdaq_uqdf_output_utp_v1_5.quote_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.quote_long_form_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.quote_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.quote_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.quote_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Short Form Message
nasdaq_uqdf_output_utp_v1_5.quote_short_form_message = {}

-- Calculate size of: Quote Short Form Message
nasdaq_uqdf_output_utp_v1_5.quote_short_form_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v1_5.message_info.size

  index = index + nasdaq_uqdf_output_utp_v1_5.symbol_short.size

  index = index + nasdaq_uqdf_output_utp_v1_5.bid_price_short.size

  index = index + nasdaq_uqdf_output_utp_v1_5.bid_size_short.size

  index = index + nasdaq_uqdf_output_utp_v1_5.ask_price_short.size

  index = index + nasdaq_uqdf_output_utp_v1_5.ask_size_short.size

  index = index + nasdaq_uqdf_output_utp_v1_5.quote_condition.size

  index = index + nasdaq_uqdf_output_utp_v1_5.sip_generated_update.size

  index = index + nasdaq_uqdf_output_utp_v1_5.luld_bbo_indicator.size

  index = index + nasdaq_uqdf_output_utp_v1_5.retail_interest_indicator.size

  index = index + nasdaq_uqdf_output_utp_v1_5.nbbo_appendage_indicator.size

  index = index + nasdaq_uqdf_output_utp_v1_5.luld_national_bbo_indicator.size

  local nbbo_appendage_indicator = buffer(offset + 43, 1):string()

  if nbbo_appendage_indicator == "2" then
    index = index + nasdaq_uqdf_output_utp_v1_5.short_form_national_bbo_appendage.size

  end

  local nbbo_appendage_indicator = buffer(offset + 43, 1):string()

  if nbbo_appendage_indicator == "3" then
    index = index + nasdaq_uqdf_output_utp_v1_5.long_form_national_bbo_appendage.size

  end

  return index
end

-- Display: Quote Short Form Message
nasdaq_uqdf_output_utp_v1_5.quote_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Short Form Message
nasdaq_uqdf_output_utp_v1_5.quote_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Symbol Short: byte[]
  index, symbol_short = nasdaq_uqdf_output_utp_v1_5.symbol_short.dissect(buffer, index, packet, parent)

  -- Bid Price Short: short
  index, bid_price_short = nasdaq_uqdf_output_utp_v1_5.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Size Short: short
  index, bid_size_short = nasdaq_uqdf_output_utp_v1_5.bid_size_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: short
  index, ask_price_short = nasdaq_uqdf_output_utp_v1_5.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Size Short: short
  index, ask_size_short = nasdaq_uqdf_output_utp_v1_5.ask_size_short.dissect(buffer, index, packet, parent)

  -- Quote Condition: byte
  index, quote_condition = nasdaq_uqdf_output_utp_v1_5.quote_condition.dissect(buffer, index, packet, parent)

  -- Sip Generated Update: byte
  index, sip_generated_update = nasdaq_uqdf_output_utp_v1_5.sip_generated_update.dissect(buffer, index, packet, parent)

  -- Luld Bbo Indicator: byte
  index, luld_bbo_indicator = nasdaq_uqdf_output_utp_v1_5.luld_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Retail Interest Indicator: byte
  index, retail_interest_indicator = nasdaq_uqdf_output_utp_v1_5.retail_interest_indicator.dissect(buffer, index, packet, parent)

  -- Nbbo Appendage Indicator: byte
  index, nbbo_appendage_indicator = nasdaq_uqdf_output_utp_v1_5.nbbo_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Luld National Bbo Indicator: byte
  index, luld_national_bbo_indicator = nasdaq_uqdf_output_utp_v1_5.luld_national_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Short Form National Bbo Appendage
  local short_form_national_bbo_appendage = nil

  local short_form_national_bbo_appendage_exists = nbbo_appendage_indicator == "2"

  if short_form_national_bbo_appendage_exists then
    index, short_form_national_bbo_appendage = nasdaq_uqdf_output_utp_v1_5.short_form_national_bbo_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Long Form National Bbo Appendage
  local long_form_national_bbo_appendage = nil

  local long_form_national_bbo_appendage_exists = nbbo_appendage_indicator == "3"

  if long_form_national_bbo_appendage_exists then
    index, long_form_national_bbo_appendage = nasdaq_uqdf_output_utp_v1_5.long_form_national_bbo_appendage.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Short Form Message
nasdaq_uqdf_output_utp_v1_5.quote_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.quote_short_form_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.quote_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.quote_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.quote_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Message Payload
nasdaq_uqdf_output_utp_v1_5.quote_message_payload = {}

-- Dissect: Quote Message Payload
nasdaq_uqdf_output_utp_v1_5.quote_message_payload.dissect = function(buffer, offset, packet, parent, quote_message_type)
  -- Dissect Quote Short Form Message
  if quote_message_type == "E" then
    return nasdaq_uqdf_output_utp_v1_5.quote_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Long Form Message
  if quote_message_type == "F" then
    return nasdaq_uqdf_output_utp_v1_5.quote_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Finra Adf Market Participant Quotation Message
  if quote_message_type == "M" then
    return nasdaq_uqdf_output_utp_v1_5.finra_adf_market_participant_quotation_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Quote Message
nasdaq_uqdf_output_utp_v1_5.quote_message = {}

-- Calculate size of: Quote Message
nasdaq_uqdf_output_utp_v1_5.quote_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v1_5.quote_message_type.size

  -- Calculate runtime size of Quote Message Payload field
  local quote_message_payload_offset = offset + index
  local quote_message_payload_type = buffer(quote_message_payload_offset - 1, 1):string()
  index = index + nasdaq_uqdf_output_utp_v1_5.quote_message_payload.size(buffer, quote_message_payload_offset, quote_message_payload_type)

  return index
end

-- Display: Quote Message
nasdaq_uqdf_output_utp_v1_5.quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Message
nasdaq_uqdf_output_utp_v1_5.quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Message Type: 1 Byte Ascii String
  index, quote_message_type = nasdaq_uqdf_output_utp_v1_5.quote_message_type.dissect(buffer, index, packet, parent)

  -- Quote Message Payload: Runtime Type with 3 branches
  index = nasdaq_uqdf_output_utp_v1_5.quote_message_payload.dissect(buffer, index, packet, parent, quote_message_type)

  return index
end

-- Dissect: Quote Message
nasdaq_uqdf_output_utp_v1_5.quote_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.quote_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_uqdf_output_utp_v1_5.payload = {}

-- Dissect: Payload
nasdaq_uqdf_output_utp_v1_5.payload.dissect = function(buffer, offset, packet, parent, message_category)
  -- Dissect Quote Message
  if message_category == "Q" then
    return nasdaq_uqdf_output_utp_v1_5.quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Administrative Message
  if message_category == "A" then
    return nasdaq_uqdf_output_utp_v1_5.administrative_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Control Message
  if message_category == "C" then
    return nasdaq_uqdf_output_utp_v1_5.control_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_uqdf_output_utp_v1_5.message_header = {}

-- Size: Message Header
nasdaq_uqdf_output_utp_v1_5.message_header.size =
  nasdaq_uqdf_output_utp_v1_5.message_length.size + 
  nasdaq_uqdf_output_utp_v1_5.version.size + 
  nasdaq_uqdf_output_utp_v1_5.message_category.size

-- Display: Message Header
nasdaq_uqdf_output_utp_v1_5.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_uqdf_output_utp_v1_5.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_uqdf_output_utp_v1_5.message_length.dissect(buffer, index, packet, parent)

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = nasdaq_uqdf_output_utp_v1_5.version.dissect(buffer, index, packet, parent)

  -- Message Category: 1 Byte Ascii String
  index, message_category = nasdaq_uqdf_output_utp_v1_5.message_category.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_uqdf_output_utp_v1_5.message_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.message_header, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_uqdf_output_utp_v1_5.message = {}

-- Display: Message
nasdaq_uqdf_output_utp_v1_5.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_uqdf_output_utp_v1_5.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = nasdaq_uqdf_output_utp_v1_5.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 3 branches
  index = nasdaq_uqdf_output_utp_v1_5.payload.dissect(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
nasdaq_uqdf_output_utp_v1_5.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.message, buffer(offset, 0))
    local current = nasdaq_uqdf_output_utp_v1_5.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_uqdf_output_utp_v1_5.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_uqdf_output_utp_v1_5.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
nasdaq_uqdf_output_utp_v1_5.packet_header = {}

-- Size: Packet Header
nasdaq_uqdf_output_utp_v1_5.packet_header.size =
  nasdaq_uqdf_output_utp_v1_5.session.size + 
  nasdaq_uqdf_output_utp_v1_5.sequence.size + 
  nasdaq_uqdf_output_utp_v1_5.count.size

-- Display: Packet Header
nasdaq_uqdf_output_utp_v1_5.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_uqdf_output_utp_v1_5.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_uqdf_output_utp_v1_5.session.dissect(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = nasdaq_uqdf_output_utp_v1_5.sequence.dissect(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = nasdaq_uqdf_output_utp_v1_5.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_uqdf_output_utp_v1_5.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_uqdf_output_utp_v1_5.packet = {}

-- Verify required size of Udp packet
nasdaq_uqdf_output_utp_v1_5.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_uqdf_output_utp_v1_5.packet_header.size
end

-- Dissect Packet
nasdaq_uqdf_output_utp_v1_5.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_uqdf_output_utp_v1_5.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Count
  local count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = nasdaq_uqdf_output_utp_v1_5.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_uqdf_output_utp_v1_5.init()
end

-- Dissector for Nasdaq Uqdf Output Utp 1.5
function omi_nasdaq_uqdf_output_utp_v1_5.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_uqdf_output_utp_v1_5.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_uqdf_output_utp_v1_5, buffer(), omi_nasdaq_uqdf_output_utp_v1_5.description, "("..buffer:len().." Bytes)")
  return nasdaq_uqdf_output_utp_v1_5.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq Uqdf Output Utp 1.5 (Udp)
local function omi_nasdaq_uqdf_output_utp_v1_5_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_uqdf_output_utp_v1_5.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_uqdf_output_utp_v1_5
  omi_nasdaq_uqdf_output_utp_v1_5.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq Uqdf Output Utp 1.5
omi_nasdaq_uqdf_output_utp_v1_5:register_heuristic("udp", omi_nasdaq_uqdf_output_utp_v1_5_udp_heuristic)

-- Register Nasdaq Uqdf Output Utp 1.5 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_uqdf_output_utp_v1_5)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 1.5
--   Date: Friday, May 1, 2020
--   Specification: UtpBinaryOutputSpec.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
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
