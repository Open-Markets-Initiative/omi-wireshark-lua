-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe TitaniumConsolidated TcpOneEquities CboeOne 1.4.15 Protocol
local omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15 = Proto("Omi.Cboe.TitaniumConsolidated.TcpOneEquities.CboeOne.v1.4.15", "Cboe TitaniumConsolidated TcpOneEquities CboeOne 1.4.15")

-- Protocol table
local cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe TitaniumConsolidated TcpOneEquities CboeOne 1.4.15 Fields
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.adap_block = ProtoField.new("Adap Block", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.adapblock", ftypes.STRING)
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.adap_block_size = ProtoField.new("Adap Block Size", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.adapblocksize", ftypes.UINT8, nil, nil, nil, "Size of each ADAP Block message")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.adap_blocks = ProtoField.new("Adap Blocks", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.adapblocks", ftypes.UINT8, nil, nil, nil, "Number of ADAP Block message to follow")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.adap_complete = ProtoField.new("Adap Complete", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.adapcomplete", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.adap_flags = ProtoField.new("Adap Flags", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.adapflags", ftypes.STRING)
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.cboe_cumulative_executed_volume = ProtoField.new("Cboe Cumulative Executed Volume", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.cboecumulativeexecutedvolume", ftypes.UINT64, nil, nil, nil, "Cumulative number of shares traded today across all applicable Cboe books.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.clear_adap = ProtoField.new("Clear Adap", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.clearadap", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.closing_price = ProtoField.new("Closing Price", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.closingprice", ftypes.DOUBLE, nil, nil, nil, "Closing Price.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.consolidated_best_ask_price = ProtoField.new("Consolidated Best Ask Price", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.consolidatedbestaskprice", ftypes.DOUBLE, nil, nil, nil, "Cboe Consolidated best ask price.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.consolidated_best_ask_quantity = ProtoField.new("Consolidated Best Ask Quantity", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.consolidatedbestaskquantity", ftypes.UINT64, nil, nil, nil, "Cboe Consolidated number of sell-side shares available for this symbol.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.consolidated_best_bid_price = ProtoField.new("Consolidated Best Bid Price", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.consolidatedbestbidprice", ftypes.DOUBLE, nil, nil, nil, "Cboe Consolidated best bid price.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.consolidated_best_bid_quantity = ProtoField.new("Consolidated Best Bid Quantity", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.consolidatedbestbidquantity", ftypes.UINT64, nil, nil, nil, "Cboe Consolidated number of buy-side shares available for this symbol.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.consolidated_best_quote_price = ProtoField.new("Consolidated Best Quote Price", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.consolidatedbestquoteprice", ftypes.DOUBLE, nil, nil, nil, "Cboe Consolidated best price.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.consolidated_quote_quantity = ProtoField.new("Consolidated Quote Quantity", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.consolidatedquotequantity", ftypes.UINT64, nil, nil, nil, "Cboe Consolidated number of shares available for this symbol.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.data_source = ProtoField.new("Data Source", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.datasource", ftypes.STRING, nil, nil, nil, "C=CTA U=UTP")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.filler = ProtoField.new("Filler", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.filler", ftypes.STRING, nil, nil, nil, "(space filled)")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.fractional_symbol_summary_flags = ProtoField.new("Fractional Symbol Summary Flags", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.fractionalsymbolsummaryflags", ftypes.STRING)
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.fractional_trade_break_flags = ProtoField.new("Fractional Trade Break Flags", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.fractionaltradebreakflags", ftypes.STRING)
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.fractional_trade_flags = ProtoField.new("Fractional Trade Flags", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.fractionaltradeflags", ftypes.STRING)
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.high_price = ProtoField.new("High Price", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.highprice", ftypes.DOUBLE, nil, nil, nil, "Highest trade price of the day.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.last_price = ProtoField.new("Last Price", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.lastprice", ftypes.DOUBLE, nil, nil, nil, "Last trade price.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.last_quantity = ProtoField.new("Last Quantity", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.lastquantity", ftypes.UINT64, nil, nil, nil, "Last trade quantity.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.last_sale_eligible = ProtoField.new("Last Sale Eligible", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.lastsaleeligible", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.last_update_timestamp = ProtoField.new("Last Update Timestamp", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.lastupdatetimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Timestamp of the last matching engine message that updated the quote information for this symbol in the Cboe One server's cache. Encoded as the number of nanoseconds since midnight (effective 11/02/26, since epoch).")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.last_update_timestamp_utc = ProtoField.new("Last Update Timestamp", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.lastupdatetimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Timestamp of the last matching engine message that updated the quote information for this symbol in the Cboe One server's cache. Encoded as the number of nanoseconds since midnight (effective 11/02/26, since epoch).")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.length = ProtoField.new("Length", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.length", ftypes.UINT16, nil, nil, nil, "Length of entire block of messages. Includes this header and Message Count messages to follow")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.long_update_adap_block = ProtoField.new("Long Update Adap Block", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.longupdateadapblock", ftypes.STRING)
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.low_price = ProtoField.new("Low Price", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.lowprice", ftypes.DOUBLE, nil, nil, nil, "Lowest trade price of the day.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.market_center = ProtoField.new("Market Center", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.marketcenter", ftypes.STRING, nil, nil, nil, "* = All Cboe Markets for this feed Y=BYX Z=BZX A=EDGA X=EDGX")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.market_center_execution_id = ProtoField.new("Market Center Execution Id", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.marketcenterexecutionid", ftypes.UINT64, nil, nil, nil, "Market center specific execution identifier of this Execution. Execution ID is also referenced in the Trade Break message.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.market_status = ProtoField.new("Market Status", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.marketstatus", ftypes.STRING, nil, nil, nil, "N=Normal E=Excluded from Symbol Summary and ADAP updates I=Incomplete")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.message_count = ProtoField.new("Message Count", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.messagecount", ftypes.UINT8, nil, nil, nil, "Number of messages to follow this header")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.message_length = ProtoField.new("Message Length", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.messagelength", ftypes.UINT8, nil, nil, nil, "Current Pitch message length")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.message_type = ProtoField.new("Message Type", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.national_cumulative_volume = ProtoField.new("National Cumulative Volume", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.nationalcumulativevolume", ftypes.DOUBLE, nil, nil, nil, "Cumulative number of shares traded today as reported to the CTA and UTP SIPs.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.national_volume_status = ProtoField.new("National Volume Status", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.nationalvolumestatus", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.next_sequence = ProtoField.new("Next Sequence", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.nextsequence", ftypes.UINT32, nil, nil, nil, "Sequence number of the next sequenced message expected by the user.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.open_close_indicator = ProtoField.new("Open Close Indicator", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.opencloseindicator", ftypes.STRING, nil, nil, nil, "O=Price is the Opening price C=Price is the Closing price")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.opening_price = ProtoField.new("Opening Price", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.openingprice", ftypes.DOUBLE, nil, nil, nil, "Opening Price. 0 if the system has not received an opening price for the security.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.password = ProtoField.new("Password", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.password", ftypes.STRING, nil, nil, nil, "Password supplied by Cboe")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.price_long = ProtoField.new("Price Long", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.pricelong", ftypes.DOUBLE, nil, nil, nil, "Opening/Closing Price.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.price_short = ProtoField.new("Price Short", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.priceshort", ftypes.DOUBLE, nil, nil, nil, "Price level to add/update for Market Center's ADAP book.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.quantity_long = ProtoField.new("Quantity Long", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.quantitylong", ftypes.UINT64, nil, nil, nil, "Quantity of shares at this price level in the Market Center's ADAP book. A value of zero implies deletion of this ADAP level.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.quantityshort", ftypes.UINT32, nil, nil, nil, "Quantity of shares at this price level in the Market Center's ADAP book. A value of zero implies deletion of this ADAP level.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.regshoaction", ftypes.STRING, nil, nil, nil, "0=No price test in effect 1=Reg SHO price test restriction in effect")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.reserved1", ftypes.UINT8, nil, nil, nil, "Reserved")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.retail_price_improvement = ProtoField.new("Retail Price Improvement", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.retailpriceimprovement", ftypes.STRING, nil, nil, nil, "B=Buy Side RPI S=Sell Side RPI A=Buy & Sell RPI N=No RPI")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.sequence = ProtoField.new("Sequence", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.sequence", ftypes.UINT32, nil, nil, nil, "Sequence number that reflects that last update on the feed.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.session_indicator = ProtoField.new("Session Indicator", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.sessionindicator", ftypes.STRING, nil, nil, nil, "R=Regular trading session P=Pre- or post-market session")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.sessionsubid", ftypes.STRING, nil, nil, nil, "SessionSubId supplied by Cboe.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.short_long_blocks = ProtoField.new("Short Long Blocks", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.shortlongblocks", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.short_update_adap_block = ProtoField.new("Short Update Adap Block", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.shortupdateadapblock", ftypes.STRING)
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.side = ProtoField.new("Side", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.side", ftypes.STRING, nil, nil, nil, "B=Buy Side S=Sell Side")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.sideindicator", ftypes.STRING, nil, nil, nil, "B=Buy Side S=Sell Side")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.sip_volume_status = ProtoField.new("Sip Volume Status", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.sipvolumestatus", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.status = ProtoField.new("Status", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.status", ftypes.STRING, nil, nil, nil, "Accepted or reason for reject")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.symbol = ProtoField.new("Symbol", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.symbol", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.timestamp = ProtoField.new("Timestamp", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Timestamp of when the Market Status changed for the specified Market Center. Encoded as the number of nanoseconds since midnight (effective 11/02/26, since epoch).")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.timestamp_utc = ProtoField.new("Timestamp", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Timestamp of when the Market Status changed for the specified Market Center. Encoded as the number of nanoseconds since midnight (effective 11/02/26, since epoch).")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.trading_status = ProtoField.new("Trading Status", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.tradingstatus", ftypes.STRING, nil, nil, nil, "A=Accepting Orders for Queuing H=Halted Q=Quote-Only S=Exchange Specific Suspension T=Trading")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.transaction_time = ProtoField.new("Transaction Time", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.transactiontime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The time the trade occurred on the specified Market Center. Encoded as the number of nanoseconds since midnight (effective 11/02/26, since epoch).")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.transaction_time_utc = ProtoField.new("Transaction Time", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.transactiontime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The time the trade occurred on the specified Market Center. Encoded as the number of nanoseconds since midnight (effective 11/02/26, since epoch).")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.unit = ProtoField.new("Unit", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.unit", ftypes.UINT8, nil, nil, nil, "Unit that applies to messages included in this header")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.unused_5 = ProtoField.new("Unused 5", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.unused5", ftypes.UINT8, nil, base.DEC, 0xF8)
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.unused_6 = ProtoField.new("Unused 6", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.unused6", ftypes.UINT8, nil, base.DEC, 0xFC)
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.unused_7 = ProtoField.new("Unused 7", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.unused7", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.username = ProtoField.new("Username", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.username", ftypes.STRING, nil, nil, nil, "Username supplied by Cboe")

-- Cboe TitaniumConsolidated TcpOneEquities CboeOne 1.4.15 Framing
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.message = ProtoField.new("Message", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.message", ftypes.STRING)
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.message_header = ProtoField.new("Message Header", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.messageheader", ftypes.STRING)
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.packet = ProtoField.new("Packet", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.packet", ftypes.STRING, nil, nil, nil, "Pitch Tcp Packet")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.packet_header = ProtoField.new("Packet Header", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.packetheader", ftypes.STRING)

-- Cboe TitaniumConsolidated TcpOneEquities 1.4.15 Application Messages
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.adap_message = ProtoField.new("Adap Message", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.adapmessage", ftypes.STRING, nil, nil, nil, "Each ADAP message delivers one or more updates for a Symbol's ADAP book. Each ADAP message contains one or more ADAP Block messages.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.best_quote_update_message = ProtoField.new("Best Quote Update Message", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.bestquoteupdatemessage", ftypes.STRING, nil, nil, nil, "The Best Quote Update message is used to update one side of the Cboe consolidated quote information for a symbol.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.cboe_market_status_message = ProtoField.new("Cboe Market Status Message", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.cboemarketstatusmessage", ftypes.STRING, nil, nil, nil, "The Cboe Market Status message is disseminated to reflect a change in the status of a market.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.cboe_one_login_message = ProtoField.new("Cboe One Login Message", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.cboeoneloginmessage", ftypes.STRING, nil, nil, nil, "The Cboe One Login message is the first message sent to the server by a user's process after its connection to the server is established.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.clear_quote_message = ProtoField.new("Clear Quote Message", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.clearquotemessage", ftypes.STRING, nil, nil, nil, "The Clear Quote message instructs feed recipients to clear all quotes and Summary and/or ADAP information for the specified symbol on the specified market(s).")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.fractional_end_of_day_summary_message = ProtoField.new("Fractional End Of Day Summary Message", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.fractionalendofdaysummarymessage", ftypes.STRING, nil, nil, nil, "The Fractional End of Day Summary message is used to give a consolidated, high-level overview of a security for the day.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.fractional_symbol_summary_message = ProtoField.new("Fractional Symbol Summary Message", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.fractionalsymbolsummarymessage", ftypes.STRING, nil, nil, nil, "The Fractional Symbol Summary message delivers the Cboe consolidated best bid/offer and total executed volume across all applicable Cboe One US Exchanges.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.fractional_trade_break_message = ProtoField.new("Fractional Trade Break Message", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.fractionaltradebreakmessage", ftypes.STRING, nil, nil, nil, "The Fractional Trade Break message is sent whenever an execution on a Cboe exchange is broken.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.fractional_trade_message = ProtoField.new("Fractional Trade Message", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.fractionaltrademessage", ftypes.STRING, nil, nil, nil, "Fractional Trade messages are sent when an order is executed in whole or in part on a Cboe exchange.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.loginresponsemessage", ftypes.STRING, nil, nil, nil, "The Login Response message is sent by the server to a user's process in response to a Login message.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.opening_closing_price_message = ProtoField.new("Opening Closing Price Message", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.openingclosingpricemessage", ftypes.STRING, nil, nil, nil, "The Opening/Closing Price message is used to indicate the Opening or Closing price of a security on any of the Cboe markets and the primary listing market.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.replay_complete_message = ProtoField.new("Replay Complete Message", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.replaycompletemessage", ftypes.STRING, nil, nil, nil, "The Replay Complete message is sent to indicate that messages related to refreshing the state of the Cboe books have been delivered.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.rpi_message = ProtoField.new("Rpi Message", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.rpimessage", ftypes.STRING, nil, nil, nil, "The Retail Price Improvement (RPI) message is a retail liquidity indicator that includes symbol and side, but not price and size.")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.tradingstatusmessage", ftypes.STRING, nil, nil, nil, "The Trading Status message is used to indicate the current trading status of a security on a Cboe exchange.")

-- Cboe TitaniumConsolidated TcpOneEquities CboeOne 1.4.15 Generated Fields
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.adap_block_index = ProtoField.new("Adap Block Index", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.adapblockindex", ftypes.UINT16)
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.message_index = ProtoField.new("Message Index", "cboe.titaniumconsolidated.tcponeequities.cboeone.v1.4.15.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Cboe TitaniumConsolidated TcpOneEquities CboeOne 1.4.15 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe TitaniumConsolidated TcpOneEquities CboeOne 1.4.15 Element Dissection Options
show.repeating_groups = true
show.structs = true
show.application_messages = true
show.headers = true
show.indexes = true

-- Register Cboe TitaniumConsolidated TcpOneEquities CboeOne 1.4.15 Show Options
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.prefs.show_application_messages then
    show.application_messages = omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.prefs.show_headers then
    show.headers = omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.prefs.show_headers
  end
  if show.repeating_groups ~= omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.prefs.show_repeating_groups then
    show.repeating_groups = omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.prefs.show_repeating_groups
  end
  if show.structs ~= omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.prefs.show_structs then
    show.structs = omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.prefs.show_indexes then
    show.indexes = omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.prefs.show_indexes
  end
  if cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.absolute_time_base ~= omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.prefs.absolute_time_base then
    cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.absolute_time_base = omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.prefs.absolute_time_base
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
-- Cboe TitaniumConsolidated TcpOneEquities CboeOne 1.4.15 Fields
-----------------------------------------------------------------------

-- Adap Block Size
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_block_size = {}

-- Size: Adap Block Size
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_block_size.size = 1

-- Display: Adap Block Size
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_block_size.display = function(value)
  return "Adap Block Size: "..value
end

-- Dissect: Adap Block Size
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_block_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_block_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_block_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.adap_block_size, range, value, display)

  return offset + length, value
end

-- Adap Blocks
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_blocks = {}

-- Size: Adap Blocks
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_blocks.size = 1

-- Display: Adap Blocks
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_blocks.display = function(value)
  return "Adap Blocks: "..value
end

-- Dissect: Adap Blocks
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_blocks.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_blocks.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_blocks.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.adap_blocks, range, value, display)

  return offset + length, value
end

-- Cboe Cumulative Executed Volume
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_cumulative_executed_volume = {}

-- Size: Cboe Cumulative Executed Volume
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_cumulative_executed_volume.size = 8

-- Display: Cboe Cumulative Executed Volume
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_cumulative_executed_volume.display = function(value)
  return "Cboe Cumulative Executed Volume: "..value
end

-- Dissect: Cboe Cumulative Executed Volume
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_cumulative_executed_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_cumulative_executed_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_cumulative_executed_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.cboe_cumulative_executed_volume, range, value, display)

  return offset + length, value
end

-- Closing Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.closing_price = {}

-- Size: Closing Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.closing_price.size = 8

-- Display: Closing Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Translate: Closing Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.closing_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Closing Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.closing_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.closing_price.translate(raw)
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Consolidated Best Ask Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_ask_price = {}

-- Size: Consolidated Best Ask Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_ask_price.size = 8

-- Display: Consolidated Best Ask Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_ask_price.display = function(value)
  return "Consolidated Best Ask Price: "..value
end

-- Translate: Consolidated Best Ask Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_ask_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Consolidated Best Ask Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_ask_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_ask_price.translate(raw)
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.consolidated_best_ask_price, range, value, display)

  return offset + length, value
end

-- Consolidated Best Ask Quantity
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_ask_quantity = {}

-- Size: Consolidated Best Ask Quantity
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_ask_quantity.size = 8

-- Display: Consolidated Best Ask Quantity
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_ask_quantity.display = function(value)
  return "Consolidated Best Ask Quantity: "..value
end

-- Dissect: Consolidated Best Ask Quantity
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_ask_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_ask_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_ask_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.consolidated_best_ask_quantity, range, value, display)

  return offset + length, value
end

-- Consolidated Best Bid Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_bid_price = {}

-- Size: Consolidated Best Bid Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_bid_price.size = 8

-- Display: Consolidated Best Bid Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_bid_price.display = function(value)
  return "Consolidated Best Bid Price: "..value
end

-- Translate: Consolidated Best Bid Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_bid_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Consolidated Best Bid Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_bid_price.translate(raw)
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.consolidated_best_bid_price, range, value, display)

  return offset + length, value
end

-- Consolidated Best Bid Quantity
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_bid_quantity = {}

-- Size: Consolidated Best Bid Quantity
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_bid_quantity.size = 8

-- Display: Consolidated Best Bid Quantity
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_bid_quantity.display = function(value)
  return "Consolidated Best Bid Quantity: "..value
end

-- Dissect: Consolidated Best Bid Quantity
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_bid_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_bid_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_bid_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.consolidated_best_bid_quantity, range, value, display)

  return offset + length, value
end

-- Consolidated Best Quote Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_quote_price = {}

-- Size: Consolidated Best Quote Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_quote_price.size = 8

-- Display: Consolidated Best Quote Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_quote_price.display = function(value)
  return "Consolidated Best Quote Price: "..value
end

-- Translate: Consolidated Best Quote Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_quote_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Consolidated Best Quote Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_quote_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_quote_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_quote_price.translate(raw)
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_quote_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.consolidated_best_quote_price, range, value, display)

  return offset + length, value
end

-- Consolidated Quote Quantity
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_quote_quantity = {}

-- Size: Consolidated Quote Quantity
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_quote_quantity.size = 8

-- Display: Consolidated Quote Quantity
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_quote_quantity.display = function(value)
  return "Consolidated Quote Quantity: "..value
end

-- Dissect: Consolidated Quote Quantity
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_quote_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_quote_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_quote_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.consolidated_quote_quantity, range, value, display)

  return offset + length, value
end

-- Data Source
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.data_source = {}

-- Size: Data Source
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.data_source.size = 1

-- Display: Data Source
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.data_source.labels = {
  ["C"] = "Data Source: Cta (C)",
  ["U"] = "Data Source: Utp (U)",
}

cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.data_source.display = function(value)
  return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.data_source.labels[value] or "Data Source: Unknown("..value..")"
end

-- Dissect: Data Source
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.data_source.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.data_source.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.data_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.data_source, range, value, display)

  return offset + length, value
end

-- Filler
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.filler = {}

-- Size: Filler
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.filler.size = 2

-- Display: Filler
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.filler.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.filler.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.filler, range, value, display)

  return offset + length, value
end

-- High Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.high_price = {}

-- Size: High Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.high_price.size = 8

-- Display: High Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.high_price.display = function(value)
  return "High Price: "..value
end

-- Translate: High Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.high_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: High Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.high_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.high_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.high_price.translate(raw)
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.high_price, range, value, display)

  return offset + length, value
end

-- Last Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_price = {}

-- Size: Last Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_price.size = 8

-- Display: Last Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_price.translate(raw)
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.last_price, range, value, display)

  return offset + length, value
end

-- Last Quantity
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_quantity = {}

-- Size: Last Quantity
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_quantity.size = 8

-- Display: Last Quantity
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_quantity.display = function(value)
  return "Last Quantity: "..value
end

-- Dissect: Last Quantity
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.last_quantity, range, value, display)

  return offset + length, value
end

-- Last Update Timestamp
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_update_timestamp = {}

-- Size: Last Update Timestamp
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_update_timestamp.size = 8

-- Dissect: Last Update Timestamp
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_update_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_update_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.last_update_timestamp
  if cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.absolute_time_base == 1 then field = omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.last_update_timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Length
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.length = {}

-- Size: Length
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.length.size = 2

-- Display: Length
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.length, range, value, display)

  return offset + length, value
end

-- Low Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.low_price = {}

-- Size: Low Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.low_price.size = 8

-- Display: Low Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.low_price.display = function(value)
  return "Low Price: "..value
end

-- Translate: Low Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.low_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Low Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.low_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.low_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.low_price.translate(raw)
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.low_price, range, value, display)

  return offset + length, value
end

-- Market Center
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center = {}

-- Size: Market Center
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.size = 1

-- Display: Market Center
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.labels = {
  ["*"] = "Market Center: All Cboe Markets (*)",
  ["Y"] = "Market Center: Byx (Y)",
  ["Z"] = "Market Center: Bzx (Z)",
  ["A"] = "Market Center: Edga (A)",
  ["X"] = "Market Center: Edgx (X)",
  ["C"] = "Market Center: Cta (C)",
  ["U"] = "Market Center: Utp (U)",
}

cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.display = function(value)
  return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.labels[value] or "Market Center: Unknown("..value..")"
end

-- Dissect: Market Center
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.market_center, range, value, display)

  return offset + length, value
end

-- Market Center Execution Id
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center_execution_id = {}

-- Size: Market Center Execution Id
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center_execution_id.size = 8

-- Display: Market Center Execution Id
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center_execution_id.display = function(value)
  return "Market Center Execution Id: "..value
end

-- Dissect: Market Center Execution Id
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center_execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center_execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center_execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.market_center_execution_id, range, value, display)

  return offset + length, value
end

-- Market Status
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_status = {}

-- Size: Market Status
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_status.size = 1

-- Display: Market Status
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_status.labels = {
  ["N"] = "Market Status: Normal (N)",
  ["E"] = "Market Status: Excluded From Symbol Summary And Adap Updates (E)",
  ["I"] = "Market Status: Incomplete (I)",
}

cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_status.display = function(value)
  return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_status.labels[value] or "Market Status: Unknown("..value..")"
end

-- Dissect: Market Status
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.market_status, range, value, display)

  return offset + length, value
end

-- Message Count
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_count = {}

-- Size: Message Count
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_count.size = 1

-- Display: Message Count
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_length = {}

-- Size: Message Length
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_length.size = 1

-- Display: Message Length
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_type = {}

-- Size: Message Type
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_type.size = 1

-- Display: Message Type
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_type.labels = {
  [0xA0] = "Message Type: Cboe One Login Message (0xA0)",
  [0x02] = "Message Type: Login Response Message (0x02)",
  [0xA1] = "Message Type: Replay Complete Message (0xA1)",
  [0xA2] = "Message Type: Clear Quote Message (0xA2)",
  [0xE7] = "Message Type: Fractional Symbol Summary Message (0xE7)",
  [0xA5] = "Message Type: Best Quote Update Message (0xA5)",
  [0xA6] = "Message Type: Cboe Market Status Message (0xA6)",
  [0xA7] = "Message Type: Adap Message (0xA7)",
  [0xA8] = "Message Type: Rpi Message (0xA8)",
  [0xE8] = "Message Type: Fractional Trade Message (0xE8)",
  [0xE9] = "Message Type: Fractional Trade Break Message (0xE9)",
  [0xAB] = "Message Type: Trading Status Message (0xAB)",
  [0xB0] = "Message Type: Opening Closing Price Message (0xB0)",
  [0xEA] = "Message Type: Fractional End Of Day Summary Message (0xEA)",
}

cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_type.display = function(value)
  return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_type.labels[value] or "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.message_type, range, value, display)

  return offset + length, value
end

-- National Cumulative Volume
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.national_cumulative_volume = {}

-- Size: National Cumulative Volume
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.national_cumulative_volume.size = 8

-- Display: National Cumulative Volume
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.national_cumulative_volume.display = function(value)
  return "National Cumulative Volume: "..value
end

-- Translate: National Cumulative Volume
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.national_cumulative_volume.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: National Cumulative Volume
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.national_cumulative_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.national_cumulative_volume.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.national_cumulative_volume.translate(raw)
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.national_cumulative_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.national_cumulative_volume, range, value, display)

  return offset + length, value
