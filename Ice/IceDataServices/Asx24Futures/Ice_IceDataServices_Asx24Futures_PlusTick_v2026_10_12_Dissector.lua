-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Ice IceDataServices Asx24Futures PlusTick 2026.10.12 Protocol
local omi_ice_icedataservices_asx24futures_plustick_v2026_10_12 = Proto("Omi.Ice.IceDataServices.Asx24Futures.PlusTick.v2026.10.12", "Ice IceDataServices Asx24Futures PlusTick 2026.10.12")

-- Protocol table
local ice_icedataservices_asx24futures_plustick_v2026_10_12 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Ice IceDataServices Asx24Futures PlusTick 2026.10.12 Fields
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.record_instrument = ProtoField.new("Instrument", "ice.icedataservices.asx24futures.plustick.v2026.10.12.record.instrument", ftypes.STRING, nil, nil)
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.record_trade = ProtoField.new("Trade", "ice.icedataservices.asx24futures.plustick.v2026.10.12.record.trade", ftypes.STRING, nil, nil)
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.record_quote = ProtoField.new("Quote", "ice.icedataservices.asx24futures.plustick.v2026.10.12.record.quote", ftypes.STRING, nil, nil)
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.record_status = ProtoField.new("Status", "ice.icedataservices.asx24futures.plustick.v2026.10.12.record.status", ftypes.STRING, nil, nil)
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.record_summary = ProtoField.new("Summary", "ice.icedataservices.asx24futures.plustick.v2026.10.12.record.summary", ftypes.STRING, nil, nil)
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.record_type = ProtoField.new("Record Type", "ice.icedataservices.asx24futures.plustick.v2026.10.12.recordtype", ftypes.STRING, nil, nil, nil, "The record a line carries")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.enumsrcid = ProtoField.new("ENUM.SRC.ID", "ice.icedataservices.asx24futures.plustick.v2026.10.12.enumsrcid", ftypes.INT64, nil, nil, nil, "Source ID for the source being reported.")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.symbolticker = ProtoField.new("SYMBOL.TICKER", "ice.icedataservices.asx24futures.plustick.v2026.10.12.symbolticker", ftypes.STRING, nil, nil, nil, "Wire Protocol symbol.")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.currencystring = ProtoField.new("CURRENCY.STRING", "ice.icedataservices.asx24futures.plustick.v2026.10.12.currencystring", ftypes.STRING, nil, nil, nil, "Currency as a String Value")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.isin = ProtoField.new("ISIN", "ice.icedataservices.asx24futures.plustick.v2026.10.12.isin", ftypes.STRING, nil, nil, nil, "ISIN code")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.displayprecision = ProtoField.new("DISPLAY.PRECISION", "ice.icedataservices.asx24futures.plustick.v2026.10.12.displayprecision", ftypes.INT64, nil, nil, nil, "Display decimal precision gives the place holder value that should be displayed.")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradeopen = ProtoField.new("TRADE.OPEN", "ice.icedataservices.asx24futures.plustick.v2026.10.12.tradeopen", ftypes.DOUBLE, nil, nil, nil, "Open price")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.open_int = ProtoField.new("OPEN_INT", "ice.icedataservices.asx24futures.plustick.v2026.10.12.open_int", ftypes.INT64, nil, nil, nil, "Open Interest")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.yesttradeclose = ProtoField.new("YEST.TRADE.CLOSE", "ice.icedataservices.asx24futures.plustick.v2026.10.12.yesttradeclose", ftypes.DOUBLE, nil, nil, nil, "Previous trading day’s close price")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.yesttradevol = ProtoField.new("YEST.TRADE.VOL", "ice.icedataservices.asx24futures.plustick.v2026.10.12.yesttradevol", ftypes.INT64, nil, nil, nil, "Previous trading day’s volume")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.settledate = ProtoField.new("SETTLE.DATE", "ice.icedataservices.asx24futures.plustick.v2026.10.12.settledate", ftypes.STRING, nil, nil, nil, "Epoch format with time value set to 00:00:00 (12PM GMT). Format YYYYMMDD 00:00:00")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.settleprice = ProtoField.new("SETTLE.PRICE", "ice.icedataservices.asx24futures.plustick.v2026.10.12.settleprice", ftypes.DOUBLE, nil, nil, nil, "Settlement Price")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.expirationdate = ProtoField.new("EXPIRATION.DATE", "ice.icedataservices.asx24futures.plustick.v2026.10.12.expirationdate", ftypes.STRING, nil, nil, nil, "Expiration Date")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.frontmonthcontract = ProtoField.new("FRONT.MONTH.CONTRACT", "ice.icedataservices.asx24futures.plustick.v2026.10.12.frontmonthcontract", ftypes.STRING, nil, nil, nil, "The FRONT.MONTH.CONTRACT field of the instrument layout, which no supplement documents")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.enuminstrtype = ProtoField.new("ENUM.INSTR.TYPE", "ice.icedataservices.asx24futures.plustick.v2026.10.12.enuminstrtype", ftypes.INT64, nil, nil, nil, "Enumerated instrument type. Used in conjunction with CTF field 'INSTR.TYPE'.")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.lotsize = ProtoField.new("LOT.SIZE", "ice.icedataservices.asx24futures.plustick.v2026.10.12.lotsize", ftypes.INT64, nil, nil, nil, "Lot size")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.contractsize = ProtoField.new("CONTRACT.SIZE", "ice.icedataservices.asx24futures.plustick.v2026.10.12.contractsize", ftypes.DOUBLE, nil, nil, nil, "Contract Size")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.variableticksize = ProtoField.new("VARIABLE.TICK.SIZE", "ice.icedataservices.asx24futures.plustick.v2026.10.12.variableticksize", ftypes.DOUBLE, nil, nil, nil, "Tick size of the instrument; on sources with variable tick sizes a space-delimited array of tick sizes and upper limits")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.productroot = ProtoField.new("PRODUCT.ROOT", "ice.icedataservices.asx24futures.plustick.v2026.10.12.productroot", ftypes.STRING, nil, nil, nil, "Chaining functionality to Consolidated Feed through the use of token CTF 3974 PRODUCT.ROOT for Strategy symbols Examples: Root Symbol: S:CGF\\P Contract symbols: S:CGFM18CGFU18 Contract symbols: S:CGFU18CGFZ18")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.symbolexchticker = ProtoField.new("SYMBOL.EXCH.TICKER", "ice.icedataservices.asx24futures.plustick.v2026.10.12.symbolexchticker", ftypes.STRING, nil, nil, nil, "Ticker symbol provided by the exchange.")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tasseq = ProtoField.new("TAS.SEQ", "ice.icedataservices.asx24futures.plustick.v2026.10.12.tasseq", ftypes.INT64, nil, nil, nil, "The event's sequence number within its instrument block: 1 on the first event after the H row, rising by one to the last")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.rnrendexchseq = ProtoField.new("RNR.END.EXCH.SEQ", "ice.icedataservices.asx24futures.plustick.v2026.10.12.rnrendexchseq", ftypes.INT64, nil, nil, nil, "Exchange-supplied sequence number ending the range the event covers")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.activitydatetime = ProtoField.new("ACTIVITY.DATETIME", "ice.icedataservices.asx24futures.plustick.v2026.10.12.activitydatetime", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Last activity time")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradeprice = ProtoField.new("TRADE.PRICE", "ice.icedataservices.asx24futures.plustick.v2026.10.12.tradeprice", ftypes.DOUBLE, nil, nil, nil, "Last trade price")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradesize = ProtoField.new("TRADE.SIZE", "ice.icedataservices.asx24futures.plustick.v2026.10.12.tradesize", ftypes.INT64, nil, nil, nil, "Incremental volume")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradecond_1 = ProtoField.new("TRADE.COND_1", "ice.icedataservices.asx24futures.plustick.v2026.10.12.tradecond_1", ftypes.INT64, nil, nil, nil, "Trade condition 1. See Enumerated Values")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.partcode = ProtoField.new("PART.CODE", "ice.icedataservices.asx24futures.plustick.v2026.10.12.partcode", ftypes.STRING, nil, nil, nil, "The PART.CODE field of the trade and quote layouts, which no supplement documents")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.vwap = ProtoField.new("VWAP", "ice.icedataservices.asx24futures.plustick.v2026.10.12.vwap", ftypes.DOUBLE, nil, nil, nil, "Volume Weighted Average Price")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradedatetime = ProtoField.new("TRADE.DATETIME", "ice.icedataservices.asx24futures.plustick.v2026.10.12.tradedatetime", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Last Trade Time (UNIXTimestamp.milliseconds)")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.exchmessagetimestamp = ProtoField.new("EXCH.MESSAGE.TIMESTAMP", "ice.icedataservices.asx24futures.plustick.v2026.10.12.exchmessagetimestamp", ftypes.STRING, nil, nil, nil, "Exchange sent timestamp in milliseconds HHMMSSmmm. Time zone is not specified.")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.exchmessagetimestamp_utc = ProtoField.new("EXCH.MESSAGE.TIMESTAMP", "ice.icedataservices.asx24futures.plustick.v2026.10.12.exchmessagetimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "EXCH.MESSAGE.TIMESTAMP on the day the protocol's Day preference names, in UTC")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradecond_2 = ProtoField.new("TRADE.COND_2", "ice.icedataservices.asx24futures.plustick.v2026.10.12.tradecond_2", ftypes.INT64, nil, nil, nil, "Trade condition 2")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradecond_3 = ProtoField.new("TRADE.COND_3", "ice.icedataservices.asx24futures.plustick.v2026.10.12.tradecond_3", ftypes.INT64, nil, nil, nil, "Trade condition 3")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradeofficialtime = ProtoField.new("TRADE.OFFICIAL.TIME", "ice.icedataservices.asx24futures.plustick.v2026.10.12.tradeofficialtime", ftypes.STRING, nil, nil, nil, "Exchange trade time")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradeofficialtime_utc = ProtoField.new("TRADE.OFFICIAL.TIME", "ice.icedataservices.asx24futures.plustick.v2026.10.12.tradeofficialtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "TRADE.OFFICIAL.TIME on the day the protocol's Day preference names, in UTC")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradecond_4 = ProtoField.new("TRADE.COND_4", "ice.icedataservices.asx24futures.plustick.v2026.10.12.tradecond_4", ftypes.STRING, nil, nil, nil, "The TRADE.COND_4 field of the trade layout, which no supplement documents")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradecond_5 = ProtoField.new("TRADE.COND_5", "ice.icedataservices.asx24futures.plustick.v2026.10.12.tradecond_5", ftypes.INT64, nil, nil, nil, "Trade condition 5")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.extendedtradecond = ProtoField.new("EXTENDED.TRADE.COND", "ice.icedataservices.asx24futures.plustick.v2026.10.12.extendedtradecond", ftypes.STRING, nil, nil, nil, "The EXTENDED.TRADE.COND field of the trade layout, which no supplement documents")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradeofficialdate = ProtoField.new("TRADE.OFFICIAL.DATE", "ice.icedataservices.asx24futures.plustick.v2026.10.12.tradeofficialdate", ftypes.STRING, nil, nil, nil, "Official exchange trade date")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.retransmissionflag = ProtoField.new("RETRANSMISSION.FLAG", "ice.icedataservices.asx24futures.plustick.v2026.10.12.retransmissionflag", ftypes.INT64, nil, nil, nil, "13543=0 indicates a retransmission of the data in the message")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.aggressorside = ProtoField.new("AGGRESSOR.SIDE", "ice.icedataservices.asx24futures.plustick.v2026.10.12.aggressorside", ftypes.INT64, nil, nil, nil, "Side of an incoming order that caused trade execution.")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradeuniqueid = ProtoField.new("TRADE.UNIQUE.ID", "ice.icedataservices.asx24futures.plustick.v2026.10.12.tradeuniqueid", ftypes.UINT64, nil, nil, nil, "Trade Identifier")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.combinationtradeid = ProtoField.new("COMBINATION.TRADE.ID", "ice.icedataservices.asx24futures.plustick.v2026.10.12.combinationtradeid", ftypes.UINT64, nil, nil, nil, "Combination Trade ID; a non-zero value indicates this trade is part of a combination execution; a zero value is not significant")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.buyercombinationtradeid = ProtoField.new("BUYER.COMBINATION.TRADE.ID", "ice.icedataservices.asx24futures.plustick.v2026.10.12.buyercombinationtradeid", ftypes.UINT64, nil, nil, nil, "A non-zero value indicates this trade is part of an execution cycle for a combination trade.")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.sellercombinationtradeid = ProtoField.new("SELLER.COMBINATION.TRADE.ID", "ice.icedataservices.asx24futures.plustick.v2026.10.12.sellercombinationtradeid", ftypes.UINT64, nil, nil, nil, "Non-zero value shows that this trade is part of an execution cycle for a combination trade")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.counterpartyidstring = ProtoField.new("COUNTER.PARTY.ID.STRING", "ice.icedataservices.asx24futures.plustick.v2026.10.12.counterpartyidstring", ftypes.STRING, nil, nil, nil, "Counter Party ID; if not provided, indicates an anonymous instrument. If provided, gives the participant ID of the aggressor party to the execution in a non-anonymous market")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.bidprice = ProtoField.new("BID.PRICE", "ice.icedataservices.asx24futures.plustick.v2026.10.12.bidprice", ftypes.DOUBLE, nil, nil, nil, "Best bid price")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.bidsize = ProtoField.new("BID.SIZE", "ice.icedataservices.asx24futures.plustick.v2026.10.12.bidsize", ftypes.INT64, nil, nil, nil, "Best bid size")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.askprice = ProtoField.new("ASK.PRICE", "ice.icedataservices.asx24futures.plustick.v2026.10.12.askprice", ftypes.DOUBLE, nil, nil, nil, "Best ask price")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.asksize = ProtoField.new("ASK.SIZE", "ice.icedataservices.asx24futures.plustick.v2026.10.12.asksize", ftypes.INT64, nil, nil, nil, "Best ask size")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.quotecond_1 = ProtoField.new("QUOTE.COND_1", "ice.icedataservices.asx24futures.plustick.v2026.10.12.quotecond_1", ftypes.INT64, nil, nil, nil, "Quote condition 1")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.quotedatetime = ProtoField.new("QUOTE.DATETIME", "ice.icedataservices.asx24futures.plustick.v2026.10.12.quotedatetime", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Quote time (UNIXTimestamp.milliseconds)")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.impliedbidsize = ProtoField.new("IMPLIED.BID.SIZE", "ice.icedataservices.asx24futures.plustick.v2026.10.12.impliedbidsize", ftypes.INT64, nil, nil, nil, "Implied Bid size I")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.impliedasksize = ProtoField.new("IMPLIED.ASK.SIZE", "ice.icedataservices.asx24futures.plustick.v2026.10.12.impliedasksize", ftypes.INT64, nil, nil, nil, "Implied Ask size")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.biddatetime = ProtoField.new("BID.DATETIME", "ice.icedataservices.asx24futures.plustick.v2026.10.12.biddatetime", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date time token triggered via timestamp process based on CTF 12 or 13")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.askdatetime = ProtoField.new("ASK.DATETIME", "ice.icedataservices.asx24futures.plustick.v2026.10.12.askdatetime", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date time token triggered via timestamp process based on CTF 10 or 11")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.instrstatus = ProtoField.new("INSTR.STATUS", "ice.icedataservices.asx24futures.plustick.v2026.10.12.instrstatus", ftypes.INT64, nil, nil, nil, "Instrument Status. See Enumerated Values")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradablestatus = ProtoField.new("TRADABLE.STATUS", "ice.icedataservices.asx24futures.plustick.v2026.10.12.tradablestatus", ftypes.INT64, nil, nil, nil, "Indicates if an instrument is tradable, halted, or suspended. See Enumerated Values")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.marketphase = ProtoField.new("MARKET.PHASE", "ice.icedataservices.asx24futures.plustick.v2026.10.12.marketphase", ftypes.INT64, nil, nil, nil, "Indicates the current trading phase of an instrument. See Enumerated Values")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.rowsummary = ProtoField.new("ROW.SUMMARY", "ice.icedataservices.asx24futures.plustick.v2026.10.12.rowsummary", ftypes.STRING, nil, nil, nil, "The block's row count by record type, a json object keyed by record type letter that leaves out the P row itself")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.property = ProtoField.new("Property", "ice.icedataservices.asx24futures.plustick.v2026.10.12.property", ftypes.STRING, nil, nil, nil, "A ##name=value line of a file's header: a value the file states before its data")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.property_name = ProtoField.new("Property Name", "ice.icedataservices.asx24futures.plustick.v2026.10.12.propertyname", ftypes.STRING, nil, nil, nil, "The name of a ##name=value header line")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.property_value = ProtoField.new("Property Value", "ice.icedataservices.asx24futures.plustick.v2026.10.12.propertyvalue", ftypes.STRING, nil, nil, nil, "The value of a ##name=value header line")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.layout = ProtoField.new("Layout", "ice.icedataservices.asx24futures.plustick.v2026.10.12.layout", ftypes.STRING, nil, nil, nil, "A layout line of a file's header: the record type it lays out, then the fields its lines hold, in order")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.layout_letter = ProtoField.new("Layout Letter", "ice.icedataservices.asx24futures.plustick.v2026.10.12.layoutletter", ftypes.STRING, nil, nil, nil, "The record type a layout line lays out")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.layout_column = ProtoField.new("Layout Column", "ice.icedataservices.asx24futures.plustick.v2026.10.12.layoutcolumn", ftypes.STRING, nil, nil, nil, "A column of a layout line: a data field's name as the layout prints it")
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.line_outside_layout = ProtoField.new("Line Outside Layout", "ice.icedataservices.asx24futures.plustick.v2026.10.12.lineoutsidelayout", ftypes.STRING, nil, nil, nil, "A line the layout does not read: no header row, and not the record")

