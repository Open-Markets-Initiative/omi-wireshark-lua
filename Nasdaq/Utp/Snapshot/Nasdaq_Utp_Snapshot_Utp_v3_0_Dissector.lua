-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Utp Snapshot Utp 3.0 Protocol
local omi_nasdaq_utp_snapshot_utp_v3_0 = Proto("Omi.Nasdaq.Utp.Snapshot.Utp.v3.0", "Nasdaq Utp Snapshot Utp 3.0")

-- Protocol table
local nasdaq_utp_snapshot_utp_v3_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq Utp Snapshot Utp 3.0 Fields
omi_nasdaq_utp_snapshot_utp_v3_0.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.utp.snapshot.utp.v3.0.acceptedsequencenumber", ftypes.UINT64, nil, nil, nil, "Next sequenced message number the SIP will deliver, space-padded")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.utp.snapshot.utp.v3.0.acceptedsession", ftypes.STRING, nil, nil, nil, "Session ID accepted by the SIP for this client, left padded with spaces")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.action_time = ProtoField.new("Action Time", "nasdaq.utp.snapshot.utp.v3.0.actiontime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Timestamp of when the action occurred")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.action_time_utc = ProtoField.new("Action Time", "nasdaq.utp.snapshot.utp.v3.0.actiontime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Timestamp of when the action occurred")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.adf_market_participant_identifier = ProtoField.new("Adf Market Participant Identifier", "nasdaq.utp.snapshot.utp.v3.0.adfmarketparticipantidentifier", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.adf_timestamp = ProtoField.new("Adf Timestamp", "nasdaq.utp.snapshot.utp.v3.0.adftimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.adf_timestamp_utc = ProtoField.new("Adf Timestamp", "nasdaq.utp.snapshot.utp.v3.0.adftimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.administrative_message = ProtoField.new("Administrative Message", "nasdaq.utp.snapshot.utp.v3.0.administrativemessage", ftypes.STRING, nil, nil, nil, "Administrative Messages")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "nasdaq.utp.snapshot.utp.v3.0.administrativemessagetype", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.ask_adf_mpid = ProtoField.new("Ask Adf Mpid", "nasdaq.utp.snapshot.utp.v3.0.askadfmpid", ftypes.STRING, nil, nil, nil, "Ask ADF Market Participant Identifier")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.utp.snapshot.utp.v3.0.askprice", ftypes.DOUBLE, nil, nil, nil, "Ask Price, 6 implied decimal places")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.ask_size = ProtoField.new("Ask Size", "nasdaq.utp.snapshot.utp.v3.0.asksize", ftypes.UINT32)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.utp.snapshot.utp.v3.0.authenticity", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bid_adf_mpid = ProtoField.new("Bid Adf Mpid", "nasdaq.utp.snapshot.utp.v3.0.bidadfmpid", ftypes.STRING, nil, nil, nil, "Bid ADF Market Participant Identifier")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.utp.snapshot.utp.v3.0.bidprice", ftypes.DOUBLE, nil, nil, nil, "Bid Price, 6 implied decimal places")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bid_size = ProtoField.new("Bid Size", "nasdaq.utp.snapshot.utp.v3.0.bidsize", ftypes.UINT32)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_appendage_indicator = ProtoField.new("Bolo Appendage Indicator", "nasdaq.utp.snapshot.utp.v3.0.boloappendageindicator", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_appendage_mpid_form = ProtoField.new("Bolo Appendage Mpid Form", "nasdaq.utp.snapshot.utp.v3.0.boloappendagempidform", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_ask_price = ProtoField.new("Bolo Ask Price", "nasdaq.utp.snapshot.utp.v3.0.boloaskprice", ftypes.DOUBLE, nil, nil, nil, "BOLO Ask Price, 6 implied decimal places")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_ask_size = ProtoField.new("Bolo Ask Size", "nasdaq.utp.snapshot.utp.v3.0.boloasksize", ftypes.UINT16)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_best_ask_market_center = ProtoField.new("Bolo Best Ask Market Center", "nasdaq.utp.snapshot.utp.v3.0.bolobestaskmarketcenter", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_best_ask_market_participant_identifier = ProtoField.new("Bolo Best Ask Market Participant Identifier", "nasdaq.utp.snapshot.utp.v3.0.bolobestaskmarketparticipantidentifier", ftypes.STRING, nil, nil, nil, "BOLO Best Ask Market Participant Identifier (ADF MPID)")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_best_bid_market_center = ProtoField.new("Bolo Best Bid Market Center", "nasdaq.utp.snapshot.utp.v3.0.bolobestbidmarketcenter", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_best_bid_market_participant_identifier = ProtoField.new("Bolo Best Bid Market Participant Identifier", "nasdaq.utp.snapshot.utp.v3.0.bolobestbidmarketparticipantidentifier", ftypes.STRING, nil, nil, nil, "BOLO Best Bid Market Participant Identifier (ADF MPID)")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_bid_price = ProtoField.new("Bolo Bid Price", "nasdaq.utp.snapshot.utp.v3.0.bolobidprice", ftypes.DOUBLE, nil, nil, nil, "BOLO Bid Price, 6 implied decimal places")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_bid_size = ProtoField.new("Bolo Bid Size", "nasdaq.utp.snapshot.utp.v3.0.bolobidsize", ftypes.UINT16)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.utp.snapshot.utp.v3.0.clientpackettype", ftypes.STRING, nil, nil, nil, "Code identifying the SoupBinTCP packet type sent by the client")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.collar_down_price = ProtoField.new("Collar Down Price", "nasdaq.utp.snapshot.utp.v3.0.collardownprice", ftypes.DOUBLE)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.collar_extension_indicator = ProtoField.new("Collar Extension Indicator", "nasdaq.utp.snapshot.utp.v3.0.collarextensionindicator", ftypes.STRING, nil, nil, nil, "Collar Extension Indicator. First collar at the pause is 0; increments by 1 for each new collar issued during the pause; resets to 0 on a new pause event.")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.collar_reference_price = ProtoField.new("Collar Reference Price", "nasdaq.utp.snapshot.utp.v3.0.collarreferenceprice", ftypes.DOUBLE, nil, nil, nil, "Reference price used to set collar")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.collar_up_price = ProtoField.new("Collar Up Price", "nasdaq.utp.snapshot.utp.v3.0.collarupprice", ftypes.DOUBLE)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.consolidated_prior_day_close_price = ProtoField.new("Consolidated Prior Day Close Price", "nasdaq.utp.snapshot.utp.v3.0.consolidatedpriordaycloseprice", ftypes.DOUBLE, nil, nil, nil, "RESERVED. Consolidated prior day's close, adjusted if needed. Populated beginning December 6, 2026 when supported by the Listing Market.")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.control_message = ProtoField.new("Control Message", "nasdaq.utp.snapshot.utp.v3.0.controlmessage", ftypes.STRING, nil, nil, nil, "Control Messages")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.control_message_type = ProtoField.new("Control Message Type", "nasdaq.utp.snapshot.utp.v3.0.controlmessagetype", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.debug_text = ProtoField.new("Debug Text", "nasdaq.utp.snapshot.utp.v3.0.debugtext", ftypes.STRING, nil, nil, nil, "Free-form human-readable text")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.etp_indicator = ProtoField.new("Etp Indicator", "nasdaq.utp.snapshot.utp.v3.0.etpindicator", ftypes.STRING, nil, nil, nil, "Exchange Traded Product (ETP) Indicator")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.utp.snapshot.utp.v3.0.financialstatusindicator", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.finra_adf_mpid_appendage = ProtoField.new("Finra Adf Mpid Appendage", "nasdaq.utp.snapshot.utp.v3.0.finraadfmpidappendage", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.finra_adf_mpid_appendage_indicator = ProtoField.new("Finra Adf Mpid Appendage Indicator", "nasdaq.utp.snapshot.utp.v3.0.finraadfmpidappendageindicator", ftypes.STRING, nil, nil, nil, "FINRA ADF MPID Appendage Indicator. Populated with the FINRA ADF update if necessary.")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.finra_adf_timestamp = ProtoField.new("Finra Adf Timestamp", "nasdaq.utp.snapshot.utp.v3.0.finraadftimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.finra_adf_timestamp_utc = ProtoField.new("Finra Adf Timestamp", "nasdaq.utp.snapshot.utp.v3.0.finraadftimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.halt_reason = ProtoField.new("Halt Reason", "nasdaq.utp.snapshot.utp.v3.0.haltreason", ftypes.STRING, nil, nil, nil, "Reason for Halt, when Trading State indicates halted")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.issue_name = ProtoField.new("Issue Name", "nasdaq.utp.snapshot.utp.v3.0.issuename", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.issue_subtype = ProtoField.new("Issue Subtype", "nasdaq.utp.snapshot.utp.v3.0.issuesubtype", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.issue_type = ProtoField.new("Issue Type", "nasdaq.utp.snapshot.utp.v3.0.issuetype", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.limit_down_price = ProtoField.new("Limit Down Price", "nasdaq.utp.snapshot.utp.v3.0.limitdownprice", ftypes.DOUBLE, nil, nil, nil, "Limit Down Price, 6 implied decimal places")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.limit_up_price = ProtoField.new("Limit Up Price", "nasdaq.utp.snapshot.utp.v3.0.limitupprice", ftypes.DOUBLE, nil, nil, nil, "Limit Up Price, 6 implied decimal places")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.listing_market_official_prior_day_close_price = ProtoField.new("Listing Market Official Prior Day Close Price", "nasdaq.utp.snapshot.utp.v3.0.listingmarketofficialpriordaycloseprice", ftypes.DOUBLE, nil, nil, nil, "RESERVED. Listing Market's official prior day's close, adjusted if needed. Populated beginning December 6, 2026 when supported by the Listing Market.")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.luld_bbo_indicator = ProtoField.new("Luld Bbo Indicator", "nasdaq.utp.snapshot.utp.v3.0.luldbboindicator", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.luld_national_bbo_indicator = ProtoField.new("Luld National Bbo Indicator", "nasdaq.utp.snapshot.utp.v3.0.luldnationalbboindicator", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.luld_price_band_effective_time = ProtoField.new("Luld Price Band Effective Time", "nasdaq.utp.snapshot.utp.v3.0.luldpricebandeffectivetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.luld_price_band_effective_time_utc = ProtoField.new("Luld Price Band Effective Time", "nasdaq.utp.snapshot.utp.v3.0.luldpricebandeffectivetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.luld_price_band_indicator = ProtoField.new("Luld Price Band Indicator", "nasdaq.utp.snapshot.utp.v3.0.luldpricebandindicator", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_center_id = ProtoField.new("Market Center Id", "nasdaq.utp.snapshot.utp.v3.0.marketcenterid", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_center_identifier = ProtoField.new("Market Center Identifier", "nasdaq.utp.snapshot.utp.v3.0.marketcenteridentifier", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_center_originator = ProtoField.new("Market Center Originator", "nasdaq.utp.snapshot.utp.v3.0.marketcenteroriginator", ftypes.STRING, nil, nil, nil, "Market Center Originator ID")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_tier = ProtoField.new("Market Tier", "nasdaq.utp.snapshot.utp.v3.0.markettier", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.message_category = ProtoField.new("Message Category", "nasdaq.utp.snapshot.utp.v3.0.messagecategory", ftypes.STRING, nil, nil, nil, "UTP Snap-Shot message category: A (Administrative), C (Control), or Q (Quote)")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.mpi_tick = ProtoField.new("Mpi Tick", "nasdaq.utp.snapshot.utp.v3.0.mpitick", ftypes.STRING, nil, nil, nil, "MPI Tick Rule. All symbols carry Penny MPI until Half-Penny MPI is introduced Nov 2026 per SEC mandate.")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.mwcb_level_1 = ProtoField.new("Mwcb Level 1", "nasdaq.utp.snapshot.utp.v3.0.mwcblevel1", ftypes.UINT64, nil, nil, nil, "MWCB Level 1 (7% decline) price")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.mwcb_level_2 = ProtoField.new("Mwcb Level 2", "nasdaq.utp.snapshot.utp.v3.0.mwcblevel2", ftypes.UINT64, nil, nil, nil, "MWCB Level 2 (13% decline) price")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.mwcb_level_3 = ProtoField.new("Mwcb Level 3", "nasdaq.utp.snapshot.utp.v3.0.mwcblevel3", ftypes.UINT64, nil, nil, nil, "MWCB Level 3 (20% decline) price")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_bbo_appendage_long_form = ProtoField.new("National Bbo Appendage Long Form", "nasdaq.utp.snapshot.utp.v3.0.nationalbboappendagelongform", ftypes.STRING, nil, nil, nil, "National BBO Appendage Long-form")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_ask_market_center = ProtoField.new("National Best Ask Market Center", "nasdaq.utp.snapshot.utp.v3.0.nationalbestaskmarketcenter", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_ask_price = ProtoField.new("National Best Ask Price", "nasdaq.utp.snapshot.utp.v3.0.nationalbestaskprice", ftypes.DOUBLE, nil, nil, nil, "National Best Ask Price, 6 implied decimal places")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_ask_size = ProtoField.new("National Best Ask Size", "nasdaq.utp.snapshot.utp.v3.0.nationalbestasksize", ftypes.UINT32)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_bid_market_center = ProtoField.new("National Best Bid Market Center", "nasdaq.utp.snapshot.utp.v3.0.nationalbestbidmarketcenter", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_bid_price = ProtoField.new("National Best Bid Price", "nasdaq.utp.snapshot.utp.v3.0.nationalbestbidprice", ftypes.DOUBLE, nil, nil, nil, "National Best Bid Price, 6 implied decimal places")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_bid_size = ProtoField.new("National Best Bid Size", "nasdaq.utp.snapshot.utp.v3.0.nationalbestbidsize", ftypes.UINT32)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.nbbo_appendage_indicator = ProtoField.new("Nbbo Appendage Indicator", "nasdaq.utp.snapshot.utp.v3.0.nbboappendageindicator", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.nbbo_quote_condition = ProtoField.new("Nbbo Quote Condition", "nasdaq.utp.snapshot.utp.v3.0.nbboquotecondition", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.new_issue_indicator = ProtoField.new("New Issue Indicator", "nasdaq.utp.snapshot.utp.v3.0.newissueindicator", ftypes.STRING, nil, nil, nil, "New Issue Indicator (IPO status)")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.odd_lot_attachment_count = ProtoField.new("Odd Lot Attachment Count", "nasdaq.utp.snapshot.utp.v3.0.oddlotattachmentcount", ftypes.UINT16)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.odd_lot_attachment_type = ProtoField.new("Odd Lot Attachment Type", "nasdaq.utp.snapshot.utp.v3.0.oddlotattachmenttype", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.odd_lot_price = ProtoField.new("Odd Lot Price", "nasdaq.utp.snapshot.utp.v3.0.oddlotprice", ftypes.DOUBLE)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.old_symbol = ProtoField.new("Old Symbol", "nasdaq.utp.snapshot.utp.v3.0.oldsymbol", ftypes.STRING, nil, nil, nil, "Old Security Identifier")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.utp.snapshot.utp.v3.0.packetlength", ftypes.UINT16, nil, nil, nil, "Length of the SoupBinTCP packet not including this field")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.participant_token = ProtoField.new("Participant Token", "nasdaq.utp.snapshot.utp.v3.0.participanttoken", ftypes.UINT64)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.password = ProtoField.new("Password", "nasdaq.utp.snapshot.utp.v3.0.password", ftypes.STRING, nil, nil, nil, "The SoupBinTCP login password, left padded with spaces")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.quote_condition = ProtoField.new("Quote Condition", "nasdaq.utp.snapshot.utp.v3.0.quotecondition", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.quote_message = ProtoField.new("Quote Message", "nasdaq.utp.snapshot.utp.v3.0.quotemessage", ftypes.STRING, nil, nil, nil, "Quote Messages")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.quote_message_type = ProtoField.new("Quote Message Type", "nasdaq.utp.snapshot.utp.v3.0.quotemessagetype", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.reason_for_the_trading_action = ProtoField.new("Reason For The Trading Action", "nasdaq.utp.snapshot.utp.v3.0.reasonforthetradingaction", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.utp.snapshot.utp.v3.0.regshoaction", ftypes.STRING, nil, nil, nil, "Reg SHO Action (SEC Rule 201)")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.utp.snapshot.utp.v3.0.rejectreasoncode", ftypes.STRING, nil, nil, nil, "One-byte code indicating why the login was rejected")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.utp.snapshot.utp.v3.0.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "The first sequenced message number the client wishes to receive. For Snap-Shot, must be 1 to receive a full spin.")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.utp.snapshot.utp.v3.0.requestedsession", ftypes.STRING, nil, nil, nil, "The requested session ID, space-padded; spaces request the currently active session")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.retail_interest_indicator = ProtoField.new("Retail Interest Indicator", "nasdaq.utp.snapshot.utp.v3.0.retailinterestindicator", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.utp.snapshot.utp.v3.0.roundlotsize", ftypes.UINT16, nil, nil, nil, "Round Lot Size (00001 to 99999)")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.utp.snapshot.utp.v3.0.sequencenumber", ftypes.UINT64, nil, nil, nil, "UTP Data Service quotation-feed sequence number at the time the Snap-Shot was taken. Begin real-time processing from the next sequence.")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.utp.snapshot.utp.v3.0.serverpackettype", ftypes.STRING, nil, nil, nil, "Code identifying the SoupBinTCP packet type sent by the server")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.shares_at_odd_lot_price = ProtoField.new("Shares At Odd Lot Price", "nasdaq.utp.snapshot.utp.v3.0.sharesatoddlotprice", ftypes.UINT16)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.utp.snapshot.utp.v3.0.shortsalethresholdindicator", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.side = ProtoField.new("Side", "nasdaq.utp.snapshot.utp.v3.0.side", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.sip_generated_update_flag = ProtoField.new("Sip Generated Update Flag", "nasdaq.utp.snapshot.utp.v3.0.sipgeneratedupdateflag", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.sip_timestamp = ProtoField.new("Sip Timestamp", "nasdaq.utp.snapshot.utp.v3.0.siptimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.sip_timestamp_utc = ProtoField.new("Sip Timestamp", "nasdaq.utp.snapshot.utp.v3.0.siptimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.sub_market_center_id = ProtoField.new("Sub Market Center Id", "nasdaq.utp.snapshot.utp.v3.0.submarketcenterid", ftypes.STRING, nil, nil, nil, "Sub-Market Center ID")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.symbol = ProtoField.new("Symbol", "nasdaq.utp.snapshot.utp.v3.0.symbol", ftypes.STRING, nil, nil, nil, "Security Identifier")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.timestamp_1 = ProtoField.new("Timestamp 1", "nasdaq.utp.snapshot.utp.v3.0.timestamp1", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Participant Timestamp")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.timestamp_1_utc = ProtoField.new("Timestamp 1", "nasdaq.utp.snapshot.utp.v3.0.timestamp1.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Participant Timestamp")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.trading_action_code = ProtoField.new("Trading Action Code", "nasdaq.utp.snapshot.utp.v3.0.tradingactioncode", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.trading_action_sequence_number = ProtoField.new("Trading Action Sequence Number", "nasdaq.utp.snapshot.utp.v3.0.tradingactionsequencenumber", ftypes.UINT32, nil, nil, nil, "Trading Action Sequence Number (UTP SIP internal use only — data recipients should disregard)")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.trading_state = ProtoField.new("Trading State", "nasdaq.utp.snapshot.utp.v3.0.tradingstate", ftypes.STRING, nil, nil, nil, "Trading State (halted / trading) at the time of dissemination")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.username = ProtoField.new("Username", "nasdaq.utp.snapshot.utp.v3.0.username", ftypes.STRING, nil, nil, nil, "The SoupBinTCP login username, left padded with spaces")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.utp_adf_mpid_odd_lot_attachment = ProtoField.new("Utp Adf Mpid Odd Lot Attachment", "nasdaq.utp.snapshot.utp.v3.0.utpadfmpidoddlotattachment", ftypes.STRING, nil, nil, nil, "UTP ADF MPID Odd Lot Attachment. Provides one or more odd lot price levels as an attachment to the odd lot or combined quote message, including ADF MPID attribution. Repeats Odd Lot Attachment Count times. ADF Market Participant Identifier is populated with the FINRA ADF MPID update if necessary.")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.version = ProtoField.new("Version", "nasdaq.utp.snapshot.utp.v3.0.version", ftypes.UINT8, nil, nil, nil, "UTP Snap-Shot protocol version (1)")

-- Nasdaq Utp Snapshot Utp 3.0 Framing
omi_nasdaq_utp_snapshot_utp_v3_0.fields.client_packet = ProtoField.new("Packet", "nasdaq.utp.snapshot.utp.v3.0.clientpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP packet carrying UTP Snap-Shot messages sent by the client")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.client_tcp_packet_header = ProtoField.new("Tcp Packet Header", "nasdaq.utp.snapshot.utp.v3.0.clienttcppacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the client")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.utp.snapshot.utp.v3.0.messageheader", ftypes.STRING, nil, nil, nil, "UTP Snap-Shot message header — fixed Version + Message Category prefix")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.server_packet = ProtoField.new("Packet", "nasdaq.utp.snapshot.utp.v3.0.serverpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP packet carrying UTP Snap-Shot messages sent by the server")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.server_tcp_packet_header = ProtoField.new("Tcp Packet Header", "nasdaq.utp.snapshot.utp.v3.0.servertcppacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the server")

-- Nasdaq Utp Snapshot 3.0 Application Messages
omi_nasdaq_utp_snapshot_utp_v3_0.fields.auction_collar_message = ProtoField.new("Auction Collar Message", "nasdaq.utp.snapshot.utp.v3.0.auctioncollarmessage", ftypes.STRING, nil, nil, nil, "Auction Collar Message published by primary markets using an automated reopening after a LULD Trading Pause. Snap-Shot sends only the most recent Auction Collar message per security.")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.cross_sro_trading_action_message = ProtoField.new("Cross Sro Trading Action Message", "nasdaq.utp.snapshot.utp.v3.0.crosssrotradingactionmessage", ftypes.STRING, nil, nil, nil, "Cross SRO Trading Action message. In Snap-Shot, sent only for NASDAQ-listed issues currently halted, in a Quote Resumption, or in a LULD pause. Absence implies the issue is eligible for normal quoting and trading.")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.end_of_day_message = ProtoField.new("End Of Day Message", "nasdaq.utp.snapshot.utp.v3.0.endofdaymessage", ftypes.STRING, nil, nil, nil, "End of Day Control Message. Signals the end of active message dissemination for the UTP SIP operational cycle.")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.end_of_transmissions_message = ProtoField.new("End Of Transmissions Message", "nasdaq.utp.snapshot.utp.v3.0.endoftransmissionsmessage", ftypes.STRING, nil, nil, nil, "End of Transmissions Control Message. Last production message of the day; signals no further transmissions through the UTP SIP line.")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.enhanced_issue_symbol_directory_message = ProtoField.new("Enhanced Issue Symbol Directory Message", "nasdaq.utp.snapshot.utp.v3.0.enhancedissuesymboldirectorymessage", ftypes.STRING, nil, nil, nil, "Enhanced Issue Symbol Directory Message — introduced in v3.0 alongside the existing Issue Symbol Directory Message (Type B) to support the SEC MPI Tick Rule (Nov 2026) and Extended Operational Hours (Dec 6, 2026). Adds ETP/IPO/MPI/Trading-State/Halt-Reason/Reg-SHO fields and two RESERVED prior-close prices.")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.issue_symbol_directory_message = ProtoField.new("Issue Symbol Directory Message", "nasdaq.utp.snapshot.utp.v3.0.issuesymboldirectorymessage", ftypes.STRING, nil, nil, nil, "Issue Symbol Directory Message providing reference data for NASDAQ-listed securities. To be retired in Q1 2027 in favor of the Enhanced Issue Symbol Directory Message (Type F).")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.limit_up_limit_down_price_band_message = ProtoField.new("Limit Up Limit Down Price Band Message", "nasdaq.utp.snapshot.utp.v3.0.limituplimitdownpricebandmessage", ftypes.STRING, nil, nil, nil, "Limit Up – Limit Down Price Band Message. Reflects the current LULD band for LULD-eligible securities. Designed to prevent trades outside specified Upper and Lower Limit Price Bands.")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_center_trading_action_message = ProtoField.new("Market Center Trading Action Message", "nasdaq.utp.snapshot.utp.v3.0.marketcentertradingactionmessage", ftypes.STRING, nil, nil, nil, "Market Center Trading Action message — sent when a UTP participant invokes or releases a market center-specific trading halt for a NASDAQ-listed security. Other participants may continue to quote and trade.")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_session_close_message = ProtoField.new("Market Session Close Message", "nasdaq.utp.snapshot.utp.v3.0.marketsessionclosemessage", ftypes.STRING, nil, nil, nil, "Market Session Close Control Message. Signals the closing of market systems for the Normal Market Session.")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_session_open_message = ProtoField.new("Market Session Open Message", "nasdaq.utp.snapshot.utp.v3.0.marketsessionopenmessage", ftypes.STRING, nil, nil, nil, "Market Session Open Control Message. Signifies the opening of market systems for the Normal Market Session. Each UTP participant may choose to provide its own Market Session Open control message.")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_wide_circuit_breaker_decline_level_message = ProtoField.new("Market Wide Circuit Breaker Decline Level Message", "nasdaq.utp.snapshot.utp.v3.0.marketwidecircuitbreakerdeclinelevelmessage", ftypes.STRING, nil, nil, nil, "MWCB Decline Message. Communicates the daily MWCB breach points (Levels 1/2/3) set based on the prior day's closing value of the S&P 500 index. May be re-sent if levels are reset due to erroneous activity; participants should use the most recently disseminated values.")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.odd_lot_quote_message_long_form = ProtoField.new("Odd Lot Quote Message Long Form", "nasdaq.utp.snapshot.utp.v3.0.oddlotquotemessagelongform", ftypes.STRING, nil, nil, nil, "Long Format Odd Lot Quotation Message. Sent when a single Combined Quote update exceeds the number of attachments within a single message; carries remaining odd lot updates.")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.utp.snapshot.utp.v3.0.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING, nil, nil, nil, "Reg SHO Restriction Indicator Message indicating the Rule 201 status for NASDAQ-listed securities. Snap-Shot sends a full spin of all active securities reflecting the current Reg SHO Action.")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.utp.snapshot.utp.v3.0.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Sequenced Data Packet wrapping a UTP Snap-Shot application message")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.snapshot_sequence_message = ProtoField.new("Snapshot Sequence Message", "nasdaq.utp.snapshot.utp.v3.0.snapshotsequencemessage", ftypes.STRING, nil, nil, nil, "Snapshot Sequence Number Message. Reflects the UTP Data Service sequence number at the time the UTP Snap-Shot spin was requested. To stay current, firms should process real-time UTP Data Service messages beginning with the next sequence number after this value.")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "nasdaq.utp.snapshot.utp.v3.0.startofdaymessage", ftypes.STRING, nil, nil, nil, "Start of Day Control Message. Each day, signals that all subsequent data transmitted will be real-time updates. Prior to 03:58 the data feed handler may be broadcasting heartbeats.")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.utp_combined_quote_message_long_form = ProtoField.new("Utp Combined Quote Message Long Form", "nasdaq.utp.snapshot.utp.v3.0.utpcombinedquotemessagelongform", ftypes.STRING, nil, nil, nil, "Long-format UTP Combined Quotation Message. The Combined Quote Spin provides the current state of all active participants in the identified security. During the spin, NBBO/BOLO Appendage Indicators are set to 1 until the final participant BBO is disseminated; on the final message they are populated as appropriate.")

-- Nasdaq Utp Snapshot 3.0 Session Messages
omi_nasdaq_utp_snapshot_utp_v3_0.fields.client_heartbeat_packet = ProtoField.new("Client Heartbeat Packet", "nasdaq.utp.snapshot.utp.v3.0.clientheartbeatpacket", ftypes.BYTES, nil, nil, nil, "SoupBinTCP Client Heartbeat Packet")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.utp.snapshot.utp.v3.0.debugpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Debug Packet (free-form text)")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.end_of_session_packet = ProtoField.new("End Of Session Packet", "nasdaq.utp.snapshot.utp.v3.0.endofsessionpacket", ftypes.BYTES, nil, nil, nil, "SoupBinTCP End of Session Packet")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.utp.snapshot.utp.v3.0.loginacceptedpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Login Accepted Packet")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.utp.snapshot.utp.v3.0.loginrejectedpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Login Rejected Packet")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.utp.snapshot.utp.v3.0.loginrequestpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Login Request Packet sent by the client to begin a session")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.logout_request_packet = ProtoField.new("Logout Request Packet", "nasdaq.utp.snapshot.utp.v3.0.logoutrequestpacket", ftypes.BYTES, nil, nil, nil, "SoupBinTCP Logout Request Packet")
omi_nasdaq_utp_snapshot_utp_v3_0.fields.server_heartbeat_packet = ProtoField.new("Server Heartbeat Packet", "nasdaq.utp.snapshot.utp.v3.0.serverheartbeatpacket", ftypes.BYTES, nil, nil, nil, "SoupBinTCP Server Heartbeat Packet")