end

-- Next Sequence
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.next_sequence = {}

-- Size: Next Sequence
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.next_sequence.size = 4

-- Display: Next Sequence
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.next_sequence.display = function(value)
  return "Next Sequence: "..value
end

-- Dissect: Next Sequence
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.next_sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.next_sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.next_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.next_sequence, range, value, display)

  return offset + length, value
end

-- Open Close Indicator
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.open_close_indicator = {}

-- Size: Open Close Indicator
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.open_close_indicator.size = 1

-- Display: Open Close Indicator
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.open_close_indicator.labels = {
  ["O"] = "Open Close Indicator: Opening Price (O)",
  ["C"] = "Open Close Indicator: Closing Price (C)",
}

cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.open_close_indicator.display = function(value)
  return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.open_close_indicator.labels[value] or "Open Close Indicator: Unknown("..value..")"
end

-- Dissect: Open Close Indicator
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.open_close_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.open_close_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.open_close_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.open_close_indicator, range, value, display)

  return offset + length, value
end

-- Opening Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.opening_price = {}

-- Size: Opening Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.opening_price.size = 8

-- Display: Opening Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Translate: Opening Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.opening_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Opening Price
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.opening_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.opening_price.translate(raw)
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Password
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.password = {}

-- Size: Password
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.password.size = 10