-----------------------------------------------------------------------
-- Declare Dissection Experts
-----------------------------------------------------------------------

-- A line the layout does not read
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.experts.line_outside_layout = ProtoExpert.new("ice.icedataservices.asx24futures.plustick.v2026.10.12.lineoutsidelayout.expert", "Line Outside Layout", expert.group.MALFORMED, expert.severity.WARN)

-----------------------------------------------------------------------
-- Protocol Preferences
-----------------------------------------------------------------------

-- The day the file's times of day are on: each is placed on it in its zone, and a frame is timed by it, in UTC
omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.prefs.day = Pref.string("Day (yyyymmdd)", "", "The day the file's times of day are on, as yyyymmdd: the file states no date. With no day a frame's time is its time of day on 1970-01-01. A frame's time is set when the file is read, so reload the file after changing the day")

-----------------------------------------------------------------------
-- Protocol Primitives
-----------------------------------------------------------------------

-- The readings a field calls with its own traits, and the line being dissected
ice_icedataservices_asx24futures_plustick_v2026_10_12.lines = {}

-- A line split at a delimiter, from an offset: where each field starts, and its length
ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.split = function(offset, delimiter)
  local line = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current
  local starts = {}
  local lengths = {}
  local start = offset + 1
  while true do
    local at = string.find(line, delimiter, start, true)
    if at == nil then
      starts[#starts + 1] = start - 1
      lengths[#lengths + 1] = #line - start + 1
      return starts, lengths
    end
    starts[#starts + 1] = start - 1
    lengths[#lengths + 1] = at - start
    start = at + #delimiter
  end
end
-- A field's length from an offset to a delimiter, and the offset after it; to the line's end where
-- none follows, the offset then past the line
ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan = function(offset, delimiter)
  local line = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current
  local at = string.find(line, delimiter, offset + 1, true)
  if at == nil then
    return #line - offset, #line + 1
  end
  return at - 1 - offset, at - 1 + #delimiter
end
-- A decimal's text that states no places: its text, exactly, where it reads as a decimal (an optional
-- minus sign, digits and a point); nil and why where it does not
ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.decimal = function(text)
  if string.find(text, "^%-?%d*%.?%d*$") == nil or string.find(text, "%d") == nil then
    return nil, "is not a decimal"
  end
  return text
end
-- A Unix timestamp's text, a count of its unit with up to a count of digits of a fraction of it after a
-- point (seconds to the nanosecond: 9): its seconds and nanoseconds since 1970-01-01 UTC, exactly, the
-- count read as digits so no double rounds it; nil and why where it is not one
ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.unix = function(text, digits)
  local whole, fraction = string.match(text, "^(%d+)%.?(%d*)$")
  if whole == nil then
    return nil, "is not a timestamp"
  end
  fraction = string.match(fraction, "^(.-)0*$")
  if #fraction > digits then
    return nil, "has " .. #fraction .. " digits of a fraction, its unit " .. digits
  end
  -- nanoseconds since the epoch, as digits: the whole count of the unit, then its fraction to the nanosecond
  local count = whole .. fraction .. string.rep("0", digits - #fraction)
  count = string.rep("0", 10 - #count) .. count
  if #count > 19 then
    return nil, "overflows a timestamp"
  end
  return tonumber(string.sub(count, 1, #count - 9)), tonumber(string.sub(count, #count - 8))
end
-- An unsigned integer's text, exactly, as a UInt64: a Lua number holds 15 digits exactly, and more are
-- held in two parts; nil and why where it is not one
ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.unsigned = function(text)
  if string.find(text, "^%d+$") == nil then
    return nil, "is not an unsigned integer"
  end
  local digits = string.match(text, "^0*(%d.*)$")
  if #digits <= 15 then
    return UInt64(tonumber(digits))
  end
  if #digits > 20 or (#digits == 20 and digits > "18446744073709551615") then
    return nil, "overflows its field"
  end
  return UInt64(tonumber(string.sub(digits, 1, #digits - 9))) * 1000000000 + tonumber(string.sub(digits, #digits - 8))
end
-- A signed integer's text, exactly, as an Int64: a minus sign first where it is negative; nil and why
-- where it is not one
ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed = function(text)
  local sign, digits = string.match(text, "^(%-?)(%d+)$")
  if sign == nil then
    return nil, "is not an integer"
  end
  digits = string.match(digits, "^0*(%d.*)$")
  if #digits > 19 or (#digits == 19 and digits > "9223372036854775807") then
    return nil, "overflows its field"
  end
  local value = nil
  if #digits <= 15 then
    value = Int64(tonumber(digits))
  else
    value = Int64(tonumber(string.sub(digits, 1, #digits - 9))) * 1000000000 + tonumber(string.sub(digits, #digits - 8))
  end
  if sign == "-" then
    return -value
  end
  return value
end
-- Days since 1970-01-01 of a calendar date, or nil for text naming no day: eight digits,
-- or yyyy-mm-dd where the column states its dashes
ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.days = function(text, dashed)
  local year, month, day
  if dashed then
    if #text ~= 10 or string.find(text, "^%d%d%d%d%-%d%d%-%d%d$") == nil then
      return nil
    end
    year = tonumber(string.sub(text, 1, 4))
    month = tonumber(string.sub(text, 6, 7))
    day = tonumber(string.sub(text, 9, 10))
  else
    if #text ~= 8 or string.find(text, "^%d+$") == nil then
      return nil
    end
    year = tonumber(string.sub(text, 1, 4))
    month = tonumber(string.sub(text, 5, 6))
    day = tonumber(string.sub(text, 7, 8))
  end
  local lengths = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 }
  if month < 1 or month > 12 or day < 1 then
    return nil
  end
  local length = lengths[month]
  if month == 2 and ((year % 4 == 0 and year % 100 ~= 0) or year % 400 == 0) then
    length = 29
  end
  if day > length then
    return nil
  end
  -- days from the civil calendar, counted in 400 year eras from a year starting in March
  local shifted = year
  if month <= 2 then
    shifted = year - 1
  end
  local era = math.floor(shifted / 400)
  local years = shifted - era * 400
  local days = math.floor((153 * ((month + 9) % 12) + 2) / 5) + day - 1
  local count = years * 365 + math.floor(years / 4) - math.floor(years / 100) + days
  return era * 146097 + count - 719468
end
-- A time of day, HHMMSS then a fraction of a second of a count of digits, its leading zeros dropped:
-- its seconds and nanoseconds since midnight and its text as HH:MM:SS.fraction, or nil for text that is none
ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.time = function(text, fraction)
  if #text == 0 or #text > 6 + fraction or string.find(text, "^%d+$") == nil then
    return nil
  end
  local padded = string.rep("0", 6 + fraction - #text) .. text
  local hours = tonumber(string.sub(padded, 1, 2))
  local minutes = tonumber(string.sub(padded, 3, 4))
  local seconds = tonumber(string.sub(padded, 5, 6))
  if hours > 23 or minutes > 59 or seconds > 59 then
    return nil
  end
  local part = string.sub(padded, 7)
  local nanoseconds = tonumber(part .. string.rep("0", 9 - fraction))
  local display = string.sub(padded, 1, 2) .. ":" .. string.sub(padded, 3, 4) .. ":" .. string.sub(padded, 5, 6) .. "." .. part
  return (hours * 60 + minutes) * 60 + seconds, nanoseconds, display
end
-- A zone's clock around a day: the offset in force before it and, where the zone changes offset near
-- the day, the change (UTC seconds) and the offset after it; no zone changes twice in days
ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.reading = function(zone, days)
  local reading = { before = zone.first }
  local from = (days - 2) * 86400
  local to = (days + 3) * 86400
  for index, change in ipairs(zone.changes) do
    if change[1] <= from then
      reading.before = change[2]
    elseif change[1] < to and reading.change == nil then
      reading.change = change[1]
      reading.after = change[2]
    end
  end
  return reading
end

-- The UTC seconds of a wall clock reading (seconds since 1970-01-01 on the zone's clock)
ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.utc = function(reading, wall)
  if reading.change == nil then
    return wall - reading.before
  end
  if wall - reading.before < reading.change or wall - reading.after < reading.change then
    return wall - reading.before
  end
  return wall - reading.after
end

-- The day the preference names, and each zone's clock around it: read when first placed on, and
-- again when the preference changes, as reading a preference costs more than placing a time
ice_icedataservices_asx24futures_plustick_v2026_10_12.day = { readings = {} }

ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.today = function()
  local text = omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.prefs.day
  ice_icedataservices_asx24futures_plustick_v2026_10_12.day = { text = text, days = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.days(text), readings = {} }
end

omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.prefs_changed = function()
  ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.today()
end

-- The UTC seconds of a time of day on the preference's day, in a zone; nil with no day, or a day
-- outside the years the zone's changes are written for
ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.placed = function(zone, seconds)
  if ice_icedataservices_asx24futures_plustick_v2026_10_12.day.text == nil then
    ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.today()
  end
  local day = ice_icedataservices_asx24futures_plustick_v2026_10_12.day
  if day.days == nil then
    return nil
  end
  local midnight = day.days * 86400
  if midnight < zone.from or midnight >= zone.to then
    return nil
  end
  local reading = day.readings[zone]
  if reading == nil then
    reading = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.reading(zone, day.days)
    day.readings[zone] = reading
  end
  return ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.utc(reading, midnight + seconds)
end

-----------------------------------------------------------------------
-- Protocol Zones
-----------------------------------------------------------------------

-- The zones times of day are placed in: seconds east of UTC from 1990, then each change (its UTC second, the offset after it), to 2100
ice_icedataservices_asx24futures_plustick_v2026_10_12.zones = {}

-- Australia/Sydney
ice_icedataservices_asx24futures_plustick_v2026_10_12.zones["Australia/Sydney"] = {
  from = 631152000,
  to = 4102444800,
  first = 39600,
  changes = {
    { 638294400, 36000 },
    { 657043200, 39600 },
    { 670348800, 36000 },
    { 688492800, 39600 },
    { 701798400, 36000 },
    { 719942400, 39600 },
    { 733248000, 36000 },
    { 751996800, 39600 },
    { 764697600, 36000 },
    { 783446400, 39600 },
    { 796147200, 36000 },
    { 814896000, 39600 },
    { 828201600, 36000 },
    { 846345600, 39600 },
    { 859651200, 36000 },
    { 877795200, 39600 },
    { 891100800, 36000 },
    { 909244800, 39600 },
    { 922550400, 36000 },
    { 941299200, 39600 },
    { 954000000, 36000 },
    { 972748800, 39600 },
    { 985449600, 36000 },
    { 1004198400, 39600 },
    { 1017504000, 36000 },
    { 1035648000, 39600 },
    { 1048953600, 36000 },
    { 1067097600, 39600 },
    { 1080403200, 36000 },
    { 1099152000, 39600 },
    { 1111852800, 36000 },
    { 1130601600, 39600 },
    { 1143302400, 36000 },
    { 1162051200, 39600 },
    { 1174752000, 36000 },
    { 1193500800, 39600 },
    { 1207411200, 36000 },
    { 1223136000, 39600 },
    { 1238860800, 36000 },
    { 1254585600, 39600 },
    { 1270310400, 36000 },
    { 1286035200, 39600 },
    { 1301760000, 36000 },
    { 1317484800, 39600 },
    { 1333209600, 36000 },
    { 1349539200, 39600 },
    { 1365264000, 36000 },
    { 1380988800, 39600 },
    { 1396713600, 36000 },
    { 1412438400, 39600 },
    { 1428163200, 36000 },
    { 1443888000, 39600 },
    { 1459612800, 36000 },
    { 1475337600, 39600 },
    { 1491062400, 36000 },
    { 1506787200, 39600 },
    { 1522512000, 36000 },
    { 1538841600, 39600 },
    { 1554566400, 36000 },
    { 1570291200, 39600 },
    { 1586016000, 36000 },
    { 1601740800, 39600 },
    { 1617465600, 36000 },
    { 1633190400, 39600 },
    { 1648915200, 36000 },
    { 1664640000, 39600 },
    { 1680364800, 36000 },
    { 1696089600, 39600 },
    { 1712419200, 36000 },
    { 1728144000, 39600 },
    { 1743868800, 36000 },
    { 1759593600, 39600 },
    { 1775318400, 36000 },
    { 1791043200, 39600 },
    { 1806768000, 36000 },
    { 1822492800, 39600 },
    { 1838217600, 36000 },
    { 1853942400, 39600 },
    { 1869667200, 36000 },
    { 1885996800, 39600 },
    { 1901721600, 36000 },
    { 1917446400, 39600 },
    { 1933171200, 36000 },
    { 1948896000, 39600 },
    { 1964620800, 36000 },
    { 1980345600, 39600 },
    { 1996070400, 36000 },
    { 2011795200, 39600 },
    { 2027520000, 36000 },
    { 2043244800, 39600 },
    { 2058969600, 36000 },
    { 2075299200, 39600 },
    { 2091024000, 36000 },
    { 2106748800, 39600 },
    { 2122473600, 36000 },
    { 2138198400, 39600 },
    { 2153923200, 36000 },
    { 2169648000, 39600 },
    { 2185372800, 36000 },
    { 2201097600, 39600 },
    { 2216822400, 36000 },
    { 2233152000, 39600 },
    { 2248876800, 36000 },
    { 2264601600, 39600 },
    { 2280326400, 36000 },
    { 2296051200, 39600 },
    { 2311776000, 36000 },
    { 2327500800, 39600 },
    { 2343225600, 36000 },
    { 2358950400, 39600 },
    { 2374675200, 36000 },
    { 2390400000, 39600 },
    { 2406124800, 36000 },
    { 2422454400, 39600 },
    { 2438179200, 36000 },
    { 2453904000, 39600 },
    { 2469628800, 36000 },
    { 2485353600, 39600 },
    { 2501078400, 36000 },
    { 2516803200, 39600 },
    { 2532528000, 36000 },
    { 2548252800, 39600 },
    { 2563977600, 36000 },
    { 2579702400, 39600 },
    { 2596032000, 36000 },
    { 2611756800, 39600 },
    { 2627481600, 36000 },
    { 2643206400, 39600 },
    { 2658931200, 36000 },
    { 2674656000, 39600 },
    { 2690380800, 36000 },
    { 2706105600, 39600 },
    { 2721830400, 36000 },
    { 2737555200, 39600 },
    { 2753280000, 36000 },
    { 2769609600, 39600 },
    { 2785334400, 36000 },
    { 2801059200, 39600 },
    { 2816784000, 36000 },
    { 2832508800, 39600 },
    { 2848233600, 36000 },
    { 2863958400, 39600 },
    { 2879683200, 36000 },
    { 2895408000, 39600 },
    { 2911132800, 36000 },
    { 2926857600, 39600 },
    { 2942582400, 36000 },
    { 2958912000, 39600 },
    { 2974636800, 36000 },
    { 2990361600, 39600 },
    { 3006086400, 36000 },
    { 3021811200, 39600 },
    { 3037536000, 36000 },
    { 3053260800, 39600 },
    { 3068985600, 36000 },
    { 3084710400, 39600 },
    { 3100435200, 36000 },
    { 3116764800, 39600 },
    { 3132489600, 36000 },
    { 3148214400, 39600 },
    { 3163939200, 36000 },
    { 3179664000, 39600 },
    { 3195388800, 36000 },
    { 3211113600, 39600 },
    { 3226838400, 36000 },
    { 3242563200, 39600 },
    { 3258288000, 36000 },
    { 3274012800, 39600 },
    { 3289737600, 36000 },
    { 3306067200, 39600 },
    { 3321792000, 36000 },
    { 3337516800, 39600 },
    { 3353241600, 36000 },
    { 3368966400, 39600 },
    { 3384691200, 36000 },
    { 3400416000, 39600 },
    { 3416140800, 36000 },
    { 3431865600, 39600 },
    { 3447590400, 36000 },
    { 3463315200, 39600 },
    { 3479644800, 36000 },
    { 3495369600, 39600 },
    { 3511094400, 36000 },
    { 3526819200, 39600 },
    { 3542544000, 36000 },
    { 3558268800, 39600 },
    { 3573993600, 36000 },
    { 3589718400, 39600 },
    { 3605443200, 36000 },
    { 3621168000, 39600 },
    { 3636892800, 36000 },
    { 3653222400, 39600 },
    { 3668947200, 36000 },
    { 3684672000, 39600 },
    { 3700396800, 36000 },
    { 3716121600, 39600 },
    { 3731846400, 36000 },
    { 3747571200, 39600 },
    { 3763296000, 36000 },
    { 3779020800, 39600 },
    { 3794745600, 36000 },
    { 3810470400, 39600 },
    { 3826195200, 36000 },
    { 3842524800, 39600 },
    { 3858249600, 36000 },
    { 3873974400, 39600 },
    { 3889699200, 36000 },
    { 3905424000, 39600 },
    { 3921148800, 36000 },
    { 3936873600, 39600 },
    { 3952598400, 36000 },
    { 3968323200, 39600 },
    { 3984048000, 36000 },
    { 4000377600, 39600 },
    { 4016102400, 36000 },
    { 4031827200, 39600 },
    { 4047552000, 36000 },
    { 4063276800, 39600 },
    { 4079001600, 36000 },
    { 4094726400, 39600 },
  },
}

-----------------------------------------------------------------------
-- Protocol Fields
-----------------------------------------------------------------------

-- Record Type
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_type = {}

-- Record Type ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_type.delimiter = "|"
-- Record Type is text in Ascii
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_type.encoding = ENC_ASCII

-- Display: Record Type
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_type.labels = {
  ["H"] = "Record Type: Instrument (H)",
  ["T"] = "Record Type: Trade (T)",
  ["Q"] = "Record Type: Quote (Q)",
  ["S"] = "Record Type: Status (S)",
  ["P"] = "Record Type: Summary (P)",
}

ice_icedataservices_asx24futures_plustick_v2026_10_12.record_type.display = function(value)
  return ice_icedataservices_asx24futures_plustick_v2026_10_12.record_type.labels[value] or "Record Type: Unknown("..value..")"
end

-- Dissect: Record Type
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_type.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before Record Type"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.record_type.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.record_type, buffer(offset, length), text, ice_icedataservices_asx24futures_plustick_v2026_10_12.record_type.display(text))
  end
  return index
end

-- ENUM.SRC.ID
ice_icedataservices_asx24futures_plustick_v2026_10_12.enumsrcid = {}

-- ENUM.SRC.ID ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.enumsrcid.delimiter = "|"
-- ENUM.SRC.ID is a signed integer

-- Display: ENUM.SRC.ID
ice_icedataservices_asx24futures_plustick_v2026_10_12.enumsrcid.display = function(value)
  return "ENUM.SRC.ID: "..value
end

-- Dissect: ENUM.SRC.ID
ice_icedataservices_asx24futures_plustick_v2026_10_12.enumsrcid.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before ENUM.SRC.ID"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.enumsrcid.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed(text)
  if value == nil then
    return nil, "ENUM.SRC.ID \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.enumsrcid, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.enumsrcid.display(tostring(value)))
  end
  return index
end

-- SYMBOL.TICKER
ice_icedataservices_asx24futures_plustick_v2026_10_12.symbolticker = {}

-- SYMBOL.TICKER ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.symbolticker.delimiter = "|"
-- SYMBOL.TICKER is text in Ascii
ice_icedataservices_asx24futures_plustick_v2026_10_12.symbolticker.encoding = ENC_ASCII

-- Display: SYMBOL.TICKER
ice_icedataservices_asx24futures_plustick_v2026_10_12.symbolticker.display = function(value)
  return "SYMBOL.TICKER: "..value
end

-- Dissect: SYMBOL.TICKER
ice_icedataservices_asx24futures_plustick_v2026_10_12.symbolticker.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before SYMBOL.TICKER"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.symbolticker.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.symbolticker, buffer(offset, length), text, ice_icedataservices_asx24futures_plustick_v2026_10_12.symbolticker.display(text))
  end
  return index
end

-- CURRENCY.STRING
ice_icedataservices_asx24futures_plustick_v2026_10_12.currencystring = {}

-- CURRENCY.STRING ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.currencystring.delimiter = "|"
-- CURRENCY.STRING is text in Ascii
ice_icedataservices_asx24futures_plustick_v2026_10_12.currencystring.encoding = ENC_ASCII

-- Display: CURRENCY.STRING
ice_icedataservices_asx24futures_plustick_v2026_10_12.currencystring.display = function(value)
  return "CURRENCY.STRING: "..value
end

-- Dissect: CURRENCY.STRING
ice_icedataservices_asx24futures_plustick_v2026_10_12.currencystring.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before CURRENCY.STRING"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.currencystring.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.currencystring, buffer(offset, length), text, ice_icedataservices_asx24futures_plustick_v2026_10_12.currencystring.display(text))
  end
  return index
end

-- ISIN
ice_icedataservices_asx24futures_plustick_v2026_10_12.isin = {}

-- ISIN ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.isin.delimiter = "|"
-- ISIN is text in Ascii
ice_icedataservices_asx24futures_plustick_v2026_10_12.isin.encoding = ENC_ASCII

-- Display: ISIN
ice_icedataservices_asx24futures_plustick_v2026_10_12.isin.display = function(value)
  return "ISIN: "..value
end

-- Dissect: ISIN
ice_icedataservices_asx24futures_plustick_v2026_10_12.isin.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before ISIN"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.isin.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.isin, buffer(offset, length), text, ice_icedataservices_asx24futures_plustick_v2026_10_12.isin.display(text))
  end
  return index
end

-- DISPLAY.PRECISION
ice_icedataservices_asx24futures_plustick_v2026_10_12.displayprecision = {}

-- DISPLAY.PRECISION ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.displayprecision.delimiter = "|"
-- DISPLAY.PRECISION is a signed integer

-- Display: DISPLAY.PRECISION
ice_icedataservices_asx24futures_plustick_v2026_10_12.displayprecision.display = function(value)
  return "DISPLAY.PRECISION: "..value
end

-- Dissect: DISPLAY.PRECISION
ice_icedataservices_asx24futures_plustick_v2026_10_12.displayprecision.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before DISPLAY.PRECISION"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.displayprecision.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed(text)
  if value == nil then
    return nil, "DISPLAY.PRECISION \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.displayprecision, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.displayprecision.display(tostring(value)))
  end
  return index
end

-- TRADE.OPEN
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeopen = {}

-- TRADE.OPEN ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeopen.delimiter = "|"
-- TRADE.OPEN is a decimal that states no Scale: shown as its text, its places the line's

-- Display: TRADE.OPEN
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeopen.display = function(value)
  return "TRADE.OPEN: "..value
end

-- Dissect: TRADE.OPEN
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeopen.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before TRADE.OPEN"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeopen.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  -- its text, exactly: it states no places to read it to
  local exact, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.decimal(text)
  if exact == nil then
    return nil, "TRADE.OPEN \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradeopen, buffer(offset, length), tonumber(text), ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeopen.display(exact))
  end
  return index
end

-- OPEN_INT
ice_icedataservices_asx24futures_plustick_v2026_10_12.open_int = {}

-- OPEN_INT ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.open_int.delimiter = "|"
-- OPEN_INT is a signed integer

-- Display: OPEN_INT
ice_icedataservices_asx24futures_plustick_v2026_10_12.open_int.display = function(value)
  return "OPEN_INT: "..value
end

-- Dissect: OPEN_INT
ice_icedataservices_asx24futures_plustick_v2026_10_12.open_int.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before OPEN_INT"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.open_int.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed(text)
  if value == nil then
    return nil, "OPEN_INT \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.open_int, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.open_int.display(tostring(value)))
  end
  return index
end

-- YEST.TRADE.CLOSE
ice_icedataservices_asx24futures_plustick_v2026_10_12.yesttradeclose = {}

-- YEST.TRADE.CLOSE ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.yesttradeclose.delimiter = "|"
-- YEST.TRADE.CLOSE is a decimal that states no Scale: shown as its text, its places the line's

-- Display: YEST.TRADE.CLOSE
ice_icedataservices_asx24futures_plustick_v2026_10_12.yesttradeclose.display = function(value)
  return "YEST.TRADE.CLOSE: "..value
end

-- Dissect: YEST.TRADE.CLOSE
ice_icedataservices_asx24futures_plustick_v2026_10_12.yesttradeclose.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before YEST.TRADE.CLOSE"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.yesttradeclose.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  -- its text, exactly: it states no places to read it to
  local exact, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.decimal(text)
  if exact == nil then
    return nil, "YEST.TRADE.CLOSE \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.yesttradeclose, buffer(offset, length), tonumber(text), ice_icedataservices_asx24futures_plustick_v2026_10_12.yesttradeclose.display(exact))
  end
  return index
end

-- YEST.TRADE.VOL
ice_icedataservices_asx24futures_plustick_v2026_10_12.yesttradevol = {}

-- YEST.TRADE.VOL ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.yesttradevol.delimiter = "|"
-- YEST.TRADE.VOL is a signed integer

-- Display: YEST.TRADE.VOL
ice_icedataservices_asx24futures_plustick_v2026_10_12.yesttradevol.display = function(value)
  return "YEST.TRADE.VOL: "..value
end

-- Dissect: YEST.TRADE.VOL
ice_icedataservices_asx24futures_plustick_v2026_10_12.yesttradevol.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before YEST.TRADE.VOL"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.yesttradevol.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed(text)
  if value == nil then
    return nil, "YEST.TRADE.VOL \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.yesttradevol, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.yesttradevol.display(tostring(value)))
  end
  return index
end

-- SETTLE.DATE
ice_icedataservices_asx24futures_plustick_v2026_10_12.settledate = {}

-- SETTLE.DATE ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.settledate.delimiter = "|"
-- SETTLE.DATE is a date: Unit Seconds, Epoch Unix, in UTC, 9 digits of a fraction of its unit; shown as the UTC calendar date it falls on
ice_icedataservices_asx24futures_plustick_v2026_10_12.settledate.digits = 9

-- Display: SETTLE.DATE
ice_icedataservices_asx24futures_plustick_v2026_10_12.settledate.display = function(value)
  return "SETTLE.DATE: "..value
end

-- Dissect: SETTLE.DATE
ice_icedataservices_asx24futures_plustick_v2026_10_12.settledate.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before SETTLE.DATE"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.settledate.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local seconds, nanoseconds = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.unix(text, ice_icedataservices_asx24futures_plustick_v2026_10_12.settledate.digits)
  if seconds == nil then
    return nil, "SETTLE.DATE \"" .. text .. "\" " .. nanoseconds
  end
  if parent ~= nil then
    -- the UTC calendar date the count falls on
    local value = os.date("!%Y-%m-%d", seconds)
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.settledate, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.settledate.display(value))
  end
  return index
end

-- SETTLE.PRICE
ice_icedataservices_asx24futures_plustick_v2026_10_12.settleprice = {}

-- SETTLE.PRICE ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.settleprice.delimiter = "|"
-- SETTLE.PRICE is a decimal that states no Scale: shown as its text, its places the line's

-- Display: SETTLE.PRICE
ice_icedataservices_asx24futures_plustick_v2026_10_12.settleprice.display = function(value)
  return "SETTLE.PRICE: "..value
end

-- Dissect: SETTLE.PRICE
ice_icedataservices_asx24futures_plustick_v2026_10_12.settleprice.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before SETTLE.PRICE"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.settleprice.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  -- its text, exactly: it states no places to read it to
  local exact, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.decimal(text)
  if exact == nil then
    return nil, "SETTLE.PRICE \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.settleprice, buffer(offset, length), tonumber(text), ice_icedataservices_asx24futures_plustick_v2026_10_12.settleprice.display(exact))
  end
  return index
end

-- EXPIRATION.DATE
ice_icedataservices_asx24futures_plustick_v2026_10_12.expirationdate = {}

-- EXPIRATION.DATE ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.expirationdate.delimiter = "|"
-- EXPIRATION.DATE is a date, yyyymmdd

-- Display: EXPIRATION.DATE
ice_icedataservices_asx24futures_plustick_v2026_10_12.expirationdate.display = function(value)
  return "EXPIRATION.DATE: "..value
end

-- Dissect: EXPIRATION.DATE
ice_icedataservices_asx24futures_plustick_v2026_10_12.expirationdate.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before EXPIRATION.DATE"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.expirationdate.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  if ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.days(text) == nil then
    return nil, "EXPIRATION.DATE \"" .. text .. "\" is not a yyyymmdd date"
  end
  if parent ~= nil then
    local value = string.sub(text, 1, 4) .. "-" .. string.sub(text, 5, 6) .. "-" .. string.sub(text, 7, 8)
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.expirationdate, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.expirationdate.display(value))
  end
  return index
end

-- FRONT.MONTH.CONTRACT
ice_icedataservices_asx24futures_plustick_v2026_10_12.frontmonthcontract = {}

-- FRONT.MONTH.CONTRACT ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.frontmonthcontract.delimiter = "|"
-- FRONT.MONTH.CONTRACT is text in Ascii
ice_icedataservices_asx24futures_plustick_v2026_10_12.frontmonthcontract.encoding = ENC_ASCII

-- Display: FRONT.MONTH.CONTRACT
ice_icedataservices_asx24futures_plustick_v2026_10_12.frontmonthcontract.display = function(value)
  return "FRONT.MONTH.CONTRACT: "..value
end

-- Dissect: FRONT.MONTH.CONTRACT
ice_icedataservices_asx24futures_plustick_v2026_10_12.frontmonthcontract.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before FRONT.MONTH.CONTRACT"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.frontmonthcontract.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.frontmonthcontract, buffer(offset, length), text, ice_icedataservices_asx24futures_plustick_v2026_10_12.frontmonthcontract.display(text))
  end
  return index
end

-- ENUM.INSTR.TYPE
ice_icedataservices_asx24futures_plustick_v2026_10_12.enuminstrtype = {}

-- ENUM.INSTR.TYPE ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.enuminstrtype.delimiter = "|"
-- ENUM.INSTR.TYPE is a signed integer

-- Display: ENUM.INSTR.TYPE
ice_icedataservices_asx24futures_plustick_v2026_10_12.enuminstrtype.labels = {
  ["3072"] = "ENUM.INSTR.TYPE: FUTURE_OPTION (3072)",
  ["6100"] = "ENUM.INSTR.TYPE: STRATEGY (6100)",
}

ice_icedataservices_asx24futures_plustick_v2026_10_12.enuminstrtype.display = function(value)
  return ice_icedataservices_asx24futures_plustick_v2026_10_12.enuminstrtype.labels[value] or "ENUM.INSTR.TYPE: Unknown("..value..")"
end

-- Dissect: ENUM.INSTR.TYPE
ice_icedataservices_asx24futures_plustick_v2026_10_12.enuminstrtype.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before ENUM.INSTR.TYPE"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.enuminstrtype.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed(text)
  if value == nil then
    return nil, "ENUM.INSTR.TYPE \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.enuminstrtype, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.enuminstrtype.display(text))
  end
  return index
end

-- LOT.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.lotsize = {}

-- LOT.SIZE ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.lotsize.delimiter = "|"
-- LOT.SIZE is a signed integer

-- Display: LOT.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.lotsize.display = function(value)
  return "LOT.SIZE: "..value
end

-- Dissect: LOT.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.lotsize.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before LOT.SIZE"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.lotsize.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed(text)
  if value == nil then
    return nil, "LOT.SIZE \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.lotsize, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.lotsize.display(tostring(value)))
  end
  return index
end

-- CONTRACT.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.contractsize = {}

-- CONTRACT.SIZE ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.contractsize.delimiter = "|"
-- CONTRACT.SIZE is a decimal that states no Scale: shown as its text, its places the line's

-- Display: CONTRACT.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.contractsize.display = function(value)
  return "CONTRACT.SIZE: "..value
end

-- Dissect: CONTRACT.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.contractsize.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before CONTRACT.SIZE"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.contractsize.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  -- its text, exactly: it states no places to read it to
  local exact, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.decimal(text)
  if exact == nil then
    return nil, "CONTRACT.SIZE \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.contractsize, buffer(offset, length), tonumber(text), ice_icedataservices_asx24futures_plustick_v2026_10_12.contractsize.display(exact))
  end
  return index
end

-- VARIABLE.TICK.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.variableticksize = {}

-- VARIABLE.TICK.SIZE ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.variableticksize.delimiter = "|"
-- VARIABLE.TICK.SIZE is a decimal that states no Scale: shown as its text, its places the line's

-- Display: VARIABLE.TICK.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.variableticksize.display = function(value)
  return "VARIABLE.TICK.SIZE: "..value
end

-- Dissect: VARIABLE.TICK.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.variableticksize.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before VARIABLE.TICK.SIZE"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.variableticksize.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  -- its text, exactly: it states no places to read it to
  local exact, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.decimal(text)
  if exact == nil then
    return nil, "VARIABLE.TICK.SIZE \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.variableticksize, buffer(offset, length), tonumber(text), ice_icedataservices_asx24futures_plustick_v2026_10_12.variableticksize.display(exact))
  end
  return index
end

-- PRODUCT.ROOT
ice_icedataservices_asx24futures_plustick_v2026_10_12.productroot = {}

-- PRODUCT.ROOT ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.productroot.delimiter = "|"
-- PRODUCT.ROOT is text in Ascii
ice_icedataservices_asx24futures_plustick_v2026_10_12.productroot.encoding = ENC_ASCII

-- Display: PRODUCT.ROOT
ice_icedataservices_asx24futures_plustick_v2026_10_12.productroot.display = function(value)
  return "PRODUCT.ROOT: "..value
end

-- Dissect: PRODUCT.ROOT
ice_icedataservices_asx24futures_plustick_v2026_10_12.productroot.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before PRODUCT.ROOT"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.productroot.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.productroot, buffer(offset, length), text, ice_icedataservices_asx24futures_plustick_v2026_10_12.productroot.display(text))
  end
  return index
end

-- SYMBOL.EXCH.TICKER
ice_icedataservices_asx24futures_plustick_v2026_10_12.symbolexchticker = {}

-- SYMBOL.EXCH.TICKER ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.symbolexchticker.delimiter = "|"
-- SYMBOL.EXCH.TICKER is text in Ascii
ice_icedataservices_asx24futures_plustick_v2026_10_12.symbolexchticker.encoding = ENC_ASCII

-- Display: SYMBOL.EXCH.TICKER
ice_icedataservices_asx24futures_plustick_v2026_10_12.symbolexchticker.display = function(value)
  return "SYMBOL.EXCH.TICKER: "..value
end

-- Dissect: SYMBOL.EXCH.TICKER
ice_icedataservices_asx24futures_plustick_v2026_10_12.symbolexchticker.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before SYMBOL.EXCH.TICKER"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.symbolexchticker.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.symbolexchticker, buffer(offset, length), text, ice_icedataservices_asx24futures_plustick_v2026_10_12.symbolexchticker.display(text))
  end
  return index
end

-- TAS.SEQ
ice_icedataservices_asx24futures_plustick_v2026_10_12.tasseq = {}

-- TAS.SEQ ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.tasseq.delimiter = "|"
-- TAS.SEQ is a signed integer

-- Display: TAS.SEQ
ice_icedataservices_asx24futures_plustick_v2026_10_12.tasseq.display = function(value)
  return "TAS.SEQ: "..value
end

-- Dissect: TAS.SEQ
ice_icedataservices_asx24futures_plustick_v2026_10_12.tasseq.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before TAS.SEQ"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.tasseq.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed(text)
  if value == nil then
    return nil, "TAS.SEQ \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tasseq, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.tasseq.display(tostring(value)))
  end
  return index
end

-- RNR.END.EXCH.SEQ
ice_icedataservices_asx24futures_plustick_v2026_10_12.rnrendexchseq = {}

-- RNR.END.EXCH.SEQ ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.rnrendexchseq.delimiter = "|"
-- RNR.END.EXCH.SEQ is a signed integer

-- Display: RNR.END.EXCH.SEQ
ice_icedataservices_asx24futures_plustick_v2026_10_12.rnrendexchseq.display = function(value)
  return "RNR.END.EXCH.SEQ: "..value
end

-- Dissect: RNR.END.EXCH.SEQ
ice_icedataservices_asx24futures_plustick_v2026_10_12.rnrendexchseq.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before RNR.END.EXCH.SEQ"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.rnrendexchseq.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed(text)
  if value == nil then
    return nil, "RNR.END.EXCH.SEQ \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.rnrendexchseq, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.rnrendexchseq.display(tostring(value)))
  end
  return index
end

-- ACTIVITY.DATETIME
ice_icedataservices_asx24futures_plustick_v2026_10_12.activitydatetime = {}

-- ACTIVITY.DATETIME ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.activitydatetime.delimiter = "|"
-- ACTIVITY.DATETIME is a timestamp: Unit Seconds, Epoch Unix, in UTC, 9 digits of a fraction of its unit
ice_icedataservices_asx24futures_plustick_v2026_10_12.activitydatetime.digits = 9

-- Display: ACTIVITY.DATETIME
ice_icedataservices_asx24futures_plustick_v2026_10_12.activitydatetime.display = function(value)
  return "ACTIVITY.DATETIME: "..value
end

-- Dissect: ACTIVITY.DATETIME
ice_icedataservices_asx24futures_plustick_v2026_10_12.activitydatetime.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before ACTIVITY.DATETIME"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.activitydatetime.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local seconds, nanoseconds = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.unix(text, ice_icedataservices_asx24futures_plustick_v2026_10_12.activitydatetime.digits)
  if seconds == nil then
    return nil, "ACTIVITY.DATETIME \"" .. text .. "\" " .. nanoseconds
  end
  if parent ~= nil then
    -- the UTC instant it is, to the nanosecond
    local value = os.date("!%Y-%m-%d %H:%M:%S.", seconds) .. string.format("%09d", nanoseconds)
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.activitydatetime, buffer(offset, length), NSTime(seconds, nanoseconds), ice_icedataservices_asx24futures_plustick_v2026_10_12.activitydatetime.display(value))
  end
  return index
end

-- TRADE.PRICE
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeprice = {}

-- TRADE.PRICE ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeprice.delimiter = "|"
-- TRADE.PRICE is a decimal that states no Scale: shown as its text, its places the line's

-- Display: TRADE.PRICE
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeprice.display = function(value)
  return "TRADE.PRICE: "..value
end

-- Dissect: TRADE.PRICE
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeprice.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before TRADE.PRICE"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeprice.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  -- its text, exactly: it states no places to read it to
  local exact, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.decimal(text)
  if exact == nil then
    return nil, "TRADE.PRICE \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradeprice, buffer(offset, length), tonumber(text), ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeprice.display(exact))
  end
  return index
end

-- TRADE.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradesize = {}

-- TRADE.SIZE ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradesize.delimiter = "|"
-- TRADE.SIZE is a signed integer

-- Display: TRADE.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradesize.display = function(value)
  return "TRADE.SIZE: "..value
end

-- Dissect: TRADE.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradesize.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before TRADE.SIZE"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradesize.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed(text)
  if value == nil then
    return nil, "TRADE.SIZE \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradesize, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradesize.display(tostring(value)))
  end
  return index
end

-- TRADE.COND_1
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_1 = {}

-- TRADE.COND_1 ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_1.delimiter = "|"
-- TRADE.COND_1 is a signed integer

-- Display: TRADE.COND_1
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_1.labels = {
  ["0"] = "TRADE.COND_1: Normal trade (0)",
  ["1"] = "TRADE.COND_1: Sweeping trade (1)",
  ["2"] = "TRADE.COND_1: Levelling trade (2)",
  ["3"] = "TRADE.COND_1: Spread-to-underlying trade (3)",
  ["4"] = "TRADE.COND_1: Intra-spread to intra-spread trade (4)",
  ["5"] = "TRADE.COND_1: Inter-spread to inter-spread trade (5)",
  ["6"] = "TRADE.COND_1: Custom to custom trade (6)",
  ["7"] = "TRADE.COND_1: Strip to outright (7)",
}

ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_1.display = function(value)
  return ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_1.labels[value] or "TRADE.COND_1: Unknown("..value..")"
end

-- Dissect: TRADE.COND_1
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_1.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before TRADE.COND_1"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_1.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed(text)
  if value == nil then
    return nil, "TRADE.COND_1 \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradecond_1, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_1.display(text))
  end
  return index
end

-- PART.CODE
ice_icedataservices_asx24futures_plustick_v2026_10_12.partcode = {}

-- PART.CODE ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.partcode.delimiter = "|"
-- PART.CODE is text in Ascii
ice_icedataservices_asx24futures_plustick_v2026_10_12.partcode.encoding = ENC_ASCII

-- Display: PART.CODE
ice_icedataservices_asx24futures_plustick_v2026_10_12.partcode.display = function(value)
  return "PART.CODE: "..value
end

-- Dissect: PART.CODE
ice_icedataservices_asx24futures_plustick_v2026_10_12.partcode.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before PART.CODE"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.partcode.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.partcode, buffer(offset, length), text, ice_icedataservices_asx24futures_plustick_v2026_10_12.partcode.display(text))
  end
  return index
end

-- VWAP
ice_icedataservices_asx24futures_plustick_v2026_10_12.vwap = {}

-- VWAP ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.vwap.delimiter = "|"
-- VWAP is a decimal that states no Scale: shown as its text, its places the line's

-- Display: VWAP
ice_icedataservices_asx24futures_plustick_v2026_10_12.vwap.display = function(value)
  return "VWAP: "..value
end

-- Dissect: VWAP
ice_icedataservices_asx24futures_plustick_v2026_10_12.vwap.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before VWAP"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.vwap.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  -- its text, exactly: it states no places to read it to
  local exact, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.decimal(text)
  if exact == nil then
    return nil, "VWAP \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.vwap, buffer(offset, length), tonumber(text), ice_icedataservices_asx24futures_plustick_v2026_10_12.vwap.display(exact))
  end
  return index
end

-- TRADE.DATETIME
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradedatetime = {}

-- TRADE.DATETIME ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradedatetime.delimiter = "|"
-- TRADE.DATETIME is a timestamp: Unit Seconds, Epoch Unix, in UTC, 9 digits of a fraction of its unit
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradedatetime.digits = 9

-- Display: TRADE.DATETIME
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradedatetime.display = function(value)
  return "TRADE.DATETIME: "..value
end

-- Dissect: TRADE.DATETIME
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradedatetime.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before TRADE.DATETIME"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradedatetime.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local seconds, nanoseconds = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.unix(text, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradedatetime.digits)
  if seconds == nil then
    return nil, "TRADE.DATETIME \"" .. text .. "\" " .. nanoseconds
  end
  if parent ~= nil then
    -- the UTC instant it is, to the nanosecond
    local value = os.date("!%Y-%m-%d %H:%M:%S.", seconds) .. string.format("%09d", nanoseconds)
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradedatetime, buffer(offset, length), NSTime(seconds, nanoseconds), ice_icedataservices_asx24futures_plustick_v2026_10_12.tradedatetime.display(value))
  end
  return index
end

-- EXCH.MESSAGE.TIMESTAMP
ice_icedataservices_asx24futures_plustick_v2026_10_12.exchmessagetimestamp = {}

-- EXCH.MESSAGE.TIMESTAMP ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.exchmessagetimestamp.delimiter = "|"
-- EXCH.MESSAGE.TIMESTAMP is a time of day: Format HHMMSSmmm, 3 digits of a second, Unit Milliseconds, Epoch Midnight
ice_icedataservices_asx24futures_plustick_v2026_10_12.exchmessagetimestamp.fraction = 3
-- EXCH.MESSAGE.TIMESTAMP's midnight is in Australia/Sydney, where the Day preference places it
ice_icedataservices_asx24futures_plustick_v2026_10_12.exchmessagetimestamp.zone = ice_icedataservices_asx24futures_plustick_v2026_10_12.zones["Australia/Sydney"]

-- Display: EXCH.MESSAGE.TIMESTAMP
ice_icedataservices_asx24futures_plustick_v2026_10_12.exchmessagetimestamp.display = function(value)
  return "EXCH.MESSAGE.TIMESTAMP: "..value
end

-- Dissect: EXCH.MESSAGE.TIMESTAMP
ice_icedataservices_asx24futures_plustick_v2026_10_12.exchmessagetimestamp.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before EXCH.MESSAGE.TIMESTAMP"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.exchmessagetimestamp.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local seconds, nanoseconds, value = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.time(text, ice_icedataservices_asx24futures_plustick_v2026_10_12.exchmessagetimestamp.fraction)
  if seconds == nil then
    return nil, "EXCH.MESSAGE.TIMESTAMP \"" .. text .. "\" is not a time of day"
  end
  if parent ~= nil then
    local range = buffer(offset, length)
    local item = parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.exchmessagetimestamp, range, value, ice_icedataservices_asx24futures_plustick_v2026_10_12.exchmessagetimestamp.display(value))
    -- on the Day preference's day, in UTC
    local utc = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.placed(ice_icedataservices_asx24futures_plustick_v2026_10_12.exchmessagetimestamp.zone, seconds)
    if utc ~= nil then
      item:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.exchmessagetimestamp_utc, range, NSTime(utc, nanoseconds)):set_generated()
    end
  end
  return index
end

-- TRADE.COND_2
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_2 = {}

-- TRADE.COND_2 ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_2.delimiter = "|"
-- TRADE.COND_2 is a signed integer

-- Display: TRADE.COND_2
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_2.display = function(value)
  return "TRADE.COND_2: "..value
end

-- Dissect: TRADE.COND_2
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_2.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before TRADE.COND_2"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_2.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed(text)
  if value == nil then
    return nil, "TRADE.COND_2 \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradecond_2, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_2.display(tostring(value)))
  end
  return index
end

-- TRADE.COND_3
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_3 = {}

-- TRADE.COND_3 ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_3.delimiter = "|"
-- TRADE.COND_3 is a signed integer

-- Display: TRADE.COND_3
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_3.display = function(value)
  return "TRADE.COND_3: "..value
end

-- Dissect: TRADE.COND_3
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_3.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before TRADE.COND_3"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_3.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed(text)
  if value == nil then
    return nil, "TRADE.COND_3 \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradecond_3, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_3.display(tostring(value)))
  end
  return index
end

-- TRADE.OFFICIAL.TIME
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeofficialtime = {}

-- TRADE.OFFICIAL.TIME ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeofficialtime.delimiter = "|"
-- TRADE.OFFICIAL.TIME is a time of day: Format HHMMSSmmm, 3 digits of a second, Unit Milliseconds, Epoch Midnight
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeofficialtime.fraction = 3
-- TRADE.OFFICIAL.TIME's midnight is in Australia/Sydney, where the Day preference places it
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeofficialtime.zone = ice_icedataservices_asx24futures_plustick_v2026_10_12.zones["Australia/Sydney"]

-- Display: TRADE.OFFICIAL.TIME
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeofficialtime.display = function(value)
  return "TRADE.OFFICIAL.TIME: "..value
end

-- Dissect: TRADE.OFFICIAL.TIME
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeofficialtime.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before TRADE.OFFICIAL.TIME"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeofficialtime.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local seconds, nanoseconds, value = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.time(text, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeofficialtime.fraction)
  if seconds == nil then
    return nil, "TRADE.OFFICIAL.TIME \"" .. text .. "\" is not a time of day"
  end
  if parent ~= nil then
    local range = buffer(offset, length)
    local item = parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradeofficialtime, range, value, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeofficialtime.display(value))
    -- on the Day preference's day, in UTC
    local utc = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.placed(ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeofficialtime.zone, seconds)
    if utc ~= nil then
      item:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradeofficialtime_utc, range, NSTime(utc, nanoseconds)):set_generated()
    end
  end
  return index
end

-- TRADE.COND_4
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_4 = {}

-- TRADE.COND_4 ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_4.delimiter = "|"
-- TRADE.COND_4 is text in Ascii
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_4.encoding = ENC_ASCII

-- Display: TRADE.COND_4
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_4.display = function(value)
  return "TRADE.COND_4: "..value
end

-- Dissect: TRADE.COND_4
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_4.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before TRADE.COND_4"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_4.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradecond_4, buffer(offset, length), text, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_4.display(text))
  end
  return index
end

-- TRADE.COND_5
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_5 = {}

-- TRADE.COND_5 ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_5.delimiter = "|"
-- TRADE.COND_5 is a signed integer

-- Display: TRADE.COND_5
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_5.display = function(value)
  return "TRADE.COND_5: "..value
end

-- Dissect: TRADE.COND_5
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_5.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before TRADE.COND_5"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_5.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed(text)
  if value == nil then
    return nil, "TRADE.COND_5 \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradecond_5, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_5.display(tostring(value)))
  end
  return index
end

-- EXTENDED.TRADE.COND
ice_icedataservices_asx24futures_plustick_v2026_10_12.extendedtradecond = {}

-- EXTENDED.TRADE.COND ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.extendedtradecond.delimiter = "|"
-- EXTENDED.TRADE.COND is text in Ascii
ice_icedataservices_asx24futures_plustick_v2026_10_12.extendedtradecond.encoding = ENC_ASCII

-- Display: EXTENDED.TRADE.COND
ice_icedataservices_asx24futures_plustick_v2026_10_12.extendedtradecond.display = function(value)
  return "EXTENDED.TRADE.COND: "..value
end

-- Dissect: EXTENDED.TRADE.COND
ice_icedataservices_asx24futures_plustick_v2026_10_12.extendedtradecond.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before EXTENDED.TRADE.COND"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.extendedtradecond.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.extendedtradecond, buffer(offset, length), text, ice_icedataservices_asx24futures_plustick_v2026_10_12.extendedtradecond.display(text))
  end
  return index
end

-- TRADE.OFFICIAL.DATE
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeofficialdate = {}

-- TRADE.OFFICIAL.DATE ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeofficialdate.delimiter = "|"
-- TRADE.OFFICIAL.DATE is a date, yyyymmdd

-- Display: TRADE.OFFICIAL.DATE
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeofficialdate.display = function(value)
  return "TRADE.OFFICIAL.DATE: "..value
end

-- Dissect: TRADE.OFFICIAL.DATE
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeofficialdate.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before TRADE.OFFICIAL.DATE"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeofficialdate.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  if ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.days(text) == nil then
    return nil, "TRADE.OFFICIAL.DATE \"" .. text .. "\" is not a yyyymmdd date"
  end
  if parent ~= nil then
    local value = string.sub(text, 1, 4) .. "-" .. string.sub(text, 5, 6) .. "-" .. string.sub(text, 7, 8)
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradeofficialdate, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeofficialdate.display(value))
  end
  return index
end

-- RETRANSMISSION.FLAG
ice_icedataservices_asx24futures_plustick_v2026_10_12.retransmissionflag = {}

-- RETRANSMISSION.FLAG ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.retransmissionflag.delimiter = "|"
-- RETRANSMISSION.FLAG is a signed integer

-- Display: RETRANSMISSION.FLAG
ice_icedataservices_asx24futures_plustick_v2026_10_12.retransmissionflag.display = function(value)
  return "RETRANSMISSION.FLAG: "..value
end

-- Dissect: RETRANSMISSION.FLAG
ice_icedataservices_asx24futures_plustick_v2026_10_12.retransmissionflag.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before RETRANSMISSION.FLAG"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.retransmissionflag.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed(text)
  if value == nil then
    return nil, "RETRANSMISSION.FLAG \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.retransmissionflag, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.retransmissionflag.display(tostring(value)))
  end
  return index
end

-- AGGRESSOR.SIDE
ice_icedataservices_asx24futures_plustick_v2026_10_12.aggressorside = {}

-- AGGRESSOR.SIDE ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.aggressorside.delimiter = "|"
-- AGGRESSOR.SIDE is a signed integer

-- Display: AGGRESSOR.SIDE
ice_icedataservices_asx24futures_plustick_v2026_10_12.aggressorside.display = function(value)
  return "AGGRESSOR.SIDE: "..value
end

-- Dissect: AGGRESSOR.SIDE
ice_icedataservices_asx24futures_plustick_v2026_10_12.aggressorside.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before AGGRESSOR.SIDE"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.aggressorside.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed(text)
  if value == nil then
    return nil, "AGGRESSOR.SIDE \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.aggressorside, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.aggressorside.display(tostring(value)))
  end
  return index
end

-- TRADE.UNIQUE.ID
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeuniqueid = {}

-- TRADE.UNIQUE.ID ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeuniqueid.delimiter = "|"
-- TRADE.UNIQUE.ID is an unsigned integer

-- Display: TRADE.UNIQUE.ID
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeuniqueid.display = function(value)
  return "TRADE.UNIQUE.ID: "..value
end

-- Dissect: TRADE.UNIQUE.ID
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeuniqueid.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before TRADE.UNIQUE.ID"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeuniqueid.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.unsigned(text)
  if value == nil then
    return nil, "TRADE.UNIQUE.ID \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradeuniqueid, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeuniqueid.display(tostring(value)))
  end
  return index
end

-- COMBINATION.TRADE.ID
ice_icedataservices_asx24futures_plustick_v2026_10_12.combinationtradeid = {}

-- COMBINATION.TRADE.ID ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.combinationtradeid.delimiter = "|"
-- COMBINATION.TRADE.ID is an unsigned integer

-- Display: COMBINATION.TRADE.ID
ice_icedataservices_asx24futures_plustick_v2026_10_12.combinationtradeid.display = function(value)
  return "COMBINATION.TRADE.ID: "..value
end

-- Dissect: COMBINATION.TRADE.ID
ice_icedataservices_asx24futures_plustick_v2026_10_12.combinationtradeid.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before COMBINATION.TRADE.ID"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.combinationtradeid.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.unsigned(text)
  if value == nil then
    return nil, "COMBINATION.TRADE.ID \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.combinationtradeid, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.combinationtradeid.display(tostring(value)))
  end
  return index
end

-- BUYER.COMBINATION.TRADE.ID
ice_icedataservices_asx24futures_plustick_v2026_10_12.buyercombinationtradeid = {}

-- BUYER.COMBINATION.TRADE.ID ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.buyercombinationtradeid.delimiter = "|"
-- BUYER.COMBINATION.TRADE.ID is an unsigned integer

-- Display: BUYER.COMBINATION.TRADE.ID
ice_icedataservices_asx24futures_plustick_v2026_10_12.buyercombinationtradeid.display = function(value)
  return "BUYER.COMBINATION.TRADE.ID: "..value
end

-- Dissect: BUYER.COMBINATION.TRADE.ID
ice_icedataservices_asx24futures_plustick_v2026_10_12.buyercombinationtradeid.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before BUYER.COMBINATION.TRADE.ID"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.buyercombinationtradeid.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.unsigned(text)
  if value == nil then
    return nil, "BUYER.COMBINATION.TRADE.ID \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.buyercombinationtradeid, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.buyercombinationtradeid.display(tostring(value)))
  end
  return index
end

-- SELLER.COMBINATION.TRADE.ID
ice_icedataservices_asx24futures_plustick_v2026_10_12.sellercombinationtradeid = {}

-- SELLER.COMBINATION.TRADE.ID ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.sellercombinationtradeid.delimiter = "|"
-- SELLER.COMBINATION.TRADE.ID is an unsigned integer

-- Display: SELLER.COMBINATION.TRADE.ID
ice_icedataservices_asx24futures_plustick_v2026_10_12.sellercombinationtradeid.display = function(value)
  return "SELLER.COMBINATION.TRADE.ID: "..value
end

-- Dissect: SELLER.COMBINATION.TRADE.ID
ice_icedataservices_asx24futures_plustick_v2026_10_12.sellercombinationtradeid.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before SELLER.COMBINATION.TRADE.ID"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.sellercombinationtradeid.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.unsigned(text)
  if value == nil then
    return nil, "SELLER.COMBINATION.TRADE.ID \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.sellercombinationtradeid, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.sellercombinationtradeid.display(tostring(value)))
  end
  return index
end

-- COUNTER.PARTY.ID.STRING
ice_icedataservices_asx24futures_plustick_v2026_10_12.counterpartyidstring = {}

-- COUNTER.PARTY.ID.STRING ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.counterpartyidstring.delimiter = "|"
-- COUNTER.PARTY.ID.STRING is text in Ascii
ice_icedataservices_asx24futures_plustick_v2026_10_12.counterpartyidstring.encoding = ENC_ASCII

-- Display: COUNTER.PARTY.ID.STRING
ice_icedataservices_asx24futures_plustick_v2026_10_12.counterpartyidstring.display = function(value)
  return "COUNTER.PARTY.ID.STRING: "..value
end

-- Dissect: COUNTER.PARTY.ID.STRING
ice_icedataservices_asx24futures_plustick_v2026_10_12.counterpartyidstring.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before COUNTER.PARTY.ID.STRING"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.counterpartyidstring.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.counterpartyidstring, buffer(offset, length), text, ice_icedataservices_asx24futures_plustick_v2026_10_12.counterpartyidstring.display(text))
  end
  return index
end

-- BID.PRICE
ice_icedataservices_asx24futures_plustick_v2026_10_12.bidprice = {}

-- BID.PRICE ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.bidprice.delimiter = "|"
-- BID.PRICE is a decimal that states no Scale: shown as its text, its places the line's

-- Display: BID.PRICE
ice_icedataservices_asx24futures_plustick_v2026_10_12.bidprice.display = function(value)
  return "BID.PRICE: "..value
end

-- Dissect: BID.PRICE
ice_icedataservices_asx24futures_plustick_v2026_10_12.bidprice.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before BID.PRICE"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.bidprice.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  -- its text, exactly: it states no places to read it to
  local exact, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.decimal(text)
  if exact == nil then
    return nil, "BID.PRICE \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.bidprice, buffer(offset, length), tonumber(text), ice_icedataservices_asx24futures_plustick_v2026_10_12.bidprice.display(exact))
  end
  return index
end

-- BID.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.bidsize = {}

-- BID.SIZE ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.bidsize.delimiter = "|"
-- BID.SIZE is a signed integer

-- Display: BID.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.bidsize.display = function(value)
  return "BID.SIZE: "..value
end

-- Dissect: BID.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.bidsize.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before BID.SIZE"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.bidsize.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed(text)
  if value == nil then
    return nil, "BID.SIZE \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.bidsize, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.bidsize.display(tostring(value)))
  end
  return index
end

-- ASK.PRICE
ice_icedataservices_asx24futures_plustick_v2026_10_12.askprice = {}

-- ASK.PRICE ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.askprice.delimiter = "|"
-- ASK.PRICE is a decimal that states no Scale: shown as its text, its places the line's

-- Display: ASK.PRICE
ice_icedataservices_asx24futures_plustick_v2026_10_12.askprice.display = function(value)
  return "ASK.PRICE: "..value
end

-- Dissect: ASK.PRICE
ice_icedataservices_asx24futures_plustick_v2026_10_12.askprice.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before ASK.PRICE"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.askprice.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  -- its text, exactly: it states no places to read it to
  local exact, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.decimal(text)
  if exact == nil then
    return nil, "ASK.PRICE \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.askprice, buffer(offset, length), tonumber(text), ice_icedataservices_asx24futures_plustick_v2026_10_12.askprice.display(exact))
  end
  return index
end

-- ASK.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.asksize = {}

-- ASK.SIZE ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.asksize.delimiter = "|"
-- ASK.SIZE is a signed integer

-- Display: ASK.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.asksize.display = function(value)
  return "ASK.SIZE: "..value
end

-- Dissect: ASK.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.asksize.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before ASK.SIZE"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.asksize.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed(text)
  if value == nil then
    return nil, "ASK.SIZE \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.asksize, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.asksize.display(tostring(value)))
  end
  return index
end

-- QUOTE.COND_1
ice_icedataservices_asx24futures_plustick_v2026_10_12.quotecond_1 = {}

-- QUOTE.COND_1 ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.quotecond_1.delimiter = "|"
-- QUOTE.COND_1 is a signed integer

-- Display: QUOTE.COND_1
ice_icedataservices_asx24futures_plustick_v2026_10_12.quotecond_1.display = function(value)
  return "QUOTE.COND_1: "..value
end

-- Dissect: QUOTE.COND_1
ice_icedataservices_asx24futures_plustick_v2026_10_12.quotecond_1.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before QUOTE.COND_1"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.quotecond_1.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed(text)
  if value == nil then
    return nil, "QUOTE.COND_1 \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.quotecond_1, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.quotecond_1.display(tostring(value)))
  end
  return index
end

-- QUOTE.DATETIME
ice_icedataservices_asx24futures_plustick_v2026_10_12.quotedatetime = {}

-- QUOTE.DATETIME ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.quotedatetime.delimiter = "|"
-- QUOTE.DATETIME is a timestamp: Unit Seconds, Epoch Unix, in UTC, 9 digits of a fraction of its unit
ice_icedataservices_asx24futures_plustick_v2026_10_12.quotedatetime.digits = 9

-- Display: QUOTE.DATETIME
ice_icedataservices_asx24futures_plustick_v2026_10_12.quotedatetime.display = function(value)
  return "QUOTE.DATETIME: "..value
end

-- Dissect: QUOTE.DATETIME
ice_icedataservices_asx24futures_plustick_v2026_10_12.quotedatetime.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before QUOTE.DATETIME"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.quotedatetime.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local seconds, nanoseconds = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.unix(text, ice_icedataservices_asx24futures_plustick_v2026_10_12.quotedatetime.digits)
  if seconds == nil then
    return nil, "QUOTE.DATETIME \"" .. text .. "\" " .. nanoseconds
  end
  if parent ~= nil then
    -- the UTC instant it is, to the nanosecond
    local value = os.date("!%Y-%m-%d %H:%M:%S.", seconds) .. string.format("%09d", nanoseconds)
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.quotedatetime, buffer(offset, length), NSTime(seconds, nanoseconds), ice_icedataservices_asx24futures_plustick_v2026_10_12.quotedatetime.display(value))
  end
  return index
end

-- IMPLIED.BID.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.impliedbidsize = {}

-- IMPLIED.BID.SIZE ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.impliedbidsize.delimiter = "|"
-- IMPLIED.BID.SIZE is a signed integer

-- Display: IMPLIED.BID.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.impliedbidsize.display = function(value)
  return "IMPLIED.BID.SIZE: "..value
end

-- Dissect: IMPLIED.BID.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.impliedbidsize.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before IMPLIED.BID.SIZE"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.impliedbidsize.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed(text)
  if value == nil then
    return nil, "IMPLIED.BID.SIZE \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.impliedbidsize, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.impliedbidsize.display(tostring(value)))
  end
  return index
end

-- IMPLIED.ASK.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.impliedasksize = {}

-- IMPLIED.ASK.SIZE ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.impliedasksize.delimiter = "|"
-- IMPLIED.ASK.SIZE is a signed integer

-- Display: IMPLIED.ASK.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.impliedasksize.display = function(value)
  return "IMPLIED.ASK.SIZE: "..value
end

-- Dissect: IMPLIED.ASK.SIZE
ice_icedataservices_asx24futures_plustick_v2026_10_12.impliedasksize.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before IMPLIED.ASK.SIZE"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.impliedasksize.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed(text)
  if value == nil then
    return nil, "IMPLIED.ASK.SIZE \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.impliedasksize, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.impliedasksize.display(tostring(value)))
  end
  return index
end

-- BID.DATETIME
ice_icedataservices_asx24futures_plustick_v2026_10_12.biddatetime = {}

-- BID.DATETIME ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.biddatetime.delimiter = "|"
-- BID.DATETIME is a timestamp: Unit Seconds, Epoch Unix, in UTC, 9 digits of a fraction of its unit
ice_icedataservices_asx24futures_plustick_v2026_10_12.biddatetime.digits = 9

-- Display: BID.DATETIME
ice_icedataservices_asx24futures_plustick_v2026_10_12.biddatetime.display = function(value)
  return "BID.DATETIME: "..value
end

-- Dissect: BID.DATETIME
ice_icedataservices_asx24futures_plustick_v2026_10_12.biddatetime.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before BID.DATETIME"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.biddatetime.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local seconds, nanoseconds = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.unix(text, ice_icedataservices_asx24futures_plustick_v2026_10_12.biddatetime.digits)
  if seconds == nil then
    return nil, "BID.DATETIME \"" .. text .. "\" " .. nanoseconds
  end
  if parent ~= nil then
    -- the UTC instant it is, to the nanosecond
    local value = os.date("!%Y-%m-%d %H:%M:%S.", seconds) .. string.format("%09d", nanoseconds)
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.biddatetime, buffer(offset, length), NSTime(seconds, nanoseconds), ice_icedataservices_asx24futures_plustick_v2026_10_12.biddatetime.display(value))
  end
  return index
end

-- ASK.DATETIME
ice_icedataservices_asx24futures_plustick_v2026_10_12.askdatetime = {}

-- ASK.DATETIME ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.askdatetime.delimiter = "|"
-- ASK.DATETIME is a timestamp: Unit Seconds, Epoch Unix, in UTC, 9 digits of a fraction of its unit
ice_icedataservices_asx24futures_plustick_v2026_10_12.askdatetime.digits = 9

-- Display: ASK.DATETIME
ice_icedataservices_asx24futures_plustick_v2026_10_12.askdatetime.display = function(value)
  return "ASK.DATETIME: "..value
end

-- Dissect: ASK.DATETIME
ice_icedataservices_asx24futures_plustick_v2026_10_12.askdatetime.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before ASK.DATETIME"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.askdatetime.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local seconds, nanoseconds = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.unix(text, ice_icedataservices_asx24futures_plustick_v2026_10_12.askdatetime.digits)
  if seconds == nil then
    return nil, "ASK.DATETIME \"" .. text .. "\" " .. nanoseconds
  end
  if parent ~= nil then
    -- the UTC instant it is, to the nanosecond
    local value = os.date("!%Y-%m-%d %H:%M:%S.", seconds) .. string.format("%09d", nanoseconds)
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.askdatetime, buffer(offset, length), NSTime(seconds, nanoseconds), ice_icedataservices_asx24futures_plustick_v2026_10_12.askdatetime.display(value))
  end
  return index
end

-- INSTR.STATUS
ice_icedataservices_asx24futures_plustick_v2026_10_12.instrstatus = {}

-- INSTR.STATUS ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.instrstatus.delimiter = "|"
-- INSTR.STATUS is a signed integer

-- Display: INSTR.STATUS
ice_icedataservices_asx24futures_plustick_v2026_10_12.instrstatus.labels = {
  ["0"] = "INSTR.STATUS: Opened (0)",
  ["1"] = "INSTR.STATUS: Halted (1)",
  ["2"] = "INSTR.STATUS: Maintenance (2)",
  ["3"] = "INSTR.STATUS: Pre-open (3)",
  ["7"] = "INSTR.STATUS: Regulatory halt (7)",
  ["8"] = "INSTR.STATUS: Closed (8)",
}

ice_icedataservices_asx24futures_plustick_v2026_10_12.instrstatus.display = function(value)
  return ice_icedataservices_asx24futures_plustick_v2026_10_12.instrstatus.labels[value] or "INSTR.STATUS: Unknown("..value..")"
end

-- Dissect: INSTR.STATUS
ice_icedataservices_asx24futures_plustick_v2026_10_12.instrstatus.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before INSTR.STATUS"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.instrstatus.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed(text)
  if value == nil then
    return nil, "INSTR.STATUS \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.instrstatus, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.instrstatus.display(text))
  end
  return index
end

-- TRADABLE.STATUS
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradablestatus = {}

-- TRADABLE.STATUS ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradablestatus.delimiter = "|"
-- TRADABLE.STATUS is a signed integer

-- Display: TRADABLE.STATUS
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradablestatus.labels = {
  ["0"] = "TRADABLE.STATUS: Undefined (0)",
  ["1"] = "TRADABLE.STATUS: Normal (1)",
  ["2"] = "TRADABLE.STATUS: Halted (2)",
  ["3"] = "TRADABLE.STATUS: Suspended (3)",
}

ice_icedataservices_asx24futures_plustick_v2026_10_12.tradablestatus.display = function(value)
  return ice_icedataservices_asx24futures_plustick_v2026_10_12.tradablestatus.labels[value] or "TRADABLE.STATUS: Unknown("..value..")"
end

-- Dissect: TRADABLE.STATUS
ice_icedataservices_asx24futures_plustick_v2026_10_12.tradablestatus.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before TRADABLE.STATUS"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradablestatus.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed(text)
  if value == nil then
    return nil, "TRADABLE.STATUS \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.tradablestatus, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.tradablestatus.display(text))
  end
  return index
end

-- MARKET.PHASE
ice_icedataservices_asx24futures_plustick_v2026_10_12.marketphase = {}

-- MARKET.PHASE ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.marketphase.delimiter = "|"
-- MARKET.PHASE is a signed integer

-- Display: MARKET.PHASE
ice_icedataservices_asx24futures_plustick_v2026_10_12.marketphase.labels = {
  ["0"] = "MARKET.PHASE: Undefined (0)",
  ["1"] = "MARKET.PHASE: Closed (1)",
  ["2"] = "MARKET.PHASE: Pre-Market (2)",
  ["3"] = "MARKET.PHASE: Opening Auction (3)",
  ["4"] = "MARKET.PHASE: Continuous Trading (4)",
  ["5"] = "MARKET.PHASE: Mandatory Quote (5)",
  ["6"] = "MARKET.PHASE: Volatility Interruption (6)",
  ["7"] = "MARKET.PHASE: Intra-Day Auction (Scheduled) (7)",
  ["8"] = "MARKET.PHASE: Closing Auction (8)",
  ["9"] = "MARKET.PHASE: Alternative Pricing Session (9)",
  ["10"] = "MARKET.PHASE: Post-Market (10)",
  ["11"] = "MARKET.PHASE: Indicative Quote (11)",
}

ice_icedataservices_asx24futures_plustick_v2026_10_12.marketphase.display = function(value)
  return ice_icedataservices_asx24futures_plustick_v2026_10_12.marketphase.labels[value] or "MARKET.PHASE: Unknown("..value..")"
end

-- Dissect: MARKET.PHASE
ice_icedataservices_asx24futures_plustick_v2026_10_12.marketphase.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before MARKET.PHASE"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.marketphase.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  local value, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.signed(text)
  if value == nil then
    return nil, "MARKET.PHASE \"" .. text .. "\" " .. failure
  end
  if parent ~= nil then
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.marketphase, buffer(offset, length), value, ice_icedataservices_asx24futures_plustick_v2026_10_12.marketphase.display(text))
  end
  return index
end

-- ROW.SUMMARY
ice_icedataservices_asx24futures_plustick_v2026_10_12.rowsummary = {}

-- ROW.SUMMARY ends at "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.rowsummary.delimiter = "|"
-- ROW.SUMMARY is text in Ascii
ice_icedataservices_asx24futures_plustick_v2026_10_12.rowsummary.encoding = ENC_ASCII

-- Display: ROW.SUMMARY
ice_icedataservices_asx24futures_plustick_v2026_10_12.rowsummary.display = function(value)
  return "ROW.SUMMARY: "..value
end

-- Dissect: ROW.SUMMARY
ice_icedataservices_asx24futures_plustick_v2026_10_12.rowsummary.dissect = function(buffer, offset, packet, parent, length)
  if offset == nil or offset > #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current then
    return nil, "the line stops before ROW.SUMMARY"
  end
  local index = nil
  if length == nil then
    length, index = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.rowsummary.delimiter)
  end
  local text = string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, offset + 1, offset + length)
  if parent ~= nil then
    -- Ascii: the line's own bytes
    parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.rowsummary, buffer(offset, length), text, ice_icedataservices_asx24futures_plustick_v2026_10_12.rowsummary.display(text))
  end
  return index