-- Nasdaq Utp Snapshot Utp 3.0 Generated Fields
omi_nasdaq_utp_snapshot_utp_v3_0.fields.utp_adf_mpid_odd_lot_attachment_index = ProtoField.new("Utp Adf Mpid Odd Lot Attachment Index", "nasdaq.utp.snapshot.utp.v3.0.utpadfmpidoddlotattachmentindex", ftypes.UINT16)

-- Nasdaq Utp Snapshot Utp 3.0 Expert Info
nasdaq_utp_snapshot_utp_v3_0.experts = {}
nasdaq_utp_snapshot_utp_v3_0.experts.not_a_number = ProtoExpert.new("nasdaq.utp.snapshot.utp.v3.0.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_nasdaq_utp_snapshot_utp_v3_0.experts = { nasdaq_utp_snapshot_utp_v3_0.experts.not_a_number }

-----------------------------------------------------------------------
-- Nasdaq Utp Snapshot Utp 3.0 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
nasdaq_utp_snapshot_utp_v3_0.absolute_time_base = 0

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

-- Nasdaq Utp Snapshot Utp 3.0 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.session_messages = true
show.repeating_groups = true
show.indexes = true

-- Register Nasdaq Utp Snapshot Utp 3.0 Show Options
omi_nasdaq_utp_snapshot_utp_v3_0.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_utp_snapshot_utp_v3_0.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_utp_snapshot_utp_v3_0.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_nasdaq_utp_snapshot_utp_v3_0.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_nasdaq_utp_snapshot_utp_v3_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_headers then
    show.headers = omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_headers
  end
  if show.repeating_groups ~= omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_repeating_groups then
    show.repeating_groups = omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_repeating_groups
  end
  if show.session_messages ~= omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_structs then
    show.structs = omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_indexes then
    show.indexes = omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_indexes
  end
  if nasdaq_utp_snapshot_utp_v3_0.absolute_time_base ~= omi_nasdaq_utp_snapshot_utp_v3_0.prefs.absolute_time_base then
    nasdaq_utp_snapshot_utp_v3_0.absolute_time_base = omi_nasdaq_utp_snapshot_utp_v3_0.prefs.absolute_time_base
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
-- Nasdaq Utp Snapshot Utp 3.0 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_utp_snapshot_utp_v3_0.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_utp_snapshot_utp_v3_0.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_utp_snapshot_utp_v3_0.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_utp_snapshot_utp_v3_0.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.accepted_sequence_number, range, value, "Accepted Sequence Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_utp_snapshot_utp_v3_0.experts.not_a_number, "Accepted Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_utp_snapshot_utp_v3_0.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_utp_snapshot_utp_v3_0.accepted_session = {}

-- Size: Accepted Session
nasdaq_utp_snapshot_utp_v3_0.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_utp_snapshot_utp_v3_0.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_utp_snapshot_utp_v3_0.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Action Time
nasdaq_utp_snapshot_utp_v3_0.action_time = {}

-- Size: Action Time
nasdaq_utp_snapshot_utp_v3_0.action_time.size = 8

-- Dissect: Action Time
nasdaq_utp_snapshot_utp_v3_0.action_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.action_time.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nasdaq_utp_snapshot_utp_v3_0.fields.action_time
  if nasdaq_utp_snapshot_utp_v3_0.absolute_time_base == 1 then field = omi_nasdaq_utp_snapshot_utp_v3_0.fields.action_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Adf Market Participant Identifier
nasdaq_utp_snapshot_utp_v3_0.adf_market_participant_identifier = {}

-- Size: Adf Market Participant Identifier
nasdaq_utp_snapshot_utp_v3_0.adf_market_participant_identifier.size = 4

-- Display: Adf Market Participant Identifier
nasdaq_utp_snapshot_utp_v3_0.adf_market_participant_identifier.display = function(value)
  return "Adf Market Participant Identifier: "..value
end

-- Dissect: Adf Market Participant Identifier
nasdaq_utp_snapshot_utp_v3_0.adf_market_participant_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.adf_market_participant_identifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.adf_market_participant_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.adf_market_participant_identifier, range, value, display)

  return offset + length, value
end

-- Adf Timestamp
nasdaq_utp_snapshot_utp_v3_0.adf_timestamp = {}

-- Size: Adf Timestamp
nasdaq_utp_snapshot_utp_v3_0.adf_timestamp.size = 8

-- Dissect: Adf Timestamp
nasdaq_utp_snapshot_utp_v3_0.adf_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.adf_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nasdaq_utp_snapshot_utp_v3_0.fields.adf_timestamp
  if nasdaq_utp_snapshot_utp_v3_0.absolute_time_base == 1 then field = omi_nasdaq_utp_snapshot_utp_v3_0.fields.adf_timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Administrative Message Type
nasdaq_utp_snapshot_utp_v3_0.administrative_message_type = {}

-- Size: Administrative Message Type
nasdaq_utp_snapshot_utp_v3_0.administrative_message_type.size = 1

-- Display: Administrative Message Type
nasdaq_utp_snapshot_utp_v3_0.administrative_message_type.display = function(value)
  return "Administrative Message Type: "..value
end

-- Dissect: Administrative Message Type
nasdaq_utp_snapshot_utp_v3_0.administrative_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.administrative_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.administrative_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- Ask Adf Mpid
nasdaq_utp_snapshot_utp_v3_0.ask_adf_mpid = {}

-- Size: Ask Adf Mpid
nasdaq_utp_snapshot_utp_v3_0.ask_adf_mpid.size = 4

-- Display: Ask Adf Mpid
nasdaq_utp_snapshot_utp_v3_0.ask_adf_mpid.display = function(value)
  return "Ask Adf Mpid: "..value
end

-- Dissect: Ask Adf Mpid
nasdaq_utp_snapshot_utp_v3_0.ask_adf_mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.ask_adf_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.ask_adf_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.ask_adf_mpid, range, value, display)

  return offset + length, value
end

-- Ask Price
nasdaq_utp_snapshot_utp_v3_0.ask_price = {}

-- Size: Ask Price
nasdaq_utp_snapshot_utp_v3_0.ask_price.size = 8

-- Display: Ask Price
nasdaq_utp_snapshot_utp_v3_0.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
nasdaq_utp_snapshot_utp_v3_0.ask_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ask Price
nasdaq_utp_snapshot_utp_v3_0.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.ask_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Size
nasdaq_utp_snapshot_utp_v3_0.ask_size = {}

-- Size: Ask Size
nasdaq_utp_snapshot_utp_v3_0.ask_size.size = 4

-- Display: Ask Size
nasdaq_utp_snapshot_utp_v3_0.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
nasdaq_utp_snapshot_utp_v3_0.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_snapshot_utp_v3_0.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Authenticity
nasdaq_utp_snapshot_utp_v3_0.authenticity = {}

-- Size: Authenticity
nasdaq_utp_snapshot_utp_v3_0.authenticity.size = 1

-- Display: Authenticity
nasdaq_utp_snapshot_utp_v3_0.authenticity.labels = {
  ["P"] = "Authenticity: Live Production (P)",
  ["T"] = "Authenticity: Test (T)",
  ["D"] = "Authenticity: Demo (D)",
  ["X"] = "Authenticity: Deleted (X)",
}

nasdaq_utp_snapshot_utp_v3_0.authenticity.display = function(value)
  return nasdaq_utp_snapshot_utp_v3_0.authenticity.labels[value] or "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_utp_snapshot_utp_v3_0.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Bid Adf Mpid
nasdaq_utp_snapshot_utp_v3_0.bid_adf_mpid = {}

-- Size: Bid Adf Mpid
nasdaq_utp_snapshot_utp_v3_0.bid_adf_mpid.size = 4

-- Display: Bid Adf Mpid
nasdaq_utp_snapshot_utp_v3_0.bid_adf_mpid.display = function(value)
  return "Bid Adf Mpid: "..value
end

-- Dissect: Bid Adf Mpid
nasdaq_utp_snapshot_utp_v3_0.bid_adf_mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bid_adf_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.bid_adf_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bid_adf_mpid, range, value, display)

  return offset + length, value
end

-- Bid Price
nasdaq_utp_snapshot_utp_v3_0.bid_price = {}

-- Size: Bid Price
nasdaq_utp_snapshot_utp_v3_0.bid_price.size = 8

-- Display: Bid Price
nasdaq_utp_snapshot_utp_v3_0.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
nasdaq_utp_snapshot_utp_v3_0.bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Price
nasdaq_utp_snapshot_utp_v3_0.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.bid_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Size
nasdaq_utp_snapshot_utp_v3_0.bid_size = {}

-- Size: Bid Size
nasdaq_utp_snapshot_utp_v3_0.bid_size.size = 4