-- Display: Password
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.password, range, value, display)

  return offset + length, value
end

-- Price Long
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.price_long = {}

-- Size: Price Long
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.price_long.size = 8

-- Display: Price Long
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.price_long.display = function(value)
  return "Price Long: "..value
end

-- Translate: Price Long
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Long
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.price_long.translate(raw)
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.price_short = {}

-- Size: Price Short
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.price_short.size = 4

-- Display: Price Short
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.price_short.translate = function(raw)
  return raw/10000
end

-- Dissect: Price Short
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.price_short.translate(raw)
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.price_short, range, value, display)

  return offset + length, value
end

-- Quantity Long
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.quantity_long = {}

-- Size: Quantity Long
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.quantity_long.size = 8

-- Display: Quantity Long
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.quantity_long.display = function(value)
  return "Quantity Long: "..value
end

-- Dissect: Quantity Long
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.quantity_long, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.quantity_short = {}

-- Size: Quantity Short
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.quantity_short.size = 4

-- Display: Quantity Short
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.reg_sho_action = {}

-- Size: Reg Sho Action
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.reg_sho_action.size = 1

-- Display: Reg Sho Action
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.reg_sho_action.labels = {
  ["0"] = "Reg Sho Action: No Price Test In Effect (0)",
  ["1"] = "Reg Sho Action: Reg Sho Price Test Restriction In Effect (1)",
}

cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.reg_sho_action.display = function(value)
  return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.reg_sho_action.labels[value] or "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.reserved_1 = {}

-- Size: Reserved 1
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.reserved_1.size = 1

-- Display: Reserved 1
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.reserved_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Retail Price Improvement
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.retail_price_improvement = {}

-- Size: Retail Price Improvement
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.retail_price_improvement.size = 1

-- Display: Retail Price Improvement
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.retail_price_improvement.labels = {
  ["B"] = "Retail Price Improvement: Buy Side Rpi (B)",
  ["S"] = "Retail Price Improvement: Sell Side Rpi (S)",
  ["A"] = "Retail Price Improvement: Buy And Sell Rpi (A)",
  ["N"] = "Retail Price Improvement: No Rpi (N)",
}

cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.retail_price_improvement.display = function(value)
  return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.retail_price_improvement.labels[value] or "Retail Price Improvement: Unknown("..value..")"
end

-- Dissect: Retail Price Improvement
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.retail_price_improvement.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.retail_price_improvement.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.retail_price_improvement.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.retail_price_improvement, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.sequence = {}

-- Size: Sequence
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.sequence.size = 4

-- Display: Sequence
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session Indicator
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.session_indicator = {}

-- Size: Session Indicator
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.session_indicator.size = 1