end


-----------------------------------------------------------------------
-- Protocol Records
-----------------------------------------------------------------------

-- Instrument
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_instrument = {}

-- The record type H selects Instrument, which a line of it is shown as
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_instrument.name = "Instrument"

-- The delimiter every field of Instrument ends at, which its line is split at
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_instrument.delimiter = "|"

-- Dissect Fields: Instrument
-- Split: every field of Instrument ends at "|" and none is quoted, so its line is split once and each field handed its range
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_instrument.fields = function(buffer, offset, packet, parent)
  local starts, lengths = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.split(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.record_instrument.delimiter)
  if #starts > 20 then
    return nil, "Instrument: the line has " .. #starts .. " fields, its layout 20"
  end
  local index = nil
  local failure = nil

  -- Record Type: field 1
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.record_type.dissect(buffer, starts[1], packet, parent, lengths[1])
  if failure ~= nil then
    return nil, failure
  end

  -- ENUM.SRC.ID: field 2
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.enumsrcid.dissect(buffer, starts[2], packet, parent, lengths[2])
  if failure ~= nil then
    return nil, failure
  end

  -- SYMBOL.TICKER: field 3
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.symbolticker.dissect(buffer, starts[3], packet, parent, lengths[3])
  if failure ~= nil then
    return nil, failure
  end

  -- CURRENCY.STRING: field 4
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.currencystring.dissect(buffer, starts[4], packet, parent, lengths[4])
  if failure ~= nil then
    return nil, failure
  end

  -- ISIN: field 5
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.isin.dissect(buffer, starts[5], packet, parent, lengths[5])
  if failure ~= nil then
    return nil, failure
  end

  -- DISPLAY.PRECISION: field 6
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.displayprecision.dissect(buffer, starts[6], packet, parent, lengths[6])
  if failure ~= nil then
    return nil, failure
  end

  -- TRADE.OPEN: field 7
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeopen.dissect(buffer, starts[7], packet, parent, lengths[7])
  if failure ~= nil then
    return nil, failure
  end

  -- OPEN_INT: field 8
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.open_int.dissect(buffer, starts[8], packet, parent, lengths[8])
  if failure ~= nil then
    return nil, failure
  end

  -- YEST.TRADE.CLOSE: field 9
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.yesttradeclose.dissect(buffer, starts[9], packet, parent, lengths[9])
  if failure ~= nil then
    return nil, failure
  end

  -- YEST.TRADE.VOL: field 10
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.yesttradevol.dissect(buffer, starts[10], packet, parent, lengths[10])
  if failure ~= nil then
    return nil, failure
  end

  -- SETTLE.DATE: field 11
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.settledate.dissect(buffer, starts[11], packet, parent, lengths[11])
  if failure ~= nil then
    return nil, failure
  end

  -- SETTLE.PRICE: field 12
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.settleprice.dissect(buffer, starts[12], packet, parent, lengths[12])
  if failure ~= nil then
    return nil, failure
  end

  -- EXPIRATION.DATE: field 13
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.expirationdate.dissect(buffer, starts[13], packet, parent, lengths[13])
  if failure ~= nil then
    return nil, failure
  end

  -- FRONT.MONTH.CONTRACT: field 14
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.frontmonthcontract.dissect(buffer, starts[14], packet, parent, lengths[14])
  if failure ~= nil then
    return nil, failure
  end

  -- ENUM.INSTR.TYPE: field 15
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.enuminstrtype.dissect(buffer, starts[15], packet, parent, lengths[15])
  if failure ~= nil then
    return nil, failure
  end

  -- LOT.SIZE: field 16
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.lotsize.dissect(buffer, starts[16], packet, parent, lengths[16])
  if failure ~= nil then
    return nil, failure
  end

  -- CONTRACT.SIZE: field 17
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.contractsize.dissect(buffer, starts[17], packet, parent, lengths[17])
  if failure ~= nil then
    return nil, failure
  end

  -- VARIABLE.TICK.SIZE: field 18
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.variableticksize.dissect(buffer, starts[18], packet, parent, lengths[18])
  if failure ~= nil then
    return nil, failure
  end

  -- PRODUCT.ROOT: field 19
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.productroot.dissect(buffer, starts[19], packet, parent, lengths[19])
  if failure ~= nil then
    return nil, failure
  end

  -- SYMBOL.EXCH.TICKER: field 20
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.symbolexchticker.dissect(buffer, starts[20], packet, parent, lengths[20])
  if failure ~= nil then
    return nil, failure
  end

  return #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current + 1