-- Display: Bid Size
nasdaq_utp_snapshot_utp_v3_0.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
nasdaq_utp_snapshot_utp_v3_0.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_snapshot_utp_v3_0.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Bolo Appendage Indicator
nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_indicator = {}

-- Size: Bolo Appendage Indicator
nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_indicator.size = 1

-- Display: Bolo Appendage Indicator
nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_indicator.labels = {
  ["0"] = "Bolo Appendage Indicator: No Bolo Change (0)",
  ["1"] = "Bolo Appendage Indicator: No Bolo Can Be Calculated (1)",
  ["2"] = "Bolo Appendage Indicator: Short Form Bolo Appendage Attached (2)",
  ["3"] = "Bolo Appendage Indicator: Long Form Bolo Appendage Attached (3)",
  ["5"] = "Bolo Appendage Indicator: Mpid Form Bolo Appendage Attached (5)",
}

nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_indicator.display = function(value)
  return nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_indicator.labels[value] or "Bolo Appendage Indicator: Unknown("..value..")"
end

-- Dissect: Bolo Appendage Indicator
nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_appendage_indicator, range, value, display)

  return offset + length, value
end

-- Bolo Ask Price
nasdaq_utp_snapshot_utp_v3_0.bolo_ask_price = {}

-- Size: Bolo Ask Price
nasdaq_utp_snapshot_utp_v3_0.bolo_ask_price.size = 8

-- Display: Bolo Ask Price
nasdaq_utp_snapshot_utp_v3_0.bolo_ask_price.display = function(value)
  return "Bolo Ask Price: "..value
end

-- Translate: Bolo Ask Price
nasdaq_utp_snapshot_utp_v3_0.bolo_ask_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bolo Ask Price
nasdaq_utp_snapshot_utp_v3_0.bolo_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bolo_ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.bolo_ask_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.bolo_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_ask_price, range, value, display)

  return offset + length, value
end

-- Bolo Ask Size
nasdaq_utp_snapshot_utp_v3_0.bolo_ask_size = {}

-- Size: Bolo Ask Size
nasdaq_utp_snapshot_utp_v3_0.bolo_ask_size.size = 2

-- Display: Bolo Ask Size
nasdaq_utp_snapshot_utp_v3_0.bolo_ask_size.display = function(value)
  return "Bolo Ask Size: "..value
end

-- Dissect: Bolo Ask Size
nasdaq_utp_snapshot_utp_v3_0.bolo_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bolo_ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_snapshot_utp_v3_0.bolo_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_ask_size, range, value, display)

  return offset + length, value
end

-- Bolo Best Ask Market Center
nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_center = {}

-- Size: Bolo Best Ask Market Center
nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_center.size = 1

-- Display: Bolo Best Ask Market Center
nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_center.display = function(value)
  return "Bolo Best Ask Market Center: "..value
end

-- Dissect: Bolo Best Ask Market Center
nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_center.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_best_ask_market_center, range, value, display)

  return offset + length, value
end

-- Bolo Best Ask Market Participant Identifier
nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_participant_identifier = {}

-- Size: Bolo Best Ask Market Participant Identifier
nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_participant_identifier.size = 4

-- Display: Bolo Best Ask Market Participant Identifier
nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_participant_identifier.display = function(value)
  return "Bolo Best Ask Market Participant Identifier: "..value
end

-- Dissect: Bolo Best Ask Market Participant Identifier
nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_participant_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_participant_identifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_participant_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_best_ask_market_participant_identifier, range, value, display)

  return offset + length, value
end

-- Bolo Best Bid Market Center
nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_center = {}

-- Size: Bolo Best Bid Market Center
nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_center.size = 1

-- Display: Bolo Best Bid Market Center
nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_center.display = function(value)
  return "Bolo Best Bid Market Center: "..value
end

-- Dissect: Bolo Best Bid Market Center
nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_center.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_best_bid_market_center, range, value, display)

  return offset + length, value
end

-- Bolo Best Bid Market Participant Identifier
nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_participant_identifier = {}

-- Size: Bolo Best Bid Market Participant Identifier
nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_participant_identifier.size = 4

-- Display: Bolo Best Bid Market Participant Identifier
nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_participant_identifier.display = function(value)
  return "Bolo Best Bid Market Participant Identifier: "..value
end

-- Dissect: Bolo Best Bid Market Participant Identifier
nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_participant_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_participant_identifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_participant_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_best_bid_market_participant_identifier, range, value, display)

  return offset + length, value
end

-- Bolo Bid Price
nasdaq_utp_snapshot_utp_v3_0.bolo_bid_price = {}

-- Size: Bolo Bid Price
nasdaq_utp_snapshot_utp_v3_0.bolo_bid_price.size = 8

-- Display: Bolo Bid Price
nasdaq_utp_snapshot_utp_v3_0.bolo_bid_price.display = function(value)
  return "Bolo Bid Price: "..value
end

-- Translate: Bolo Bid Price
nasdaq_utp_snapshot_utp_v3_0.bolo_bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bolo Bid Price
nasdaq_utp_snapshot_utp_v3_0.bolo_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bolo_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.bolo_bid_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.bolo_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_bid_price, range, value, display)

  return offset + length, value
end

-- Bolo Bid Size
nasdaq_utp_snapshot_utp_v3_0.bolo_bid_size = {}

-- Size: Bolo Bid Size
nasdaq_utp_snapshot_utp_v3_0.bolo_bid_size.size = 2

-- Display: Bolo Bid Size
nasdaq_utp_snapshot_utp_v3_0.bolo_bid_size.display = function(value)
  return "Bolo Bid Size: "..value
end

-- Dissect: Bolo Bid Size
nasdaq_utp_snapshot_utp_v3_0.bolo_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bolo_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_snapshot_utp_v3_0.bolo_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_bid_size, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_utp_snapshot_utp_v3_0.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_utp_snapshot_utp_v3_0.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_utp_snapshot_utp_v3_0.client_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["L"] = "Packet Type: Login Request Packet (L)",
  ["R"] = "Packet Type: Client Heartbeat Packet (R)",
  ["O"] = "Packet Type: Logout Request Packet (O)",
}

nasdaq_utp_snapshot_utp_v3_0.client_packet_type.display = function(value)
  return nasdaq_utp_snapshot_utp_v3_0.client_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Client Packet Type
nasdaq_utp_snapshot_utp_v3_0.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Collar Down Price
nasdaq_utp_snapshot_utp_v3_0.collar_down_price = {}

-- Size: Collar Down Price
nasdaq_utp_snapshot_utp_v3_0.collar_down_price.size = 8

-- Display: Collar Down Price
nasdaq_utp_snapshot_utp_v3_0.collar_down_price.display = function(value)
  return "Collar Down Price: "..value
end

-- Translate: Collar Down Price
nasdaq_utp_snapshot_utp_v3_0.collar_down_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Down Price
nasdaq_utp_snapshot_utp_v3_0.collar_down_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.collar_down_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.collar_down_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.collar_down_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.collar_down_price, range, value, display)

  return offset + length, value
end

-- Collar Extension Indicator
nasdaq_utp_snapshot_utp_v3_0.collar_extension_indicator = {}

-- Size: Collar Extension Indicator
nasdaq_utp_snapshot_utp_v3_0.collar_extension_indicator.size = 1

-- Display: Collar Extension Indicator
nasdaq_utp_snapshot_utp_v3_0.collar_extension_indicator.display = function(value)
  return "Collar Extension Indicator: "..value
end

-- Dissect: Collar Extension Indicator
nasdaq_utp_snapshot_utp_v3_0.collar_extension_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.collar_extension_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.collar_extension_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.collar_extension_indicator, range, value, display)

  return offset + length, value
end

-- Collar Reference Price
nasdaq_utp_snapshot_utp_v3_0.collar_reference_price = {}

-- Size: Collar Reference Price
nasdaq_utp_snapshot_utp_v3_0.collar_reference_price.size = 8

-- Display: Collar Reference Price
nasdaq_utp_snapshot_utp_v3_0.collar_reference_price.display = function(value)
  return "Collar Reference Price: "..value
end

-- Translate: Collar Reference Price
nasdaq_utp_snapshot_utp_v3_0.collar_reference_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Reference Price
nasdaq_utp_snapshot_utp_v3_0.collar_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.collar_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.collar_reference_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.collar_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.collar_reference_price, range, value, display)

  return offset + length, value
end

-- Collar Up Price
nasdaq_utp_snapshot_utp_v3_0.collar_up_price = {}

-- Size: Collar Up Price
nasdaq_utp_snapshot_utp_v3_0.collar_up_price.size = 8

-- Display: Collar Up Price
nasdaq_utp_snapshot_utp_v3_0.collar_up_price.display = function(value)
  return "Collar Up Price: "..value
end

-- Translate: Collar Up Price
nasdaq_utp_snapshot_utp_v3_0.collar_up_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Up Price
nasdaq_utp_snapshot_utp_v3_0.collar_up_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.collar_up_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.collar_up_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.collar_up_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.collar_up_price, range, value, display)

  return offset + length, value
end

-- Consolidated Prior Day Close Price
nasdaq_utp_snapshot_utp_v3_0.consolidated_prior_day_close_price = {}

-- Size: Consolidated Prior Day Close Price
nasdaq_utp_snapshot_utp_v3_0.consolidated_prior_day_close_price.size = 8

-- Display: Consolidated Prior Day Close Price
nasdaq_utp_snapshot_utp_v3_0.consolidated_prior_day_close_price.display = function(value)
  return "Consolidated Prior Day Close Price: "..value
end

-- Translate: Consolidated Prior Day Close Price
nasdaq_utp_snapshot_utp_v3_0.consolidated_prior_day_close_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Consolidated Prior Day Close Price
nasdaq_utp_snapshot_utp_v3_0.consolidated_prior_day_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.consolidated_prior_day_close_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.consolidated_prior_day_close_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.consolidated_prior_day_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.consolidated_prior_day_close_price, range, value, display)

  return offset + length, value
end

-- Control Message Type
nasdaq_utp_snapshot_utp_v3_0.control_message_type = {}

-- Size: Control Message Type
nasdaq_utp_snapshot_utp_v3_0.control_message_type.size = 1

-- Display: Control Message Type
nasdaq_utp_snapshot_utp_v3_0.control_message_type.display = function(value)
  return "Control Message Type: "..value
end

-- Dissect: Control Message Type
nasdaq_utp_snapshot_utp_v3_0.control_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.control_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.control_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Debug Text
nasdaq_utp_snapshot_utp_v3_0.debug_text = {}

-- Display: Debug Text
nasdaq_utp_snapshot_utp_v3_0.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect runtime sized field: Debug Text
nasdaq_utp_snapshot_utp_v3_0.debug_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.debug_text.display(value, packet, parent, size)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.debug_text, range, value, display)

  return offset + size, value
end

-- Etp Indicator
nasdaq_utp_snapshot_utp_v3_0.etp_indicator = {}

-- Size: Etp Indicator
nasdaq_utp_snapshot_utp_v3_0.etp_indicator.size = 1

-- Display: Etp Indicator
nasdaq_utp_snapshot_utp_v3_0.etp_indicator.display = function(value)
  return "Etp Indicator: "..value
end

-- Dissect: Etp Indicator
nasdaq_utp_snapshot_utp_v3_0.etp_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.etp_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.etp_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.etp_indicator, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_utp_snapshot_utp_v3_0.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_utp_snapshot_utp_v3_0.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_utp_snapshot_utp_v3_0.financial_status_indicator.labels = {
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

nasdaq_utp_snapshot_utp_v3_0.financial_status_indicator.display = function(value)
  return nasdaq_utp_snapshot_utp_v3_0.financial_status_indicator.labels[value] or "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
nasdaq_utp_snapshot_utp_v3_0.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Finra Adf Mpid Appendage Indicator
nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage_indicator = {}

-- Size: Finra Adf Mpid Appendage Indicator
nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage_indicator.size = 1

-- Display: Finra Adf Mpid Appendage Indicator
nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage_indicator.display = function(value)
  if value == " " then
    return "Finra Adf Mpid Appendage Indicator: Not Applicable Quotation Originates From A Utp Participant Other Than Finra (<whitespace>)"
  end
  if value == "0" then
    return "Finra Adf Mpid Appendage Indicator: No Adf Mpid Changes Current Adf Quote Does Not Affect The Finra Mpid (0)"
  end
  if value == "1" then
    return "Finra Adf Mpid Appendage Indicator: No Adf Mpid Exists No Calculation Of The Finra Mpid (1)"
  end
  if value == "2" then
    return "Finra Adf Mpid Appendage Indicator: Adf Mpi Ds Attached Finra Mpid Was Generated (2)"
  end

  return "Finra Adf Mpid Appendage Indicator: Unknown("..value..")"
end

-- Dissect: Finra Adf Mpid Appendage Indicator
nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.finra_adf_mpid_appendage_indicator, range, value, display)

  return offset + length, value
end

-- Finra Adf Timestamp
nasdaq_utp_snapshot_utp_v3_0.finra_adf_timestamp = {}

-- Size: Finra Adf Timestamp
nasdaq_utp_snapshot_utp_v3_0.finra_adf_timestamp.size = 8

-- Dissect: Finra Adf Timestamp
nasdaq_utp_snapshot_utp_v3_0.finra_adf_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.finra_adf_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nasdaq_utp_snapshot_utp_v3_0.fields.finra_adf_timestamp
  if nasdaq_utp_snapshot_utp_v3_0.absolute_time_base == 1 then field = omi_nasdaq_utp_snapshot_utp_v3_0.fields.finra_adf_timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Halt Reason
nasdaq_utp_snapshot_utp_v3_0.halt_reason = {}

-- Size: Halt Reason
nasdaq_utp_snapshot_utp_v3_0.halt_reason.size = 6

-- Display: Halt Reason
nasdaq_utp_snapshot_utp_v3_0.halt_reason.display = function(value)
  return "Halt Reason: "..value
end

-- Dissect: Halt Reason
nasdaq_utp_snapshot_utp_v3_0.halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.halt_reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.halt_reason, range, value, display)

  return offset + length, value
end

-- Issue Name
nasdaq_utp_snapshot_utp_v3_0.issue_name = {}

-- Size: Issue Name
nasdaq_utp_snapshot_utp_v3_0.issue_name.size = 30

-- Display: Issue Name
nasdaq_utp_snapshot_utp_v3_0.issue_name.display = function(value)
  return "Issue Name: "..value
end

-- Dissect: Issue Name
nasdaq_utp_snapshot_utp_v3_0.issue_name.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.issue_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.issue_name, range, value, display)

  return offset + length, value
end

-- Issue Subtype
nasdaq_utp_snapshot_utp_v3_0.issue_subtype = {}

-- Size: Issue Subtype
nasdaq_utp_snapshot_utp_v3_0.issue_subtype.size = 2

-- Display: Issue Subtype
nasdaq_utp_snapshot_utp_v3_0.issue_subtype.labels = {
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

nasdaq_utp_snapshot_utp_v3_0.issue_subtype.display = function(value)
  return nasdaq_utp_snapshot_utp_v3_0.issue_subtype.labels[value] or "Issue Subtype: Unknown("..value..")"
end

-- Dissect: Issue Subtype
nasdaq_utp_snapshot_utp_v3_0.issue_subtype.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.issue_subtype.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.issue_subtype.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.issue_subtype, range, value, display)

  return offset + length, value
end

-- Issue Type
nasdaq_utp_snapshot_utp_v3_0.issue_type = {}

-- Size: Issue Type
nasdaq_utp_snapshot_utp_v3_0.issue_type.size = 1

-- Display: Issue Type
nasdaq_utp_snapshot_utp_v3_0.issue_type.labels = {
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

nasdaq_utp_snapshot_utp_v3_0.issue_type.display = function(value)
  return nasdaq_utp_snapshot_utp_v3_0.issue_type.labels[value] or "Issue Type: Unknown("..value..")"
end

-- Dissect: Issue Type
nasdaq_utp_snapshot_utp_v3_0.issue_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.issue_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.issue_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.issue_type, range, value, display)

  return offset + length, value
end

-- Limit Down Price
nasdaq_utp_snapshot_utp_v3_0.limit_down_price = {}

-- Size: Limit Down Price
nasdaq_utp_snapshot_utp_v3_0.limit_down_price.size = 8

-- Display: Limit Down Price
nasdaq_utp_snapshot_utp_v3_0.limit_down_price.display = function(value)
  return "Limit Down Price: "..value
end

-- Translate: Limit Down Price
nasdaq_utp_snapshot_utp_v3_0.limit_down_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Limit Down Price
nasdaq_utp_snapshot_utp_v3_0.limit_down_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.limit_down_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.limit_down_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.limit_down_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.limit_down_price, range, value, display)

  return offset + length, value
end

-- Limit Up Price
nasdaq_utp_snapshot_utp_v3_0.limit_up_price = {}

-- Size: Limit Up Price
nasdaq_utp_snapshot_utp_v3_0.limit_up_price.size = 8

-- Display: Limit Up Price
nasdaq_utp_snapshot_utp_v3_0.limit_up_price.display = function(value)
  return "Limit Up Price: "..value
end

-- Translate: Limit Up Price
nasdaq_utp_snapshot_utp_v3_0.limit_up_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Limit Up Price
nasdaq_utp_snapshot_utp_v3_0.limit_up_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.limit_up_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.limit_up_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.limit_up_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.limit_up_price, range, value, display)

  return offset + length, value
end

-- Listing Market Official Prior Day Close Price
nasdaq_utp_snapshot_utp_v3_0.listing_market_official_prior_day_close_price = {}

-- Size: Listing Market Official Prior Day Close Price
nasdaq_utp_snapshot_utp_v3_0.listing_market_official_prior_day_close_price.size = 8

-- Display: Listing Market Official Prior Day Close Price
nasdaq_utp_snapshot_utp_v3_0.listing_market_official_prior_day_close_price.display = function(value)
  return "Listing Market Official Prior Day Close Price: "..value
end

-- Translate: Listing Market Official Prior Day Close Price
nasdaq_utp_snapshot_utp_v3_0.listing_market_official_prior_day_close_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Listing Market Official Prior Day Close Price
nasdaq_utp_snapshot_utp_v3_0.listing_market_official_prior_day_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.listing_market_official_prior_day_close_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.listing_market_official_prior_day_close_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.listing_market_official_prior_day_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.listing_market_official_prior_day_close_price, range, value, display)

  return offset + length, value
end

-- Luld Bbo Indicator
nasdaq_utp_snapshot_utp_v3_0.luld_bbo_indicator = {}

-- Size: Luld Bbo Indicator
nasdaq_utp_snapshot_utp_v3_0.luld_bbo_indicator.size = 1

