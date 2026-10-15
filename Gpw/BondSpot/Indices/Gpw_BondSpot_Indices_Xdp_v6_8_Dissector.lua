-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Gpw BondSpot Indices Xdp 6.8 Protocol
local omi_gpw_bondspot_indices_xdp_v6_8 = Proto("Omi.Gpw.BondSpot.Indices.Xdp.v6.8", "Gpw BondSpot Indices Xdp 6.8")

-- Protocol table
local gpw_bondspot_indices_xdp_v6_8 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Gpw BondSpot Indices Xdp 6.8 Fields
omi_gpw_bondspot_indices_xdp_v6_8.fields.capitalisation_portfolio = ProtoField.new("Capitalisation Portfolio", "gpw.bondspot.indices.xdp.v6.8.capitalisationportfolio", ftypes.UINT32, nil, nil, nil, "Capitalisation of the portfolio for the closing index expressed in the currency of the index, on basis of which the closing index is calculated")
omi_gpw_bondspot_indices_xdp_v6_8.fields.capitalisation_scale_code = ProtoField.new("Capitalisation Scale Code", "gpw.bondspot.indices.xdp.v6.8.capitalisationscalecode", ftypes.UINT8, nil, nil, nil, "To be combined with CapitalisationPortfolio Not used for strategy index (in 548 message the field ProductClassification filled in with value \"M\")")
omi_gpw_bondspot_indices_xdp_v6_8.fields.cash_portfolio_scale_code = ProtoField.new("Cash Portfolio Scale Code", "gpw.bondspot.indices.xdp.v6.8.cashportfolioscalecode", ftypes.UINT8, nil, nil, nil, "To be combined with LevelCashPortfolio")
omi_gpw_bondspot_indices_xdp_v6_8.fields.closing_index_value = ProtoField.new("Closing Index Value", "gpw.bondspot.indices.xdp.v6.8.closingindexvalue", ftypes.UINT32, nil, nil, nil, "Closing index value (To be calculated with the LevelScaleCode)")
omi_gpw_bondspot_indices_xdp_v6_8.fields.date_validity = ProtoField.new("Date Validity", "gpw.bondspot.indices.xdp.v6.8.datevalidity", ftypes.STRING, nil, nil, nil, "Date of validity of index portfolio / information product (YYYYMMDD)")
omi_gpw_bondspot_indices_xdp_v6_8.fields.delivery_flag = ProtoField.new("Delivery Flag", "gpw.bondspot.indices.xdp.v6.8.deliveryflag", ftypes.UINT8, nil, nil, nil, "Indicates delivery method, and a client reads it to determine whether the packet is ZliB compressed")
omi_gpw_bondspot_indices_xdp_v6_8.fields.difference_central_spread = ProtoField.new("Difference Central Spread", "gpw.bondspot.indices.xdp.v6.8.differencecentralspread", ftypes.UINT32, nil, nil, nil, "The point difference of central spread to the current value of index (To be calculated with the LevelScaleCode) The field is completed for messages with level '1' and '2' till the end continuous trading phase")
omi_gpw_bondspot_indices_xdp_v6_8.fields.dissemination_frequency_marker = ProtoField.new("Dissemination Frequency Marker", "gpw.bondspot.indices.xdp.v6.8.disseminationfrequencymarker", ftypes.STRING, nil, nil, nil, "One letter marker determining, whether the information on index value will be published in the next message at a particular level")
omi_gpw_bondspot_indices_xdp_v6_8.fields.ind_index_opening_portfolio = ProtoField.new("Ind Index Opening Portfolio", "gpw.bondspot.indices.xdp.v6.8.indindexopeningportfolio", ftypes.UINT32, nil, nil, nil, "Indicator of the index opening portfolio W(t) (To be calculated with the LevelScaleCode) The percentage change of the value of the packages of the instruments, for which the quotation was set to the total value of the index portfolio")
omi_gpw_bondspot_indices_xdp_v6_8.fields.ind_opening_portfolio = ProtoField.new("Ind Opening Portfolio", "gpw.bondspot.indices.xdp.v6.8.indopeningportfolio", ftypes.UINT32, nil, nil, nil, "Indicator of the opening of the index portfolio W(t) for closing index")
omi_gpw_bondspot_indices_xdp_v6_8.fields.index_adjustment_coefficient = ProtoField.new("Index Adjustment Coefficient", "gpw.bondspot.indices.xdp.v6.8.indexadjustmentcoefficient", ftypes.UINT32, nil, nil, nil, "Index adjustment coefficient K(t) for the closing index (To be combined with IndexAdjustmentScaleCode)")
omi_gpw_bondspot_indices_xdp_v6_8.fields.index_adjustment_scale_code = ProtoField.new("Index Adjustment Scale Code", "gpw.bondspot.indices.xdp.v6.8.indexadjustmentscalecode", ftypes.UINT8, nil, nil, nil, "To be combined with IndexAdjustmentCoefficient")
omi_gpw_bondspot_indices_xdp_v6_8.fields.index_currency = ProtoField.new("Index Currency", "gpw.bondspot.indices.xdp.v6.8.indexcurrency", ftypes.STRING, nil, nil, nil, "Index currency / information product currency")
omi_gpw_bondspot_indices_xdp_v6_8.fields.index_level = ProtoField.new("Index Level", "gpw.bondspot.indices.xdp.v6.8.indexlevel", ftypes.UINT32, nil, nil, nil, "The value of the last level for the index according to the definition provided in the IndexLevelCode (To be calculated with the LevelScaleCode)")
omi_gpw_bondspot_indices_xdp_v6_8.fields.index_level_code = ProtoField.new("Index Level Code", "gpw.bondspot.indices.xdp.v6.8.indexlevelcode", ftypes.STRING)
omi_gpw_bondspot_indices_xdp_v6_8.fields.index_portfolio_component = ProtoField.new("Index Portfolio Component", "gpw.bondspot.indices.xdp.v6.8.indexportfoliocomponent", ftypes.STRING, nil, nil, nil, "Characteristics of index portfolio / information product; block is repeated 20 times")
omi_gpw_bondspot_indices_xdp_v6_8.fields.index_pres_seq = ProtoField.new("Index Pres Seq", "gpw.bondspot.indices.xdp.v6.8.indexpresseq", ftypes.STRING, nil, nil, nil, "Index presentation sequence marker For other information product the field :filler")
omi_gpw_bondspot_indices_xdp_v6_8.fields.index_status_indicator = ProtoField.new("Index Status Indicator", "gpw.bondspot.indices.xdp.v6.8.indexstatusindicator", ftypes.STRING, nil, nil, nil, "Two letter marker informing about the index status at the time of publishing the message")
omi_gpw_bondspot_indices_xdp_v6_8.fields.index_value_ask = ProtoField.new("Index Value Ask", "gpw.bondspot.indices.xdp.v6.8.indexvalueask", ftypes.UINT32, nil, nil, nil, "The calculated value of the sell index based on the best sell offers of instruments")
omi_gpw_bondspot_indices_xdp_v6_8.fields.index_value_bid = ProtoField.new("Index Value Bid", "gpw.bondspot.indices.xdp.v6.8.indexvaluebid", ftypes.UINT32, nil, nil, nil, "The calculated value of the buy index based on the best buy offers of instruments (To be calculated with the LevelScaleCode) The field is completed for messages with level '3', '1' and '2' till the end continuous trading phase")
omi_gpw_bondspot_indices_xdp_v6_8.fields.instrument_abbrev_name = ProtoField.new("Instrument Abbrev Name", "gpw.bondspot.indices.xdp.v6.8.instrumentabbrevname", ftypes.STRING, nil, nil, nil, "Abbreviated name of the instrument")
omi_gpw_bondspot_indices_xdp_v6_8.fields.instrument_isin = ProtoField.new("Instrument Isin", "gpw.bondspot.indices.xdp.v6.8.instrumentisin", ftypes.STRING, nil, nil, nil, "ISIN code of the instrument")
omi_gpw_bondspot_indices_xdp_v6_8.fields.instrument_packet = ProtoField.new("Instrument Packet", "gpw.bondspot.indices.xdp.v6.8.instrumentpacket", ftypes.STRING, nil, nil, nil, "Instrument packet in index portfolio / of information product")
omi_gpw_bondspot_indices_xdp_v6_8.fields.level_cash_portfolio = ProtoField.new("Level Cash Portfolio", "gpw.bondspot.indices.xdp.v6.8.levelcashportfolio", ftypes.UINT32, nil, nil, nil, "Level in cash in portfolio For strategy indices (in 548 message the field ProductClassification filled in with value \"S\" or \"L\") the field is filled in with value of interbank reference rate adopted in the index calculation algorithm")
omi_gpw_bondspot_indices_xdp_v6_8.fields.level_scale_code = ProtoField.new("Level Scale Code", "gpw.bondspot.indices.xdp.v6.8.levelscalecode", ftypes.UINT8, nil, nil, nil, "To be combined with values of the following fields : IndexLevel SessionHigh, SessionLow, IndIndexOpeningPortfolio, PercentChangeTOI, PctChangeIndexValPrevSession, PctChangeIndexValPrevYear, TOI, PointChange, ValueTrading, IndexValueBid, IndexValueAsk, MidSpreadIndex, DifferenceCentralSpread")
omi_gpw_bondspot_indices_xdp_v6_8.fields.marker_closing_prev_session = ProtoField.new("Marker Closing Prev Session", "gpw.bondspot.indices.xdp.v6.8.markerclosingprevsession", ftypes.STRING, nil, nil, nil, "Marker of the percentage change of the index at a particular session to the closing index value from the previous session")
omi_gpw_bondspot_indices_xdp_v6_8.fields.marker_closing_prev_year = ProtoField.new("Marker Closing Prev Year", "gpw.bondspot.indices.xdp.v6.8.markerclosingprevyear", ftypes.STRING, nil, nil, nil, "Marker of the percentage change of the closing value of the index to its value at the end of the previous year")
omi_gpw_bondspot_indices_xdp_v6_8.fields.marker_difference_central_spread = ProtoField.new("Marker Difference Central Spread", "gpw.bondspot.indices.xdp.v6.8.markerdifferencecentralspread", ftypes.STRING, nil, nil, nil, "The marker for the point change between the central spread and the last published index value")
omi_gpw_bondspot_indices_xdp_v6_8.fields.marker_high = ProtoField.new("Marker High", "gpw.bondspot.indices.xdp.v6.8.markerhigh", ftypes.STRING, nil, nil, nil, "Marker of the percentage change of the highest value of the index to the closing index value from the previous session")
omi_gpw_bondspot_indices_xdp_v6_8.fields.marker_low = ProtoField.new("Marker Low", "gpw.bondspot.indices.xdp.v6.8.markerlow", ftypes.STRING, nil, nil, nil, "Marker of the percentage change of the lowest value of the index to the closing index value from the previous session")
omi_gpw_bondspot_indices_xdp_v6_8.fields.marker_pct_chg_index_val_prev_sess = ProtoField.new("Marker Pct Chg Index Val Prev Sess", "gpw.bondspot.indices.xdp.v6.8.markerpctchgindexvalprevsess", ftypes.STRING, nil, nil, nil, "The indicator for the point change of the current value of the index as compared with the previous index value")
omi_gpw_bondspot_indices_xdp_v6_8.fields.marker_pct_chg_index_val_prev_year = ProtoField.new("Marker Pct Chg Index Val Prev Year", "gpw.bondspot.indices.xdp.v6.8.markerpctchgindexvalprevyear", ftypes.STRING, nil, nil, nil, "Marker for the percentage change of the index value in relation to its value at the end of the previous year")
omi_gpw_bondspot_indices_xdp_v6_8.fields.marker_percent_change_toi = ProtoField.new("Marker Percent Change Toi", "gpw.bondspot.indices.xdp.v6.8.markerpercentchangetoi", ftypes.STRING, nil, nil, nil, "Marker for the percentage change of TOI in relation to the value of the closing index from the previous session")
omi_gpw_bondspot_indices_xdp_v6_8.fields.marker_point_change = ProtoField.new("Marker Point Change", "gpw.bondspot.indices.xdp.v6.8.markerpointchange", ftypes.STRING, nil, nil, nil, "Marker for the point change of the index to the current value of the index")
omi_gpw_bondspot_indices_xdp_v6_8.fields.message_continuation = ProtoField.new("Message Continuation", "gpw.bondspot.indices.xdp.v6.8.messagecontinuation", ftypes.STRING, nil, nil, nil, "Message Continuation Marker")
omi_gpw_bondspot_indices_xdp_v6_8.fields.message_size = ProtoField.new("Message Size", "gpw.bondspot.indices.xdp.v6.8.messagesize", ftypes.UINT16, nil, nil, nil, "Length of the message body, excluding the 2 byte MsgSize field")
omi_gpw_bondspot_indices_xdp_v6_8.fields.message_type = ProtoField.new("Message Type", "gpw.bondspot.indices.xdp.v6.8.messagetype", ftypes.UINT16, nil, nil, nil, "The type of this message")
omi_gpw_bondspot_indices_xdp_v6_8.fields.mid_spread_index = ProtoField.new("Mid Spread Index", "gpw.bondspot.indices.xdp.v6.8.midspreadindex", ftypes.UINT32, nil, nil, nil, "Arithmetic mean of the values of the fields: \"Index value according to buy offers\" and „Index value according to sell offers\" (To be calculated with the LevelScaleCode) The field is completed for messages with level '3', '1' and '2' till the end continuous trading phase")
omi_gpw_bondspot_indices_xdp_v6_8.fields.mode_index_dissemination = ProtoField.new("Mode Index Dissemination", "gpw.bondspot.indices.xdp.v6.8.modeindexdissemination", ftypes.STRING, nil, nil, nil, "Mode of index dissemination")
omi_gpw_bondspot_indices_xdp_v6_8.fields.num_of_active_instruments = ProtoField.new("Num Of Active Instruments", "gpw.bondspot.indices.xdp.v6.8.numofactiveinstruments", ftypes.UINT16, nil, nil, nil, "Number of instruments – participants of the index, for which the quotation was set during the session")
omi_gpw_bondspot_indices_xdp_v6_8.fields.num_of_instr_of_decreasing_qt = ProtoField.new("Num Of Instr Of Decreasing Qt", "gpw.bondspot.indices.xdp.v6.8.numofinstrofdecreasingqt", ftypes.UINT16, nil, nil, nil, "The number of instruments from the index portfolio, whose quotation at the current session is lower than the reference quotation at the session on the previous day")
omi_gpw_bondspot_indices_xdp_v6_8.fields.num_of_instr_of_increasing_qt = ProtoField.new("Num Of Instr Of Increasing Qt", "gpw.bondspot.indices.xdp.v6.8.numofinstrofincreasingqt", ftypes.UINT16, nil, nil, nil, "The number of instruments the from index portfolio, whose quotation at the current session is higher than the reference quotation at the session on the previous day")
omi_gpw_bondspot_indices_xdp_v6_8.fields.num_of_instr_of_unchanged_qt = ProtoField.new("Num Of Instr Of Unchanged Qt", "gpw.bondspot.indices.xdp.v6.8.numofinstrofunchangedqt", ftypes.UINT16, nil, nil, nil, "The number of instruments from the index portfolio, whose quotation at the current session did not change as compared with the closing quotation at the session on the previous day")
omi_gpw_bondspot_indices_xdp_v6_8.fields.number_msg_entries = ProtoField.new("Number Msg Entries", "gpw.bondspot.indices.xdp.v6.8.numbermsgentries", ftypes.UINT8, nil, nil, nil, "The number of messages that are contained within the packet")
omi_gpw_bondspot_indices_xdp_v6_8.fields.number_of_components = ProtoField.new("Number Of Components", "gpw.bondspot.indices.xdp.v6.8.numberofcomponents", ftypes.UINT16, nil, nil, nil, "Total number of instruments in the index / given product For strategy indices (in 548 message the field ProductClassification filled in with value \"S\" or \"L\") the field is filled in with number of days between current and previous session")
omi_gpw_bondspot_indices_xdp_v6_8.fields.opening_calc_formula = ProtoField.new("Opening Calc Formula", "gpw.bondspot.indices.xdp.v6.8.openingcalcformula", ftypes.STRING, nil, nil, nil, "Opening index calculation formula")
omi_gpw_bondspot_indices_xdp_v6_8.fields.opening_index_value = ProtoField.new("Opening Index Value", "gpw.bondspot.indices.xdp.v6.8.openingindexvalue", ftypes.UINT32, nil, nil, nil, "Opening index value (To be calculated with the LevelScaleCode)")
omi_gpw_bondspot_indices_xdp_v6_8.fields.packet_length = ProtoField.new("Packet Length", "gpw.bondspot.indices.xdp.v6.8.packetlength", ftypes.UINT16, nil, nil, nil, "Length of the packet including the 16 byte packet header")
omi_gpw_bondspot_indices_xdp_v6_8.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "gpw.bondspot.indices.xdp.v6.8.packetsequencenumber", ftypes.UINT32, nil, nil, nil, "The packet sequence number, unique for each broadcast stream and used for gap detection. It increases serially and monotonically and is reset to 1 at the beginning of each trading day. It is unique for packets containing market data only, and heartbeats inherit it from the last market data packet or packet sequence number reset packet")
omi_gpw_bondspot_indices_xdp_v6_8.fields.packet_type = ProtoField.new("Packet Type", "gpw.bondspot.indices.xdp.v6.8.packettype", ftypes.UINT16, nil, nil, nil, "Identifier for the type of data contained in the packet. Section 1.1 states one value, 501 for Market Data messages, for every feed the document specifies")
omi_gpw_bondspot_indices_xdp_v6_8.fields.pct_change_index_val_prev_session = ProtoField.new("Pct Change Index Val Prev Session", "gpw.bondspot.indices.xdp.v6.8.pctchangeindexvalprevsession", ftypes.UINT32, nil, nil, nil, "Percentage change of the index value in relation to the value of the closing index from the previous session (To be calculated with the LevelScaleCode) The field is completed for messages with level '1', 'A', '2', 'C' and '5'during the index status „ZW\" and „ZO\". Not used for strategy index (in 548 message the field ProductClassification filled in with value \"M\")")
omi_gpw_bondspot_indices_xdp_v6_8.fields.pct_change_index_val_prev_year = ProtoField.new("Pct Change Index Val Prev Year", "gpw.bondspot.indices.xdp.v6.8.pctchangeindexvalprevyear", ftypes.UINT32, nil, nil, nil, "Percentage change of the index value in relation to its value at the end of the previous year (To be calculated with the LevelScaleCode) The field is completed for messages with level '5'during the index status „ZW\" and „ZO\". Not used for strategy index (in 548 message the field ProductClassification filled in with value \"M\")")
omi_gpw_bondspot_indices_xdp_v6_8.fields.pct_chg_high_index_val_prev_session = ProtoField.new("Pct Chg High Index Val Prev Session", "gpw.bondspot.indices.xdp.v6.8.pctchghighindexvalprevsession", ftypes.UINT32, nil, nil, nil, "Percentage change of the highest index value to the value of the closing index from the previous session (To be calculated with the LevelScaleCode) Not used for strategy index (in 548 message the field ProductClassification filled in with value \"M\")")
omi_gpw_bondspot_indices_xdp_v6_8.fields.pct_chg_low_index_val_prev_session = ProtoField.new("Pct Chg Low Index Val Prev Session", "gpw.bondspot.indices.xdp.v6.8.pctchglowindexvalprevsession", ftypes.UINT32, nil, nil, nil, "Percentage change of the lowest index value to the value of the closing index from the previous session (To be calculated with the LevelScaleCode) Not used for strategy index (in 548 message the field ProductClassification filled in with value \"M\")")
omi_gpw_bondspot_indices_xdp_v6_8.fields.percent_change_toi = ProtoField.new("Percent Change Toi", "gpw.bondspot.indices.xdp.v6.8.percentchangetoi", ftypes.UINT32, nil, nil, nil, "Percentage change of TOI in relation to the value of the closing index from the previous session (To be calculated with the LevelScaleCode) The field is completed only for messages with the level '8', '3' and '9'")
omi_gpw_bondspot_indices_xdp_v6_8.fields.point_change = ProtoField.new("Point Change", "gpw.bondspot.indices.xdp.v6.8.pointchange", ftypes.UINT32, nil, nil, nil, "The point change of the index to the previous value of the index (To be calculated with the LevelScaleCode)")
omi_gpw_bondspot_indices_xdp_v6_8.fields.product_classification = ProtoField.new("Product Classification", "gpw.bondspot.indices.xdp.v6.8.productclassification", ftypes.STRING, nil, nil, nil, "Information product classification")
omi_gpw_bondspot_indices_xdp_v6_8.fields.reserved_1 = ProtoField.new("Reserved 1", "gpw.bondspot.indices.xdp.v6.8.reserved1", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_bondspot_indices_xdp_v6_8.fields.reserved_2 = ProtoField.new("Reserved 2", "gpw.bondspot.indices.xdp.v6.8.reserved2", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_bondspot_indices_xdp_v6_8.fields.send_time = ProtoField.new("Send Time", "gpw.bondspot.indices.xdp.v6.8.sendtime", ftypes.UINT32, nil, nil, nil, "Timestamp in millisecond indicating the packet broadcast time. The number represents the number of milliseconds since midnight of the last Sunday 00:00 UTC, a weekly epoch no Epoch trait represents, so the field carries no epoch and a reader resolves the absolute time against the Sunday preceding the capture")
omi_gpw_bondspot_indices_xdp_v6_8.fields.service_id = ProtoField.new("Service Id", "gpw.bondspot.indices.xdp.v6.8.serviceid", ftypes.UINT16, nil, nil, nil, "Numeric value identifying the broadcast stream. Section 1.1 states that the possible values are described in the XDP CDE Configuration document, a companion this specification does not reproduce, so no value set is declared here")
omi_gpw_bondspot_indices_xdp_v6_8.fields.session_high = ProtoField.new("Session High", "gpw.bondspot.indices.xdp.v6.8.sessionhigh", ftypes.UINT32, nil, nil, nil, "Index highest level of the day (To be calculated with the LevelScaleCode)")
omi_gpw_bondspot_indices_xdp_v6_8.fields.session_low = ProtoField.new("Session Low", "gpw.bondspot.indices.xdp.v6.8.sessionlow", ftypes.UINT32, nil, nil, nil, "Index lowest level of the day (To be calculated with the LevelScaleCode) (not including the opening index value at the level 'A' and the average weighted index with level 'R')")
omi_gpw_bondspot_indices_xdp_v6_8.fields.source_seq_num = ProtoField.new("Source Seq Num", "gpw.bondspot.indices.xdp.v6.8.sourceseqnum", ftypes.UINT32, nil, nil, nil, "This field specifies the sequence number assigned by the source system to this message")
omi_gpw_bondspot_indices_xdp_v6_8.fields.source_time = ProtoField.new("Source Time", "gpw.bondspot.indices.xdp.v6.8.sourcetime", ftypes.UINT32, nil, nil, nil, "This field specifies the message generation time")
omi_gpw_bondspot_indices_xdp_v6_8.fields.source_time_micro_secs = ProtoField.new("Source Time Micro Secs", "gpw.bondspot.indices.xdp.v6.8.sourcetimemicrosecs", ftypes.UINT16, nil, nil, nil, "Number of micro seconds to be combined with SourceTime")
omi_gpw_bondspot_indices_xdp_v6_8.fields.spread_dissemination = ProtoField.new("Spread Dissemination", "gpw.bondspot.indices.xdp.v6.8.spreaddissemination", ftypes.STRING, nil, nil, nil, "Spread dissemination marker")
omi_gpw_bondspot_indices_xdp_v6_8.fields.symbol_index = ProtoField.new("Symbol Index", "gpw.bondspot.indices.xdp.v6.8.symbolindex", ftypes.UINT32, nil, nil, nil, "UTP-MD proprietary identification of the instrument")
omi_gpw_bondspot_indices_xdp_v6_8.fields.system_id = ProtoField.new("System Id", "gpw.bondspot.indices.xdp.v6.8.systemid", ftypes.UINT32, nil, nil, nil, "The ID of the originating Exchange/System of the message")
omi_gpw_bondspot_indices_xdp_v6_8.fields.time_closing = ProtoField.new("Time Closing", "gpw.bondspot.indices.xdp.v6.8.timeclosing", ftypes.STRING, nil, nil, nil, "Time of the publication of the closing value of the index at a given session.. Format HHMMSS. Time use CET")
omi_gpw_bondspot_indices_xdp_v6_8.fields.time_first_high = ProtoField.new("Time First High", "gpw.bondspot.indices.xdp.v6.8.timefirsthigh", ftypes.STRING, nil, nil, nil, "The time at which the highest value of a given index was published for the first time")
omi_gpw_bondspot_indices_xdp_v6_8.fields.time_first_low = ProtoField.new("Time First Low", "gpw.bondspot.indices.xdp.v6.8.timefirstlow", ftypes.STRING, nil, nil, nil, "The time at which the lowest value of a given index was published for the first time")
omi_gpw_bondspot_indices_xdp_v6_8.fields.time_full_opening = ProtoField.new("Time Full Opening", "gpw.bondspot.indices.xdp.v6.8.timefullopening", ftypes.STRING, nil, nil, nil, "Time of the publication of the full opening value of the index portfolio for W(t) = 100%. The time of sending the message 546 with level 'B' Format HHMMSS or zero in case the indicator W(t) has not reached 100%. Time use CET")
omi_gpw_bondspot_indices_xdp_v6_8.fields.time_high = ProtoField.new("Time High", "gpw.bondspot.indices.xdp.v6.8.timehigh", ftypes.STRING, nil, nil, nil, "Time of the publication of the highest value of the index")
omi_gpw_bondspot_indices_xdp_v6_8.fields.time_low = ProtoField.new("Time Low", "gpw.bondspot.indices.xdp.v6.8.timelow", ftypes.STRING, nil, nil, nil, "Time of the publication of the lowest value of the index")
omi_gpw_bondspot_indices_xdp_v6_8.fields.time_opening = ProtoField.new("Time Opening", "gpw.bondspot.indices.xdp.v6.8.timeopening", ftypes.STRING, nil, nil, nil, "Time of the publication of the opening value of the index")
omi_gpw_bondspot_indices_xdp_v6_8.fields.toi = ProtoField.new("Toi", "gpw.bondspot.indices.xdp.v6.8.toi", ftypes.UINT32, nil, nil, nil, "Theoretical opening index calculated during the index status „TO\" (the field completed only for message with level '8') or during the index status „PO\" (the field completed only for message with level '3' and '9')")
omi_gpw_bondspot_indices_xdp_v6_8.fields.toi_dissemination = ProtoField.new("Toi Dissemination", "gpw.bondspot.indices.xdp.v6.8.toidissemination", ftypes.STRING, nil, nil, nil, "TOI dissemination marker during TO index status")
omi_gpw_bondspot_indices_xdp_v6_8.fields.trading_value_publication = ProtoField.new("Trading Value Publication", "gpw.bondspot.indices.xdp.v6.8.tradingvaluepublication", ftypes.STRING, nil, nil, nil, "Trading value publication marker")
omi_gpw_bondspot_indices_xdp_v6_8.fields.value_last_closing_index = ProtoField.new("Value Last Closing Index", "gpw.bondspot.indices.xdp.v6.8.valuelastclosingindex", ftypes.UINT32, nil, nil, nil, "Value of the last closing index / NAV value number of ETF units (To be combined with LevelScaleCode)")
omi_gpw_bondspot_indices_xdp_v6_8.fields.value_trading = ProtoField.new("Value Trading", "gpw.bondspot.indices.xdp.v6.8.valuetrading", ftypes.UINT64, nil, nil, nil, "Value of trading in the instruments from the given index (To be calculated with the LevelScaleCode)")

-- Gpw BondSpot Indices Xdp 6.8 Framing
omi_gpw_bondspot_indices_xdp_v6_8.fields.message = ProtoField.new("Message", "gpw.bondspot.indices.xdp.v6.8.message", ftypes.STRING)
omi_gpw_bondspot_indices_xdp_v6_8.fields.message_header = ProtoField.new("Message Header", "gpw.bondspot.indices.xdp.v6.8.messageheader", ftypes.STRING)
omi_gpw_bondspot_indices_xdp_v6_8.fields.packet = ProtoField.new("Packet", "gpw.bondspot.indices.xdp.v6.8.packet", ftypes.STRING, nil, nil, nil, "Gpw Xdp Udp Packet")
omi_gpw_bondspot_indices_xdp_v6_8.fields.packet_header = ProtoField.new("Packet Header", "gpw.bondspot.indices.xdp.v6.8.packetheader", ftypes.STRING, nil, nil, nil, "All messages are preceded by a common packet header format, which section 1.1 states for every Market Information message")

-- Gpw BondSpot Indices 6.8 Application Messages
omi_gpw_bondspot_indices_xdp_v6_8.fields.index_portfolio_message = ProtoField.new("Index Portfolio Message", "gpw.bondspot.indices.xdp.v6.8.indexportfoliomessage", ftypes.STRING, nil, nil, nil, "Index portfolio")
omi_gpw_bondspot_indices_xdp_v6_8.fields.index_summary_message = ProtoField.new("Index Summary Message", "gpw.bondspot.indices.xdp.v6.8.indexsummarymessage", ftypes.STRING, nil, nil, nil, "The index summary message provides a summary of the data calculated in a stock index for a given day")
omi_gpw_bondspot_indices_xdp_v6_8.fields.real_time_index_message = ProtoField.new("Real Time Index Message", "gpw.bondspot.indices.xdp.v6.8.realtimeindexmessage", ftypes.STRING, nil, nil, nil, "The real time index message handles the real-time characteristics of an index")

-- Gpw BondSpot Indices Xdp 6.8 Generated Fields
omi_gpw_bondspot_indices_xdp_v6_8.fields.index_portfolio_component_index = ProtoField.new("Index Portfolio Component Index", "gpw.bondspot.indices.xdp.v6.8.indexportfoliocomponentindex", ftypes.UINT16)
omi_gpw_bondspot_indices_xdp_v6_8.fields.message_index = ProtoField.new("Message Index", "gpw.bondspot.indices.xdp.v6.8.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Gpw BondSpot Indices Xdp 6.8 Element Dissection Options
show.repeating_groups = true
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Gpw BondSpot Indices Xdp 6.8 Show Options
omi_gpw_bondspot_indices_xdp_v6_8.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_gpw_bondspot_indices_xdp_v6_8.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_gpw_bondspot_indices_xdp_v6_8.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_gpw_bondspot_indices_xdp_v6_8.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_gpw_bondspot_indices_xdp_v6_8.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_gpw_bondspot_indices_xdp_v6_8.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_gpw_bondspot_indices_xdp_v6_8.prefs.show_application_messages then
    show.application_messages = omi_gpw_bondspot_indices_xdp_v6_8.prefs.show_application_messages
  end
  if show.headers ~= omi_gpw_bondspot_indices_xdp_v6_8.prefs.show_headers then
    show.headers = omi_gpw_bondspot_indices_xdp_v6_8.prefs.show_headers
  end
  if show.repeating_groups ~= omi_gpw_bondspot_indices_xdp_v6_8.prefs.show_repeating_groups then
    show.repeating_groups = omi_gpw_bondspot_indices_xdp_v6_8.prefs.show_repeating_groups
  end
  if show.structs ~= omi_gpw_bondspot_indices_xdp_v6_8.prefs.show_structs then
    show.structs = omi_gpw_bondspot_indices_xdp_v6_8.prefs.show_structs
  end
  if show.indexes ~= omi_gpw_bondspot_indices_xdp_v6_8.prefs.show_indexes then
    show.indexes = omi_gpw_bondspot_indices_xdp_v6_8.prefs.show_indexes
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


-- Zlib decompression: wireshark built in inflate (uncompress_zlib from 4.4, uncompress before)
local function zlib_decompress(range)
  local ok, decompressed = pcall(function() return range:uncompress_zlib("Decompressed") end)

  if ok then
    return decompressed
  end

  return range:uncompress("Decompressed")
end
-----------------------------------------------------------------------
-- Gpw BondSpot Indices Xdp 6.8 Fields
-----------------------------------------------------------------------

-- Capitalisation Portfolio
gpw_bondspot_indices_xdp_v6_8.capitalisation_portfolio = {}

-- Size: Capitalisation Portfolio
gpw_bondspot_indices_xdp_v6_8.capitalisation_portfolio.size = 4

-- Display: Capitalisation Portfolio
gpw_bondspot_indices_xdp_v6_8.capitalisation_portfolio.display = function(value)
  return "Capitalisation Portfolio: "..value
end

-- Dissect: Capitalisation Portfolio
gpw_bondspot_indices_xdp_v6_8.capitalisation_portfolio.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.capitalisation_portfolio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.capitalisation_portfolio.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.capitalisation_portfolio, range, value, display)

  return offset + length, value
end

-- Capitalisation Scale Code
gpw_bondspot_indices_xdp_v6_8.capitalisation_scale_code = {}

-- Size: Capitalisation Scale Code
gpw_bondspot_indices_xdp_v6_8.capitalisation_scale_code.size = 1

-- Display: Capitalisation Scale Code
gpw_bondspot_indices_xdp_v6_8.capitalisation_scale_code.display = function(value)
  return "Capitalisation Scale Code: "..value
end

-- Dissect: Capitalisation Scale Code
gpw_bondspot_indices_xdp_v6_8.capitalisation_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.capitalisation_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.capitalisation_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.capitalisation_scale_code, range, value, display)

  return offset + length, value
end

-- Cash Portfolio Scale Code
gpw_bondspot_indices_xdp_v6_8.cash_portfolio_scale_code = {}

-- Size: Cash Portfolio Scale Code
gpw_bondspot_indices_xdp_v6_8.cash_portfolio_scale_code.size = 1

-- Display: Cash Portfolio Scale Code
gpw_bondspot_indices_xdp_v6_8.cash_portfolio_scale_code.display = function(value)
  return "Cash Portfolio Scale Code: "..value
end

-- Dissect: Cash Portfolio Scale Code
gpw_bondspot_indices_xdp_v6_8.cash_portfolio_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.cash_portfolio_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.cash_portfolio_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.cash_portfolio_scale_code, range, value, display)

  return offset + length, value