end

-- Dissect: Instrument
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_instrument.dissect = function(buffer, offset, packet, parent)
  local element = parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.record_instrument, buffer(), "Instrument", "Instrument")
  return ice_icedataservices_asx24futures_plustick_v2026_10_12.record_instrument.fields(buffer, offset, packet, element)
end

-- Trade
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_trade = {}

-- The record type T selects Trade, which a line of it is shown as
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_trade.name = "Trade"

-- The delimiter every field of Trade ends at, which its line is split at
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_trade.delimiter = "|"

-- Dissect Fields: Trade
-- Split: every field of Trade ends at "|" and none is quoted, so its line is split once and each field handed its range
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_trade.fields = function(buffer, offset, packet, parent)
  local starts, lengths = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.split(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.record_trade.delimiter)
  if #starts > 25 then
    return nil, "Trade: the line has " .. #starts .. " fields, its layout 25"
  end
  local index = nil
  local failure = nil

  -- Record Type: field 1
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.record_type.dissect(buffer, starts[1], packet, parent, lengths[1])
  if failure ~= nil then
    return nil, failure
  end

  -- TAS.SEQ: field 2
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.tasseq.dissect(buffer, starts[2], packet, parent, lengths[2])
  if failure ~= nil then
    return nil, failure
  end

  -- RNR.END.EXCH.SEQ: field 3
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.rnrendexchseq.dissect(buffer, starts[3], packet, parent, lengths[3])
  if failure ~= nil then
    return nil, failure
  end

  -- ACTIVITY.DATETIME: field 4
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.activitydatetime.dissect(buffer, starts[4], packet, parent, lengths[4])
  if failure ~= nil then
    return nil, failure
  end

  -- TRADE.PRICE: field 5
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeprice.dissect(buffer, starts[5], packet, parent, lengths[5])
  if failure ~= nil then
    return nil, failure
  end

  -- TRADE.SIZE: field 6
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.tradesize.dissect(buffer, starts[6], packet, parent, lengths[6])
  if failure ~= nil then
    return nil, failure
  end

  -- TRADE.COND_1: field 7
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_1.dissect(buffer, starts[7], packet, parent, lengths[7])
  if failure ~= nil then
    return nil, failure
  end

  -- PART.CODE: field 8
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.partcode.dissect(buffer, starts[8], packet, parent, lengths[8])
  if failure ~= nil then
    return nil, failure
  end

  -- VWAP: field 9
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.vwap.dissect(buffer, starts[9], packet, parent, lengths[9])
  if failure ~= nil then
    return nil, failure
  end

  -- TRADE.DATETIME: field 10
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.tradedatetime.dissect(buffer, starts[10], packet, parent, lengths[10])
  if failure ~= nil then
    return nil, failure
  end

  -- EXCH.MESSAGE.TIMESTAMP: field 11
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.exchmessagetimestamp.dissect(buffer, starts[11], packet, parent, lengths[11])
  if failure ~= nil then
    return nil, failure
  end

  -- TRADE.COND_2: field 12
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_2.dissect(buffer, starts[12], packet, parent, lengths[12])
  if failure ~= nil then
    return nil, failure
  end

  -- TRADE.COND_3: field 13
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_3.dissect(buffer, starts[13], packet, parent, lengths[13])
  if failure ~= nil then
    return nil, failure
  end

  -- TRADE.OFFICIAL.TIME: field 14
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeofficialtime.dissect(buffer, starts[14], packet, parent, lengths[14])
  if failure ~= nil then
    return nil, failure
  end

  -- TRADE.COND_4: field 15
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_4.dissect(buffer, starts[15], packet, parent, lengths[15])
  if failure ~= nil then
    return nil, failure
  end

  -- TRADE.COND_5: field 16
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.tradecond_5.dissect(buffer, starts[16], packet, parent, lengths[16])
  if failure ~= nil then
    return nil, failure
  end

  -- EXTENDED.TRADE.COND: field 17
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.extendedtradecond.dissect(buffer, starts[17], packet, parent, lengths[17])
  if failure ~= nil then
    return nil, failure
  end

  -- TRADE.OFFICIAL.DATE: field 18
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeofficialdate.dissect(buffer, starts[18], packet, parent, lengths[18])
  if failure ~= nil then
    return nil, failure
  end

  -- RETRANSMISSION.FLAG: field 19
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.retransmissionflag.dissect(buffer, starts[19], packet, parent, lengths[19])
  if failure ~= nil then
    return nil, failure
  end

  -- AGGRESSOR.SIDE: field 20
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.aggressorside.dissect(buffer, starts[20], packet, parent, lengths[20])
  if failure ~= nil then
    return nil, failure
  end

  -- TRADE.UNIQUE.ID: field 21
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.tradeuniqueid.dissect(buffer, starts[21], packet, parent, lengths[21])
  if failure ~= nil then
    return nil, failure
  end

  -- COMBINATION.TRADE.ID: field 22
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.combinationtradeid.dissect(buffer, starts[22], packet, parent, lengths[22])
  if failure ~= nil then
    return nil, failure
  end

  -- BUYER.COMBINATION.TRADE.ID: field 23
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.buyercombinationtradeid.dissect(buffer, starts[23], packet, parent, lengths[23])
  if failure ~= nil then
    return nil, failure
  end

  -- SELLER.COMBINATION.TRADE.ID: field 24
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.sellercombinationtradeid.dissect(buffer, starts[24], packet, parent, lengths[24])
  if failure ~= nil then
    return nil, failure
  end

  -- COUNTER.PARTY.ID.STRING: field 25
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.counterpartyidstring.dissect(buffer, starts[25], packet, parent, lengths[25])
  if failure ~= nil then
    return nil, failure
  end

  return #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current + 1