-- Display: Session Indicator
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.session_indicator.labels = {
  ["R"] = "Session Indicator: Regular Trading Session (R)",
  ["P"] = "Session Indicator: Pre Or Postmarket Session (P)",
}

cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.session_indicator.display = function(value)
  return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.session_indicator.labels[value] or "Session Indicator: Unknown("..value..")"
end

-- Dissect: Session Indicator
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.session_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.session_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.session_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.session_indicator, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.session_sub_id = {}

-- Size: Session Sub Id
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.session_sub_id.display = function(value)
  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.session_sub_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Side
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.side = {}

-- Size: Side
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.side.size = 1

-- Display: Side
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.side.labels = {
  ["B"] = "Side: Buy Side (B)",
  ["S"] = "Side: Sell Side (S)",
}

cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.side.display = function(value)
  return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.side, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.side_indicator = {}

-- Size: Side Indicator
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.side_indicator.size = 1

-- Display: Side Indicator
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.side_indicator.labels = {
  ["B"] = "Side Indicator: Buy Side (B)",
  ["S"] = "Side Indicator: Sell Side (S)",
}

cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.side_indicator.display = function(value)
  return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.side_indicator.labels[value] or "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Status
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.status = {}

-- Size: Status
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.status.size = 1

-- Display: Status
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.status.labels = {
  ["A"] = "Status: Login Accepted (A)",
  ["N"] = "Status: Not Authorized Invalid Username Password (N)",
  ["B"] = "Status: Session In Use (B)",
  ["S"] = "Status: Invalid Session (S)",
  ["Q"] = "Status: Next Sequence Is Ahead Of Sequence (Q)",
}

cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.status.display = function(value)
  return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.status.labels[value] or "Status: Unknown("..value..")"
end

-- Dissect: Status
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.status, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol = {}

-- Size: Symbol
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.size = 8

-- Display: Symbol
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.timestamp = {}

-- Size: Timestamp
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.timestamp.size = 8

-- Dissect: Timestamp
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.timestamp
  if cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.absolute_time_base == 1 then field = omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trading Status
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.trading_status = {}

-- Size: Trading Status
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.trading_status.size = 1

-- Display: Trading Status
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.trading_status.labels = {
  ["A"] = "Trading Status: Accepting Orders For Queuing (A)",
  ["H"] = "Trading Status: Halted (H)",
  ["Q"] = "Trading Status: Quote Only (Q)",
  ["S"] = "Trading Status: Exchange Specific Suspension (S)",
  ["T"] = "Trading Status: Trading (T)",
}

cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.trading_status.display = function(value)
  return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Transaction Time
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.transaction_time = {}

-- Size: Transaction Time
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.transaction_time.size = 8

-- Dissect: Transaction Time
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.transaction_time
  if cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.absolute_time_base == 1 then field = omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.transaction_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Unit
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.unit = {}

-- Size: Unit
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.unit.size = 1

-- Display: Unit
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.unit, range, value, display)

  return offset + length, value
end

-- Username
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.username = {}

-- Size: Username
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.username.size = 4

-- Display: Username
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe TitaniumConsolidated TcpOneEquities CboeOne 1.4.15
-----------------------------------------------------------------------

-- Fractional End Of Day Summary Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_end_of_day_summary_message = {}

-- Size: Fractional End Of Day Summary Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_end_of_day_summary_message.size =
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.timestamp.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.data_source.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.opening_price.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.closing_price.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.high_price.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.low_price.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.national_cumulative_volume.size