end

-- Closing Index Value
gpw_bondspot_indices_xdp_v6_8.closing_index_value = {}

-- Size: Closing Index Value
gpw_bondspot_indices_xdp_v6_8.closing_index_value.size = 4

-- Display: Closing Index Value
gpw_bondspot_indices_xdp_v6_8.closing_index_value.display = function(value)
  return "Closing Index Value: "..value
end

-- Dissect: Closing Index Value
gpw_bondspot_indices_xdp_v6_8.closing_index_value.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.closing_index_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.closing_index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.closing_index_value, range, value, display)

  return offset + length, value
end

-- Date Validity
gpw_bondspot_indices_xdp_v6_8.date_validity = {}

-- Size: Date Validity
gpw_bondspot_indices_xdp_v6_8.date_validity.size = 8

-- Display: Date Validity
gpw_bondspot_indices_xdp_v6_8.date_validity.display = function(value)
  if #value < 8 then
    return "Date Validity: "..value
  end

  return "Date Validity: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Date Validity
gpw_bondspot_indices_xdp_v6_8.date_validity.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.date_validity.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_bondspot_indices_xdp_v6_8.date_validity.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.date_validity, range, value, display)

  return offset + length, value
end

-- Delivery Flag
gpw_bondspot_indices_xdp_v6_8.delivery_flag = {}