end

-- Dissect: Trade
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_trade.dissect = function(buffer, offset, packet, parent)
  local element = parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.record_trade, buffer(), "Trade", "Trade")
  return ice_icedataservices_asx24futures_plustick_v2026_10_12.record_trade.fields(buffer, offset, packet, element)
end

-- Quote
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_quote = {}

-- The record type Q selects Quote, which a line of it is shown as
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_quote.name = "Quote"

-- The delimiter every field of Quote ends at, which its line is split at
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_quote.delimiter = "|"

-- Dissect Fields: Quote
-- Split: every field of Quote ends at "|" and none is quoted, so its line is split once and each field handed its range
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_quote.fields = function(buffer, offset, packet, parent)
  local starts, lengths = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.split(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.record_quote.delimiter)
  if #starts > 16 then
    return nil, "Quote: the line has " .. #starts .. " fields, its layout 16"
  end
  local index = nil
  local failure = nil

  -- Record Type: field 1
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.record_type.dissect(buffer, starts[1], packet, parent, lengths[1])
  if failure ~= nil then
    return nil, failure
  end

  -- TAS.SEQ: field 2
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.tasseq.dissect(buffer, starts[2], packet, parent, lengths[2])
  if failure ~= nil then
    return nil, failure
  end

  -- RNR.END.EXCH.SEQ: field 3
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.rnrendexchseq.dissect(buffer, starts[3], packet, parent, lengths[3])
  if failure ~= nil then
    return nil, failure
  end

  -- ACTIVITY.DATETIME: field 4
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.activitydatetime.dissect(buffer, starts[4], packet, parent, lengths[4])
  if failure ~= nil then
    return nil, failure
  end

  -- BID.PRICE: field 5
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.bidprice.dissect(buffer, starts[5], packet, parent, lengths[5])
  if failure ~= nil then
    return nil, failure
  end

  -- BID.SIZE: field 6
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.bidsize.dissect(buffer, starts[6], packet, parent, lengths[6])
  if failure ~= nil then
    return nil, failure
  end

  -- ASK.PRICE: field 7
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.askprice.dissect(buffer, starts[7], packet, parent, lengths[7])
  if failure ~= nil then
    return nil, failure
  end

  -- ASK.SIZE: field 8
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.asksize.dissect(buffer, starts[8], packet, parent, lengths[8])
  if failure ~= nil then
    return nil, failure
  end

  -- QUOTE.COND_1: field 9
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.quotecond_1.dissect(buffer, starts[9], packet, parent, lengths[9])
  if failure ~= nil then
    return nil, failure
  end

  -- PART.CODE: field 10
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.partcode.dissect(buffer, starts[10], packet, parent, lengths[10])
  if failure ~= nil then
    return nil, failure
  end

  -- QUOTE.DATETIME: field 11
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.quotedatetime.dissect(buffer, starts[11], packet, parent, lengths[11])
  if failure ~= nil then
    return nil, failure
  end

  -- EXCH.MESSAGE.TIMESTAMP: field 12
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.exchmessagetimestamp.dissect(buffer, starts[12], packet, parent, lengths[12])
  if failure ~= nil then
    return nil, failure
  end

  -- IMPLIED.BID.SIZE: field 13
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.impliedbidsize.dissect(buffer, starts[13], packet, parent, lengths[13])
  if failure ~= nil then
    return nil, failure
  end

  -- IMPLIED.ASK.SIZE: field 14
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.impliedasksize.dissect(buffer, starts[14], packet, parent, lengths[14])
  if failure ~= nil then
    return nil, failure
  end

  -- BID.DATETIME: field 15
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.biddatetime.dissect(buffer, starts[15], packet, parent, lengths[15])
  if failure ~= nil then
    return nil, failure
  end

  -- ASK.DATETIME: field 16
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.askdatetime.dissect(buffer, starts[16], packet, parent, lengths[16])
  if failure ~= nil then
    return nil, failure
  end

  return #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current + 1