-- Display: Fractional End Of Day Summary Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_end_of_day_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional End Of Day Summary Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_end_of_day_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.dissect(buffer, index, packet, parent)

  -- Data Source: Alphanumeric
  index, data_source = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.data_source.dissect(buffer, index, packet, parent)

  -- Opening Price: Binary 8.4 Price
  index, opening_price = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.opening_price.dissect(buffer, index, packet, parent)

  -- Closing Price: Binary 8.4 Price
  index, closing_price = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.closing_price.dissect(buffer, index, packet, parent)

  -- High Price: Binary 8.4 Price
  index, high_price = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Binary 8.4 Price
  index, low_price = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.low_price.dissect(buffer, index, packet, parent)

  -- National Cumulative Volume: Binary 12.6
  index, national_cumulative_volume = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.national_cumulative_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional End Of Day Summary Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_end_of_day_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.fractional_end_of_day_summary_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_end_of_day_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_end_of_day_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_end_of_day_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Opening Closing Price Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.opening_closing_price_message = {}

-- Size: Opening Closing Price Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.opening_closing_price_message.size =
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.timestamp.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.open_close_indicator.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.price_long.size

-- Display: Opening Closing Price Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.opening_closing_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Opening Closing Price Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.opening_closing_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.dissect(buffer, index, packet, parent)

  -- Open Close Indicator: Alphanumeric
  index, open_close_indicator = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.open_close_indicator.dissect(buffer, index, packet, parent)

  -- Price Long: Binary 8.4 Price
  index, price_long = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.price_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Opening Closing Price Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.opening_closing_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.opening_closing_price_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.opening_closing_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.opening_closing_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.opening_closing_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.trading_status_message = {}

-- Size: Trading Status Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.trading_status_message.size =
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.timestamp.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.trading_status.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.reg_sho_action.size

-- Display: Trading Status Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.dissect(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.trading_status.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alphanumeric
  index, reg_sho_action = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Trade Break Flags
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_break_flags = {}

-- Size: Fractional Trade Break Flags
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_break_flags.size = 1

-- Display: Fractional Trade Break Flags
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_break_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Sip Volume Status flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Sip Volume Status"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Fractional Trade Break Flags
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_break_flags.bits = function(range, value, packet, parent)

  -- Sip Volume Status: 1 Bit
  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.sip_volume_status, range, value)

  -- Unused 7: 7 Bit
  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.unused_7, range, value)
end

-- Dissect: Fractional Trade Break Flags
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_break_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_break_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_break_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.fractional_trade_break_flags, range, display)

  if show.structs then
    cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_break_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Fractional Trade Break Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_break_message = {}

-- Size: Fractional Trade Break Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_break_message.size =
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.transaction_time.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center_execution_id.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_cumulative_executed_volume.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.national_cumulative_volume.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_break_flags.size

-- Display: Fractional Trade Break Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Trade Break Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: Binary
  index, transaction_time = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.transaction_time.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.dissect(buffer, index, packet, parent)

  -- Market Center Execution Id: Binary
  index, market_center_execution_id = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center_execution_id.dissect(buffer, index, packet, parent)

  -- Cboe Cumulative Executed Volume: Binary
  index, cboe_cumulative_executed_volume = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_cumulative_executed_volume.dissect(buffer, index, packet, parent)

  -- National Cumulative Volume: Binary 12.6
  index, national_cumulative_volume = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.national_cumulative_volume.dissect(buffer, index, packet, parent)

  -- Fractional Trade Break Flags: Struct of 2 fields
  index, fractional_trade_break_flags = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_break_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Trade Break Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.fractional_trade_break_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Trade Flags
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_flags = {}

-- Size: Fractional Trade Flags
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_flags.size = 1

-- Display: Fractional Trade Flags
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is National Volume Status flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "National Volume Status"
  end
  -- Is Last Sale Eligible flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Last Sale Eligible"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Fractional Trade Flags
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_flags.bits = function(range, value, packet, parent)

  -- National Volume Status: 1 Bit
  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.national_volume_status, range, value)

  -- Last Sale Eligible: 1 Bit
  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.last_sale_eligible, range, value)

  -- Unused 6: 6 Bit
  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.unused_6, range, value)
end

-- Dissect: Fractional Trade Flags
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.fractional_trade_flags, range, display)

  if show.structs then
    cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Fractional Trade Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_message = {}

-- Size: Fractional Trade Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_message.size =
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.transaction_time.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center_execution_id.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_price.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_quantity.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_cumulative_executed_volume.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.national_cumulative_volume.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_flags.size

-- Display: Fractional Trade Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Trade Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: Binary
  index, transaction_time = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.transaction_time.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.dissect(buffer, index, packet, parent)

  -- Market Center Execution Id: Binary
  index, market_center_execution_id = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center_execution_id.dissect(buffer, index, packet, parent)

  -- Last Price: Binary 8.4 Price
  index, last_price = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_price.dissect(buffer, index, packet, parent)

  -- Last Quantity: Binary
  index, last_quantity = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_quantity.dissect(buffer, index, packet, parent)

  -- Cboe Cumulative Executed Volume: Binary
  index, cboe_cumulative_executed_volume = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_cumulative_executed_volume.dissect(buffer, index, packet, parent)

  -- National Cumulative Volume: Binary 12.6
  index, national_cumulative_volume = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.national_cumulative_volume.dissect(buffer, index, packet, parent)

  -- Fractional Trade Flags: Struct of 3 fields
  index, fractional_trade_flags = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Trade Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.fractional_trade_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Rpi Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.rpi_message = {}

-- Size: Rpi Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.rpi_message.size =
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.timestamp.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.retail_price_improvement.size

-- Display: Rpi Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.rpi_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rpi Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.rpi_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.dissect(buffer, index, packet, parent)

  -- Retail Price Improvement: Alphanumeric
  index, retail_price_improvement = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.retail_price_improvement.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rpi Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.rpi_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.rpi_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.rpi_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.rpi_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.rpi_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Update Adap Block
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.long_update_adap_block = {}

-- Size: Long Update Adap Block
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.long_update_adap_block.size =
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.side.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.price_long.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.quantity_long.size

-- Display: Long Update Adap Block
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.long_update_adap_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Update Adap Block
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.long_update_adap_block.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.side.dissect(buffer, index, packet, parent)

  -- Price Long: Binary 8.4 Price
  index, price_long = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.price_long.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Update Adap Block
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.long_update_adap_block.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.long_update_adap_block, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.long_update_adap_block.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.long_update_adap_block.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.long_update_adap_block.fields(buffer, offset, packet, parent)
  end
end

-- Short Update Adap Block
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.short_update_adap_block = {}

-- Size: Short Update Adap Block
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.short_update_adap_block.size =
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.side.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.price_short.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.quantity_short.size

-- Display: Short Update Adap Block
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.short_update_adap_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Update Adap Block
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.short_update_adap_block.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.side.dissect(buffer, index, packet, parent)

  -- Price Short: Binary 4.4 Price
  index, price_short = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.price_short.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Update Adap Block
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.short_update_adap_block.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.short_update_adap_block, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.short_update_adap_block.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.short_update_adap_block.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.short_update_adap_block.fields(buffer, offset, packet, parent)
  end
end

-- Adap Update
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_update = {}

-- Dissect: Adap Update
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_update.dispatch = {
  [10] = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.short_update_adap_block.dissect,
  [18] = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.long_update_adap_block.dissect,
}

cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_update.dissect = function(buffer, offset, packet, parent, adap_block_size)
  local dissect = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_update.dispatch[adap_block_size]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Adap Block
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_block = {}

-- Calculate size of: Adap Block
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_block.size = function(buffer, offset)
  local index = 0

  -- Calculate runtime size of Adap Update field
  local adap_update_offset = offset + index
  local adap_update_type = buffer(adap_update_offset - 1, 1):le_uint()
  index = index + cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_update.size(buffer, adap_update_offset, adap_update_type)

  return index
end

-- Display: Adap Block
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Adap Block
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_block.fields = function(buffer, offset, packet, parent, adap_block_index)
  local index = offset

  -- Implicit Adap Block Index
  if adap_block_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.adap_block_index, adap_block_index)
    iteration:set_generated()
  end

  -- Dependency element: Adap Block Size
  local adap_block_size = buffer(offset - 1, 1):le_uint()

  -- Adap Update: Runtime Type with 2 branches
  index = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_update.dissect(buffer, index, packet, parent, adap_block_size)

  return index
end

-- Dissect: Adap Block
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_block.dissect = function(buffer, offset, packet, parent, adap_block_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.adap_block, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_block.fields(buffer, offset, packet, parent, adap_block_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_block.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_block.fields(buffer, offset, packet, parent, adap_block_index)
  end
end

-- Adap Flags
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_flags = {}

-- Size: Adap Flags
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_flags.size = 1

-- Display: Adap Flags
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Clear Adap flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Clear Adap"
  end
  -- Is Adap Complete flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Adap Complete"
  end
  -- Is Short Long Blocks flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Short Long Blocks"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Adap Flags
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_flags.bits = function(range, value, packet, parent)

  -- Clear Adap: 1 Bit
  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.clear_adap, range, value)

  -- Adap Complete: 1 Bit
  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.adap_complete, range, value)

  -- Short Long Blocks: 1 Bit
  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.short_long_blocks, range, value)

  -- Unused 5: 5 Bit
  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.unused_5, range, value)
end

-- Dissect: Adap Flags
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.adap_flags, range, display)

  if show.structs then
    cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Adap Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_message = {}

-- Calculate size of: Adap Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_update_timestamp.size

  index = index + cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.size

  index = index + cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_flags.size

  index = index + cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.reserved_1.size

  index = index + cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_blocks.size

  index = index + cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_block_size.size

  -- Calculate field size from count
  local adap_block_count = buffer(offset + index - 2, 1):le_uint()
  for i = 1, adap_block_count do
    index = index + cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_block.size(buffer, offset + index)
  end
  return index
end

-- Display: Adap Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Adap Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: Binary
  index, last_update_timestamp = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_update_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.dissect(buffer, index, packet, parent)

  -- Adap Flags: Struct of 4 fields
  index, adap_flags = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_flags.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.reserved_1.dissect(buffer, index, packet, parent)

  -- Adap Blocks: Binary
  index, adap_blocks = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_blocks.dissect(buffer, index, packet, parent)

  -- Adap Block Size: Binary
  index, adap_block_size = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_block_size.dissect(buffer, index, packet, parent)

  -- Repeating: Adap Block
  for adap_block_index = 1, adap_blocks do
    index, adap_block = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_block.dissect(buffer, index, packet, parent, adap_block_index)
  end

  return index
end

-- Dissect: Adap Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.adap_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_message.fields(buffer, offset, packet, parent)
  end
end

-- Cboe Market Status Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_market_status_message = {}

-- Size: Cboe Market Status Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_market_status_message.size =
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.timestamp.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_status.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.session_indicator.size

-- Display: Cboe Market Status Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_market_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cboe Market Status Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_market_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.timestamp.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.dissect(buffer, index, packet, parent)

  -- Market Status: Alphanumeric
  index, market_status = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_status.dissect(buffer, index, packet, parent)

  -- Session Indicator: Alphanumeric
  index, session_indicator = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.session_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cboe Market Status Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_market_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.cboe_market_status_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_market_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_market_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_market_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Quote Update Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.best_quote_update_message = {}

-- Size: Best Quote Update Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.best_quote_update_message.size =
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_update_timestamp.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.side_indicator.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_quote_price.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_quote_quantity.size

-- Display: Best Quote Update Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.best_quote_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Quote Update Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.best_quote_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: Binary
  index, last_update_timestamp = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_update_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.side_indicator.dissect(buffer, index, packet, parent)

  -- Consolidated Best Quote Price: Binary 8.4 Price
  index, consolidated_best_quote_price = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_quote_price.dissect(buffer, index, packet, parent)

  -- Consolidated Quote Quantity: Binary
  index, consolidated_quote_quantity = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_quote_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Quote Update Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.best_quote_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.best_quote_update_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.best_quote_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.best_quote_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.best_quote_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Symbol Summary Flags
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_symbol_summary_flags = {}

-- Size: Fractional Symbol Summary Flags
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_symbol_summary_flags.size = 1

-- Display: Fractional Symbol Summary Flags
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_symbol_summary_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is National Volume Status flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "National Volume Status"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Fractional Symbol Summary Flags
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_symbol_summary_flags.bits = function(range, value, packet, parent)

  -- National Volume Status: 1 Bit
  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.national_volume_status, range, value)

  -- Unused 7: 7 Bit
  parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.unused_7, range, value)
end

-- Dissect: Fractional Symbol Summary Flags
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_symbol_summary_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_symbol_summary_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_symbol_summary_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.fractional_symbol_summary_flags, range, display)

  if show.structs then
    cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_symbol_summary_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Fractional Symbol Summary Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_symbol_summary_message = {}

-- Size: Fractional Symbol Summary Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_symbol_summary_message.size =
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_update_timestamp.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_cumulative_executed_volume.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_bid_price.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_bid_quantity.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_ask_price.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_ask_quantity.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.national_cumulative_volume.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_symbol_summary_flags.size

-- Display: Fractional Symbol Summary Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_symbol_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Symbol Summary Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_symbol_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: Binary
  index, last_update_timestamp = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_update_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.dissect(buffer, index, packet, parent)

  -- Cboe Cumulative Executed Volume: Binary
  index, cboe_cumulative_executed_volume = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_cumulative_executed_volume.dissect(buffer, index, packet, parent)

  -- Consolidated Best Bid Price: Binary 8.4 Price
  index, consolidated_best_bid_price = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_bid_price.dissect(buffer, index, packet, parent)

  -- Consolidated Best Bid Quantity: Binary
  index, consolidated_best_bid_quantity = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_bid_quantity.dissect(buffer, index, packet, parent)

  -- Consolidated Best Ask Price: Binary 8.4 Price
  index, consolidated_best_ask_price = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_ask_price.dissect(buffer, index, packet, parent)

  -- Consolidated Best Ask Quantity: Binary
  index, consolidated_best_ask_quantity = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.consolidated_best_ask_quantity.dissect(buffer, index, packet, parent)

  -- National Cumulative Volume: Binary 12.6
  index, national_cumulative_volume = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.national_cumulative_volume.dissect(buffer, index, packet, parent)

  -- Fractional Symbol Summary Flags: Struct of 2 fields
  index, fractional_symbol_summary_flags = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_symbol_summary_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Symbol Summary Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_symbol_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.fractional_symbol_summary_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_symbol_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_symbol_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_symbol_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Clear Quote Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.clear_quote_message = {}