-- Size: Delivery Flag
gpw_bondspot_indices_xdp_v6_8.delivery_flag.size = 1

-- Display: Delivery Flag
gpw_bondspot_indices_xdp_v6_8.delivery_flag.display = function(value)
  if value == 0 then
    return "Delivery Flag: Real Time Message Uncompressed (0)"
  end
  if value == 2 then
    return "Delivery Flag: Retransmission Message Uncompressed (2)"
  end
  if value == 16 then
    return "Delivery Flag: Real Time Message Zlib Compressed (16)"
  end
  if value == 17 then
    return "Delivery Flag: Refresh Message Zlib Compressed (17)"
  end
  if value == 18 then
    return "Delivery Flag: Retransmission Message Compressed (18)"
  end

  return "Delivery Flag: Unknown("..value..")"
end

-- Dissect: Delivery Flag
gpw_bondspot_indices_xdp_v6_8.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Difference Central Spread
gpw_bondspot_indices_xdp_v6_8.difference_central_spread = {}

-- Size: Difference Central Spread
gpw_bondspot_indices_xdp_v6_8.difference_central_spread.size = 4

-- Display: Difference Central Spread
gpw_bondspot_indices_xdp_v6_8.difference_central_spread.display = function(value)
  return "Difference Central Spread: "..value
end

-- Dissect: Difference Central Spread
gpw_bondspot_indices_xdp_v6_8.difference_central_spread.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.difference_central_spread.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.difference_central_spread.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.difference_central_spread, range, value, display)

  return offset + length, value
end

-- Dissemination Frequency Marker
gpw_bondspot_indices_xdp_v6_8.dissemination_frequency_marker = {}

-- Size: Dissemination Frequency Marker
gpw_bondspot_indices_xdp_v6_8.dissemination_frequency_marker.size = 1

-- Display: Dissemination Frequency Marker
gpw_bondspot_indices_xdp_v6_8.dissemination_frequency_marker.display = function(value)
  if value == "0" then
    return "Dissemination Frequency Marker: When The Message At A Particular Level Is Published Regularly At The Session (0)"
  end
  if value == "1" then
    return "Dissemination Frequency Marker: When The Message At A Particular Level Is Published At The Session On A One Time Basis (1)"
  end

  return "Dissemination Frequency Marker: Unknown("..value..")"
end

-- Dissect: Dissemination Frequency Marker
gpw_bondspot_indices_xdp_v6_8.dissemination_frequency_marker.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.dissemination_frequency_marker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_bondspot_indices_xdp_v6_8.dissemination_frequency_marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.dissemination_frequency_marker, range, value, display)

  return offset + length, value
end

-- Ind Index Opening Portfolio
gpw_bondspot_indices_xdp_v6_8.ind_index_opening_portfolio = {}

-- Size: Ind Index Opening Portfolio
gpw_bondspot_indices_xdp_v6_8.ind_index_opening_portfolio.size = 4

-- Display: Ind Index Opening Portfolio
gpw_bondspot_indices_xdp_v6_8.ind_index_opening_portfolio.display = function(value)
  return "Ind Index Opening Portfolio: "..value
end

-- Dissect: Ind Index Opening Portfolio
gpw_bondspot_indices_xdp_v6_8.ind_index_opening_portfolio.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.ind_index_opening_portfolio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.ind_index_opening_portfolio.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.ind_index_opening_portfolio, range, value, display)

  return offset + length, value
end

-- Ind Opening Portfolio
gpw_bondspot_indices_xdp_v6_8.ind_opening_portfolio = {}

-- Size: Ind Opening Portfolio
gpw_bondspot_indices_xdp_v6_8.ind_opening_portfolio.size = 4

-- Display: Ind Opening Portfolio
gpw_bondspot_indices_xdp_v6_8.ind_opening_portfolio.display = function(value)
  return "Ind Opening Portfolio: "..value
end

-- Dissect: Ind Opening Portfolio
gpw_bondspot_indices_xdp_v6_8.ind_opening_portfolio.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.ind_opening_portfolio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.ind_opening_portfolio.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.ind_opening_portfolio, range, value, display)

  return offset + length, value
end

-- Index Adjustment Coefficient
gpw_bondspot_indices_xdp_v6_8.index_adjustment_coefficient = {}

-- Size: Index Adjustment Coefficient
gpw_bondspot_indices_xdp_v6_8.index_adjustment_coefficient.size = 4

-- Display: Index Adjustment Coefficient
gpw_bondspot_indices_xdp_v6_8.index_adjustment_coefficient.display = function(value)
  return "Index Adjustment Coefficient: "..value
end

-- Dissect: Index Adjustment Coefficient
gpw_bondspot_indices_xdp_v6_8.index_adjustment_coefficient.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.index_adjustment_coefficient.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.index_adjustment_coefficient.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.index_adjustment_coefficient, range, value, display)

  return offset + length, value
end

-- Index Adjustment Scale Code
gpw_bondspot_indices_xdp_v6_8.index_adjustment_scale_code = {}

-- Size: Index Adjustment Scale Code
gpw_bondspot_indices_xdp_v6_8.index_adjustment_scale_code.size = 1

-- Display: Index Adjustment Scale Code
gpw_bondspot_indices_xdp_v6_8.index_adjustment_scale_code.display = function(value)
  return "Index Adjustment Scale Code: "..value
end

-- Dissect: Index Adjustment Scale Code
gpw_bondspot_indices_xdp_v6_8.index_adjustment_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.index_adjustment_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.index_adjustment_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.index_adjustment_scale_code, range, value, display)

  return offset + length, value
end

-- Index Currency
gpw_bondspot_indices_xdp_v6_8.index_currency = {}

-- Size: Index Currency
gpw_bondspot_indices_xdp_v6_8.index_currency.size = 3

-- Display: Index Currency
gpw_bondspot_indices_xdp_v6_8.index_currency.display = function(value)
  return "Index Currency: "..value
end

-- Dissect: Index Currency
gpw_bondspot_indices_xdp_v6_8.index_currency.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.index_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_bondspot_indices_xdp_v6_8.index_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.index_currency, range, value, display)

  return offset + length, value
end

-- Index Level
gpw_bondspot_indices_xdp_v6_8.index_level = {}

-- Size: Index Level
gpw_bondspot_indices_xdp_v6_8.index_level.size = 4

-- Display: Index Level
gpw_bondspot_indices_xdp_v6_8.index_level.display = function(value)
  return "Index Level: "..value
end

-- Dissect: Index Level
gpw_bondspot_indices_xdp_v6_8.index_level.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.index_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.index_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.index_level, range, value, display)

  return offset + length, value
end

-- Index Level Code
gpw_bondspot_indices_xdp_v6_8.index_level_code = {}

-- Size: Index Level Code
gpw_bondspot_indices_xdp_v6_8.index_level_code.size = 1

-- Display: Index Level Code
gpw_bondspot_indices_xdp_v6_8.index_level_code.display = function(value)
  if value == "1" then
    return "Index Level Code: First Value Of The Index At The Session (1)"
  end
  if value == "2" then
    return "Index Level Code: Current Index (2)"
  end
  if value == "3" then
    return "Index Level Code: Theoretical Value Of The Index Before Its Opening (3)"
  end
  if value == "5" then
    return "Index Level Code: Closing Index From Previous Session Reference Index (5)"
  end
  if value == "8" then
    return "Index Level Code: Theoretical Opening Index Before Opening The Session (8)"
  end
  if value == "9" then
    return "Index Level Code: Index Without Opening (9)"
  end
  if value == "A" then
    return "Index Level Code: Preliminary Opening Index (A)"
  end
  if value == "B" then
    return "Index Level Code: Synthetic Opening Index 100% (B)"
  end
  if value == "C" then
    return "Index Level Code: Final Opening Index (C)"
  end
  if value == "R" then
    return "Index Level Code: Average Weighted Index (R)"
  end
  if value == "X" then
    return "Index Level Code: Cancellation Of The Current Values Of The Index (X)"
  end
  if value == "Y" then
    return "Index Level Code: Recalculated Current Values Of The Index (Y)"
  end

  return "Index Level Code: Unknown("..value..")"
end

-- Dissect: Index Level Code
gpw_bondspot_indices_xdp_v6_8.index_level_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.index_level_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_bondspot_indices_xdp_v6_8.index_level_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.index_level_code, range, value, display)

  return offset + length, value
end

-- Index Pres Seq
gpw_bondspot_indices_xdp_v6_8.index_pres_seq = {}

-- Size: Index Pres Seq
gpw_bondspot_indices_xdp_v6_8.index_pres_seq.size = 2

-- Display: Index Pres Seq
gpw_bondspot_indices_xdp_v6_8.index_pres_seq.display = function(value)
  return "Index Pres Seq: "..value
end

-- Dissect: Index Pres Seq
gpw_bondspot_indices_xdp_v6_8.index_pres_seq.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.index_pres_seq.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_bondspot_indices_xdp_v6_8.index_pres_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.index_pres_seq, range, value, display)

  return offset + length, value
end

-- Index Status Indicator
gpw_bondspot_indices_xdp_v6_8.index_status_indicator = {}

-- Size: Index Status Indicator
gpw_bondspot_indices_xdp_v6_8.index_status_indicator.size = 2