end

-- Dissect: Quote
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_quote.dissect = function(buffer, offset, packet, parent)
  local element = parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.record_quote, buffer(), "Quote", "Quote")
  return ice_icedataservices_asx24futures_plustick_v2026_10_12.record_quote.fields(buffer, offset, packet, element)
end

-- Status
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_status = {}

-- The record type S selects Status, which a line of it is shown as
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_status.name = "Status"

-- The delimiter every field of Status ends at, which its line is split at
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_status.delimiter = "|"

-- Dissect Fields: Status
-- Split: every field of Status ends at "|" and none is quoted, so its line is split once and each field handed its range
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_status.fields = function(buffer, offset, packet, parent)
  local starts, lengths = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.split(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.record_status.delimiter)
  if #starts > 7 then
    return nil, "Status: the line has " .. #starts .. " fields, its layout 7"
  end
  local index = nil
  local failure = nil

  -- Record Type: field 1
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.record_type.dissect(buffer, starts[1], packet, parent, lengths[1])
  if failure ~= nil then
    return nil, failure
  end

  -- TAS.SEQ: field 2
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.tasseq.dissect(buffer, starts[2], packet, parent, lengths[2])
  if failure ~= nil then
    return nil, failure
  end

  -- ACTIVITY.DATETIME: field 3
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.activitydatetime.dissect(buffer, starts[3], packet, parent, lengths[3])
  if failure ~= nil then
    return nil, failure
  end

  -- INSTR.STATUS: field 4
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.instrstatus.dissect(buffer, starts[4], packet, parent, lengths[4])
  if failure ~= nil then
    return nil, failure
  end

  -- EXCH.MESSAGE.TIMESTAMP: field 5
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.exchmessagetimestamp.dissect(buffer, starts[5], packet, parent, lengths[5])
  if failure ~= nil then
    return nil, failure
  end

  -- TRADABLE.STATUS: field 6
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.tradablestatus.dissect(buffer, starts[6], packet, parent, lengths[6])
  if failure ~= nil then
    return nil, failure
  end

  -- MARKET.PHASE: field 7
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.marketphase.dissect(buffer, starts[7], packet, parent, lengths[7])
  if failure ~= nil then
    return nil, failure
  end

  return #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current + 1