-- Display: Luld Bbo Indicator
nasdaq_utp_snapshot_utp_v3_0.luld_bbo_indicator.display = function(value)
  if value == " " then
    return "Luld Bbo Indicator: Limit Up Limit Down Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Luld Bbo Indicator: Bid Price Above Upper Limit Price Band Bid Is Non Executable (A)"
  end
  if value == "B" then
    return "Luld Bbo Indicator: Ask Price Below Lower Limit Price Band Ask Is Non Executable (B)"
  end
  if value == "C" then
    return "Luld Bbo Indicator: Bid And Ask Outside Price Band Not Executable (C)"
  end

  return "Luld Bbo Indicator: Unknown("..value..")"
end

-- Dissect: Luld Bbo Indicator
nasdaq_utp_snapshot_utp_v3_0.luld_bbo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.luld_bbo_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.luld_bbo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.luld_bbo_indicator, range, value, display)

  return offset + length, value
end

-- Luld National Bbo Indicator
nasdaq_utp_snapshot_utp_v3_0.luld_national_bbo_indicator = {}

-- Size: Luld National Bbo Indicator
nasdaq_utp_snapshot_utp_v3_0.luld_national_bbo_indicator.size = 1

-- Display: Luld National Bbo Indicator
nasdaq_utp_snapshot_utp_v3_0.luld_national_bbo_indicator.display = function(value)
  if value == " " then
    return "Luld National Bbo Indicator: Limit Up Limit Down Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Luld National Bbo Indicator: National Best Bid And National Best Ask Are Executable (A)"
  end
  if value == "B" then
    return "Luld National Bbo Indicator: National Best Bid Below Lower Limit Price Band Non Executable (B)"
  end
  if value == "C" then
    return "Luld National Bbo Indicator: National Best Ask Above Upper Limit Price Band Non Executable (C)"
  end
  if value == "D" then
    return "Luld National Bbo Indicator: National Best Bid Below Lower And National Best Ask Above Upper Limit Price Bands Non Executable (D)"
  end
  if value == "E" then
    return "Luld National Bbo Indicator: National Best Bid Equals Upper Limit Price Band National Best Bid Is In Limit State (E)"
  end
  if value == "F" then
    return "Luld National Bbo Indicator: National Best Offer Equals Lower Limit Price Band National Best Ask Is In Limit State (F)"
  end
  if value == "G" then
    return "Luld National Bbo Indicator: National Best Bid Equals Upper Limit Price Band In Limit State And National Best Ask Above Upper Limit Price Band Non Executable (G)"
  end
  if value == "H" then
    return "Luld National Bbo Indicator: National Best Ask Equals Lower Limit Price Band In Limit State And National Best Bid Below Lower Limit Price Band Non Executable (H)"
  end
  if value == "I" then
    return "Luld National Bbo Indicator: National Best Bid Equals Upper Limit Price Band And National Best Ask Equals Lower Limit Price Band Crossed Not In Limit State (I)"
  end

  return "Luld National Bbo Indicator: Unknown("..value..")"
end

-- Dissect: Luld National Bbo Indicator
nasdaq_utp_snapshot_utp_v3_0.luld_national_bbo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.luld_national_bbo_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.luld_national_bbo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.luld_national_bbo_indicator, range, value, display)

  return offset + length, value
end

-- Luld Price Band Effective Time
nasdaq_utp_snapshot_utp_v3_0.luld_price_band_effective_time = {}

-- Size: Luld Price Band Effective Time
nasdaq_utp_snapshot_utp_v3_0.luld_price_band_effective_time.size = 8

-- Dissect: Luld Price Band Effective Time
nasdaq_utp_snapshot_utp_v3_0.luld_price_band_effective_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.luld_price_band_effective_time.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nasdaq_utp_snapshot_utp_v3_0.fields.luld_price_band_effective_time
  if nasdaq_utp_snapshot_utp_v3_0.absolute_time_base == 1 then field = omi_nasdaq_utp_snapshot_utp_v3_0.fields.luld_price_band_effective_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Luld Price Band Indicator
nasdaq_utp_snapshot_utp_v3_0.luld_price_band_indicator = {}

-- Size: Luld Price Band Indicator
nasdaq_utp_snapshot_utp_v3_0.luld_price_band_indicator.size = 1

-- Display: Luld Price Band Indicator
nasdaq_utp_snapshot_utp_v3_0.luld_price_band_indicator.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.luld_price_band_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.luld_price_band_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.luld_price_band_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.luld_price_band_indicator, range, value, display)

  return offset + length, value
end

-- Market Center Id
nasdaq_utp_snapshot_utp_v3_0.market_center_id = {}

-- Size: Market Center Id
nasdaq_utp_snapshot_utp_v3_0.market_center_id.size = 1

-- Display: Market Center Id
nasdaq_utp_snapshot_utp_v3_0.market_center_id.display = function(value)
  return "Market Center Id: "..value
end

-- Dissect: Market Center Id
nasdaq_utp_snapshot_utp_v3_0.market_center_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.market_center_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.market_center_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_center_id, range, value, display)

  return offset + length, value
end

-- Market Center Identifier
nasdaq_utp_snapshot_utp_v3_0.market_center_identifier = {}

-- Size: Market Center Identifier
nasdaq_utp_snapshot_utp_v3_0.market_center_identifier.size = 1

-- Display: Market Center Identifier
nasdaq_utp_snapshot_utp_v3_0.market_center_identifier.display = function(value)
  return "Market Center Identifier: "..value
end

-- Dissect: Market Center Identifier
nasdaq_utp_snapshot_utp_v3_0.market_center_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.market_center_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.market_center_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_center_identifier, range, value, display)

  return offset + length, value
end

-- Market Center Originator
nasdaq_utp_snapshot_utp_v3_0.market_center_originator = {}

-- Size: Market Center Originator
nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size = 1

-- Display: Market Center Originator
nasdaq_utp_snapshot_utp_v3_0.market_center_originator.labels = {
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

nasdaq_utp_snapshot_utp_v3_0.market_center_originator.display = function(value)
  return nasdaq_utp_snapshot_utp_v3_0.market_center_originator.labels[value] or "Market Center Originator: Unknown("..value..")"
end

-- Dissect: Market Center Originator
nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_center_originator, range, value, display)

  return offset + length, value
end

-- Market Tier
nasdaq_utp_snapshot_utp_v3_0.market_tier = {}

-- Size: Market Tier
nasdaq_utp_snapshot_utp_v3_0.market_tier.size = 1

-- Display: Market Tier
nasdaq_utp_snapshot_utp_v3_0.market_tier.labels = {
  ["Q"] = "Market Tier: Nasdaq Global Select Market (Q)",
  ["G"] = "Market Tier: Nasdaq Global Market (G)",
  ["S"] = "Market Tier: Nasdaq Capital Market (S)",
}

nasdaq_utp_snapshot_utp_v3_0.market_tier.display = function(value)
  return nasdaq_utp_snapshot_utp_v3_0.market_tier.labels[value] or "Market Tier: Unknown("..value..")"
end

-- Dissect: Market Tier
nasdaq_utp_snapshot_utp_v3_0.market_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.market_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.market_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_tier, range, value, display)

  return offset + length, value
end

-- Message Category
nasdaq_utp_snapshot_utp_v3_0.message_category = {}

-- Size: Message Category
nasdaq_utp_snapshot_utp_v3_0.message_category.size = 1

-- Display: Message Category
nasdaq_utp_snapshot_utp_v3_0.message_category.display = function(value)
  return "Message Category: "..value
end

-- Dissect: Message Category
nasdaq_utp_snapshot_utp_v3_0.message_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.message_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.message_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.message_category, range, value, display)

  return offset + length, value
end

-- Mpi Tick
nasdaq_utp_snapshot_utp_v3_0.mpi_tick = {}

-- Size: Mpi Tick
nasdaq_utp_snapshot_utp_v3_0.mpi_tick.size = 1

-- Display: Mpi Tick
nasdaq_utp_snapshot_utp_v3_0.mpi_tick.labels = {
  ["P"] = "Mpi Tick: Penny Mpi (P)",
  ["H"] = "Mpi Tick: Half Penny Mpi Effective Nov 2026 Per Sec Mandate (H)",
}

nasdaq_utp_snapshot_utp_v3_0.mpi_tick.display = function(value)
  return nasdaq_utp_snapshot_utp_v3_0.mpi_tick.labels[value] or "Mpi Tick: Unknown("..value..")"
end

-- Dissect: Mpi Tick
nasdaq_utp_snapshot_utp_v3_0.mpi_tick.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.mpi_tick.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.mpi_tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.mpi_tick, range, value, display)

  return offset + length, value
end

-- Mwcb Level 1
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_1 = {}

-- Size: Mwcb Level 1
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_1.size = 8

-- Display: Mwcb Level 1
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_1.display = function(value)
  return "Mwcb Level 1: "..value
end

-- Dissect: Mwcb Level 1
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.mwcb_level_1.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_snapshot_utp_v3_0.mwcb_level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.mwcb_level_1, range, value, display)

  return offset + length, value
end

-- Mwcb Level 2
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_2 = {}

-- Size: Mwcb Level 2
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_2.size = 8

-- Display: Mwcb Level 2
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_2.display = function(value)
  return "Mwcb Level 2: "..value
end

-- Dissect: Mwcb Level 2
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.mwcb_level_2.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_snapshot_utp_v3_0.mwcb_level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.mwcb_level_2, range, value, display)

  return offset + length, value
end

-- Mwcb Level 3
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_3 = {}

-- Size: Mwcb Level 3
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_3.size = 8

-- Display: Mwcb Level 3
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_3.display = function(value)
  return "Mwcb Level 3: "..value
end

-- Dissect: Mwcb Level 3
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.mwcb_level_3.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_snapshot_utp_v3_0.mwcb_level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.mwcb_level_3, range, value, display)

  return offset + length, value
end

-- National Best Ask Market Center
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_market_center = {}

-- Size: National Best Ask Market Center
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_market_center.size = 1

-- Display: National Best Ask Market Center
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_market_center.display = function(value)
  return "National Best Ask Market Center: "..value
end

-- Dissect: National Best Ask Market Center
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_market_center.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.national_best_ask_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.national_best_ask_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_ask_market_center, range, value, display)

  return offset + length, value
end

-- National Best Ask Price
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_price = {}

-- Size: National Best Ask Price
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_price.size = 8

-- Display: National Best Ask Price
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_price.display = function(value)
  return "National Best Ask Price: "..value
end

-- Translate: National Best Ask Price
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: National Best Ask Price
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.national_best_ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.national_best_ask_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.national_best_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_ask_price, range, value, display)

  return offset + length, value
end

-- National Best Ask Size
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_size = {}

-- Size: National Best Ask Size
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_size.size = 4

-- Display: National Best Ask Size
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_size.display = function(value)
  return "National Best Ask Size: "..value
end

-- Dissect: National Best Ask Size
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.national_best_ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_snapshot_utp_v3_0.national_best_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_ask_size, range, value, display)

  return offset + length, value
end

-- National Best Bid Market Center
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_market_center = {}

-- Size: National Best Bid Market Center
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_market_center.size = 1

-- Display: National Best Bid Market Center
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_market_center.display = function(value)
  return "National Best Bid Market Center: "..value
end

-- Dissect: National Best Bid Market Center
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_market_center.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.national_best_bid_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.national_best_bid_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_bid_market_center, range, value, display)

  return offset + length, value
end

-- National Best Bid Price
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_price = {}

-- Size: National Best Bid Price
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_price.size = 8

-- Display: National Best Bid Price
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_price.display = function(value)
  return "National Best Bid Price: "..value
end

-- Translate: National Best Bid Price
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: National Best Bid Price
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.national_best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.national_best_bid_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.national_best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_bid_price, range, value, display)

  return offset + length, value
end

-- National Best Bid Size
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_size = {}

-- Size: National Best Bid Size
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_size.size = 4

-- Display: National Best Bid Size
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_size.display = function(value)
  return "National Best Bid Size: "..value
end

-- Dissect: National Best Bid Size
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.national_best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_snapshot_utp_v3_0.national_best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_bid_size, range, value, display)

  return offset + length, value
end

-- Nbbo Appendage Indicator
nasdaq_utp_snapshot_utp_v3_0.nbbo_appendage_indicator = {}

-- Size: Nbbo Appendage Indicator
nasdaq_utp_snapshot_utp_v3_0.nbbo_appendage_indicator.size = 1

-- Display: Nbbo Appendage Indicator
nasdaq_utp_snapshot_utp_v3_0.nbbo_appendage_indicator.labels = {
  ["0"] = "Nbbo Appendage Indicator: No National Bbo Change (0)",
  ["1"] = "Nbbo Appendage Indicator: No National Bbo Can Be Calculated (1)",
  ["2"] = "Nbbo Appendage Indicator: Short Form National Bbo Appendage Attached (2)",
  ["3"] = "Nbbo Appendage Indicator: Long Form National Bbo Appendage Attached (3)",
  ["4"] = "Nbbo Appendage Indicator: Quote Contains All National Bbo Information (4)",
}

nasdaq_utp_snapshot_utp_v3_0.nbbo_appendage_indicator.display = function(value)
  return nasdaq_utp_snapshot_utp_v3_0.nbbo_appendage_indicator.labels[value] or "Nbbo Appendage Indicator: Unknown("..value..")"
end

-- Dissect: Nbbo Appendage Indicator
nasdaq_utp_snapshot_utp_v3_0.nbbo_appendage_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.nbbo_appendage_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.nbbo_appendage_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.nbbo_appendage_indicator, range, value, display)

  return offset + length, value
end

-- Nbbo Quote Condition
nasdaq_utp_snapshot_utp_v3_0.nbbo_quote_condition = {}

-- Size: Nbbo Quote Condition
nasdaq_utp_snapshot_utp_v3_0.nbbo_quote_condition.size = 1

-- Display: Nbbo Quote Condition
nasdaq_utp_snapshot_utp_v3_0.nbbo_quote_condition.display = function(value)
  return "Nbbo Quote Condition: "..value
end

-- Dissect: Nbbo Quote Condition
nasdaq_utp_snapshot_utp_v3_0.nbbo_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.nbbo_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.nbbo_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.nbbo_quote_condition, range, value, display)

  return offset + length, value
end

-- New Issue Indicator
nasdaq_utp_snapshot_utp_v3_0.new_issue_indicator = {}

-- Size: New Issue Indicator
nasdaq_utp_snapshot_utp_v3_0.new_issue_indicator.size = 1

-- Display: New Issue Indicator
nasdaq_utp_snapshot_utp_v3_0.new_issue_indicator.display = function(value)
  return "New Issue Indicator: "..value
end

-- Dissect: New Issue Indicator
nasdaq_utp_snapshot_utp_v3_0.new_issue_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.new_issue_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.new_issue_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.new_issue_indicator, range, value, display)

  return offset + length, value
end

-- Odd Lot Attachment Count
nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_count = {}

-- Size: Odd Lot Attachment Count
nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_count.size = 2

-- Display: Odd Lot Attachment Count
nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_count.display = function(value)
  return "Odd Lot Attachment Count: "..value
end

-- Dissect: Odd Lot Attachment Count
nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.odd_lot_attachment_count, range, value, display)

  return offset + length, value
end

-- Odd Lot Attachment Type
nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_type = {}

-- Size: Odd Lot Attachment Type
nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_type.size = 1

-- Display: Odd Lot Attachment Type
nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_type.labels = {
  ["0"] = "Odd Lot Attachment Type: No Odd Lot Price Levels Attached (0)",
  ["2"] = "Odd Lot Attachment Type: Short Form Odd Lot Price Levels Attached (2)",
  ["3"] = "Odd Lot Attachment Type: Long Form Odd Lot Price Levels Attached (3)",
  ["5"] = "Odd Lot Attachment Type: Mpid Form Odd Lot Price Levels Attached (5)",
}

nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_type.display = function(value)
  return nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_type.labels[value] or "Odd Lot Attachment Type: Unknown("..value..")"
end

-- Dissect: Odd Lot Attachment Type
nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.odd_lot_attachment_type, range, value, display)

  return offset + length, value
end

-- Odd Lot Price
nasdaq_utp_snapshot_utp_v3_0.odd_lot_price = {}

-- Size: Odd Lot Price
nasdaq_utp_snapshot_utp_v3_0.odd_lot_price.size = 8

-- Display: Odd Lot Price
nasdaq_utp_snapshot_utp_v3_0.odd_lot_price.display = function(value)
  return "Odd Lot Price: "..value
end

-- Translate: Odd Lot Price
nasdaq_utp_snapshot_utp_v3_0.odd_lot_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Odd Lot Price
nasdaq_utp_snapshot_utp_v3_0.odd_lot_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.odd_lot_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.odd_lot_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.odd_lot_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.odd_lot_price, range, value, display)

  return offset + length, value
end

-- Old Symbol
nasdaq_utp_snapshot_utp_v3_0.old_symbol = {}

-- Size: Old Symbol
nasdaq_utp_snapshot_utp_v3_0.old_symbol.size = 11

-- Display: Old Symbol
nasdaq_utp_snapshot_utp_v3_0.old_symbol.display = function(value)
  return "Old Symbol: "..value
end

-- Dissect: Old Symbol
nasdaq_utp_snapshot_utp_v3_0.old_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.old_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.old_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.old_symbol, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_utp_snapshot_utp_v3_0.packet_length = {}

-- Size: Packet Length
nasdaq_utp_snapshot_utp_v3_0.packet_length.size = 2

-- Display: Packet Length
nasdaq_utp_snapshot_utp_v3_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_utp_snapshot_utp_v3_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_snapshot_utp_v3_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Participant Token
nasdaq_utp_snapshot_utp_v3_0.participant_token = {}

-- Size: Participant Token
nasdaq_utp_snapshot_utp_v3_0.participant_token.size = 8

-- Display: Participant Token
nasdaq_utp_snapshot_utp_v3_0.participant_token.display = function(value)
  return "Participant Token: "..value
end

-- Dissect: Participant Token
nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.participant_token.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_snapshot_utp_v3_0.participant_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.participant_token, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_utp_snapshot_utp_v3_0.password = {}

-- Size: Password
nasdaq_utp_snapshot_utp_v3_0.password.size = 10

-- Display: Password
nasdaq_utp_snapshot_utp_v3_0.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_utp_snapshot_utp_v3_0.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.password, range, value, display)

  return offset + length, value
end

-- Quote Condition
nasdaq_utp_snapshot_utp_v3_0.quote_condition = {}

-- Size: Quote Condition
nasdaq_utp_snapshot_utp_v3_0.quote_condition.size = 1

-- Display: Quote Condition
nasdaq_utp_snapshot_utp_v3_0.quote_condition.labels = {
  ["A"] = "Quote Condition: Manual Ask Automated Bid (A)",
  ["B"] = "Quote Condition: Manual Bid Automated Ask (B)",
  ["F"] = "Quote Condition: Fast Trading (F)",
  ["H"] = "Quote Condition: Manual Bid And Ask (H)",
  ["I"] = "Quote Condition: Order Imbalance (I)",
  ["L"] = "Quote Condition: Closed Quote (L)",
  ["N"] = "Quote Condition: Non Firm Quote (N)",
  ["O"] = "Quote Condition: Opening Quote Automated (O)",
  ["R"] = "Quote Condition: Regular Two Sided Open Quote Automated (R)",
  ["U"] = "Quote Condition: Manual Bid And Ask Non Firm (U)",
  ["X"] = "Quote Condition: Order Influx (X)",
  ["Y"] = "Quote Condition: Automated Bid No Offer Or Automated Offer No Bid (Y)",
  ["Z"] = "Quote Condition: No Open No Resume (Z)",
  ["4"] = "Quote Condition: Intraday Auction (4)",
}