-- Display: Index Status Indicator
gpw_bondspot_indices_xdp_v6_8.index_status_indicator.display = function(value)
  if value == "PS" then
    return "Index Status Indicator: Preparation Of The New Session (PS)"
  end
  if value == "ZI" then
    return "Index Status Indicator: Index Setting (ZI)"
  end
  if value == "TO" then
    return "Index Status Indicator: Theoretical Opening (TO)"
  end
  if value == "PO" then
    return "Index Status Indicator: Before Opening (PO)"
  end
  if value == "SI" then
    return "Index Status Indicator: Session (SI)"
  end
  if value == "ZW" then
    return "Index Status Indicator: Preliminary Closing (ZW)"
  end
  if value == "IM" then
    return "Index Status Indicator: Index Manager Intervention (IM)"
  end
  if value == "ZO" then
    return "Index Status Indicator: Final Closing (ZO)"
  end

  return "Index Status Indicator: Unknown("..value..")"
end

-- Dissect: Index Status Indicator
gpw_bondspot_indices_xdp_v6_8.index_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.index_status_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_bondspot_indices_xdp_v6_8.index_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.index_status_indicator, range, value, display)

  return offset + length, value
end

-- Index Value Ask
gpw_bondspot_indices_xdp_v6_8.index_value_ask = {}

-- Size: Index Value Ask
gpw_bondspot_indices_xdp_v6_8.index_value_ask.size = 4

-- Display: Index Value Ask
gpw_bondspot_indices_xdp_v6_8.index_value_ask.display = function(value)
  return "Index Value Ask: "..value
end

-- Dissect: Index Value Ask
gpw_bondspot_indices_xdp_v6_8.index_value_ask.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.index_value_ask.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.index_value_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.index_value_ask, range, value, display)

  return offset + length, value
end

-- Index Value Bid
gpw_bondspot_indices_xdp_v6_8.index_value_bid = {}

-- Size: Index Value Bid
gpw_bondspot_indices_xdp_v6_8.index_value_bid.size = 4

-- Display: Index Value Bid
gpw_bondspot_indices_xdp_v6_8.index_value_bid.display = function(value)
  return "Index Value Bid: "..value
end

-- Dissect: Index Value Bid
gpw_bondspot_indices_xdp_v6_8.index_value_bid.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.index_value_bid.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.index_value_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.index_value_bid, range, value, display)

  return offset + length, value
end

-- Instrument Abbrev Name
gpw_bondspot_indices_xdp_v6_8.instrument_abbrev_name = {}

-- Size: Instrument Abbrev Name
gpw_bondspot_indices_xdp_v6_8.instrument_abbrev_name.size = 10

-- Display: Instrument Abbrev Name
gpw_bondspot_indices_xdp_v6_8.instrument_abbrev_name.display = function(value)
  return "Instrument Abbrev Name: "..value
end

-- Dissect: Instrument Abbrev Name
gpw_bondspot_indices_xdp_v6_8.instrument_abbrev_name.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.instrument_abbrev_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_bondspot_indices_xdp_v6_8.instrument_abbrev_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.instrument_abbrev_name, range, value, display)

  return offset + length, value
end

-- Instrument Isin
gpw_bondspot_indices_xdp_v6_8.instrument_isin = {}

-- Size: Instrument Isin
gpw_bondspot_indices_xdp_v6_8.instrument_isin.size = 12

-- Display: Instrument Isin
gpw_bondspot_indices_xdp_v6_8.instrument_isin.display = function(value)
  return "Instrument Isin: "..value
end

-- Dissect: Instrument Isin
gpw_bondspot_indices_xdp_v6_8.instrument_isin.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.instrument_isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_bondspot_indices_xdp_v6_8.instrument_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.instrument_isin, range, value, display)

  return offset + length, value
end

-- Instrument Packet
gpw_bondspot_indices_xdp_v6_8.instrument_packet = {}

-- Size: Instrument Packet
gpw_bondspot_indices_xdp_v6_8.instrument_packet.size = 10

-- Display: Instrument Packet
gpw_bondspot_indices_xdp_v6_8.instrument_packet.display = function(value)
  return "Instrument Packet: "..value
end

-- Dissect: Instrument Packet
gpw_bondspot_indices_xdp_v6_8.instrument_packet.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.instrument_packet.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_bondspot_indices_xdp_v6_8.instrument_packet.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.instrument_packet, range, value, display)

  return offset + length, value
end

-- Level Cash Portfolio
gpw_bondspot_indices_xdp_v6_8.level_cash_portfolio = {}

-- Size: Level Cash Portfolio
gpw_bondspot_indices_xdp_v6_8.level_cash_portfolio.size = 4

-- Display: Level Cash Portfolio
gpw_bondspot_indices_xdp_v6_8.level_cash_portfolio.display = function(value)
  return "Level Cash Portfolio: "..value
end

-- Dissect: Level Cash Portfolio
gpw_bondspot_indices_xdp_v6_8.level_cash_portfolio.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.level_cash_portfolio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.level_cash_portfolio.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.level_cash_portfolio, range, value, display)

  return offset + length, value
end

-- Level Scale Code
gpw_bondspot_indices_xdp_v6_8.level_scale_code = {}

-- Size: Level Scale Code
gpw_bondspot_indices_xdp_v6_8.level_scale_code.size = 1

-- Display: Level Scale Code
gpw_bondspot_indices_xdp_v6_8.level_scale_code.display = function(value)
  return "Level Scale Code: "..value
end

-- Dissect: Level Scale Code
gpw_bondspot_indices_xdp_v6_8.level_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.level_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.level_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.level_scale_code, range, value, display)

  return offset + length, value
end

-- Marker Closing Prev Session
gpw_bondspot_indices_xdp_v6_8.marker_closing_prev_session = {}

-- Size: Marker Closing Prev Session
gpw_bondspot_indices_xdp_v6_8.marker_closing_prev_session.size = 1

-- Display: Marker Closing Prev Session
gpw_bondspot_indices_xdp_v6_8.marker_closing_prev_session.display = function(value)
  if value == "+" then
    return "Marker Closing Prev Session: Increase (+)"
  end
  if value == "-" then
    return "Marker Closing Prev Session: Decrease (-)"
  end
  if value == " " then
    return "Marker Closing Prev Session: No Change (<whitespace>)"
  end

  return "Marker Closing Prev Session: Unknown("..value..")"
end

-- Dissect: Marker Closing Prev Session
gpw_bondspot_indices_xdp_v6_8.marker_closing_prev_session.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.marker_closing_prev_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_bondspot_indices_xdp_v6_8.marker_closing_prev_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.marker_closing_prev_session, range, value, display)

  return offset + length, value
end

-- Marker Closing Prev Year
gpw_bondspot_indices_xdp_v6_8.marker_closing_prev_year = {}

-- Size: Marker Closing Prev Year
gpw_bondspot_indices_xdp_v6_8.marker_closing_prev_year.size = 1

-- Display: Marker Closing Prev Year
gpw_bondspot_indices_xdp_v6_8.marker_closing_prev_year.display = function(value)
  if value == "+" then
    return "Marker Closing Prev Year: Increase (+)"
  end
  if value == "-" then
    return "Marker Closing Prev Year: Decrease (-)"
  end
  if value == " " then
    return "Marker Closing Prev Year: No Change (<whitespace>)"
  end

  return "Marker Closing Prev Year: Unknown("..value..")"
end

-- Dissect: Marker Closing Prev Year
gpw_bondspot_indices_xdp_v6_8.marker_closing_prev_year.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.marker_closing_prev_year.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_bondspot_indices_xdp_v6_8.marker_closing_prev_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.marker_closing_prev_year, range, value, display)

  return offset + length, value
end

-- Marker Difference Central Spread
gpw_bondspot_indices_xdp_v6_8.marker_difference_central_spread = {}

-- Size: Marker Difference Central Spread
gpw_bondspot_indices_xdp_v6_8.marker_difference_central_spread.size = 1

-- Display: Marker Difference Central Spread
gpw_bondspot_indices_xdp_v6_8.marker_difference_central_spread.display = function(value)
  if value == "+" then
    return "Marker Difference Central Spread: Increase (+)"
  end
  if value == "-" then
    return "Marker Difference Central Spread: Decrease (-)"
  end
  if value == " " then
    return "Marker Difference Central Spread: No Change (<whitespace>)"
  end

  return "Marker Difference Central Spread: Unknown("..value..")"
end

-- Dissect: Marker Difference Central Spread
gpw_bondspot_indices_xdp_v6_8.marker_difference_central_spread.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.marker_difference_central_spread.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_bondspot_indices_xdp_v6_8.marker_difference_central_spread.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.marker_difference_central_spread, range, value, display)

  return offset + length, value
end

-- Marker High
gpw_bondspot_indices_xdp_v6_8.marker_high = {}

-- Size: Marker High
gpw_bondspot_indices_xdp_v6_8.marker_high.size = 1

-- Display: Marker High
gpw_bondspot_indices_xdp_v6_8.marker_high.display = function(value)
  if value == "+" then
    return "Marker High: Increase (+)"
  end
  if value == "-" then
    return "Marker High: Decrease (-)"
  end
  if value == " " then
    return "Marker High: No Change (<whitespace>)"
  end

  return "Marker High: Unknown("..value..")"
end

-- Dissect: Marker High
gpw_bondspot_indices_xdp_v6_8.marker_high.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.marker_high.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_bondspot_indices_xdp_v6_8.marker_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.marker_high, range, value, display)

  return offset + length, value
end

-- Marker Low
gpw_bondspot_indices_xdp_v6_8.marker_low = {}

-- Size: Marker Low
gpw_bondspot_indices_xdp_v6_8.marker_low.size = 1

-- Display: Marker Low
gpw_bondspot_indices_xdp_v6_8.marker_low.display = function(value)
  if value == "+" then
    return "Marker Low: Increase (+)"
  end
  if value == "-" then
    return "Marker Low: Decrease (-)"
  end
  if value == " " then
    return "Marker Low: No Change (<whitespace>)"
  end

  return "Marker Low: Unknown("..value..")"
end

-- Dissect: Marker Low
gpw_bondspot_indices_xdp_v6_8.marker_low.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.marker_low.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_bondspot_indices_xdp_v6_8.marker_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.marker_low, range, value, display)

  return offset + length, value
end

-- Marker Pct Chg Index Val Prev Sess
gpw_bondspot_indices_xdp_v6_8.marker_pct_chg_index_val_prev_sess = {}

-- Size: Marker Pct Chg Index Val Prev Sess
gpw_bondspot_indices_xdp_v6_8.marker_pct_chg_index_val_prev_sess.size = 1

-- Display: Marker Pct Chg Index Val Prev Sess
gpw_bondspot_indices_xdp_v6_8.marker_pct_chg_index_val_prev_sess.display = function(value)
  return "Marker Pct Chg Index Val Prev Sess: "..value
end

-- Dissect: Marker Pct Chg Index Val Prev Sess
gpw_bondspot_indices_xdp_v6_8.marker_pct_chg_index_val_prev_sess.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.marker_pct_chg_index_val_prev_sess.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_bondspot_indices_xdp_v6_8.marker_pct_chg_index_val_prev_sess.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.marker_pct_chg_index_val_prev_sess, range, value, display)

  return offset + length, value
end

-- Marker Pct Chg Index Val Prev Year
gpw_bondspot_indices_xdp_v6_8.marker_pct_chg_index_val_prev_year = {}

-- Size: Marker Pct Chg Index Val Prev Year
gpw_bondspot_indices_xdp_v6_8.marker_pct_chg_index_val_prev_year.size = 1

-- Display: Marker Pct Chg Index Val Prev Year
gpw_bondspot_indices_xdp_v6_8.marker_pct_chg_index_val_prev_year.display = function(value)
  return "Marker Pct Chg Index Val Prev Year: "..value
end

-- Dissect: Marker Pct Chg Index Val Prev Year
gpw_bondspot_indices_xdp_v6_8.marker_pct_chg_index_val_prev_year.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.marker_pct_chg_index_val_prev_year.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_bondspot_indices_xdp_v6_8.marker_pct_chg_index_val_prev_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.marker_pct_chg_index_val_prev_year, range, value, display)

  return offset + length, value
end

-- Marker Percent Change Toi
gpw_bondspot_indices_xdp_v6_8.marker_percent_change_toi = {}

-- Size: Marker Percent Change Toi
gpw_bondspot_indices_xdp_v6_8.marker_percent_change_toi.size = 1

-- Display: Marker Percent Change Toi
gpw_bondspot_indices_xdp_v6_8.marker_percent_change_toi.display = function(value)
  if value == "+" then
    return "Marker Percent Change Toi: Increase (+)"
  end
  if value == "-" then
    return "Marker Percent Change Toi: Decrease (-)"
  end
  if value == " " then
    return "Marker Percent Change Toi: No Change (<whitespace>)"
  end

  return "Marker Percent Change Toi: Unknown("..value..")"
end

-- Dissect: Marker Percent Change Toi
gpw_bondspot_indices_xdp_v6_8.marker_percent_change_toi.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.marker_percent_change_toi.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_bondspot_indices_xdp_v6_8.marker_percent_change_toi.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.marker_percent_change_toi, range, value, display)

  return offset + length, value
end

-- Marker Point Change
gpw_bondspot_indices_xdp_v6_8.marker_point_change = {}

-- Size: Marker Point Change
gpw_bondspot_indices_xdp_v6_8.marker_point_change.size = 1

-- Display: Marker Point Change
gpw_bondspot_indices_xdp_v6_8.marker_point_change.display = function(value)
  if value == "+" then
    return "Marker Point Change: Increase (+)"
  end
  if value == "-" then
    return "Marker Point Change: Decrease (-)"
  end
  if value == " " then
    return "Marker Point Change: No Change (<whitespace>)"
  end

  return "Marker Point Change: Unknown("..value..")"
end

-- Dissect: Marker Point Change
gpw_bondspot_indices_xdp_v6_8.marker_point_change.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.marker_point_change.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_bondspot_indices_xdp_v6_8.marker_point_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.marker_point_change, range, value, display)

  return offset + length, value
end

-- Message Continuation
gpw_bondspot_indices_xdp_v6_8.message_continuation = {}

-- Size: Message Continuation
gpw_bondspot_indices_xdp_v6_8.message_continuation.size = 1

-- Display: Message Continuation
gpw_bondspot_indices_xdp_v6_8.message_continuation.display = function(value)
  if value == "0" then
    return "Message Continuation: The Message Is Not The Last Message Information Of The Composition Of The Index Portfolio (0)"
  end
  if value == "1" then
    return "Message Continuation: The Message Is The Last Message Information Of The Composition Of The Index Portfolio (1)"
  end

  return "Message Continuation: Unknown("..value..")"
end

-- Dissect: Message Continuation
gpw_bondspot_indices_xdp_v6_8.message_continuation.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.message_continuation.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_bondspot_indices_xdp_v6_8.message_continuation.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.message_continuation, range, value, display)

  return offset + length, value
end

-- Message Size
gpw_bondspot_indices_xdp_v6_8.message_size = {}

-- Size: Message Size
gpw_bondspot_indices_xdp_v6_8.message_size.size = 2

-- Display: Message Size
gpw_bondspot_indices_xdp_v6_8.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
gpw_bondspot_indices_xdp_v6_8.message_size.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.message_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
gpw_bondspot_indices_xdp_v6_8.message_type = {}