end

-- Dissect: Status
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_status.dissect = function(buffer, offset, packet, parent)
  local element = parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.record_status, buffer(), "Status", "Status")
  return ice_icedataservices_asx24futures_plustick_v2026_10_12.record_status.fields(buffer, offset, packet, element)
end

-- Summary
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_summary = {}

-- The record type P selects Summary, which a line of it is shown as
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_summary.name = "Summary"

-- The delimiter every field of Summary ends at, which its line is split at
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_summary.delimiter = "|"

-- Dissect Fields: Summary
-- Split: every field of Summary ends at "|" and none is quoted, so its line is split once and each field handed its range
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_summary.fields = function(buffer, offset, packet, parent)
  local starts, lengths = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.split(offset, ice_icedataservices_asx24futures_plustick_v2026_10_12.record_summary.delimiter)
  if #starts > 2 then
    return nil, "Summary: the line has " .. #starts .. " fields, its layout 2"
  end
  local index = nil
  local failure = nil

  -- Record Type: field 1
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.record_type.dissect(buffer, starts[1], packet, parent, lengths[1])
  if failure ~= nil then
    return nil, failure
  end

  -- ROW.SUMMARY: field 2
  index, failure = ice_icedataservices_asx24futures_plustick_v2026_10_12.rowsummary.dissect(buffer, starts[2], packet, parent, lengths[2])
  if failure ~= nil then
    return nil, failure
  end

  return #ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current + 1
end

-- Dissect: Summary
ice_icedataservices_asx24futures_plustick_v2026_10_12.record_summary.dissect = function(buffer, offset, packet, parent)
  local element = parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.record_summary, buffer(), "Summary", "Summary")
  return ice_icedataservices_asx24futures_plustick_v2026_10_12.record_summary.fields(buffer, offset, packet, element)
end

-- The record each record type selects: a line's first field, Record Type
ice_icedataservices_asx24futures_plustick_v2026_10_12.records = {
  ["H"] = ice_icedataservices_asx24futures_plustick_v2026_10_12.record_instrument,
  ["T"] = ice_icedataservices_asx24futures_plustick_v2026_10_12.record_trade,
  ["Q"] = ice_icedataservices_asx24futures_plustick_v2026_10_12.record_quote,
  ["S"] = ice_icedataservices_asx24futures_plustick_v2026_10_12.record_status,
  ["P"] = ice_icedataservices_asx24futures_plustick_v2026_10_12.record_summary,
}


-----------------------------------------------------------------------
-- Protocol Lines
-----------------------------------------------------------------------

-- The text between a line's fields, its Packet rule's Delimiter: "|"
ice_icedataservices_asx24futures_plustick_v2026_10_12.delimiter = "|"

-- The character ending a line, its Packet rule's Terminator: 10
ice_icedataservices_asx24futures_plustick_v2026_10_12.terminator = "\010"

-- A ##name=value header line, its header record named: its name and its value, the line split once
-- at its delimiter after its prefix
ice_icedataservices_asx24futures_plustick_v2026_10_12.property = function(buffer, packet, parent, header)
  packet.cols.info = header.name
  local item = parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.property, buffer(), header.name, header.name)
  local line = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current
  local offset = #header.prefix
  local at = string.find(line, header.delimiter, offset + 1, true)
  item:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.property_name, buffer(offset, at - 1 - offset))
  local value = at - 1 + #header.delimiter
  item:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.property_value, buffer(value, #line - value))
end
-- A layout header line, its header record named: the record type it lays out, then each field its
-- lines hold, the line split at its delimiter after its prefix
ice_icedataservices_asx24futures_plustick_v2026_10_12.layout = function(buffer, packet, parent, header)
  packet.cols.info = header.name
  local item = parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.layout, buffer(), header.name, header.name)
  local starts, lengths = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.split(#header.prefix, header.delimiter)
  item:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.layout_letter, buffer(starts[1], lengths[1]))
  for index = 2, #starts do
    local range = buffer(starts[index], lengths[index])
    item:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.layout_column, range, range:string(ENC_ASCII), "Field " .. index .. ": " .. range:string(ENC_ASCII))
  end