nasdaq_utp_snapshot_utp_v3_0.quote_condition.display = function(value)
  return nasdaq_utp_snapshot_utp_v3_0.quote_condition.labels[value] or "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nasdaq_utp_snapshot_utp_v3_0.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Quote Message Type
nasdaq_utp_snapshot_utp_v3_0.quote_message_type = {}

-- Size: Quote Message Type
nasdaq_utp_snapshot_utp_v3_0.quote_message_type.size = 1

-- Display: Quote Message Type
nasdaq_utp_snapshot_utp_v3_0.quote_message_type.display = function(value)
  return "Quote Message Type: "..value
end

-- Dissect: Quote Message Type
nasdaq_utp_snapshot_utp_v3_0.quote_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.quote_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.quote_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.quote_message_type, range, value, display)

  return offset + length, value
end

-- Reason For The Trading Action
nasdaq_utp_snapshot_utp_v3_0.reason_for_the_trading_action = {}

-- Size: Reason For The Trading Action
nasdaq_utp_snapshot_utp_v3_0.reason_for_the_trading_action.size = 6

-- Display: Reason For The Trading Action
nasdaq_utp_snapshot_utp_v3_0.reason_for_the_trading_action.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.reason_for_the_trading_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.reason_for_the_trading_action.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.reason_for_the_trading_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.reason_for_the_trading_action, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_utp_snapshot_utp_v3_0.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_utp_snapshot_utp_v3_0.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_utp_snapshot_utp_v3_0.reg_sho_action.labels = {
  ["0"] = "Reg Sho Action: No Price Test In Effect (0)",
  ["1"] = "Reg Sho Action: Reg Sho In Effect Due To An Intra Day Price Drop In Security (1)",
  ["2"] = "Reg Sho Action: Reg Sho Restriction Remains In Effect (2)",
}

nasdaq_utp_snapshot_utp_v3_0.reg_sho_action.display = function(value)
  return nasdaq_utp_snapshot_utp_v3_0.reg_sho_action.labels[value] or "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
nasdaq_utp_snapshot_utp_v3_0.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_utp_snapshot_utp_v3_0.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_utp_snapshot_utp_v3_0.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_utp_snapshot_utp_v3_0.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
nasdaq_utp_snapshot_utp_v3_0.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_utp_snapshot_utp_v3_0.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_utp_snapshot_utp_v3_0.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_utp_snapshot_utp_v3_0.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_utp_snapshot_utp_v3_0.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.requested_sequence_number, range, value, "Requested Sequence Number: Not Applicable")
    item:add_proto_expert_info(nasdaq_utp_snapshot_utp_v3_0.experts.not_a_number, "Requested Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nasdaq_utp_snapshot_utp_v3_0.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_utp_snapshot_utp_v3_0.requested_session = {}

-- Size: Requested Session
nasdaq_utp_snapshot_utp_v3_0.requested_session.size = 10

-- Display: Requested Session
nasdaq_utp_snapshot_utp_v3_0.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_utp_snapshot_utp_v3_0.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.requested_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Retail Interest Indicator
nasdaq_utp_snapshot_utp_v3_0.retail_interest_indicator = {}

-- Size: Retail Interest Indicator
nasdaq_utp_snapshot_utp_v3_0.retail_interest_indicator.size = 1

-- Display: Retail Interest Indicator
nasdaq_utp_snapshot_utp_v3_0.retail_interest_indicator.display = function(value)
  if value == " " then
    return "Retail Interest Indicator: Retail Interest Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Retail Interest Indicator: Retail Interest On Bid Quote (A)"
  end
  if value == "B" then
    return "Retail Interest Indicator: Retail Interest On Ask Quote (B)"
  end
  if value == "C" then
    return "Retail Interest Indicator: Retail Interest On Both Bid And Ask Quote (C)"
  end

  return "Retail Interest Indicator: Unknown("..value..")"
end

-- Dissect: Retail Interest Indicator
nasdaq_utp_snapshot_utp_v3_0.retail_interest_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.retail_interest_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.retail_interest_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.retail_interest_indicator, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_utp_snapshot_utp_v3_0.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_utp_snapshot_utp_v3_0.round_lot_size.size = 2

-- Display: Round Lot Size
nasdaq_utp_snapshot_utp_v3_0.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_utp_snapshot_utp_v3_0.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_snapshot_utp_v3_0.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_utp_snapshot_utp_v3_0.sequence_number = {}

-- Size: Sequence Number
nasdaq_utp_snapshot_utp_v3_0.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_utp_snapshot_utp_v3_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_utp_snapshot_utp_v3_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_snapshot_utp_v3_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_utp_snapshot_utp_v3_0.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_utp_snapshot_utp_v3_0.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_utp_snapshot_utp_v3_0.server_packet_type.labels = {
  ["S"] = "Packet Type: Sequenced Data Packet (S)",
  ["+"] = "Packet Type: Debug Packet (+)",
  ["A"] = "Packet Type: Login Accepted Packet (A)",
  ["J"] = "Packet Type: Login Rejected Packet (J)",
  ["H"] = "Packet Type: Server Heartbeat Packet (H)",
  ["Z"] = "Packet Type: End Of Session Packet (Z)",
}

nasdaq_utp_snapshot_utp_v3_0.server_packet_type.display = function(value)
  return nasdaq_utp_snapshot_utp_v3_0.server_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
nasdaq_utp_snapshot_utp_v3_0.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Shares At Odd Lot Price
nasdaq_utp_snapshot_utp_v3_0.shares_at_odd_lot_price = {}

-- Size: Shares At Odd Lot Price
nasdaq_utp_snapshot_utp_v3_0.shares_at_odd_lot_price.size = 2

-- Display: Shares At Odd Lot Price
nasdaq_utp_snapshot_utp_v3_0.shares_at_odd_lot_price.display = function(value)
  return "Shares At Odd Lot Price: "..value
end

-- Dissect: Shares At Odd Lot Price
nasdaq_utp_snapshot_utp_v3_0.shares_at_odd_lot_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.shares_at_odd_lot_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_snapshot_utp_v3_0.shares_at_odd_lot_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.shares_at_odd_lot_price, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_utp_snapshot_utp_v3_0.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_utp_snapshot_utp_v3_0.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_utp_snapshot_utp_v3_0.short_sale_threshold_indicator.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_utp_snapshot_utp_v3_0.side = {}

-- Size: Side
nasdaq_utp_snapshot_utp_v3_0.side.size = 1

-- Display: Side
nasdaq_utp_snapshot_utp_v3_0.side.labels = {
  ["B"] = "Side: Update For The Bid Side (B)",
  ["A"] = "Side: Update For The Ask Side (A)",
}

nasdaq_utp_snapshot_utp_v3_0.side.display = function(value)
  return nasdaq_utp_snapshot_utp_v3_0.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_utp_snapshot_utp_v3_0.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.side, range, value, display)

  return offset + length, value
end

-- Sip Generated Update Flag
nasdaq_utp_snapshot_utp_v3_0.sip_generated_update_flag = {}

-- Size: Sip Generated Update Flag
nasdaq_utp_snapshot_utp_v3_0.sip_generated_update_flag.size = 1

-- Display: Sip Generated Update Flag
nasdaq_utp_snapshot_utp_v3_0.sip_generated_update_flag.display = function(value)
  if value == " " then
    return "Sip Generated Update Flag: Transaction Originated From Market Participant (<whitespace>)"
  end
  if value == "E" then
    return "Sip Generated Update Flag: Sip Generated Transaction Eg Price Band Change (E)"
  end

  return "Sip Generated Update Flag: Unknown("..value..")"
end

-- Dissect: Sip Generated Update Flag
nasdaq_utp_snapshot_utp_v3_0.sip_generated_update_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.sip_generated_update_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.sip_generated_update_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.sip_generated_update_flag, range, value, display)

  return offset + length, value
end

-- Sip Timestamp
nasdaq_utp_snapshot_utp_v3_0.sip_timestamp = {}

-- Size: Sip Timestamp
nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size = 8

-- Dissect: Sip Timestamp
nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nasdaq_utp_snapshot_utp_v3_0.fields.sip_timestamp
  if nasdaq_utp_snapshot_utp_v3_0.absolute_time_base == 1 then field = omi_nasdaq_utp_snapshot_utp_v3_0.fields.sip_timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Sub Market Center Id
nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id = {}

-- Size: Sub Market Center Id
nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size = 1

-- Display: Sub Market Center Id
nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.sub_market_center_id, range, value, display)

  return offset + length, value
end

-- Symbol
nasdaq_utp_snapshot_utp_v3_0.symbol = {}

-- Size: Symbol
nasdaq_utp_snapshot_utp_v3_0.symbol.size = 11

-- Display: Symbol
nasdaq_utp_snapshot_utp_v3_0.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nasdaq_utp_snapshot_utp_v3_0.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Timestamp 1
nasdaq_utp_snapshot_utp_v3_0.timestamp_1 = {}

-- Size: Timestamp 1
nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size = 8

-- Dissect: Timestamp 1
nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nasdaq_utp_snapshot_utp_v3_0.fields.timestamp_1
  if nasdaq_utp_snapshot_utp_v3_0.absolute_time_base == 1 then field = omi_nasdaq_utp_snapshot_utp_v3_0.fields.timestamp_1_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trading Action Code
nasdaq_utp_snapshot_utp_v3_0.trading_action_code = {}

-- Size: Trading Action Code
nasdaq_utp_snapshot_utp_v3_0.trading_action_code.size = 1

-- Display: Trading Action Code
nasdaq_utp_snapshot_utp_v3_0.trading_action_code.labels = {
  ["H"] = "Trading Action Code: Trading Halt (H)",
  ["Q"] = "Trading Action Code: Quotation Resumption Including After Ema (Q)",
  ["T"] = "Trading Action Code: Trading Resumption (T)",
  ["P"] = "Trading Action Code: Volatility Trading Pause (P)",
}

nasdaq_utp_snapshot_utp_v3_0.trading_action_code.display = function(value)
  return nasdaq_utp_snapshot_utp_v3_0.trading_action_code.labels[value] or "Trading Action Code: Unknown("..value..")"
end

-- Dissect: Trading Action Code
nasdaq_utp_snapshot_utp_v3_0.trading_action_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.trading_action_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.trading_action_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.trading_action_code, range, value, display)

  return offset + length, value
end

-- Trading Action Sequence Number
nasdaq_utp_snapshot_utp_v3_0.trading_action_sequence_number = {}

-- Size: Trading Action Sequence Number
nasdaq_utp_snapshot_utp_v3_0.trading_action_sequence_number.size = 4

-- Display: Trading Action Sequence Number
nasdaq_utp_snapshot_utp_v3_0.trading_action_sequence_number.display = function(value)
  return "Trading Action Sequence Number: "..value
end

-- Dissect: Trading Action Sequence Number
nasdaq_utp_snapshot_utp_v3_0.trading_action_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.trading_action_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_snapshot_utp_v3_0.trading_action_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.trading_action_sequence_number, range, value, display)

  return offset + length, value
end

-- Trading State
nasdaq_utp_snapshot_utp_v3_0.trading_state = {}

-- Size: Trading State
nasdaq_utp_snapshot_utp_v3_0.trading_state.size = 1

-- Display: Trading State
nasdaq_utp_snapshot_utp_v3_0.trading_state.labels = {
  ["H"] = "Trading State: Halted (H)",
  ["T"] = "Trading State: Trading (T)",
}

nasdaq_utp_snapshot_utp_v3_0.trading_state.display = function(value)
  return nasdaq_utp_snapshot_utp_v3_0.trading_state.labels[value] or "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
nasdaq_utp_snapshot_utp_v3_0.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_utp_snapshot_utp_v3_0.username = {}

-- Size: Username
nasdaq_utp_snapshot_utp_v3_0.username.size = 6

-- Display: Username
nasdaq_utp_snapshot_utp_v3_0.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_utp_snapshot_utp_v3_0.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.username, range, value, display)

  return offset + length, value
end

-- Version
nasdaq_utp_snapshot_utp_v3_0.version = {}

-- Size: Version
nasdaq_utp_snapshot_utp_v3_0.version.size = 1

-- Display: Version
nasdaq_utp_snapshot_utp_v3_0.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_utp_snapshot_utp_v3_0.version.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_snapshot_utp_v3_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Utp Snapshot Utp 3.0
-----------------------------------------------------------------------

-- End Of Session Packet
nasdaq_utp_snapshot_utp_v3_0.end_of_session_packet = {}

-- Display: End Of Session Packet
nasdaq_utp_snapshot_utp_v3_0.end_of_session_packet.display = function(packet, parent, length)
  return "End Of Session Packet"
end


-- Dissect: End Of Session Packet
nasdaq_utp_snapshot_utp_v3_0.end_of_session_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_utp_snapshot_utp_v3_0.end_of_session_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat Packet
nasdaq_utp_snapshot_utp_v3_0.server_heartbeat_packet = {}

-- Display: Server Heartbeat Packet
nasdaq_utp_snapshot_utp_v3_0.server_heartbeat_packet.display = function(packet, parent, length)
  return "Server Heartbeat Packet"
end


-- Dissect: Server Heartbeat Packet
nasdaq_utp_snapshot_utp_v3_0.server_heartbeat_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_utp_snapshot_utp_v3_0.server_heartbeat_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Rejected Packet
nasdaq_utp_snapshot_utp_v3_0.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_utp_snapshot_utp_v3_0.login_rejected_packet.size =
  nasdaq_utp_snapshot_utp_v3_0.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_utp_snapshot_utp_v3_0.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_utp_snapshot_utp_v3_0.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = nasdaq_utp_snapshot_utp_v3_0.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_utp_snapshot_utp_v3_0.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_utp_snapshot_utp_v3_0.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_utp_snapshot_utp_v3_0.login_accepted_packet.size =
  nasdaq_utp_snapshot_utp_v3_0.accepted_session.size + 
  nasdaq_utp_snapshot_utp_v3_0.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_utp_snapshot_utp_v3_0.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_utp_snapshot_utp_v3_0.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_utp_snapshot_utp_v3_0.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_utp_snapshot_utp_v3_0.accepted_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_utp_snapshot_utp_v3_0.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_utp_snapshot_utp_v3_0.debug_packet = {}

-- Calculate size of: Debug Packet
nasdaq_utp_snapshot_utp_v3_0.debug_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Debug Text
  index = index + buffer(offset + index - 3, 2):uint()

  return index
end

-- Display: Debug Packet
nasdaq_utp_snapshot_utp_v3_0.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_utp_snapshot_utp_v3_0.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Debug Text
  local size_of_debug_text = packet_length - 1

  -- Debug Text: 0 Byte Ascii String
  index, debug_text = nasdaq_utp_snapshot_utp_v3_0.debug_text.dissect(buffer, index, packet, parent, size_of_debug_text)

  return index
end

-- Dissect: Debug Packet
nasdaq_utp_snapshot_utp_v3_0.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Utp Adf Mpid Odd Lot Attachment
nasdaq_utp_snapshot_utp_v3_0.utp_adf_mpid_odd_lot_attachment = {}

-- Size: Utp Adf Mpid Odd Lot Attachment
nasdaq_utp_snapshot_utp_v3_0.utp_adf_mpid_odd_lot_attachment.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.side.size + 
  nasdaq_utp_snapshot_utp_v3_0.odd_lot_price.size + 
  nasdaq_utp_snapshot_utp_v3_0.shares_at_odd_lot_price.size + 
  nasdaq_utp_snapshot_utp_v3_0.adf_market_participant_identifier.size

-- Display: Utp Adf Mpid Odd Lot Attachment
nasdaq_utp_snapshot_utp_v3_0.utp_adf_mpid_odd_lot_attachment.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Utp Adf Mpid Odd Lot Attachment
nasdaq_utp_snapshot_utp_v3_0.utp_adf_mpid_odd_lot_attachment.fields = function(buffer, offset, packet, parent, utp_adf_mpid_odd_lot_attachment_index)
  local index = offset

  -- Implicit Utp Adf Mpid Odd Lot Attachment Index
  if utp_adf_mpid_odd_lot_attachment_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.utp_adf_mpid_odd_lot_attachment_index, utp_adf_mpid_odd_lot_attachment_index)
    iteration:set_generated()
  end

  -- Market Center Id: byte
  index, market_center_id = nasdaq_utp_snapshot_utp_v3_0.market_center_id.dissect(buffer, index, packet, parent)

  -- Side: byte
  index, side = nasdaq_utp_snapshot_utp_v3_0.side.dissect(buffer, index, packet, parent)

  -- Odd Lot Price: long
  index, odd_lot_price = nasdaq_utp_snapshot_utp_v3_0.odd_lot_price.dissect(buffer, index, packet, parent)

  -- Shares At Odd Lot Price: short
  index, shares_at_odd_lot_price = nasdaq_utp_snapshot_utp_v3_0.shares_at_odd_lot_price.dissect(buffer, index, packet, parent)

  -- Adf Market Participant Identifier: byte[]
  index, adf_market_participant_identifier = nasdaq_utp_snapshot_utp_v3_0.adf_market_participant_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Utp Adf Mpid Odd Lot Attachment