-- Size: Clear Quote Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.clear_quote_message.size =
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_update_timestamp.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.size

-- Display: Clear Quote Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.clear_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clear Quote Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.clear_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: Binary
  index, last_update_timestamp = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.last_update_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.symbol.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.market_center.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clear Quote Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.clear_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.clear_quote_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.clear_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.clear_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.clear_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Complete Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.replay_complete_message = {}

-- Size: Replay Complete Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.replay_complete_message.size =
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.sequence.size

-- Display: Replay Complete Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.replay_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Complete Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.replay_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Complete Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.replay_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.replay_complete_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.replay_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.replay_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.replay_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.login_response_message = {}

-- Size: Login Response Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.login_response_message.size =
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.status.size

-- Display: Login Response Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Status: Alphanumeric
  index, status = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.login_response_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Cboe One Login Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_one_login_message = {}

-- Size: Cboe One Login Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_one_login_message.size =
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.session_sub_id.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.username.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.filler.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.password.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.next_sequence.size

-- Display: Cboe One Login Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_one_login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cboe One Login Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_one_login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Sub Id: Alphanumeric
  index, session_sub_id = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.session_sub_id.dissect(buffer, index, packet, parent)

  -- Username: Alphanumeric
  index, username = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.username.dissect(buffer, index, packet, parent)

  -- Filler: Alphanumeric
  index, filler = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.filler.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.password.dissect(buffer, index, packet, parent)

  -- Next Sequence: Binary
  index, next_sequence = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.next_sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cboe One Login Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_one_login_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.cboe_one_login_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_one_login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_one_login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_one_login_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.payload = {}

-- Dissect: Payload
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.payload.dispatch = {
  [0xA0] = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_one_login_message.dissect,
  [0x02] = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.login_response_message.dissect,
  [0xA1] = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.replay_complete_message.dissect,
  [0xA2] = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.clear_quote_message.dissect,
  [0xE7] = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_symbol_summary_message.dissect,
  [0xA5] = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.best_quote_update_message.dissect,
  [0xA6] = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.cboe_market_status_message.dissect,
  [0xA7] = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.adap_message.dissect,
  [0xA8] = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.rpi_message.dissect,
  [0xE8] = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_message.dissect,
  [0xE9] = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_trade_break_message.dissect,
  [0xAB] = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.trading_status_message.dissect,
  [0xB0] = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.opening_closing_price_message.dissect,
  [0xEA] = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fractional_end_of_day_summary_message.dissect,
}

cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_header = {}

-- Size: Message Header
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_header.size =
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_length.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_type.size

-- Display: Message Header
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, message_type = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.message_header, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message = {}

-- Read runtime size of: Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 14 branches
  index = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.message, buffer(offset, 0))
    local current = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.heartbeat = {}

-- Display: Heartbeat
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.messages = {}

-- Dissect: Messages
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.messages.dispatch = {
  [0] = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.heartbeat.dissect,
}

cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.messages.dispatch[message_count]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.packet_header = {}

-- Size: Packet Header
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.packet_header.size =
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.length.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_count.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.unit.size + 
  cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.sequence.size

-- Display: Packet Header
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.message_count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.unit.dissect(buffer, index, packet, parent)

  -- Sequence: Binary
  index, sequence = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.fields.packet_header, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.packet = {}

-- Verify required size of Tcp packet
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.packet_header.size
end

-- Dissect Packet
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.init()
end

-- Dissector for Cboe TitaniumConsolidated TcpOneEquities CboeOne 1.4.15
function omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.name

  local length = buffer:len()
  local index = 0

  -- Dissect each message the segment carries
  while index < length do
    local remaining = length - index

    -- The message length lives in the header: wait for the header before reading it
    if remaining < cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.packet_header.size then
      packet.desegment_offset = index
      packet.desegment_len = DESEGMENT_ONE_MORE_SEGMENT
      return length
    end

    local size = buffer(index, 2):le_uint()
    -- A message split across segments: ask TCP for exactly the bytes still missing
    if remaining < size then
      packet.desegment_offset = index
      packet.desegment_len = size - remaining
      return length
    end

    local protocol = parent:add(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15, buffer(index, size), omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.description, "("..size.." Bytes)")
    cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.packet.dissect(buffer(index, size):tvb(), packet, protocol)
    protocol:set_len(size)
    index = index + size
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local message_count = buffer(2, 1):le_uint()

  -- Heartbeat
  if message_count == 0 then
    return true
  end

  -- Message: carries the application messages, which tell this protocol from others sharing the session framing
  if buffer:len() < 10 then
    return false
  end

  local message_type = buffer(9, 1):le_uint()

  -- Cboe One Login Message
  if message_type == 0xA0 then
    return true
  end

  -- Login Response Message
  if message_type == 0x02 then
    return true
  end

  -- Replay Complete Message
  if message_type == 0xA1 then
    return true
  end

  -- Clear Quote Message
  if message_type == 0xA2 then
    return true
  end

  -- Fractional Symbol Summary Message
  if message_type == 0xE7 then
    return true
  end

  -- Best Quote Update Message
  if message_type == 0xA5 then
    return true
  end

  -- Cboe Market Status Message
  if message_type == 0xA6 then
    return true
  end

  -- Adap Message
  if message_type == 0xA7 then
    return true
  end

  -- Rpi Message
  if message_type == 0xA8 then
    return true
  end

  -- Fractional Trade Message
  if message_type == 0xE8 then
    return true
  end

  -- Fractional Trade Break Message
  if message_type == 0xE9 then
    return true
  end

  -- Trading Status Message
  if message_type == 0xAB then
    return true
  end

  -- Opening Closing Price Message
  if message_type == 0xB0 then
    return true
  end

  -- Fractional End Of Day Summary Message
  if message_type == 0xEA then
    return true
  end


  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe TitaniumConsolidated TcpOneEquities CboeOne 1.4.15 (Tcp)
local function omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp packet message dispatch
  if not cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15
  omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe TitaniumConsolidated TcpOneEquities CboeOne 1.4.15
omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15:register_heuristic("tcp", omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15_tcp_heuristic)

-- Register Cboe TitaniumConsolidated TcpOneEquities CboeOne 1.4.15 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_titaniumconsolidated_tcponeequities_cboeone_v1_4_15)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.4.15
--   Date: Tuesday, June 30, 2026
--   Specification: technical-specifications-cboe-titanium-cboe-one-equities-feed-specification.pdf
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