end
-- The layouts a file states in its header, in model order: each header line, the header record it is,
-- the prefix and delimiter it is split at, and how it is shown
ice_icedataservices_asx24futures_plustick_v2026_10_12.variants = {
  {
    name = "Futures.v2026.10.12",
    headers = {
      { text = "##TICKER.PLANT=TickHive", name = "Property TICKER.PLANT", prefix = "##", delimiter = "=", show = ice_icedataservices_asx24futures_plustick_v2026_10_12.property },
      { text = "##PRIMARY.FILE.SIGNATURE=na (Internal Use)", name = "Property PRIMARY.FILE.SIGNATURE", prefix = "##", delimiter = "=", show = ice_icedataservices_asx24futures_plustick_v2026_10_12.property },
      { text = "#D=H|<ENUM.SRC.ID>|<SYMBOL.TICKER>|<CURRENCY.STRING>|<ISIN>|<DISPLAY.PRECISION>|<TRADE.OPEN>|<OPEN_INT>|<YEST.TRADE.CLOSE>|<YEST.TRADE.VOL>|<SETTLE.DATE>|<SETTLE.PRICE>|<EXPIRATION.DATE>|<FRONT.MONTH.CONTRACT>|<ENUM.INSTR.TYPE>|<LOT.SIZE>|<CONTRACT.SIZE>|<VARIABLE.TICK.SIZE>|<PRODUCT.ROOT>|<SYMBOL.EXCH.TICKER>", name = "Layout H", prefix = "#D=", delimiter = "|", show = ice_icedataservices_asx24futures_plustick_v2026_10_12.layout },
      { text = "#D=T|<TAS.SEQ>|<RNR.END.EXCH.SEQ>|<ACTIVITY.DATETIME>|<TRADE.PRICE>|<TRADE.SIZE>|<TRADE.COND_1>|<PART.CODE>|<VWAP>|<TRADE.DATETIME>|<EXCH.MESSAGE.TIMESTAMP>|<TRADE.COND_2>|<TRADE.COND_3>|<TRADE.OFFICIAL.TIME>|<TRADE.COND_4>|<TRADE.COND_5>|<EXTENDED.TRADE.COND>|<TRADE.OFFICIAL.DATE>|<RETRANSMISSION.FLAG>|<AGGRESSOR.SIDE>|<TRADE.UNIQUE.ID>|<COMBINATION.TRADE.ID>|<BUYER.COMBINATION.TRADE.ID>|<SELLER.COMBINATION.TRADE.ID>|<COUNTER.PARTY.ID.STRING>", name = "Layout T", prefix = "#D=", delimiter = "|", show = ice_icedataservices_asx24futures_plustick_v2026_10_12.layout },
      { text = "#D=Q|<TAS.SEQ>|<RNR.END.EXCH.SEQ>|<ACTIVITY.DATETIME>|<BID.PRICE>|<BID.SIZE>|<ASK.PRICE>|<ASK.SIZE>|<QUOTE.COND_1>|<PART.CODE>|<QUOTE.DATETIME>|<EXCH.MESSAGE.TIMESTAMP>|<IMPLIED.BID.SIZE>|<IMPLIED.ASK.SIZE>|<BID.DATETIME>|<ASK.DATETIME>", name = "Layout Q", prefix = "#D=", delimiter = "|", show = ice_icedataservices_asx24futures_plustick_v2026_10_12.layout },
      { text = "#D=S|<TAS.SEQ>|<ACTIVITY.DATETIME>|<INSTR.STATUS>|<EXCH.MESSAGE.TIMESTAMP>|<TRADABLE.STATUS>|<MARKET.PHASE>", name = "Layout S", prefix = "#D=", delimiter = "|", show = ice_icedataservices_asx24futures_plustick_v2026_10_12.layout },
      { text = "#D=P|<ROW.SUMMARY>", name = "Layout P", prefix = "#D=", delimiter = "|", show = ice_icedataservices_asx24futures_plustick_v2026_10_12.layout },
    },
  },
}

-- The layout the file's lines are read by: the one its file handler found, the first where none did
ice_icedataservices_asx24futures_plustick_v2026_10_12.variant = function()
  if ice_icedataservices_asx24futures_plustick_v2026_10_12.file == nil or ice_icedataservices_asx24futures_plustick_v2026_10_12.file.variant == nil then
    return 1
  end
  return ice_icedataservices_asx24futures_plustick_v2026_10_12.file.variant
end

-- A line the layout does not read, and why: its fields, as they are
ice_icedataservices_asx24futures_plustick_v2026_10_12.outside = function(buffer, packet, parent, reason)
  packet.cols.info = "Line Outside Layout"
  local item = parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.fields.line_outside_layout, buffer(), reason, "Line Outside Layout: " .. reason)
  item:add_proto_expert_info(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.experts.line_outside_layout, reason)
  local starts, lengths = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.split(0, ice_icedataservices_asx24futures_plustick_v2026_10_12.delimiter)
  for index = 1, #starts do
    local range = buffer(starts[index], lengths[index])
    item:add(range, "Field " .. index .. ": " .. range:string(ENC_ASCII))
  end
end

-- The header line of the layout a line is, nil for a line that is none
ice_icedataservices_asx24futures_plustick_v2026_10_12.headed = function(line, variant)
  for index, header in ipairs(ice_icedataservices_asx24futures_plustick_v2026_10_12.variants[variant].headers) do
    if line == header.text then
      return header
    end
  end
  return nil
end

-- A line's record type: its first field, Record Type, to its delimiter
ice_icedataservices_asx24futures_plustick_v2026_10_12.typed = function()
  local length = ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.scan(0, ice_icedataservices_asx24futures_plustick_v2026_10_12.record_type.delimiter)
  return string.sub(ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current, 1, length)
end

-- Dissect a line: a header line, or the record its record type selects, or a line outside the layout
ice_icedataservices_asx24futures_plustick_v2026_10_12.line = function(buffer, packet, parent)
  local line = buffer:raw()
  ice_icedataservices_asx24futures_plustick_v2026_10_12.lines.current = line
  local header = ice_icedataservices_asx24futures_plustick_v2026_10_12.headed(line, ice_icedataservices_asx24futures_plustick_v2026_10_12.variant())
  if header ~= nil then
    return header.show(buffer, packet, parent, header)
  end

  local recordtype = ice_icedataservices_asx24futures_plustick_v2026_10_12.typed()
  local record = ice_icedataservices_asx24futures_plustick_v2026_10_12.records[recordtype]
  if record == nil then
    return ice_icedataservices_asx24futures_plustick_v2026_10_12.outside(buffer, packet, parent, "Record Type \"" .. recordtype .. "\" selects no record")
  end

  -- read first with no tree, so a line its record does not read is shown whole
  local index, failure = record.fields(buffer, 0, packet, nil)
  if failure ~= nil then
    return ice_icedataservices_asx24futures_plustick_v2026_10_12.outside(buffer, packet, parent, failure)
  end

  packet.cols.info = record.name
  record.dissect(buffer, 0, packet, parent)
end
-- Dissect Ice IceDataServices Asx24Futures PlusTick 2026.10.12
function omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.dissector(buffer, packet, parent)
  packet.cols.protocol = omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.name

  local protocol = parent:add(omi_ice_icedataservices_asx24futures_plustick_v2026_10_12, buffer(), omi_ice_icedataservices_asx24futures_plustick_v2026_10_12.description, "(" .. buffer:len() .. " Bytes)")
  return ice_icedataservices_asx24futures_plustick_v2026_10_12.line(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- File Lines
-----------------------------------------------------------------------

-- A file's line, the one at an offset or with none the next, to the terminator: its offset, its text,
-- and its frame's time. The file is read a block at a time, the block kept in the capture's private
-- table; a line read again reads a block of its own
ice_icedataservices_asx24futures_plustick_v2026_10_12.read = function(file, capture, offset)
  local block = capture.private_table
  if offset ~= nil then
    file:seek("set", offset)
    block = { data = "", at = 1, offset = offset }
  elseif block.data == nil then
    block.data = ""
    block.at = 1
    block.offset = 0
  end
  local start = nil
  local line = nil
  while line == nil do
    local ends = string.find(block.data, ice_icedataservices_asx24futures_plustick_v2026_10_12.terminator, block.at, true)
    if ends ~= nil then
      start = block.offset + block.at - 1
      line = string.sub(block.data, block.at, ends - 1)
      block.at = ends + #ice_icedataservices_asx24futures_plustick_v2026_10_12.terminator
    else
      local more = file:read(65536)
      if more == nil or #more == 0 then
        if block.at > #block.data then
          return nil
        end
        start = block.offset + block.at - 1
        line = string.sub(block.data, block.at)
        block.at = #block.data + 1
      else
        block.offset = block.offset + block.at - 1
        block.data = string.sub(block.data, block.at) .. more
        block.at = 1
      end
    end
  end
  -- no record states a time a line is split to, so a frame has none
  return start, line
end

-----------------------------------------------------------------------
-- File Handler
-----------------------------------------------------------------------

-- File handler state
ice_icedataservices_asx24futures_plustick_v2026_10_12.file = {}

-- Exported pdu tags each frame starts with: the dissector it is for, then the end of the tags
ice_icedataservices_asx24futures_plustick_v2026_10_12.file.prefix = "\000\012\000\060omi.ice.icedataservices.asx24futures.plustick.v2026.10.12\000\000\000\000\000\000\000"

-- The text a file of each layout starts with
ice_icedataservices_asx24futures_plustick_v2026_10_12.file.signatures = {
  "##TICKER.PLANT=TickHive\010##PRIMARY.FILE.SIGNATURE=na (Internal Use)\010#D=H|<ENUM.SRC.ID>|<SYMBOL.TICKER>|<CURRENCY.STRING>|<ISIN>|<DISPLAY.PRECISION>|<TRADE.OPEN>|<OPEN_INT>|<YEST.TRADE.CLOSE>|<YEST.TRADE.VOL>|<SETTLE.DATE>|<SETTLE.PRICE>|<EXPIRATION.DATE>|<FRONT.MONTH.CONTRACT>|<ENUM.INSTR.TYPE>|<LOT.SIZE>|<CONTRACT.SIZE>|<VARIABLE.TICK.SIZE>|<PRODUCT.ROOT>|<SYMBOL.EXCH.TICKER>\010#D=T|<TAS.SEQ>|<RNR.END.EXCH.SEQ>|<ACTIVITY.DATETIME>|<TRADE.PRICE>|<TRADE.SIZE>|<TRADE.COND_1>|<PART.CODE>|<VWAP>|<TRADE.DATETIME>|<EXCH.MESSAGE.TIMESTAMP>|<TRADE.COND_2>|<TRADE.COND_3>|<TRADE.OFFICIAL.TIME>|<TRADE.COND_4>|<TRADE.COND_5>|<EXTENDED.TRADE.COND>|<TRADE.OFFICIAL.DATE>|<RETRANSMISSION.FLAG>|<AGGRESSOR.SIDE>|<TRADE.UNIQUE.ID>|<COMBINATION.TRADE.ID>|<BUYER.COMBINATION.TRADE.ID>|<SELLER.COMBINATION.TRADE.ID>|<COUNTER.PARTY.ID.STRING>\010#D=Q|<TAS.SEQ>|<RNR.END.EXCH.SEQ>|<ACTIVITY.DATETIME>|<BID.PRICE>|<BID.SIZE>|<ASK.PRICE>|<ASK.SIZE>|<QUOTE.COND_1>|<PART.CODE>|<QUOTE.DATETIME>|<EXCH.MESSAGE.TIMESTAMP>|<IMPLIED.BID.SIZE>|<IMPLIED.ASK.SIZE>|<BID.DATETIME>|<ASK.DATETIME>\010#D=S|<TAS.SEQ>|<ACTIVITY.DATETIME>|<INSTR.STATUS>|<EXCH.MESSAGE.TIMESTAMP>|<TRADABLE.STATUS>|<MARKET.PHASE>\010#D=P|<ROW.SUMMARY>\010",
}

-- The layout a file's first bytes are the signature of, or nil for a file of no layout
ice_icedataservices_asx24futures_plustick_v2026_10_12.file.layout = function(file)
  local first = file:read(1191)
  if first == nil then
    return nil
  end
  for index, signature in ipairs(ice_icedataservices_asx24futures_plustick_v2026_10_12.file.signatures) do
    if first:sub(1, #signature) == signature then
      return index
    end
  end
  return nil
end

-- A record read into a frame, the one at an offset or with none the next: its offset, nil at the end of the file
ice_icedataservices_asx24futures_plustick_v2026_10_12.file.frame = function(file, capture, frame, offset)
  local at, data, seconds, nanoseconds = ice_icedataservices_asx24futures_plustick_v2026_10_12.read(file, capture, offset)
  if at == nil then
    return nil
  end
  data = ice_icedataservices_asx24futures_plustick_v2026_10_12.file.prefix .. data
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

-- Ice IceDataServices Asx24Futures PlusTick 2026.10.12 (Omi) file handler: a magic number reader, its signatures the magic
ice_icedataservices_asx24futures_plustick_v2026_10_12.file.handler = FileHandler.new("Ice IceDataServices Asx24Futures PlusTick 2026.10.12 (Omi)", "omi_ice_icedataservices_asx24futures_plustick_v2026_10_12", "Ice IceDataServices Asx24Futures PlusTick 2026.10.12 (Omi) file", "rm")

-- A file of a layout is this protocol's; read from its start, so its first line is the first frame
ice_icedataservices_asx24futures_plustick_v2026_10_12.file.handler.read_open = function(file, capture)
  local layout = ice_icedataservices_asx24futures_plustick_v2026_10_12.file.layout(file)
  if layout == nil then
    return false
  end
  ice_icedataservices_asx24futures_plustick_v2026_10_12.file.variant = layout
  file:seek("set", 0)
  capture.private_table = {}
  capture.encap = wtap_encaps.WIRESHARK_UPPER_PDU
  capture.time_precision = wtap_tsprecs.NSEC
  return true
end

-- The next record, returning its offset in the file
ice_icedataservices_asx24futures_plustick_v2026_10_12.file.handler.read = function(file, capture, frame)
  local offset = ice_icedataservices_asx24futures_plustick_v2026_10_12.file.frame(file, capture, frame, nil)
  if offset == nil then
    return false
  end
  return offset
end

-- The record at an offset read before
ice_icedataservices_asx24futures_plustick_v2026_10_12.file.handler.seek_read = function(file, capture, frame, offset)
  return ice_icedataservices_asx24futures_plustick_v2026_10_12.file.frame(file, capture, frame, offset) ~= nil
end

-- Nothing is held open beyond the file Wireshark closes
ice_icedataservices_asx24futures_plustick_v2026_10_12.file.handler.read_close = function(file, capture)
  return true
end

ice_icedataservices_asx24futures_plustick_v2026_10_12.file.handler.seq_read_close = function(file, capture)
  return true
end

-- Register Ice IceDataServices Asx24Futures PlusTick 2026.10.12 (Omi) files
register_filehandler(ice_icedataservices_asx24futures_plustick_v2026_10_12.file.handler)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Intercontinental Exchange
--   Version: 2026.10.12
--   Date: Monday, October 12, 2026
--   Specification: ASX_24_and_New_Zealand_Futures_and_Options_2025-01-21.pdf
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
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-----------------------------------------------------------------------