-- Size: Message Type
gpw_bondspot_indices_xdp_v6_8.message_type.size = 2

-- Display: Message Type
gpw_bondspot_indices_xdp_v6_8.message_type.display = function(value)
  if value == 546 then
    return "Message Type: Real Time Index Message (546)"
  end
  if value == 547 then
    return "Message Type: Index Summary Message (547)"
  end
  if value == 548 then
    return "Message Type: Index Portfolio Message (548)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
gpw_bondspot_indices_xdp_v6_8.message_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mid Spread Index
gpw_bondspot_indices_xdp_v6_8.mid_spread_index = {}

-- Size: Mid Spread Index
gpw_bondspot_indices_xdp_v6_8.mid_spread_index.size = 4

-- Display: Mid Spread Index
gpw_bondspot_indices_xdp_v6_8.mid_spread_index.display = function(value)
  return "Mid Spread Index: "..value
end

-- Dissect: Mid Spread Index
gpw_bondspot_indices_xdp_v6_8.mid_spread_index.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.mid_spread_index.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.mid_spread_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.mid_spread_index, range, value, display)

  return offset + length, value
end

-- Mode Index Dissemination
gpw_bondspot_indices_xdp_v6_8.mode_index_dissemination = {}

-- Size: Mode Index Dissemination
gpw_bondspot_indices_xdp_v6_8.mode_index_dissemination.size = 1

-- Display: Mode Index Dissemination
gpw_bondspot_indices_xdp_v6_8.mode_index_dissemination.display = function(value)
  if value == "C" then
    return "Mode Index Dissemination: Index Is Quoted In Determined Time Intervals (C)"
  end
  if value == "F" then
    return "Mode Index Dissemination: Index Is Quoted On Determined Hours (F)"
  end

  return "Mode Index Dissemination: Unknown("..value..")"
end

-- Dissect: Mode Index Dissemination
gpw_bondspot_indices_xdp_v6_8.mode_index_dissemination.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.mode_index_dissemination.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_bondspot_indices_xdp_v6_8.mode_index_dissemination.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.mode_index_dissemination, range, value, display)

  return offset + length, value
end

-- Num Of Active Instruments
gpw_bondspot_indices_xdp_v6_8.num_of_active_instruments = {}

-- Size: Num Of Active Instruments
gpw_bondspot_indices_xdp_v6_8.num_of_active_instruments.size = 2

-- Display: Num Of Active Instruments
gpw_bondspot_indices_xdp_v6_8.num_of_active_instruments.display = function(value)
  return "Num Of Active Instruments: "..value
end

-- Dissect: Num Of Active Instruments
gpw_bondspot_indices_xdp_v6_8.num_of_active_instruments.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.num_of_active_instruments.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.num_of_active_instruments.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.num_of_active_instruments, range, value, display)

  return offset + length, value
end

-- Num Of Instr Of Decreasing Qt
gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_decreasing_qt = {}

-- Size: Num Of Instr Of Decreasing Qt
gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_decreasing_qt.size = 2

-- Display: Num Of Instr Of Decreasing Qt
gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_decreasing_qt.display = function(value)
  return "Num Of Instr Of Decreasing Qt: "..value
end

-- Dissect: Num Of Instr Of Decreasing Qt
gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_decreasing_qt.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_decreasing_qt.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_decreasing_qt.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.num_of_instr_of_decreasing_qt, range, value, display)

  return offset + length, value
end

-- Num Of Instr Of Increasing Qt
gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_increasing_qt = {}

-- Size: Num Of Instr Of Increasing Qt
gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_increasing_qt.size = 2

-- Display: Num Of Instr Of Increasing Qt
gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_increasing_qt.display = function(value)
  return "Num Of Instr Of Increasing Qt: "..value
end

-- Dissect: Num Of Instr Of Increasing Qt
gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_increasing_qt.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_increasing_qt.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_increasing_qt.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.num_of_instr_of_increasing_qt, range, value, display)

  return offset + length, value
end

-- Num Of Instr Of Unchanged Qt
gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_unchanged_qt = {}

-- Size: Num Of Instr Of Unchanged Qt
gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_unchanged_qt.size = 2

-- Display: Num Of Instr Of Unchanged Qt
gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_unchanged_qt.display = function(value)
  return "Num Of Instr Of Unchanged Qt: "..value
end

-- Dissect: Num Of Instr Of Unchanged Qt
gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_unchanged_qt.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_unchanged_qt.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_unchanged_qt.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.num_of_instr_of_unchanged_qt, range, value, display)

  return offset + length, value
end

-- Number Msg Entries
gpw_bondspot_indices_xdp_v6_8.number_msg_entries = {}

-- Size: Number Msg Entries
gpw_bondspot_indices_xdp_v6_8.number_msg_entries.size = 1

-- Display: Number Msg Entries
gpw_bondspot_indices_xdp_v6_8.number_msg_entries.display = function(value)
  return "Number Msg Entries: "..value
end

-- Dissect: Number Msg Entries
gpw_bondspot_indices_xdp_v6_8.number_msg_entries.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.number_msg_entries.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.number_msg_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.number_msg_entries, range, value, display)

  return offset + length, value
end

-- Number Of Components
gpw_bondspot_indices_xdp_v6_8.number_of_components = {}

-- Size: Number Of Components
gpw_bondspot_indices_xdp_v6_8.number_of_components.size = 2

-- Display: Number Of Components
gpw_bondspot_indices_xdp_v6_8.number_of_components.display = function(value)
  return "Number Of Components: "..value
end

-- Dissect: Number Of Components
gpw_bondspot_indices_xdp_v6_8.number_of_components.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.number_of_components.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.number_of_components.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.number_of_components, range, value, display)

  return offset + length, value
end

-- Opening Calc Formula
gpw_bondspot_indices_xdp_v6_8.opening_calc_formula = {}

-- Size: Opening Calc Formula
gpw_bondspot_indices_xdp_v6_8.opening_calc_formula.size = 1

-- Display: Opening Calc Formula
gpw_bondspot_indices_xdp_v6_8.opening_calc_formula.display = function(value)
  if value == "S" then
    return "Opening Calc Formula: Synthetic (S)"
  end
  if value == "O" then
    return "Opening Calc Formula: Chronological (O)"
  end

  return "Opening Calc Formula: Unknown("..value..")"
end

-- Dissect: Opening Calc Formula
gpw_bondspot_indices_xdp_v6_8.opening_calc_formula.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.opening_calc_formula.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_bondspot_indices_xdp_v6_8.opening_calc_formula.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.opening_calc_formula, range, value, display)

  return offset + length, value
end

-- Opening Index Value
gpw_bondspot_indices_xdp_v6_8.opening_index_value = {}

-- Size: Opening Index Value
gpw_bondspot_indices_xdp_v6_8.opening_index_value.size = 4

-- Display: Opening Index Value
gpw_bondspot_indices_xdp_v6_8.opening_index_value.display = function(value)
  return "Opening Index Value: "..value
end

-- Dissect: Opening Index Value
gpw_bondspot_indices_xdp_v6_8.opening_index_value.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.opening_index_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.opening_index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.opening_index_value, range, value, display)

  return offset + length, value
end

-- Packet Length
gpw_bondspot_indices_xdp_v6_8.packet_length = {}

-- Size: Packet Length
gpw_bondspot_indices_xdp_v6_8.packet_length.size = 2

-- Display: Packet Length
gpw_bondspot_indices_xdp_v6_8.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
gpw_bondspot_indices_xdp_v6_8.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Sequence Number
gpw_bondspot_indices_xdp_v6_8.packet_sequence_number = {}

-- Size: Packet Sequence Number
gpw_bondspot_indices_xdp_v6_8.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
gpw_bondspot_indices_xdp_v6_8.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
gpw_bondspot_indices_xdp_v6_8.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Packet Type
gpw_bondspot_indices_xdp_v6_8.packet_type = {}

-- Size: Packet Type
gpw_bondspot_indices_xdp_v6_8.packet_type.size = 2

-- Display: Packet Type
gpw_bondspot_indices_xdp_v6_8.packet_type.display = function(value)
  if value == 501 then
    return "Packet Type: Market Data Messages (501)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
gpw_bondspot_indices_xdp_v6_8.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.packet_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Pct Change Index Val Prev Session
gpw_bondspot_indices_xdp_v6_8.pct_change_index_val_prev_session = {}

-- Size: Pct Change Index Val Prev Session
gpw_bondspot_indices_xdp_v6_8.pct_change_index_val_prev_session.size = 4

-- Display: Pct Change Index Val Prev Session
gpw_bondspot_indices_xdp_v6_8.pct_change_index_val_prev_session.display = function(value)
  return "Pct Change Index Val Prev Session: "..value
end

-- Dissect: Pct Change Index Val Prev Session
gpw_bondspot_indices_xdp_v6_8.pct_change_index_val_prev_session.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.pct_change_index_val_prev_session.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.pct_change_index_val_prev_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.pct_change_index_val_prev_session, range, value, display)

  return offset + length, value
end

-- Pct Change Index Val Prev Year
gpw_bondspot_indices_xdp_v6_8.pct_change_index_val_prev_year = {}

-- Size: Pct Change Index Val Prev Year
gpw_bondspot_indices_xdp_v6_8.pct_change_index_val_prev_year.size = 4

-- Display: Pct Change Index Val Prev Year
gpw_bondspot_indices_xdp_v6_8.pct_change_index_val_prev_year.display = function(value)
  return "Pct Change Index Val Prev Year: "..value
end

-- Dissect: Pct Change Index Val Prev Year
gpw_bondspot_indices_xdp_v6_8.pct_change_index_val_prev_year.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.pct_change_index_val_prev_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.pct_change_index_val_prev_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.pct_change_index_val_prev_year, range, value, display)

  return offset + length, value
end

-- Pct Chg High Index Val Prev Session
gpw_bondspot_indices_xdp_v6_8.pct_chg_high_index_val_prev_session = {}

-- Size: Pct Chg High Index Val Prev Session
gpw_bondspot_indices_xdp_v6_8.pct_chg_high_index_val_prev_session.size = 4

-- Display: Pct Chg High Index Val Prev Session
gpw_bondspot_indices_xdp_v6_8.pct_chg_high_index_val_prev_session.display = function(value)
  return "Pct Chg High Index Val Prev Session: "..value
end

-- Dissect: Pct Chg High Index Val Prev Session
gpw_bondspot_indices_xdp_v6_8.pct_chg_high_index_val_prev_session.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.pct_chg_high_index_val_prev_session.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.pct_chg_high_index_val_prev_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.pct_chg_high_index_val_prev_session, range, value, display)

  return offset + length, value
end

-- Pct Chg Low Index Val Prev Session
gpw_bondspot_indices_xdp_v6_8.pct_chg_low_index_val_prev_session = {}

-- Size: Pct Chg Low Index Val Prev Session
gpw_bondspot_indices_xdp_v6_8.pct_chg_low_index_val_prev_session.size = 4

-- Display: Pct Chg Low Index Val Prev Session
gpw_bondspot_indices_xdp_v6_8.pct_chg_low_index_val_prev_session.display = function(value)
  return "Pct Chg Low Index Val Prev Session: "..value
end

-- Dissect: Pct Chg Low Index Val Prev Session
gpw_bondspot_indices_xdp_v6_8.pct_chg_low_index_val_prev_session.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.pct_chg_low_index_val_prev_session.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.pct_chg_low_index_val_prev_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.pct_chg_low_index_val_prev_session, range, value, display)

  return offset + length, value
end

-- Percent Change Toi
gpw_bondspot_indices_xdp_v6_8.percent_change_toi = {}

-- Size: Percent Change Toi
gpw_bondspot_indices_xdp_v6_8.percent_change_toi.size = 4

-- Display: Percent Change Toi
gpw_bondspot_indices_xdp_v6_8.percent_change_toi.display = function(value)
  return "Percent Change Toi: "..value
end

-- Dissect: Percent Change Toi
gpw_bondspot_indices_xdp_v6_8.percent_change_toi.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.percent_change_toi.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.percent_change_toi.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.percent_change_toi, range, value, display)

  return offset + length, value
end

-- Point Change
gpw_bondspot_indices_xdp_v6_8.point_change = {}

-- Size: Point Change
gpw_bondspot_indices_xdp_v6_8.point_change.size = 4

-- Display: Point Change
gpw_bondspot_indices_xdp_v6_8.point_change.display = function(value)
  return "Point Change: "..value
end

-- Dissect: Point Change
gpw_bondspot_indices_xdp_v6_8.point_change.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.point_change.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.point_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.point_change, range, value, display)

  return offset + length, value
end

-- Product Classification
gpw_bondspot_indices_xdp_v6_8.product_classification = {}

-- Size: Product Classification
gpw_bondspot_indices_xdp_v6_8.product_classification.size = 1

-- Display: Product Classification
gpw_bondspot_indices_xdp_v6_8.product_classification.display = function(value)
  if value == "W" then
    return "Product Classification: Wse Index From The Main Market (W)"
  end
  if value == "Z" then
    return "Product Classification: External Index (Z)"
  end
  if value == "V" then
    return "Product Classification: Another Wse Information Product (V)"
  end
  if value == "M" then
    return "Product Classification: Wse Strategy Dividend Point Index (M)"
  end
  if value == "S" then
    return "Product Classification: Wse Strategy Index Of Short Type (S)"
  end
  if value == "L" then
    return "Product Classification: Wse Strategy Index Of Leverage Type (L)"
  end

  return "Product Classification: Unknown("..value..")"
end

-- Dissect: Product Classification
gpw_bondspot_indices_xdp_v6_8.product_classification.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.product_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_bondspot_indices_xdp_v6_8.product_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.product_classification, range, value, display)

  return offset + length, value
end

-- Reserved 1
gpw_bondspot_indices_xdp_v6_8.reserved_1 = {}

-- Size: Reserved 1
gpw_bondspot_indices_xdp_v6_8.reserved_1.size = 1

-- Display: Reserved 1
gpw_bondspot_indices_xdp_v6_8.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
gpw_bondspot_indices_xdp_v6_8.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_bondspot_indices_xdp_v6_8.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
gpw_bondspot_indices_xdp_v6_8.reserved_2 = {}

-- Size: Reserved 2
gpw_bondspot_indices_xdp_v6_8.reserved_2.size = 2

-- Display: Reserved 2
gpw_bondspot_indices_xdp_v6_8.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
gpw_bondspot_indices_xdp_v6_8.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_bondspot_indices_xdp_v6_8.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Send Time
gpw_bondspot_indices_xdp_v6_8.send_time = {}

-- Size: Send Time
gpw_bondspot_indices_xdp_v6_8.send_time.size = 4

-- Display: Send Time
gpw_bondspot_indices_xdp_v6_8.send_time.display = function(value)
  return "Send Time: "..value
end

-- Dissect: Send Time
gpw_bondspot_indices_xdp_v6_8.send_time.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.send_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.send_time, range, value, display)

  return offset + length, value
end

-- Service Id
gpw_bondspot_indices_xdp_v6_8.service_id = {}

-- Size: Service Id
gpw_bondspot_indices_xdp_v6_8.service_id.size = 2