nasdaq_utp_snapshot_utp_v3_0.utp_adf_mpid_odd_lot_attachment.dissect = function(buffer, offset, packet, parent, utp_adf_mpid_odd_lot_attachment_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.utp_adf_mpid_odd_lot_attachment, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.utp_adf_mpid_odd_lot_attachment.fields(buffer, offset, packet, parent, utp_adf_mpid_odd_lot_attachment_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.utp_adf_mpid_odd_lot_attachment.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.utp_adf_mpid_odd_lot_attachment.fields(buffer, offset, packet, parent, utp_adf_mpid_odd_lot_attachment_index)
  end
end

-- Bolo Appendage Mpid Form
nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form = {}

-- Size: Bolo Appendage Mpid Form
nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form.size =
  nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_center.size + 
  nasdaq_utp_snapshot_utp_v3_0.bolo_bid_price.size + 
  nasdaq_utp_snapshot_utp_v3_0.bolo_bid_size.size + 
  nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_center.size + 
  nasdaq_utp_snapshot_utp_v3_0.bolo_ask_price.size + 
  nasdaq_utp_snapshot_utp_v3_0.bolo_ask_size.size + 
  nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_participant_identifier.size + 
  nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_participant_identifier.size

-- Display: Bolo Appendage Mpid Form
nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bolo Appendage Mpid Form
nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bolo Best Bid Market Center: byte
  index, bolo_best_bid_market_center = nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_center.dissect(buffer, index, packet, parent)

  -- Bolo Bid Price: long
  index, bolo_bid_price = nasdaq_utp_snapshot_utp_v3_0.bolo_bid_price.dissect(buffer, index, packet, parent)

  -- Bolo Bid Size: short
  index, bolo_bid_size = nasdaq_utp_snapshot_utp_v3_0.bolo_bid_size.dissect(buffer, index, packet, parent)

  -- Bolo Best Ask Market Center: byte
  index, bolo_best_ask_market_center = nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_center.dissect(buffer, index, packet, parent)

  -- Bolo Ask Price: long
  index, bolo_ask_price = nasdaq_utp_snapshot_utp_v3_0.bolo_ask_price.dissect(buffer, index, packet, parent)

  -- Bolo Ask Size: short
  index, bolo_ask_size = nasdaq_utp_snapshot_utp_v3_0.bolo_ask_size.dissect(buffer, index, packet, parent)

  -- Bolo Best Bid Market Participant Identifier: byte[]
  index, bolo_best_bid_market_participant_identifier = nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_participant_identifier.dissect(buffer, index, packet, parent)

  -- Bolo Best Ask Market Participant Identifier: byte[]
  index, bolo_best_ask_market_participant_identifier = nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_participant_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bolo Appendage Mpid Form
nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_appendage_mpid_form, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form.fields(buffer, offset, packet, parent)
  end
end

-- Odd Lot Quote Message Long Form
nasdaq_utp_snapshot_utp_v3_0.odd_lot_quote_message_long_form = {}

-- Calculate size of: Odd Lot Quote Message Long Form
nasdaq_utp_snapshot_utp_v3_0.odd_lot_quote_message_long_form.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.participant_token.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.adf_timestamp.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.symbol.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.sip_generated_update_flag.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_indicator.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_type.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_count.size

  local bolo_appendage_indicator = buffer(offset + 46, 1):string()

  if bolo_appendage_indicator == "5" then
    index = index + nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form.size

  end

  local odd_lot_attachment_type = buffer(offset + 47, 1):string()

  if odd_lot_attachment_type == "5" then
    -- Calculate field size from count
    local utp_adf_mpid_odd_lot_attachment_count = buffer(offset + 48, 2):uint()
    index = index + utp_adf_mpid_odd_lot_attachment_count * 16

  end

  return index
end

-- Display: Odd Lot Quote Message Long Form
nasdaq_utp_snapshot_utp_v3_0.odd_lot_quote_message_long_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Odd Lot Quote Message Long Form
nasdaq_utp_snapshot_utp_v3_0.odd_lot_quote_message_long_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  -- Adf Timestamp: long
  index, adf_timestamp = nasdaq_utp_snapshot_utp_v3_0.adf_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: byte[]
  index, symbol = nasdaq_utp_snapshot_utp_v3_0.symbol.dissect(buffer, index, packet, parent)

  -- Sip Generated Update Flag: byte
  index, sip_generated_update_flag = nasdaq_utp_snapshot_utp_v3_0.sip_generated_update_flag.dissect(buffer, index, packet, parent)

  -- Bolo Appendage Indicator: byte
  index, bolo_appendage_indicator = nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Odd Lot Attachment Type: byte
  index, odd_lot_attachment_type = nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_type.dissect(buffer, index, packet, parent)

  -- Odd Lot Attachment Count: short
  index, odd_lot_attachment_count = nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_count.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Bolo Appendage Mpid Form
  local bolo_appendage_mpid_form = nil

  local bolo_appendage_mpid_form_exists = bolo_appendage_indicator == "5"

  if bolo_appendage_mpid_form_exists then
    index, bolo_appendage_mpid_form = nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Utp Adf Mpid Odd Lot Attachment
  local utp_adf_mpid_odd_lot_attachment = nil

  local utp_adf_mpid_odd_lot_attachment_exists = odd_lot_attachment_type == "5"

  if utp_adf_mpid_odd_lot_attachment_exists then

    -- Repeating: Utp Adf Mpid Odd Lot Attachment
    for utp_adf_mpid_odd_lot_attachment_index = 1, odd_lot_attachment_count do
      index, utp_adf_mpid_odd_lot_attachment = nasdaq_utp_snapshot_utp_v3_0.utp_adf_mpid_odd_lot_attachment.dissect(buffer, index, packet, parent, utp_adf_mpid_odd_lot_attachment_index)
    end
  end

  return index
end

-- Dissect: Odd Lot Quote Message Long Form
nasdaq_utp_snapshot_utp_v3_0.odd_lot_quote_message_long_form.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.odd_lot_quote_message_long_form, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.odd_lot_quote_message_long_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.odd_lot_quote_message_long_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.odd_lot_quote_message_long_form.fields(buffer, offset, packet, parent)
  end
end

-- Finra Adf Mpid Appendage
nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage = {}

-- Size: Finra Adf Mpid Appendage
nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage.size =
  nasdaq_utp_snapshot_utp_v3_0.bid_adf_mpid.size + 
  nasdaq_utp_snapshot_utp_v3_0.ask_adf_mpid.size

-- Display: Finra Adf Mpid Appendage
nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Finra Adf Mpid Appendage
nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Adf Mpid: byte[]
  index, bid_adf_mpid = nasdaq_utp_snapshot_utp_v3_0.bid_adf_mpid.dissect(buffer, index, packet, parent)

  -- Ask Adf Mpid: byte[]
  index, ask_adf_mpid = nasdaq_utp_snapshot_utp_v3_0.ask_adf_mpid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Finra Adf Mpid Appendage
nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.finra_adf_mpid_appendage, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage.fields(buffer, offset, packet, parent)
  end
end

-- National Bbo Appendage Long Form
nasdaq_utp_snapshot_utp_v3_0.national_bbo_appendage_long_form = {}

-- Size: National Bbo Appendage Long Form
nasdaq_utp_snapshot_utp_v3_0.national_bbo_appendage_long_form.size =
  nasdaq_utp_snapshot_utp_v3_0.nbbo_quote_condition.size + 
  nasdaq_utp_snapshot_utp_v3_0.national_best_bid_market_center.size + 
  nasdaq_utp_snapshot_utp_v3_0.national_best_bid_price.size + 
  nasdaq_utp_snapshot_utp_v3_0.national_best_bid_size.size + 
  nasdaq_utp_snapshot_utp_v3_0.national_best_ask_market_center.size + 
  nasdaq_utp_snapshot_utp_v3_0.national_best_ask_price.size + 
  nasdaq_utp_snapshot_utp_v3_0.national_best_ask_size.size

-- Display: National Bbo Appendage Long Form
nasdaq_utp_snapshot_utp_v3_0.national_bbo_appendage_long_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: National Bbo Appendage Long Form
nasdaq_utp_snapshot_utp_v3_0.national_bbo_appendage_long_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nbbo Quote Condition: byte
  index, nbbo_quote_condition = nasdaq_utp_snapshot_utp_v3_0.nbbo_quote_condition.dissect(buffer, index, packet, parent)

  -- National Best Bid Market Center: byte
  index, national_best_bid_market_center = nasdaq_utp_snapshot_utp_v3_0.national_best_bid_market_center.dissect(buffer, index, packet, parent)

  -- National Best Bid Price: long
  index, national_best_bid_price = nasdaq_utp_snapshot_utp_v3_0.national_best_bid_price.dissect(buffer, index, packet, parent)

  -- National Best Bid Size: int
  index, national_best_bid_size = nasdaq_utp_snapshot_utp_v3_0.national_best_bid_size.dissect(buffer, index, packet, parent)

  -- National Best Ask Market Center: byte
  index, national_best_ask_market_center = nasdaq_utp_snapshot_utp_v3_0.national_best_ask_market_center.dissect(buffer, index, packet, parent)

  -- National Best Ask Price: long
  index, national_best_ask_price = nasdaq_utp_snapshot_utp_v3_0.national_best_ask_price.dissect(buffer, index, packet, parent)

  -- National Best Ask Size: int
  index, national_best_ask_size = nasdaq_utp_snapshot_utp_v3_0.national_best_ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: National Bbo Appendage Long Form
nasdaq_utp_snapshot_utp_v3_0.national_bbo_appendage_long_form.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_bbo_appendage_long_form, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.national_bbo_appendage_long_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.national_bbo_appendage_long_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.national_bbo_appendage_long_form.fields(buffer, offset, packet, parent)
  end
end

-- Utp Combined Quote Message Long Form
nasdaq_utp_snapshot_utp_v3_0.utp_combined_quote_message_long_form = {}

-- Calculate size of: Utp Combined Quote Message Long Form
nasdaq_utp_snapshot_utp_v3_0.utp_combined_quote_message_long_form.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.participant_token.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.finra_adf_timestamp.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.symbol.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.bid_price.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.bid_size.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.ask_price.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.ask_size.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.quote_condition.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.sip_generated_update_flag.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.luld_bbo_indicator.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.retail_interest_indicator.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.nbbo_appendage_indicator.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.luld_national_bbo_indicator.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage_indicator.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_indicator.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_type.size

  index = index + nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_count.size

  local nbbo_appendage_indicator = buffer(offset + 73, 1):string()

  if nbbo_appendage_indicator == "3" then
    index = index + nasdaq_utp_snapshot_utp_v3_0.national_bbo_appendage_long_form.size

  end

  local finra_adf_mpid_appendage_indicator = buffer(offset + 75, 1):string()

  if finra_adf_mpid_appendage_indicator == "2" then
    index = index + nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage.size

  end

  local bolo_appendage_indicator = buffer(offset + 76, 1):string()

  if bolo_appendage_indicator == "5" then
    index = index + nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form.size

  end

  local odd_lot_attachment_type = buffer(offset + 77, 1):string()

  if odd_lot_attachment_type == "5" then
    -- Calculate field size from count
    local utp_adf_mpid_odd_lot_attachment_count = buffer(offset + 78, 2):uint()
    index = index + utp_adf_mpid_odd_lot_attachment_count * 16

  end

  return index
end

-- Display: Utp Combined Quote Message Long Form
nasdaq_utp_snapshot_utp_v3_0.utp_combined_quote_message_long_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Utp Combined Quote Message Long Form
nasdaq_utp_snapshot_utp_v3_0.utp_combined_quote_message_long_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  -- Finra Adf Timestamp: long
  index, finra_adf_timestamp = nasdaq_utp_snapshot_utp_v3_0.finra_adf_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: byte[]
  index, symbol = nasdaq_utp_snapshot_utp_v3_0.symbol.dissect(buffer, index, packet, parent)

  -- Bid Price: long
  index, bid_price = nasdaq_utp_snapshot_utp_v3_0.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: int
  index, bid_size = nasdaq_utp_snapshot_utp_v3_0.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: long
  index, ask_price = nasdaq_utp_snapshot_utp_v3_0.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: int
  index, ask_size = nasdaq_utp_snapshot_utp_v3_0.ask_size.dissect(buffer, index, packet, parent)

  -- Quote Condition: byte
  index, quote_condition = nasdaq_utp_snapshot_utp_v3_0.quote_condition.dissect(buffer, index, packet, parent)

  -- Sip Generated Update Flag: byte
  index, sip_generated_update_flag = nasdaq_utp_snapshot_utp_v3_0.sip_generated_update_flag.dissect(buffer, index, packet, parent)

  -- Luld Bbo Indicator: byte
  index, luld_bbo_indicator = nasdaq_utp_snapshot_utp_v3_0.luld_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Retail Interest Indicator: byte
  index, retail_interest_indicator = nasdaq_utp_snapshot_utp_v3_0.retail_interest_indicator.dissect(buffer, index, packet, parent)

  -- Nbbo Appendage Indicator: byte
  index, nbbo_appendage_indicator = nasdaq_utp_snapshot_utp_v3_0.nbbo_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Luld National Bbo Indicator: byte
  index, luld_national_bbo_indicator = nasdaq_utp_snapshot_utp_v3_0.luld_national_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Finra Adf Mpid Appendage Indicator: byte
  index, finra_adf_mpid_appendage_indicator = nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Bolo Appendage Indicator: byte
  index, bolo_appendage_indicator = nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Odd Lot Attachment Type: byte
  index, odd_lot_attachment_type = nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_type.dissect(buffer, index, packet, parent)

  -- Odd Lot Attachment Count: short
  index, odd_lot_attachment_count = nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_count.dissect(buffer, index, packet, parent)

  -- Runtime optional field: National Bbo Appendage Long Form
  local national_bbo_appendage_long_form = nil

  local national_bbo_appendage_long_form_exists = nbbo_appendage_indicator == "3"

  if national_bbo_appendage_long_form_exists then
    index, national_bbo_appendage_long_form = nasdaq_utp_snapshot_utp_v3_0.national_bbo_appendage_long_form.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Finra Adf Mpid Appendage
  local finra_adf_mpid_appendage = nil

  local finra_adf_mpid_appendage_exists = finra_adf_mpid_appendage_indicator == "2"

  if finra_adf_mpid_appendage_exists then
    index, finra_adf_mpid_appendage = nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Bolo Appendage Mpid Form
  local bolo_appendage_mpid_form = nil

  local bolo_appendage_mpid_form_exists = bolo_appendage_indicator == "5"

  if bolo_appendage_mpid_form_exists then
    index, bolo_appendage_mpid_form = nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Utp Adf Mpid Odd Lot Attachment
  local utp_adf_mpid_odd_lot_attachment = nil

  local utp_adf_mpid_odd_lot_attachment_exists = odd_lot_attachment_type == "5"

  if utp_adf_mpid_odd_lot_attachment_exists then

    -- Repeating: Utp Adf Mpid Odd Lot Attachment
    for utp_adf_mpid_odd_lot_attachment_index = 1, odd_lot_attachment_count do
      index, utp_adf_mpid_odd_lot_attachment = nasdaq_utp_snapshot_utp_v3_0.utp_adf_mpid_odd_lot_attachment.dissect(buffer, index, packet, parent, utp_adf_mpid_odd_lot_attachment_index)
    end
  end

  return index
end

-- Dissect: Utp Combined Quote Message Long Form
nasdaq_utp_snapshot_utp_v3_0.utp_combined_quote_message_long_form.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.utp_combined_quote_message_long_form, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.utp_combined_quote_message_long_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.utp_combined_quote_message_long_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.utp_combined_quote_message_long_form.fields(buffer, offset, packet, parent)
  end
end

-- Quote Message Payload
nasdaq_utp_snapshot_utp_v3_0.quote_message_payload = {}

-- Dispatch: Quote Message Payload
nasdaq_utp_snapshot_utp_v3_0.quote_message_payload.dispatch = {
  ["D"] = nasdaq_utp_snapshot_utp_v3_0.utp_combined_quote_message_long_form.dissect,
  ["B"] = nasdaq_utp_snapshot_utp_v3_0.odd_lot_quote_message_long_form.dissect,
}

-- Dissect: Quote Message Payload
nasdaq_utp_snapshot_utp_v3_0.quote_message_payload.dissect = function(buffer, offset, packet, parent, quote_message_type)
  local dissect = nasdaq_utp_snapshot_utp_v3_0.quote_message_payload.dispatch[quote_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Quote Message
nasdaq_utp_snapshot_utp_v3_0.quote_message = {}

-- Calculate size of: Quote Message
nasdaq_utp_snapshot_utp_v3_0.quote_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_snapshot_utp_v3_0.quote_message_type.size

  -- Calculate runtime size of Quote Message Payload field
  local quote_message_payload_offset = offset + index
  local quote_message_payload_type = buffer(quote_message_payload_offset - 1, 1):string()
  index = index + nasdaq_utp_snapshot_utp_v3_0.quote_message_payload.size(buffer, quote_message_payload_offset, quote_message_payload_type)

  return index
end

-- Display: Quote Message
nasdaq_utp_snapshot_utp_v3_0.quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Message
nasdaq_utp_snapshot_utp_v3_0.quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Message Type: 1 Byte Ascii String
  index, quote_message_type = nasdaq_utp_snapshot_utp_v3_0.quote_message_type.dissect(buffer, index, packet, parent)

  -- Quote Message Payload: Runtime Type with 2 branches
  index = nasdaq_utp_snapshot_utp_v3_0.quote_message_payload.dissect(buffer, index, packet, parent, quote_message_type)

  return index
end

-- Dissect: Quote Message
nasdaq_utp_snapshot_utp_v3_0.quote_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.quote_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.quote_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Transmissions Message
nasdaq_utp_snapshot_utp_v3_0.end_of_transmissions_message = {}

-- Size: End Of Transmissions Message
nasdaq_utp_snapshot_utp_v3_0.end_of_transmissions_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size

-- Display: End Of Transmissions Message
nasdaq_utp_snapshot_utp_v3_0.end_of_transmissions_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmissions Message
nasdaq_utp_snapshot_utp_v3_0.end_of_transmissions_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmissions Message
nasdaq_utp_snapshot_utp_v3_0.end_of_transmissions_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.end_of_transmissions_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.end_of_transmissions_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.end_of_transmissions_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.end_of_transmissions_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Day Message
nasdaq_utp_snapshot_utp_v3_0.end_of_day_message = {}

-- Size: End Of Day Message
nasdaq_utp_snapshot_utp_v3_0.end_of_day_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size

-- Display: End Of Day Message
nasdaq_utp_snapshot_utp_v3_0.end_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Message
nasdaq_utp_snapshot_utp_v3_0.end_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
nasdaq_utp_snapshot_utp_v3_0.end_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.end_of_day_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.end_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.end_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.end_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Session Close Message
nasdaq_utp_snapshot_utp_v3_0.market_session_close_message = {}

-- Size: Market Session Close Message
nasdaq_utp_snapshot_utp_v3_0.market_session_close_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size

-- Display: Market Session Close Message
nasdaq_utp_snapshot_utp_v3_0.market_session_close_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Close Message
nasdaq_utp_snapshot_utp_v3_0.market_session_close_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Close Message
nasdaq_utp_snapshot_utp_v3_0.market_session_close_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_session_close_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.market_session_close_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.market_session_close_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.market_session_close_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Session Open Message
nasdaq_utp_snapshot_utp_v3_0.market_session_open_message = {}

-- Size: Market Session Open Message
nasdaq_utp_snapshot_utp_v3_0.market_session_open_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size

-- Display: Market Session Open Message
nasdaq_utp_snapshot_utp_v3_0.market_session_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Open Message
nasdaq_utp_snapshot_utp_v3_0.market_session_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Open Message
nasdaq_utp_snapshot_utp_v3_0.market_session_open_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_session_open_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.market_session_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.market_session_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.market_session_open_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Day Message
nasdaq_utp_snapshot_utp_v3_0.start_of_day_message = {}

-- Size: Start Of Day Message
nasdaq_utp_snapshot_utp_v3_0.start_of_day_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size

-- Display: Start Of Day Message
nasdaq_utp_snapshot_utp_v3_0.start_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Day Message
nasdaq_utp_snapshot_utp_v3_0.start_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
nasdaq_utp_snapshot_utp_v3_0.start_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.start_of_day_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.start_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.start_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.start_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Control Message Payload
nasdaq_utp_snapshot_utp_v3_0.control_message_payload = {}

-- Dispatch: Control Message Payload
nasdaq_utp_snapshot_utp_v3_0.control_message_payload.dispatch = {
  ["I"] = nasdaq_utp_snapshot_utp_v3_0.start_of_day_message.dissect,
  ["O"] = nasdaq_utp_snapshot_utp_v3_0.market_session_open_message.dissect,
  ["C"] = nasdaq_utp_snapshot_utp_v3_0.market_session_close_message.dissect,
  ["J"] = nasdaq_utp_snapshot_utp_v3_0.end_of_day_message.dissect,
  ["Z"] = nasdaq_utp_snapshot_utp_v3_0.end_of_transmissions_message.dissect,
}

-- Dissect: Control Message Payload
nasdaq_utp_snapshot_utp_v3_0.control_message_payload.dissect = function(buffer, offset, packet, parent, control_message_type)
  local dissect = nasdaq_utp_snapshot_utp_v3_0.control_message_payload.dispatch[control_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Control Message
nasdaq_utp_snapshot_utp_v3_0.control_message = {}

-- Calculate size of: Control Message
nasdaq_utp_snapshot_utp_v3_0.control_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_snapshot_utp_v3_0.control_message_type.size

  -- Calculate runtime size of Control Message Payload field
  local control_message_payload_offset = offset + index
  local control_message_payload_type = buffer(control_message_payload_offset - 1, 1):string()
  index = index + nasdaq_utp_snapshot_utp_v3_0.control_message_payload.size(buffer, control_message_payload_offset, control_message_payload_type)

  return index
end

-- Display: Control Message
nasdaq_utp_snapshot_utp_v3_0.control_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control Message
nasdaq_utp_snapshot_utp_v3_0.control_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Control Message Type: 1 Byte Ascii String
  index, control_message_type = nasdaq_utp_snapshot_utp_v3_0.control_message_type.dissect(buffer, index, packet, parent)

  -- Control Message Payload: Runtime Type with 5 branches
  index = nasdaq_utp_snapshot_utp_v3_0.control_message_payload.dissect(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control Message
nasdaq_utp_snapshot_utp_v3_0.control_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.control_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.control_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.control_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.control_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Sequence Message
nasdaq_utp_snapshot_utp_v3_0.snapshot_sequence_message = {}

-- Size: Snapshot Sequence Message
nasdaq_utp_snapshot_utp_v3_0.snapshot_sequence_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size + 
  nasdaq_utp_snapshot_utp_v3_0.sequence_number.size

-- Display: Snapshot Sequence Message
nasdaq_utp_snapshot_utp_v3_0.snapshot_sequence_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Sequence Message
nasdaq_utp_snapshot_utp_v3_0.snapshot_sequence_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  -- Sequence Number: long
  index, sequence_number = nasdaq_utp_snapshot_utp_v3_0.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Sequence Message
nasdaq_utp_snapshot_utp_v3_0.snapshot_sequence_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.snapshot_sequence_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.snapshot_sequence_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.snapshot_sequence_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.snapshot_sequence_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Collar Message
nasdaq_utp_snapshot_utp_v3_0.auction_collar_message = {}

-- Size: Auction Collar Message
nasdaq_utp_snapshot_utp_v3_0.auction_collar_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size + 
  nasdaq_utp_snapshot_utp_v3_0.symbol.size + 
  nasdaq_utp_snapshot_utp_v3_0.trading_action_sequence_number.size + 
  nasdaq_utp_snapshot_utp_v3_0.collar_reference_price.size + 
  nasdaq_utp_snapshot_utp_v3_0.collar_up_price.size + 
  nasdaq_utp_snapshot_utp_v3_0.collar_down_price.size + 
  nasdaq_utp_snapshot_utp_v3_0.collar_extension_indicator.size

-- Display: Auction Collar Message
nasdaq_utp_snapshot_utp_v3_0.auction_collar_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Collar Message
nasdaq_utp_snapshot_utp_v3_0.auction_collar_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol: byte[]
  index, symbol = nasdaq_utp_snapshot_utp_v3_0.symbol.dissect(buffer, index, packet, parent)

  -- Trading Action Sequence Number: int
  index, trading_action_sequence_number = nasdaq_utp_snapshot_utp_v3_0.trading_action_sequence_number.dissect(buffer, index, packet, parent)

  -- Collar Reference Price: long
  index, collar_reference_price = nasdaq_utp_snapshot_utp_v3_0.collar_reference_price.dissect(buffer, index, packet, parent)

  -- Collar Up Price: long
  index, collar_up_price = nasdaq_utp_snapshot_utp_v3_0.collar_up_price.dissect(buffer, index, packet, parent)

  -- Collar Down Price: long
  index, collar_down_price = nasdaq_utp_snapshot_utp_v3_0.collar_down_price.dissect(buffer, index, packet, parent)

  -- Collar Extension Indicator: byte
  index, collar_extension_indicator = nasdaq_utp_snapshot_utp_v3_0.collar_extension_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Collar Message
nasdaq_utp_snapshot_utp_v3_0.auction_collar_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.auction_collar_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.auction_collar_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.auction_collar_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.auction_collar_message.fields(buffer, offset, packet, parent)
  end
end

-- Limit Up Limit Down Price Band Message
nasdaq_utp_snapshot_utp_v3_0.limit_up_limit_down_price_band_message = {}

-- Size: Limit Up Limit Down Price Band Message
nasdaq_utp_snapshot_utp_v3_0.limit_up_limit_down_price_band_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size + 
  nasdaq_utp_snapshot_utp_v3_0.symbol.size + 
  nasdaq_utp_snapshot_utp_v3_0.luld_price_band_indicator.size + 
  nasdaq_utp_snapshot_utp_v3_0.luld_price_band_effective_time.size + 
  nasdaq_utp_snapshot_utp_v3_0.limit_down_price.size + 
  nasdaq_utp_snapshot_utp_v3_0.limit_up_price.size

-- Display: Limit Up Limit Down Price Band Message
nasdaq_utp_snapshot_utp_v3_0.limit_up_limit_down_price_band_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Up Limit Down Price Band Message
nasdaq_utp_snapshot_utp_v3_0.limit_up_limit_down_price_band_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol: byte[]
  index, symbol = nasdaq_utp_snapshot_utp_v3_0.symbol.dissect(buffer, index, packet, parent)

  -- Luld Price Band Indicator: byte
  index, luld_price_band_indicator = nasdaq_utp_snapshot_utp_v3_0.luld_price_band_indicator.dissect(buffer, index, packet, parent)

  -- Luld Price Band Effective Time: long
  index, luld_price_band_effective_time = nasdaq_utp_snapshot_utp_v3_0.luld_price_band_effective_time.dissect(buffer, index, packet, parent)

  -- Limit Down Price: long
  index, limit_down_price = nasdaq_utp_snapshot_utp_v3_0.limit_down_price.dissect(buffer, index, packet, parent)

  -- Limit Up Price: long
  index, limit_up_price = nasdaq_utp_snapshot_utp_v3_0.limit_up_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Limit Up Limit Down Price Band Message
nasdaq_utp_snapshot_utp_v3_0.limit_up_limit_down_price_band_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.limit_up_limit_down_price_band_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.limit_up_limit_down_price_band_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.limit_up_limit_down_price_band_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.limit_up_limit_down_price_band_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Wide Circuit Breaker Decline Level Message
nasdaq_utp_snapshot_utp_v3_0.market_wide_circuit_breaker_decline_level_message = {}

-- Size: Market Wide Circuit Breaker Decline Level Message
nasdaq_utp_snapshot_utp_v3_0.market_wide_circuit_breaker_decline_level_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size + 
  nasdaq_utp_snapshot_utp_v3_0.mwcb_level_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.mwcb_level_2.size + 
  nasdaq_utp_snapshot_utp_v3_0.mwcb_level_3.size

-- Display: Market Wide Circuit Breaker Decline Level Message
nasdaq_utp_snapshot_utp_v3_0.market_wide_circuit_breaker_decline_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Decline Level Message
nasdaq_utp_snapshot_utp_v3_0.market_wide_circuit_breaker_decline_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  -- Mwcb Level 1: long
  index, mwcb_level_1 = nasdaq_utp_snapshot_utp_v3_0.mwcb_level_1.dissect(buffer, index, packet, parent)

  -- Mwcb Level 2: long
  index, mwcb_level_2 = nasdaq_utp_snapshot_utp_v3_0.mwcb_level_2.dissect(buffer, index, packet, parent)

  -- Mwcb Level 3: long
  index, mwcb_level_3 = nasdaq_utp_snapshot_utp_v3_0.mwcb_level_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Decline Level Message
nasdaq_utp_snapshot_utp_v3_0.market_wide_circuit_breaker_decline_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_wide_circuit_breaker_decline_level_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.market_wide_circuit_breaker_decline_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.market_wide_circuit_breaker_decline_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.market_wide_circuit_breaker_decline_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Center Trading Action Message
nasdaq_utp_snapshot_utp_v3_0.market_center_trading_action_message = {}

-- Size: Market Center Trading Action Message
nasdaq_utp_snapshot_utp_v3_0.market_center_trading_action_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size + 
  nasdaq_utp_snapshot_utp_v3_0.symbol.size + 
  nasdaq_utp_snapshot_utp_v3_0.trading_action_code.size + 
  nasdaq_utp_snapshot_utp_v3_0.action_time.size + 
  nasdaq_utp_snapshot_utp_v3_0.market_center_identifier.size

-- Display: Market Center Trading Action Message
nasdaq_utp_snapshot_utp_v3_0.market_center_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Center Trading Action Message
nasdaq_utp_snapshot_utp_v3_0.market_center_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol: byte[]
  index, symbol = nasdaq_utp_snapshot_utp_v3_0.symbol.dissect(buffer, index, packet, parent)

  -- Trading Action Code: byte
  index, trading_action_code = nasdaq_utp_snapshot_utp_v3_0.trading_action_code.dissect(buffer, index, packet, parent)

  -- Action Time: long
  index, action_time = nasdaq_utp_snapshot_utp_v3_0.action_time.dissect(buffer, index, packet, parent)

  -- Market Center Identifier: byte
  index, market_center_identifier = nasdaq_utp_snapshot_utp_v3_0.market_center_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Center Trading Action Message
nasdaq_utp_snapshot_utp_v3_0.market_center_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_center_trading_action_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.market_center_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.market_center_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.market_center_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Sro Trading Action Message
nasdaq_utp_snapshot_utp_v3_0.cross_sro_trading_action_message = {}

-- Size: Cross Sro Trading Action Message
nasdaq_utp_snapshot_utp_v3_0.cross_sro_trading_action_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size + 
  nasdaq_utp_snapshot_utp_v3_0.symbol.size + 
  nasdaq_utp_snapshot_utp_v3_0.trading_action_code.size + 
  nasdaq_utp_snapshot_utp_v3_0.trading_action_sequence_number.size + 
  nasdaq_utp_snapshot_utp_v3_0.action_time.size + 
  nasdaq_utp_snapshot_utp_v3_0.reason_for_the_trading_action.size

-- Display: Cross Sro Trading Action Message
nasdaq_utp_snapshot_utp_v3_0.cross_sro_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Sro Trading Action Message
nasdaq_utp_snapshot_utp_v3_0.cross_sro_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol: byte[]
  index, symbol = nasdaq_utp_snapshot_utp_v3_0.symbol.dissect(buffer, index, packet, parent)

  -- Trading Action Code: byte
  index, trading_action_code = nasdaq_utp_snapshot_utp_v3_0.trading_action_code.dissect(buffer, index, packet, parent)

  -- Trading Action Sequence Number: int
  index, trading_action_sequence_number = nasdaq_utp_snapshot_utp_v3_0.trading_action_sequence_number.dissect(buffer, index, packet, parent)

  -- Action Time: long
  index, action_time = nasdaq_utp_snapshot_utp_v3_0.action_time.dissect(buffer, index, packet, parent)

  -- Reason For The Trading Action: byte[]
  index, reason_for_the_trading_action = nasdaq_utp_snapshot_utp_v3_0.reason_for_the_trading_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Sro Trading Action Message
nasdaq_utp_snapshot_utp_v3_0.cross_sro_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.cross_sro_trading_action_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.cross_sro_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.cross_sro_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.cross_sro_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utp_snapshot_utp_v3_0.reg_sho_short_sale_price_test_restricted_indicator_message = {}

-- Size: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utp_snapshot_utp_v3_0.reg_sho_short_sale_price_test_restricted_indicator_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size + 
  nasdaq_utp_snapshot_utp_v3_0.symbol.size + 
  nasdaq_utp_snapshot_utp_v3_0.reg_sho_action.size

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utp_snapshot_utp_v3_0.reg_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utp_snapshot_utp_v3_0.reg_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol: byte[]
  index, symbol = nasdaq_utp_snapshot_utp_v3_0.symbol.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: byte
  index, reg_sho_action = nasdaq_utp_snapshot_utp_v3_0.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utp_snapshot_utp_v3_0.reg_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.reg_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.reg_sho_short_sale_price_test_restricted_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Enhanced Issue Symbol Directory Message
nasdaq_utp_snapshot_utp_v3_0.enhanced_issue_symbol_directory_message = {}

-- Size: Enhanced Issue Symbol Directory Message
nasdaq_utp_snapshot_utp_v3_0.enhanced_issue_symbol_directory_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size + 
  nasdaq_utp_snapshot_utp_v3_0.symbol.size + 
  nasdaq_utp_snapshot_utp_v3_0.old_symbol.size + 
  nasdaq_utp_snapshot_utp_v3_0.issue_name.size + 
  nasdaq_utp_snapshot_utp_v3_0.issue_type.size + 
  nasdaq_utp_snapshot_utp_v3_0.issue_subtype.size + 
  nasdaq_utp_snapshot_utp_v3_0.market_tier.size + 
  nasdaq_utp_snapshot_utp_v3_0.authenticity.size + 
  nasdaq_utp_snapshot_utp_v3_0.short_sale_threshold_indicator.size + 
  nasdaq_utp_snapshot_utp_v3_0.round_lot_size.size + 
  nasdaq_utp_snapshot_utp_v3_0.financial_status_indicator.size + 
  nasdaq_utp_snapshot_utp_v3_0.etp_indicator.size + 
  nasdaq_utp_snapshot_utp_v3_0.new_issue_indicator.size + 
  nasdaq_utp_snapshot_utp_v3_0.mpi_tick.size + 
  nasdaq_utp_snapshot_utp_v3_0.trading_state.size + 
  nasdaq_utp_snapshot_utp_v3_0.halt_reason.size + 
  nasdaq_utp_snapshot_utp_v3_0.reg_sho_action.size + 
  nasdaq_utp_snapshot_utp_v3_0.consolidated_prior_day_close_price.size + 
  nasdaq_utp_snapshot_utp_v3_0.listing_market_official_prior_day_close_price.size

-- Display: Enhanced Issue Symbol Directory Message
nasdaq_utp_snapshot_utp_v3_0.enhanced_issue_symbol_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enhanced Issue Symbol Directory Message
nasdaq_utp_snapshot_utp_v3_0.enhanced_issue_symbol_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol: byte[]
  index, symbol = nasdaq_utp_snapshot_utp_v3_0.symbol.dissect(buffer, index, packet, parent)

  -- Old Symbol: byte[]
  index, old_symbol = nasdaq_utp_snapshot_utp_v3_0.old_symbol.dissect(buffer, index, packet, parent)

  -- Issue Name: byte[]
  index, issue_name = nasdaq_utp_snapshot_utp_v3_0.issue_name.dissect(buffer, index, packet, parent)

  -- Issue Type: byte
  index, issue_type = nasdaq_utp_snapshot_utp_v3_0.issue_type.dissect(buffer, index, packet, parent)

  -- Issue Subtype: byte[]
  index, issue_subtype = nasdaq_utp_snapshot_utp_v3_0.issue_subtype.dissect(buffer, index, packet, parent)

  -- Market Tier: byte
  index, market_tier = nasdaq_utp_snapshot_utp_v3_0.market_tier.dissect(buffer, index, packet, parent)

  -- Authenticity: byte
  index, authenticity = nasdaq_utp_snapshot_utp_v3_0.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: byte
  index, short_sale_threshold_indicator = nasdaq_utp_snapshot_utp_v3_0.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: short
  index, round_lot_size = nasdaq_utp_snapshot_utp_v3_0.round_lot_size.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: byte
  index, financial_status_indicator = nasdaq_utp_snapshot_utp_v3_0.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Etp Indicator: byte
  index, etp_indicator = nasdaq_utp_snapshot_utp_v3_0.etp_indicator.dissect(buffer, index, packet, parent)

  -- New Issue Indicator: byte
  index, new_issue_indicator = nasdaq_utp_snapshot_utp_v3_0.new_issue_indicator.dissect(buffer, index, packet, parent)

  -- Mpi Tick: byte
  index, mpi_tick = nasdaq_utp_snapshot_utp_v3_0.mpi_tick.dissect(buffer, index, packet, parent)

  -- Trading State: byte
  index, trading_state = nasdaq_utp_snapshot_utp_v3_0.trading_state.dissect(buffer, index, packet, parent)

  -- Halt Reason: byte[]
  index, halt_reason = nasdaq_utp_snapshot_utp_v3_0.halt_reason.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: byte
  index, reg_sho_action = nasdaq_utp_snapshot_utp_v3_0.reg_sho_action.dissect(buffer, index, packet, parent)

  -- Consolidated Prior Day Close Price: long
  index, consolidated_prior_day_close_price = nasdaq_utp_snapshot_utp_v3_0.consolidated_prior_day_close_price.dissect(buffer, index, packet, parent)

  -- Listing Market Official Prior Day Close Price: long
  index, listing_market_official_prior_day_close_price = nasdaq_utp_snapshot_utp_v3_0.listing_market_official_prior_day_close_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enhanced Issue Symbol Directory Message
nasdaq_utp_snapshot_utp_v3_0.enhanced_issue_symbol_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.enhanced_issue_symbol_directory_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.enhanced_issue_symbol_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.enhanced_issue_symbol_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.enhanced_issue_symbol_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Issue Symbol Directory Message
nasdaq_utp_snapshot_utp_v3_0.issue_symbol_directory_message = {}

-- Size: Issue Symbol Directory Message
nasdaq_utp_snapshot_utp_v3_0.issue_symbol_directory_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size + 
  nasdaq_utp_snapshot_utp_v3_0.symbol.size + 
  nasdaq_utp_snapshot_utp_v3_0.old_symbol.size + 
  nasdaq_utp_snapshot_utp_v3_0.issue_name.size + 
  nasdaq_utp_snapshot_utp_v3_0.issue_type.size + 
  nasdaq_utp_snapshot_utp_v3_0.issue_subtype.size + 
  nasdaq_utp_snapshot_utp_v3_0.market_tier.size + 
  nasdaq_utp_snapshot_utp_v3_0.authenticity.size + 
  nasdaq_utp_snapshot_utp_v3_0.short_sale_threshold_indicator.size + 
  nasdaq_utp_snapshot_utp_v3_0.round_lot_size.size + 
  nasdaq_utp_snapshot_utp_v3_0.financial_status_indicator.size

-- Display: Issue Symbol Directory Message
nasdaq_utp_snapshot_utp_v3_0.issue_symbol_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Issue Symbol Directory Message
nasdaq_utp_snapshot_utp_v3_0.issue_symbol_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol: byte[]
  index, symbol = nasdaq_utp_snapshot_utp_v3_0.symbol.dissect(buffer, index, packet, parent)

  -- Old Symbol: byte[]
  index, old_symbol = nasdaq_utp_snapshot_utp_v3_0.old_symbol.dissect(buffer, index, packet, parent)

  -- Issue Name: byte[]
  index, issue_name = nasdaq_utp_snapshot_utp_v3_0.issue_name.dissect(buffer, index, packet, parent)

  -- Issue Type: byte
  index, issue_type = nasdaq_utp_snapshot_utp_v3_0.issue_type.dissect(buffer, index, packet, parent)

  -- Issue Subtype: byte[]
  index, issue_subtype = nasdaq_utp_snapshot_utp_v3_0.issue_subtype.dissect(buffer, index, packet, parent)

  -- Market Tier: byte
  index, market_tier = nasdaq_utp_snapshot_utp_v3_0.market_tier.dissect(buffer, index, packet, parent)

  -- Authenticity: byte
  index, authenticity = nasdaq_utp_snapshot_utp_v3_0.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: byte
  index, short_sale_threshold_indicator = nasdaq_utp_snapshot_utp_v3_0.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: short
  index, round_lot_size = nasdaq_utp_snapshot_utp_v3_0.round_lot_size.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: byte
  index, financial_status_indicator = nasdaq_utp_snapshot_utp_v3_0.financial_status_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Issue Symbol Directory Message
nasdaq_utp_snapshot_utp_v3_0.issue_symbol_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.issue_symbol_directory_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.issue_symbol_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.issue_symbol_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.issue_symbol_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Administrative Message Payload
nasdaq_utp_snapshot_utp_v3_0.administrative_message_payload = {}

-- Dispatch: Administrative Message Payload
nasdaq_utp_snapshot_utp_v3_0.administrative_message_payload.dispatch = {
  ["B"] = nasdaq_utp_snapshot_utp_v3_0.issue_symbol_directory_message.dissect,
  ["F"] = nasdaq_utp_snapshot_utp_v3_0.enhanced_issue_symbol_directory_message.dissect,
  ["V"] = nasdaq_utp_snapshot_utp_v3_0.reg_sho_short_sale_price_test_restricted_indicator_message.dissect,
  ["H"] = nasdaq_utp_snapshot_utp_v3_0.cross_sro_trading_action_message.dissect,
  ["K"] = nasdaq_utp_snapshot_utp_v3_0.market_center_trading_action_message.dissect,
  ["C"] = nasdaq_utp_snapshot_utp_v3_0.market_wide_circuit_breaker_decline_level_message.dissect,
  ["P"] = nasdaq_utp_snapshot_utp_v3_0.limit_up_limit_down_price_band_message.dissect,
  ["E"] = nasdaq_utp_snapshot_utp_v3_0.auction_collar_message.dissect,
  ["S"] = nasdaq_utp_snapshot_utp_v3_0.snapshot_sequence_message.dissect,
}

-- Dissect: Administrative Message Payload
nasdaq_utp_snapshot_utp_v3_0.administrative_message_payload.dissect = function(buffer, offset, packet, parent, administrative_message_type)
  local dissect = nasdaq_utp_snapshot_utp_v3_0.administrative_message_payload.dispatch[administrative_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Administrative Message
nasdaq_utp_snapshot_utp_v3_0.administrative_message = {}

-- Calculate size of: Administrative Message
nasdaq_utp_snapshot_utp_v3_0.administrative_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_snapshot_utp_v3_0.administrative_message_type.size

  -- Calculate runtime size of Administrative Message Payload field
  local administrative_message_payload_offset = offset + index
  local administrative_message_payload_type = buffer(administrative_message_payload_offset - 1, 1):string()
  index = index + nasdaq_utp_snapshot_utp_v3_0.administrative_message_payload.size(buffer, administrative_message_payload_offset, administrative_message_payload_type)

  return index
end

-- Display: Administrative Message
nasdaq_utp_snapshot_utp_v3_0.administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Administrative Message
nasdaq_utp_snapshot_utp_v3_0.administrative_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Administrative Message Type: 1 Byte Ascii String
  index, administrative_message_type = nasdaq_utp_snapshot_utp_v3_0.administrative_message_type.dissect(buffer, index, packet, parent)

  -- Administrative Message Payload: Runtime Type with 9 branches
  index = nasdaq_utp_snapshot_utp_v3_0.administrative_message_payload.dissect(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative Message
nasdaq_utp_snapshot_utp_v3_0.administrative_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.administrative_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.administrative_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.administrative_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.administrative_message.fields(buffer, offset, packet, parent)
  end
end

-- Category Payload
nasdaq_utp_snapshot_utp_v3_0.category_payload = {}

-- Dispatch: Category Payload
nasdaq_utp_snapshot_utp_v3_0.category_payload.dispatch = {
  ["A"] = nasdaq_utp_snapshot_utp_v3_0.administrative_message.dissect,
  ["C"] = nasdaq_utp_snapshot_utp_v3_0.control_message.dissect,
  ["Q"] = nasdaq_utp_snapshot_utp_v3_0.quote_message.dissect,
}

-- Dissect: Category Payload
nasdaq_utp_snapshot_utp_v3_0.category_payload.dissect = function(buffer, offset, packet, parent, message_category)
  local dissect = nasdaq_utp_snapshot_utp_v3_0.category_payload.dispatch[message_category]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_utp_snapshot_utp_v3_0.message_header = {}

-- Size: Message Header
nasdaq_utp_snapshot_utp_v3_0.message_header.size =
  nasdaq_utp_snapshot_utp_v3_0.version.size + 
  nasdaq_utp_snapshot_utp_v3_0.message_category.size

-- Display: Message Header
nasdaq_utp_snapshot_utp_v3_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_utp_snapshot_utp_v3_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: Byte
  index, version = nasdaq_utp_snapshot_utp_v3_0.version.dissect(buffer, index, packet, parent)

  -- Message Category: Byte
  index, message_category = nasdaq_utp_snapshot_utp_v3_0.message_category.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_utp_snapshot_utp_v3_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.message_header, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Data Packet
nasdaq_utp_snapshot_utp_v3_0.sequenced_data_packet = {}

-- Calculate size of: Sequenced Data Packet
nasdaq_utp_snapshot_utp_v3_0.sequenced_data_packet.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_snapshot_utp_v3_0.message_header.size

  -- Parse runtime size of: Category Payload
  index = index + buffer(offset + index - 5, 2):uint()

  return index
end

-- Display: Sequenced Data Packet
nasdaq_utp_snapshot_utp_v3_0.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_utp_snapshot_utp_v3_0.sequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_utp_snapshot_utp_v3_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 1, 1):string()

  -- Category Payload: Runtime Type with 3 branches
  index = nasdaq_utp_snapshot_utp_v3_0.category_payload.dissect(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_utp_snapshot_utp_v3_0.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.sequenced_data_packet, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.sequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.sequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.sequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Tcp Payload
nasdaq_utp_snapshot_utp_v3_0.server_tcp_payload = {}

-- Dispatch: Server Tcp Payload
nasdaq_utp_snapshot_utp_v3_0.server_tcp_payload.dispatch = {
  ["S"] = nasdaq_utp_snapshot_utp_v3_0.sequenced_data_packet.dissect,
  ["+"] = nasdaq_utp_snapshot_utp_v3_0.debug_packet.dissect,
  ["A"] = nasdaq_utp_snapshot_utp_v3_0.login_accepted_packet.dissect,
  ["J"] = nasdaq_utp_snapshot_utp_v3_0.login_rejected_packet.dissect,
  ["H"] = nasdaq_utp_snapshot_utp_v3_0.server_heartbeat_packet.dissect,
  ["Z"] = nasdaq_utp_snapshot_utp_v3_0.end_of_session_packet.dissect,
}

-- Dissect: Server Tcp Payload
nasdaq_utp_snapshot_utp_v3_0.server_tcp_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  local dissect = nasdaq_utp_snapshot_utp_v3_0.server_tcp_payload.dispatch[server_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Tcp Packet Header
nasdaq_utp_snapshot_utp_v3_0.server_tcp_packet_header = {}

-- Size: Server Tcp Packet Header
nasdaq_utp_snapshot_utp_v3_0.server_tcp_packet_header.size =
  nasdaq_utp_snapshot_utp_v3_0.packet_length.size + 
  nasdaq_utp_snapshot_utp_v3_0.server_packet_type.size

-- Display: Server Tcp Packet Header
nasdaq_utp_snapshot_utp_v3_0.server_tcp_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Tcp Packet Header
nasdaq_utp_snapshot_utp_v3_0.server_tcp_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: Short
  index, packet_length = nasdaq_utp_snapshot_utp_v3_0.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: Char
  index, server_packet_type = nasdaq_utp_snapshot_utp_v3_0.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Tcp Packet Header
nasdaq_utp_snapshot_utp_v3_0.server_tcp_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.server_tcp_packet_header, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.server_tcp_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.server_tcp_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.server_tcp_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Packet
nasdaq_utp_snapshot_utp_v3_0.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_utp_snapshot_utp_v3_0.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_utp_snapshot_utp_v3_0.server_tcp_packet_header.size
end

-- Dissect Server Packet
nasdaq_utp_snapshot_utp_v3_0.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Server Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Server Tcp Packet Header: Struct of 2 fields
    index, server_tcp_packet_header = nasdaq_utp_snapshot_utp_v3_0.server_tcp_packet_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Server Packet Type
    local server_packet_type = buffer(index - 1, 1):string()

    -- Server Tcp Payload: Runtime Type with 6 branches
    index = nasdaq_utp_snapshot_utp_v3_0.server_tcp_payload.dissect(buffer, index, packet, parent, server_packet_type)
  end

  return index
end

-- Logout Request Packet
nasdaq_utp_snapshot_utp_v3_0.logout_request_packet = {}

-- Display: Logout Request Packet
nasdaq_utp_snapshot_utp_v3_0.logout_request_packet.display = function(packet, parent, length)
  return "Logout Request Packet"
end


-- Dissect: Logout Request Packet
nasdaq_utp_snapshot_utp_v3_0.logout_request_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_utp_snapshot_utp_v3_0.logout_request_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat Packet
nasdaq_utp_snapshot_utp_v3_0.client_heartbeat_packet = {}

-- Display: Client Heartbeat Packet
nasdaq_utp_snapshot_utp_v3_0.client_heartbeat_packet.display = function(packet, parent, length)
  return "Client Heartbeat Packet"
end


-- Dissect: Client Heartbeat Packet
nasdaq_utp_snapshot_utp_v3_0.client_heartbeat_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_utp_snapshot_utp_v3_0.client_heartbeat_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Request Packet
nasdaq_utp_snapshot_utp_v3_0.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_utp_snapshot_utp_v3_0.login_request_packet.size =
  nasdaq_utp_snapshot_utp_v3_0.username.size + 
  nasdaq_utp_snapshot_utp_v3_0.password.size + 
  nasdaq_utp_snapshot_utp_v3_0.requested_session.size + 
  nasdaq_utp_snapshot_utp_v3_0.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_utp_snapshot_utp_v3_0.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_utp_snapshot_utp_v3_0.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_utp_snapshot_utp_v3_0.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_utp_snapshot_utp_v3_0.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_utp_snapshot_utp_v3_0.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_utp_snapshot_utp_v3_0.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_utp_snapshot_utp_v3_0.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Tcp Payload
nasdaq_utp_snapshot_utp_v3_0.client_tcp_payload = {}

-- Dispatch: Client Tcp Payload
nasdaq_utp_snapshot_utp_v3_0.client_tcp_payload.dispatch = {
  ["+"] = nasdaq_utp_snapshot_utp_v3_0.debug_packet.dissect,
  ["L"] = nasdaq_utp_snapshot_utp_v3_0.login_request_packet.dissect,
  ["R"] = nasdaq_utp_snapshot_utp_v3_0.client_heartbeat_packet.dissect,
  ["O"] = nasdaq_utp_snapshot_utp_v3_0.logout_request_packet.dissect,
}

-- Dissect: Client Tcp Payload
nasdaq_utp_snapshot_utp_v3_0.client_tcp_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  local dissect = nasdaq_utp_snapshot_utp_v3_0.client_tcp_payload.dispatch[client_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Tcp Packet Header
nasdaq_utp_snapshot_utp_v3_0.client_tcp_packet_header = {}

-- Size: Client Tcp Packet Header
nasdaq_utp_snapshot_utp_v3_0.client_tcp_packet_header.size =
  nasdaq_utp_snapshot_utp_v3_0.packet_length.size + 
  nasdaq_utp_snapshot_utp_v3_0.client_packet_type.size

-- Display: Client Tcp Packet Header
nasdaq_utp_snapshot_utp_v3_0.client_tcp_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Tcp Packet Header
nasdaq_utp_snapshot_utp_v3_0.client_tcp_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: Short
  index, packet_length = nasdaq_utp_snapshot_utp_v3_0.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: Char
  index, client_packet_type = nasdaq_utp_snapshot_utp_v3_0.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Tcp Packet Header
nasdaq_utp_snapshot_utp_v3_0.client_tcp_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.client_tcp_packet_header, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.client_tcp_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.client_tcp_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.client_tcp_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Packet
nasdaq_utp_snapshot_utp_v3_0.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_utp_snapshot_utp_v3_0.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_utp_snapshot_utp_v3_0.client_tcp_packet_header.size
end

-- Dissect Client Packet
nasdaq_utp_snapshot_utp_v3_0.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Client Tcp Packet Header: Struct of 2 fields
    index, client_tcp_packet_header = nasdaq_utp_snapshot_utp_v3_0.client_tcp_packet_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Client Packet Type
    local client_packet_type = buffer(index - 1, 1):string()

    -- Client Tcp Payload: Runtime Type with 4 branches
    index = nasdaq_utp_snapshot_utp_v3_0.client_tcp_payload.dissect(buffer, index, packet, parent, client_packet_type)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_utp_snapshot_utp_v3_0.init()
end

-- Connection roles for Nasdaq Utp Snapshot Utp 3.0: Client is the initiator, Server is the acceptor
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
nasdaq_utp_snapshot_utp_v3_0.role = function(packet)
  if omi_nasdaq_utp_snapshot_utp_v3_0.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_utp_snapshot_utp_v3_0.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_utp_snapshot_utp_v3_0.prefs.acceptor_port

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

  if omi_nasdaq_utp_snapshot_utp_v3_0.prefs.swap_sides then
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
nasdaq_utp_snapshot_utp_v3_0.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq Utp Snapshot Utp 3.0
function omi_nasdaq_utp_snapshot_utp_v3_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_utp_snapshot_utp_v3_0.name

  local role = nasdaq_utp_snapshot_utp_v3_0.role(packet)
  local dissect = nasdaq_utp_snapshot_utp_v3_0.server_packet.dissect
  if role == "initiator" then
    dissect = nasdaq_utp_snapshot_utp_v3_0.client_packet.dissect
  end

  local length = buffer:len()
  local index = 0

  -- Dissect each message the segment carries
  while index < length do
    local remaining = length - index

    -- The message length lives in the header: wait for the header before reading it
    if remaining < nasdaq_utp_snapshot_utp_v3_0.client_tcp_packet_header.size then
      packet.desegment_offset = index
      packet.desegment_len = DESEGMENT_ONE_MORE_SEGMENT
      return length
    end

    local size = buffer(index, 2):uint() + 2
    -- A message split across segments: ask TCP for exactly the bytes still missing
    if remaining < size then
      packet.desegment_offset = index
      packet.desegment_len = size - remaining
      return length
    end

    local protocol = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0, buffer(index, size), omi_nasdaq_utp_snapshot_utp_v3_0.description, "("..size.." Bytes)")
    dissect(buffer(index, size):tvb(), packet, protocol)
    protocol:set_len(size)
    index = index + size
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_utp_snapshot_utp_v3_0.client_packet.fingerprint = function(buffer)
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

  -- Client Heartbeat Packet
  if client_packet_type == "R" then
    return true
  end

  -- Logout Request Packet
  if client_packet_type == "O" then
    return true
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nasdaq_utp_snapshot_utp_v3_0.server_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local server_packet_type = buffer(2, 1):string()

  -- Sequenced Data Packet: carries the application messages, which tell this protocol from others sharing the session framing
  if server_packet_type == "S" then
    if buffer:len() < 5 then
      return false
    end

    local message_category = buffer(4, 1):string()

    -- Administrative Message
    if message_category == "A" then
      return true
    end

    -- Control Message
    if message_category == "C" then
      return true
    end

    -- Quote Message
    if message_category == "Q" then
      return true
    end

    return false
  end

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

  -- Server Heartbeat Packet
  if server_packet_type == "H" then
    return true
  end

  -- End Of Session Packet
  if server_packet_type == "Z" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq Utp Snapshot Utp 3.0 (Tcp)
local function omi_nasdaq_utp_snapshot_utp_v3_0_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_utp_snapshot_utp_v3_0.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not nasdaq_utp_snapshot_utp_v3_0.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_utp_snapshot_utp_v3_0
  omi_nasdaq_utp_snapshot_utp_v3_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq Utp Snapshot Utp 3.0 (Tcp)
local function omi_nasdaq_utp_snapshot_utp_v3_0_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_utp_snapshot_utp_v3_0.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not nasdaq_utp_snapshot_utp_v3_0.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_utp_snapshot_utp_v3_0
  omi_nasdaq_utp_snapshot_utp_v3_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq Utp Snapshot Utp 3.0 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_utp_snapshot_utp_v3_0_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_utp_snapshot_utp_v3_0.role(packet)
  local initiator = omi_nasdaq_utp_snapshot_utp_v3_0_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_utp_snapshot_utp_v3_0_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_utp_snapshot_utp_v3_0.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_utp_snapshot_utp_v3_0.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq Utp Snapshot Utp 3.0
omi_nasdaq_utp_snapshot_utp_v3_0:register_heuristic("tcp", omi_nasdaq_utp_snapshot_utp_v3_0_tcp_heuristic)

-- Register Nasdaq Utp Snapshot Utp 3.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_utp_snapshot_utp_v3_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 3.0
--   Date: Monday, June 1, 2026
--   Specification: UTPSnapShotSpec.pdf
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