-- Display: Service Id
gpw_bondspot_indices_xdp_v6_8.service_id.display = function(value)
  return "Service Id: "..value
end

-- Dissect: Service Id
gpw_bondspot_indices_xdp_v6_8.service_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.service_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.service_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.service_id, range, value, display)

  return offset + length, value
end

-- Session High
gpw_bondspot_indices_xdp_v6_8.session_high = {}

-- Size: Session High
gpw_bondspot_indices_xdp_v6_8.session_high.size = 4

-- Display: Session High
gpw_bondspot_indices_xdp_v6_8.session_high.display = function(value)
  return "Session High: "..value
end

-- Dissect: Session High
gpw_bondspot_indices_xdp_v6_8.session_high.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.session_high.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.session_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.session_high, range, value, display)

  return offset + length, value
end

-- Session Low
gpw_bondspot_indices_xdp_v6_8.session_low = {}

-- Size: Session Low
gpw_bondspot_indices_xdp_v6_8.session_low.size = 4

-- Display: Session Low
gpw_bondspot_indices_xdp_v6_8.session_low.display = function(value)
  return "Session Low: "..value
end

-- Dissect: Session Low
gpw_bondspot_indices_xdp_v6_8.session_low.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.session_low.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.session_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.session_low, range, value, display)

  return offset + length, value
end

-- Source Seq Num
gpw_bondspot_indices_xdp_v6_8.source_seq_num = {}

-- Size: Source Seq Num
gpw_bondspot_indices_xdp_v6_8.source_seq_num.size = 4

-- Display: Source Seq Num
gpw_bondspot_indices_xdp_v6_8.source_seq_num.display = function(value)
  return "Source Seq Num: "..value
end

-- Dissect: Source Seq Num
gpw_bondspot_indices_xdp_v6_8.source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.source_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.source_seq_num, range, value, display)

  return offset + length, value
end

-- Source Time
gpw_bondspot_indices_xdp_v6_8.source_time = {}

-- Size: Source Time
gpw_bondspot_indices_xdp_v6_8.source_time.size = 4

-- Display: Source Time
gpw_bondspot_indices_xdp_v6_8.source_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if gpw_bondspot_indices_xdp_v6_8.timestamp_format == 0 then
    return "Source Time: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if gpw_bondspot_indices_xdp_v6_8.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = gpw_bondspot_indices_xdp_v6_8.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Source Time: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Source Time: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Source Time
gpw_bondspot_indices_xdp_v6_8.source_time.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.source_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.source_time, range, value, display)

  return offset + length, value
end

-- Source Time Micro Secs
gpw_bondspot_indices_xdp_v6_8.source_time_micro_secs = {}

-- Size: Source Time Micro Secs
gpw_bondspot_indices_xdp_v6_8.source_time_micro_secs.size = 2

-- Display: Source Time Micro Secs
gpw_bondspot_indices_xdp_v6_8.source_time_micro_secs.display = function(value)
  return "Source Time Micro Secs: "..value
end

-- Dissect: Source Time Micro Secs
gpw_bondspot_indices_xdp_v6_8.source_time_micro_secs.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.source_time_micro_secs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.source_time_micro_secs.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.source_time_micro_secs, range, value, display)

  return offset + length, value
end

-- Spread Dissemination
gpw_bondspot_indices_xdp_v6_8.spread_dissemination = {}

-- Size: Spread Dissemination
gpw_bondspot_indices_xdp_v6_8.spread_dissemination.size = 1

-- Display: Spread Dissemination
gpw_bondspot_indices_xdp_v6_8.spread_dissemination.display = function(value)
  if value == "Y" then
    return "Spread Dissemination: Spread Indicators Are Published (Y)"
  end
  if value == "N" then
    return "Spread Dissemination: Spread Indicators Are Not Published (N)"
  end

  return "Spread Dissemination: Unknown("..value..")"
end

-- Dissect: Spread Dissemination
gpw_bondspot_indices_xdp_v6_8.spread_dissemination.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.spread_dissemination.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_bondspot_indices_xdp_v6_8.spread_dissemination.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.spread_dissemination, range, value, display)

  return offset + length, value
end

-- Symbol Index
gpw_bondspot_indices_xdp_v6_8.symbol_index = {}

-- Size: Symbol Index
gpw_bondspot_indices_xdp_v6_8.symbol_index.size = 4

-- Display: Symbol Index
gpw_bondspot_indices_xdp_v6_8.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
gpw_bondspot_indices_xdp_v6_8.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.symbol_index.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- System Id
gpw_bondspot_indices_xdp_v6_8.system_id = {}

-- Size: System Id
gpw_bondspot_indices_xdp_v6_8.system_id.size = 4

-- Display: System Id
gpw_bondspot_indices_xdp_v6_8.system_id.display = function(value)
  if value == 1 then
    return "System Id: All Non Utp Systems (1)"
  end
  if value == 11 then
    return "System Id: Utp Trading Unit 1 (11)"
  end
  if value == 12 then
    return "System Id: Utp Trading Unit 2 (12)"
  end

  return "System Id: Unknown("..value..")"
end

-- Dissect: System Id
gpw_bondspot_indices_xdp_v6_8.system_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.system_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.system_id, range, value, display)

  return offset + length, value
end

-- Time Closing
gpw_bondspot_indices_xdp_v6_8.time_closing = {}

-- Size: Time Closing
gpw_bondspot_indices_xdp_v6_8.time_closing.size = 6

-- Display: Time Closing
gpw_bondspot_indices_xdp_v6_8.time_closing.display = function(value)
  if #value < 6 then
    return "Time Closing: "..value
  end

  return "Time Closing: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Time Closing
gpw_bondspot_indices_xdp_v6_8.time_closing.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.time_closing.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_bondspot_indices_xdp_v6_8.time_closing.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.time_closing, range, value, display)

  return offset + length, value
end

-- Time First High
gpw_bondspot_indices_xdp_v6_8.time_first_high = {}

-- Size: Time First High
gpw_bondspot_indices_xdp_v6_8.time_first_high.size = 6

-- Display: Time First High
gpw_bondspot_indices_xdp_v6_8.time_first_high.display = function(value)
  if #value < 6 then
    return "Time First High: "..value
  end

  return "Time First High: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Time First High
gpw_bondspot_indices_xdp_v6_8.time_first_high.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.time_first_high.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_bondspot_indices_xdp_v6_8.time_first_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.time_first_high, range, value, display)

  return offset + length, value
end

-- Time First Low
gpw_bondspot_indices_xdp_v6_8.time_first_low = {}

-- Size: Time First Low
gpw_bondspot_indices_xdp_v6_8.time_first_low.size = 6

-- Display: Time First Low
gpw_bondspot_indices_xdp_v6_8.time_first_low.display = function(value)
  if #value < 6 then
    return "Time First Low: "..value
  end

  return "Time First Low: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Time First Low
gpw_bondspot_indices_xdp_v6_8.time_first_low.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.time_first_low.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_bondspot_indices_xdp_v6_8.time_first_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.time_first_low, range, value, display)

  return offset + length, value
end

-- Time Full Opening
gpw_bondspot_indices_xdp_v6_8.time_full_opening = {}

-- Size: Time Full Opening
gpw_bondspot_indices_xdp_v6_8.time_full_opening.size = 6

-- Display: Time Full Opening
gpw_bondspot_indices_xdp_v6_8.time_full_opening.display = function(value)
  if #value < 6 then
    return "Time Full Opening: "..value
  end

  return "Time Full Opening: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Time Full Opening
gpw_bondspot_indices_xdp_v6_8.time_full_opening.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.time_full_opening.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_bondspot_indices_xdp_v6_8.time_full_opening.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.time_full_opening, range, value, display)

  return offset + length, value
end

-- Time High
gpw_bondspot_indices_xdp_v6_8.time_high = {}

-- Size: Time High
gpw_bondspot_indices_xdp_v6_8.time_high.size = 6

-- Display: Time High
gpw_bondspot_indices_xdp_v6_8.time_high.display = function(value)
  if #value < 6 then
    return "Time High: "..value
  end

  return "Time High: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Time High
gpw_bondspot_indices_xdp_v6_8.time_high.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.time_high.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_bondspot_indices_xdp_v6_8.time_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.time_high, range, value, display)

  return offset + length, value
end

-- Time Low
gpw_bondspot_indices_xdp_v6_8.time_low = {}

-- Size: Time Low
gpw_bondspot_indices_xdp_v6_8.time_low.size = 6

-- Display: Time Low
gpw_bondspot_indices_xdp_v6_8.time_low.display = function(value)
  if #value < 6 then
    return "Time Low: "..value
  end

  return "Time Low: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Time Low
gpw_bondspot_indices_xdp_v6_8.time_low.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.time_low.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_bondspot_indices_xdp_v6_8.time_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.time_low, range, value, display)

  return offset + length, value
end

-- Time Opening
gpw_bondspot_indices_xdp_v6_8.time_opening = {}

-- Size: Time Opening
gpw_bondspot_indices_xdp_v6_8.time_opening.size = 6

-- Display: Time Opening
gpw_bondspot_indices_xdp_v6_8.time_opening.display = function(value)
  if #value < 6 then
    return "Time Opening: "..value
  end

  return "Time Opening: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Time Opening
gpw_bondspot_indices_xdp_v6_8.time_opening.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.time_opening.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_bondspot_indices_xdp_v6_8.time_opening.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.time_opening, range, value, display)

  return offset + length, value
end

-- Toi
gpw_bondspot_indices_xdp_v6_8.toi = {}

-- Size: Toi
gpw_bondspot_indices_xdp_v6_8.toi.size = 4

-- Display: Toi
gpw_bondspot_indices_xdp_v6_8.toi.display = function(value)
  return "Toi: "..value
end

-- Dissect: Toi
gpw_bondspot_indices_xdp_v6_8.toi.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.toi.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.toi.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.toi, range, value, display)

  return offset + length, value
end

-- Toi Dissemination
gpw_bondspot_indices_xdp_v6_8.toi_dissemination = {}

-- Size: Toi Dissemination
gpw_bondspot_indices_xdp_v6_8.toi_dissemination.size = 1

-- Display: Toi Dissemination
gpw_bondspot_indices_xdp_v6_8.toi_dissemination.display = function(value)
  if value == "Y" then
    return "Toi Dissemination: Message 546 With Level 8 Is Sent (Y)"
  end
  if value == "N" then
    return "Toi Dissemination: Message 546 With Level 8 Is Not Sent (N)"
  end

  return "Toi Dissemination: Unknown("..value..")"
end

-- Dissect: Toi Dissemination
gpw_bondspot_indices_xdp_v6_8.toi_dissemination.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.toi_dissemination.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_bondspot_indices_xdp_v6_8.toi_dissemination.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.toi_dissemination, range, value, display)

  return offset + length, value
end

-- Trading Value Publication
gpw_bondspot_indices_xdp_v6_8.trading_value_publication = {}

-- Size: Trading Value Publication
gpw_bondspot_indices_xdp_v6_8.trading_value_publication.size = 1

-- Display: Trading Value Publication
gpw_bondspot_indices_xdp_v6_8.trading_value_publication.display = function(value)
  if value == "Y" then
    return "Trading Value Publication: Value Is Provided (Y)"
  end
  if value == "N" then
    return "Trading Value Publication: Value Is Not Provided (N)"
  end

  return "Trading Value Publication: Unknown("..value..")"
end

-- Dissect: Trading Value Publication
gpw_bondspot_indices_xdp_v6_8.trading_value_publication.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.trading_value_publication.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_bondspot_indices_xdp_v6_8.trading_value_publication.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.trading_value_publication, range, value, display)

  return offset + length, value
end

-- Value Last Closing Index
gpw_bondspot_indices_xdp_v6_8.value_last_closing_index = {}

-- Size: Value Last Closing Index
gpw_bondspot_indices_xdp_v6_8.value_last_closing_index.size = 4

-- Display: Value Last Closing Index
gpw_bondspot_indices_xdp_v6_8.value_last_closing_index.display = function(value)
  return "Value Last Closing Index: "..value
end

-- Dissect: Value Last Closing Index
gpw_bondspot_indices_xdp_v6_8.value_last_closing_index.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.value_last_closing_index.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_bondspot_indices_xdp_v6_8.value_last_closing_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.value_last_closing_index, range, value, display)

  return offset + length, value
end

-- Value Trading
gpw_bondspot_indices_xdp_v6_8.value_trading = {}

-- Size: Value Trading
gpw_bondspot_indices_xdp_v6_8.value_trading.size = 8

-- Display: Value Trading
gpw_bondspot_indices_xdp_v6_8.value_trading.display = function(value)
  return "Value Trading: "..value
end

-- Dissect: Value Trading
gpw_bondspot_indices_xdp_v6_8.value_trading.dissect = function(buffer, offset, packet, parent)
  local length = gpw_bondspot_indices_xdp_v6_8.value_trading.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = gpw_bondspot_indices_xdp_v6_8.value_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.value_trading, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Gpw BondSpot Indices Xdp 6.8
-----------------------------------------------------------------------

-- Index Portfolio Component
gpw_bondspot_indices_xdp_v6_8.index_portfolio_component = {}

-- Size: Index Portfolio Component
gpw_bondspot_indices_xdp_v6_8.index_portfolio_component.size =
  gpw_bondspot_indices_xdp_v6_8.instrument_isin.size + 
  gpw_bondspot_indices_xdp_v6_8.instrument_abbrev_name.size + 
  gpw_bondspot_indices_xdp_v6_8.instrument_packet.size

-- Display: Index Portfolio Component
gpw_bondspot_indices_xdp_v6_8.index_portfolio_component.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Portfolio Component
gpw_bondspot_indices_xdp_v6_8.index_portfolio_component.fields = function(buffer, offset, packet, parent, index_portfolio_component_index)
  local index = offset

  -- Implicit Index Portfolio Component Index
  if index_portfolio_component_index ~= nil and show.indexes then
    local iteration = parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.index_portfolio_component_index, index_portfolio_component_index)
    iteration:set_generated()
  end

  -- Instrument Isin: ASCII Ch.
  index, instrument_isin = gpw_bondspot_indices_xdp_v6_8.instrument_isin.dissect(buffer, index, packet, parent)

  -- Instrument Abbrev Name: ASCII Ch.
  index, instrument_abbrev_name = gpw_bondspot_indices_xdp_v6_8.instrument_abbrev_name.dissect(buffer, index, packet, parent)

  -- Instrument Packet: ASCII Ch.
  index, instrument_packet = gpw_bondspot_indices_xdp_v6_8.instrument_packet.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Portfolio Component
gpw_bondspot_indices_xdp_v6_8.index_portfolio_component.dissect = function(buffer, offset, packet, parent, index_portfolio_component_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.index_portfolio_component, buffer(offset, 0))
    local index = gpw_bondspot_indices_xdp_v6_8.index_portfolio_component.fields(buffer, offset, packet, parent, index_portfolio_component_index)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_bondspot_indices_xdp_v6_8.index_portfolio_component.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_bondspot_indices_xdp_v6_8.index_portfolio_component.fields(buffer, offset, packet, parent, index_portfolio_component_index)
  end
end

-- Index Portfolio Message
gpw_bondspot_indices_xdp_v6_8.index_portfolio_message = {}

-- Size: Index Portfolio Message
gpw_bondspot_indices_xdp_v6_8.index_portfolio_message.size =
  gpw_bondspot_indices_xdp_v6_8.symbol_index.size + 
  gpw_bondspot_indices_xdp_v6_8.source_time.size + 
  gpw_bondspot_indices_xdp_v6_8.source_seq_num.size + 
  gpw_bondspot_indices_xdp_v6_8.system_id.size + 
  gpw_bondspot_indices_xdp_v6_8.index_adjustment_coefficient.size + 
  gpw_bondspot_indices_xdp_v6_8.level_cash_portfolio.size + 
  gpw_bondspot_indices_xdp_v6_8.value_last_closing_index.size + 
  gpw_bondspot_indices_xdp_v6_8.number_of_components.size + 
  gpw_bondspot_indices_xdp_v6_8.source_time_micro_secs.size + 
  gpw_bondspot_indices_xdp_v6_8.index_adjustment_scale_code.size + 
  gpw_bondspot_indices_xdp_v6_8.cash_portfolio_scale_code.size + 
  gpw_bondspot_indices_xdp_v6_8.level_scale_code.size + 
  20 * gpw_bondspot_indices_xdp_v6_8.index_portfolio_component.size + 
  gpw_bondspot_indices_xdp_v6_8.date_validity.size + 
  gpw_bondspot_indices_xdp_v6_8.index_currency.size + 
  gpw_bondspot_indices_xdp_v6_8.index_status_indicator.size + 
  gpw_bondspot_indices_xdp_v6_8.index_pres_seq.size + 
  gpw_bondspot_indices_xdp_v6_8.mode_index_dissemination.size + 
  gpw_bondspot_indices_xdp_v6_8.product_classification.size + 
  gpw_bondspot_indices_xdp_v6_8.opening_calc_formula.size + 
  gpw_bondspot_indices_xdp_v6_8.reserved_1.size + 
  gpw_bondspot_indices_xdp_v6_8.toi_dissemination.size + 
  gpw_bondspot_indices_xdp_v6_8.spread_dissemination.size + 
  gpw_bondspot_indices_xdp_v6_8.trading_value_publication.size + 
  gpw_bondspot_indices_xdp_v6_8.message_continuation.size + 
  gpw_bondspot_indices_xdp_v6_8.reserved_2.size

-- Display: Index Portfolio Message
gpw_bondspot_indices_xdp_v6_8.index_portfolio_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Portfolio Message
gpw_bondspot_indices_xdp_v6_8.index_portfolio_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = gpw_bondspot_indices_xdp_v6_8.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_bondspot_indices_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_bondspot_indices_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_bondspot_indices_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Index Adjustment Coefficient: Binary Int.
  index, index_adjustment_coefficient = gpw_bondspot_indices_xdp_v6_8.index_adjustment_coefficient.dissect(buffer, index, packet, parent)

  -- Level Cash Portfolio: Binary Int.
  index, level_cash_portfolio = gpw_bondspot_indices_xdp_v6_8.level_cash_portfolio.dissect(buffer, index, packet, parent)

  -- Value Last Closing Index: Binary Int.
  index, value_last_closing_index = gpw_bondspot_indices_xdp_v6_8.value_last_closing_index.dissect(buffer, index, packet, parent)

  -- Number Of Components: Binary Int.
  index, number_of_components = gpw_bondspot_indices_xdp_v6_8.number_of_components.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_bondspot_indices_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Index Adjustment Scale Code: Binary Int.
  index, index_adjustment_scale_code = gpw_bondspot_indices_xdp_v6_8.index_adjustment_scale_code.dissect(buffer, index, packet, parent)

  -- Cash Portfolio Scale Code: Binary Int.
  index, cash_portfolio_scale_code = gpw_bondspot_indices_xdp_v6_8.cash_portfolio_scale_code.dissect(buffer, index, packet, parent)

  -- Level Scale Code: Binary Int.
  index, level_scale_code = gpw_bondspot_indices_xdp_v6_8.level_scale_code.dissect(buffer, index, packet, parent)

  -- Array Of: Index Portfolio Component
  for index_portfolio_component_index = 1, 20 do
    index, index_portfolio_component = gpw_bondspot_indices_xdp_v6_8.index_portfolio_component.dissect(buffer, index, packet, parent, index_portfolio_component_index)
  end

  -- Date Validity: ASCII Ch.
  index, date_validity = gpw_bondspot_indices_xdp_v6_8.date_validity.dissect(buffer, index, packet, parent)

  -- Index Currency: ASCII Ch.
  index, index_currency = gpw_bondspot_indices_xdp_v6_8.index_currency.dissect(buffer, index, packet, parent)

  -- Index Status Indicator: ASCII Ch.
  index, index_status_indicator = gpw_bondspot_indices_xdp_v6_8.index_status_indicator.dissect(buffer, index, packet, parent)

  -- Index Pres Seq: ASCII Ch.
  index, index_pres_seq = gpw_bondspot_indices_xdp_v6_8.index_pres_seq.dissect(buffer, index, packet, parent)

  -- Mode Index Dissemination: ASCII Ch.
  index, mode_index_dissemination = gpw_bondspot_indices_xdp_v6_8.mode_index_dissemination.dissect(buffer, index, packet, parent)

  -- Product Classification: ASCII Ch.
  index, product_classification = gpw_bondspot_indices_xdp_v6_8.product_classification.dissect(buffer, index, packet, parent)

  -- Opening Calc Formula: ASCII Ch.
  index, opening_calc_formula = gpw_bondspot_indices_xdp_v6_8.opening_calc_formula.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary Int.
  index, reserved_1 = gpw_bondspot_indices_xdp_v6_8.reserved_1.dissect(buffer, index, packet, parent)

  -- Toi Dissemination: ASCII Ch.
  index, toi_dissemination = gpw_bondspot_indices_xdp_v6_8.toi_dissemination.dissect(buffer, index, packet, parent)

  -- Spread Dissemination: ASCII Ch.
  index, spread_dissemination = gpw_bondspot_indices_xdp_v6_8.spread_dissemination.dissect(buffer, index, packet, parent)

  -- Trading Value Publication: ASCII Ch.
  index, trading_value_publication = gpw_bondspot_indices_xdp_v6_8.trading_value_publication.dissect(buffer, index, packet, parent)

  -- Message Continuation: ASCII Ch.
  index, message_continuation = gpw_bondspot_indices_xdp_v6_8.message_continuation.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary Int.
  index, reserved_2 = gpw_bondspot_indices_xdp_v6_8.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Portfolio Message
gpw_bondspot_indices_xdp_v6_8.index_portfolio_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.index_portfolio_message, buffer(offset, 0))
    local index = gpw_bondspot_indices_xdp_v6_8.index_portfolio_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_bondspot_indices_xdp_v6_8.index_portfolio_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_bondspot_indices_xdp_v6_8.index_portfolio_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Summary Message
gpw_bondspot_indices_xdp_v6_8.index_summary_message = {}

-- Size: Index Summary Message
gpw_bondspot_indices_xdp_v6_8.index_summary_message.size =
  gpw_bondspot_indices_xdp_v6_8.symbol_index.size + 
  gpw_bondspot_indices_xdp_v6_8.source_time.size + 
  gpw_bondspot_indices_xdp_v6_8.source_seq_num.size + 
  gpw_bondspot_indices_xdp_v6_8.system_id.size + 
  gpw_bondspot_indices_xdp_v6_8.closing_index_value.size + 
  gpw_bondspot_indices_xdp_v6_8.ind_opening_portfolio.size + 
  gpw_bondspot_indices_xdp_v6_8.opening_index_value.size + 
  gpw_bondspot_indices_xdp_v6_8.session_high.size + 
  gpw_bondspot_indices_xdp_v6_8.session_low.size + 
  gpw_bondspot_indices_xdp_v6_8.pct_chg_high_index_val_prev_session.size + 
  gpw_bondspot_indices_xdp_v6_8.pct_chg_low_index_val_prev_session.size + 
  gpw_bondspot_indices_xdp_v6_8.pct_change_index_val_prev_session.size + 
  gpw_bondspot_indices_xdp_v6_8.pct_change_index_val_prev_year.size + 
  gpw_bondspot_indices_xdp_v6_8.capitalisation_portfolio.size + 
  gpw_bondspot_indices_xdp_v6_8.index_adjustment_coefficient.size + 
  gpw_bondspot_indices_xdp_v6_8.source_time_micro_secs.size + 
  gpw_bondspot_indices_xdp_v6_8.level_scale_code.size + 
  gpw_bondspot_indices_xdp_v6_8.capitalisation_scale_code.size + 
  gpw_bondspot_indices_xdp_v6_8.index_adjustment_scale_code.size + 
  gpw_bondspot_indices_xdp_v6_8.time_closing.size + 
  gpw_bondspot_indices_xdp_v6_8.time_opening.size + 
  gpw_bondspot_indices_xdp_v6_8.time_full_opening.size + 
  gpw_bondspot_indices_xdp_v6_8.time_high.size + 
  gpw_bondspot_indices_xdp_v6_8.time_low.size + 
  gpw_bondspot_indices_xdp_v6_8.marker_high.size + 
  gpw_bondspot_indices_xdp_v6_8.marker_low.size + 
  gpw_bondspot_indices_xdp_v6_8.marker_closing_prev_session.size + 
  gpw_bondspot_indices_xdp_v6_8.marker_closing_prev_year.size + 
  gpw_bondspot_indices_xdp_v6_8.reserved_1.size

-- Display: Index Summary Message
gpw_bondspot_indices_xdp_v6_8.index_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Summary Message
gpw_bondspot_indices_xdp_v6_8.index_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = gpw_bondspot_indices_xdp_v6_8.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_bondspot_indices_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_bondspot_indices_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_bondspot_indices_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Closing Index Value: Binary Int.
  index, closing_index_value = gpw_bondspot_indices_xdp_v6_8.closing_index_value.dissect(buffer, index, packet, parent)

  -- Ind Opening Portfolio: Binary Int.
  index, ind_opening_portfolio = gpw_bondspot_indices_xdp_v6_8.ind_opening_portfolio.dissect(buffer, index, packet, parent)

  -- Opening Index Value: Binary Int.
  index, opening_index_value = gpw_bondspot_indices_xdp_v6_8.opening_index_value.dissect(buffer, index, packet, parent)

  -- Session High: Binary Int.
  index, session_high = gpw_bondspot_indices_xdp_v6_8.session_high.dissect(buffer, index, packet, parent)

  -- Session Low: Binary Int.
  index, session_low = gpw_bondspot_indices_xdp_v6_8.session_low.dissect(buffer, index, packet, parent)

  -- Pct Chg High Index Val Prev Session: Binary Int.
  index, pct_chg_high_index_val_prev_session = gpw_bondspot_indices_xdp_v6_8.pct_chg_high_index_val_prev_session.dissect(buffer, index, packet, parent)

  -- Pct Chg Low Index Val Prev Session: Binary Int.
  index, pct_chg_low_index_val_prev_session = gpw_bondspot_indices_xdp_v6_8.pct_chg_low_index_val_prev_session.dissect(buffer, index, packet, parent)

  -- Pct Change Index Val Prev Session: Binary Int.
  index, pct_change_index_val_prev_session = gpw_bondspot_indices_xdp_v6_8.pct_change_index_val_prev_session.dissect(buffer, index, packet, parent)

  -- Pct Change Index Val Prev Year: Binary Int.
  index, pct_change_index_val_prev_year = gpw_bondspot_indices_xdp_v6_8.pct_change_index_val_prev_year.dissect(buffer, index, packet, parent)

  -- Capitalisation Portfolio: Binary Int.
  index, capitalisation_portfolio = gpw_bondspot_indices_xdp_v6_8.capitalisation_portfolio.dissect(buffer, index, packet, parent)

  -- Index Adjustment Coefficient: Binary Int.
  index, index_adjustment_coefficient = gpw_bondspot_indices_xdp_v6_8.index_adjustment_coefficient.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_bondspot_indices_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Level Scale Code: Binary Int.
  index, level_scale_code = gpw_bondspot_indices_xdp_v6_8.level_scale_code.dissect(buffer, index, packet, parent)

  -- Capitalisation Scale Code: Binary Int.
  index, capitalisation_scale_code = gpw_bondspot_indices_xdp_v6_8.capitalisation_scale_code.dissect(buffer, index, packet, parent)

  -- Index Adjustment Scale Code: Binary Int.
  index, index_adjustment_scale_code = gpw_bondspot_indices_xdp_v6_8.index_adjustment_scale_code.dissect(buffer, index, packet, parent)

  -- Time Closing: ASCII Ch.
  index, time_closing = gpw_bondspot_indices_xdp_v6_8.time_closing.dissect(buffer, index, packet, parent)

  -- Time Opening: ASCII Ch.
  index, time_opening = gpw_bondspot_indices_xdp_v6_8.time_opening.dissect(buffer, index, packet, parent)

  -- Time Full Opening: ASCII Ch.
  index, time_full_opening = gpw_bondspot_indices_xdp_v6_8.time_full_opening.dissect(buffer, index, packet, parent)

  -- Time High: ASCII Ch.
  index, time_high = gpw_bondspot_indices_xdp_v6_8.time_high.dissect(buffer, index, packet, parent)

  -- Time Low: ASCII Ch.
  index, time_low = gpw_bondspot_indices_xdp_v6_8.time_low.dissect(buffer, index, packet, parent)

  -- Marker High: ASCII Str.
  index, marker_high = gpw_bondspot_indices_xdp_v6_8.marker_high.dissect(buffer, index, packet, parent)

  -- Marker Low: ASCII Str.
  index, marker_low = gpw_bondspot_indices_xdp_v6_8.marker_low.dissect(buffer, index, packet, parent)

  -- Marker Closing Prev Session: ASCII Str.
  index, marker_closing_prev_session = gpw_bondspot_indices_xdp_v6_8.marker_closing_prev_session.dissect(buffer, index, packet, parent)

  -- Marker Closing Prev Year: ASCII Str.
  index, marker_closing_prev_year = gpw_bondspot_indices_xdp_v6_8.marker_closing_prev_year.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary Int.
  index, reserved_1 = gpw_bondspot_indices_xdp_v6_8.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Summary Message
gpw_bondspot_indices_xdp_v6_8.index_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.index_summary_message, buffer(offset, 0))
    local index = gpw_bondspot_indices_xdp_v6_8.index_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_bondspot_indices_xdp_v6_8.index_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_bondspot_indices_xdp_v6_8.index_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Real Time Index Message
gpw_bondspot_indices_xdp_v6_8.real_time_index_message = {}

-- Size: Real Time Index Message
gpw_bondspot_indices_xdp_v6_8.real_time_index_message.size =
  gpw_bondspot_indices_xdp_v6_8.symbol_index.size + 
  gpw_bondspot_indices_xdp_v6_8.source_time.size + 
  gpw_bondspot_indices_xdp_v6_8.source_seq_num.size + 
  gpw_bondspot_indices_xdp_v6_8.system_id.size + 
  gpw_bondspot_indices_xdp_v6_8.index_level.size + 
  gpw_bondspot_indices_xdp_v6_8.session_high.size + 
  gpw_bondspot_indices_xdp_v6_8.session_low.size + 
  gpw_bondspot_indices_xdp_v6_8.ind_index_opening_portfolio.size + 
  gpw_bondspot_indices_xdp_v6_8.percent_change_toi.size + 
  gpw_bondspot_indices_xdp_v6_8.pct_change_index_val_prev_session.size + 
  gpw_bondspot_indices_xdp_v6_8.pct_change_index_val_prev_year.size + 
  gpw_bondspot_indices_xdp_v6_8.toi.size + 
  gpw_bondspot_indices_xdp_v6_8.point_change.size + 
  gpw_bondspot_indices_xdp_v6_8.value_trading.size + 
  gpw_bondspot_indices_xdp_v6_8.index_value_bid.size + 
  gpw_bondspot_indices_xdp_v6_8.index_value_ask.size + 
  gpw_bondspot_indices_xdp_v6_8.mid_spread_index.size + 
  gpw_bondspot_indices_xdp_v6_8.difference_central_spread.size + 
  gpw_bondspot_indices_xdp_v6_8.num_of_active_instruments.size + 
  gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_decreasing_qt.size + 
  gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_increasing_qt.size + 
  gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_unchanged_qt.size + 
  gpw_bondspot_indices_xdp_v6_8.source_time_micro_secs.size + 
  gpw_bondspot_indices_xdp_v6_8.level_scale_code.size + 
  gpw_bondspot_indices_xdp_v6_8.time_first_high.size + 
  gpw_bondspot_indices_xdp_v6_8.time_first_low.size + 
  gpw_bondspot_indices_xdp_v6_8.index_status_indicator.size + 
  gpw_bondspot_indices_xdp_v6_8.index_level_code.size + 
  gpw_bondspot_indices_xdp_v6_8.marker_percent_change_toi.size + 
  gpw_bondspot_indices_xdp_v6_8.marker_pct_chg_index_val_prev_sess.size + 
  gpw_bondspot_indices_xdp_v6_8.marker_pct_chg_index_val_prev_year.size + 
  gpw_bondspot_indices_xdp_v6_8.marker_point_change.size + 
  gpw_bondspot_indices_xdp_v6_8.marker_difference_central_spread.size + 
  gpw_bondspot_indices_xdp_v6_8.dissemination_frequency_marker.size

-- Display: Real Time Index Message
gpw_bondspot_indices_xdp_v6_8.real_time_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Real Time Index Message
gpw_bondspot_indices_xdp_v6_8.real_time_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = gpw_bondspot_indices_xdp_v6_8.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_bondspot_indices_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_bondspot_indices_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_bondspot_indices_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Index Level: Binary Int.
  index, index_level = gpw_bondspot_indices_xdp_v6_8.index_level.dissect(buffer, index, packet, parent)

  -- Session High: Binary Int.
  index, session_high = gpw_bondspot_indices_xdp_v6_8.session_high.dissect(buffer, index, packet, parent)

  -- Session Low: Binary Int.
  index, session_low = gpw_bondspot_indices_xdp_v6_8.session_low.dissect(buffer, index, packet, parent)

  -- Ind Index Opening Portfolio: Binary Int.
  index, ind_index_opening_portfolio = gpw_bondspot_indices_xdp_v6_8.ind_index_opening_portfolio.dissect(buffer, index, packet, parent)

  -- Percent Change Toi: Binary Int.
  index, percent_change_toi = gpw_bondspot_indices_xdp_v6_8.percent_change_toi.dissect(buffer, index, packet, parent)

  -- Pct Change Index Val Prev Session: Binary Int.
  index, pct_change_index_val_prev_session = gpw_bondspot_indices_xdp_v6_8.pct_change_index_val_prev_session.dissect(buffer, index, packet, parent)

  -- Pct Change Index Val Prev Year: Binary Int.
  index, pct_change_index_val_prev_year = gpw_bondspot_indices_xdp_v6_8.pct_change_index_val_prev_year.dissect(buffer, index, packet, parent)

  -- Toi: Binary Int.
  index, toi = gpw_bondspot_indices_xdp_v6_8.toi.dissect(buffer, index, packet, parent)

  -- Point Change: Binary Int.
  index, point_change = gpw_bondspot_indices_xdp_v6_8.point_change.dissect(buffer, index, packet, parent)

  -- Value Trading: Binary Int.
  index, value_trading = gpw_bondspot_indices_xdp_v6_8.value_trading.dissect(buffer, index, packet, parent)

  -- Index Value Bid: Binary Int.
  index, index_value_bid = gpw_bondspot_indices_xdp_v6_8.index_value_bid.dissect(buffer, index, packet, parent)

  -- Index Value Ask: Binary Int.
  index, index_value_ask = gpw_bondspot_indices_xdp_v6_8.index_value_ask.dissect(buffer, index, packet, parent)

  -- Mid Spread Index: Binary Int.
  index, mid_spread_index = gpw_bondspot_indices_xdp_v6_8.mid_spread_index.dissect(buffer, index, packet, parent)

  -- Difference Central Spread: Binary Int.
  index, difference_central_spread = gpw_bondspot_indices_xdp_v6_8.difference_central_spread.dissect(buffer, index, packet, parent)

  -- Num Of Active Instruments: Binary Int.
  index, num_of_active_instruments = gpw_bondspot_indices_xdp_v6_8.num_of_active_instruments.dissect(buffer, index, packet, parent)

  -- Num Of Instr Of Decreasing Qt: Binary Int.
  index, num_of_instr_of_decreasing_qt = gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_decreasing_qt.dissect(buffer, index, packet, parent)

  -- Num Of Instr Of Increasing Qt: Binary Int.
  index, num_of_instr_of_increasing_qt = gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_increasing_qt.dissect(buffer, index, packet, parent)

  -- Num Of Instr Of Unchanged Qt: Binary Int.
  index, num_of_instr_of_unchanged_qt = gpw_bondspot_indices_xdp_v6_8.num_of_instr_of_unchanged_qt.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_bondspot_indices_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Level Scale Code: Binary Int.
  index, level_scale_code = gpw_bondspot_indices_xdp_v6_8.level_scale_code.dissect(buffer, index, packet, parent)

  -- Time First High: ASCII Ch.
  index, time_first_high = gpw_bondspot_indices_xdp_v6_8.time_first_high.dissect(buffer, index, packet, parent)

  -- Time First Low: ASCII Ch.
  index, time_first_low = gpw_bondspot_indices_xdp_v6_8.time_first_low.dissect(buffer, index, packet, parent)

  -- Index Status Indicator: ASCII Ch.
  index, index_status_indicator = gpw_bondspot_indices_xdp_v6_8.index_status_indicator.dissect(buffer, index, packet, parent)

  -- Index Level Code: ASCII Ch.
  index, index_level_code = gpw_bondspot_indices_xdp_v6_8.index_level_code.dissect(buffer, index, packet, parent)

  -- Marker Percent Change Toi: ASCII Str.
  index, marker_percent_change_toi = gpw_bondspot_indices_xdp_v6_8.marker_percent_change_toi.dissect(buffer, index, packet, parent)

  -- Marker Pct Chg Index Val Prev Sess: ASCII Str.
  index, marker_pct_chg_index_val_prev_sess = gpw_bondspot_indices_xdp_v6_8.marker_pct_chg_index_val_prev_sess.dissect(buffer, index, packet, parent)

  -- Marker Pct Chg Index Val Prev Year: ASCII Str.
  index, marker_pct_chg_index_val_prev_year = gpw_bondspot_indices_xdp_v6_8.marker_pct_chg_index_val_prev_year.dissect(buffer, index, packet, parent)

  -- Marker Point Change: ASCII Str.
  index, marker_point_change = gpw_bondspot_indices_xdp_v6_8.marker_point_change.dissect(buffer, index, packet, parent)

  -- Marker Difference Central Spread: ASCII Str.
  index, marker_difference_central_spread = gpw_bondspot_indices_xdp_v6_8.marker_difference_central_spread.dissect(buffer, index, packet, parent)

  -- Dissemination Frequency Marker: ASCII Ch.
  index, dissemination_frequency_marker = gpw_bondspot_indices_xdp_v6_8.dissemination_frequency_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Real Time Index Message
gpw_bondspot_indices_xdp_v6_8.real_time_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.real_time_index_message, buffer(offset, 0))
    local index = gpw_bondspot_indices_xdp_v6_8.real_time_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_bondspot_indices_xdp_v6_8.real_time_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_bondspot_indices_xdp_v6_8.real_time_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
gpw_bondspot_indices_xdp_v6_8.payload = {}

-- Dissect: Payload
gpw_bondspot_indices_xdp_v6_8.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Real Time Index Message
  if message_type == 546 then
    return gpw_bondspot_indices_xdp_v6_8.real_time_index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Summary Message
  if message_type == 547 then
    return gpw_bondspot_indices_xdp_v6_8.index_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Portfolio Message
  if message_type == 548 then
    return gpw_bondspot_indices_xdp_v6_8.index_portfolio_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
gpw_bondspot_indices_xdp_v6_8.message_header = {}

-- Size: Message Header
gpw_bondspot_indices_xdp_v6_8.message_header.size =
  gpw_bondspot_indices_xdp_v6_8.message_size.size + 
  gpw_bondspot_indices_xdp_v6_8.message_type.size

-- Display: Message Header
gpw_bondspot_indices_xdp_v6_8.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
gpw_bondspot_indices_xdp_v6_8.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: Binary Int.
  index, message_size = gpw_bondspot_indices_xdp_v6_8.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: Binary Int.
  index, message_type = gpw_bondspot_indices_xdp_v6_8.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
gpw_bondspot_indices_xdp_v6_8.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.message_header, buffer(offset, 0))
    local index = gpw_bondspot_indices_xdp_v6_8.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_bondspot_indices_xdp_v6_8.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_bondspot_indices_xdp_v6_8.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
gpw_bondspot_indices_xdp_v6_8.message = {}

-- Display: Message
gpw_bondspot_indices_xdp_v6_8.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
gpw_bondspot_indices_xdp_v6_8.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = gpw_bondspot_indices_xdp_v6_8.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):uint()

  -- Payload: Runtime Type with 3 branches
  index = gpw_bondspot_indices_xdp_v6_8.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
gpw_bondspot_indices_xdp_v6_8.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.message, buffer(offset, 0))
    local current = gpw_bondspot_indices_xdp_v6_8.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = gpw_bondspot_indices_xdp_v6_8.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    gpw_bondspot_indices_xdp_v6_8.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
gpw_bondspot_indices_xdp_v6_8.packet_header = {}

-- Size: Packet Header
gpw_bondspot_indices_xdp_v6_8.packet_header.size =
  gpw_bondspot_indices_xdp_v6_8.packet_length.size + 
  gpw_bondspot_indices_xdp_v6_8.packet_type.size + 
  gpw_bondspot_indices_xdp_v6_8.packet_sequence_number.size + 
  gpw_bondspot_indices_xdp_v6_8.send_time.size + 
  gpw_bondspot_indices_xdp_v6_8.service_id.size + 
  gpw_bondspot_indices_xdp_v6_8.delivery_flag.size + 
  gpw_bondspot_indices_xdp_v6_8.number_msg_entries.size

-- Display: Packet Header
gpw_bondspot_indices_xdp_v6_8.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
gpw_bondspot_indices_xdp_v6_8.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: Binary Int.
  index, packet_length = gpw_bondspot_indices_xdp_v6_8.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: Binary Int.
  index, packet_type = gpw_bondspot_indices_xdp_v6_8.packet_type.dissect(buffer, index, packet, parent)

  -- Packet Sequence Number: Binary Int.
  index, packet_sequence_number = gpw_bondspot_indices_xdp_v6_8.packet_sequence_number.dissect(buffer, index, packet, parent)

  -- Send Time: Binary Int.
  index, send_time = gpw_bondspot_indices_xdp_v6_8.send_time.dissect(buffer, index, packet, parent)

  -- Service Id: Binary Int.
  index, service_id = gpw_bondspot_indices_xdp_v6_8.service_id.dissect(buffer, index, packet, parent)

  -- Delivery Flag: Binary Int.
  index, delivery_flag = gpw_bondspot_indices_xdp_v6_8.delivery_flag.dissect(buffer, index, packet, parent)

  -- Number Msg Entries: Binary Int.
  index, number_msg_entries = gpw_bondspot_indices_xdp_v6_8.number_msg_entries.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
gpw_bondspot_indices_xdp_v6_8.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_bondspot_indices_xdp_v6_8.fields.packet_header, buffer(offset, 0))
    local index = gpw_bondspot_indices_xdp_v6_8.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_bondspot_indices_xdp_v6_8.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_bondspot_indices_xdp_v6_8.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
gpw_bondspot_indices_xdp_v6_8.packet = {}

-- Verify required size of Udp packet
gpw_bondspot_indices_xdp_v6_8.packet.requiredsize = function(buffer)
  return buffer:len() >= gpw_bondspot_indices_xdp_v6_8.packet_header.size
end

-- Dissect Packet
gpw_bondspot_indices_xdp_v6_8.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 7 fields
  index, packet_header = gpw_bondspot_indices_xdp_v6_8.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Delivery Flag
  local delivery_flag = buffer(index - 2, 1):uint()

  local message_conversion = delivery_flag > 15

  if message_conversion then
    buffer = zlib_decompress(buffer(index, buffer:len() - index))
    index = 0
  end

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_size + 2

    -- Message: Struct of 2 fields
    index, message = gpw_bondspot_indices_xdp_v6_8.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_gpw_bondspot_indices_xdp_v6_8.init()
end

-- Dissector for Gpw BondSpot Indices Xdp 6.8
function omi_gpw_bondspot_indices_xdp_v6_8.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_gpw_bondspot_indices_xdp_v6_8.name

  -- Dissect protocol
  local protocol = parent:add(omi_gpw_bondspot_indices_xdp_v6_8, buffer(), omi_gpw_bondspot_indices_xdp_v6_8.description, "("..buffer:len().." Bytes)")
  return gpw_bondspot_indices_xdp_v6_8.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Gpw BondSpot Indices Xdp 6.8 (Udp)
local function omi_gpw_bondspot_indices_xdp_v6_8_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not gpw_bondspot_indices_xdp_v6_8.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_gpw_bondspot_indices_xdp_v6_8
  omi_gpw_bondspot_indices_xdp_v6_8.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Gpw BondSpot Indices Xdp 6.8
omi_gpw_bondspot_indices_xdp_v6_8:register_heuristic("udp", omi_gpw_bondspot_indices_xdp_v6_8_udp_heuristic)

-- Register Gpw BondSpot Indices Xdp 6.8 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_gpw_bondspot_indices_xdp_v6_8)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Giełda Papierów Wartościowych w Warszawie
--   Version: 6.8
--   Date: Tuesday, February 11, 2020
--   Specification: WSE_CDE_XDP_Message_Specifications_v_68.pdf
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
