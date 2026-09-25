-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bist BorsaIstanbul MarketInfo Tip 2.2.8 Protocol
local omi_bist_borsaistanbul_marketinfo_tip_v2_2_8 = Proto("Omi.Bist.BorsaIstanbul.MarketInfo.Tip.v2.2.8", "Bist BorsaIstanbul MarketInfo Tip 2.2.8")

-- Protocol table
local bist_borsaistanbul_marketinfo_tip_v2_2_8 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bist BorsaIstanbul MarketInfo Tip 2.2.8 Fields
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "bist.borsaistanbul.marketinfo.tip.v2.2.8.acceptedsequencenumber", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accepted_session = ProtoField.new("Accepted Session", "bist.borsaistanbul.marketinfo.tip.v2.2.8.acceptedsession", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.client_packet_type = ProtoField.new("Packet Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.clientpackettype", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.debug_text = ProtoField.new("Debug Text", "bist.borsaistanbul.marketinfo.tip.v2.2.8.debugtext", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.packet_length = ProtoField.new("Packet Length", "bist.borsaistanbul.marketinfo.tip.v2.2.8.packetlength", ftypes.UINT16)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.password = ProtoField.new("Password", "bist.borsaistanbul.marketinfo.tip.v2.2.8.password", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "bist.borsaistanbul.marketinfo.tip.v2.2.8.rejectreasoncode", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "bist.borsaistanbul.marketinfo.tip.v2.2.8.requestedsequencenumber", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.requested_session = ProtoField.new("Requested Session", "bist.borsaistanbul.marketinfo.tip.v2.2.8.requestedsession", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.sequenced_message = ProtoField.new("Sequenced Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.sequencedmessage", ftypes.BYTES)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.sequencedmessagetype", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.server_packet_type = ProtoField.new("Packet Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.serverpackettype", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.unsequencedmessage", ftypes.BYTES)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.unsequencedmessagetype", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.username = ProtoField.new("Username", "bist.borsaistanbul.marketinfo.tip.v2.2.8.username", ftypes.STRING)

-- Bist BorsaIstanbul MarketInfo Tip 2.2.8 Framing
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.client_packet = ProtoField.new("Packet", "bist.borsaistanbul.marketinfo.tip.v2.2.8.clientpacket", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.client_packet_header = ProtoField.new("Packet Header", "bist.borsaistanbul.marketinfo.tip.v2.2.8.clientpacketheader", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "bist.borsaistanbul.marketinfo.tip.v2.2.8.clientsoupbintcppacket", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.server_packet = ProtoField.new("Packet", "bist.borsaistanbul.marketinfo.tip.v2.2.8.serverpacket", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.server_packet_header = ProtoField.new("Packet Header", "bist.borsaistanbul.marketinfo.tip.v2.2.8.serverpacketheader", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "bist.borsaistanbul.marketinfo.tip.v2.2.8.serversoupbintcppacket", ftypes.STRING)

-- Bist BorsaIstanbul MarketInfo 2.2.8 Session Messages
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "bist.borsaistanbul.marketinfo.tip.v2.2.8.clientheartbeat", ftypes.BYTES)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.debug_packet = ProtoField.new("Debug Packet", "bist.borsaistanbul.marketinfo.tip.v2.2.8.debugpacket", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.end_of_session = ProtoField.new("End Of Session", "bist.borsaistanbul.marketinfo.tip.v2.2.8.endofsession", ftypes.BYTES)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "bist.borsaistanbul.marketinfo.tip.v2.2.8.loginacceptedpacket", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "bist.borsaistanbul.marketinfo.tip.v2.2.8.loginrejectedpacket", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.login_request_packet = ProtoField.new("Login Request Packet", "bist.borsaistanbul.marketinfo.tip.v2.2.8.loginrequestpacket", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.logout_request = ProtoField.new("Logout Request", "bist.borsaistanbul.marketinfo.tip.v2.2.8.logoutrequest", ftypes.BYTES)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "bist.borsaistanbul.marketinfo.tip.v2.2.8.sequenceddatapacket", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "bist.borsaistanbul.marketinfo.tip.v2.2.8.serverheartbeat", ftypes.BYTES)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "bist.borsaistanbul.marketinfo.tip.v2.2.8.unsequenceddatapacket", ftypes.STRING)

-- Bist BorsaIstanbul MarketInfo Tip 2.2.8 Generated Fields
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "bist.borsaistanbul.marketinfo.tip.v2.2.8.sequenceddatapacketsequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Declare Tip Fields
-----------------------------------------------------------------------

-- Bist BorsaIstanbul MarketInfo 2.2.8 Tip Tag Fields
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.abbreviated_name = ProtoField.new("Abbreviated Name", "bist.borsaistanbul.marketinfo.tip.v2.2.8.abbreviatedname", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accrued_interest = ProtoField.new("Accrued Interest", "bist.borsaistanbul.marketinfo.tip.v2.2.8.accruedinterest", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accrued_value = ProtoField.new("Accrued Value", "bist.borsaistanbul.marketinfo.tip.v2.2.8.accruedvalue", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accumulated_notional_value = ProtoField.new("Accumulated Notional Value", "bist.borsaistanbul.marketinfo.tip.v2.2.8.accumulatednotionalvalue", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accumulated_notional_value_in_value_currency = ProtoField.new("Accumulated Notional Value In Value Currency", "bist.borsaistanbul.marketinfo.tip.v2.2.8.accumulatednotionalvalueinvaluecurrency", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accumulated_trade_report_notional_value = ProtoField.new("Accumulated Trade Report Notional Value", "bist.borsaistanbul.marketinfo.tip.v2.2.8.accumulatedtradereportnotionalvalue", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accumulated_trade_report_notional_value_in_value_currency = ProtoField.new("Accumulated Trade Report Notional Value In Value Currency", "bist.borsaistanbul.marketinfo.tip.v2.2.8.accumulatedtradereportnotionalvalueinvaluecurrency", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accumulated_trade_report_turnover = ProtoField.new("Accumulated Trade Report Turnover", "bist.borsaistanbul.marketinfo.tip.v2.2.8.accumulatedtradereportturnover", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accumulated_trade_report_turnover_in_value_currency = ProtoField.new("Accumulated Trade Report Turnover In Value Currency", "bist.borsaistanbul.marketinfo.tip.v2.2.8.accumulatedtradereportturnoverinvaluecurrency", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accumulated_trade_report_volume = ProtoField.new("Accumulated Trade Report Volume", "bist.borsaistanbul.marketinfo.tip.v2.2.8.accumulatedtradereportvolume", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accumulated_turnover = ProtoField.new("Accumulated Turnover", "bist.borsaistanbul.marketinfo.tip.v2.2.8.accumulatedturnover", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accumulated_turnover_in_value_currency = ProtoField.new("Accumulated Turnover In Value Currency", "bist.borsaistanbul.marketinfo.tip.v2.2.8.accumulatedturnoverinvaluecurrency", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accumulated_volume = ProtoField.new("Accumulated Volume", "bist.borsaistanbul.marketinfo.tip.v2.2.8.accumulatedvolume", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.action_status = ProtoField.new("Action Status", "bist.borsaistanbul.marketinfo.tip.v2.2.8.actionstatus", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.additional_reference_price = ProtoField.new("Additional Reference Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.additionalreferenceprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.aggressive_party = ProtoField.new("Aggressive Party", "bist.borsaistanbul.marketinfo.tip.v2.2.8.aggressiveparty", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.allocation_price = ProtoField.new("Allocation Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.allocationprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.amount_of_collateral = ProtoField.new("Amount Of Collateral", "bist.borsaistanbul.marketinfo.tip.v2.2.8.amountofcollateral", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_collateral_price_at_level = ProtoField.new("Ask Collateral Price At Level", "bist.borsaistanbul.marketinfo.tip.v2.2.8.askcollateralpriceatlevel", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_collateral_price_at_level1 = ProtoField.new("Ask Collateral Price At Level1", "bist.borsaistanbul.marketinfo.tip.v2.2.8.askcollateralpriceatlevel1", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_level_deleted = ProtoField.new("Ask Level Deleted", "bist.borsaistanbul.marketinfo.tip.v2.2.8.askleveldeleted", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_orders_at_level = ProtoField.new("Ask Orders At Level", "bist.borsaistanbul.marketinfo.tip.v2.2.8.askordersatlevel", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_price = ProtoField.new("Ask Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.askprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_price_at_level = ProtoField.new("Ask Price At Level", "bist.borsaistanbul.marketinfo.tip.v2.2.8.askpriceatlevel", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_price_at_level1 = ProtoField.new("Ask Price At Level1", "bist.borsaistanbul.marketinfo.tip.v2.2.8.askpriceatlevel1", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_settlement_price = ProtoField.new("Ask Settlement Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.asksettlementprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_volume = ProtoField.new("Ask Volume", "bist.borsaistanbul.marketinfo.tip.v2.2.8.askvolume", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_volume_at_level = ProtoField.new("Ask Volume At Level", "bist.borsaistanbul.marketinfo.tip.v2.2.8.askvolumeatlevel", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_yield_at_level = ProtoField.new("Ask Yield At Level", "bist.borsaistanbul.marketinfo.tip.v2.2.8.askyieldatlevel", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_yield_at_level1 = ProtoField.new("Ask Yield At Level1", "bist.borsaistanbul.marketinfo.tip.v2.2.8.askyieldatlevel1", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.automatch = ProtoField.new("Automatch", "bist.borsaistanbul.marketinfo.tip.v2.2.8.automatch", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.available_qty_end_date = ProtoField.new("Available Qty End Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.availableqtyenddate", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.available_qty_start_date = ProtoField.new("Available Qty Start Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.availableqtystartdate", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.available_quantity_at_start = ProtoField.new("Available Quantity At Start", "bist.borsaistanbul.marketinfo.tip.v2.2.8.availablequantityatstart", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bar_type = ProtoField.new("Bar Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.bartype", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.base_date = ProtoField.new("Base Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basedate", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.base_price = ProtoField.new("Base Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.baseprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.base_value = ProtoField.new("Base Value", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basevalue", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bic_code = ProtoField.new("Bic Code", "bist.borsaistanbul.marketinfo.tip.v2.2.8.biccode", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_collateral_price_at_level = ProtoField.new("Bid Collateral Price At Level", "bist.borsaistanbul.marketinfo.tip.v2.2.8.bidcollateralpriceatlevel", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_collateral_price_at_level1 = ProtoField.new("Bid Collateral Price At Level1", "bist.borsaistanbul.marketinfo.tip.v2.2.8.bidcollateralpriceatlevel1", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_level_deleted = ProtoField.new("Bid Level Deleted", "bist.borsaistanbul.marketinfo.tip.v2.2.8.bidleveldeleted", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_orders_at_level = ProtoField.new("Bid Orders At Level", "bist.borsaistanbul.marketinfo.tip.v2.2.8.bidordersatlevel", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_price = ProtoField.new("Bid Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.bidprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_price_at_level = ProtoField.new("Bid Price At Level", "bist.borsaistanbul.marketinfo.tip.v2.2.8.bidpriceatlevel", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_price_at_level1 = ProtoField.new("Bid Price At Level1", "bist.borsaistanbul.marketinfo.tip.v2.2.8.bidpriceatlevel1", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_price_diff = ProtoField.new("Bid Price Diff", "bist.borsaistanbul.marketinfo.tip.v2.2.8.bidpricediff", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_settlement_price = ProtoField.new("Bid Settlement Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.bidsettlementprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_volume = ProtoField.new("Bid Volume", "bist.borsaistanbul.marketinfo.tip.v2.2.8.bidvolume", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_volume_at_level = ProtoField.new("Bid Volume At Level", "bist.borsaistanbul.marketinfo.tip.v2.2.8.bidvolumeatlevel", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_yield_at_level = ProtoField.new("Bid Yield At Level", "bist.borsaistanbul.marketinfo.tip.v2.2.8.bidyieldatlevel", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_yield_at_level1 = ProtoField.new("Bid Yield At Level1", "bist.borsaistanbul.marketinfo.tip.v2.2.8.bidyieldatlevel1", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.block_id = ProtoField.new("Block Id", "bist.borsaistanbul.marketinfo.tip.v2.2.8.blockid", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.buy_or_sell = ProtoField.new("Buy Or Sell", "bist.borsaistanbul.marketinfo.tip.v2.2.8.buyorsell", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.calculation_type = ProtoField.new("Calculation Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.calculationtype", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.clearing_info = ProtoField.new("Clearing Info", "bist.borsaistanbul.marketinfo.tip.v2.2.8.clearinginfo", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.clearing_venue_id = ProtoField.new("Clearing Venue Id", "bist.borsaistanbul.marketinfo.tip.v2.2.8.clearingvenueid", ftypes.UINT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.closing_auction_price = ProtoField.new("Closing Auction Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.closingauctionprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.closing_value = ProtoField.new("Closing Value", "bist.borsaistanbul.marketinfo.tip.v2.2.8.closingvalue", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.closing_vwap = ProtoField.new("Closing VWAP", "bist.borsaistanbul.marketinfo.tip.v2.2.8.closingvwap", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.code_level = ProtoField.new("Code Level", "bist.borsaistanbul.marketinfo.tip.v2.2.8.codelevel", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.coin_group = ProtoField.new("Coin Group", "bist.borsaistanbul.marketinfo.tip.v2.2.8.coingroup", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.coin_type = ProtoField.new("Coin Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.cointype", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.coin_year = ProtoField.new("Coin Year", "bist.borsaistanbul.marketinfo.tip.v2.2.8.coinyear", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.collateral_price = ProtoField.new("Collateral Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.collateralprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.combo_type = ProtoField.new("Combo Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.combotype", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.compound_yield = ProtoField.new("Compound Yield", "bist.borsaistanbul.marketinfo.tip.v2.2.8.compoundyield", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.compound_yield_vwap = ProtoField.new("Compound Yield VWAP", "bist.borsaistanbul.marketinfo.tip.v2.2.8.compoundyieldvwap", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.contract_size = ProtoField.new("Contract Size", "bist.borsaistanbul.marketinfo.tip.v2.2.8.contractsize", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.corporate_action = ProtoField.new("Corporate Action", "bist.borsaistanbul.marketinfo.tip.v2.2.8.corporateaction", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.country = ProtoField.new("Country", "bist.borsaistanbul.marketinfo.tip.v2.2.8.country", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.coupon_frequency = ProtoField.new("Coupon Frequency", "bist.borsaistanbul.marketinfo.tip.v2.2.8.couponfrequency", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.coupon_rate = ProtoField.new("Coupon Rate", "bist.borsaistanbul.marketinfo.tip.v2.2.8.couponrate", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.cross_trade = ProtoField.new("Cross Trade", "bist.borsaistanbul.marketinfo.tip.v2.2.8.crosstrade", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.currency = ProtoField.new("Currency", "bist.borsaistanbul.marketinfo.tip.v2.2.8.currency", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.current_value = ProtoField.new("Current Value", "bist.borsaistanbul.marketinfo.tip.v2.2.8.currentvalue", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.cycle_class = ProtoField.new("Cycle Class", "bist.borsaistanbul.marketinfo.tip.v2.2.8.cycleclass", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.date = ProtoField.new("Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.date", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.date_agreement = ProtoField.new("Date Agreement", "bist.borsaistanbul.marketinfo.tip.v2.2.8.dateagreement", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.date_dissemination = ProtoField.new("Date Dissemination", "bist.borsaistanbul.marketinfo.tip.v2.2.8.datedissemination", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.date_exec = ProtoField.new("Date Exec", "bist.borsaistanbul.marketinfo.tip.v2.2.8.dateexec", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.date_settlement_price = ProtoField.new("Date Settlement Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.datesettlementprice", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.date_trade_cancel = ProtoField.new("Date Trade Cancel", "bist.borsaistanbul.marketinfo.tip.v2.2.8.datetradecancel", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.date_trade_rectify = ProtoField.new("Date Trade Rectify", "bist.borsaistanbul.marketinfo.tip.v2.2.8.datetraderectify", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.day_count_method = ProtoField.new("Day Count Method", "bist.borsaistanbul.marketinfo.tip.v2.2.8.daycountmethod", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.day_type = ProtoField.new("Day Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.daytype", ftypes.UINT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.days_to_coupon = ProtoField.new("Days To Coupon", "bist.borsaistanbul.marketinfo.tip.v2.2.8.daystocoupon", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.days_to_maturity = ProtoField.new("Days To Maturity", "bist.borsaistanbul.marketinfo.tip.v2.2.8.daystomaturity", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.deliverable_series_id = ProtoField.new("Deliverable Series Id", "bist.borsaistanbul.marketinfo.tip.v2.2.8.deliverableseriesid", ftypes.UINT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.delivery_date = ProtoField.new("Delivery Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.deliverydate", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.derivative_type = ProtoField.new("Derivative Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.derivativetype", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.description = ProtoField.new("Description", "bist.borsaistanbul.marketinfo.tip.v2.2.8.description", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.diff_day_nom = ProtoField.new("Diff Day Nom", "bist.borsaistanbul.marketinfo.tip.v2.2.8.diffdaynom", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.diff_day_per = ProtoField.new("Diff Day Per", "bist.borsaistanbul.marketinfo.tip.v2.2.8.diffdayper", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.diff_last_price = ProtoField.new("Diff Last Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.difflastprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.diff_last_settlement_price = ProtoField.new("Diff Last Settlement Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.difflastsettlementprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.diff_last_yield = ProtoField.new("Diff Last Yield", "bist.borsaistanbul.marketinfo.tip.v2.2.8.difflastyield", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.diff_open_interest = ProtoField.new("Diff Open Interest", "bist.borsaistanbul.marketinfo.tip.v2.2.8.diffopeninterest", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.dissemination_interval = ProtoField.new("Dissemination Interval", "bist.borsaistanbul.marketinfo.tip.v2.2.8.disseminationinterval", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.divisor = ProtoField.new("Divisor", "bist.borsaistanbul.marketinfo.tip.v2.2.8.divisor", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.end_date = ProtoField.new("End Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.enddate", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.english_name = ProtoField.new("English Name", "bist.borsaistanbul.marketinfo.tip.v2.2.8.englishname", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.equilibrium_price = ProtoField.new("Equilibrium Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.equilibriumprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.equilibrium_volume = ProtoField.new("Equilibrium Volume", "bist.borsaistanbul.marketinfo.tip.v2.2.8.equilibriumvolume", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.exchange_id = ProtoField.new("Exchange Id", "bist.borsaistanbul.marketinfo.tip.v2.2.8.exchangeid", ftypes.UINT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.exclude_cross_trade_from_stats = ProtoField.new("Exclude Cross Trade From Stats", "bist.borsaistanbul.marketinfo.tip.v2.2.8.excludecrosstradefromstats", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.exercise_currency = ProtoField.new("Exercise Currency", "bist.borsaistanbul.marketinfo.tip.v2.2.8.exercisecurrency", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.exercise_from_date = ProtoField.new("Exercise From Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.exercisefromdate", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.exercise_to_date = ProtoField.new("Exercise To Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.exercisetodate", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.exercise_type = ProtoField.new("Exercise Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.exercisetype", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.factor = ProtoField.new("Factor", "bist.borsaistanbul.marketinfo.tip.v2.2.8.factor", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.fineness = ProtoField.new("Fineness", "bist.borsaistanbul.marketinfo.tip.v2.2.8.fineness", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.fineness_notation = ProtoField.new("Fineness Notation", "bist.borsaistanbul.marketinfo.tip.v2.2.8.finenessnotation", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.first_price = ProtoField.new("First Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.firstprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.first_trading_date = ProtoField.new("First Trading Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.firsttradingdate", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.first_trading_time = ProtoField.new("First Trading Time", "bist.borsaistanbul.marketinfo.tip.v2.2.8.firsttradingtime", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.first_yield = ProtoField.new("First Yield", "bist.borsaistanbul.marketinfo.tip.v2.2.8.firstyield", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.fixed_income_classification = ProtoField.new("Fixed Income Classification", "bist.borsaistanbul.marketinfo.tip.v2.2.8.fixedincomeclassification", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.fixed_income_type = ProtoField.new("Fixed Income Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.fixedincometype", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.flush = ProtoField.new("Flush", "bist.borsaistanbul.marketinfo.tip.v2.2.8.flush", ftypes.BOOLEAN)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.free_float_ratio = ProtoField.new("Free Float Ratio", "bist.borsaistanbul.marketinfo.tip.v2.2.8.freefloatratio", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.gross_settlement = ProtoField.new("Gross Settlement", "bist.borsaistanbul.marketinfo.tip.v2.2.8.grosssettlement", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.handled_ccp = ProtoField.new("Handled CCP", "bist.borsaistanbul.marketinfo.tip.v2.2.8.handledccp", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.head_line = ProtoField.new("Head Line", "bist.borsaistanbul.marketinfo.tip.v2.2.8.headline", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.high_price = ProtoField.new("High Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.highprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.high_price_month = ProtoField.new("High Price Month", "bist.borsaistanbul.marketinfo.tip.v2.2.8.highpricemonth", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.high_price_month_date = ProtoField.new("High Price Month Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.highpricemonthdate", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.high_price_year = ProtoField.new("High Price Year", "bist.borsaistanbul.marketinfo.tip.v2.2.8.highpriceyear", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.high_price_year_date = ProtoField.new("High Price Year Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.highpriceyeardate", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.high_settlement_price = ProtoField.new("High Settlement Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.highsettlementprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.high_value = ProtoField.new("High Value", "bist.borsaistanbul.marketinfo.tip.v2.2.8.highvalue", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.high_yield = ProtoField.new("High Yield", "bist.borsaistanbul.marketinfo.tip.v2.2.8.highyield", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.high_yield_month = ProtoField.new("High Yield Month", "bist.borsaistanbul.marketinfo.tip.v2.2.8.highyieldmonth", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.high_yield_year = ProtoField.new("High Yield Year", "bist.borsaistanbul.marketinfo.tip.v2.2.8.highyieldyear", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.hot_inserted = ProtoField.new("Hot Inserted", "bist.borsaistanbul.marketinfo.tip.v2.2.8.hotinserted", ftypes.BOOLEAN)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.id = ProtoField.new("Id", "bist.borsaistanbul.marketinfo.tip.v2.2.8.id", ftypes.UINT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.id_leg = ProtoField.new("Id Leg", "bist.borsaistanbul.marketinfo.tip.v2.2.8.idleg", ftypes.UINT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_classification = ProtoField.new("Index Classification", "bist.borsaistanbul.marketinfo.tip.v2.2.8.indexclassification", ftypes.UINT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_id = ProtoField.new("Index Id", "bist.borsaistanbul.marketinfo.tip.v2.2.8.indexid", ftypes.UINT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_member = ProtoField.new("Index Member", "bist.borsaistanbul.marketinfo.tip.v2.2.8.indexmember", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_name = ProtoField.new("Index Name", "bist.borsaistanbul.marketinfo.tip.v2.2.8.indexname", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_owner = ProtoField.new("Index Owner", "bist.borsaistanbul.marketinfo.tip.v2.2.8.indexowner", ftypes.UINT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_price_type = ProtoField.new("Index Price Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.indexpricetype", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_status = ProtoField.new("Index Status", "bist.borsaistanbul.marketinfo.tip.v2.2.8.indexstatus", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_type = ProtoField.new("Index Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.indextype", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.inflation_coefficient = ProtoField.new("Inflation Coefficient", "bist.borsaistanbul.marketinfo.tip.v2.2.8.inflationcoefficient", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.instrument_classification = ProtoField.new("Instrument Classification", "bist.borsaistanbul.marketinfo.tip.v2.2.8.instrumentclassification", ftypes.UINT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.instrument_source_id = ProtoField.new("Instrument Source Id", "bist.borsaistanbul.marketinfo.tip.v2.2.8.instrumentsourceid", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.isin = ProtoField.new("Isin", "bist.borsaistanbul.marketinfo.tip.v2.2.8.isin", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.issue_currency = ProtoField.new("Issue Currency", "bist.borsaistanbul.marketinfo.tip.v2.2.8.issuecurrency", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.issue_date = ProtoField.new("Issue Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.issuedate", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.issuer_id = ProtoField.new("Issuer Id", "bist.borsaistanbul.marketinfo.tip.v2.2.8.issuerid", ftypes.UINT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_block = ProtoField.new("Last Block", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lastblock", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_compound_yield = ProtoField.new("Last Compound Yield", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lastcompoundyield", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_paid_date = ProtoField.new("Last Paid Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lastpaiddate", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_price = ProtoField.new("Last Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lastprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_settlement_price = ProtoField.new("Last Settlement Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lastsettlementprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_trade_report_price = ProtoField.new("Last Trade Report Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lasttradereportprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_trade_report_quantity = ProtoField.new("Last Trade Report Quantity", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lasttradereportquantity", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_trade_report_yield = ProtoField.new("Last Trade Report Yield", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lasttradereportyield", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_traded_date = ProtoField.new("Last Traded Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lasttradeddate", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_trading_date = ProtoField.new("Last Trading Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lasttradingdate", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_trading_time = ProtoField.new("Last Trading Time", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lasttradingtime", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_volume = ProtoField.new("Last Volume", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lastvolume", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_yield = ProtoField.new("Last Yield", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lastyield", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.latest_trade = ProtoField.new("Latest Trade", "bist.borsaistanbul.marketinfo.tip.v2.2.8.latesttrade", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.list_id = ProtoField.new("List Id", "bist.borsaistanbul.marketinfo.tip.v2.2.8.listid", ftypes.UINT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.listing_date = ProtoField.new("Listing Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.listingdate", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.lot_size = ProtoField.new("Lot Size", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lotsize", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.low_price = ProtoField.new("Low Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lowprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.low_price_month = ProtoField.new("Low Price Month", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lowpricemonth", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.low_price_month_date = ProtoField.new("Low Price Month Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lowpricemonthdate", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.low_price_year = ProtoField.new("Low Price Year", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lowpriceyear", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.low_price_year_date = ProtoField.new("Low Price Year Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lowpriceyeardate", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.low_settlement_price = ProtoField.new("Low Settlement Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lowsettlementprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.low_value = ProtoField.new("Low Value", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lowvalue", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.low_yield = ProtoField.new("Low Yield", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lowyield", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.low_yield_month = ProtoField.new("Low Yield Month", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lowyieldmonth", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.low_yield_year = ProtoField.new("Low Yield Year", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lowyieldyear", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.lower_price_limit = ProtoField.new("Lower Price Limit", "bist.borsaistanbul.marketinfo.tip.v2.2.8.lowerpricelimit", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.margin_price = ProtoField.new("Margin Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.marginprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.market_cap = ProtoField.new("Market Cap", "bist.borsaistanbul.marketinfo.tip.v2.2.8.marketcap", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.market_id = ProtoField.new("Market Id", "bist.borsaistanbul.marketinfo.tip.v2.2.8.marketid", ftypes.UINT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.market_maker = ProtoField.new("Market Maker", "bist.borsaistanbul.marketinfo.tip.v2.2.8.marketmaker", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.market_segment = ProtoField.new("Market Segment", "bist.borsaistanbul.marketinfo.tip.v2.2.8.marketsegment", ftypes.UINT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.maturity_date = ProtoField.new("Maturity Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.maturitydate", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.max_days_order = ProtoField.new("Max Days Order", "bist.borsaistanbul.marketinfo.tip.v2.2.8.maxdaysorder", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.max_order_value = ProtoField.new("Max Order Value", "bist.borsaistanbul.marketinfo.tip.v2.2.8.maxordervalue", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.maximum_lot = ProtoField.new("Maximum Lot", "bist.borsaistanbul.marketinfo.tip.v2.2.8.maximumlot", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.message_source = ProtoField.new("Message Source", "bist.borsaistanbul.marketinfo.tip.v2.2.8.messagesource", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.metal_type = ProtoField.new("Metal Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.metaltype", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.metal_weight = ProtoField.new("Metal Weight", "bist.borsaistanbul.marketinfo.tip.v2.2.8.metalweight", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.metal_weight_conversion_factor = ProtoField.new("Metal Weight Conversion Factor", "bist.borsaistanbul.marketinfo.tip.v2.2.8.metalweightconversionfactor", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.metal_weight_unit = ProtoField.new("Metal Weight Unit", "bist.borsaistanbul.marketinfo.tip.v2.2.8.metalweightunit", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.mic_code = ProtoField.new("Mic Code", "bist.borsaistanbul.marketinfo.tip.v2.2.8.miccode", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.min_volume = ProtoField.new("Min Volume", "bist.borsaistanbul.marketinfo.tip.v2.2.8.minvolume", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.minimum_lot = ProtoField.new("Minimum Lot", "bist.borsaistanbul.marketinfo.tip.v2.2.8.minimumlot", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.minus_bids = ProtoField.new("Minus Bids", "bist.borsaistanbul.marketinfo.tip.v2.2.8.minusbids", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.minus_paid = ProtoField.new("Minus Paid", "bist.borsaistanbul.marketinfo.tip.v2.2.8.minuspaid", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.name = ProtoField.new("Name", "bist.borsaistanbul.marketinfo.tip.v2.2.8.name", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.news_id = ProtoField.new("News Id", "bist.borsaistanbul.marketinfo.tip.v2.2.8.newsid", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.news_object_type = ProtoField.new("News Object Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.newsobjecttype", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.no_of_dec_price = ProtoField.new("No Of Dec Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.noofdecprice", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.no_of_dec_yield = ProtoField.new("No Of Dec Yield", "bist.borsaistanbul.marketinfo.tip.v2.2.8.noofdecyield", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.nominal_value = ProtoField.new("Nominal Value", "bist.borsaistanbul.marketinfo.tip.v2.2.8.nominalvalue", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.note_code = ProtoField.new("Note Code", "bist.borsaistanbul.marketinfo.tip.v2.2.8.notecode", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.notional_value = ProtoField.new("Notional Value", "bist.borsaistanbul.marketinfo.tip.v2.2.8.notionalvalue", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.notional_value_in_value_currency = ProtoField.new("Notional Value In Value Currency", "bist.borsaistanbul.marketinfo.tip.v2.2.8.notionalvalueinvaluecurrency", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.number_of_trade_reports = ProtoField.new("Number Of Trade Reports", "bist.borsaistanbul.marketinfo.tip.v2.2.8.numberoftradereports", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.number_of_trades = ProtoField.new("Number Of Trades", "bist.borsaistanbul.marketinfo.tip.v2.2.8.numberoftrades", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.odd_first = ProtoField.new("Odd First", "bist.borsaistanbul.marketinfo.tip.v2.2.8.oddfirst", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.odd_last = ProtoField.new("Odd Last", "bist.borsaistanbul.marketinfo.tip.v2.2.8.oddlast", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.official_closing_price = ProtoField.new("Official Closing Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.officialclosingprice", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.official_closing_turnover = ProtoField.new("Official Closing Turnover", "bist.borsaistanbul.marketinfo.tip.v2.2.8.officialclosingturnover", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.old_index_value = ProtoField.new("Old Index Value", "bist.borsaistanbul.marketinfo.tip.v2.2.8.oldindexvalue", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.old_series = ProtoField.new("Old Series", "bist.borsaistanbul.marketinfo.tip.v2.2.8.oldseries", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.open_interest = ProtoField.new("Open Interest", "bist.borsaistanbul.marketinfo.tip.v2.2.8.openinterest", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.open_value = ProtoField.new("Open Value", "bist.borsaistanbul.marketinfo.tip.v2.2.8.openvalue", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.operational = ProtoField.new("Operational", "bist.borsaistanbul.marketinfo.tip.v2.2.8.operational", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.order_class = ProtoField.new("Order Class", "bist.borsaistanbul.marketinfo.tip.v2.2.8.orderclass", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.order_key = ProtoField.new("Order Key", "bist.borsaistanbul.marketinfo.tip.v2.2.8.orderkey", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.orderbook_id = ProtoField.new("Orderbook Id", "bist.borsaistanbul.marketinfo.tip.v2.2.8.orderbookid", ftypes.UINT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.outside_spread = ProtoField.new("Outside Spread", "bist.borsaistanbul.marketinfo.tip.v2.2.8.outsidespread", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.outstanding_amount = ProtoField.new("Outstanding Amount", "bist.borsaistanbul.marketinfo.tip.v2.2.8.outstandingamount", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.parent_id = ProtoField.new("Parent Id", "bist.borsaistanbul.marketinfo.tip.v2.2.8.parentid", ftypes.UINT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.participant = ProtoField.new("Participant", "bist.borsaistanbul.marketinfo.tip.v2.2.8.participant", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.participant_type = ProtoField.new("Participant Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.participanttype", ftypes.UINT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.plus_bids = ProtoField.new("Plus Bids", "bist.borsaistanbul.marketinfo.tip.v2.2.8.plusbids", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.plus_paid = ProtoField.new("Plus Paid", "bist.borsaistanbul.marketinfo.tip.v2.2.8.pluspaid", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.population_type = ProtoField.new("Population Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.populationtype", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.position_increasing_orders = ProtoField.new("Position Increasing Orders", "bist.borsaistanbul.marketinfo.tip.v2.2.8.positionincreasingorders", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.posttrade_anonymity = ProtoField.new("Posttrade Anonymity", "bist.borsaistanbul.marketinfo.tip.v2.2.8.posttradeanonymity", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.pretrade_anonymity = ProtoField.new("Pretrade Anonymity", "bist.borsaistanbul.marketinfo.tip.v2.2.8.pretradeanonymity", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.price = ProtoField.new("Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.price", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.price_from = ProtoField.new("Price From", "bist.borsaistanbul.marketinfo.tip.v2.2.8.pricefrom", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.price_to = ProtoField.new("Price To", "bist.borsaistanbul.marketinfo.tip.v2.2.8.priceto", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.price_type = ProtoField.new("Price Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.pricetype", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.price_unit = ProtoField.new("Price Unit", "bist.borsaistanbul.marketinfo.tip.v2.2.8.priceunit", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.price_weight_unit = ProtoField.new("Price Weight Unit", "bist.borsaistanbul.marketinfo.tip.v2.2.8.priceweightunit", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.principal_value = ProtoField.new("Principal Value", "bist.borsaistanbul.marketinfo.tip.v2.2.8.principalvalue", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ranked_ask_collateral_price = ProtoField.new("Ranked Ask Collateral Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.rankedaskcollateralprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ranked_ask_order_key = ProtoField.new("Ranked Ask Order Key", "bist.borsaistanbul.marketinfo.tip.v2.2.8.rankedaskorderkey", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ranked_ask_price = ProtoField.new("Ranked Ask Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.rankedaskprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ranked_ask_volume = ProtoField.new("Ranked Ask Volume", "bist.borsaistanbul.marketinfo.tip.v2.2.8.rankedaskvolume", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ranked_ask_yield = ProtoField.new("Ranked Ask Yield", "bist.borsaistanbul.marketinfo.tip.v2.2.8.rankedaskyield", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ranked_bid_collateral_price = ProtoField.new("Ranked Bid Collateral Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.rankedbidcollateralprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ranked_bid_order_key = ProtoField.new("Ranked Bid Order Key", "bist.borsaistanbul.marketinfo.tip.v2.2.8.rankedbidorderkey", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ranked_bid_price = ProtoField.new("Ranked Bid Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.rankedbidprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ranked_bid_volume = ProtoField.new("Ranked Bid Volume", "bist.borsaistanbul.marketinfo.tip.v2.2.8.rankedbidvolume", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ranked_bid_yield = ProtoField.new("Ranked Bid Yield", "bist.borsaistanbul.marketinfo.tip.v2.2.8.rankedbidyield", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ranking_type = ProtoField.new("Ranking Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.rankingtype", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ratio = ProtoField.new("Ratio", "bist.borsaistanbul.marketinfo.tip.v2.2.8.ratio", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.refinery_class = ProtoField.new("Refinery Class", "bist.borsaistanbul.marketinfo.tip.v2.2.8.refineryclass", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.remaining_ask_volume_at_ep_level = ProtoField.new("Remaining Ask Volume At EP Level", "bist.borsaistanbul.marketinfo.tip.v2.2.8.remainingaskvolumeateplevel", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.remaining_bid_volume_at_ep_level = ProtoField.new("Remaining Bid Volume At EP Level", "bist.borsaistanbul.marketinfo.tip.v2.2.8.remainingbidvolumeateplevel", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "bist.borsaistanbul.marketinfo.tip.v2.2.8.remainingquantity", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.repo_interest_amount = ProtoField.new("Repo Interest Amount", "bist.borsaistanbul.marketinfo.tip.v2.2.8.repointerestamount", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.reset_date = ProtoField.new("Reset Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.resetdate", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.return_type = ProtoField.new("Return Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.returntype", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.sector_id = ProtoField.new("Sector Id", "bist.borsaistanbul.marketinfo.tip.v2.2.8.sectorid", ftypes.UINT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.security_type = ProtoField.new("Security Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.securitytype", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.settlement_date = ProtoField.new("Settlement Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.settlementdate", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.settlement_price = ProtoField.new("Settlement Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.settlementprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.settlement_price_at_end_date = ProtoField.new("Settlement Price At End Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.settlementpriceatenddate", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.settlement_price_at_start_date = ProtoField.new("Settlement Price At Start Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.settlementpriceatstartdate", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.settlement_price_vwap = ProtoField.new("Settlement Price VWAP", "bist.borsaistanbul.marketinfo.tip.v2.2.8.settlementpricevwap", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.settlement_type = ProtoField.new("Settlement Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.settlementtype", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.short_sale_restriction = ProtoField.new("Short Sale Restriction", "bist.borsaistanbul.marketinfo.tip.v2.2.8.shortsalerestriction", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.sod_eod = ProtoField.new("Sod Eod", "bist.borsaistanbul.marketinfo.tip.v2.2.8.sodeod", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.source_id = ProtoField.new("Source Id", "bist.borsaistanbul.marketinfo.tip.v2.2.8.sourceid", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.source_system = ProtoField.new("Source System", "bist.borsaistanbul.marketinfo.tip.v2.2.8.sourcesystem", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.start_date = ProtoField.new("Start Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.startdate", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.start_time = ProtoField.new("Start Time", "bist.borsaistanbul.marketinfo.tip.v2.2.8.starttime", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.state_code = ProtoField.new("State Code", "bist.borsaistanbul.marketinfo.tip.v2.2.8.statecode", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.state_level = ProtoField.new("State Level", "bist.borsaistanbul.marketinfo.tip.v2.2.8.statelevel", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.status = ProtoField.new("Status", "bist.borsaistanbul.marketinfo.tip.v2.2.8.status", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.strike_price = ProtoField.new("Strike Price", "bist.borsaistanbul.marketinfo.tip.v2.2.8.strikeprice", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.symbol = ProtoField.new("Symbol", "bist.borsaistanbul.marketinfo.tip.v2.2.8.symbol", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.table_entry_type = ProtoField.new("Table Entry Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tableentrytype", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tailor_made = ProtoField.new("Tailor Made", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tailormade", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.text = ProtoField.new("Text", "bist.borsaistanbul.marketinfo.tip.v2.2.8.text", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tick_size = ProtoField.new("Tick Size", "bist.borsaistanbul.marketinfo.tip.v2.2.8.ticksize", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tick_size_table_id = ProtoField.new("Tick Size Table Id", "bist.borsaistanbul.marketinfo.tip.v2.2.8.ticksizetableid", ftypes.UINT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.time_exec = ProtoField.new("Time Exec", "bist.borsaistanbul.marketinfo.tip.v2.2.8.timeexec", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.time_offset_utc = ProtoField.new("Time Offset UTC", "bist.borsaistanbul.marketinfo.tip.v2.2.8.timeoffsetutc", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.timestamp_agreement = ProtoField.new("Timestamp Agreement", "bist.borsaistanbul.marketinfo.tip.v2.2.8.timestampagreement", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.timestamp_dissemination = ProtoField.new("Timestamp Dissemination", "bist.borsaistanbul.marketinfo.tip.v2.2.8.timestampdissemination", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.timestamp_trade_cancel = ProtoField.new("Timestamp Trade Cancel", "bist.borsaistanbul.marketinfo.tip.v2.2.8.timestamptradecancel", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.timestamp_trade_rectify = ProtoField.new("Timestamp Trade Rectify", "bist.borsaistanbul.marketinfo.tip.v2.2.8.timestamptraderectify", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tot_vol_all_ask = ProtoField.new("Tot Vol All Ask", "bist.borsaistanbul.marketinfo.tip.v2.2.8.totvolallask", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tot_vol_all_bid = ProtoField.new("Tot Vol All Bid", "bist.borsaistanbul.marketinfo.tip.v2.2.8.totvolallbid", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.total_issue = ProtoField.new("Total Issue", "bist.borsaistanbul.marketinfo.tip.v2.2.8.totalissue", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.total_number_of_trades = ProtoField.new("Total Number Of Trades", "bist.borsaistanbul.marketinfo.tip.v2.2.8.totalnumberoftrades", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_buyer = ProtoField.new("Trade Buyer", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradebuyer", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_cancel = ProtoField.new("Trade Cancel", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradecancel", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_class = ProtoField.new("Trade Class", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradeclass", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_id = ProtoField.new("Trade Id", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradeid", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_info = ProtoField.new("Trade Info", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradeinfo", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_number = ProtoField.new("Trade Number", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradenumber", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_rectify = ProtoField.new("Trade Rectify", "bist.borsaistanbul.marketinfo.tip.v2.2.8.traderectify", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_report_notional_value = ProtoField.new("Trade Report Notional Value", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradereportnotionalvalue", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_report_notional_value_in_value_currency = ProtoField.new("Trade Report Notional Value In Value Currency", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradereportnotionalvalueinvaluecurrency", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_report_turnover = ProtoField.new("Trade Report Turnover", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradereportturnover", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_report_turnover_in_value_currency = ProtoField.new("Trade Report Turnover In Value Currency", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradereportturnoverinvaluecurrency", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_report_updates_high_low = ProtoField.new("Trade Report Updates High Low", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradereportupdateshighlow", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_report_updates_last_paid = ProtoField.new("Trade Report Updates Last Paid", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradereportupdateslastpaid", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_report_updates_turnover = ProtoField.new("Trade Report Updates Turnover", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradereportupdatesturnover", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_reports_allowed = ProtoField.new("Trade Reports Allowed", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradereportsallowed", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_seller = ProtoField.new("Trade Seller", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradeseller", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_type = ProtoField.new("Trade Type", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradetype", ftypes.UINT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trading_currency = ProtoField.new("Trading Currency", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradingcurrency", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trading_method = ProtoField.new("Trading Method", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradingmethod", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trading_session = ProtoField.new("Trading Session", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradingsession", ftypes.UINT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.turnover = ProtoField.new("Turnover", "bist.borsaistanbul.marketinfo.tip.v2.2.8.turnover", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.turnover_calculation_enabled = ProtoField.new("Turnover Calculation Enabled", "bist.borsaistanbul.marketinfo.tip.v2.2.8.turnovercalculationenabled", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.turnover_in_value_currency = ProtoField.new("Turnover In Value Currency", "bist.borsaistanbul.marketinfo.tip.v2.2.8.turnoverinvaluecurrency", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.twap = ProtoField.new("TWAP", "bist.borsaistanbul.marketinfo.tip.v2.2.8.twap", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.unchanged_bids = ProtoField.new("Unchanged Bids", "bist.borsaistanbul.marketinfo.tip.v2.2.8.unchangedbids", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.unchanged_paid = ProtoField.new("Unchanged Paid", "bist.borsaistanbul.marketinfo.tip.v2.2.8.unchangedpaid", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.underlying_id = ProtoField.new("Underlying Id", "bist.borsaistanbul.marketinfo.tip.v2.2.8.underlyingid", ftypes.UINT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.underlying_source_id = ProtoField.new("Underlying Source Id", "bist.borsaistanbul.marketinfo.tip.v2.2.8.underlyingsourceid", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.units_of_trading = ProtoField.new("Units Of Trading", "bist.borsaistanbul.marketinfo.tip.v2.2.8.unitsoftrading", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.update_code = ProtoField.new("Update Code", "bist.borsaistanbul.marketinfo.tip.v2.2.8.updatecode", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.upper_price_limit = ProtoField.new("Upper Price Limit", "bist.borsaistanbul.marketinfo.tip.v2.2.8.upperpricelimit", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.url = ProtoField.new("URL", "bist.borsaistanbul.marketinfo.tip.v2.2.8.url", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.validation_vwap = ProtoField.new("Validation VWAP", "bist.borsaistanbul.marketinfo.tip.v2.2.8.validationvwap", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.value_currency = ProtoField.new("Value Currency", "bist.borsaistanbul.marketinfo.tip.v2.2.8.valuecurrency", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.value_date = ProtoField.new("Value Date", "bist.borsaistanbul.marketinfo.tip.v2.2.8.valuedate", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.vault_location = ProtoField.new("Vault Location", "bist.borsaistanbul.marketinfo.tip.v2.2.8.vaultlocation", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.volume = ProtoField.new("Volume", "bist.borsaistanbul.marketinfo.tip.v2.2.8.volume", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.volume_dimension = ProtoField.new("Volume Dimension", "bist.borsaistanbul.marketinfo.tip.v2.2.8.volumedimension", ftypes.INT64)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.vwap = ProtoField.new("VWAP", "bist.borsaistanbul.marketinfo.tip.v2.2.8.vwap", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.vwap_diff_per = ProtoField.new("VWAP Diff Per", "bist.borsaistanbul.marketinfo.tip.v2.2.8.vwapdiffper", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.w_avg_price_all_ask = ProtoField.new("W Avg Price All Ask", "bist.borsaistanbul.marketinfo.tip.v2.2.8.wavgpriceallask", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.w_avg_price_all_bid = ProtoField.new("W Avg Price All Bid", "bist.borsaistanbul.marketinfo.tip.v2.2.8.wavgpriceallbid", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.weight_percent = ProtoField.new("Weight Percent", "bist.borsaistanbul.marketinfo.tip.v2.2.8.weightpercent", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.weighted_free_float_mkt_value = ProtoField.new("Weighted Free Float Mkt Value", "bist.borsaistanbul.marketinfo.tip.v2.2.8.weightedfreefloatmktvalue", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.weighting_factor = ProtoField.new("Weighting Factor", "bist.borsaistanbul.marketinfo.tip.v2.2.8.weightingfactor", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.yield = ProtoField.new("Yield", "bist.borsaistanbul.marketinfo.tip.v2.2.8.yield", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.yield_vwap = ProtoField.new("Yield VWAP", "bist.borsaistanbul.marketinfo.tip.v2.2.8.yieldvwap", ftypes.DOUBLE)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tip_level = ProtoField.new("Level", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tiplevel", ftypes.UINT32)

-- Bist BorsaIstanbul MarketInfo 2.2.8 Tip Messages
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.allocation_price_message = ProtoField.new("Allocation Price Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.allocationpricemessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_business_date_message = ProtoField.new("Basic Data Business Date Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdatabusinessdatemessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_clearing_venue_message = ProtoField.new("Basic Data Clearing Venue Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdataclearingvenuemessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_combo_leg_message = ProtoField.new("Basic Data Combo Leg Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdatacombolegmessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_deliverable_serie_message = ProtoField.new("Basic Data Deliverable Serie Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdatadeliverableseriemessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_derivative_message = ProtoField.new("Basic Data Derivative Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdataderivativemessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_exchange_message = ProtoField.new("Basic Data Exchange Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdataexchangemessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_fixed_income_message = ProtoField.new("Basic Data Fixed Income Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdatafixedincomemessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_fund_message = ProtoField.new("Basic Data Fund Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdatafundmessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_index_member_message = ProtoField.new("Basic Data Index Member Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdataindexmembermessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_index_message = ProtoField.new("Basic Data Index Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdataindexmessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_index_supplementary_message = ProtoField.new("Basic Data Index Supplementary Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdataindexsupplementarymessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_issuer_message = ProtoField.new("Basic Data Issuer Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdataissuermessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_list_member_message = ProtoField.new("Basic Data List Member Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdatalistmembermessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_list_message = ProtoField.new("Basic Data List Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdatalistmessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_market_message = ProtoField.new("Basic Data Market Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdatamarketmessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_non_trading_days_message = ProtoField.new("Basic Data Non Trading Days Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdatanontradingdaysmessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_participant_message = ProtoField.new("Basic Data Participant Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdataparticipantmessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_precious_metals_and_diamonds_message = ProtoField.new("Basic Data Precious Metals And Diamonds Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdatapreciousmetalsanddiamondsmessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_right_message = ProtoField.new("Basic Data Right Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdatarightmessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_sector_member_message = ProtoField.new("Basic Data Sector Member Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdatasectormembermessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_sector_message = ProtoField.new("Basic Data Sector Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdatasectormessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_share_message = ProtoField.new("Basic Data Share Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdatasharemessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_source_message = ProtoField.new("Basic Data Source Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdatasourcemessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_table_entry_message = ProtoField.new("Basic Data Table Entry Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdatatableentrymessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_tick_size_entry_message = ProtoField.new("Basic Data Tick Size Entry Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdataticksizeentrymessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_tick_size_table_message = ProtoField.new("Basic Data Tick Size Table Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdataticksizetablemessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_tradable_message = ProtoField.new("Basic Data Tradable Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdatatradablemessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_tradable_supplementary_message = ProtoField.new("Basic Data Tradable Supplementary Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdatatradablesupplementarymessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_trading_scheme_message = ProtoField.new("Basic Data Trading Scheme Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdatatradingschememessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_underlying_info_message = ProtoField.new("Basic Data Underlying Info Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.basicdataunderlyinginfomessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.call_information1_message = ProtoField.new("Call Information1 Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.callinformation1message", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.call_information2_message = ProtoField.new("Call Information2 Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.callinformation2message", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.corporate_action_message = ProtoField.new("Corporate Action Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.corporateactionmessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.end_of_basic_data_message = ProtoField.new("End Of Basic Data Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.endofbasicdatamessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_divisor_message = ProtoField.new("Index Divisor Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.indexdivisormessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_summary_message = ProtoField.new("Index Summary Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.indexsummarymessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_update_message = ProtoField.new("Index Update Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.indexupdatemessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_weight_message = ProtoField.new("Index Weight Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.indexweightmessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.margin_price_message = ProtoField.new("Margin Price Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.marginpricemessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.market_maker_quote1_message = ProtoField.new("Market Maker Quote1 Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.marketmakerquote1message", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.market_maker_quote2_message = ProtoField.new("Market Maker Quote2 Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.marketmakerquote2message", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.mbp_order_snapshot_message = ProtoField.new("MBP Order Snapshot Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.mbpordersnapshotmessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.news_message = ProtoField.new("News Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.newsmessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.open_interest_message = ProtoField.new("Open Interest Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.openinterestmessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.order_mbo_message = ProtoField.new("Order MBO Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.ordermbomessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.orderbook1_message = ProtoField.new("Orderbook1 Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.orderbook1message", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.orderbook2_message = ProtoField.new("Orderbook2 Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.orderbook2message", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.orderbook3_message = ProtoField.new("Orderbook3 Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.orderbook3message", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.orderbook_reference_price_message = ProtoField.new("Orderbook Reference Price Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.orderbookreferencepricemessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.orderbook_summary_message = ProtoField.new("Orderbook Summary Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.orderbooksummarymessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.quote1_message = ProtoField.new("Quote1 Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.quote1message", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.quote2_message = ProtoField.new("Quote2 Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.quote2message", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.settlement_price_message = ProtoField.new("Settlement Price Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.settlementpricemessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.state_change_message = ProtoField.new("State Change Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.statechangemessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.supplementary_message = ProtoField.new("Supplementary Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.supplementarymessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tradable_info_message = ProtoField.new("Tradable Info Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradableinfomessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tradable_status_message = ProtoField.new("Tradable Status Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradablestatusmessage", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade1_message = ProtoField.new("Trade1 Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.trade1message", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade2_message = ProtoField.new("Trade2 Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.trade2message", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_statistics1_message = ProtoField.new("Trade Statistics1 Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradestatistics1message", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_statistics2_message = ProtoField.new("Trade Statistics2 Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradestatistics2message", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_statistics3_message = ProtoField.new("Trade Statistics3 Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.tradestatistics3message", ftypes.STRING)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.turnover_list_update_message = ProtoField.new("Turnover List Update Message", "bist.borsaistanbul.marketinfo.tip.v2.2.8.turnoverlistupdatemessage", ftypes.STRING)

-- Bist BorsaIstanbul MarketInfo 2.2.8 Tip Expert Info
bist_borsaistanbul_marketinfo_tip_v2_2_8.experts = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.unknown_message = ProtoExpert.new("bist.borsaistanbul.marketinfo.tip.v2.2.8.unknownmessage", "Unknown tip message type", expert.group.UNDECODED, expert.severity.WARN)
bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.unknown_tag = ProtoExpert.new("bist.borsaistanbul.marketinfo.tip.v2.2.8.unknowntag", "Unknown tip tag, skipped as the specification requires", expert.group.UNDECODED, expert.severity.NOTE)
bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.unexpected_tag = ProtoExpert.new("bist.borsaistanbul.marketinfo.tip.v2.2.8.unexpectedtag", "Tip tag the message does not carry", expert.group.PROTOCOL, expert.severity.NOTE)
bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.missing_tag = ProtoExpert.new("bist.borsaistanbul.marketinfo.tip.v2.2.8.missingtag", "Mandatory tip tag missing", expert.group.MALFORMED, expert.severity.WARN)
bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value = ProtoExpert.new("bist.borsaistanbul.marketinfo.tip.v2.2.8.invalidvalue", "Tip value does not read as its type", expert.group.MALFORMED, expert.severity.WARN)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.experts = { bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.unknown_message, bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.unknown_tag, bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.unexpected_tag, bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.missing_tag, bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value }

-----------------------------------------------------------------------
-- Bist BorsaIstanbul MarketInfo Tip 2.2.8 Formatting
-----------------------------------------------------------------------

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

-- Bist BorsaIstanbul MarketInfo Tip 2.2.8 Element Dissection Options
show.structs = true
show.headers = true
show.session_messages = true
show.sequences = true

-- Register Bist BorsaIstanbul MarketInfo Tip 2.2.8 Show Options
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

-- Handle changed preferences
function omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.prefs_changed()

  -- Check if preferences have changed
  if show.headers ~= omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.prefs.show_headers then
    show.headers = omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.prefs.show_headers
  end
  if show.session_messages ~= omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.prefs.show_session_messages then
    show.session_messages = omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.prefs.show_session_messages
  end
  if show.structs ~= omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.prefs.show_structs then
    show.structs = omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.prefs.show_structs
  end
  if show.sequences ~= omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.prefs.show_sequences then
    show.sequences = omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.prefs.show_sequences
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
bist_borsaistanbul_marketinfo_tip_v2_2_8.conversation = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
bist_borsaistanbul_marketinfo_tip_v2_2_8.stream_frame = nil
bist_borsaistanbul_marketinfo_tip_v2_2_8.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
bist_borsaistanbul_marketinfo_tip_v2_2_8.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
bist_borsaistanbul_marketinfo_tip_v2_2_8.conversation.data = function(packet)
  local key = bist_borsaistanbul_marketinfo_tip_v2_2_8.conversation.key(packet)
  local data = bist_borsaistanbul_marketinfo_tip_v2_2_8.conversation.flows[key]
  if data == nil then
    data = { accepted_sequence_number = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    bist_borsaistanbul_marketinfo_tip_v2_2_8.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
bist_borsaistanbul_marketinfo_tip_v2_2_8.conversation.current = nil


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
-- Bist BorsaIstanbul MarketInfo 2.2.8 Tip Functions
-----------------------------------------------------------------------

-- Tokens of a tip message: offset and length of each ';' terminated token, a '\' escaping the byte after it
bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_tokens = function(buffer, offset, size)
  local text = buffer(offset, size):raw()
  local tokens = {}
  local start = 1
  local index = 1
  while index <= #text do
    local byte = text:byte(index)
    if byte == 92 then
      index = index + 2
    elseif byte == 59 then
      if index > start then
        tokens[#tokens + 1] = { offset = offset + start - 1, length = index - start }
      end
      index = index + 1
      start = index
    else
      index = index + 1
    end
  end
  if start <= #text then
    tokens[#tokens + 1] = { offset = offset + start - 1, length = #text - start + 1 }
  end
  return tokens
end

-- Text of a value with its '\' escapes removed
bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text = function(range)
  return (range:string():gsub("\\(.)", "%1"))
end

-- Tag code of a token: upper case letters then one lower case letter
bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_code = function(buffer, token)
  return buffer(token.offset, token.length):string():match("^%u*%l")
end


-----------------------------------------------------------------------
-- Bist BorsaIstanbul MarketInfo 2.2.8 Tip Tags
-----------------------------------------------------------------------

-- Abbreviated Name (SNm): String 32
bist_borsaistanbul_marketinfo_tip_v2_2_8.abbreviated_name = {}

-- Display: Abbreviated Name
bist_borsaistanbul_marketinfo_tip_v2_2_8.abbreviated_name.display = function(value)
  return "Abbreviated Name: "..value
end

-- Dissect: Abbreviated Name
bist_borsaistanbul_marketinfo_tip_v2_2_8.abbreviated_name.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.abbreviated_name.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.abbreviated_name, range, value, display)
end

-- Accrued Interest (Ai): Float 13,9
bist_borsaistanbul_marketinfo_tip_v2_2_8.accrued_interest = {}

-- Display: Accrued Interest
bist_borsaistanbul_marketinfo_tip_v2_2_8.accrued_interest.display = function(value)
  return "Accrued Interest: "..value
end

-- Dissect: Accrued Interest
bist_borsaistanbul_marketinfo_tip_v2_2_8.accrued_interest.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Accrued Interest: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.accrued_interest.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accrued_interest, range, value, display)
end

-- Accrued Value (Av): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.accrued_value = {}

-- Display: Accrued Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.accrued_value.display = function(value)
  return "Accrued Value: "..value
end

-- Dissect: Accrued Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.accrued_value.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Accrued Value: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.accrued_value.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accrued_value, range, value, display)
end

-- Accumulated Notional Value (An): Float 16,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_notional_value = {}

-- Display: Accumulated Notional Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_notional_value.display = function(value)
  return "Accumulated Notional Value: "..value
end

-- Dissect: Accumulated Notional Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_notional_value.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Accumulated Notional Value: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_notional_value.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accumulated_notional_value, range, value, display)
end

-- Accumulated Notional Value In Value Currency (ANc): Float 16,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_notional_value_in_value_currency = {}

-- Display: Accumulated Notional Value In Value Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_notional_value_in_value_currency.display = function(value)
  return "Accumulated Notional Value In Value Currency: "..value
end

-- Dissect: Accumulated Notional Value In Value Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_notional_value_in_value_currency.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Accumulated Notional Value In Value Currency: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_notional_value_in_value_currency.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accumulated_notional_value_in_value_currency, range, value, display)
end

-- Accumulated Trade Report Notional Value (RAn): Float 16,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_notional_value = {}

-- Display: Accumulated Trade Report Notional Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_notional_value.display = function(value)
  return "Accumulated Trade Report Notional Value: "..value
end

-- Dissect: Accumulated Trade Report Notional Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_notional_value.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Accumulated Trade Report Notional Value: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_notional_value.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accumulated_trade_report_notional_value, range, value, display)
end

-- Accumulated Trade Report Notional Value In Value Currency (RAc): Float 16,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_notional_value_in_value_currency = {}

-- Display: Accumulated Trade Report Notional Value In Value Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_notional_value_in_value_currency.display = function(value)
  return "Accumulated Trade Report Notional Value In Value Currency: "..value
end

-- Dissect: Accumulated Trade Report Notional Value In Value Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_notional_value_in_value_currency.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Accumulated Trade Report Notional Value In Value Currency: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_notional_value_in_value_currency.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accumulated_trade_report_notional_value_in_value_currency, range, value, display)
end

-- Accumulated Trade Report Turnover (Ar): Float 16,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_turnover = {}

-- Display: Accumulated Trade Report Turnover
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_turnover.display = function(value)
  return "Accumulated Trade Report Turnover: "..value
end

-- Dissect: Accumulated Trade Report Turnover
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_turnover.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Accumulated Trade Report Turnover: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_turnover.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accumulated_trade_report_turnover, range, value, display)
end

-- Accumulated Trade Report Turnover In Value Currency (ARc): Float 16,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_turnover_in_value_currency = {}

-- Display: Accumulated Trade Report Turnover In Value Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_turnover_in_value_currency.display = function(value)
  return "Accumulated Trade Report Turnover In Value Currency: "..value
end

-- Dissect: Accumulated Trade Report Turnover In Value Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_turnover_in_value_currency.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Accumulated Trade Report Turnover In Value Currency: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_turnover_in_value_currency.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accumulated_trade_report_turnover_in_value_currency, range, value, display)
end

-- Accumulated Trade Report Volume (Rq): Float 16,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_volume = {}

-- Display: Accumulated Trade Report Volume
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_volume.display = function(value)
  return "Accumulated Trade Report Volume: "..value
end

-- Dissect: Accumulated Trade Report Volume
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_volume.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Accumulated Trade Report Volume: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_volume.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accumulated_trade_report_volume, range, value, display)
end

-- Accumulated Turnover (f): Float 16,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_turnover = {}

-- Display: Accumulated Turnover
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_turnover.display = function(value)
  return "Accumulated Turnover: "..value
end

-- Dissect: Accumulated Turnover
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_turnover.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Accumulated Turnover: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_turnover.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accumulated_turnover, range, value, display)
end

-- Accumulated Turnover In Value Currency (ATc): Float 16,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_turnover_in_value_currency = {}

-- Display: Accumulated Turnover In Value Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_turnover_in_value_currency.display = function(value)
  return "Accumulated Turnover In Value Currency: "..value
end

-- Dissect: Accumulated Turnover In Value Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_turnover_in_value_currency.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Accumulated Turnover In Value Currency: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_turnover_in_value_currency.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accumulated_turnover_in_value_currency, range, value, display)
end

-- Accumulated Volume (o): Float 16,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_volume = {}

-- Display: Accumulated Volume
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_volume.display = function(value)
  return "Accumulated Volume: "..value
end

-- Dissect: Accumulated Volume
bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_volume.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Accumulated Volume: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_volume.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accumulated_volume, range, value, display)
end

-- Action Status (SRe): ActionStatus 2
bist_borsaistanbul_marketinfo_tip_v2_2_8.action_status = {}

-- Display: Action Status
bist_borsaistanbul_marketinfo_tip_v2_2_8.action_status.display = function(value)
  if value == "1" then
    return "Action Status: ".."Enabled (1)"
  end
  if value == "2" then
    return "Action Status: ".."Disabled (2)"
  end
  return "Action Status: ".."Unknown ("..value..")"
end

-- Dissect: Action Status
bist_borsaistanbul_marketinfo_tip_v2_2_8.action_status.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Action Status: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.action_status.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.action_status, range, value, display)
end

-- Additional Reference Price (ARp): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.additional_reference_price = {}

-- Display: Additional Reference Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.additional_reference_price.display = function(value)
  return "Additional Reference Price: "..value
end

-- Dissect: Additional Reference Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.additional_reference_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Additional Reference Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.additional_reference_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.additional_reference_price, range, value, display)
end

-- Aggressive Party (Ag): Char
bist_borsaistanbul_marketinfo_tip_v2_2_8.aggressive_party = {}

-- Display: Aggressive Party
bist_borsaistanbul_marketinfo_tip_v2_2_8.aggressive_party.display = function(value)
  return "Aggressive Party: "..value
end

-- Dissect: Aggressive Party
bist_borsaistanbul_marketinfo_tip_v2_2_8.aggressive_party.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.aggressive_party.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.aggressive_party, range, value, display)
end

-- Allocation Price (APr): Double 14,7
bist_borsaistanbul_marketinfo_tip_v2_2_8.allocation_price = {}

-- Display: Allocation Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.allocation_price.display = function(value)
  return "Allocation Price: "..value
end

-- Dissect: Allocation Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.allocation_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Allocation Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.allocation_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.allocation_price, range, value, display)
end

-- Amount Of Collateral (Ac): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.amount_of_collateral = {}

-- Display: Amount Of Collateral
bist_borsaistanbul_marketinfo_tip_v2_2_8.amount_of_collateral.display = function(value)
  return "Amount Of Collateral: "..value
end

-- Dissect: Amount Of Collateral
bist_borsaistanbul_marketinfo_tip_v2_2_8.amount_of_collateral.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Amount Of Collateral: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.amount_of_collateral.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.amount_of_collateral, range, value, display)
end

-- Ask Collateral Price At Level (Ca): Ifloat 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_collateral_price_at_level = {}

-- Display: Ask Collateral Price At Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_collateral_price_at_level.display = function(value, level)
  return "Ask Collateral Price At Level ["..level.."]: "..value
end

-- Dissect: Ask Collateral Price At Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_collateral_price_at_level.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local level, rest = text:match("^(%d+):(.*)$")
  if level == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ask Collateral Price At Level: indexed value without a level: "..text)
    return
  end
  text = rest
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ask Collateral Price At Level: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_collateral_price_at_level.display(text, level)

  local item = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_collateral_price_at_level, range, value, display)
  item:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tip_level, range, tonumber(level))
end

-- Ask Collateral Price At Level1 (ACPl): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_collateral_price_at_level1 = {}

-- Display: Ask Collateral Price At Level1
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_collateral_price_at_level1.display = function(value)
  return "Ask Collateral Price At Level1: "..value
end

-- Dissect: Ask Collateral Price At Level1
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_collateral_price_at_level1.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ask Collateral Price At Level1: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_collateral_price_at_level1.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_collateral_price_at_level1, range, value, display)
end

-- Ask Level Deleted (e): Integer 3
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_level_deleted = {}

-- Display: Ask Level Deleted
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_level_deleted.display = function(value)
  return "Ask Level Deleted: "..value
end

-- Dissect: Ask Level Deleted
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_level_deleted.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ask Level Deleted: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_level_deleted.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_level_deleted, range, value, display)
end

-- Ask Orders At Level (k): Iinteger 10
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_orders_at_level = {}

-- Display: Ask Orders At Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_orders_at_level.display = function(value, level)
  return "Ask Orders At Level ["..level.."]: "..value
end

-- Dissect: Ask Orders At Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_orders_at_level.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local level, rest = text:match("^(%d+):(.*)$")
  if level == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ask Orders At Level: indexed value without a level: "..text)
    return
  end
  text = rest
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ask Orders At Level: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_orders_at_level.display(text, level)

  local item = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_orders_at_level, range, value, display)
  item:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tip_level, range, tonumber(level))
end

-- Ask Price (Pa): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_price = {}

-- Display: Ask Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ask Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_price, range, value, display)
end

-- Ask Price At Level (a): Ifloat 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_price_at_level = {}

-- Display: Ask Price At Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_price_at_level.display = function(value, level)
  return "Ask Price At Level ["..level.."]: "..value
end

-- Dissect: Ask Price At Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_price_at_level.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local level, rest = text:match("^(%d+):(.*)$")
  if level == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ask Price At Level: indexed value without a level: "..text)
    return
  end
  text = rest
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ask Price At Level: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_price_at_level.display(text, level)

  local item = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_price_at_level, range, value, display)
  item:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tip_level, range, tonumber(level))
end

-- Ask Price At Level1 (APl): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_price_at_level1 = {}

-- Display: Ask Price At Level1
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_price_at_level1.display = function(value)
  return "Ask Price At Level1: "..value
end

-- Dissect: Ask Price At Level1
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_price_at_level1.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ask Price At Level1: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_price_at_level1.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_price_at_level1, range, value, display)
end

-- Ask Settlement Price (ASp): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_settlement_price = {}

-- Display: Ask Settlement Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_settlement_price.display = function(value)
  return "Ask Settlement Price: "..value
end

-- Dissect: Ask Settlement Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_settlement_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ask Settlement Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_settlement_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_settlement_price, range, value, display)
end

-- Ask Volume (Va): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_volume = {}

-- Display: Ask Volume
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_volume.display = function(value)
  return "Ask Volume: "..value
end

-- Dissect: Ask Volume
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_volume.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ask Volume: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_volume.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_volume, range, value, display)
end

-- Ask Volume At Level (j): Ifloat 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_volume_at_level = {}

-- Display: Ask Volume At Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_volume_at_level.display = function(value, level)
  return "Ask Volume At Level ["..level.."]: "..value
end

-- Dissect: Ask Volume At Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_volume_at_level.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local level, rest = text:match("^(%d+):(.*)$")
  if level == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ask Volume At Level: indexed value without a level: "..text)
    return
  end
  text = rest
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ask Volume At Level: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_volume_at_level.display(text, level)

  local item = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_volume_at_level, range, value, display)
  item:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tip_level, range, tonumber(level))
end

-- Ask Yield At Level (Ya): Ifloat 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_yield_at_level = {}

-- Display: Ask Yield At Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_yield_at_level.display = function(value, level)
  return "Ask Yield At Level ["..level.."]: "..value
end

-- Dissect: Ask Yield At Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_yield_at_level.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local level, rest = text:match("^(%d+):(.*)$")
  if level == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ask Yield At Level: indexed value without a level: "..text)
    return
  end
  text = rest
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ask Yield At Level: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_yield_at_level.display(text, level)

  local item = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_yield_at_level, range, value, display)
  item:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tip_level, range, tonumber(level))
end

-- Ask Yield At Level1 (AYl): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_yield_at_level1 = {}

-- Display: Ask Yield At Level1
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_yield_at_level1.display = function(value)
  return "Ask Yield At Level1: "..value
end

-- Dissect: Ask Yield At Level1
bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_yield_at_level1.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ask Yield At Level1: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_yield_at_level1.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ask_yield_at_level1, range, value, display)
end

-- Automatch (AUm): YesNo
bist_borsaistanbul_marketinfo_tip_v2_2_8.automatch = {}

-- Display: Automatch
bist_borsaistanbul_marketinfo_tip_v2_2_8.automatch.display = function(value)
  if value == "Y" then
    return "Automatch: ".."Yes (Y)"
  end
  if value == "N" then
    return "Automatch: ".."No (N)"
  end
  return "Automatch: "..value
end

-- Dissect: Automatch
bist_borsaistanbul_marketinfo_tip_v2_2_8.automatch.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.automatch.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.automatch, range, value, display)
end

-- Available Qty End Date (Ae): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.available_qty_end_date = {}

-- Display: Available Qty End Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.available_qty_end_date.display = function(value)
  if #value == 8 then
    return "Available Qty End Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Available Qty End Date: "..value
end

-- Dissect: Available Qty End Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.available_qty_end_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.available_qty_end_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.available_qty_end_date, range, value, display)
end

-- Available Qty Start Date (As): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.available_qty_start_date = {}

-- Display: Available Qty Start Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.available_qty_start_date.display = function(value)
  if #value == 8 then
    return "Available Qty Start Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Available Qty Start Date: "..value
end

-- Dissect: Available Qty Start Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.available_qty_start_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.available_qty_start_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.available_qty_start_date, range, value, display)
end

-- Available Quantity At Start (AVq): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.available_quantity_at_start = {}

-- Display: Available Quantity At Start
bist_borsaistanbul_marketinfo_tip_v2_2_8.available_quantity_at_start.display = function(value)
  return "Available Quantity At Start: "..value
end

-- Dissect: Available Quantity At Start
bist_borsaistanbul_marketinfo_tip_v2_2_8.available_quantity_at_start.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Available Quantity At Start: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.available_quantity_at_start.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.available_quantity_at_start, range, value, display)
end

-- Bar Type (BAt): BarType 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.bar_type = {}

-- Display: Bar Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.bar_type.display = function(value)
  if value == "1" then
    return "Bar Type: ".."Bar (1)"
  end
  if value == "2" then
    return "Bar Type: ".."Mini Bar (2)"
  end
  if value == "3" then
    return "Bar Type: ".."Large Bar (3)"
  end
  if value == "4" then
    return "Bar Type: ".."Granule Bag (4)"
  end
  if value == "5" then
    return "Bar Type: ".."Non Standard (5)"
  end
  if value == "6" then
    return "Bar Type: ".."Ore (6)"
  end
  return "Bar Type: ".."Unknown ("..value..")"
end

-- Dissect: Bar Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.bar_type.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Bar Type: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.bar_type.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bar_type, range, value, display)
end

-- Base Date (IBd): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.base_date = {}

-- Display: Base Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.base_date.display = function(value)
  if #value == 8 then
    return "Base Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Base Date: "..value
end

-- Dissect: Base Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.base_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.base_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.base_date, range, value, display)
end

-- Base Price (RPr): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.base_price = {}

-- Display: Base Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.base_price.display = function(value)
  return "Base Price: "..value
end

-- Dissect: Base Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.base_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Base Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.base_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.base_price, range, value, display)
end

-- Base Value (IBv): Double 18,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.base_value = {}

-- Display: Base Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.base_value.display = function(value)
  return "Base Value: "..value
end

-- Dissect: Base Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.base_value.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Base Value: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.base_value.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.base_value, range, value, display)
end

-- Bic Code (BIc): String 11
bist_borsaistanbul_marketinfo_tip_v2_2_8.bic_code = {}

-- Display: Bic Code
bist_borsaistanbul_marketinfo_tip_v2_2_8.bic_code.display = function(value)
  return "Bic Code: "..value
end

-- Dissect: Bic Code
bist_borsaistanbul_marketinfo_tip_v2_2_8.bic_code.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.bic_code.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bic_code, range, value, display)
end

-- Bid Collateral Price At Level (Cb): Ifloat 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_collateral_price_at_level = {}

-- Display: Bid Collateral Price At Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_collateral_price_at_level.display = function(value, level)
  return "Bid Collateral Price At Level ["..level.."]: "..value
end

-- Dissect: Bid Collateral Price At Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_collateral_price_at_level.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local level, rest = text:match("^(%d+):(.*)$")
  if level == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Bid Collateral Price At Level: indexed value without a level: "..text)
    return
  end
  text = rest
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Bid Collateral Price At Level: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_collateral_price_at_level.display(text, level)

  local item = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_collateral_price_at_level, range, value, display)
  item:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tip_level, range, tonumber(level))
end

-- Bid Collateral Price At Level1 (BCPl): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_collateral_price_at_level1 = {}

-- Display: Bid Collateral Price At Level1
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_collateral_price_at_level1.display = function(value)
  return "Bid Collateral Price At Level1: "..value
end

-- Dissect: Bid Collateral Price At Level1
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_collateral_price_at_level1.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Bid Collateral Price At Level1: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_collateral_price_at_level1.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_collateral_price_at_level1, range, value, display)
end

-- Bid Level Deleted (c): Integer 3
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_level_deleted = {}

-- Display: Bid Level Deleted
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_level_deleted.display = function(value)
  return "Bid Level Deleted: "..value
end

-- Dissect: Bid Level Deleted
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_level_deleted.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Bid Level Deleted: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_level_deleted.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_level_deleted, range, value, display)
end

-- Bid Orders At Level (h): Iinteger 10
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_orders_at_level = {}

-- Display: Bid Orders At Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_orders_at_level.display = function(value, level)
  return "Bid Orders At Level ["..level.."]: "..value
end

-- Dissect: Bid Orders At Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_orders_at_level.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local level, rest = text:match("^(%d+):(.*)$")
  if level == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Bid Orders At Level: indexed value without a level: "..text)
    return
  end
  text = rest
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Bid Orders At Level: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_orders_at_level.display(text, level)

  local item = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_orders_at_level, range, value, display)
  item:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tip_level, range, tonumber(level))
end

-- Bid Price (Pb): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_price = {}

-- Display: Bid Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Bid Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_price, range, value, display)
end

-- Bid Price At Level (b): Ifloat 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_price_at_level = {}

-- Display: Bid Price At Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_price_at_level.display = function(value, level)
  return "Bid Price At Level ["..level.."]: "..value
end

-- Dissect: Bid Price At Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_price_at_level.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local level, rest = text:match("^(%d+):(.*)$")
  if level == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Bid Price At Level: indexed value without a level: "..text)
    return
  end
  text = rest
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Bid Price At Level: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_price_at_level.display(text, level)

  local item = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_price_at_level, range, value, display)
  item:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tip_level, range, tonumber(level))
end

-- Bid Price At Level1 (BPr): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_price_at_level1 = {}

-- Display: Bid Price At Level1
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_price_at_level1.display = function(value)
  return "Bid Price At Level1: "..value
end

-- Dissect: Bid Price At Level1
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_price_at_level1.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Bid Price At Level1: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_price_at_level1.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_price_at_level1, range, value, display)
end

-- Bid Price Diff (d): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_price_diff = {}

-- Display: Bid Price Diff
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_price_diff.display = function(value)
  return "Bid Price Diff: "..value
end

-- Dissect: Bid Price Diff
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_price_diff.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Bid Price Diff: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_price_diff.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_price_diff, range, value, display)
end

-- Bid Settlement Price (BSp): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_settlement_price = {}

-- Display: Bid Settlement Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_settlement_price.display = function(value)
  return "Bid Settlement Price: "..value
end

-- Dissect: Bid Settlement Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_settlement_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Bid Settlement Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_settlement_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_settlement_price, range, value, display)
end

-- Bid Volume (Vb): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_volume = {}

-- Display: Bid Volume
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_volume.display = function(value)
  return "Bid Volume: "..value
end

-- Dissect: Bid Volume
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_volume.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Bid Volume: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_volume.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_volume, range, value, display)
end

-- Bid Volume At Level (g): Ifloat 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_volume_at_level = {}

-- Display: Bid Volume At Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_volume_at_level.display = function(value, level)
  return "Bid Volume At Level ["..level.."]: "..value
end

-- Dissect: Bid Volume At Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_volume_at_level.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local level, rest = text:match("^(%d+):(.*)$")
  if level == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Bid Volume At Level: indexed value without a level: "..text)
    return
  end
  text = rest
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Bid Volume At Level: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_volume_at_level.display(text, level)

  local item = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_volume_at_level, range, value, display)
  item:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tip_level, range, tonumber(level))
end

-- Bid Yield At Level (Yb): Ifloat 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_yield_at_level = {}

-- Display: Bid Yield At Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_yield_at_level.display = function(value, level)
  return "Bid Yield At Level ["..level.."]: "..value
end

-- Dissect: Bid Yield At Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_yield_at_level.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local level, rest = text:match("^(%d+):(.*)$")
  if level == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Bid Yield At Level: indexed value without a level: "..text)
    return
  end
  text = rest
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Bid Yield At Level: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_yield_at_level.display(text, level)

  local item = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_yield_at_level, range, value, display)
  item:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tip_level, range, tonumber(level))
end

-- Bid Yield At Level1 (BYl): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_yield_at_level1 = {}

-- Display: Bid Yield At Level1
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_yield_at_level1.display = function(value)
  return "Bid Yield At Level1: "..value
end

-- Dissect: Bid Yield At Level1
bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_yield_at_level1.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Bid Yield At Level1: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_yield_at_level1.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.bid_yield_at_level1, range, value, display)
end

-- Block Id (BLi): Integer 3
bist_borsaistanbul_marketinfo_tip_v2_2_8.block_id = {}

-- Display: Block Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.block_id.display = function(value)
  return "Block Id: "..value
end

-- Dissect: Block Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.block_id.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Block Id: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.block_id.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.block_id, range, value, display)
end

-- Buy Or Sell (Bs): Char
bist_borsaistanbul_marketinfo_tip_v2_2_8.buy_or_sell = {}

-- Display: Buy Or Sell
bist_borsaistanbul_marketinfo_tip_v2_2_8.buy_or_sell.display = function(value)
  return "Buy Or Sell: "..value
end

-- Dissect: Buy Or Sell
bist_borsaistanbul_marketinfo_tip_v2_2_8.buy_or_sell.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.buy_or_sell.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.buy_or_sell, range, value, display)
end

-- Calculation Type (TYc): Integer 10
bist_borsaistanbul_marketinfo_tip_v2_2_8.calculation_type = {}

-- Display: Calculation Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.calculation_type.display = function(value)
  return "Calculation Type: "..value
end

-- Dissect: Calculation Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.calculation_type.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Calculation Type: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.calculation_type.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.calculation_type, range, value, display)
end

-- Clearing Info (Ci): ClearingInfo 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.clearing_info = {}

-- Display: Clearing Info
bist_borsaistanbul_marketinfo_tip_v2_2_8.clearing_info.display = function(value)
  if value == "1" then
    return "Clearing Info: ".."Cleared (1)"
  end
  if value == "2" then
    return "Clearing Info: ".."Non Cleared (2)"
  end
  return "Clearing Info: ".."Unknown ("..value..")"
end

-- Dissect: Clearing Info
bist_borsaistanbul_marketinfo_tip_v2_2_8.clearing_info.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Clearing Info: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.clearing_info.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.clearing_info, range, value, display)
end

-- Clearing Venue Id (CLId): Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.clearing_venue_id = {}

-- Display: Clearing Venue Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.clearing_venue_id.display = function(value)
  return "Clearing Venue Id: "..value
end

-- Dissect: Clearing Venue Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.clearing_venue_id.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Clearing Venue Id: not a number: "..text)
    return
  end
  value = UInt64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.clearing_venue_id.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.clearing_venue_id, range, value, display)
end

-- Closing Auction Price (CLp): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.closing_auction_price = {}

-- Display: Closing Auction Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.closing_auction_price.display = function(value)
  return "Closing Auction Price: "..value
end

-- Dissect: Closing Auction Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.closing_auction_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Closing Auction Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.closing_auction_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.closing_auction_price, range, value, display)
end

-- Closing Value (CLv): Double 18,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.closing_value = {}

-- Display: Closing Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.closing_value.display = function(value)
  return "Closing Value: "..value
end

-- Dissect: Closing Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.closing_value.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Closing Value: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.closing_value.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.closing_value, range, value, display)
end

-- Closing VWAP (CWp): Float 13,8
bist_borsaistanbul_marketinfo_tip_v2_2_8.closing_vwap = {}

-- Display: Closing VWAP
bist_borsaistanbul_marketinfo_tip_v2_2_8.closing_vwap.display = function(value)
  return "Closing VWAP: "..value
end

-- Dissect: Closing VWAP
bist_borsaistanbul_marketinfo_tip_v2_2_8.closing_vwap.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Closing VWAP: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.closing_vwap.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.closing_vwap, range, value, display)
end

-- Code Level (CDLv): Integer 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.code_level = {}

-- Display: Code Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.code_level.display = function(value)
  return "Code Level: "..value
end

-- Dissect: Code Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.code_level.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Code Level: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.code_level.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.code_level, range, value, display)
end

-- Coin Group (RCg): CoinGroup 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.coin_group = {}

-- Display: Coin Group
bist_borsaistanbul_marketinfo_tip_v2_2_8.coin_group.display = function(value)
  if value == "1" then
    return "Coin Group: ".."Medallion (1)"
  end
  if value == "2" then
    return "Coin Group: ".."Commemorative (2)"
  end
  if value == "3" then
    return "Coin Group: ".."Gram (3)"
  end
  return "Coin Group: ".."Unknown ("..value..")"
end

-- Dissect: Coin Group
bist_borsaistanbul_marketinfo_tip_v2_2_8.coin_group.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Coin Group: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.coin_group.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.coin_group, range, value, display)
end

-- Coin Type (RCt): CoinType 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.coin_type = {}

-- Display: Coin Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.coin_type.display = function(value)
  if value == "1" then
    return "Coin Type: ".."Quarter (1)"
  end
  if value == "2" then
    return "Coin Type: ".."Half (2)"
  end
  if value == "3" then
    return "Coin Type: ".."Lira (3)"
  end
  if value == "4" then
    return "Coin Type: ".."Two And A Half (4)"
  end
  if value == "5" then
    return "Coin Type: ".."Five (5)"
  end
  if value == "6" then
    return "Coin Type: ".."One Gram (6)"
  end
  if value == "7" then
    return "Coin Type: ".."Half Gram (7)"
  end
  return "Coin Type: ".."Unknown ("..value..")"
end

-- Dissect: Coin Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.coin_type.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Coin Type: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.coin_type.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.coin_type, range, value, display)
end

-- Coin Year (RCy): Integer 4
bist_borsaistanbul_marketinfo_tip_v2_2_8.coin_year = {}

-- Display: Coin Year
bist_borsaistanbul_marketinfo_tip_v2_2_8.coin_year.display = function(value)
  return "Coin Year: "..value
end

-- Dissect: Coin Year
bist_borsaistanbul_marketinfo_tip_v2_2_8.coin_year.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Coin Year: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.coin_year.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.coin_year, range, value, display)
end

-- Collateral Price (Cp): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.collateral_price = {}

-- Display: Collateral Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.collateral_price.display = function(value)
  return "Collateral Price: "..value
end

-- Dissect: Collateral Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.collateral_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Collateral Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.collateral_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.collateral_price, range, value, display)
end

-- Combo Type (Ct): ComboType 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.combo_type = {}

-- Display: Combo Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.combo_type.display = function(value)
  if value == "1" then
    return "Combo Type: ".."Time Spread (1)"
  end
  if value == "2" then
    return "Combo Type: ".."Other (2)"
  end
  return "Combo Type: ".."Unknown ("..value..")"
end

-- Dissect: Combo Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.combo_type.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Combo Type: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.combo_type.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.combo_type, range, value, display)
end

-- Compound Yield (COy): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.compound_yield = {}

-- Display: Compound Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.compound_yield.display = function(value)
  return "Compound Yield: "..value
end

-- Dissect: Compound Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.compound_yield.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Compound Yield: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.compound_yield.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.compound_yield, range, value, display)
end

-- Compound Yield VWAP (CYWp): Float 13,8
bist_borsaistanbul_marketinfo_tip_v2_2_8.compound_yield_vwap = {}

-- Display: Compound Yield VWAP
bist_borsaistanbul_marketinfo_tip_v2_2_8.compound_yield_vwap.display = function(value)
  return "Compound Yield VWAP: "..value
end

-- Dissect: Compound Yield VWAP
bist_borsaistanbul_marketinfo_tip_v2_2_8.compound_yield_vwap.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Compound Yield VWAP: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.compound_yield_vwap.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.compound_yield_vwap, range, value, display)
end

-- Contract Size (CSz): Double 20,9
bist_borsaistanbul_marketinfo_tip_v2_2_8.contract_size = {}

-- Display: Contract Size
bist_borsaistanbul_marketinfo_tip_v2_2_8.contract_size.display = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
bist_borsaistanbul_marketinfo_tip_v2_2_8.contract_size.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Contract Size: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.contract_size.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.contract_size, range, value, display)
end

-- Corporate Action (CRa): YesNo
bist_borsaistanbul_marketinfo_tip_v2_2_8.corporate_action = {}

-- Display: Corporate Action
bist_borsaistanbul_marketinfo_tip_v2_2_8.corporate_action.display = function(value)
  if value == "Y" then
    return "Corporate Action: ".."Yes (Y)"
  end
  if value == "N" then
    return "Corporate Action: ".."No (N)"
  end
  return "Corporate Action: "..value
end

-- Dissect: Corporate Action
bist_borsaistanbul_marketinfo_tip_v2_2_8.corporate_action.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.corporate_action.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.corporate_action, range, value, display)
end

-- Country (CNy): String 2
bist_borsaistanbul_marketinfo_tip_v2_2_8.country = {}

-- Display: Country
bist_borsaistanbul_marketinfo_tip_v2_2_8.country.display = function(value)
  return "Country: "..value
end

-- Dissect: Country
bist_borsaistanbul_marketinfo_tip_v2_2_8.country.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.country.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.country, range, value, display)
end

-- Coupon Frequency (CFq): Double 19,10
bist_borsaistanbul_marketinfo_tip_v2_2_8.coupon_frequency = {}

-- Display: Coupon Frequency
bist_borsaistanbul_marketinfo_tip_v2_2_8.coupon_frequency.display = function(value)
  return "Coupon Frequency: "..value
end

-- Dissect: Coupon Frequency
bist_borsaistanbul_marketinfo_tip_v2_2_8.coupon_frequency.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Coupon Frequency: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.coupon_frequency.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.coupon_frequency, range, value, display)
end

-- Coupon Rate (RCp): Double 19,10
bist_borsaistanbul_marketinfo_tip_v2_2_8.coupon_rate = {}

-- Display: Coupon Rate
bist_borsaistanbul_marketinfo_tip_v2_2_8.coupon_rate.display = function(value)
  return "Coupon Rate: "..value
end

-- Dissect: Coupon Rate
bist_borsaistanbul_marketinfo_tip_v2_2_8.coupon_rate.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Coupon Rate: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.coupon_rate.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.coupon_rate, range, value, display)
end

-- Cross Trade (CTr): YesNo
bist_borsaistanbul_marketinfo_tip_v2_2_8.cross_trade = {}

-- Display: Cross Trade
bist_borsaistanbul_marketinfo_tip_v2_2_8.cross_trade.display = function(value)
  if value == "Y" then
    return "Cross Trade: ".."Yes (Y)"
  end
  if value == "N" then
    return "Cross Trade: ".."No (N)"
  end
  return "Cross Trade: "..value
end

-- Dissect: Cross Trade
bist_borsaistanbul_marketinfo_tip_v2_2_8.cross_trade.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.cross_trade.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.cross_trade, range, value, display)
end

-- Currency (LCy): String 3
bist_borsaistanbul_marketinfo_tip_v2_2_8.currency = {}

-- Display: Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.currency.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.currency.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.currency, range, value, display)
end

-- Current Value (Vc): Double 18,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.current_value = {}

-- Display: Current Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.current_value.display = function(value)
  return "Current Value: "..value
end

-- Dissect: Current Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.current_value.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Current Value: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.current_value.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.current_value, range, value, display)
end

-- Cycle Class (CYc): Integer 10
bist_borsaistanbul_marketinfo_tip_v2_2_8.cycle_class = {}

-- Display: Cycle Class
bist_borsaistanbul_marketinfo_tip_v2_2_8.cycle_class.display = function(value)
  return "Cycle Class: "..value
end

-- Dissect: Cycle Class
bist_borsaistanbul_marketinfo_tip_v2_2_8.cycle_class.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Cycle Class: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.cycle_class.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.cycle_class, range, value, display)
end

-- Date (Dt): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.date = {}

-- Display: Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.date.display = function(value)
  if #value == 8 then
    return "Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Date: "..value
end

-- Dissect: Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.date, range, value, display)
end

-- Date Agreement (Da): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.date_agreement = {}

-- Display: Date Agreement
bist_borsaistanbul_marketinfo_tip_v2_2_8.date_agreement.display = function(value)
  if #value == 8 then
    return "Date Agreement: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Date Agreement: "..value
end

-- Dissect: Date Agreement
bist_borsaistanbul_marketinfo_tip_v2_2_8.date_agreement.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.date_agreement.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.date_agreement, range, value, display)
end

-- Date Dissemination (DDi): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.date_dissemination = {}

-- Display: Date Dissemination
bist_borsaistanbul_marketinfo_tip_v2_2_8.date_dissemination.display = function(value)
  if #value == 8 then
    return "Date Dissemination: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Date Dissemination: "..value
end

-- Dissect: Date Dissemination
bist_borsaistanbul_marketinfo_tip_v2_2_8.date_dissemination.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.date_dissemination.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.date_dissemination, range, value, display)
end

-- Date Exec (Dx): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.date_exec = {}

-- Display: Date Exec
bist_borsaistanbul_marketinfo_tip_v2_2_8.date_exec.display = function(value)
  if #value == 8 then
    return "Date Exec: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Date Exec: "..value
end

-- Dissect: Date Exec
bist_borsaistanbul_marketinfo_tip_v2_2_8.date_exec.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.date_exec.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.date_exec, range, value, display)
end

-- Date Settlement Price (SPd): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.date_settlement_price = {}

-- Display: Date Settlement Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.date_settlement_price.display = function(value)
  if #value == 8 then
    return "Date Settlement Price: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Date Settlement Price: "..value
end

-- Dissect: Date Settlement Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.date_settlement_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.date_settlement_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.date_settlement_price, range, value, display)
end

-- Date Trade Cancel (DCt): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.date_trade_cancel = {}

-- Display: Date Trade Cancel
bist_borsaistanbul_marketinfo_tip_v2_2_8.date_trade_cancel.display = function(value)
  if #value == 8 then
    return "Date Trade Cancel: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Date Trade Cancel: "..value
end

-- Dissect: Date Trade Cancel
bist_borsaistanbul_marketinfo_tip_v2_2_8.date_trade_cancel.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.date_trade_cancel.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.date_trade_cancel, range, value, display)
end

-- Date Trade Rectify (DRe): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.date_trade_rectify = {}

-- Display: Date Trade Rectify
bist_borsaistanbul_marketinfo_tip_v2_2_8.date_trade_rectify.display = function(value)
  if #value == 8 then
    return "Date Trade Rectify: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Date Trade Rectify: "..value
end

-- Dissect: Date Trade Rectify
bist_borsaistanbul_marketinfo_tip_v2_2_8.date_trade_rectify.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.date_trade_rectify.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.date_trade_rectify, range, value, display)
end

-- Day Count Method (DCm): DayCountMethod
bist_borsaistanbul_marketinfo_tip_v2_2_8.day_count_method = {}

-- Display: Day Count Method
bist_borsaistanbul_marketinfo_tip_v2_2_8.day_count_method.display = function(value)
  if value == "1" then
    return "Day Count Method: ".."ACTACT (1)"
  end
  if value == "2" then
    return "Day Count Method: ".."ACTAFB (2)"
  end
  if value == "3" then
    return "Day Count Method: ".."EU30360 (3)"
  end
  if value == "4" then
    return "Day Count Method: ".."US30360 (4)"
  end
  if value == "5" then
    return "Day Count Method: ".."ACT365 (5)"
  end
  if value == "6" then
    return "Day Count Method: ".."ACT360 (6)"
  end
  if value == "7" then
    return "Day Count Method: ".."ACTISDA (7)"
  end
  if value == "8" then
    return "Day Count Method: ".."BB30360 (8)"
  end
  if value == "9" then
    return "Day Count Method: ".."ISDA30360 (9)"
  end
  if value == "15" then
    return "Day Count Method: ".."ACT364 (15)"
  end
  return "Day Count Method: ".."Unknown ("..value..")"
end

-- Dissect: Day Count Method
bist_borsaistanbul_marketinfo_tip_v2_2_8.day_count_method.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Day Count Method: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.day_count_method.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.day_count_method, range, value, display)
end

-- Day Type (TDt): Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.day_type = {}

-- Display: Day Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.day_type.display = function(value)
  return "Day Type: "..value
end

-- Dissect: Day Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.day_type.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Day Type: not a number: "..text)
    return
  end
  value = UInt64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.day_type.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.day_type, range, value, display)
end

-- Days To Coupon (Dc): Integer 3
bist_borsaistanbul_marketinfo_tip_v2_2_8.days_to_coupon = {}

-- Display: Days To Coupon
bist_borsaistanbul_marketinfo_tip_v2_2_8.days_to_coupon.display = function(value)
  return "Days To Coupon: "..value
end

-- Dissect: Days To Coupon
bist_borsaistanbul_marketinfo_tip_v2_2_8.days_to_coupon.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Days To Coupon: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.days_to_coupon.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.days_to_coupon, range, value, display)
end

-- Days To Maturity (Dm): Integer 5
bist_borsaistanbul_marketinfo_tip_v2_2_8.days_to_maturity = {}

-- Display: Days To Maturity
bist_borsaistanbul_marketinfo_tip_v2_2_8.days_to_maturity.display = function(value)
  return "Days To Maturity: "..value
end

-- Dissect: Days To Maturity
bist_borsaistanbul_marketinfo_tip_v2_2_8.days_to_maturity.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Days To Maturity: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.days_to_maturity.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.days_to_maturity, range, value, display)
end

-- Deliverable Series Id (DSi): Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.deliverable_series_id = {}

-- Display: Deliverable Series Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.deliverable_series_id.display = function(value)
  return "Deliverable Series Id: "..value
end

-- Dissect: Deliverable Series Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.deliverable_series_id.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Deliverable Series Id: not a number: "..text)
    return
  end
  value = UInt64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.deliverable_series_id.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.deliverable_series_id, range, value, display)
end

-- Delivery Date (DDt): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.delivery_date = {}

-- Display: Delivery Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.delivery_date.display = function(value)
  if #value == 8 then
    return "Delivery Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Delivery Date: "..value
end

-- Dissect: Delivery Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.delivery_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.delivery_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.delivery_date, range, value, display)
end

-- Derivative Type (DTy): DerivativeType 2
bist_borsaistanbul_marketinfo_tip_v2_2_8.derivative_type = {}

-- Display: Derivative Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.derivative_type.display = function(value)
  if value == "1" then
    return "Derivative Type: ".."Warrant (1)"
  end
  if value == "2" then
    return "Derivative Type: ".."Certificate (2)"
  end
  if value == "3" then
    return "Derivative Type: ".."Option (3)"
  end
  if value == "4" then
    return "Derivative Type: ".."Future (4)"
  end
  if value == "5" then
    return "Derivative Type: ".."Forward (5)"
  end
  if value == "6" then
    return "Derivative Type: ".."Standard Combination (6)"
  end
  if value == "7" then
    return "Derivative Type: ".."Tailormade Combination (7)"
  end
  if value == "8" then
    return "Derivative Type: ".."DS Futures (8)"
  end
  if value == "9" then
    return "Derivative Type: ".."Swap (9)"
  end
  return "Derivative Type: ".."Unknown ("..value..")"
end

-- Dissect: Derivative Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.derivative_type.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Derivative Type: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.derivative_type.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.derivative_type, range, value, display)
end

-- Description (DSc): String 200
bist_borsaistanbul_marketinfo_tip_v2_2_8.description = {}

-- Display: Description
bist_borsaistanbul_marketinfo_tip_v2_2_8.description.display = function(value)
  return "Description: "..value
end

-- Dissect: Description
bist_borsaistanbul_marketinfo_tip_v2_2_8.description.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.description.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.description, range, value, display)
end

-- Diff Day Nom (Dn): Double 18,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_day_nom = {}

-- Display: Diff Day Nom
bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_day_nom.display = function(value)
  return "Diff Day Nom: "..value
end

-- Dissect: Diff Day Nom
bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_day_nom.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Diff Day Nom: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_day_nom.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.diff_day_nom, range, value, display)
end

-- Diff Day Per (Dd): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_day_per = {}

-- Display: Diff Day Per
bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_day_per.display = function(value)
  return "Diff Day Per: "..value
end

-- Dissect: Diff Day Per
bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_day_per.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Diff Day Per: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_day_per.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.diff_day_per, range, value, display)
end

-- Diff Last Price (Pd): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_last_price = {}

-- Display: Diff Last Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_last_price.display = function(value)
  return "Diff Last Price: "..value
end

-- Dissect: Diff Last Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_last_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Diff Last Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_last_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.diff_last_price, range, value, display)
end

-- Diff Last Settlement Price (DSEp): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_last_settlement_price = {}

-- Display: Diff Last Settlement Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_last_settlement_price.display = function(value)
  return "Diff Last Settlement Price: "..value
end

-- Dissect: Diff Last Settlement Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_last_settlement_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Diff Last Settlement Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_last_settlement_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.diff_last_settlement_price, range, value, display)
end

-- Diff Last Yield (Yd): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_last_yield = {}

-- Display: Diff Last Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_last_yield.display = function(value)
  return "Diff Last Yield: "..value
end

-- Dissect: Diff Last Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_last_yield.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Diff Last Yield: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_last_yield.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.diff_last_yield, range, value, display)
end

-- Diff Open Interest (Do): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_open_interest = {}

-- Display: Diff Open Interest
bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_open_interest.display = function(value)
  return "Diff Open Interest: "..value
end

-- Dissect: Diff Open Interest
bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_open_interest.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Diff Open Interest: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_open_interest.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.diff_open_interest, range, value, display)
end

-- Dissemination Interval (Di): Integer 4
bist_borsaistanbul_marketinfo_tip_v2_2_8.dissemination_interval = {}

-- Display: Dissemination Interval
bist_borsaistanbul_marketinfo_tip_v2_2_8.dissemination_interval.display = function(value)
  return "Dissemination Interval: "..value
end

-- Dissect: Dissemination Interval
bist_borsaistanbul_marketinfo_tip_v2_2_8.dissemination_interval.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Dissemination Interval: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.dissemination_interval.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.dissemination_interval, range, value, display)
end

-- Divisor (IXDv): Double 23,8
bist_borsaistanbul_marketinfo_tip_v2_2_8.divisor = {}

-- Display: Divisor
bist_borsaistanbul_marketinfo_tip_v2_2_8.divisor.display = function(value)
  return "Divisor: "..value
end

-- Dissect: Divisor
bist_borsaistanbul_marketinfo_tip_v2_2_8.divisor.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Divisor: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.divisor.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.divisor, range, value, display)
end

-- End Date (Ed): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.end_date = {}

-- Display: End Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.end_date.display = function(value)
  if #value == 8 then
    return "End Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "End Date: "..value
end

-- Dissect: End Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.end_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.end_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.end_date, range, value, display)
end

-- English Name (ENn): String 100
bist_borsaistanbul_marketinfo_tip_v2_2_8.english_name = {}

-- Display: English Name
bist_borsaistanbul_marketinfo_tip_v2_2_8.english_name.display = function(value)
  return "English Name: "..value
end

-- Dissect: English Name
bist_borsaistanbul_marketinfo_tip_v2_2_8.english_name.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.english_name.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.english_name, range, value, display)
end

-- Equilibrium Price (EQp): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.equilibrium_price = {}

-- Display: Equilibrium Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.equilibrium_price.display = function(value)
  return "Equilibrium Price: "..value
end

-- Dissect: Equilibrium Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.equilibrium_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Equilibrium Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.equilibrium_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.equilibrium_price, range, value, display)
end

-- Equilibrium Volume (EQv): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.equilibrium_volume = {}

-- Display: Equilibrium Volume
bist_borsaistanbul_marketinfo_tip_v2_2_8.equilibrium_volume.display = function(value)
  return "Equilibrium Volume: "..value
end

-- Dissect: Equilibrium Volume
bist_borsaistanbul_marketinfo_tip_v2_2_8.equilibrium_volume.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Equilibrium Volume: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.equilibrium_volume.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.equilibrium_volume, range, value, display)
end

-- Exchange Id (Ex): Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.exchange_id = {}

-- Display: Exchange Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.exchange_id.display = function(value)
  return "Exchange Id: "..value
end

-- Dissect: Exchange Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.exchange_id.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Exchange Id: not a number: "..text)
    return
  end
  value = UInt64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.exchange_id.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.exchange_id, range, value, display)
end

-- Exclude Cross Trade From Stats (ECTr): YesNo
bist_borsaistanbul_marketinfo_tip_v2_2_8.exclude_cross_trade_from_stats = {}

-- Display: Exclude Cross Trade From Stats
bist_borsaistanbul_marketinfo_tip_v2_2_8.exclude_cross_trade_from_stats.display = function(value)
  if value == "Y" then
    return "Exclude Cross Trade From Stats: ".."Yes (Y)"
  end
  if value == "N" then
    return "Exclude Cross Trade From Stats: ".."No (N)"
  end
  return "Exclude Cross Trade From Stats: "..value
end

-- Dissect: Exclude Cross Trade From Stats
bist_borsaistanbul_marketinfo_tip_v2_2_8.exclude_cross_trade_from_stats.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.exclude_cross_trade_from_stats.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.exclude_cross_trade_from_stats, range, value, display)
end

-- Exercise Currency (EXc): String 3
bist_borsaistanbul_marketinfo_tip_v2_2_8.exercise_currency = {}

-- Display: Exercise Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.exercise_currency.display = function(value)
  return "Exercise Currency: "..value
end

-- Dissect: Exercise Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.exercise_currency.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.exercise_currency.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.exercise_currency, range, value, display)
end

-- Exercise From Date (EXb): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.exercise_from_date = {}

-- Display: Exercise From Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.exercise_from_date.display = function(value)
  if #value == 8 then
    return "Exercise From Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Exercise From Date: "..value
end

-- Dissect: Exercise From Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.exercise_from_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.exercise_from_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.exercise_from_date, range, value, display)
end

-- Exercise To Date (EXe): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.exercise_to_date = {}

-- Display: Exercise To Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.exercise_to_date.display = function(value)
  if #value == 8 then
    return "Exercise To Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Exercise To Date: "..value
end

-- Dissect: Exercise To Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.exercise_to_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.exercise_to_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.exercise_to_date, range, value, display)
end

-- Exercise Type (DXt): ExerciseType 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.exercise_type = {}

-- Display: Exercise Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.exercise_type.display = function(value)
  if value == "1" then
    return "Exercise Type: ".."European Call (1)"
  end
  if value == "2" then
    return "Exercise Type: ".."European Put (2)"
  end
  if value == "3" then
    return "Exercise Type: ".."Asian Call (3)"
  end
  if value == "4" then
    return "Exercise Type: ".."Asian Put (4)"
  end
  if value == "5" then
    return "Exercise Type: ".."American Call (5)"
  end
  if value == "6" then
    return "Exercise Type: ".."American Put (6)"
  end
  return "Exercise Type: ".."Unknown ("..value..")"
end

-- Dissect: Exercise Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.exercise_type.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Exercise Type: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.exercise_type.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.exercise_type, range, value, display)
end

-- Factor (PQf): Double 20,9
bist_borsaistanbul_marketinfo_tip_v2_2_8.factor = {}

-- Display: Factor
bist_borsaistanbul_marketinfo_tip_v2_2_8.factor.display = function(value)
  return "Factor: "..value
end

-- Dissect: Factor
bist_borsaistanbul_marketinfo_tip_v2_2_8.factor.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Factor: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.factor.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.factor, range, value, display)
end

-- Fineness (Fn): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.fineness = {}

-- Display: Fineness
bist_borsaistanbul_marketinfo_tip_v2_2_8.fineness.display = function(value)
  return "Fineness: "..value
end

-- Dissect: Fineness
bist_borsaistanbul_marketinfo_tip_v2_2_8.fineness.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Fineness: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.fineness.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.fineness, range, value, display)
end

-- Fineness Notation (FNn): Integer 10
bist_borsaistanbul_marketinfo_tip_v2_2_8.fineness_notation = {}

-- Display: Fineness Notation
bist_borsaistanbul_marketinfo_tip_v2_2_8.fineness_notation.display = function(value)
  return "Fineness Notation: "..value
end

-- Dissect: Fineness Notation
bist_borsaistanbul_marketinfo_tip_v2_2_8.fineness_notation.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Fineness Notation: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.fineness_notation.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.fineness_notation, range, value, display)
end

-- First Price (Pf): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.first_price = {}

-- Display: First Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.first_price.display = function(value)
  return "First Price: "..value
end

-- Dissect: First Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.first_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "First Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.first_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.first_price, range, value, display)
end

-- First Trading Date (FTRd): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.first_trading_date = {}

-- Display: First Trading Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.first_trading_date.display = function(value)
  if #value == 8 then
    return "First Trading Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "First Trading Date: "..value
end

-- Dissect: First Trading Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.first_trading_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.first_trading_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.first_trading_date, range, value, display)
end

-- First Trading Time (FTRt): Time
bist_borsaistanbul_marketinfo_tip_v2_2_8.first_trading_time = {}

-- Display: First Trading Time
bist_borsaistanbul_marketinfo_tip_v2_2_8.first_trading_time.display = function(value)
  if #value == 6 then
    return "First Trading Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
  end
  return "First Trading Time: "..value
end

-- Dissect: First Trading Time
bist_borsaistanbul_marketinfo_tip_v2_2_8.first_trading_time.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.first_trading_time.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.first_trading_time, range, value, display)
end

-- First Yield (Yf): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.first_yield = {}

-- Display: First Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.first_yield.display = function(value)
  return "First Yield: "..value
end

-- Dissect: First Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.first_yield.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "First Yield: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.first_yield.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.first_yield, range, value, display)
end

-- Fixed Income Classification (FIc): String 80
bist_borsaistanbul_marketinfo_tip_v2_2_8.fixed_income_classification = {}

-- Display: Fixed Income Classification
bist_borsaistanbul_marketinfo_tip_v2_2_8.fixed_income_classification.display = function(value)
  return "Fixed Income Classification: "..value
end

-- Dissect: Fixed Income Classification
bist_borsaistanbul_marketinfo_tip_v2_2_8.fixed_income_classification.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.fixed_income_classification.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.fixed_income_classification, range, value, display)
end

-- Fixed Income Type (BTy): FixedIncomeType
bist_borsaistanbul_marketinfo_tip_v2_2_8.fixed_income_type = {}

-- Display: Fixed Income Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.fixed_income_type.display = function(value)
  if value == "1" then
    return "Fixed Income Type: ".."Discounted Securities (1)"
  end
  if value == "2" then
    return "Fixed Income Type: ".."Fixed Rate Bonds (2)"
  end
  if value == "3" then
    return "Fixed Income Type: ".."Variable Rate Bonds Known Coupon (3)"
  end
  if value == "4" then
    return "Fixed Income Type: ".."Variable Rate Bonds Unknown Coupon (4)"
  end
  if value == "5" then
    return "Fixed Income Type: ".."Index Linked Stripped (5)"
  end
  if value == "6" then
    return "Fixed Income Type: ".."Index Linked Bonds (6)"
  end
  if value == "7" then
    return "Fixed Income Type: ".."Eurobond USD (7)"
  end
  if value == "8" then
    return "Fixed Income Type: ".."Eurobond EUR (8)"
  end
  if value == "9" then
    return "Fixed Income Type: ".."Irregular Clean Price (9)"
  end
  if value == "10" then
    return "Fixed Income Type: ".."Irregular Dirty Price (10)"
  end
  if value == "11" then
    return "Fixed Income Type: ".."TLREF Linked Bonds Simple Weighted Average (11)"
  end
  if value == "12" then
    return "Fixed Income Type: ".."TLREF Linked Bonds Compounded (12)"
  end
  if value == "13" then
    return "Fixed Income Type: ".."TLREF Linked Bonds Index Based (13)"
  end
  return "Fixed Income Type: ".."Unknown ("..value..")"
end

-- Dissect: Fixed Income Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.fixed_income_type.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Fixed Income Type: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.fixed_income_type.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.fixed_income_type, range, value, display)
end

-- Flush (Of): Boolean
bist_borsaistanbul_marketinfo_tip_v2_2_8.flush = {}

-- Display: Flush
bist_borsaistanbul_marketinfo_tip_v2_2_8.flush.display = function(value)
  return "Flush"
end

-- Dissect: Flush
bist_borsaistanbul_marketinfo_tip_v2_2_8.flush.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = true
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.flush.display()

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.flush, range, value, display)
end

-- Free Float Ratio (FFr): Double 18,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.free_float_ratio = {}

-- Display: Free Float Ratio
bist_borsaistanbul_marketinfo_tip_v2_2_8.free_float_ratio.display = function(value)
  return "Free Float Ratio: "..value
end

-- Dissect: Free Float Ratio
bist_borsaistanbul_marketinfo_tip_v2_2_8.free_float_ratio.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Free Float Ratio: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.free_float_ratio.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.free_float_ratio, range, value, display)
end

-- Gross Settlement (GRs): YesNo
bist_borsaistanbul_marketinfo_tip_v2_2_8.gross_settlement = {}

-- Display: Gross Settlement
bist_borsaistanbul_marketinfo_tip_v2_2_8.gross_settlement.display = function(value)
  if value == "Y" then
    return "Gross Settlement: ".."Yes (Y)"
  end
  if value == "N" then
    return "Gross Settlement: ".."No (N)"
  end
  return "Gross Settlement: "..value
end

-- Dissect: Gross Settlement
bist_borsaistanbul_marketinfo_tip_v2_2_8.gross_settlement.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.gross_settlement.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.gross_settlement, range, value, display)
end

-- Handled CCP (CCp): HandledCCP 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.handled_ccp = {}

-- Display: Handled CCP
bist_borsaistanbul_marketinfo_tip_v2_2_8.handled_ccp.display = function(value)
  if value == "1" then
    return "Handled CCP: ".."CCP (1)"
  end
  if value == "2" then
    return "Handled CCP: ".."Non CCP (2)"
  end
  return "Handled CCP: ".."Unknown ("..value..")"
end

-- Dissect: Handled CCP
bist_borsaistanbul_marketinfo_tip_v2_2_8.handled_ccp.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Handled CCP: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.handled_ccp.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.handled_ccp, range, value, display)
end

-- Head Line (NHl): String 80
bist_borsaistanbul_marketinfo_tip_v2_2_8.head_line = {}

-- Display: Head Line
bist_borsaistanbul_marketinfo_tip_v2_2_8.head_line.display = function(value)
  return "Head Line: "..value
end

-- Dissect: Head Line
bist_borsaistanbul_marketinfo_tip_v2_2_8.head_line.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.head_line.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.head_line, range, value, display)
end

-- High Price (Ph): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price = {}

-- Display: High Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "High Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.high_price, range, value, display)
end

-- High Price Month (HPm): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price_month = {}

-- Display: High Price Month
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price_month.display = function(value)
  return "High Price Month: "..value
end

-- Dissect: High Price Month
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price_month.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "High Price Month: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price_month.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.high_price_month, range, value, display)
end

-- High Price Month Date (HPMd): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price_month_date = {}

-- Display: High Price Month Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price_month_date.display = function(value)
  if #value == 8 then
    return "High Price Month Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "High Price Month Date: "..value
end

-- Dissect: High Price Month Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price_month_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price_month_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.high_price_month_date, range, value, display)
end

-- High Price Year (HPy): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price_year = {}

-- Display: High Price Year
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price_year.display = function(value)
  return "High Price Year: "..value
end

-- Dissect: High Price Year
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price_year.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "High Price Year: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price_year.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.high_price_year, range, value, display)
end

-- High Price Year Date (HPYd): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price_year_date = {}

-- Display: High Price Year Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price_year_date.display = function(value)
  if #value == 8 then
    return "High Price Year Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "High Price Year Date: "..value
end

-- Dissect: High Price Year Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price_year_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price_year_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.high_price_year_date, range, value, display)
end

-- High Settlement Price (HSEp): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_settlement_price = {}

-- Display: High Settlement Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_settlement_price.display = function(value)
  return "High Settlement Price: "..value
end

-- Dissect: High Settlement Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_settlement_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "High Settlement Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.high_settlement_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.high_settlement_price, range, value, display)
end

-- High Value (Vh): Double 18,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_value = {}

-- Display: High Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_value.display = function(value)
  return "High Value: "..value
end

-- Dissect: High Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_value.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "High Value: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.high_value.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.high_value, range, value, display)
end

-- High Yield (Yh): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_yield = {}

-- Display: High Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_yield.display = function(value)
  return "High Yield: "..value
end

-- Dissect: High Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_yield.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "High Yield: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.high_yield.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.high_yield, range, value, display)
end

-- High Yield Month (HYm): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_yield_month = {}

-- Display: High Yield Month
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_yield_month.display = function(value)
  return "High Yield Month: "..value
end

-- Dissect: High Yield Month
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_yield_month.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "High Yield Month: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.high_yield_month.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.high_yield_month, range, value, display)
end

-- High Yield Year (HYy): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_yield_year = {}

-- Display: High Yield Year
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_yield_year.display = function(value)
  return "High Yield Year: "..value
end

-- Dissect: High Yield Year
bist_borsaistanbul_marketinfo_tip_v2_2_8.high_yield_year.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "High Yield Year: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.high_yield_year.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.high_yield_year, range, value, display)
end

-- Hot Inserted (HOt): Boolean
bist_borsaistanbul_marketinfo_tip_v2_2_8.hot_inserted = {}

-- Display: Hot Inserted
bist_borsaistanbul_marketinfo_tip_v2_2_8.hot_inserted.display = function(value)
  return "Hot Inserted"
end

-- Dissect: Hot Inserted
bist_borsaistanbul_marketinfo_tip_v2_2_8.hot_inserted.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = true
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.hot_inserted.display()

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.hot_inserted, range, value, display)
end

-- Id (i): Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.id = {}

-- Display: Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.id.display = function(value)
  return "Id: "..value
end

-- Dissect: Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.id.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Id: not a number: "..text)
    return
  end
  value = UInt64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.id.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.id, range, value, display)
end

-- Id Leg (Il): Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.id_leg = {}

-- Display: Id Leg
bist_borsaistanbul_marketinfo_tip_v2_2_8.id_leg.display = function(value)
  return "Id Leg: "..value
end

-- Dissect: Id Leg
bist_borsaistanbul_marketinfo_tip_v2_2_8.id_leg.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Id Leg: not a number: "..text)
    return
  end
  value = UInt64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.id_leg.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.id_leg, range, value, display)
end

-- Index Classification (INc): Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_classification = {}

-- Display: Index Classification
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_classification.display = function(value)
  return "Index Classification: "..value
end

-- Dissect: Index Classification
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_classification.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Index Classification: not a number: "..text)
    return
  end
  value = UInt64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.index_classification.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_classification, range, value, display)
end

-- Index Id (IXi): Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_id = {}

-- Display: Index Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_id.display = function(value)
  return "Index Id: "..value
end

-- Dissect: Index Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_id.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Index Id: not a number: "..text)
    return
  end
  value = UInt64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.index_id.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_id, range, value, display)
end

-- Index Member (Ni): String 32
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_member = {}

-- Display: Index Member
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_member.display = function(value)
  return "Index Member: "..value
end

-- Dissect: Index Member
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_member.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.index_member.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_member, range, value, display)
end

-- Index Name (INn): String 100
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_name = {}

-- Display: Index Name
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_name.display = function(value)
  return "Index Name: "..value
end

-- Dissect: Index Name
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_name.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.index_name.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_name, range, value, display)
end

-- Index Owner (Io): Id 10
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_owner = {}

-- Display: Index Owner
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_owner.display = function(value)
  return "Index Owner: "..value
end

-- Dissect: Index Owner
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_owner.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Index Owner: not a number: "..text)
    return
  end
  value = UInt64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.index_owner.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_owner, range, value, display)
end

-- Index Price Type (IPt): Integer 10
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_price_type = {}

-- Display: Index Price Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_price_type.display = function(value)
  return "Index Price Type: "..value
end

-- Dissect: Index Price Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_price_type.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Index Price Type: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.index_price_type.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_price_type, range, value, display)
end

-- Index Status (Is): Integer 10
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_status = {}

-- Display: Index Status
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_status.display = function(value)
  return "Index Status: "..value
end

-- Dissect: Index Status
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_status.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Index Status: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.index_status.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_status, range, value, display)
end

-- Index Type (ITy): Integer 10
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_type = {}

-- Display: Index Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_type.display = function(value)
  return "Index Type: "..value
end

-- Dissect: Index Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_type.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Index Type: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.index_type.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_type, range, value, display)
end

-- Inflation Coefficient (Ic): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.inflation_coefficient = {}

-- Display: Inflation Coefficient
bist_borsaistanbul_marketinfo_tip_v2_2_8.inflation_coefficient.display = function(value)
  return "Inflation Coefficient: "..value
end

-- Dissect: Inflation Coefficient
bist_borsaistanbul_marketinfo_tip_v2_2_8.inflation_coefficient.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Inflation Coefficient: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.inflation_coefficient.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.inflation_coefficient, range, value, display)
end

-- Instrument Classification (ICl): Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.instrument_classification = {}

-- Display: Instrument Classification
bist_borsaistanbul_marketinfo_tip_v2_2_8.instrument_classification.display = function(value)
  return "Instrument Classification: "..value
end

-- Dissect: Instrument Classification
bist_borsaistanbul_marketinfo_tip_v2_2_8.instrument_classification.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Instrument Classification: not a number: "..text)
    return
  end
  value = UInt64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.instrument_classification.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.instrument_classification, range, value, display)
end

-- Instrument Source Id (INi): String 32
bist_borsaistanbul_marketinfo_tip_v2_2_8.instrument_source_id = {}

-- Display: Instrument Source Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.instrument_source_id.display = function(value)
  return "Instrument Source Id: "..value
end

-- Dissect: Instrument Source Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.instrument_source_id.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.instrument_source_id.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.instrument_source_id, range, value, display)
end

-- Isin (ISn): String 12
bist_borsaistanbul_marketinfo_tip_v2_2_8.isin = {}

-- Display: Isin
bist_borsaistanbul_marketinfo_tip_v2_2_8.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
bist_borsaistanbul_marketinfo_tip_v2_2_8.isin.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.isin.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.isin, range, value, display)
end

-- Issue Currency (CUi): String 3
bist_borsaistanbul_marketinfo_tip_v2_2_8.issue_currency = {}

-- Display: Issue Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.issue_currency.display = function(value)
  return "Issue Currency: "..value
end

-- Dissect: Issue Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.issue_currency.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.issue_currency.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.issue_currency, range, value, display)
end

-- Issue Date (DIs): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.issue_date = {}

-- Display: Issue Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.issue_date.display = function(value)
  if #value == 8 then
    return "Issue Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Issue Date: "..value
end

-- Dissect: Issue Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.issue_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.issue_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.issue_date, range, value, display)
end

-- Issuer Id (ISi): Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.issuer_id = {}

-- Display: Issuer Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.issuer_id.display = function(value)
  return "Issuer Id: "..value
end

-- Dissect: Issuer Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.issuer_id.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Issuer Id: not a number: "..text)
    return
  end
  value = UInt64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.issuer_id.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.issuer_id, range, value, display)
end

-- Last Block (BLl): YesNo
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_block = {}

-- Display: Last Block
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_block.display = function(value)
  if value == "Y" then
    return "Last Block: ".."Yes (Y)"
  end
  if value == "N" then
    return "Last Block: ".."No (N)"
  end
  return "Last Block: "..value
end

-- Dissect: Last Block
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_block.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_block.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_block, range, value, display)
end

-- Last Compound Yield (CYl): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_compound_yield = {}

-- Display: Last Compound Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_compound_yield.display = function(value)
  return "Last Compound Yield: "..value
end

-- Dissect: Last Compound Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_compound_yield.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Last Compound Yield: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_compound_yield.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_compound_yield, range, value, display)
end

-- Last Paid Date (LPd): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_paid_date = {}

-- Display: Last Paid Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_paid_date.display = function(value)
  if #value == 8 then
    return "Last Paid Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Last Paid Date: "..value
end

-- Dissect: Last Paid Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_paid_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_paid_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_paid_date, range, value, display)
end

-- Last Price (Pl): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_price = {}

-- Display: Last Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_price.display = function(value)
  return "Last Price: "..value
end

-- Dissect: Last Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Last Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_price, range, value, display)
end

-- Last Settlement Price (SEPl): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_settlement_price = {}

-- Display: Last Settlement Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_settlement_price.display = function(value)
  return "Last Settlement Price: "..value
end

-- Dissect: Last Settlement Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_settlement_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Last Settlement Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_settlement_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_settlement_price, range, value, display)
end

-- Last Trade Report Price (LTRp): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trade_report_price = {}

-- Display: Last Trade Report Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trade_report_price.display = function(value)
  return "Last Trade Report Price: "..value
end

-- Dissect: Last Trade Report Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trade_report_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Last Trade Report Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trade_report_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_trade_report_price, range, value, display)
end

-- Last Trade Report Quantity (LTRq): Integer 10
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trade_report_quantity = {}

-- Display: Last Trade Report Quantity
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trade_report_quantity.display = function(value)
  return "Last Trade Report Quantity: "..value
end

-- Dissect: Last Trade Report Quantity
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trade_report_quantity.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Last Trade Report Quantity: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trade_report_quantity.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_trade_report_quantity, range, value, display)
end

-- Last Trade Report Yield (LTRy): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trade_report_yield = {}

-- Display: Last Trade Report Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trade_report_yield.display = function(value)
  return "Last Trade Report Yield: "..value
end

-- Dissect: Last Trade Report Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trade_report_yield.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Last Trade Report Yield: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trade_report_yield.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_trade_report_yield, range, value, display)
end

-- Last Traded Date (LTd): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_traded_date = {}

-- Display: Last Traded Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_traded_date.display = function(value)
  if #value == 8 then
    return "Last Traded Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Last Traded Date: "..value
end

-- Dissect: Last Traded Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_traded_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_traded_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_traded_date, range, value, display)
end

-- Last Trading Date (LTRd): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trading_date = {}

-- Display: Last Trading Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trading_date.display = function(value)
  if #value == 8 then
    return "Last Trading Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Last Trading Date: "..value
end

-- Dissect: Last Trading Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trading_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trading_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_trading_date, range, value, display)
end

-- Last Trading Time (LTRt): Time
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trading_time = {}

-- Display: Last Trading Time
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trading_time.display = function(value)
  if #value == 6 then
    return "Last Trading Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
  end
  return "Last Trading Time: "..value
end

-- Dissect: Last Trading Time
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trading_time.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trading_time.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_trading_time, range, value, display)
end

-- Last Volume (Lv): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_volume = {}

-- Display: Last Volume
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_volume.display = function(value)
  return "Last Volume: "..value
end

-- Dissect: Last Volume
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_volume.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Last Volume: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_volume.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_volume, range, value, display)
end

-- Last Yield (Yl): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_yield = {}

-- Display: Last Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_yield.display = function(value)
  return "Last Yield: "..value
end

-- Dissect: Last Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.last_yield.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Last Yield: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_yield.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.last_yield, range, value, display)
end

-- Latest Trade (Lt): YesNo 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.latest_trade = {}

-- Display: Latest Trade
bist_borsaistanbul_marketinfo_tip_v2_2_8.latest_trade.display = function(value)
  if value == "Y" then
    return "Latest Trade: ".."Yes (Y)"
  end
  if value == "N" then
    return "Latest Trade: ".."No (N)"
  end
  return "Latest Trade: "..value
end

-- Dissect: Latest Trade
bist_borsaistanbul_marketinfo_tip_v2_2_8.latest_trade.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.latest_trade.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.latest_trade, range, value, display)
end

-- List Id (LSi): Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.list_id = {}

-- Display: List Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.list_id.display = function(value)
  return "List Id: "..value
end

-- Dissect: List Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.list_id.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "List Id: not a number: "..text)
    return
  end
  value = UInt64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.list_id.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.list_id, range, value, display)
end

-- Listing Date (LDa): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.listing_date = {}

-- Display: Listing Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.listing_date.display = function(value)
  if #value == 8 then
    return "Listing Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Listing Date: "..value
end

-- Dissect: Listing Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.listing_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.listing_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.listing_date, range, value, display)
end

-- Lot Size (LSz): Float 6,3
bist_borsaistanbul_marketinfo_tip_v2_2_8.lot_size = {}

-- Display: Lot Size
bist_borsaistanbul_marketinfo_tip_v2_2_8.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
bist_borsaistanbul_marketinfo_tip_v2_2_8.lot_size.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Lot Size: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.lot_size.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.lot_size, range, value, display)
end

-- Low Price (LOp): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price = {}

-- Display: Low Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Low Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.low_price, range, value, display)
end

-- Low Price Month (LPm): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price_month = {}

-- Display: Low Price Month
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price_month.display = function(value)
  return "Low Price Month: "..value
end

-- Dissect: Low Price Month
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price_month.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Low Price Month: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price_month.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.low_price_month, range, value, display)
end

-- Low Price Month Date (LPMd): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price_month_date = {}

-- Display: Low Price Month Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price_month_date.display = function(value)
  if #value == 8 then
    return "Low Price Month Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Low Price Month Date: "..value
end

-- Dissect: Low Price Month Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price_month_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price_month_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.low_price_month_date, range, value, display)
end

-- Low Price Year (LPy): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price_year = {}

-- Display: Low Price Year
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price_year.display = function(value)
  return "Low Price Year: "..value
end

-- Dissect: Low Price Year
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price_year.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Low Price Year: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price_year.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.low_price_year, range, value, display)
end

-- Low Price Year Date (LPYd): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price_year_date = {}

-- Display: Low Price Year Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price_year_date.display = function(value)
  if #value == 8 then
    return "Low Price Year Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Low Price Year Date: "..value
end

-- Dissect: Low Price Year Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price_year_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price_year_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.low_price_year_date, range, value, display)
end

-- Low Settlement Price (LSEp): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_settlement_price = {}

-- Display: Low Settlement Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_settlement_price.display = function(value)
  return "Low Settlement Price: "..value
end

-- Dissect: Low Settlement Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_settlement_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Low Settlement Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.low_settlement_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.low_settlement_price, range, value, display)
end

-- Low Value (Vl): Double 18,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_value = {}

-- Display: Low Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_value.display = function(value)
  return "Low Value: "..value
end

-- Dissect: Low Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_value.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Low Value: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.low_value.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.low_value, range, value, display)
end

-- Low Yield (Yo): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_yield = {}

-- Display: Low Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_yield.display = function(value)
  return "Low Yield: "..value
end

-- Dissect: Low Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_yield.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Low Yield: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.low_yield.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.low_yield, range, value, display)
end

-- Low Yield Month (LYm): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_yield_month = {}

-- Display: Low Yield Month
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_yield_month.display = function(value)
  return "Low Yield Month: "..value
end

-- Dissect: Low Yield Month
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_yield_month.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Low Yield Month: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.low_yield_month.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.low_yield_month, range, value, display)
end

-- Low Yield Year (LYy): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_yield_year = {}

-- Display: Low Yield Year
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_yield_year.display = function(value)
  return "Low Yield Year: "..value
end

-- Dissect: Low Yield Year
bist_borsaistanbul_marketinfo_tip_v2_2_8.low_yield_year.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Low Yield Year: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.low_yield_year.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.low_yield_year, range, value, display)
end

-- Lower Price Limit (LPl): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.lower_price_limit = {}

-- Display: Lower Price Limit
bist_borsaistanbul_marketinfo_tip_v2_2_8.lower_price_limit.display = function(value)
  return "Lower Price Limit: "..value
end

-- Dissect: Lower Price Limit
bist_borsaistanbul_marketinfo_tip_v2_2_8.lower_price_limit.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Lower Price Limit: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.lower_price_limit.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.lower_price_limit, range, value, display)
end

-- Margin Price (MPr): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.margin_price = {}

-- Display: Margin Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.margin_price.display = function(value)
  return "Margin Price: "..value
end

-- Dissect: Margin Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.margin_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Margin Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.margin_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.margin_price, range, value, display)
end

-- Market Cap (CAp): Double 23,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.market_cap = {}

-- Display: Market Cap
bist_borsaistanbul_marketinfo_tip_v2_2_8.market_cap.display = function(value)
  return "Market Cap: "..value
end

-- Dissect: Market Cap
bist_borsaistanbul_marketinfo_tip_v2_2_8.market_cap.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Market Cap: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.market_cap.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.market_cap, range, value, display)
end

-- Market Id (Mk): Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.market_id = {}

-- Display: Market Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.market_id.display = function(value)
  return "Market Id: "..value
end

-- Dissect: Market Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.market_id.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Market Id: not a number: "..text)
    return
  end
  value = UInt64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.market_id.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.market_id, range, value, display)
end

-- Market Maker (MMk): Idlist 200
bist_borsaistanbul_marketinfo_tip_v2_2_8.market_maker = {}

-- Display: Market Maker
bist_borsaistanbul_marketinfo_tip_v2_2_8.market_maker.display = function(value)
  return "Market Maker: "..value
end

-- Dissect: Market Maker
bist_borsaistanbul_marketinfo_tip_v2_2_8.market_maker.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.market_maker.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.market_maker, range, value, display)
end

-- Market Segment (MSe): Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.market_segment = {}

-- Display: Market Segment
bist_borsaistanbul_marketinfo_tip_v2_2_8.market_segment.display = function(value)
  return "Market Segment: "..value
end

-- Dissect: Market Segment
bist_borsaistanbul_marketinfo_tip_v2_2_8.market_segment.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Market Segment: not a number: "..text)
    return
  end
  value = UInt64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.market_segment.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.market_segment, range, value, display)
end

-- Maturity Date (DMa): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.maturity_date = {}

-- Display: Maturity Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.maturity_date.display = function(value)
  if #value == 8 then
    return "Maturity Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.maturity_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.maturity_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.maturity_date, range, value, display)
end

-- Max Days Order (MDo): Integer 4
bist_borsaistanbul_marketinfo_tip_v2_2_8.max_days_order = {}

-- Display: Max Days Order
bist_borsaistanbul_marketinfo_tip_v2_2_8.max_days_order.display = function(value)
  return "Max Days Order: "..value
end

-- Dissect: Max Days Order
bist_borsaistanbul_marketinfo_tip_v2_2_8.max_days_order.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Max Days Order: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.max_days_order.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.max_days_order, range, value, display)
end

-- Max Order Value (MOv): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.max_order_value = {}

-- Display: Max Order Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.max_order_value.display = function(value)
  return "Max Order Value: "..value
end

-- Dissect: Max Order Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.max_order_value.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Max Order Value: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.max_order_value.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.max_order_value, range, value, display)
end

-- Maximum Lot (MLt): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.maximum_lot = {}

-- Display: Maximum Lot
bist_borsaistanbul_marketinfo_tip_v2_2_8.maximum_lot.display = function(value)
  return "Maximum Lot: "..value
end

-- Dissect: Maximum Lot
bist_borsaistanbul_marketinfo_tip_v2_2_8.maximum_lot.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Maximum Lot: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.maximum_lot.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.maximum_lot, range, value, display)
end

-- Message Source (NMs): String 80
bist_borsaistanbul_marketinfo_tip_v2_2_8.message_source = {}

-- Display: Message Source
bist_borsaistanbul_marketinfo_tip_v2_2_8.message_source.display = function(value)
  return "Message Source: "..value
end

-- Dissect: Message Source
bist_borsaistanbul_marketinfo_tip_v2_2_8.message_source.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.message_source.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.message_source, range, value, display)
end

-- Metal Type (Mt): MetalType 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.metal_type = {}

-- Display: Metal Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.metal_type.display = function(value)
  if value == "1" then
    return "Metal Type: ".."Gold (1)"
  end
  if value == "2" then
    return "Metal Type: ".."Silver (2)"
  end
  if value == "3" then
    return "Metal Type: ".."Platinum (3)"
  end
  if value == "4" then
    return "Metal Type: ".."Palladium (4)"
  end
  return "Metal Type: ".."Unknown ("..value..")"
end

-- Dissect: Metal Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.metal_type.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Metal Type: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.metal_type.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.metal_type, range, value, display)
end

-- Metal Weight (Mw): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.metal_weight = {}

-- Display: Metal Weight
bist_borsaistanbul_marketinfo_tip_v2_2_8.metal_weight.display = function(value)
  return "Metal Weight: "..value
end

-- Dissect: Metal Weight
bist_borsaistanbul_marketinfo_tip_v2_2_8.metal_weight.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Metal Weight: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.metal_weight.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.metal_weight, range, value, display)
end

-- Metal Weight Conversion Factor (MWc): String 22
bist_borsaistanbul_marketinfo_tip_v2_2_8.metal_weight_conversion_factor = {}

-- Display: Metal Weight Conversion Factor
bist_borsaistanbul_marketinfo_tip_v2_2_8.metal_weight_conversion_factor.display = function(value)
  return "Metal Weight Conversion Factor: "..value
end

-- Dissect: Metal Weight Conversion Factor
bist_borsaistanbul_marketinfo_tip_v2_2_8.metal_weight_conversion_factor.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.metal_weight_conversion_factor.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.metal_weight_conversion_factor, range, value, display)
end

-- Metal Weight Unit (MWu): MetalWeightUnit 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.metal_weight_unit = {}

-- Display: Metal Weight Unit
bist_borsaistanbul_marketinfo_tip_v2_2_8.metal_weight_unit.display = function(value)
  if value == "1" then
    return "Metal Weight Unit: ".."Kilogram (1)"
  end
  if value == "2" then
    return "Metal Weight Unit: ".."Gram (2)"
  end
  if value == "3" then
    return "Metal Weight Unit: ".."Ounce (3)"
  end
  return "Metal Weight Unit: ".."Unknown ("..value..")"
end

-- Dissect: Metal Weight Unit
bist_borsaistanbul_marketinfo_tip_v2_2_8.metal_weight_unit.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Metal Weight Unit: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.metal_weight_unit.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.metal_weight_unit, range, value, display)
end

-- Mic Code (MIc): String 4
bist_borsaistanbul_marketinfo_tip_v2_2_8.mic_code = {}

-- Display: Mic Code
bist_borsaistanbul_marketinfo_tip_v2_2_8.mic_code.display = function(value)
  return "Mic Code: "..value
end

-- Dissect: Mic Code
bist_borsaistanbul_marketinfo_tip_v2_2_8.mic_code.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.mic_code.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.mic_code, range, value, display)
end

-- Min Volume (Vm): Integer 10
bist_borsaistanbul_marketinfo_tip_v2_2_8.min_volume = {}

-- Display: Min Volume
bist_borsaistanbul_marketinfo_tip_v2_2_8.min_volume.display = function(value)
  return "Min Volume: "..value
end

-- Dissect: Min Volume
bist_borsaistanbul_marketinfo_tip_v2_2_8.min_volume.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Min Volume: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.min_volume.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.min_volume, range, value, display)
end

-- Minimum Lot (MLm): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.minimum_lot = {}

-- Display: Minimum Lot
bist_borsaistanbul_marketinfo_tip_v2_2_8.minimum_lot.display = function(value)
  return "Minimum Lot: "..value
end

-- Dissect: Minimum Lot
bist_borsaistanbul_marketinfo_tip_v2_2_8.minimum_lot.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Minimum Lot: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.minimum_lot.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.minimum_lot, range, value, display)
end

-- Minus Bids (Bm): Integer 5
bist_borsaistanbul_marketinfo_tip_v2_2_8.minus_bids = {}

-- Display: Minus Bids
bist_borsaistanbul_marketinfo_tip_v2_2_8.minus_bids.display = function(value)
  return "Minus Bids: "..value
end

-- Dissect: Minus Bids
bist_borsaistanbul_marketinfo_tip_v2_2_8.minus_bids.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Minus Bids: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.minus_bids.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.minus_bids, range, value, display)
end

-- Minus Paid (Pm): Integer 5
bist_borsaistanbul_marketinfo_tip_v2_2_8.minus_paid = {}

-- Display: Minus Paid
bist_borsaistanbul_marketinfo_tip_v2_2_8.minus_paid.display = function(value)
  return "Minus Paid: "..value
end

-- Dissect: Minus Paid
bist_borsaistanbul_marketinfo_tip_v2_2_8.minus_paid.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Minus Paid: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.minus_paid.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.minus_paid, range, value, display)
end

-- Name (NAm): String 80
bist_borsaistanbul_marketinfo_tip_v2_2_8.name = {}

-- Display: Name
bist_borsaistanbul_marketinfo_tip_v2_2_8.name.display = function(value)
  return "Name: "..value
end

-- Dissect: Name
bist_borsaistanbul_marketinfo_tip_v2_2_8.name.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.name.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.name, range, value, display)
end

-- News Id (NWi): Integer 10
bist_borsaistanbul_marketinfo_tip_v2_2_8.news_id = {}

-- Display: News Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.news_id.display = function(value)
  return "News Id: "..value
end

-- Dissect: News Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.news_id.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "News Id: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.news_id.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.news_id, range, value, display)
end

-- News Object Type (NOt): NewsObjectType 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.news_object_type = {}

-- Display: News Object Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.news_object_type.display = function(value)
  if value == "1" then
    return "News Object Type: ".."Exchange (1)"
  end
  if value == "2" then
    return "News Object Type: ".."Market (2)"
  end
  if value == "3" then
    return "News Object Type: ".."Orderbook (3)"
  end
  if value == "4" then
    return "News Object Type: ".."Instrument (4)"
  end
  if value == "5" then
    return "News Object Type: ".."Issuer (5)"
  end
  if value == "6" then
    return "News Object Type: ".."Source (6)"
  end
  return "News Object Type: ".."Unknown ("..value..")"
end

-- Dissect: News Object Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.news_object_type.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "News Object Type: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.news_object_type.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.news_object_type, range, value, display)
end

-- No Of Dec Price (NDp): Integer 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.no_of_dec_price = {}

-- Display: No Of Dec Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.no_of_dec_price.display = function(value)
  return "No Of Dec Price: "..value
end

-- Dissect: No Of Dec Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.no_of_dec_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "No Of Dec Price: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.no_of_dec_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.no_of_dec_price, range, value, display)
end

-- No Of Dec Yield (NDTp): Integer 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.no_of_dec_yield = {}

-- Display: No Of Dec Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.no_of_dec_yield.display = function(value)
  return "No Of Dec Yield: "..value
end

-- Dissect: No Of Dec Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.no_of_dec_yield.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "No Of Dec Yield: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.no_of_dec_yield.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.no_of_dec_yield, range, value, display)
end

-- Nominal Value (NMv): Double 20,15
bist_borsaistanbul_marketinfo_tip_v2_2_8.nominal_value = {}

-- Display: Nominal Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.nominal_value.display = function(value)
  return "Nominal Value: "..value
end

-- Dissect: Nominal Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.nominal_value.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Nominal Value: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.nominal_value.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.nominal_value, range, value, display)
end

-- Note Code (NOc): Integer 10
bist_borsaistanbul_marketinfo_tip_v2_2_8.note_code = {}

-- Display: Note Code
bist_borsaistanbul_marketinfo_tip_v2_2_8.note_code.display = function(value)
  return "Note Code: "..value
end

-- Dissect: Note Code
bist_borsaistanbul_marketinfo_tip_v2_2_8.note_code.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Note Code: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.note_code.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.note_code, range, value, display)
end

-- Notional Value (Nv): Float 16,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.notional_value = {}

-- Display: Notional Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.notional_value.display = function(value)
  return "Notional Value: "..value
end

-- Dissect: Notional Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.notional_value.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Notional Value: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.notional_value.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.notional_value, range, value, display)
end

-- Notional Value In Value Currency (NVc): Float 16,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.notional_value_in_value_currency = {}

-- Display: Notional Value In Value Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.notional_value_in_value_currency.display = function(value)
  return "Notional Value In Value Currency: "..value
end

-- Dissect: Notional Value In Value Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.notional_value_in_value_currency.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Notional Value In Value Currency: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.notional_value_in_value_currency.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.notional_value_in_value_currency, range, value, display)
end

-- Number Of Trade Reports (Qr): Integer 8
bist_borsaistanbul_marketinfo_tip_v2_2_8.number_of_trade_reports = {}

-- Display: Number Of Trade Reports
bist_borsaistanbul_marketinfo_tip_v2_2_8.number_of_trade_reports.display = function(value)
  return "Number Of Trade Reports: "..value
end

-- Dissect: Number Of Trade Reports
bist_borsaistanbul_marketinfo_tip_v2_2_8.number_of_trade_reports.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Number Of Trade Reports: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.number_of_trade_reports.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.number_of_trade_reports, range, value, display)
end

-- Number Of Trades (q): Integer 8
bist_borsaistanbul_marketinfo_tip_v2_2_8.number_of_trades = {}

-- Display: Number Of Trades
bist_borsaistanbul_marketinfo_tip_v2_2_8.number_of_trades.display = function(value)
  return "Number Of Trades: "..value
end

-- Dissect: Number Of Trades
bist_borsaistanbul_marketinfo_tip_v2_2_8.number_of_trades.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Number Of Trades: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.number_of_trades.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.number_of_trades, range, value, display)
end

-- Odd First (ODf): YesNo
bist_borsaistanbul_marketinfo_tip_v2_2_8.odd_first = {}

-- Display: Odd First
bist_borsaistanbul_marketinfo_tip_v2_2_8.odd_first.display = function(value)
  if value == "Y" then
    return "Odd First: ".."Yes (Y)"
  end
  if value == "N" then
    return "Odd First: ".."No (N)"
  end
  return "Odd First: "..value
end

-- Dissect: Odd First
bist_borsaistanbul_marketinfo_tip_v2_2_8.odd_first.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.odd_first.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.odd_first, range, value, display)
end

-- Odd Last (ODl): YesNo
bist_borsaistanbul_marketinfo_tip_v2_2_8.odd_last = {}

-- Display: Odd Last
bist_borsaistanbul_marketinfo_tip_v2_2_8.odd_last.display = function(value)
  if value == "Y" then
    return "Odd Last: ".."Yes (Y)"
  end
  if value == "N" then
    return "Odd Last: ".."No (N)"
  end
  return "Odd Last: "..value
end

-- Dissect: Odd Last
bist_borsaistanbul_marketinfo_tip_v2_2_8.odd_last.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.odd_last.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.odd_last, range, value, display)
end

-- Official Closing Price (ISOc): YesNo
bist_borsaistanbul_marketinfo_tip_v2_2_8.official_closing_price = {}

-- Display: Official Closing Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.official_closing_price.display = function(value)
  if value == "Y" then
    return "Official Closing Price: ".."Yes (Y)"
  end
  if value == "N" then
    return "Official Closing Price: ".."No (N)"
  end
  return "Official Closing Price: "..value
end

-- Dissect: Official Closing Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.official_closing_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.official_closing_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.official_closing_price, range, value, display)
end

-- Official Closing Turnover (ISOt): YesNo
bist_borsaistanbul_marketinfo_tip_v2_2_8.official_closing_turnover = {}

-- Display: Official Closing Turnover
bist_borsaistanbul_marketinfo_tip_v2_2_8.official_closing_turnover.display = function(value)
  if value == "Y" then
    return "Official Closing Turnover: ".."Yes (Y)"
  end
  if value == "N" then
    return "Official Closing Turnover: ".."No (N)"
  end
  return "Official Closing Turnover: "..value
end

-- Dissect: Official Closing Turnover
bist_borsaistanbul_marketinfo_tip_v2_2_8.official_closing_turnover.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.official_closing_turnover.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.official_closing_turnover, range, value, display)
end

-- Old Index Value (ODXv): Double 18,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.old_index_value = {}

-- Display: Old Index Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.old_index_value.display = function(value)
  return "Old Index Value: "..value
end

-- Dissect: Old Index Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.old_index_value.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Old Index Value: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.old_index_value.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.old_index_value, range, value, display)
end

-- Old Series (Or): String 32
bist_borsaistanbul_marketinfo_tip_v2_2_8.old_series = {}

-- Display: Old Series
bist_borsaistanbul_marketinfo_tip_v2_2_8.old_series.display = function(value)
  return "Old Series: "..value
end

-- Dissect: Old Series
bist_borsaistanbul_marketinfo_tip_v2_2_8.old_series.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.old_series.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.old_series, range, value, display)
end

-- Open Interest (OPi): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.open_interest = {}

-- Display: Open Interest
bist_borsaistanbul_marketinfo_tip_v2_2_8.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
bist_borsaistanbul_marketinfo_tip_v2_2_8.open_interest.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Open Interest: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.open_interest.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.open_interest, range, value, display)
end

-- Open Value (OVa): Double 18,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.open_value = {}

-- Display: Open Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.open_value.display = function(value)
  return "Open Value: "..value
end

-- Dissect: Open Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.open_value.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Open Value: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.open_value.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.open_value, range, value, display)
end

-- Operational (Op): Operational
bist_borsaistanbul_marketinfo_tip_v2_2_8.operational = {}

-- Display: Operational
bist_borsaistanbul_marketinfo_tip_v2_2_8.operational.display = function(value)
  if value == "1" then
    return "Operational: ".."Same (1)"
  end
  if value == "2" then
    return "Operational: ".."Opposite (2)"
  end
  return "Operational: ".."Unknown ("..value..")"
end

-- Dissect: Operational
bist_borsaistanbul_marketinfo_tip_v2_2_8.operational.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Operational: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.operational.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.operational, range, value, display)
end

-- Order Class (Cl): OrderClass
bist_borsaistanbul_marketinfo_tip_v2_2_8.order_class = {}

-- Display: Order Class
bist_borsaistanbul_marketinfo_tip_v2_2_8.order_class.display = function(value)
  if value == "1" then
    return "Order Class: ".."Block Lot (1)"
  end
  if value == "2" then
    return "Order Class: ".."Round Lot (2)"
  end
  if value == "3" then
    return "Order Class: ".."Odd Lot (3)"
  end
  if value == "4" then
    return "Order Class: ".."Non Matchable Orders (4)"
  end
  if value == "5" then
    return "Order Class: ".."All Or Nothing (5)"
  end
  return "Order Class: ".."Unknown ("..value..")"
end

-- Dissect: Order Class
bist_borsaistanbul_marketinfo_tip_v2_2_8.order_class.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Order Class: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.order_class.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.order_class, range, value, display)
end

-- Order Key (l): String 20
bist_borsaistanbul_marketinfo_tip_v2_2_8.order_key = {}

-- Display: Order Key
bist_borsaistanbul_marketinfo_tip_v2_2_8.order_key.display = function(value)
  return "Order Key: "..value
end

-- Dissect: Order Key
bist_borsaistanbul_marketinfo_tip_v2_2_8.order_key.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.order_key.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.order_key, range, value, display)
end

-- Orderbook Id (IDo): Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook_id = {}

-- Display: Orderbook Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook_id.display = function(value)
  return "Orderbook Id: "..value
end

-- Dissect: Orderbook Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook_id.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Orderbook Id: not a number: "..text)
    return
  end
  value = UInt64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook_id.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.orderbook_id, range, value, display)
end

-- Outside Spread (Os): YesNo
bist_borsaistanbul_marketinfo_tip_v2_2_8.outside_spread = {}

-- Display: Outside Spread
bist_borsaistanbul_marketinfo_tip_v2_2_8.outside_spread.display = function(value)
  if value == "Y" then
    return "Outside Spread: ".."Yes (Y)"
  end
  if value == "N" then
    return "Outside Spread: ".."No (N)"
  end
  return "Outside Spread: "..value
end

-- Dissect: Outside Spread
bist_borsaistanbul_marketinfo_tip_v2_2_8.outside_spread.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.outside_spread.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.outside_spread, range, value, display)
end

-- Outstanding Amount (AOs): Float 15,0
bist_borsaistanbul_marketinfo_tip_v2_2_8.outstanding_amount = {}

-- Display: Outstanding Amount
bist_borsaistanbul_marketinfo_tip_v2_2_8.outstanding_amount.display = function(value)
  return "Outstanding Amount: "..value
end

-- Dissect: Outstanding Amount
bist_borsaistanbul_marketinfo_tip_v2_2_8.outstanding_amount.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Outstanding Amount: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.outstanding_amount.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.outstanding_amount, range, value, display)
end

-- Parent Id (PAi): Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.parent_id = {}

-- Display: Parent Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.parent_id.display = function(value)
  return "Parent Id: "..value
end

-- Dissect: Parent Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.parent_id.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Parent Id: not a number: "..text)
    return
  end
  value = UInt64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.parent_id.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.parent_id, range, value, display)
end

-- Participant (Pt): String 6
bist_borsaistanbul_marketinfo_tip_v2_2_8.participant = {}

-- Display: Participant
bist_borsaistanbul_marketinfo_tip_v2_2_8.participant.display = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
bist_borsaistanbul_marketinfo_tip_v2_2_8.participant.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.participant.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.participant, range, value, display)
end

-- Participant Type (PAt): Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.participant_type = {}

-- Display: Participant Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.participant_type.display = function(value)
  return "Participant Type: "..value
end

-- Dissect: Participant Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.participant_type.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Participant Type: not a number: "..text)
    return
  end
  value = UInt64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.participant_type.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.participant_type, range, value, display)
end

-- Plus Bids (Bp): Integer 5
bist_borsaistanbul_marketinfo_tip_v2_2_8.plus_bids = {}

-- Display: Plus Bids
bist_borsaistanbul_marketinfo_tip_v2_2_8.plus_bids.display = function(value)
  return "Plus Bids: "..value
end

-- Dissect: Plus Bids
bist_borsaistanbul_marketinfo_tip_v2_2_8.plus_bids.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Plus Bids: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.plus_bids.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.plus_bids, range, value, display)
end

-- Plus Paid (Pp): Integer 5
bist_borsaistanbul_marketinfo_tip_v2_2_8.plus_paid = {}

-- Display: Plus Paid
bist_borsaistanbul_marketinfo_tip_v2_2_8.plus_paid.display = function(value)
  return "Plus Paid: "..value
end

-- Dissect: Plus Paid
bist_borsaistanbul_marketinfo_tip_v2_2_8.plus_paid.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Plus Paid: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.plus_paid.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.plus_paid, range, value, display)
end

-- Population Type (POt): Integer 10
bist_borsaistanbul_marketinfo_tip_v2_2_8.population_type = {}

-- Display: Population Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.population_type.display = function(value)
  return "Population Type: "..value
end

-- Dissect: Population Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.population_type.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Population Type: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.population_type.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.population_type, range, value, display)
end

-- Position Increasing Orders (PIo): PositionIncreasingOrdersInfo 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.position_increasing_orders = {}

-- Display: Position Increasing Orders
bist_borsaistanbul_marketinfo_tip_v2_2_8.position_increasing_orders.display = function(value)
  if value == "1" then
    return "Position Increasing Orders: ".."Allowed (1)"
  end
  if value == "2" then
    return "Position Increasing Orders: ".."Notice (2)"
  end
  if value == "3" then
    return "Position Increasing Orders: ".."Warning (3)"
  end
  if value == "4" then
    return "Position Increasing Orders: ".."Not Allowed (4)"
  end
  return "Position Increasing Orders: ".."Unknown ("..value..")"
end

-- Dissect: Position Increasing Orders
bist_borsaistanbul_marketinfo_tip_v2_2_8.position_increasing_orders.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Position Increasing Orders: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.position_increasing_orders.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.position_increasing_orders, range, value, display)
end

-- Posttrade Anonymity (PTb): PosttradeAnonymityType 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.posttrade_anonymity = {}

-- Display: Posttrade Anonymity
bist_borsaistanbul_marketinfo_tip_v2_2_8.posttrade_anonymity.display = function(value)
  if value == "1" then
    return "Posttrade Anonymity: ".."No Counter Party Info (1)"
  end
  if value == "2" then
    return "Posttrade Anonymity: ".."Counter Party Info Available (2)"
  end
  return "Posttrade Anonymity: ".."Unknown ("..value..")"
end

-- Dissect: Posttrade Anonymity
bist_borsaistanbul_marketinfo_tip_v2_2_8.posttrade_anonymity.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Posttrade Anonymity: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.posttrade_anonymity.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.posttrade_anonymity, range, value, display)
end

-- Pretrade Anonymity (PTa): YesNo
bist_borsaistanbul_marketinfo_tip_v2_2_8.pretrade_anonymity = {}

-- Display: Pretrade Anonymity
bist_borsaistanbul_marketinfo_tip_v2_2_8.pretrade_anonymity.display = function(value)
  if value == "Y" then
    return "Pretrade Anonymity: ".."Yes (Y)"
  end
  if value == "N" then
    return "Pretrade Anonymity: ".."No (N)"
  end
  return "Pretrade Anonymity: "..value
end

-- Dissect: Pretrade Anonymity
bist_borsaistanbul_marketinfo_tip_v2_2_8.pretrade_anonymity.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.pretrade_anonymity.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.pretrade_anonymity, range, value, display)
end

-- Price (p): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.price = {}

-- Display: Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.price, range, value, display)
end

-- Price From (PFr): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.price_from = {}

-- Display: Price From
bist_borsaistanbul_marketinfo_tip_v2_2_8.price_from.display = function(value)
  return "Price From: "..value
end

-- Dissect: Price From
bist_borsaistanbul_marketinfo_tip_v2_2_8.price_from.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Price From: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.price_from.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.price_from, range, value, display)
end

-- Price To (PTo): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.price_to = {}

-- Display: Price To
bist_borsaistanbul_marketinfo_tip_v2_2_8.price_to.display = function(value)
  return "Price To: "..value
end

-- Dissect: Price To
bist_borsaistanbul_marketinfo_tip_v2_2_8.price_to.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Price To: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.price_to.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.price_to, range, value, display)
end

-- Price Type (PRt): PriceType 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.price_type = {}

-- Display: Price Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.price_type.display = function(value)
  if value == "1" then
    return "Price Type: ".."Price (1)"
  end
  if value == "2" then
    return "Price Type: ".."Yield (2)"
  end
  if value == "3" then
    return "Price Type: ".."Clean Price (3)"
  end
  if value == "4" then
    return "Price Type: ".."Dirty Price (4)"
  end
  if value == "5" then
    return "Price Type: ".."Point (5)"
  end
  if value == "6" then
    return "Price Type: ".."Basis Point (6)"
  end
  if value == "7" then
    return "Price Type: ".."Rate (7)"
  end
  if value == "8" then
    return "Price Type: ".."Yield Percentage Of Weight (8)"
  end
  return "Price Type: ".."Unknown ("..value..")"
end

-- Dissect: Price Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.price_type.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Price Type: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.price_type.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.price_type, range, value, display)
end

-- Price Unit (PUn): String 32
bist_borsaistanbul_marketinfo_tip_v2_2_8.price_unit = {}

-- Display: Price Unit
bist_borsaistanbul_marketinfo_tip_v2_2_8.price_unit.display = function(value)
  return "Price Unit: "..value
end

-- Dissect: Price Unit
bist_borsaistanbul_marketinfo_tip_v2_2_8.price_unit.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.price_unit.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.price_unit, range, value, display)
end

-- Price Weight Unit (PWu): PriceWeightUnit 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.price_weight_unit = {}

-- Display: Price Weight Unit
bist_borsaistanbul_marketinfo_tip_v2_2_8.price_weight_unit.display = function(value)
  if value == "1" then
    return "Price Weight Unit: ".."oz (1)"
  end
  if value == "2" then
    return "Price Weight Unit: ".."kg (2)"
  end
  if value == "3" then
    return "Price Weight Unit: ".."gr (3)"
  end
  return "Price Weight Unit: ".."Unknown ("..value..")"
end

-- Dissect: Price Weight Unit
bist_borsaistanbul_marketinfo_tip_v2_2_8.price_weight_unit.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Price Weight Unit: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.price_weight_unit.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.price_weight_unit, range, value, display)
end

-- Principal Value (Pv): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.principal_value = {}

-- Display: Principal Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.principal_value.display = function(value)
  return "Principal Value: "..value
end

-- Dissect: Principal Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.principal_value.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Principal Value: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.principal_value.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.principal_value, range, value, display)
end

-- Ranked Ask Collateral Price (Ad): Ifloat 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_collateral_price = {}

-- Display: Ranked Ask Collateral Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_collateral_price.display = function(value, level)
  return "Ranked Ask Collateral Price ["..level.."]: "..value
end

-- Dissect: Ranked Ask Collateral Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_collateral_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local level, rest = text:match("^(%d+):(.*)$")
  if level == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ranked Ask Collateral Price: indexed value without a level: "..text)
    return
  end
  text = rest
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ranked Ask Collateral Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_collateral_price.display(text, level)

  local item = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ranked_ask_collateral_price, range, value, display)
  item:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tip_level, range, tonumber(level))
end

-- Ranked Ask Order Key (Ao): Iinteger 19
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_order_key = {}

-- Display: Ranked Ask Order Key
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_order_key.display = function(value, level)
  return "Ranked Ask Order Key ["..level.."]: "..value
end

-- Dissect: Ranked Ask Order Key
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_order_key.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local level, rest = text:match("^(%d+):(.*)$")
  if level == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ranked Ask Order Key: indexed value without a level: "..text)
    return
  end
  text = rest
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ranked Ask Order Key: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_order_key.display(text, level)

  local item = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ranked_ask_order_key, range, value, display)
  item:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tip_level, range, tonumber(level))
end

-- Ranked Ask Price (Af): Ifloat 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_price = {}

-- Display: Ranked Ask Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_price.display = function(value, level)
  return "Ranked Ask Price ["..level.."]: "..value
end

-- Dissect: Ranked Ask Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local level, rest = text:match("^(%d+):(.*)$")
  if level == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ranked Ask Price: indexed value without a level: "..text)
    return
  end
  text = rest
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ranked Ask Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_price.display(text, level)

  local item = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ranked_ask_price, range, value, display)
  item:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tip_level, range, tonumber(level))
end

-- Ranked Ask Volume (Ah): Ifloat 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_volume = {}

-- Display: Ranked Ask Volume
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_volume.display = function(value, level)
  return "Ranked Ask Volume ["..level.."]: "..value
end

-- Dissect: Ranked Ask Volume
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_volume.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local level, rest = text:match("^(%d+):(.*)$")
  if level == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ranked Ask Volume: indexed value without a level: "..text)
    return
  end
  text = rest
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ranked Ask Volume: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_volume.display(text, level)

  local item = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ranked_ask_volume, range, value, display)
  item:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tip_level, range, tonumber(level))
end

-- Ranked Ask Yield (Ay): Ifloat 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_yield = {}

-- Display: Ranked Ask Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_yield.display = function(value, level)
  return "Ranked Ask Yield ["..level.."]: "..value
end

-- Dissect: Ranked Ask Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_yield.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local level, rest = text:match("^(%d+):(.*)$")
  if level == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ranked Ask Yield: indexed value without a level: "..text)
    return
  end
  text = rest
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ranked Ask Yield: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_yield.display(text, level)

  local item = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ranked_ask_yield, range, value, display)
  item:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tip_level, range, tonumber(level))
end

-- Ranked Bid Collateral Price (Bd): Ifloat 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_collateral_price = {}

-- Display: Ranked Bid Collateral Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_collateral_price.display = function(value, level)
  return "Ranked Bid Collateral Price ["..level.."]: "..value
end

-- Dissect: Ranked Bid Collateral Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_collateral_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local level, rest = text:match("^(%d+):(.*)$")
  if level == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ranked Bid Collateral Price: indexed value without a level: "..text)
    return
  end
  text = rest
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ranked Bid Collateral Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_collateral_price.display(text, level)

  local item = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ranked_bid_collateral_price, range, value, display)
  item:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tip_level, range, tonumber(level))
end

-- Ranked Bid Order Key (Bo): Iinteger 19
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_order_key = {}

-- Display: Ranked Bid Order Key
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_order_key.display = function(value, level)
  return "Ranked Bid Order Key ["..level.."]: "..value
end

-- Dissect: Ranked Bid Order Key
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_order_key.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local level, rest = text:match("^(%d+):(.*)$")
  if level == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ranked Bid Order Key: indexed value without a level: "..text)
    return
  end
  text = rest
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ranked Bid Order Key: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_order_key.display(text, level)

  local item = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ranked_bid_order_key, range, value, display)
  item:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tip_level, range, tonumber(level))
end

-- Ranked Bid Price (Bf): Ifloat 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_price = {}

-- Display: Ranked Bid Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_price.display = function(value, level)
  return "Ranked Bid Price ["..level.."]: "..value
end

-- Dissect: Ranked Bid Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local level, rest = text:match("^(%d+):(.*)$")
  if level == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ranked Bid Price: indexed value without a level: "..text)
    return
  end
  text = rest
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ranked Bid Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_price.display(text, level)

  local item = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ranked_bid_price, range, value, display)
  item:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tip_level, range, tonumber(level))
end

-- Ranked Bid Volume (Bh): Ifloat 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_volume = {}

-- Display: Ranked Bid Volume
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_volume.display = function(value, level)
  return "Ranked Bid Volume ["..level.."]: "..value
end

-- Dissect: Ranked Bid Volume
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_volume.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local level, rest = text:match("^(%d+):(.*)$")
  if level == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ranked Bid Volume: indexed value without a level: "..text)
    return
  end
  text = rest
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ranked Bid Volume: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_volume.display(text, level)

  local item = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ranked_bid_volume, range, value, display)
  item:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tip_level, range, tonumber(level))
end

-- Ranked Bid Yield (By): Ifloat 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_yield = {}

-- Display: Ranked Bid Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_yield.display = function(value, level)
  return "Ranked Bid Yield ["..level.."]: "..value
end

-- Dissect: Ranked Bid Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_yield.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local level, rest = text:match("^(%d+):(.*)$")
  if level == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ranked Bid Yield: indexed value without a level: "..text)
    return
  end
  text = rest
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ranked Bid Yield: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_yield.display(text, level)

  local item = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ranked_bid_yield, range, value, display)
  item:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tip_level, range, tonumber(level))
end

-- Ranking Type (RTy): String 20
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranking_type = {}

-- Display: Ranking Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranking_type.display = function(value)
  return "Ranking Type: "..value
end

-- Dissect: Ranking Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.ranking_type.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ranking_type.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ranking_type, range, value, display)
end

-- Ratio (Ra): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.ratio = {}

-- Display: Ratio
bist_borsaistanbul_marketinfo_tip_v2_2_8.ratio.display = function(value)
  return "Ratio: "..value
end

-- Dissect: Ratio
bist_borsaistanbul_marketinfo_tip_v2_2_8.ratio.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Ratio: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.ratio.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.ratio, range, value, display)
end

-- Refinery Class (Rc): RefineryClass 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.refinery_class = {}

-- Display: Refinery Class
bist_borsaistanbul_marketinfo_tip_v2_2_8.refinery_class.display = function(value)
  if value == "1" then
    return "Refinery Class: ".."GD In (1)"
  end
  if value == "2" then
    return "Refinery Class: ".."GDL Out (2)"
  end
  return "Refinery Class: ".."Unknown ("..value..")"
end

-- Dissect: Refinery Class
bist_borsaistanbul_marketinfo_tip_v2_2_8.refinery_class.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Refinery Class: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.refinery_class.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.refinery_class, range, value, display)
end

-- Remaining Ask Volume At EP Level (EAv): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.remaining_ask_volume_at_ep_level = {}

-- Display: Remaining Ask Volume At EP Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.remaining_ask_volume_at_ep_level.display = function(value)
  return "Remaining Ask Volume At EP Level: "..value
end

-- Dissect: Remaining Ask Volume At EP Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.remaining_ask_volume_at_ep_level.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Remaining Ask Volume At EP Level: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.remaining_ask_volume_at_ep_level.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.remaining_ask_volume_at_ep_level, range, value, display)
end

-- Remaining Bid Volume At EP Level (EBv): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.remaining_bid_volume_at_ep_level = {}

-- Display: Remaining Bid Volume At EP Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.remaining_bid_volume_at_ep_level.display = function(value)
  return "Remaining Bid Volume At EP Level: "..value
end

-- Dissect: Remaining Bid Volume At EP Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.remaining_bid_volume_at_ep_level.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Remaining Bid Volume At EP Level: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.remaining_bid_volume_at_ep_level.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.remaining_bid_volume_at_ep_level, range, value, display)
end

-- Remaining Quantity (AQs): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.remaining_quantity = {}

-- Display: Remaining Quantity
bist_borsaistanbul_marketinfo_tip_v2_2_8.remaining_quantity.display = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
bist_borsaistanbul_marketinfo_tip_v2_2_8.remaining_quantity.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Remaining Quantity: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.remaining_quantity.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.remaining_quantity, range, value, display)
end

-- Repo Interest Amount (RIa): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.repo_interest_amount = {}

-- Display: Repo Interest Amount
bist_borsaistanbul_marketinfo_tip_v2_2_8.repo_interest_amount.display = function(value)
  return "Repo Interest Amount: "..value
end

-- Dissect: Repo Interest Amount
bist_borsaistanbul_marketinfo_tip_v2_2_8.repo_interest_amount.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Repo Interest Amount: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.repo_interest_amount.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.repo_interest_amount, range, value, display)
end

-- Reset Date (Rd): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.reset_date = {}

-- Display: Reset Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.reset_date.display = function(value)
  if #value == 8 then
    return "Reset Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Reset Date: "..value
end

-- Dissect: Reset Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.reset_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.reset_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.reset_date, range, value, display)
end

-- Return Type (RTt): Integer 10
bist_borsaistanbul_marketinfo_tip_v2_2_8.return_type = {}

-- Display: Return Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.return_type.display = function(value)
  return "Return Type: "..value
end

-- Dissect: Return Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.return_type.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Return Type: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.return_type.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.return_type, range, value, display)
end

-- Sector Id (SId): Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.sector_id = {}

-- Display: Sector Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.sector_id.display = function(value)
  return "Sector Id: "..value
end

-- Dissect: Sector Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.sector_id.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Sector Id: not a number: "..text)
    return
  end
  value = UInt64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.sector_id.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.sector_id, range, value, display)
end

-- Security Type (STy): SecurityType 2
bist_borsaistanbul_marketinfo_tip_v2_2_8.security_type = {}

-- Display: Security Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.security_type.display = function(value)
  if value == "1" then
    return "Security Type: ".."Share (1)"
  end
  if value == "2" then
    return "Security Type: ".."Right (2)"
  end
  if value == "3" then
    return "Security Type: ".."Fund (3)"
  end
  if value == "4" then
    return "Security Type: ".."Derivative (4)"
  end
  if value == "5" then
    return "Security Type: ".."Fixed Income (5)"
  end
  if value == "6" then
    return "Security Type: ".."Precious Metals And Diamonds (6)"
  end
  return "Security Type: ".."Unknown ("..value..")"
end

-- Dissect: Security Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.security_type.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Security Type: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.security_type.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.security_type, range, value, display)
end

-- Settlement Date (Sd): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_date = {}

-- Display: Settlement Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_date.display = function(value)
  if #value == 8 then
    return "Settlement Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Settlement Date: "..value
end

-- Dissect: Settlement Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.settlement_date, range, value, display)
end

-- Settlement Price (SEp): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price = {}

-- Display: Settlement Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Settlement Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.settlement_price, range, value, display)
end

-- Settlement Price At End Date (SPEd): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price_at_end_date = {}

-- Display: Settlement Price At End Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price_at_end_date.display = function(value)
  return "Settlement Price At End Date: "..value
end

-- Dissect: Settlement Price At End Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price_at_end_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Settlement Price At End Date: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price_at_end_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.settlement_price_at_end_date, range, value, display)
end

-- Settlement Price At Start Date (SPSd): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price_at_start_date = {}

-- Display: Settlement Price At Start Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price_at_start_date.display = function(value)
  return "Settlement Price At Start Date: "..value
end

-- Dissect: Settlement Price At Start Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price_at_start_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Settlement Price At Start Date: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price_at_start_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.settlement_price_at_start_date, range, value, display)
end

-- Settlement Price VWAP (SWp): Float 13,8
bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price_vwap = {}

-- Display: Settlement Price VWAP
bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price_vwap.display = function(value)
  return "Settlement Price VWAP: "..value
end

-- Dissect: Settlement Price VWAP
bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price_vwap.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Settlement Price VWAP: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price_vwap.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.settlement_price_vwap, range, value, display)
end

-- Settlement Type (SEt): SettlementType 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_type = {}

-- Display: Settlement Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_type.display = function(value)
  if value == "1" then
    return "Settlement Type: ".."Cash (1)"
  end
  if value == "2" then
    return "Settlement Type: ".."Physical (2)"
  end
  return "Settlement Type: ".."Unknown ("..value..")"
end

-- Dissect: Settlement Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_type.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Settlement Type: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_type.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.settlement_type, range, value, display)
end

-- Short Sale Restriction (SSr): ShortSaleRestrictionType 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.short_sale_restriction = {}

-- Display: Short Sale Restriction
bist_borsaistanbul_marketinfo_tip_v2_2_8.short_sale_restriction.display = function(value)
  if value == "1" then
    return "Short Sale Restriction: ".."SS No Validation (1)"
  end
  if value == "2" then
    return "Short Sale Restriction: ".."SS Not Allowed (2)"
  end
  if value == "3" then
    return "Short Sale Restriction: ".."SS Price Greater Or Equal To LTP (3)"
  end
  return "Short Sale Restriction: ".."Unknown ("..value..")"
end

-- Dissect: Short Sale Restriction
bist_borsaistanbul_marketinfo_tip_v2_2_8.short_sale_restriction.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Short Sale Restriction: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.short_sale_restriction.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.short_sale_restriction, range, value, display)
end

-- Sod Eod (SEd): SodEod 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.sod_eod = {}

-- Display: Sod Eod
bist_borsaistanbul_marketinfo_tip_v2_2_8.sod_eod.display = function(value)
  if value == "1" then
    return "Sod Eod: ".."Start Of Day (1)"
  end
  if value == "2" then
    return "Sod Eod: ".."End Of Day (2)"
  end
  return "Sod Eod: ".."Unknown ("..value..")"
end

-- Dissect: Sod Eod
bist_borsaistanbul_marketinfo_tip_v2_2_8.sod_eod.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Sod Eod: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.sod_eod.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.sod_eod, range, value, display)
end

-- Source Id (Si): String 32
bist_borsaistanbul_marketinfo_tip_v2_2_8.source_id = {}

-- Display: Source Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.source_id.display = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.source_id.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.source_id.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.source_id, range, value, display)
end

-- Source System (s): Integer 2
bist_borsaistanbul_marketinfo_tip_v2_2_8.source_system = {}

-- Display: Source System
bist_borsaistanbul_marketinfo_tip_v2_2_8.source_system.display = function(value)
  return "Source System: "..value
end

-- Dissect: Source System
bist_borsaistanbul_marketinfo_tip_v2_2_8.source_system.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Source System: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.source_system.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.source_system, range, value, display)
end

-- Start Date (STd): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.start_date = {}

-- Display: Start Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.start_date.display = function(value)
  if #value == 8 then
    return "Start Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Start Date: "..value
end

-- Dissect: Start Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.start_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.start_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.start_date, range, value, display)
end

-- Start Time (St): Time
bist_borsaistanbul_marketinfo_tip_v2_2_8.start_time = {}

-- Display: Start Time
bist_borsaistanbul_marketinfo_tip_v2_2_8.start_time.display = function(value)
  if #value == 6 then
    return "Start Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
  end
  return "Start Time: "..value
end

-- Dissect: Start Time
bist_borsaistanbul_marketinfo_tip_v2_2_8.start_time.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.start_time.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.start_time, range, value, display)
end

-- State Code (Ms): StateCode 2
bist_borsaistanbul_marketinfo_tip_v2_2_8.state_code = {}

-- Display: State Code
bist_borsaistanbul_marketinfo_tip_v2_2_8.state_code.display = function(value)
  if value == "1" then
    return "State Code: ".."Closed (1)"
  end
  if value == "2" then
    return "State Code: ".."Continuous (2)"
  end
  if value == "3" then
    return "State Code: ".."Uncrossing (3)"
  end
  if value == "4" then
    return "State Code: ".."Opening Session (4)"
  end
  if value == "5" then
    return "State Code: ".."Closing Session (5)"
  end
  if value == "6" then
    return "State Code: ".."Break (6)"
  end
  if value == "7" then
    return "State Code: ".."Continuous Last Trd Pr (7)"
  end
  if value == "8" then
    return "State Code: ".."Single Price Auction (8)"
  end
  if value == "9" then
    return "State Code: ".."Primary Continuous (9)"
  end
  if value == "10" then
    return "State Code: ".."Suspend (10)"
  end
  if value == "11" then
    return "State Code: ".."Odd Cont Last Trd Pr (11)"
  end
  if value == "12" then
    return "State Code: ".."Odd Continuous (12)"
  end
  if value == "13" then
    return "State Code: ".."Order Collection Period After CB (13)"
  end
  if value == "14" then
    return "State Code: ".."Uncross One Sided Buy Back Hidden (14)"
  end
  if value == "15" then
    return "State Code: ".."Uncross One Sided Buy Back Open (15)"
  end
  if value == "16" then
    return "State Code: ".."Uncross One Sided Issue Hidden (16)"
  end
  if value == "17" then
    return "State Code: ".."Uncross One Sided Issue Open (17)"
  end
  if value == "18" then
    return "State Code: ".."After One Sided Auction Period (18)"
  end
  if value == "20" then
    return "State Code: ".."Single Price Uncrossing Process Started (20)"
  end
  if value == "21" then
    return "State Code: ".."One Sided Auction Period (21)"
  end
  if value == "22" then
    return "State Code: ".."Uncross Issuing Open (22)"
  end
  if value == "23" then
    return "State Code: ".."Uncross Issuing Hidden (23)"
  end
  if value == "24" then
    return "State Code: ".."Uncross Buy Back Open (24)"
  end
  if value == "25" then
    return "State Code: ".."Uncross Buy Back Hidden (25)"
  end
  if value == "26" then
    return "State Code: ".."Non Tradable Period (26)"
  end
  if value == "27" then
    return "State Code: ".."Dissemination Of Price Limits (27)"
  end
  if value == "28" then
    return "State Code: ".."Derivatives_Settlement Price Dissemination (28)"
  end
  if value == "29" then
    return "State Code: ".."Fixed Income_EOD (29)"
  end
  if value == "30" then
    return "State Code: ".."Fixed Income_SOD (30)"
  end
  if value == "31" then
    return "State Code: ".."Derivatives_Data Feed (31)"
  end
  if value == "32" then
    return "State Code: ".."Derivatives_Settlement Price Matching (32)"
  end
  if value == "33" then
    return "State Code: ".."Non Trading Period_After Hours Morning Session (33)"
  end
  if value == "34" then
    return "State Code: ".."Non Trading Period_After Hours Evening Session (34)"
  end
  if value == "35" then
    return "State Code: ".."Continuous_After Hours Morning Session (35)"
  end
  if value == "36" then
    return "State Code: ".."Continuous_After Hours Evening Session (36)"
  end
  if value == "37" then
    return "State Code: ".."Closed_After Hours Morning Session (37)"
  end
  if value == "38" then
    return "State Code: ".."Closed_After Hours Evening Session (38)"
  end
  if value == "39" then
    return "State Code: ".."Continuous_After Cutoff (39)"
  end
  if value == "40" then
    return "State Code: ".."Reserved1 (40)"
  end
  if value == "41" then
    return "State Code: ".."Reserved2 (41)"
  end
  if value == "42" then
    return "State Code: ".."Reserved3 (42)"
  end
  if value == "43" then
    return "State Code: ".."Reserved4 (43)"
  end
  if value == "44" then
    return "State Code: ".."Reserved5 (44)"
  end
  if value == "45" then
    return "State Code: ".."Reserved6 (45)"
  end
  if value == "46" then
    return "State Code: ".."Reserved7 (46)"
  end
  if value == "47" then
    return "State Code: ".."PMD_Session Closed (47)"
  end
  if value == "48" then
    return "State Code: ".."Fixed Income_Repo Quotation (48)"
  end
  if value == "49" then
    return "State Code: ".."Fixed Income_Session Closed (49)"
  end
  if value == "50" then
    return "State Code: ".."Derivatives_Session Closed (50)"
  end
  if value == "51" then
    return "State Code: ".."Opening Session_wo EQ (51)"
  end
  if value == "52" then
    return "State Code: ".."One Sided Auction Period_wo EQ (52)"
  end
  if value == "53" then
    return "State Code: ".."Order Collection Period After CB_wo EQ (53)"
  end
  if value == "54" then
    return "State Code: ".."Closing Session_wo EQ (54)"
  end
  if value == "55" then
    return "State Code: ".."Single Price Auction_wo EQ (55)"
  end
  if value == "56" then
    return "State Code: ".."Break_After Hours (56)"
  end
  if value == "57" then
    return "State Code: ".."Suspend_After Hours (57)"
  end
  if value == "58" then
    return "State Code: ".."Cancel Orders (58)"
  end
  if value == "59" then
    return "State Code: ".."Order Collection Period After MWCB (59)"
  end
  if value == "60" then
    return "State Code: ".."Order Collection Period After MWCB_wo EQ (60)"
  end
  if value == "61" then
    return "State Code: ".."Uncrossing_MWCB (61)"
  end
  if value == "62" then
    return "State Code: ".."Suspend_MWCB (62)"
  end
  if value == "63" then
    return "State Code: ".."Quotation (63)"
  end
  if value == "99" then
    return "State Code: ".."State Reset Start (99)"
  end
  return "State Code: ".."Unknown ("..value..")"
end

-- Dissect: State Code
bist_borsaistanbul_marketinfo_tip_v2_2_8.state_code.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "State Code: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.state_code.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.state_code, range, value, display)
end

-- State Level (Sl): StateLevel 2
bist_borsaistanbul_marketinfo_tip_v2_2_8.state_level = {}

-- Display: State Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.state_level.display = function(value)
  if value == "1" then
    return "State Level: ".."Market (1)"
  end
  if value == "2" then
    return "State Level: ".."Orderbook (2)"
  end
  return "State Level: ".."Unknown ("..value..")"
end

-- Dissect: State Level
bist_borsaistanbul_marketinfo_tip_v2_2_8.state_level.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "State Level: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.state_level.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.state_level, range, value, display)
end

-- Status (STa): Status 2
bist_borsaistanbul_marketinfo_tip_v2_2_8.status = {}

-- Display: Status
bist_borsaistanbul_marketinfo_tip_v2_2_8.status.display = function(value)
  if value == "1" then
    return "Status: ".."Active (1)"
  end
  if value == "2" then
    return "Status: ".."Suspended (2)"
  end
  if value == "3" then
    return "Status: ".."Issued (3)"
  end
  if value == "4" then
    return "Status: ".."Delisted (4)"
  end
  if value == "5" then
    return "Status: ".."Non Tradable (5)"
  end
  if value == "6" then
    return "Status: ".."Expired (6)"
  end
  return "Status: ".."Unknown ("..value..")"
end

-- Dissect: Status
bist_borsaistanbul_marketinfo_tip_v2_2_8.status.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Status: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.status.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.status, range, value, display)
end

-- Strike Price (STp): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.strike_price = {}

-- Display: Strike Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
bist_borsaistanbul_marketinfo_tip_v2_2_8.strike_price.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Strike Price: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.strike_price.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.strike_price, range, value, display)
end

-- Symbol (SYm): String 32
bist_borsaistanbul_marketinfo_tip_v2_2_8.symbol = {}

-- Display: Symbol
bist_borsaistanbul_marketinfo_tip_v2_2_8.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
bist_borsaistanbul_marketinfo_tip_v2_2_8.symbol.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.symbol.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.symbol, range, value, display)
end

-- Table Entry Type (TEt): TableEntryType 2
bist_borsaistanbul_marketinfo_tip_v2_2_8.table_entry_type = {}

-- Display: Table Entry Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.table_entry_type.display = function(value)
  if value == "1" then
    return "Table Entry Type: ".."Index Owner (1)"
  end
  if value == "2" then
    return "Table Entry Type: ".."Note Code (2)"
  end
  if value == "3" then
    return "Table Entry Type: ".."Trade Type (3)"
  end
  if value == "4" then
    return "Table Entry Type: ".."Participant Type (4)"
  end
  if value == "5" then
    return "Table Entry Type: ".."Day Type (5)"
  end
  if value == "6" then
    return "Table Entry Type: ".."Market Segment (6)"
  end
  if value == "7" then
    return "Table Entry Type: ".."Trading Session (7)"
  end
  if value == "8" then
    return "Table Entry Type: ".."Instrument Classification (8)"
  end
  if value == "9" then
    return "Table Entry Type: ".."Population Type (9)"
  end
  if value == "10" then
    return "Table Entry Type: ".."Calculation Type (10)"
  end
  if value == "11" then
    return "Table Entry Type: ".."Index Type (11)"
  end
  if value == "12" then
    return "Table Entry Type: ".."Index Price Type (12)"
  end
  if value == "13" then
    return "Table Entry Type: ".."Index Status (13)"
  end
  if value == "14" then
    return "Table Entry Type: ".."Units Of Trading (14)"
  end
  if value == "15" then
    return "Table Entry Type: ".."Cycle Class (15)"
  end
  if value == "16" then
    return "Table Entry Type: ".."Return Type (16)"
  end
  if value == "17" then
    return "Table Entry Type: ".."Index Classification (17)"
  end
  if value == "18" then
    return "Table Entry Type: ".."Fixed Income Classification (18)"
  end
  return "Table Entry Type: ".."Unknown ("..value..")"
end

-- Dissect: Table Entry Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.table_entry_type.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Table Entry Type: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.table_entry_type.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.table_entry_type, range, value, display)
end

-- Tailor Made (TAm): YesNo
bist_borsaistanbul_marketinfo_tip_v2_2_8.tailor_made = {}

-- Display: Tailor Made
bist_borsaistanbul_marketinfo_tip_v2_2_8.tailor_made.display = function(value)
  if value == "Y" then
    return "Tailor Made: ".."Yes (Y)"
  end
  if value == "N" then
    return "Tailor Made: ".."No (N)"
  end
  return "Tailor Made: "..value
end

-- Dissect: Tailor Made
bist_borsaistanbul_marketinfo_tip_v2_2_8.tailor_made.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.tailor_made.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tailor_made, range, value, display)
end

-- Text (TEx): String 810
bist_borsaistanbul_marketinfo_tip_v2_2_8.text = {}

-- Display: Text
bist_borsaistanbul_marketinfo_tip_v2_2_8.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
bist_borsaistanbul_marketinfo_tip_v2_2_8.text.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.text.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.text, range, value, display)
end

-- Tick Size (TSz): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.tick_size = {}

-- Display: Tick Size
bist_borsaistanbul_marketinfo_tip_v2_2_8.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
bist_borsaistanbul_marketinfo_tip_v2_2_8.tick_size.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Tick Size: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.tick_size.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tick_size, range, value, display)
end

-- Tick Size Table Id (ITSz): Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.tick_size_table_id = {}

-- Display: Tick Size Table Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.tick_size_table_id.display = function(value)
  return "Tick Size Table Id: "..value
end

-- Dissect: Tick Size Table Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.tick_size_table_id.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Tick Size Table Id: not a number: "..text)
    return
  end
  value = UInt64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.tick_size_table_id.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tick_size_table_id, range, value, display)
end

-- Time Exec (t): Time
bist_borsaistanbul_marketinfo_tip_v2_2_8.time_exec = {}

-- Display: Time Exec
bist_borsaistanbul_marketinfo_tip_v2_2_8.time_exec.display = function(value)
  if #value == 6 then
    return "Time Exec: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
  end
  return "Time Exec: "..value
end

-- Dissect: Time Exec
bist_borsaistanbul_marketinfo_tip_v2_2_8.time_exec.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.time_exec.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.time_exec, range, value, display)
end

-- Time Offset UTC (TOTa): String 5
bist_borsaistanbul_marketinfo_tip_v2_2_8.time_offset_utc = {}

-- Display: Time Offset UTC
bist_borsaistanbul_marketinfo_tip_v2_2_8.time_offset_utc.display = function(value)
  return "Time Offset UTC: "..value
end

-- Dissect: Time Offset UTC
bist_borsaistanbul_marketinfo_tip_v2_2_8.time_offset_utc.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.time_offset_utc.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.time_offset_utc, range, value, display)
end

-- Timestamp Agreement (Ta): Time
bist_borsaistanbul_marketinfo_tip_v2_2_8.timestamp_agreement = {}

-- Display: Timestamp Agreement
bist_borsaistanbul_marketinfo_tip_v2_2_8.timestamp_agreement.display = function(value)
  if #value == 6 then
    return "Timestamp Agreement: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
  end
  return "Timestamp Agreement: "..value
end

-- Dissect: Timestamp Agreement
bist_borsaistanbul_marketinfo_tip_v2_2_8.timestamp_agreement.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.timestamp_agreement.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.timestamp_agreement, range, value, display)
end

-- Timestamp Dissemination (TDi): Time
bist_borsaistanbul_marketinfo_tip_v2_2_8.timestamp_dissemination = {}

-- Display: Timestamp Dissemination
bist_borsaistanbul_marketinfo_tip_v2_2_8.timestamp_dissemination.display = function(value)
  if #value == 6 then
    return "Timestamp Dissemination: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
  end
  return "Timestamp Dissemination: "..value
end

-- Dissect: Timestamp Dissemination
bist_borsaistanbul_marketinfo_tip_v2_2_8.timestamp_dissemination.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.timestamp_dissemination.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.timestamp_dissemination, range, value, display)
end

-- Timestamp Trade Cancel (TCt): Time
bist_borsaistanbul_marketinfo_tip_v2_2_8.timestamp_trade_cancel = {}

-- Display: Timestamp Trade Cancel
bist_borsaistanbul_marketinfo_tip_v2_2_8.timestamp_trade_cancel.display = function(value)
  if #value == 6 then
    return "Timestamp Trade Cancel: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
  end
  return "Timestamp Trade Cancel: "..value
end

-- Dissect: Timestamp Trade Cancel
bist_borsaistanbul_marketinfo_tip_v2_2_8.timestamp_trade_cancel.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.timestamp_trade_cancel.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.timestamp_trade_cancel, range, value, display)
end

-- Timestamp Trade Rectify (TRe): Time
bist_borsaistanbul_marketinfo_tip_v2_2_8.timestamp_trade_rectify = {}

-- Display: Timestamp Trade Rectify
bist_borsaistanbul_marketinfo_tip_v2_2_8.timestamp_trade_rectify.display = function(value)
  if #value == 6 then
    return "Timestamp Trade Rectify: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
  end
  return "Timestamp Trade Rectify: "..value
end

-- Dissect: Timestamp Trade Rectify
bist_borsaistanbul_marketinfo_tip_v2_2_8.timestamp_trade_rectify.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.timestamp_trade_rectify.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.timestamp_trade_rectify, range, value, display)
end

-- Tot Vol All Ask (At): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.tot_vol_all_ask = {}

-- Display: Tot Vol All Ask
bist_borsaistanbul_marketinfo_tip_v2_2_8.tot_vol_all_ask.display = function(value)
  return "Tot Vol All Ask: "..value
end

-- Dissect: Tot Vol All Ask
bist_borsaistanbul_marketinfo_tip_v2_2_8.tot_vol_all_ask.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Tot Vol All Ask: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.tot_vol_all_ask.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tot_vol_all_ask, range, value, display)
end

-- Tot Vol All Bid (Bt): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.tot_vol_all_bid = {}

-- Display: Tot Vol All Bid
bist_borsaistanbul_marketinfo_tip_v2_2_8.tot_vol_all_bid.display = function(value)
  return "Tot Vol All Bid: "..value
end

-- Dissect: Tot Vol All Bid
bist_borsaistanbul_marketinfo_tip_v2_2_8.tot_vol_all_bid.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Tot Vol All Bid: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.tot_vol_all_bid.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tot_vol_all_bid, range, value, display)
end

-- Total Issue (TIs): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.total_issue = {}

-- Display: Total Issue
bist_borsaistanbul_marketinfo_tip_v2_2_8.total_issue.display = function(value)
  return "Total Issue: "..value
end

-- Dissect: Total Issue
bist_borsaistanbul_marketinfo_tip_v2_2_8.total_issue.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Total Issue: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.total_issue.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.total_issue, range, value, display)
end

-- Total Number Of Trades (TNt): Integer 10
bist_borsaistanbul_marketinfo_tip_v2_2_8.total_number_of_trades = {}

-- Display: Total Number Of Trades
bist_borsaistanbul_marketinfo_tip_v2_2_8.total_number_of_trades.display = function(value)
  return "Total Number Of Trades: "..value
end

-- Dissect: Total Number Of Trades
bist_borsaistanbul_marketinfo_tip_v2_2_8.total_number_of_trades.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Total Number Of Trades: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.total_number_of_trades.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.total_number_of_trades, range, value, display)
end

-- Trade Buyer (Tb): String 6
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_buyer = {}

-- Display: Trade Buyer
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_buyer.display = function(value)
  return "Trade Buyer: "..value
end

-- Dissect: Trade Buyer
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_buyer.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_buyer.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_buyer, range, value, display)
end

-- Trade Cancel (TCl): YesNo
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_cancel = {}

-- Display: Trade Cancel
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_cancel.display = function(value)
  if value == "Y" then
    return "Trade Cancel: ".."Yes (Y)"
  end
  if value == "N" then
    return "Trade Cancel: ".."No (N)"
  end
  return "Trade Cancel: "..value
end

-- Dissect: Trade Cancel
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_cancel.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_cancel.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_cancel, range, value, display)
end

-- Trade Class (Tc): TradeClass 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_class = {}

-- Display: Trade Class
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_class.display = function(value)
  if value == "1" then
    return "Trade Class: ".."Standard (1)"
  end
  if value == "2" then
    return "Trade Class: ".."Non Standard (2)"
  end
  return "Trade Class: ".."Unknown ("..value..")"
end

-- Dissect: Trade Class
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_class.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Trade Class: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_class.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_class, range, value, display)
end

-- Trade Id (Ti): String 16
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_id = {}

-- Display: Trade Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_id.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_id.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_id, range, value, display)
end

-- Trade Info (TIn): TradeInfo 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_info = {}

-- Display: Trade Info
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_info.display = function(value)
  if value == "1" then
    return "Trade Info: ".."Normal (1)"
  end
  if value == "2" then
    return "Trade Info: ".."Reported Trade (2)"
  end
  if value == "3" then
    return "Trade Info: ".."Allor None (3)"
  end
  if value == "4" then
    return "Trade Info: ".."Partof Combo Match (4)"
  end
  if value == "5" then
    return "Trade Info: ".."Midpoint Match (5)"
  end
  return "Trade Info: ".."Unknown ("..value..")"
end

-- Dissect: Trade Info
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_info.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Trade Info: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_info.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_info, range, value, display)
end

-- Trade Number (Tn): Integer 10
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_number = {}

-- Display: Trade Number
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_number.display = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_number.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Trade Number: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_number.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_number, range, value, display)
end

-- Trade Rectify (Re): YesNo
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_rectify = {}

-- Display: Trade Rectify
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_rectify.display = function(value)
  if value == "Y" then
    return "Trade Rectify: ".."Yes (Y)"
  end
  if value == "N" then
    return "Trade Rectify: ".."No (N)"
  end
  return "Trade Rectify: "..value
end

-- Dissect: Trade Rectify
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_rectify.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_rectify.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_rectify, range, value, display)
end

-- Trade Report Notional Value (RNv): Float 16,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_notional_value = {}

-- Display: Trade Report Notional Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_notional_value.display = function(value)
  return "Trade Report Notional Value: "..value
end

-- Dissect: Trade Report Notional Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_notional_value.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Trade Report Notional Value: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_notional_value.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_report_notional_value, range, value, display)
end

-- Trade Report Notional Value In Value Currency (RNc): Float 16,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_notional_value_in_value_currency = {}

-- Display: Trade Report Notional Value In Value Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_notional_value_in_value_currency.display = function(value)
  return "Trade Report Notional Value In Value Currency: "..value
end

-- Dissect: Trade Report Notional Value In Value Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_notional_value_in_value_currency.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Trade Report Notional Value In Value Currency: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_notional_value_in_value_currency.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_report_notional_value_in_value_currency, range, value, display)
end

-- Trade Report Turnover (Rt): Float 16,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_turnover = {}

-- Display: Trade Report Turnover
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_turnover.display = function(value)
  return "Trade Report Turnover: "..value
end

-- Dissect: Trade Report Turnover
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_turnover.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Trade Report Turnover: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_turnover.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_report_turnover, range, value, display)
end

-- Trade Report Turnover In Value Currency (RTc): Float 16,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_turnover_in_value_currency = {}

-- Display: Trade Report Turnover In Value Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_turnover_in_value_currency.display = function(value)
  return "Trade Report Turnover In Value Currency: "..value
end

-- Dissect: Trade Report Turnover In Value Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_turnover_in_value_currency.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Trade Report Turnover In Value Currency: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_turnover_in_value_currency.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_report_turnover_in_value_currency, range, value, display)
end

-- Trade Report Updates High Low (Uh): YesNo 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_updates_high_low = {}

-- Display: Trade Report Updates High Low
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_updates_high_low.display = function(value)
  if value == "Y" then
    return "Trade Report Updates High Low: ".."Yes (Y)"
  end
  if value == "N" then
    return "Trade Report Updates High Low: ".."No (N)"
  end
  return "Trade Report Updates High Low: "..value
end

-- Dissect: Trade Report Updates High Low
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_updates_high_low.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_updates_high_low.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_report_updates_high_low, range, value, display)
end

-- Trade Report Updates Last Paid (Ul): YesNo 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_updates_last_paid = {}

-- Display: Trade Report Updates Last Paid
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_updates_last_paid.display = function(value)
  if value == "Y" then
    return "Trade Report Updates Last Paid: ".."Yes (Y)"
  end
  if value == "N" then
    return "Trade Report Updates Last Paid: ".."No (N)"
  end
  return "Trade Report Updates Last Paid: "..value
end

-- Dissect: Trade Report Updates Last Paid
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_updates_last_paid.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_updates_last_paid.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_report_updates_last_paid, range, value, display)
end

-- Trade Report Updates Turnover (Uv): YesNo 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_updates_turnover = {}

-- Display: Trade Report Updates Turnover
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_updates_turnover.display = function(value)
  if value == "Y" then
    return "Trade Report Updates Turnover: ".."Yes (Y)"
  end
  if value == "N" then
    return "Trade Report Updates Turnover: ".."No (N)"
  end
  return "Trade Report Updates Turnover: "..value
end

-- Dissect: Trade Report Updates Turnover
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_updates_turnover.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_updates_turnover.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_report_updates_turnover, range, value, display)
end

-- Trade Reports Allowed (TRa): YesNo
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_reports_allowed = {}

-- Display: Trade Reports Allowed
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_reports_allowed.display = function(value)
  if value == "Y" then
    return "Trade Reports Allowed: ".."Yes (Y)"
  end
  if value == "N" then
    return "Trade Reports Allowed: ".."No (N)"
  end
  return "Trade Reports Allowed: "..value
end

-- Dissect: Trade Reports Allowed
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_reports_allowed.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_reports_allowed.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_reports_allowed, range, value, display)
end

-- Trade Seller (Ts): String 6
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_seller = {}

-- Display: Trade Seller
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_seller.display = function(value)
  return "Trade Seller: "..value
end

-- Dissect: Trade Seller
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_seller.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_seller.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_seller, range, value, display)
end

-- Trade Type (Tt): Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_type = {}

-- Display: Trade Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_type.display = function(value)
  return "Trade Type: "..value
end

-- Dissect: Trade Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_type.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Trade Type: not a number: "..text)
    return
  end
  value = UInt64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_type.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_type, range, value, display)
end

-- Trading Currency (CUt): String 3
bist_borsaistanbul_marketinfo_tip_v2_2_8.trading_currency = {}

-- Display: Trading Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.trading_currency.display = function(value)
  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.trading_currency.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.trading_currency.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trading_currency, range, value, display)
end

-- Trading Method (TRm): String 16
bist_borsaistanbul_marketinfo_tip_v2_2_8.trading_method = {}

-- Display: Trading Method
bist_borsaistanbul_marketinfo_tip_v2_2_8.trading_method.display = function(value)
  return "Trading Method: "..value
end

-- Dissect: Trading Method
bist_borsaistanbul_marketinfo_tip_v2_2_8.trading_method.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.trading_method.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trading_method, range, value, display)
end

-- Trading Session (TRId): Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.trading_session = {}

-- Display: Trading Session
bist_borsaistanbul_marketinfo_tip_v2_2_8.trading_session.display = function(value)
  return "Trading Session: "..value
end

-- Dissect: Trading Session
bist_borsaistanbul_marketinfo_tip_v2_2_8.trading_session.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Trading Session: not a number: "..text)
    return
  end
  value = UInt64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.trading_session.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trading_session, range, value, display)
end

-- Turnover (Tr): Float 16,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.turnover = {}

-- Display: Turnover
bist_borsaistanbul_marketinfo_tip_v2_2_8.turnover.display = function(value)
  return "Turnover: "..value
end

-- Dissect: Turnover
bist_borsaistanbul_marketinfo_tip_v2_2_8.turnover.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Turnover: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.turnover.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.turnover, range, value, display)
end

-- Turnover Calculation Enabled (TCe): YesNo
bist_borsaistanbul_marketinfo_tip_v2_2_8.turnover_calculation_enabled = {}

-- Display: Turnover Calculation Enabled
bist_borsaistanbul_marketinfo_tip_v2_2_8.turnover_calculation_enabled.display = function(value)
  if value == "Y" then
    return "Turnover Calculation Enabled: ".."Yes (Y)"
  end
  if value == "N" then
    return "Turnover Calculation Enabled: ".."No (N)"
  end
  return "Turnover Calculation Enabled: "..value
end

-- Dissect: Turnover Calculation Enabled
bist_borsaistanbul_marketinfo_tip_v2_2_8.turnover_calculation_enabled.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.turnover_calculation_enabled.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.turnover_calculation_enabled, range, value, display)
end

-- Turnover In Value Currency (TRc): Float 16,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.turnover_in_value_currency = {}

-- Display: Turnover In Value Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.turnover_in_value_currency.display = function(value)
  return "Turnover In Value Currency: "..value
end

-- Dissect: Turnover In Value Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.turnover_in_value_currency.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Turnover In Value Currency: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.turnover_in_value_currency.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.turnover_in_value_currency, range, value, display)
end

-- TWAP (Tp): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.twap = {}

-- Display: TWAP
bist_borsaistanbul_marketinfo_tip_v2_2_8.twap.display = function(value)
  return "TWAP: "..value
end

-- Dissect: TWAP
bist_borsaistanbul_marketinfo_tip_v2_2_8.twap.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "TWAP: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.twap.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.twap, range, value, display)
end

-- Unchanged Bids (Bu): Integer 5
bist_borsaistanbul_marketinfo_tip_v2_2_8.unchanged_bids = {}

-- Display: Unchanged Bids
bist_borsaistanbul_marketinfo_tip_v2_2_8.unchanged_bids.display = function(value)
  return "Unchanged Bids: "..value
end

-- Dissect: Unchanged Bids
bist_borsaistanbul_marketinfo_tip_v2_2_8.unchanged_bids.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Unchanged Bids: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.unchanged_bids.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.unchanged_bids, range, value, display)
end

-- Unchanged Paid (Pu): Integer 5
bist_borsaistanbul_marketinfo_tip_v2_2_8.unchanged_paid = {}

-- Display: Unchanged Paid
bist_borsaistanbul_marketinfo_tip_v2_2_8.unchanged_paid.display = function(value)
  return "Unchanged Paid: "..value
end

-- Dissect: Unchanged Paid
bist_borsaistanbul_marketinfo_tip_v2_2_8.unchanged_paid.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Unchanged Paid: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.unchanged_paid.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.unchanged_paid, range, value, display)
end

-- Underlying Id (ULi): Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.underlying_id = {}

-- Display: Underlying Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.underlying_id.display = function(value)
  return "Underlying Id: "..value
end

-- Dissect: Underlying Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.underlying_id.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Underlying Id: not a number: "..text)
    return
  end
  value = UInt64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.underlying_id.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.underlying_id, range, value, display)
end

-- Underlying Source Id (USi): String 32
bist_borsaistanbul_marketinfo_tip_v2_2_8.underlying_source_id = {}

-- Display: Underlying Source Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.underlying_source_id.display = function(value)
  return "Underlying Source Id: "..value
end

-- Dissect: Underlying Source Id
bist_borsaistanbul_marketinfo_tip_v2_2_8.underlying_source_id.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.underlying_source_id.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.underlying_source_id, range, value, display)
end

-- Units Of Trading (UNt): Integer 10
bist_borsaistanbul_marketinfo_tip_v2_2_8.units_of_trading = {}

-- Display: Units Of Trading
bist_borsaistanbul_marketinfo_tip_v2_2_8.units_of_trading.display = function(value)
  return "Units Of Trading: "..value
end

-- Dissect: Units Of Trading
bist_borsaistanbul_marketinfo_tip_v2_2_8.units_of_trading.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Units Of Trading: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.units_of_trading.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.units_of_trading, range, value, display)
end

-- Update Code (u): UpdateCode 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.update_code = {}

-- Display: Update Code
bist_borsaistanbul_marketinfo_tip_v2_2_8.update_code.display = function(value)
  if value == "1" then
    return "Update Code: ".."Insert (1)"
  end
  if value == "2" then
    return "Update Code: ".."Update (2)"
  end
  if value == "3" then
    return "Update Code: ".."Deleted (3)"
  end
  if value == "4" then
    return "Update Code: ".."Unchanged (4)"
  end
  return "Update Code: ".."Unknown ("..value..")"
end

-- Dissect: Update Code
bist_borsaistanbul_marketinfo_tip_v2_2_8.update_code.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Update Code: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.update_code.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.update_code, range, value, display)
end

-- Upper Price Limit (UPl): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.upper_price_limit = {}

-- Display: Upper Price Limit
bist_borsaistanbul_marketinfo_tip_v2_2_8.upper_price_limit.display = function(value)
  return "Upper Price Limit: "..value
end

-- Dissect: Upper Price Limit
bist_borsaistanbul_marketinfo_tip_v2_2_8.upper_price_limit.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Upper Price Limit: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.upper_price_limit.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.upper_price_limit, range, value, display)
end

-- URL (URl): String 200
bist_borsaistanbul_marketinfo_tip_v2_2_8.url = {}

-- Display: URL
bist_borsaistanbul_marketinfo_tip_v2_2_8.url.display = function(value)
  return "URL: "..value
end

-- Dissect: URL
bist_borsaistanbul_marketinfo_tip_v2_2_8.url.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.url.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.url, range, value, display)
end

-- Validation VWAP (VWp): Float 13,8
bist_borsaistanbul_marketinfo_tip_v2_2_8.validation_vwap = {}

-- Display: Validation VWAP
bist_borsaistanbul_marketinfo_tip_v2_2_8.validation_vwap.display = function(value)
  return "Validation VWAP: "..value
end

-- Dissect: Validation VWAP
bist_borsaistanbul_marketinfo_tip_v2_2_8.validation_vwap.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Validation VWAP: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.validation_vwap.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.validation_vwap, range, value, display)
end

-- Value Currency (CUv): String 3
bist_borsaistanbul_marketinfo_tip_v2_2_8.value_currency = {}

-- Display: Value Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.value_currency.display = function(value)
  return "Value Currency: "..value
end

-- Dissect: Value Currency
bist_borsaistanbul_marketinfo_tip_v2_2_8.value_currency.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.value_currency.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.value_currency, range, value, display)
end

-- Value Date (Vd): Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.value_date = {}

-- Display: Value Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.value_date.display = function(value)
  if #value == 8 then
    return "Value Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
  end
  return "Value Date: "..value
end

-- Dissect: Value Date
bist_borsaistanbul_marketinfo_tip_v2_2_8.value_date.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = text
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.value_date.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.value_date, range, value, display)
end

-- Vault Location (VLo): VaultLocation 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.vault_location = {}

-- Display: Vault Location
bist_borsaistanbul_marketinfo_tip_v2_2_8.vault_location.display = function(value)
  if value == "1" then
    return "Vault Location: ".."Main Vault (1)"
  end
  if value == "2" then
    return "Vault Location: ".."Secondary Vault (2)"
  end
  return "Vault Location: ".."Unknown ("..value..")"
end

-- Dissect: Vault Location
bist_borsaistanbul_marketinfo_tip_v2_2_8.vault_location.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Vault Location: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.vault_location.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.vault_location, range, value, display)
end

-- Volume (v): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.volume = {}

-- Display: Volume
bist_borsaistanbul_marketinfo_tip_v2_2_8.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
bist_borsaistanbul_marketinfo_tip_v2_2_8.volume.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Volume: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.volume.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.volume, range, value, display)
end

-- Volume Dimension (VOd): VolumeDimension 1
bist_borsaistanbul_marketinfo_tip_v2_2_8.volume_dimension = {}

-- Display: Volume Dimension
bist_borsaistanbul_marketinfo_tip_v2_2_8.volume_dimension.display = function(value)
  if value == "1" then
    return "Volume Dimension: ".."Quantity (1)"
  end
  if value == "2" then
    return "Volume Dimension: ".."Nominal (2)"
  end
  return "Volume Dimension: ".."Unknown ("..value..")"
end

-- Dissect: Volume Dimension
bist_borsaistanbul_marketinfo_tip_v2_2_8.volume_dimension.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Volume Dimension: not a number: "..text)
    return
  end
  value = Int64.new(value)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.volume_dimension.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.volume_dimension, range, value, display)
end

-- VWAP (Wp): Float 13,8
bist_borsaistanbul_marketinfo_tip_v2_2_8.vwap = {}

-- Display: VWAP
bist_borsaistanbul_marketinfo_tip_v2_2_8.vwap.display = function(value)
  return "VWAP: "..value
end

-- Dissect: VWAP
bist_borsaistanbul_marketinfo_tip_v2_2_8.vwap.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "VWAP: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.vwap.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.vwap, range, value, display)
end

-- VWAP Diff Per (Wd): Float 13,8
bist_borsaistanbul_marketinfo_tip_v2_2_8.vwap_diff_per = {}

-- Display: VWAP Diff Per
bist_borsaistanbul_marketinfo_tip_v2_2_8.vwap_diff_per.display = function(value)
  return "VWAP Diff Per: "..value
end

-- Dissect: VWAP Diff Per
bist_borsaistanbul_marketinfo_tip_v2_2_8.vwap_diff_per.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "VWAP Diff Per: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.vwap_diff_per.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.vwap_diff_per, range, value, display)
end

-- W Avg Price All Ask (Aw): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.w_avg_price_all_ask = {}

-- Display: W Avg Price All Ask
bist_borsaistanbul_marketinfo_tip_v2_2_8.w_avg_price_all_ask.display = function(value)
  return "W Avg Price All Ask: "..value
end

-- Dissect: W Avg Price All Ask
bist_borsaistanbul_marketinfo_tip_v2_2_8.w_avg_price_all_ask.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "W Avg Price All Ask: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.w_avg_price_all_ask.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.w_avg_price_all_ask, range, value, display)
end

-- W Avg Price All Bid (Bw): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.w_avg_price_all_bid = {}

-- Display: W Avg Price All Bid
bist_borsaistanbul_marketinfo_tip_v2_2_8.w_avg_price_all_bid.display = function(value)
  return "W Avg Price All Bid: "..value
end

-- Dissect: W Avg Price All Bid
bist_borsaistanbul_marketinfo_tip_v2_2_8.w_avg_price_all_bid.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "W Avg Price All Bid: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.w_avg_price_all_bid.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.w_avg_price_all_bid, range, value, display)
end

-- Weight Percent (WPe): Double 16,12
bist_borsaistanbul_marketinfo_tip_v2_2_8.weight_percent = {}

-- Display: Weight Percent
bist_borsaistanbul_marketinfo_tip_v2_2_8.weight_percent.display = function(value)
  return "Weight Percent: "..value
end

-- Dissect: Weight Percent
bist_borsaistanbul_marketinfo_tip_v2_2_8.weight_percent.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Weight Percent: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.weight_percent.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.weight_percent, range, value, display)
end

-- Weighted Free Float Mkt Value (WFv): Double 23,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.weighted_free_float_mkt_value = {}

-- Display: Weighted Free Float Mkt Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.weighted_free_float_mkt_value.display = function(value)
  return "Weighted Free Float Mkt Value: "..value
end

-- Dissect: Weighted Free Float Mkt Value
bist_borsaistanbul_marketinfo_tip_v2_2_8.weighted_free_float_mkt_value.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Weighted Free Float Mkt Value: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.weighted_free_float_mkt_value.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.weighted_free_float_mkt_value, range, value, display)
end

-- Weighting Factor (Wf): Double 16,12
bist_borsaistanbul_marketinfo_tip_v2_2_8.weighting_factor = {}

-- Display: Weighting Factor
bist_borsaistanbul_marketinfo_tip_v2_2_8.weighting_factor.display = function(value)
  return "Weighting Factor: "..value
end

-- Dissect: Weighting Factor
bist_borsaistanbul_marketinfo_tip_v2_2_8.weighting_factor.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Weighting Factor: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.weighting_factor.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.weighting_factor, range, value, display)
end

-- Yield (Py): Float 13,6
bist_borsaistanbul_marketinfo_tip_v2_2_8.yield = {}

-- Display: Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.yield.display = function(value)
  return "Yield: "..value
end

-- Dissect: Yield
bist_borsaistanbul_marketinfo_tip_v2_2_8.yield.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Yield: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.yield.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.yield, range, value, display)
end

-- Yield VWAP (YWp): Float 13,8
bist_borsaistanbul_marketinfo_tip_v2_2_8.yield_vwap = {}

-- Display: Yield VWAP
bist_borsaistanbul_marketinfo_tip_v2_2_8.yield_vwap.display = function(value)
  return "Yield VWAP: "..value
end

-- Dissect: Yield VWAP
bist_borsaistanbul_marketinfo_tip_v2_2_8.yield_vwap.dissect = function(buffer, offset, size, packet, parent)
  local range = buffer(offset, size)
  local text = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_text(range)
  local value = tonumber(text)
  if value == nil then
    parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.invalid_value, range, "Yield VWAP: not a number: "..text)
    return
  end
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.yield_vwap.display(text)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.yield_vwap, range, value, display)
end

-- Tag dispatch: wire code to tag
bist_borsaistanbul_marketinfo_tip_v2_2_8.tags = {
  ["ACPl"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_collateral_price_at_level1,
  ["ANc"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_notional_value_in_value_currency,
  ["AOs"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.outstanding_amount,
  ["APl"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_price_at_level1,
  ["APr"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.allocation_price,
  ["AQs"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.remaining_quantity,
  ["ARc"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_turnover_in_value_currency,
  ["ARp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.additional_reference_price,
  ["ASp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_settlement_price,
  ["ATc"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_turnover_in_value_currency,
  ["AUm"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.automatch,
  ["AVq"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.available_quantity_at_start,
  ["AYl"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_yield_at_level1,
  ["Ac"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.amount_of_collateral,
  ["Ad"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_collateral_price,
  ["Ae"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.available_qty_end_date,
  ["Af"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_price,
  ["Ag"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.aggressive_party,
  ["Ah"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_volume,
  ["Ai"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.accrued_interest,
  ["An"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_notional_value,
  ["Ao"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_order_key,
  ["Ar"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_turnover,
  ["As"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.available_qty_start_date,
  ["At"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.tot_vol_all_ask,
  ["Av"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.accrued_value,
  ["Aw"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.w_avg_price_all_ask,
  ["Ay"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_ask_yield,
  ["BAt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.bar_type,
  ["BCPl"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_collateral_price_at_level1,
  ["BIc"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.bic_code,
  ["BLi"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.block_id,
  ["BLl"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_block,
  ["BPr"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_price_at_level1,
  ["BSp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_settlement_price,
  ["BTy"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.fixed_income_type,
  ["BYl"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_yield_at_level1,
  ["Bd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_collateral_price,
  ["Bf"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_price,
  ["Bh"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_volume,
  ["Bm"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.minus_bids,
  ["Bo"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_order_key,
  ["Bp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.plus_bids,
  ["Bs"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.buy_or_sell,
  ["Bt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.tot_vol_all_bid,
  ["Bu"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.unchanged_bids,
  ["Bw"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.w_avg_price_all_bid,
  ["By"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ranked_bid_yield,
  ["CAp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.market_cap,
  ["CCp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.handled_ccp,
  ["CDLv"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.code_level,
  ["CFq"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.coupon_frequency,
  ["CLId"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.clearing_venue_id,
  ["CLp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.closing_auction_price,
  ["CLv"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.closing_value,
  ["CNy"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.country,
  ["COy"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.compound_yield,
  ["CRa"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.corporate_action,
  ["CSz"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.contract_size,
  ["CTr"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.cross_trade,
  ["CUi"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.issue_currency,
  ["CUt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trading_currency,
  ["CUv"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.value_currency,
  ["CWp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.closing_vwap,
  ["CYWp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.compound_yield_vwap,
  ["CYc"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.cycle_class,
  ["CYl"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_compound_yield,
  ["Ca"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_collateral_price_at_level,
  ["Cb"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_collateral_price_at_level,
  ["Ci"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.clearing_info,
  ["Cl"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.order_class,
  ["Cp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.collateral_price,
  ["Ct"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.combo_type,
  ["DCm"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.day_count_method,
  ["DCt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.date_trade_cancel,
  ["DDi"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.date_dissemination,
  ["DDt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.delivery_date,
  ["DIs"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.issue_date,
  ["DMa"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.maturity_date,
  ["DRe"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.date_trade_rectify,
  ["DSEp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_last_settlement_price,
  ["DSc"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.description,
  ["DSi"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.deliverable_series_id,
  ["DTy"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.derivative_type,
  ["DXt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.exercise_type,
  ["Da"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.date_agreement,
  ["Dc"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.days_to_coupon,
  ["Dd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_day_per,
  ["Di"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.dissemination_interval,
  ["Dm"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.days_to_maturity,
  ["Dn"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_day_nom,
  ["Do"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_open_interest,
  ["Dt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.date,
  ["Dx"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.date_exec,
  ["EAv"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.remaining_ask_volume_at_ep_level,
  ["EBv"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.remaining_bid_volume_at_ep_level,
  ["ECTr"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.exclude_cross_trade_from_stats,
  ["ENn"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.english_name,
  ["EQp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.equilibrium_price,
  ["EQv"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.equilibrium_volume,
  ["EXb"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.exercise_from_date,
  ["EXc"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.exercise_currency,
  ["EXe"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.exercise_to_date,
  ["Ed"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.end_date,
  ["Ex"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.exchange_id,
  ["FFr"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.free_float_ratio,
  ["FIc"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.fixed_income_classification,
  ["FNn"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.fineness_notation,
  ["FTRd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.first_trading_date,
  ["FTRt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.first_trading_time,
  ["Fn"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.fineness,
  ["GRs"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.gross_settlement,
  ["HOt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.hot_inserted,
  ["HPMd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price_month_date,
  ["HPYd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price_year_date,
  ["HPm"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price_month,
  ["HPy"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price_year,
  ["HSEp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.high_settlement_price,
  ["HYm"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.high_yield_month,
  ["HYy"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.high_yield_year,
  ["IBd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.base_date,
  ["IBv"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.base_value,
  ["ICl"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.instrument_classification,
  ["IDo"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook_id,
  ["INc"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.index_classification,
  ["INi"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.instrument_source_id,
  ["INn"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.index_name,
  ["IPt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.index_price_type,
  ["ISOc"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.official_closing_price,
  ["ISOt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.official_closing_turnover,
  ["ISi"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.issuer_id,
  ["ISn"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.isin,
  ["ITSz"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.tick_size_table_id,
  ["ITy"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.index_type,
  ["IXDv"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.divisor,
  ["IXi"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.index_id,
  ["Ic"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.inflation_coefficient,
  ["Il"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.id_leg,
  ["Io"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.index_owner,
  ["Is"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.index_status,
  ["LCy"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.currency,
  ["LDa"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.listing_date,
  ["LOp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price,
  ["LPMd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price_month_date,
  ["LPYd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price_year_date,
  ["LPd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_paid_date,
  ["LPl"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.lower_price_limit,
  ["LPm"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price_month,
  ["LPy"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.low_price_year,
  ["LSEp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.low_settlement_price,
  ["LSi"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.list_id,
  ["LSz"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.lot_size,
  ["LTRd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trading_date,
  ["LTRp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trade_report_price,
  ["LTRq"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trade_report_quantity,
  ["LTRt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trading_time,
  ["LTRy"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_trade_report_yield,
  ["LTd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_traded_date,
  ["LYm"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.low_yield_month,
  ["LYy"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.low_yield_year,
  ["Lt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.latest_trade,
  ["Lv"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_volume,
  ["MDo"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.max_days_order,
  ["MIc"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.mic_code,
  ["MLm"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.minimum_lot,
  ["MLt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.maximum_lot,
  ["MMk"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.market_maker,
  ["MOv"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.max_order_value,
  ["MPr"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.margin_price,
  ["MSe"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.market_segment,
  ["MWc"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.metal_weight_conversion_factor,
  ["MWu"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.metal_weight_unit,
  ["Mk"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.market_id,
  ["Ms"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.state_code,
  ["Mt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.metal_type,
  ["Mw"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.metal_weight,
  ["NAm"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.name,
  ["NDTp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.no_of_dec_yield,
  ["NDp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.no_of_dec_price,
  ["NHl"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.head_line,
  ["NMs"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.message_source,
  ["NMv"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.nominal_value,
  ["NOc"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.note_code,
  ["NOt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.news_object_type,
  ["NVc"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.notional_value_in_value_currency,
  ["NWi"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.news_id,
  ["Ni"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.index_member,
  ["Nv"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.notional_value,
  ["ODXv"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.old_index_value,
  ["ODf"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.odd_first,
  ["ODl"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.odd_last,
  ["OPi"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.open_interest,
  ["OVa"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.open_value,
  ["Of"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.flush,
  ["Op"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.operational,
  ["Or"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.old_series,
  ["Os"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.outside_spread,
  ["PAi"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.parent_id,
  ["PAt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.participant_type,
  ["PFr"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.price_from,
  ["PIo"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.position_increasing_orders,
  ["POt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.population_type,
  ["PQf"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.factor,
  ["PRt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.price_type,
  ["PTa"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.pretrade_anonymity,
  ["PTb"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.posttrade_anonymity,
  ["PTo"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.price_to,
  ["PUn"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.price_unit,
  ["PWu"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.price_weight_unit,
  ["Pa"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_price,
  ["Pb"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_price,
  ["Pd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_last_price,
  ["Pf"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.first_price,
  ["Ph"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.high_price,
  ["Pl"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_price,
  ["Pm"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.minus_paid,
  ["Pp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.plus_paid,
  ["Pt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.participant,
  ["Pu"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.unchanged_paid,
  ["Pv"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.principal_value,
  ["Py"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.yield,
  ["Qr"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.number_of_trade_reports,
  ["RAc"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_notional_value_in_value_currency,
  ["RAn"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_notional_value,
  ["RCg"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.coin_group,
  ["RCp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.coupon_rate,
  ["RCt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.coin_type,
  ["RCy"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.coin_year,
  ["RIa"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.repo_interest_amount,
  ["RNc"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_notional_value_in_value_currency,
  ["RNv"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_notional_value,
  ["RPr"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.base_price,
  ["RTc"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_turnover_in_value_currency,
  ["RTt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.return_type,
  ["RTy"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ranking_type,
  ["Ra"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ratio,
  ["Rc"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.refinery_class,
  ["Rd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.reset_date,
  ["Re"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_rectify,
  ["Rq"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_trade_report_volume,
  ["Rt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_turnover,
  ["SEPl"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_settlement_price,
  ["SEd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.sod_eod,
  ["SEp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price,
  ["SEt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_type,
  ["SId"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.sector_id,
  ["SNm"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.abbreviated_name,
  ["SPEd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price_at_end_date,
  ["SPSd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price_at_start_date,
  ["SPd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.date_settlement_price,
  ["SRe"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.action_status,
  ["SSr"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.short_sale_restriction,
  ["STa"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.status,
  ["STd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.start_date,
  ["STp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.strike_price,
  ["STy"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.security_type,
  ["SWp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price_vwap,
  ["SYm"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.symbol,
  ["Sd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_date,
  ["Si"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.source_id,
  ["Sl"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.state_level,
  ["St"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.start_time,
  ["TAm"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.tailor_made,
  ["TCe"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.turnover_calculation_enabled,
  ["TCl"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_cancel,
  ["TCt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.timestamp_trade_cancel,
  ["TDi"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.timestamp_dissemination,
  ["TDt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.day_type,
  ["TEt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.table_entry_type,
  ["TEx"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.text,
  ["TIn"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_info,
  ["TIs"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.total_issue,
  ["TNt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.total_number_of_trades,
  ["TOTa"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.time_offset_utc,
  ["TRId"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trading_session,
  ["TRa"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_reports_allowed,
  ["TRc"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.turnover_in_value_currency,
  ["TRe"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.timestamp_trade_rectify,
  ["TRm"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trading_method,
  ["TSz"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.tick_size,
  ["TYc"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.calculation_type,
  ["Ta"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.timestamp_agreement,
  ["Tb"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_buyer,
  ["Tc"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_class,
  ["Ti"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_id,
  ["Tn"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_number,
  ["Tp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.twap,
  ["Tr"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.turnover,
  ["Ts"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_seller,
  ["Tt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_type,
  ["ULi"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.underlying_id,
  ["UNt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.units_of_trading,
  ["UPl"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.upper_price_limit,
  ["URl"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.url,
  ["USi"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.underlying_source_id,
  ["Uh"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_updates_high_low,
  ["Ul"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_updates_last_paid,
  ["Uv"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_report_updates_turnover,
  ["VLo"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.vault_location,
  ["VOd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.volume_dimension,
  ["VWp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.validation_vwap,
  ["Va"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_volume,
  ["Vb"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_volume,
  ["Vc"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.current_value,
  ["Vd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.value_date,
  ["Vh"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.high_value,
  ["Vl"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.low_value,
  ["Vm"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.min_volume,
  ["WFv"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.weighted_free_float_mkt_value,
  ["WPe"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.weight_percent,
  ["Wd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.vwap_diff_per,
  ["Wf"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.weighting_factor,
  ["Wp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.vwap,
  ["YWp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.yield_vwap,
  ["Ya"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_yield_at_level,
  ["Yb"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_yield_at_level,
  ["Yd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.diff_last_yield,
  ["Yf"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.first_yield,
  ["Yh"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.high_yield,
  ["Yl"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.last_yield,
  ["Yo"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.low_yield,
  ["a"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_price_at_level,
  ["b"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_price_at_level,
  ["c"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_level_deleted,
  ["d"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_price_diff,
  ["e"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_level_deleted,
  ["f"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_turnover,
  ["g"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_volume_at_level,
  ["h"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.bid_orders_at_level,
  ["i"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.id,
  ["j"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_volume_at_level,
  ["k"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.ask_orders_at_level,
  ["l"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.order_key,
  ["o"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.accumulated_volume,
  ["p"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.price,
  ["q"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.number_of_trades,
  ["s"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.source_system,
  ["t"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.time_exec,
  ["u"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.update_code,
  ["v"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.volume,
}


-----------------------------------------------------------------------
-- Bist BorsaIstanbul MarketInfo 2.2.8 Tip Messages
-----------------------------------------------------------------------

-- Dissect the tags of a tip message: a tag the message does not carry, and a mandatory tag it lacks, are flagged; an unknown tag is skipped
bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields = function(buffer, packet, parent, tokens, message)
  local seen = {}
  for index = 2, #tokens do
    local token = tokens[index]
    local code = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_code(buffer, token)
    local tag = code and bist_borsaistanbul_marketinfo_tip_v2_2_8.tags[code]
    if tag == nil then
      parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.unknown_tag, buffer(token.offset, token.length), "Unknown tip tag: "..buffer(token.offset, token.length):string())
    else
      if not message.codes[code] then
        parent:add_tvb_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.unexpected_tag, buffer(token.offset, token.length), "Tag "..code.." is not a field of "..message.name)
      end
      tag.dissect(buffer, token.offset + #code, token.length - #code, packet, parent)
      seen[code] = true
    end
  end
  for _, code in ipairs(message.mandatory) do
    if not seen[code] then
      parent:add_proto_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.missing_tag, "Mandatory tag "..code.." missing from "..message.name)
    end
  end
end

-- Allocation Price Message (Ap): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), AllocationPrice (APr)
bist_borsaistanbul_marketinfo_tip_v2_2_8.allocation_price_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.allocation_price_message.name = "Allocation Price Message"

-- Codes: Allocation Price Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.allocation_price_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["APr"] = true }

-- Mandatory: Allocation Price Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.allocation_price_message.mandatory = {  }

-- Dissect: Allocation Price Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.allocation_price_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.allocation_price_message, buffer(offset, size), "Ap")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.allocation_price_message)
  return offset + size
end

-- Basic Data Business Date Message (BDBu): Basic Data - Exchange and Market Hierarchy Messages
-- mandatory: none
-- optional: Date (Dt)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_business_date_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_business_date_message.name = "Basic Data Business Date Message"

-- Codes: Basic Data Business Date Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_business_date_message.codes = { ["Dt"] = true }

-- Mandatory: Basic Data Business Date Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_business_date_message.mandatory = {  }

-- Dissect: Basic Data Business Date Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_business_date_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_business_date_message, buffer(offset, size), "BDBu")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_business_date_message)
  return offset + size
end

-- Basic Data Clearing Venue Message (BDCv): Basic Data - Miscellaneous
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), Symbol (SYm), Name (NAm)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_clearing_venue_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_clearing_venue_message.name = "Basic Data Clearing Venue Message"

-- Codes: Basic Data Clearing Venue Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_clearing_venue_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["SYm"] = true, ["NAm"] = true }

-- Mandatory: Basic Data Clearing Venue Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_clearing_venue_message.mandatory = {  }

-- Dissect: Basic Data Clearing Venue Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_clearing_venue_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_clearing_venue_message, buffer(offset, size), "BDCv")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_clearing_venue_message)
  return offset + size
end

-- Basic Data Combo Leg Message (BDCl): Basic Data - Tradable Securities (Orderbooks)
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), IdLeg (Il), Operational (Op), Ratio (Ra)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_combo_leg_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_combo_leg_message.name = "Basic Data Combo Leg Message"

-- Codes: Basic Data Combo Leg Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_combo_leg_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["Il"] = true, ["Op"] = true, ["Ra"] = true }

-- Mandatory: Basic Data Combo Leg Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_combo_leg_message.mandatory = {  }

-- Dissect: Basic Data Combo Leg Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_combo_leg_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_combo_leg_message, buffer(offset, size), "BDCl")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_combo_leg_message)
  return offset + size
end

-- Basic Data Deliverable Serie Message (BDDs): Basic Data - Tradable Securities (Orderbooks)
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), Symbol (SYm), Name (NAm), HandledCCP (CCp)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_deliverable_serie_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_deliverable_serie_message.name = "Basic Data Deliverable Serie Message"

-- Codes: Basic Data Deliverable Serie Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_deliverable_serie_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["SYm"] = true, ["NAm"] = true, ["CCp"] = true }

-- Mandatory: Basic Data Deliverable Serie Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_deliverable_serie_message.mandatory = {  }

-- Dissect: Basic Data Deliverable Serie Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_deliverable_serie_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_deliverable_serie_message, buffer(offset, size), "BDDs")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_deliverable_serie_message)
  return offset + size
end

-- Basic Data Derivative Message (BDDe): Basic Data - Tradable Securities (Orderbooks)
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), DerivativeType (DTy), TotalIssue (TIs), ExerciseType (DXt), StrikePrice (STp), ContractSize (CSz), Factor (PQf), SettlementType (SEt), ExerciseFromDate (EXb), ExerciseToDate (EXe), SettlementDate (Sd), HotInserted (HOt), ComboType (Ct), TailorMade (TAm), OldSeries (Or), ValueDate (Vd), ResetDate (Rd), DeliveryDate (DDt)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_derivative_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_derivative_message.name = "Basic Data Derivative Message"

-- Codes: Basic Data Derivative Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_derivative_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["DTy"] = true, ["TIs"] = true, ["DXt"] = true, ["STp"] = true, ["CSz"] = true, ["PQf"] = true, ["SEt"] = true, ["EXb"] = true, ["EXe"] = true, ["Sd"] = true, ["HOt"] = true, ["Ct"] = true, ["TAm"] = true, ["Or"] = true, ["Vd"] = true, ["Rd"] = true, ["DDt"] = true }

-- Mandatory: Basic Data Derivative Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_derivative_message.mandatory = {  }

-- Dissect: Basic Data Derivative Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_derivative_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_derivative_message, buffer(offset, size), "BDDe")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_derivative_message)
  return offset + size
end

-- Basic Data Exchange Message (BDx): Basic Data - Exchange and Market Hierarchy Messages
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), Symbol (SYm), Name (NAm), Country (CNy), MicCode (MIc)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_exchange_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_exchange_message.name = "Basic Data Exchange Message"

-- Codes: Basic Data Exchange Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_exchange_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["SYm"] = true, ["NAm"] = true, ["CNy"] = true, ["MIc"] = true }

-- Mandatory: Basic Data Exchange Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_exchange_message.mandatory = {  }

-- Dissect: Basic Data Exchange Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_exchange_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_exchange_message, buffer(offset, size), "BDx")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_exchange_message)
  return offset + size
end

-- Basic Data Fixed Income Message (BDFi): Basic Data - Tradable Securities (Orderbooks)
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), FixedIncomeType (BTy), IssueDate (DIs), OutstandingAmount (AOs), MaturityDate (DMa), CouponRate (RCp), DayCountMethod (DCm), CouponFrequency (CFq), MinVolume (Vm), MaxDaysOrder (MDo), HotInserted (HOt), StartDate (STd), EndDate (Ed), OddFirst (ODf), OddLast (ODl), InstrumentClassification (ICl), DeliverableSeriesId (DSi), IndexClassification (INc), FixedIncomeClassification (FIc)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_fixed_income_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_fixed_income_message.name = "Basic Data Fixed Income Message"

-- Codes: Basic Data Fixed Income Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_fixed_income_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["BTy"] = true, ["DIs"] = true, ["AOs"] = true, ["DMa"] = true, ["RCp"] = true, ["DCm"] = true, ["CFq"] = true, ["Vm"] = true, ["MDo"] = true, ["HOt"] = true, ["STd"] = true, ["Ed"] = true, ["ODf"] = true, ["ODl"] = true, ["ICl"] = true, ["DSi"] = true, ["INc"] = true, ["FIc"] = true }

-- Mandatory: Basic Data Fixed Income Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_fixed_income_message.mandatory = {  }

-- Dissect: Basic Data Fixed Income Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_fixed_income_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_fixed_income_message, buffer(offset, size), "BDFi")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_fixed_income_message)
  return offset + size
end

-- Basic Data Fund Message (BDEt): Basic Data - Tradable Securities (Orderbooks)
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), HotInserted (HOt)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_fund_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_fund_message.name = "Basic Data Fund Message"

-- Codes: Basic Data Fund Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_fund_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["HOt"] = true }

-- Mandatory: Basic Data Fund Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_fund_message.mandatory = {  }

-- Dissect: Basic Data Fund Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_fund_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_fund_message, buffer(offset, size), "BDEt")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_fund_message)
  return offset + size
end

-- Basic Data Index Member Message (BDIm): Basic Data - Index, Lists, and Sectors: Security Groups
-- mandatory: none
-- optional: Symbol (SYm), Isin (ISn), OrderbookId (IDo), IndexId (IXi), SourceSystem (s)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_index_member_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_index_member_message.name = "Basic Data Index Member Message"

-- Codes: Basic Data Index Member Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_index_member_message.codes = { ["SYm"] = true, ["ISn"] = true, ["IDo"] = true, ["IXi"] = true, ["s"] = true }

-- Mandatory: Basic Data Index Member Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_index_member_message.mandatory = {  }

-- Dissect: Basic Data Index Member Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_index_member_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_index_member_message, buffer(offset, size), "BDIm")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_index_member_message)
  return offset + size
end

-- Basic Data Index Message (BDIn): Basic Data - Index, Lists, and Sectors: Security Groups
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), Symbol (SYm), IndexName (INn), Currency (LCy), PopulationType (POt), CalculationType (TYc), IndexType (ITy), IndexPriceType (IPt), IndexStatus (Is), IndexOwner (Io), DisseminationInterval (Di), HotInserted (HOt), SectorId (SId), UnitsOfTrading (UNt), CycleClass (CYc), ReturnType (RTt), EnglishName (ENn), BaseValue (IBv), BaseDate (IBd)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_index_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_index_message.name = "Basic Data Index Message"

-- Codes: Basic Data Index Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_index_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["SYm"] = true, ["INn"] = true, ["LCy"] = true, ["POt"] = true, ["TYc"] = true, ["ITy"] = true, ["IPt"] = true, ["Is"] = true, ["Io"] = true, ["Di"] = true, ["HOt"] = true, ["SId"] = true, ["UNt"] = true, ["CYc"] = true, ["RTt"] = true, ["ENn"] = true, ["IBv"] = true, ["IBd"] = true }

-- Mandatory: Basic Data Index Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_index_message.mandatory = {  }

-- Dissect: Basic Data Index Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_index_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_index_message, buffer(offset, size), "BDIn")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_index_message)
  return offset + size
end

-- Basic Data Index Supplementary Message (BDIp): Basic Data - Index, Lists, and Sectors: Security Groups
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), Isin (ISn)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_index_supplementary_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_index_supplementary_message.name = "Basic Data Index Supplementary Message"

-- Codes: Basic Data Index Supplementary Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_index_supplementary_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["ISn"] = true }

-- Mandatory: Basic Data Index Supplementary Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_index_supplementary_message.mandatory = {  }

-- Dissect: Basic Data Index Supplementary Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_index_supplementary_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_index_supplementary_message, buffer(offset, size), "BDIp")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_index_supplementary_message)
  return offset + size
end

-- Basic Data Issuer Message (BDIs): Basic Data - Miscellaneous
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), Symbol (SYm), Name (NAm), Country (CNy)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_issuer_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_issuer_message.name = "Basic Data Issuer Message"

-- Codes: Basic Data Issuer Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_issuer_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["SYm"] = true, ["NAm"] = true, ["CNy"] = true }

-- Mandatory: Basic Data Issuer Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_issuer_message.mandatory = {  }

-- Dissect: Basic Data Issuer Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_issuer_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_issuer_message, buffer(offset, size), "BDIs")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_issuer_message)
  return offset + size
end

-- Basic Data List Member Message (BDLm): Basic Data - Index, Lists, and Sectors: Security Groups
-- mandatory: none
-- optional: OrderbookId (IDo), ListId (LSi), SourceSystem (s), HotInserted (HOt)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_list_member_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_list_member_message.name = "Basic Data List Member Message"

-- Codes: Basic Data List Member Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_list_member_message.codes = { ["IDo"] = true, ["LSi"] = true, ["s"] = true, ["HOt"] = true }

-- Mandatory: Basic Data List Member Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_list_member_message.mandatory = {  }

-- Dissect: Basic Data List Member Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_list_member_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_list_member_message, buffer(offset, size), "BDLm")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_list_member_message)
  return offset + size
end

-- Basic Data List Message (BDLi): Basic Data - Index, Lists, and Sectors: Security Groups
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), ParentId (PAi), Symbol (SYm), Name (NAm), Currency (LCy), TurnoverCalculationEnabled (TCe)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_list_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_list_message.name = "Basic Data List Message"

-- Codes: Basic Data List Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_list_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["PAi"] = true, ["SYm"] = true, ["NAm"] = true, ["LCy"] = true, ["TCe"] = true }

-- Mandatory: Basic Data List Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_list_message.mandatory = {  }

-- Dissect: Basic Data List Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_list_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_list_message, buffer(offset, size), "BDLi")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_list_message)
  return offset + size
end

-- Basic Data Market Message (BDm): Basic Data - Exchange and Market Hierarchy Messages
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), ExchangeId (Ex), Name (NAm), Symbol (SYm), TimeOffsetUTC (TOTa), MicCode (MIc)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_market_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_market_message.name = "Basic Data Market Message"

-- Codes: Basic Data Market Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_market_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["Ex"] = true, ["NAm"] = true, ["SYm"] = true, ["TOTa"] = true, ["MIc"] = true }

-- Mandatory: Basic Data Market Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_market_message.mandatory = {  }

-- Dissect: Basic Data Market Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_market_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_market_message, buffer(offset, size), "BDm")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_market_message)
  return offset + size
end

-- Basic Data Non Trading Days Message (BDTd): Basic Data - Miscellaneous
-- mandatory: none
-- optional: Id (i), SourceSystem (s), SourceId (Si), Date (Dt), DayType (TDt)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_non_trading_days_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_non_trading_days_message.name = "Basic Data Non Trading Days Message"

-- Codes: Basic Data Non Trading Days Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_non_trading_days_message.codes = { ["i"] = true, ["s"] = true, ["Si"] = true, ["Dt"] = true, ["TDt"] = true }

-- Mandatory: Basic Data Non Trading Days Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_non_trading_days_message.mandatory = {  }

-- Dissect: Basic Data Non Trading Days Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_non_trading_days_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_non_trading_days_message, buffer(offset, size), "BDTd")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_non_trading_days_message)
  return offset + size
end

-- Basic Data Participant Message (BDp): Basic Data - Miscellaneous
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), Symbol (SYm), Name (NAm), ParticipantType (PAt), BicCode (BIc), GrossSettlement (GRs)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_participant_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_participant_message.name = "Basic Data Participant Message"

-- Codes: Basic Data Participant Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_participant_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["SYm"] = true, ["NAm"] = true, ["PAt"] = true, ["BIc"] = true, ["GRs"] = true }

-- Mandatory: Basic Data Participant Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_participant_message.mandatory = {  }

-- Dissect: Basic Data Participant Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_participant_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_participant_message, buffer(offset, size), "BDp")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_participant_message)
  return offset + size
end

-- Basic Data Precious Metals And Diamonds Message (BDPm): Basic Data - Tradable Securities (Orderbooks)
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), MetalType (Mt), RefineryClass (Rc), BarType (BAt), MetalWeightUnit (MWu), FinenessNotation (FNn), MetalWeight (Mw), Fineness (Fn), MetalWeightConversionFactor (MWc), SettlementDate (Sd), PriceWeightUnit (PWu), MaturityDate (DMa), PriceUnit (PUn), VaultLocation (VLo), CoinGroup (RCg), CoinType (RCt), CoinYear (RCy), HotInserted (HOt)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_precious_metals_and_diamonds_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_precious_metals_and_diamonds_message.name = "Basic Data Precious Metals And Diamonds Message"

-- Codes: Basic Data Precious Metals And Diamonds Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_precious_metals_and_diamonds_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["Mt"] = true, ["Rc"] = true, ["BAt"] = true, ["MWu"] = true, ["FNn"] = true, ["Mw"] = true, ["Fn"] = true, ["MWc"] = true, ["Sd"] = true, ["PWu"] = true, ["DMa"] = true, ["PUn"] = true, ["VLo"] = true, ["RCg"] = true, ["RCt"] = true, ["RCy"] = true, ["HOt"] = true }

-- Mandatory: Basic Data Precious Metals And Diamonds Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_precious_metals_and_diamonds_message.mandatory = {  }

-- Dissect: Basic Data Precious Metals And Diamonds Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_precious_metals_and_diamonds_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_precious_metals_and_diamonds_message, buffer(offset, size), "BDPm")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_precious_metals_and_diamonds_message)
  return offset + size
end

-- Basic Data Right Message (BDRi): Basic Data - Tradable Securities (Orderbooks)
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), ContractSize (CSz), ExerciseFromDate (EXb), ExerciseToDate (EXe), TotalIssue (TIs), ExerciseCurrency (EXc), HotInserted (HOt)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_right_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_right_message.name = "Basic Data Right Message"

-- Codes: Basic Data Right Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_right_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["CSz"] = true, ["EXb"] = true, ["EXe"] = true, ["TIs"] = true, ["EXc"] = true, ["HOt"] = true }

-- Mandatory: Basic Data Right Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_right_message.mandatory = {  }

-- Dissect: Basic Data Right Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_right_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_right_message, buffer(offset, size), "BDRi")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_right_message)
  return offset + size
end

-- Basic Data Sector Member Message (BDSm): Basic Data - Index, Lists, and Sectors: Security Groups
-- mandatory: none
-- optional: OrderbookId (IDo), SectorId (SId), SourceSystem (s), HotInserted (HOt)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_sector_member_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_sector_member_message.name = "Basic Data Sector Member Message"

-- Codes: Basic Data Sector Member Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_sector_member_message.codes = { ["IDo"] = true, ["SId"] = true, ["s"] = true, ["HOt"] = true }

-- Mandatory: Basic Data Sector Member Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_sector_member_message.mandatory = {  }

-- Dissect: Basic Data Sector Member Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_sector_member_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_sector_member_message, buffer(offset, size), "BDSm")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_sector_member_message)
  return offset + size
end

-- Basic Data Sector Message (BDs): Basic Data - Index, Lists, and Sectors: Security Groups
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), Symbol (SYm), Name (NAm), CodeLevel (CDLv), ParentId (PAi)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_sector_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_sector_message.name = "Basic Data Sector Message"

-- Codes: Basic Data Sector Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_sector_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["SYm"] = true, ["NAm"] = true, ["CDLv"] = true, ["PAi"] = true }

-- Mandatory: Basic Data Sector Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_sector_message.mandatory = {  }

-- Dissect: Basic Data Sector Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_sector_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_sector_message, buffer(offset, size), "BDs")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_sector_message)
  return offset + size
end

-- Basic Data Share Message (BDSh): Basic Data - Tradable Securities (Orderbooks)
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), HotInserted (HOt), AvailableQuantityAtStart (AVq), AvailableQtyStartDate (As), AvailableQtyEndDate (Ae), InstrumentClassification (ICl), TotalIssue (TIs)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_share_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_share_message.name = "Basic Data Share Message"

-- Codes: Basic Data Share Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_share_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["HOt"] = true, ["AVq"] = true, ["As"] = true, ["Ae"] = true, ["ICl"] = true, ["TIs"] = true }

-- Mandatory: Basic Data Share Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_share_message.mandatory = {  }

-- Dissect: Basic Data Share Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_share_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_share_message, buffer(offset, size), "BDSh")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_share_message)
  return offset + size
end

-- Basic Data Source Message (BDSr): Basic Data - Miscellaneous
-- mandatory: none
-- optional: Id (i), Name (NAm)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_source_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_source_message.name = "Basic Data Source Message"

-- Codes: Basic Data Source Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_source_message.codes = { ["i"] = true, ["NAm"] = true }

-- Mandatory: Basic Data Source Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_source_message.mandatory = {  }

-- Dissect: Basic Data Source Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_source_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_source_message, buffer(offset, size), "BDSr")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_source_message)
  return offset + size
end

-- Basic Data Table Entry Message (BDTe): Basic Data - Miscellaneous
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), TableEntryType (TEt), Symbol (SYm), Name (NAm)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_table_entry_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_table_entry_message.name = "Basic Data Table Entry Message"

-- Codes: Basic Data Table Entry Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_table_entry_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["TEt"] = true, ["SYm"] = true, ["NAm"] = true }

-- Mandatory: Basic Data Table Entry Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_table_entry_message.mandatory = {  }

-- Dissect: Basic Data Table Entry Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_table_entry_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_table_entry_message, buffer(offset, size), "BDTe")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_table_entry_message)
  return offset + size
end

-- Basic Data Tick Size Entry Message (BDTz): Basic Data - Miscellaneous
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), TickSize (TSz), PriceFrom (PFr), PriceTo (PTo)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tick_size_entry_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tick_size_entry_message.name = "Basic Data Tick Size Entry Message"

-- Codes: Basic Data Tick Size Entry Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tick_size_entry_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["TSz"] = true, ["PFr"] = true, ["PTo"] = true }

-- Mandatory: Basic Data Tick Size Entry Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tick_size_entry_message.mandatory = {  }

-- Dissect: Basic Data Tick Size Entry Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tick_size_entry_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_tick_size_entry_message, buffer(offset, size), "BDTz")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tick_size_entry_message)
  return offset + size
end

-- Basic Data Tick Size Table Message (BDTs): Basic Data - Miscellaneous
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), Name (NAm)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tick_size_table_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tick_size_table_message.name = "Basic Data Tick Size Table Message"

-- Codes: Basic Data Tick Size Table Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tick_size_table_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["NAm"] = true }

-- Mandatory: Basic Data Tick Size Table Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tick_size_table_message.mandatory = {  }

-- Dissect: Basic Data Tick Size Table Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tick_size_table_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_tick_size_table_message, buffer(offset, size), "BDTs")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tick_size_table_message)
  return offset + size
end

-- Basic Data Tradable Message (BDt): Basic Data - Tradable Securities (Orderbooks)
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), MarketId (Mk), InstrumentSourceId (INi), Symbol (SYm), Name (NAm), AbbreviatedName (SNm), IssuerId (ISi), IssueCurrency (CUi), TradingCurrency (CUt), PriceType (PRt), VolumeDimension (VOd), ListingDate (LDa), NominalValue (NMv), TickSizeTableId (ITSz), NoOfDecPrice (NDp), NoOfDecYield (NDTp), ClearingVenueId (CLId), Country (CNy), SecurityType (STy), Automatch (AUm), TradeReportsAllowed (TRa), PretradeAnonymity (PTa), PosttradeAnonymity (PTb), MarketSegment (MSe), HotInserted (HOt), LotSize (LSz), ShortSaleRestriction (SSr), MinimumLot (MLm), MaximumLot (MLt), TradingSession (TRId), MarketMaker (MMk), TradingMethod (TRm), GrossSettlement (GRs), RankingType (RTy), CorporateAction (CRa), ValueCurrency (CUv), ExcludeCrossTradeFromStats (ECTr), MaxOrderValue (MOv), FirstTradingDate (FTRd), FirstTradingTime (FTRt), LastTradingDate (LTRd), LastTradingTime (LTRt)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tradable_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tradable_message.name = "Basic Data Tradable Message"

-- Codes: Basic Data Tradable Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tradable_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["Mk"] = true, ["INi"] = true, ["SYm"] = true, ["NAm"] = true, ["SNm"] = true, ["ISi"] = true, ["CUi"] = true, ["CUt"] = true, ["PRt"] = true, ["VOd"] = true, ["LDa"] = true, ["NMv"] = true, ["ITSz"] = true, ["NDp"] = true, ["NDTp"] = true, ["CLId"] = true, ["CNy"] = true, ["STy"] = true, ["AUm"] = true, ["TRa"] = true, ["PTa"] = true, ["PTb"] = true, ["MSe"] = true, ["HOt"] = true, ["LSz"] = true, ["SSr"] = true, ["MLm"] = true, ["MLt"] = true, ["TRId"] = true, ["MMk"] = true, ["TRm"] = true, ["GRs"] = true, ["RTy"] = true, ["CRa"] = true, ["CUv"] = true, ["ECTr"] = true, ["MOv"] = true, ["FTRd"] = true, ["FTRt"] = true, ["LTRd"] = true, ["LTRt"] = true }

-- Mandatory: Basic Data Tradable Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tradable_message.mandatory = {  }

-- Dissect: Basic Data Tradable Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tradable_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_tradable_message, buffer(offset, size), "BDt")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tradable_message)
  return offset + size
end

-- Basic Data Tradable Supplementary Message (BDTr): Basic Data - Tradable Securities (Orderbooks)
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), Isin (ISn)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tradable_supplementary_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tradable_supplementary_message.name = "Basic Data Tradable Supplementary Message"

-- Codes: Basic Data Tradable Supplementary Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tradable_supplementary_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["ISn"] = true }

-- Mandatory: Basic Data Tradable Supplementary Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tradable_supplementary_message.mandatory = {  }

-- Dissect: Basic Data Tradable Supplementary Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tradable_supplementary_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_tradable_supplementary_message, buffer(offset, size), "BDTr")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tradable_supplementary_message)
  return offset + size
end

-- Basic Data Trading Scheme Message (BDTm): Basic Data - Miscellaneous
-- mandatory: none
-- optional: SourceSystem (s), TradingSession (TRId), SourceId (Si), Date (Dt), StateCode (Ms), StartTime (St)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_trading_scheme_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_trading_scheme_message.name = "Basic Data Trading Scheme Message"

-- Codes: Basic Data Trading Scheme Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_trading_scheme_message.codes = { ["s"] = true, ["TRId"] = true, ["Si"] = true, ["Dt"] = true, ["Ms"] = true, ["St"] = true }

-- Mandatory: Basic Data Trading Scheme Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_trading_scheme_message.mandatory = {  }

-- Dissect: Basic Data Trading Scheme Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_trading_scheme_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_trading_scheme_message, buffer(offset, size), "BDTm")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_trading_scheme_message)
  return offset + size
end

-- Basic Data Underlying Info Message (BDUi): Basic Data - Tradable Securities (Orderbooks)
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), UnderlyingId (ULi), Description (DSc), HotInserted (HOt), UnderlyingSourceId (USi)
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_underlying_info_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_underlying_info_message.name = "Basic Data Underlying Info Message"

-- Codes: Basic Data Underlying Info Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_underlying_info_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["ULi"] = true, ["DSc"] = true, ["HOt"] = true, ["USi"] = true }

-- Mandatory: Basic Data Underlying Info Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_underlying_info_message.mandatory = {  }

-- Dissect: Basic Data Underlying Info Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_underlying_info_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.basic_data_underlying_info_message, buffer(offset, size), "BDUi")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_underlying_info_message)
  return offset + size
end

-- Call Information1 Message (c): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), EquilibriumPrice (EQp), EquilibriumVolume (EQv), Flush (Of)
bist_borsaistanbul_marketinfo_tip_v2_2_8.call_information1_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.call_information1_message.name = "Call Information1 Message"

-- Codes: Call Information1 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.call_information1_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["EQp"] = true, ["EQv"] = true, ["Of"] = true }

-- Mandatory: Call Information1 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.call_information1_message.mandatory = {  }

-- Dissect: Call Information1 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.call_information1_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.call_information1_message, buffer(offset, size), "c")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.call_information1_message)
  return offset + size
end

-- Call Information2 Message (Cl): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), EquilibriumPrice (EQp), EquilibriumVolume (EQv), RemainingBidVolumeAtEPLevel (EBv), RemainingAskVolumeAtEPLevel (EAv), Flush (Of)
bist_borsaistanbul_marketinfo_tip_v2_2_8.call_information2_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.call_information2_message.name = "Call Information2 Message"

-- Codes: Call Information2 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.call_information2_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["EQp"] = true, ["EQv"] = true, ["EBv"] = true, ["EAv"] = true, ["Of"] = true }

-- Mandatory: Call Information2 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.call_information2_message.mandatory = {  }

-- Dissect: Call Information2 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.call_information2_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.call_information2_message, buffer(offset, size), "Cl")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.call_information2_message)
  return offset + size
end

-- Corporate Action Message (TRh): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), ActionStatus (SRe), NoteCode (NOc), TimeExec (t)
bist_borsaistanbul_marketinfo_tip_v2_2_8.corporate_action_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.corporate_action_message.name = "Corporate Action Message"

-- Codes: Corporate Action Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.corporate_action_message.codes = { ["i"] = true, ["s"] = true, ["SRe"] = true, ["NOc"] = true, ["t"] = true }

-- Mandatory: Corporate Action Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.corporate_action_message.mandatory = {  }

-- Dissect: Corporate Action Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.corporate_action_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.corporate_action_message, buffer(offset, size), "TRh")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.corporate_action_message)
  return offset + size
end

-- End Of Basic Data Message (EOBd): Reply messages
-- mandatory: none
-- optional: SourceSystem (s)
bist_borsaistanbul_marketinfo_tip_v2_2_8.end_of_basic_data_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.end_of_basic_data_message.name = "End Of Basic Data Message"

-- Codes: End Of Basic Data Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.end_of_basic_data_message.codes = { ["s"] = true }

-- Mandatory: End Of Basic Data Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.end_of_basic_data_message.mandatory = {  }

-- Dissect: End Of Basic Data Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.end_of_basic_data_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.end_of_basic_data_message, buffer(offset, size), "EOBd")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.end_of_basic_data_message)
  return offset + size
end

-- Index Divisor Message (INd): Index Calculation System Messages
-- mandatory: none
-- optional: Id (i), SourceId (Si), SourceSystem (s), Divisor (IXDv)
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_divisor_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_divisor_message.name = "Index Divisor Message"

-- Codes: Index Divisor Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_divisor_message.codes = { ["i"] = true, ["Si"] = true, ["s"] = true, ["IXDv"] = true }

-- Mandatory: Index Divisor Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_divisor_message.mandatory = {  }

-- Dissect: Index Divisor Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_divisor_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_divisor_message, buffer(offset, size), "INd")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.index_divisor_message)
  return offset + size
end

-- Index Summary Message (Is): Index Calculation System Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), ClosingValue (CLv), HighValue (Vh), LowValue (Vl), AccumulatedVolume (o), AccumulatedTurnover (f), OpenValue (OVa), OldIndexValue (ODXv), DiffDayNom (Dn), DiffDayPer (Dd), MarketCap (CAp), SodEod (SEd)
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_summary_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_summary_message.name = "Index Summary Message"

-- Codes: Index Summary Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_summary_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["CLv"] = true, ["Vh"] = true, ["Vl"] = true, ["o"] = true, ["f"] = true, ["OVa"] = true, ["ODXv"] = true, ["Dn"] = true, ["Dd"] = true, ["CAp"] = true, ["SEd"] = true }

-- Mandatory: Index Summary Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_summary_message.mandatory = {  }

-- Dissect: Index Summary Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_summary_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_summary_message, buffer(offset, size), "Is")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.index_summary_message)
  return offset + size
end

-- Index Update Message (i): Index Calculation System Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), CurrentValue (Vc), HighValue (Vh), LowValue (Vl), AccumulatedVolume (o), AccumulatedTurnover (f), OpenValue (OVa), DiffDayNom (Dn), DiffDayPer (Dd)
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_update_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_update_message.name = "Index Update Message"

-- Codes: Index Update Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_update_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["Vc"] = true, ["Vh"] = true, ["Vl"] = true, ["o"] = true, ["f"] = true, ["OVa"] = true, ["Dn"] = true, ["Dd"] = true }

-- Mandatory: Index Update Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_update_message.mandatory = {  }

-- Dissect: Index Update Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_update_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_update_message, buffer(offset, size), "i")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.index_update_message)
  return offset + size
end

-- Index Weight Message (Iw): Index Calculation System Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), Symbol (SYm), Isin (ISn), OrderbookId (IDo), WeightPercent (WPe), FreeFloatRatio (FFr), WeightingFactor (Wf), WeightedFreeFloatMktValue (WFv), MarketCap (CAp), SodEod (SEd)
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_weight_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_weight_message.name = "Index Weight Message"

-- Codes: Index Weight Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_weight_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["SYm"] = true, ["ISn"] = true, ["IDo"] = true, ["WPe"] = true, ["FFr"] = true, ["Wf"] = true, ["WFv"] = true, ["CAp"] = true, ["SEd"] = true }

-- Mandatory: Index Weight Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_weight_message.mandatory = {  }

-- Dissect: Index Weight Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.index_weight_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.index_weight_message, buffer(offset, size), "Iw")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.index_weight_message)
  return offset + size
end

-- Margin Price Message (Mp): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), MarginPrice (MPr)
bist_borsaistanbul_marketinfo_tip_v2_2_8.margin_price_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.margin_price_message.name = "Margin Price Message"

-- Codes: Margin Price Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.margin_price_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["MPr"] = true }

-- Mandatory: Margin Price Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.margin_price_message.mandatory = {  }

-- Dissect: Margin Price Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.margin_price_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.margin_price_message, buffer(offset, size), "Mp")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.margin_price_message)
  return offset + size
end

-- Market Maker Quote1 Message (q): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), AskPrice (Pa), BidPrice (Pb), Flush (Of)
bist_borsaistanbul_marketinfo_tip_v2_2_8.market_maker_quote1_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.market_maker_quote1_message.name = "Market Maker Quote1 Message"

-- Codes: Market Maker Quote1 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.market_maker_quote1_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["Pa"] = true, ["Pb"] = true, ["Of"] = true }

-- Mandatory: Market Maker Quote1 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.market_maker_quote1_message.mandatory = {  }

-- Dissect: Market Maker Quote1 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.market_maker_quote1_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.market_maker_quote1_message, buffer(offset, size), "q")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.market_maker_quote1_message)
  return offset + size
end

-- Market Maker Quote2 Message (y): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), AskPrice (Pa), BidPrice (Pb), BidVolume (Vb), AskVolume (Va), Flush (Of)
bist_borsaistanbul_marketinfo_tip_v2_2_8.market_maker_quote2_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.market_maker_quote2_message.name = "Market Maker Quote2 Message"

-- Codes: Market Maker Quote2 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.market_maker_quote2_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["Pa"] = true, ["Pb"] = true, ["Vb"] = true, ["Va"] = true, ["Of"] = true }

-- Mandatory: Market Maker Quote2 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.market_maker_quote2_message.mandatory = {  }

-- Dissect: Market Maker Quote2 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.market_maker_quote2_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.market_maker_quote2_message, buffer(offset, size), "y")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.market_maker_quote2_message)
  return offset + size
end

-- MBP Order Snapshot Message (k): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), Flush (Of), RankedBidPrice (Bf), RankedBidVolume (Bh), RankedAskPrice (Af), RankedAskVolume (Ah), RankedBidYield (By), RankedBidCollateralPrice (Bd), RankedAskYield (Ay), RankedAskCollateralPrice (Ad), RankedBidOrderKey (Bo), RankedAskOrderKey (Ao)
bist_borsaistanbul_marketinfo_tip_v2_2_8.mbp_order_snapshot_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.mbp_order_snapshot_message.name = "MBP Order Snapshot Message"

-- Codes: MBP Order Snapshot Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.mbp_order_snapshot_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["Of"] = true, ["Bf"] = true, ["Bh"] = true, ["Af"] = true, ["Ah"] = true, ["By"] = true, ["Bd"] = true, ["Ay"] = true, ["Ad"] = true, ["Bo"] = true, ["Ao"] = true }

-- Mandatory: MBP Order Snapshot Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.mbp_order_snapshot_message.mandatory = {  }

-- Dissect: MBP Order Snapshot Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.mbp_order_snapshot_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.mbp_order_snapshot_message, buffer(offset, size), "k")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.mbp_order_snapshot_message)
  return offset + size
end

-- News Message (n): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), NewsId (NWi), TimeExec (t), NewsObjectType (NOt), MessageSource (NMs), URL (URl), HeadLine (NHl), Text (TEx), BlockId (BLi), LastBlock (BLl)
bist_borsaistanbul_marketinfo_tip_v2_2_8.news_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.news_message.name = "News Message"

-- Codes: News Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.news_message.codes = { ["i"] = true, ["s"] = true, ["NWi"] = true, ["t"] = true, ["NOt"] = true, ["NMs"] = true, ["URl"] = true, ["NHl"] = true, ["TEx"] = true, ["BLi"] = true, ["BLl"] = true }

-- Mandatory: News Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.news_message.mandatory = {  }

-- Dissect: News Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.news_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.news_message, buffer(offset, size), "n")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.news_message)
  return offset + size
end

-- Open Interest Message (Oi): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), OpenInterest (OPi), DiffOpenInterest (Do)
bist_borsaistanbul_marketinfo_tip_v2_2_8.open_interest_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.open_interest_message.name = "Open Interest Message"

-- Codes: Open Interest Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.open_interest_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["OPi"] = true, ["Do"] = true }

-- Mandatory: Open Interest Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.open_interest_message.mandatory = {  }

-- Dissect: Open Interest Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.open_interest_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.open_interest_message, buffer(offset, size), "Oi")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.open_interest_message)
  return offset + size
end

-- Order MBO Message (MBo): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), OrderKey (l), BuyOrSell (Bs), OrderClass (Cl), Price (p), Yield (Py), Volume (v), Participant (Pt), UpdateCode (u), CollateralPrice (Cp)
bist_borsaistanbul_marketinfo_tip_v2_2_8.order_mbo_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.order_mbo_message.name = "Order MBO Message"

-- Codes: Order MBO Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.order_mbo_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["l"] = true, ["Bs"] = true, ["Cl"] = true, ["p"] = true, ["Py"] = true, ["v"] = true, ["Pt"] = true, ["u"] = true, ["Cp"] = true }

-- Mandatory: Order MBO Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.order_mbo_message.mandatory = {  }

-- Dissect: Order MBO Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.order_mbo_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.order_mbo_message, buffer(offset, size), "MBo")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.order_mbo_message)
  return offset + size
end

-- Orderbook1 Message (o): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), Flush (Of), BidLevelDeleted (c), AskLevelDeleted (e), BidPriceDiff (d), BidPriceAtLevel (b), AskPriceAtLevel (a), BidCollateralPriceAtLevel (Cb), AskCollateralPriceAtLevel (Ca), BidYieldAtLevel (Yb), AskYieldAtLevel (Ya), BidSettlementPrice (BSp), AskSettlementPrice (ASp)
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook1_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook1_message.name = "Orderbook1 Message"

-- Codes: Orderbook1 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook1_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["Of"] = true, ["c"] = true, ["e"] = true, ["d"] = true, ["b"] = true, ["a"] = true, ["Cb"] = true, ["Ca"] = true, ["Yb"] = true, ["Ya"] = true, ["BSp"] = true, ["ASp"] = true }

-- Mandatory: Orderbook1 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook1_message.mandatory = {  }

-- Dissect: Orderbook1 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook1_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.orderbook1_message, buffer(offset, size), "o")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook1_message)
  return offset + size
end

-- Orderbook2 Message (p): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), Flush (Of), BidLevelDeleted (c), AskLevelDeleted (e), BidPriceDiff (d), BidPriceAtLevel (b), BidVolumeAtLevel (g), BidOrdersAtLevel (h), AskPriceAtLevel (a), AskVolumeAtLevel (j), AskOrdersAtLevel (k), BidCollateralPriceAtLevel (Cb), AskCollateralPriceAtLevel (Ca), BidYieldAtLevel (Yb), AskYieldAtLevel (Ya), BidSettlementPrice (BSp), AskSettlementPrice (ASp)
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook2_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook2_message.name = "Orderbook2 Message"

-- Codes: Orderbook2 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook2_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["Of"] = true, ["c"] = true, ["e"] = true, ["d"] = true, ["b"] = true, ["g"] = true, ["h"] = true, ["a"] = true, ["j"] = true, ["k"] = true, ["Cb"] = true, ["Ca"] = true, ["Yb"] = true, ["Ya"] = true, ["BSp"] = true, ["ASp"] = true }

-- Mandatory: Orderbook2 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook2_message.mandatory = {  }

-- Dissect: Orderbook2 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook2_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.orderbook2_message, buffer(offset, size), "p")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook2_message)
  return offset + size
end

-- Orderbook3 Message (z): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), Flush (Of), BidLevelDeleted (c), AskLevelDeleted (e), BidPriceDiff (d), BidPriceAtLevel (b), BidVolumeAtLevel (g), BidOrdersAtLevel (h), AskPriceAtLevel (a), AskVolumeAtLevel (j), AskOrdersAtLevel (k), WAvgPriceAllBid (Bw), TotVolAllBid (Bt), WAvgPriceAllAsk (Aw), TotVolAllAsk (At), BidCollateralPriceAtLevel (Cb), AskCollateralPriceAtLevel (Ca), BidYieldAtLevel (Yb), AskYieldAtLevel (Ya), BidSettlementPrice (BSp), AskSettlementPrice (ASp)
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook3_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook3_message.name = "Orderbook3 Message"

-- Codes: Orderbook3 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook3_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["Of"] = true, ["c"] = true, ["e"] = true, ["d"] = true, ["b"] = true, ["g"] = true, ["h"] = true, ["a"] = true, ["j"] = true, ["k"] = true, ["Bw"] = true, ["Bt"] = true, ["Aw"] = true, ["At"] = true, ["Cb"] = true, ["Ca"] = true, ["Yb"] = true, ["Ya"] = true, ["BSp"] = true, ["ASp"] = true }

-- Mandatory: Orderbook3 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook3_message.mandatory = {  }

-- Dissect: Orderbook3 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook3_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.orderbook3_message, buffer(offset, size), "z")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook3_message)
  return offset + size
end

-- Orderbook Reference Price Message (r): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), BasePrice (RPr), AdditionalReferencePrice (ARp), LowerPriceLimit (LPl), UpperPriceLimit (UPl), Flush (Of)
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook_reference_price_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook_reference_price_message.name = "Orderbook Reference Price Message"

-- Codes: Orderbook Reference Price Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook_reference_price_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["RPr"] = true, ["ARp"] = true, ["LPl"] = true, ["UPl"] = true, ["Of"] = true }

-- Mandatory: Orderbook Reference Price Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook_reference_price_message.mandatory = {  }

-- Dissect: Orderbook Reference Price Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook_reference_price_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.orderbook_reference_price_message, buffer(offset, size), "r")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook_reference_price_message)
  return offset + size
end

-- Orderbook Summary Message (m): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), Date (Dt), OfficialClosingPrice (ISOc), OfficialClosingTurnover (ISOt), BidPriceDiff (d), BidPriceAtLevel1 (BPr), AskPriceAtLevel1 (APl), FirstPrice (Pf), LastPrice (Pl), HighPrice (Ph), LowPrice (LOp), DiffLastPrice (Pd), NumberOfTrades (q), AccumulatedVolume (o), AccumulatedTradeReportVolume (Rq), AccumulatedTurnover (f), AccumulatedTradeReportTurnover (Ar), SettlementPrice (SEp), HighPriceMonth (HPm), HighPriceMonthDate (HPMd), LowPriceMonth (LPm), LowPriceMonthDate (LPMd), HighPriceYear (HPy), HighPriceYearDate (HPYd), LowPriceYear (LPy), LowPriceYearDate (LPYd), LastTradedDate (LTd), LastPaidDate (LPd), ClosingVWAP (CWp), FirstYield (Yf), LastYield (Yl), HighYield (Yh), LowYield (Yo), DiffLastYield (Yd), HighYieldMonth (HYm), LowYieldMonth (LYm), HighYieldYear (HYy), LowYieldYear (LYy), BidYieldAtLevel1 (BYl), AskYieldAtLevel1 (AYl), HighSettlementPrice (HSEp), LowSettlementPrice (LSEp), LastSettlementPrice (SEPl), DiffLastSettlementPrice (DSEp), SettlementPriceVWAP (SWp), BidCollateralPriceAtLevel1 (BCPl), AskCollateralPriceAtLevel1 (ACPl), AccumulatedNotionalValue (An), AccumulatedTradeReportNotionalValue (RAn), AccumulatedNotionalValueInValueCurrency (ANc), AccumulatedTradeReportNotionalValueInValueCurrency (RAc), AccumulatedTurnoverInValueCurrency (ATc), AccumulatedTradeReportTurnoverInValueCurrency (ARc)
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook_summary_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook_summary_message.name = "Orderbook Summary Message"

-- Codes: Orderbook Summary Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook_summary_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["Dt"] = true, ["ISOc"] = true, ["ISOt"] = true, ["d"] = true, ["BPr"] = true, ["APl"] = true, ["Pf"] = true, ["Pl"] = true, ["Ph"] = true, ["LOp"] = true, ["Pd"] = true, ["q"] = true, ["o"] = true, ["Rq"] = true, ["f"] = true, ["Ar"] = true, ["SEp"] = true, ["HPm"] = true, ["HPMd"] = true, ["LPm"] = true, ["LPMd"] = true, ["HPy"] = true, ["HPYd"] = true, ["LPy"] = true, ["LPYd"] = true, ["LTd"] = true, ["LPd"] = true, ["CWp"] = true, ["Yf"] = true, ["Yl"] = true, ["Yh"] = true, ["Yo"] = true, ["Yd"] = true, ["HYm"] = true, ["LYm"] = true, ["HYy"] = true, ["LYy"] = true, ["BYl"] = true, ["AYl"] = true, ["HSEp"] = true, ["LSEp"] = true, ["SEPl"] = true, ["DSEp"] = true, ["SWp"] = true, ["BCPl"] = true, ["ACPl"] = true, ["An"] = true, ["RAn"] = true, ["ANc"] = true, ["RAc"] = true, ["ATc"] = true, ["ARc"] = true }

-- Mandatory: Orderbook Summary Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook_summary_message.mandatory = {  }

-- Dissect: Orderbook Summary Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook_summary_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.orderbook_summary_message, buffer(offset, size), "m")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook_summary_message)
  return offset + size
end

-- Quote1 Message (Qo): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), BuyOrSell (Bs), Price (p), Yield (Py), Participant (Pt), UpdateCode (u)
bist_borsaistanbul_marketinfo_tip_v2_2_8.quote1_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.quote1_message.name = "Quote1 Message"

-- Codes: Quote1 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.quote1_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["Bs"] = true, ["p"] = true, ["Py"] = true, ["Pt"] = true, ["u"] = true }

-- Mandatory: Quote1 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.quote1_message.mandatory = {  }

-- Dissect: Quote1 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.quote1_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.quote1_message, buffer(offset, size), "Qo")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.quote1_message)
  return offset + size
end

-- Quote2 Message (Qu): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), BuyOrSell (Bs), Price (p), Yield (Py), Volume (v), Participant (Pt), UpdateCode (u)
bist_borsaistanbul_marketinfo_tip_v2_2_8.quote2_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.quote2_message.name = "Quote2 Message"

-- Codes: Quote2 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.quote2_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["Bs"] = true, ["p"] = true, ["Py"] = true, ["v"] = true, ["Pt"] = true, ["u"] = true }

-- Mandatory: Quote2 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.quote2_message.mandatory = {  }

-- Dissect: Quote2 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.quote2_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.quote2_message, buffer(offset, size), "Qu")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.quote2_message)
  return offset + size
end

-- Settlement Price Message (Sp): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), SettlementPrice (SEp), DateSettlementPrice (SPd)
bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price_message.name = "Settlement Price Message"

-- Codes: Settlement Price Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["SEp"] = true, ["SPd"] = true }

-- Mandatory: Settlement Price Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price_message.mandatory = {  }

-- Dissect: Settlement Price Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.settlement_price_message, buffer(offset, size), "Sp")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price_message)
  return offset + size
end

-- State Change Message (s): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), StateCode (Ms), StateLevel (Sl), Flush (Of)
bist_borsaistanbul_marketinfo_tip_v2_2_8.state_change_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.state_change_message.name = "State Change Message"

-- Codes: State Change Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.state_change_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["Ms"] = true, ["Sl"] = true, ["Of"] = true }

-- Mandatory: State Change Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.state_change_message.mandatory = {  }

-- Dissect: State Change Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.state_change_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.state_change_message, buffer(offset, size), "s")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.state_change_message)
  return offset + size
end

-- Supplementary Message (FIs): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), AccruedInterest (Ai), DaysToMaturity (Dm), DaysToCoupon (Dc), InflationCoefficient (Ic)
bist_borsaistanbul_marketinfo_tip_v2_2_8.supplementary_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.supplementary_message.name = "Supplementary Message"

-- Codes: Supplementary Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.supplementary_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["Ai"] = true, ["Dm"] = true, ["Dc"] = true, ["Ic"] = true }

-- Mandatory: Supplementary Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.supplementary_message.mandatory = {  }

-- Dissect: Supplementary Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.supplementary_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.supplementary_message, buffer(offset, size), "FIs")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.supplementary_message)
  return offset + size
end

-- Tradable Info Message (Ti): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), PositionIncreasingOrders (PIo), ShortSaleRestriction (SSr), LastTradingDate (LTRd), LastTradingTime (LTRt)
bist_borsaistanbul_marketinfo_tip_v2_2_8.tradable_info_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.tradable_info_message.name = "Tradable Info Message"

-- Codes: Tradable Info Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.tradable_info_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["PIo"] = true, ["SSr"] = true, ["LTRd"] = true, ["LTRt"] = true }

-- Mandatory: Tradable Info Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.tradable_info_message.mandatory = {  }

-- Dissect: Tradable Info Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.tradable_info_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tradable_info_message, buffer(offset, size), "Ti")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.tradable_info_message)
  return offset + size
end

-- Tradable Status Message (Ds): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), Status (STa)
bist_borsaistanbul_marketinfo_tip_v2_2_8.tradable_status_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.tradable_status_message.name = "Tradable Status Message"

-- Codes: Tradable Status Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.tradable_status_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["STa"] = true }

-- Mandatory: Tradable Status Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.tradable_status_message.mandatory = {  }

-- Dissect: Tradable Status Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.tradable_status_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.tradable_status_message, buffer(offset, size), "Ds")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.tradable_status_message)
  return offset + size
end

-- Trade1 Message (t): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TradeNumber (Tn), TradeCancel (TCl), TimeExec (t), TimestampAgreement (Ta), TimestampTradeCancel (TCt), TimestampDissemination (TDi), SettlementDate (Sd), Price (p), Volume (v), TradeType (Tt), TradeClass (Tc), TradeReportUpdatesLastPaid (Ul), TradeReportUpdatesHighLow (Uh), TradeReportUpdatesTurnover (Uv), LatestTrade (Lt), DateExec (Dx), DateAgreement (Da), DateDissemination (DDi), DateTradeCancel (DCt), TradeId (Ti), AggressiveParty (Ag), Yield (Py), OutsideSpread (Os), RepoInterestAmount (RIa), CompoundYield (COy), AccruedValue (Av), AmountOfCollateral (Ac), CollateralPrice (Cp), SettlementPriceAtStartDate (SPSd), SettlementPriceAtEndDate (SPEd), PrincipalValue (Pv), NotionalValue (Nv), TradeReportNotionalValue (RNv), Turnover (Tr), TradeReportTurnover (Rt), NotionalValueInValueCurrency (NVc), TradeReportNotionalValueInValueCurrency (RNc), TurnoverInValueCurrency (TRc), TradeReportTurnoverInValueCurrency (RTc), CrossTrade (CTr), TradeInfo (TIn), ClearingInfo (Ci), TradeRectify (Re), TimestampTradeRectify (TRe), DateTradeRectify (DRe)
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade1_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade1_message.name = "Trade1 Message"

-- Codes: Trade1 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade1_message.codes = { ["i"] = true, ["s"] = true, ["Tn"] = true, ["TCl"] = true, ["t"] = true, ["Ta"] = true, ["TCt"] = true, ["TDi"] = true, ["Sd"] = true, ["p"] = true, ["v"] = true, ["Tt"] = true, ["Tc"] = true, ["Ul"] = true, ["Uh"] = true, ["Uv"] = true, ["Lt"] = true, ["Dx"] = true, ["Da"] = true, ["DDi"] = true, ["DCt"] = true, ["Ti"] = true, ["Ag"] = true, ["Py"] = true, ["Os"] = true, ["RIa"] = true, ["COy"] = true, ["Av"] = true, ["Ac"] = true, ["Cp"] = true, ["SPSd"] = true, ["SPEd"] = true, ["Pv"] = true, ["Nv"] = true, ["RNv"] = true, ["Tr"] = true, ["Rt"] = true, ["NVc"] = true, ["RNc"] = true, ["TRc"] = true, ["RTc"] = true, ["CTr"] = true, ["TIn"] = true, ["Ci"] = true, ["Re"] = true, ["TRe"] = true, ["DRe"] = true }

-- Mandatory: Trade1 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade1_message.mandatory = {  }

-- Dissect: Trade1 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade1_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade1_message, buffer(offset, size), "t")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.trade1_message)
  return offset + size
end

-- Trade2 Message (d): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TradeNumber (Tn), TradeCancel (TCl), TimeExec (t), TimestampAgreement (Ta), TimestampTradeCancel (TCt), TimestampDissemination (TDi), SettlementDate (Sd), Price (p), Volume (v), TradeBuyer (Tb), TradeSeller (Ts), TradeType (Tt), TradeClass (Tc), TradeReportUpdatesLastPaid (Ul), TradeReportUpdatesHighLow (Uh), TradeReportUpdatesTurnover (Uv), LatestTrade (Lt), DateExec (Dx), DateAgreement (Da), DateDissemination (DDi), DateTradeCancel (DCt), TradeId (Ti), AggressiveParty (Ag), Yield (Py), OutsideSpread (Os), RepoInterestAmount (RIa), CompoundYield (COy), AccruedValue (Av), AmountOfCollateral (Ac), CollateralPrice (Cp), SettlementPriceAtStartDate (SPSd), SettlementPriceAtEndDate (SPEd), PrincipalValue (Pv), NotionalValue (Nv), TradeReportNotionalValue (RNv), Turnover (Tr), TradeReportTurnover (Rt), NotionalValueInValueCurrency (NVc), TradeReportNotionalValueInValueCurrency (RNc), TurnoverInValueCurrency (TRc), TradeReportTurnoverInValueCurrency (RTc), CrossTrade (CTr), TradeInfo (TIn), ClearingInfo (Ci), TradeRectify (Re), TimestampTradeRectify (TRe), DateTradeRectify (DRe)
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade2_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade2_message.name = "Trade2 Message"

-- Codes: Trade2 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade2_message.codes = { ["i"] = true, ["s"] = true, ["Tn"] = true, ["TCl"] = true, ["t"] = true, ["Ta"] = true, ["TCt"] = true, ["TDi"] = true, ["Sd"] = true, ["p"] = true, ["v"] = true, ["Tb"] = true, ["Ts"] = true, ["Tt"] = true, ["Tc"] = true, ["Ul"] = true, ["Uh"] = true, ["Uv"] = true, ["Lt"] = true, ["Dx"] = true, ["Da"] = true, ["DDi"] = true, ["DCt"] = true, ["Ti"] = true, ["Ag"] = true, ["Py"] = true, ["Os"] = true, ["RIa"] = true, ["COy"] = true, ["Av"] = true, ["Ac"] = true, ["Cp"] = true, ["SPSd"] = true, ["SPEd"] = true, ["Pv"] = true, ["Nv"] = true, ["RNv"] = true, ["Tr"] = true, ["Rt"] = true, ["NVc"] = true, ["RNc"] = true, ["TRc"] = true, ["RTc"] = true, ["CTr"] = true, ["TIn"] = true, ["Ci"] = true, ["Re"] = true, ["TRe"] = true, ["DRe"] = true }

-- Mandatory: Trade2 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade2_message.mandatory = {  }

-- Dissect: Trade2 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade2_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade2_message, buffer(offset, size), "d")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.trade2_message)
  return offset + size
end

-- Trade Statistics1 Message (u): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), LastPrice (Pl), DiffLastPrice (Pd), Flush (Of), DiffDayPer (Dd), LastYield (Yl), DiffLastYield (Yd), LastCompoundYield (CYl)
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_statistics1_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_statistics1_message.name = "Trade Statistics1 Message"

-- Codes: Trade Statistics1 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_statistics1_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["Pl"] = true, ["Pd"] = true, ["Of"] = true, ["Dd"] = true, ["Yl"] = true, ["Yd"] = true, ["CYl"] = true }

-- Mandatory: Trade Statistics1 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_statistics1_message.mandatory = {  }

-- Dissect: Trade Statistics1 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_statistics1_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_statistics1_message, buffer(offset, size), "u")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_statistics1_message)
  return offset + size
end

-- Trade Statistics2 Message (v): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), FirstPrice (Pf), LastPrice (Pl), HighPrice (Ph), LowPrice (LOp), DiffLastPrice (Pd), LastTradeReportPrice (LTRp), Flush (Of), DiffDayPer (Dd), ClosingAuctionPrice (CLp), FirstYield (Yf), LastYield (Yl), HighYield (Yh), LowYield (Yo), DiffLastYield (Yd), LastTradeReportYield (LTRy), HighSettlementPrice (HSEp), LowSettlementPrice (LSEp), LastSettlementPrice (SEPl), LastCompoundYield (CYl)
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_statistics2_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_statistics2_message.name = "Trade Statistics2 Message"

-- Codes: Trade Statistics2 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_statistics2_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["Pf"] = true, ["Pl"] = true, ["Ph"] = true, ["LOp"] = true, ["Pd"] = true, ["LTRp"] = true, ["Of"] = true, ["Dd"] = true, ["CLp"] = true, ["Yf"] = true, ["Yl"] = true, ["Yh"] = true, ["Yo"] = true, ["Yd"] = true, ["LTRy"] = true, ["HSEp"] = true, ["LSEp"] = true, ["SEPl"] = true, ["CYl"] = true }

-- Mandatory: Trade Statistics2 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_statistics2_message.mandatory = {  }

-- Dissect: Trade Statistics2 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_statistics2_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_statistics2_message, buffer(offset, size), "v")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_statistics2_message)
  return offset + size
end

-- Trade Statistics3 Message (w): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), FirstPrice (Pf), LastPrice (Pl), HighPrice (Ph), LowPrice (LOp), DiffLastPrice (Pd), NumberOfTrades (q), AccumulatedVolume (o), AccumulatedTradeReportVolume (Rq), AccumulatedTurnover (f), AccumulatedTradeReportTurnover (Ar), LastTradeReportPrice (LTRp), LastTradeReportQuantity (LTRq), Flush (Of), VWAP (Wp), VWAPDiffPer (Wd), NumberOfTradeReports (Qr), DiffDayPer (Dd), TWAP (Tp), ClosingAuctionPrice (CLp), LastVolume (Lv), RemainingQuantity (AQs), FirstYield (Yf), LastYield (Yl), HighYield (Yh), LowYield (Yo), LastTradeReportYield (LTRy), YieldVWAP (YWp), SettlementPriceVWAP (SWp), CompoundYieldVWAP (CYWp), ValidationVWAP (VWp), HighSettlementPrice (HSEp), LowSettlementPrice (LSEp), LastSettlementPrice (SEPl), LastCompoundYield (CYl), DiffLastYield (Yd), AccumulatedNotionalValue (An), AccumulatedTradeReportNotionalValue (RAn), AccumulatedNotionalValueInValueCurrency (ANc), AccumulatedTradeReportNotionalValueInValueCurrency (RAc), AccumulatedTurnoverInValueCurrency (ATc), AccumulatedTradeReportTurnoverInValueCurrency (ARc)
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_statistics3_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_statistics3_message.name = "Trade Statistics3 Message"

-- Codes: Trade Statistics3 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_statistics3_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["Pf"] = true, ["Pl"] = true, ["Ph"] = true, ["LOp"] = true, ["Pd"] = true, ["q"] = true, ["o"] = true, ["Rq"] = true, ["f"] = true, ["Ar"] = true, ["LTRp"] = true, ["LTRq"] = true, ["Of"] = true, ["Wp"] = true, ["Wd"] = true, ["Qr"] = true, ["Dd"] = true, ["Tp"] = true, ["CLp"] = true, ["Lv"] = true, ["AQs"] = true, ["Yf"] = true, ["Yl"] = true, ["Yh"] = true, ["Yo"] = true, ["LTRy"] = true, ["YWp"] = true, ["SWp"] = true, ["CYWp"] = true, ["VWp"] = true, ["HSEp"] = true, ["LSEp"] = true, ["SEPl"] = true, ["CYl"] = true, ["Yd"] = true, ["An"] = true, ["RAn"] = true, ["ANc"] = true, ["RAc"] = true, ["ATc"] = true, ["ARc"] = true }

-- Mandatory: Trade Statistics3 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_statistics3_message.mandatory = {  }

-- Dissect: Trade Statistics3 Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_statistics3_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.trade_statistics3_message, buffer(offset, size), "w")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_statistics3_message)
  return offset + size
end

-- Turnover List Update Message (l): Real-Time Messages
-- mandatory: none
-- optional: Id (i), SourceSystem (s), TimeExec (t), AccumulatedTurnover (f), AccumulatedVolume (o), UnchangedBids (Bu), PlusBids (Bp), MinusBids (Bm), UnchangedPaid (Pu), PlusPaid (Pp), MinusPaid (Pm), TotalNumberOfTrades (TNt), AccumulatedNotionalValue (An), AccumulatedTradeReportNotionalValue (RAn), AccumulatedTradeReportTurnover (Ar), AccumulatedNotionalValueInValueCurrency (ANc), AccumulatedTradeReportNotionalValueInValueCurrency (RAc), AccumulatedTurnoverInValueCurrency (ATc), AccumulatedTradeReportTurnoverInValueCurrency (ARc)
bist_borsaistanbul_marketinfo_tip_v2_2_8.turnover_list_update_message = {}
bist_borsaistanbul_marketinfo_tip_v2_2_8.turnover_list_update_message.name = "Turnover List Update Message"

-- Codes: Turnover List Update Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.turnover_list_update_message.codes = { ["i"] = true, ["s"] = true, ["t"] = true, ["f"] = true, ["o"] = true, ["Bu"] = true, ["Bp"] = true, ["Bm"] = true, ["Pu"] = true, ["Pp"] = true, ["Pm"] = true, ["TNt"] = true, ["An"] = true, ["RAn"] = true, ["Ar"] = true, ["ANc"] = true, ["RAc"] = true, ["ATc"] = true, ["ARc"] = true }

-- Mandatory: Turnover List Update Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.turnover_list_update_message.mandatory = {  }

-- Dissect: Turnover List Update Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.turnover_list_update_message.dissect = function(buffer, offset, size, packet, parent, tokens)
  parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.turnover_list_update_message, buffer(offset, size), "l")
  bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_fields(buffer, packet, parent, tokens, bist_borsaistanbul_marketinfo_tip_v2_2_8.turnover_list_update_message)
  return offset + size
end

-- Message dispatch: type token to message
bist_borsaistanbul_marketinfo_tip_v2_2_8.messages = {
  ["Ap"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.allocation_price_message,
  ["BDBu"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_business_date_message,
  ["BDCl"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_combo_leg_message,
  ["BDCv"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_clearing_venue_message,
  ["BDDe"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_derivative_message,
  ["BDDs"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_deliverable_serie_message,
  ["BDEt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_fund_message,
  ["BDFi"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_fixed_income_message,
  ["BDIm"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_index_member_message,
  ["BDIn"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_index_message,
  ["BDIp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_index_supplementary_message,
  ["BDIs"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_issuer_message,
  ["BDLi"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_list_message,
  ["BDLm"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_list_member_message,
  ["BDPm"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_precious_metals_and_diamonds_message,
  ["BDRi"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_right_message,
  ["BDSh"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_share_message,
  ["BDSm"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_sector_member_message,
  ["BDSr"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_source_message,
  ["BDTd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_non_trading_days_message,
  ["BDTe"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_table_entry_message,
  ["BDTm"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_trading_scheme_message,
  ["BDTr"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tradable_supplementary_message,
  ["BDTs"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tick_size_table_message,
  ["BDTz"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tick_size_entry_message,
  ["BDUi"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_underlying_info_message,
  ["BDm"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_market_message,
  ["BDp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_participant_message,
  ["BDs"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_sector_message,
  ["BDt"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_tradable_message,
  ["BDx"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.basic_data_exchange_message,
  ["Cl"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.call_information2_message,
  ["Ds"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.tradable_status_message,
  ["EOBd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.end_of_basic_data_message,
  ["FIs"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.supplementary_message,
  ["INd"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.index_divisor_message,
  ["Is"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.index_summary_message,
  ["Iw"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.index_weight_message,
  ["MBo"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.order_mbo_message,
  ["Mp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.margin_price_message,
  ["Oi"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.open_interest_message,
  ["Qo"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.quote1_message,
  ["Qu"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.quote2_message,
  ["Sp"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.settlement_price_message,
  ["TRh"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.corporate_action_message,
  ["Ti"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.tradable_info_message,
  ["c"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.call_information1_message,
  ["d"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade2_message,
  ["i"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.index_update_message,
  ["k"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.mbp_order_snapshot_message,
  ["l"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.turnover_list_update_message,
  ["m"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook_summary_message,
  ["n"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.news_message,
  ["o"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook1_message,
  ["p"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook2_message,
  ["q"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.market_maker_quote1_message,
  ["r"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook_reference_price_message,
  ["s"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.state_change_message,
  ["t"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade1_message,
  ["u"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_statistics1_message,
  ["v"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_statistics2_message,
  ["w"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.trade_statistics3_message,
  ["y"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.market_maker_quote2_message,
  ["z"] = bist_borsaistanbul_marketinfo_tip_v2_2_8.orderbook3_message,
}


-----------------------------------------------------------------------
-- Bist BorsaIstanbul MarketInfo Tip 2.2.8 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
bist_borsaistanbul_marketinfo_tip_v2_2_8.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
bist_borsaistanbul_marketinfo_tip_v2_2_8.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
bist_borsaistanbul_marketinfo_tip_v2_2_8.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
bist_borsaistanbul_marketinfo_tip_v2_2_8.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_marketinfo_tip_v2_2_8.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
bist_borsaistanbul_marketinfo_tip_v2_2_8.accepted_session = {}

-- Size: Accepted Session
bist_borsaistanbul_marketinfo_tip_v2_2_8.accepted_session.size = 10

-- Display: Accepted Session
bist_borsaistanbul_marketinfo_tip_v2_2_8.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
bist_borsaistanbul_marketinfo_tip_v2_2_8.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_marketinfo_tip_v2_2_8.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Client Packet Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet_type = {}

-- Size: Client Packet Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet_type.size = 1

-- Display: Client Packet Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet_type.display = function(value)
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
  end
  if value == "L" then
    return "Packet Type: Login Request Packet (L)"
  end
  if value == "U" then
    return "Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "R" then
    return "Packet Type: Client Heartbeat Packet (R)"
  end
  if value == "O" then
    return "Packet Type: Logout Request Packet (O)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Client Packet Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Debug Text
bist_borsaistanbul_marketinfo_tip_v2_2_8.debug_text = {}

-- Size: Debug Text
bist_borsaistanbul_marketinfo_tip_v2_2_8.debug_text.size = 1

-- Display: Debug Text
bist_borsaistanbul_marketinfo_tip_v2_2_8.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect: Debug Text
bist_borsaistanbul_marketinfo_tip_v2_2_8.debug_text.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_marketinfo_tip_v2_2_8.debug_text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.debug_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.debug_text, range, value, display)

  return offset + length, value
end

-- Packet Length
bist_borsaistanbul_marketinfo_tip_v2_2_8.packet_length = {}

-- Size: Packet Length
bist_borsaistanbul_marketinfo_tip_v2_2_8.packet_length.size = 2

-- Display: Packet Length
bist_borsaistanbul_marketinfo_tip_v2_2_8.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
bist_borsaistanbul_marketinfo_tip_v2_2_8.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_marketinfo_tip_v2_2_8.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
bist_borsaistanbul_marketinfo_tip_v2_2_8.password = {}

-- Size: Password
bist_borsaistanbul_marketinfo_tip_v2_2_8.password.size = 10

-- Display: Password
bist_borsaistanbul_marketinfo_tip_v2_2_8.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
bist_borsaistanbul_marketinfo_tip_v2_2_8.password.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_marketinfo_tip_v2_2_8.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.password, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
bist_borsaistanbul_marketinfo_tip_v2_2_8.reject_reason_code = {}

-- Size: Reject Reason Code
bist_borsaistanbul_marketinfo_tip_v2_2_8.reject_reason_code.size = 1

-- Display: Reject Reason Code
bist_borsaistanbul_marketinfo_tip_v2_2_8.reject_reason_code.display = function(value)
  if value == "A" then
    return "Reject Reason Code: Not Authorized (A)"
  end
  if value == "S" then
    return "Reject Reason Code: Session Not Available (S)"
  end

  return "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
bist_borsaistanbul_marketinfo_tip_v2_2_8.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_marketinfo_tip_v2_2_8.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
bist_borsaistanbul_marketinfo_tip_v2_2_8.requested_sequence_number = {}

-- Size: Requested Sequence Number
bist_borsaistanbul_marketinfo_tip_v2_2_8.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
bist_borsaistanbul_marketinfo_tip_v2_2_8.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
bist_borsaistanbul_marketinfo_tip_v2_2_8.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_marketinfo_tip_v2_2_8.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
bist_borsaistanbul_marketinfo_tip_v2_2_8.requested_session = {}

-- Size: Requested Session
bist_borsaistanbul_marketinfo_tip_v2_2_8.requested_session.size = 10

-- Display: Requested Session
bist_borsaistanbul_marketinfo_tip_v2_2_8.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
bist_borsaistanbul_marketinfo_tip_v2_2_8.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_marketinfo_tip_v2_2_8.requested_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Sequenced Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.sequenced_message = {}

-- Display: Sequenced Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.sequenced_message.display = function(value)
  return "Sequenced Message: "..value
end

-- Dissect runtime sized field: Sequenced Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.sequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.sequenced_message.display(value, packet, parent, size)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.sequenced_message, range, value, display)

  return offset + size, value
end

-- Sequenced Message Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.sequenced_message_type = {}

-- Size: Sequenced Message Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.sequenced_message_type.display = function(value)
  return "Sequenced Message Type: "..value
end

-- Dissect: Sequenced Message Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_marketinfo_tip_v2_2_8.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet_type = {}

-- Size: Server Packet Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet_type.size = 1

-- Display: Server Packet Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet_type.display = function(value)
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
  end
  if value == "A" then
    return "Packet Type: Login Accepted Packet (A)"
  end
  if value == "J" then
    return "Packet Type: Login Rejected Packet (J)"
  end
  if value == "S" then
    return "Packet Type: Sequenced Data Packet (S)"
  end
  if value == "H" then
    return "Packet Type: Server Heartbeat Packet (H)"
  end
  if value == "Z" then
    return "Packet Type: End Of Session Packet (Z)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.unsequenced_message = {}

-- Display: Unsequenced Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
bist_borsaistanbul_marketinfo_tip_v2_2_8.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Unsequenced Message Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
bist_borsaistanbul_marketinfo_tip_v2_2_8.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_marketinfo_tip_v2_2_8.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
bist_borsaistanbul_marketinfo_tip_v2_2_8.username = {}

-- Size: Username
bist_borsaistanbul_marketinfo_tip_v2_2_8.username.size = 6

-- Display: Username
bist_borsaistanbul_marketinfo_tip_v2_2_8.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
bist_borsaistanbul_marketinfo_tip_v2_2_8.username.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_marketinfo_tip_v2_2_8.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Bist BorsaIstanbul MarketInfo Tip 2.2.8
-----------------------------------------------------------------------

-- End Of Session
bist_borsaistanbul_marketinfo_tip_v2_2_8.end_of_session = {}

-- Display: End Of Session
bist_borsaistanbul_marketinfo_tip_v2_2_8.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
bist_borsaistanbul_marketinfo_tip_v2_2_8.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
bist_borsaistanbul_marketinfo_tip_v2_2_8.server_heartbeat = {}

-- Display: Server Heartbeat
bist_borsaistanbul_marketinfo_tip_v2_2_8.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
bist_borsaistanbul_marketinfo_tip_v2_2_8.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Sequenced Data Packet: tip message
bist_borsaistanbul_marketinfo_tip_v2_2_8.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Dissect runtime sized group: Sequenced Data Packet, as a tip message
bist_borsaistanbul_marketinfo_tip_v2_2_8.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  local size = bist_borsaistanbul_marketinfo_tip_v2_2_8.sequenced_data_packet.size(buffer, offset)
  local tokens = bist_borsaistanbul_marketinfo_tip_v2_2_8.tip_tokens(buffer, offset, size)
  if #tokens == 0 then
    return offset + size
  end

  local type = buffer(tokens[1].offset, tokens[1].length):string()
  local message = bist_borsaistanbul_marketinfo_tip_v2_2_8.messages[type]
  if message == nil then
    local item = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.sequenced_data_packet, buffer(offset, size))
    item:add_proto_expert_info(bist_borsaistanbul_marketinfo_tip_v2_2_8.experts.unknown_message, "Unknown tip message type: "..type)
  else
    message.dissect(buffer, offset, size, packet, parent, tokens)
  end
  packet.cols.info:append(type.." ")

  return offset + size, type
end

-- Login Rejected Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.login_rejected_packet = {}

-- Size: Login Rejected Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.login_rejected_packet.size =
  bist_borsaistanbul_marketinfo_tip_v2_2_8.reject_reason_code.size

-- Display: Login Rejected Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = bist_borsaistanbul_marketinfo_tip_v2_2_8.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.login_rejected_packet, buffer(offset, 0))
    local index = bist_borsaistanbul_marketinfo_tip_v2_2_8.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_marketinfo_tip_v2_2_8.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.login_accepted_packet = {}

-- Size: Login Accepted Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.login_accepted_packet.size =
  bist_borsaistanbul_marketinfo_tip_v2_2_8.accepted_session.size + 
  bist_borsaistanbul_marketinfo_tip_v2_2_8.accepted_sequence_number.size

-- Display: Login Accepted Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = bist_borsaistanbul_marketinfo_tip_v2_2_8.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = bist_borsaistanbul_marketinfo_tip_v2_2_8.accepted_sequence_number.dissect(buffer, index, packet, parent)

  -- Store Accepted Sequence Number Value
  bist_borsaistanbul_marketinfo_tip_v2_2_8.accepted_sequence_number.current = accepted_sequence_number

  if not packet.visited then
    bist_borsaistanbul_marketinfo_tip_v2_2_8.conversation.current.accepted_sequence_number.last = accepted_sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.login_accepted_packet, buffer(offset, 0))
    local index = bist_borsaistanbul_marketinfo_tip_v2_2_8.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_marketinfo_tip_v2_2_8.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.debug_packet = {}

-- Size: Debug Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.debug_packet.size =
  bist_borsaistanbul_marketinfo_tip_v2_2_8.debug_text.size

-- Display: Debug Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Debug Text: 1 Byte Ascii String
  index, debug_text = bist_borsaistanbul_marketinfo_tip_v2_2_8.debug_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.debug_packet, buffer(offset, 0))
    local index = bist_borsaistanbul_marketinfo_tip_v2_2_8.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_marketinfo_tip_v2_2_8.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
bist_borsaistanbul_marketinfo_tip_v2_2_8.server_payload = {}

-- Dissect: Server Payload
bist_borsaistanbul_marketinfo_tip_v2_2_8.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return bist_borsaistanbul_marketinfo_tip_v2_2_8.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return bist_borsaistanbul_marketinfo_tip_v2_2_8.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return bist_borsaistanbul_marketinfo_tip_v2_2_8.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return bist_borsaistanbul_marketinfo_tip_v2_2_8.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if server_packet_type == "H" then
    return bist_borsaistanbul_marketinfo_tip_v2_2_8.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if server_packet_type == "Z" then
    return bist_borsaistanbul_marketinfo_tip_v2_2_8.end_of_session.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet_header = {}

-- Size: Server Packet Header
bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet_header.size =
  bist_borsaistanbul_marketinfo_tip_v2_2_8.packet_length.size + 
  bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet_type.size

-- Display: Server Packet Header
bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = bist_borsaistanbul_marketinfo_tip_v2_2_8.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.server_packet_header, buffer(offset, 0))
    local index = bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = bist_borsaistanbul_marketinfo_tip_v2_2_8.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = bist_borsaistanbul_marketinfo_tip_v2_2_8.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bist_borsaistanbul_marketinfo_tip_v2_2_8.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet_header.size then
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
bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet = {}

-- Verify required size of Tcp packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet.requiredsize = function(buffer)
  return buffer:len() >= bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet_header.size
end

-- Dissect Server Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = bist_borsaistanbul_marketinfo_tip_v2_2_8.conversation.data(packet)
  if not packet.visited then
    data.accepted_sequence_number.frames[packet.number] = data.accepted_sequence_number.last
  end
  bist_borsaistanbul_marketinfo_tip_v2_2_8.accepted_sequence_number.current = data.accepted_sequence_number.frames[packet.number]
  bist_borsaistanbul_marketinfo_tip_v2_2_8.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = bist_borsaistanbul_marketinfo_tip_v2_2_8.server_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_bin_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end

-- Logout Request
bist_borsaistanbul_marketinfo_tip_v2_2_8.logout_request = {}

-- Display: Logout Request
bist_borsaistanbul_marketinfo_tip_v2_2_8.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
bist_borsaistanbul_marketinfo_tip_v2_2_8.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
bist_borsaistanbul_marketinfo_tip_v2_2_8.client_heartbeat = {}

-- Display: Client Heartbeat
bist_borsaistanbul_marketinfo_tip_v2_2_8.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
bist_borsaistanbul_marketinfo_tip_v2_2_8.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unsequenced Data Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = bist_borsaistanbul_marketinfo_tip_v2_2_8.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = bist_borsaistanbul_marketinfo_tip_v2_2_8.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = bist_borsaistanbul_marketinfo_tip_v2_2_8.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = bist_borsaistanbul_marketinfo_tip_v2_2_8.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bist_borsaistanbul_marketinfo_tip_v2_2_8.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.login_request_packet = {}

-- Size: Login Request Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.login_request_packet.size =
  bist_borsaistanbul_marketinfo_tip_v2_2_8.username.size + 
  bist_borsaistanbul_marketinfo_tip_v2_2_8.password.size + 
  bist_borsaistanbul_marketinfo_tip_v2_2_8.requested_session.size + 
  bist_borsaistanbul_marketinfo_tip_v2_2_8.requested_sequence_number.size

-- Display: Login Request Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = bist_borsaistanbul_marketinfo_tip_v2_2_8.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = bist_borsaistanbul_marketinfo_tip_v2_2_8.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = bist_borsaistanbul_marketinfo_tip_v2_2_8.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = bist_borsaistanbul_marketinfo_tip_v2_2_8.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.login_request_packet, buffer(offset, 0))
    local index = bist_borsaistanbul_marketinfo_tip_v2_2_8.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_marketinfo_tip_v2_2_8.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
bist_borsaistanbul_marketinfo_tip_v2_2_8.client_payload = {}

-- Dissect: Client Payload
bist_borsaistanbul_marketinfo_tip_v2_2_8.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return bist_borsaistanbul_marketinfo_tip_v2_2_8.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return bist_borsaistanbul_marketinfo_tip_v2_2_8.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return bist_borsaistanbul_marketinfo_tip_v2_2_8.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if client_packet_type == "R" then
    return bist_borsaistanbul_marketinfo_tip_v2_2_8.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if client_packet_type == "O" then
    return bist_borsaistanbul_marketinfo_tip_v2_2_8.logout_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet_header = {}

-- Size: Client Packet Header
bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet_header.size =
  bist_borsaistanbul_marketinfo_tip_v2_2_8.packet_length.size + 
  bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet_type.size

-- Display: Client Packet Header
bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = bist_borsaistanbul_marketinfo_tip_v2_2_8.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.client_packet_header, buffer(offset, 0))
    local index = bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = bist_borsaistanbul_marketinfo_tip_v2_2_8.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = bist_borsaistanbul_marketinfo_tip_v2_2_8.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = bist_borsaistanbul_marketinfo_tip_v2_2_8.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bist_borsaistanbul_marketinfo_tip_v2_2_8.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet_header.size then
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
bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet = {}

-- Verify required size of Tcp packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet.requiredsize = function(buffer)
  return buffer:len() >= bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet_header.size
end

-- Dissect Client Packet
bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = bist_borsaistanbul_marketinfo_tip_v2_2_8.client_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_bin_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.init()
  bist_borsaistanbul_marketinfo_tip_v2_2_8.accepted_sequence_number.current = nil
  bist_borsaistanbul_marketinfo_tip_v2_2_8.conversation.current = nil
  bist_borsaistanbul_marketinfo_tip_v2_2_8.conversation.flows = {}
end

-- Connection roles for Bist BorsaIstanbul MarketInfo Tip 2.2.8: Client is the initiator, Server is the acceptor
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
bist_borsaistanbul_marketinfo_tip_v2_2_8.role = function(packet)
  if omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.prefs.acceptor_port

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

  if omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.prefs.swap_sides then
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
bist_borsaistanbul_marketinfo_tip_v2_2_8.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Bist BorsaIstanbul MarketInfo Tip 2.2.8
function omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.name

  -- Dissect protocol
  local protocol = parent:add(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8, buffer(), omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.description, "("..buffer:len().." Bytes)")

  local role = bist_borsaistanbul_marketinfo_tip_v2_2_8.role(packet)

  if role == "initiator" then
    return bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet.dissect(buffer, packet, protocol)
  end

  return bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet.fingerprint = function(buffer)
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
bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet.fingerprint = function(buffer)
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

-- Dissector Heuristic for Bist BorsaIstanbul MarketInfo Tip 2.2.8 (Tcp)
local function omi_bist_borsaistanbul_marketinfo_tip_v2_2_8_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not bist_borsaistanbul_marketinfo_tip_v2_2_8.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bist_borsaistanbul_marketinfo_tip_v2_2_8
  omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Bist BorsaIstanbul MarketInfo Tip 2.2.8 (Tcp)
local function omi_bist_borsaistanbul_marketinfo_tip_v2_2_8_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not bist_borsaistanbul_marketinfo_tip_v2_2_8.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bist_borsaistanbul_marketinfo_tip_v2_2_8
  omi_bist_borsaistanbul_marketinfo_tip_v2_2_8.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Bist BorsaIstanbul MarketInfo Tip 2.2.8 (Tcp): apply the heuristic of the sender's connection role
local function omi_bist_borsaistanbul_marketinfo_tip_v2_2_8_tcp_heuristic(buffer, packet, parent)
  local role = bist_borsaistanbul_marketinfo_tip_v2_2_8.role(packet)
  local initiator = omi_bist_borsaistanbul_marketinfo_tip_v2_2_8_tcp_initiator_heuristic
  local acceptor = omi_bist_borsaistanbul_marketinfo_tip_v2_2_8_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  bist_borsaistanbul_marketinfo_tip_v2_2_8.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  bist_borsaistanbul_marketinfo_tip_v2_2_8.swap(packet)

  return false
end

-- Register Heuristics for Bist BorsaIstanbul MarketInfo Tip 2.2.8
omi_bist_borsaistanbul_marketinfo_tip_v2_2_8:register_heuristic("tcp", omi_bist_borsaistanbul_marketinfo_tip_v2_2_8_tcp_heuristic)

-- Register Bist BorsaIstanbul MarketInfo Tip 2.2.8 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_bist_borsaistanbul_marketinfo_tip_v2_2_8)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Borsa İstanbul A.Ş.
--   Version: 2.2.8
--   Date: Monday, June 22, 2026
--   Specification: soupbintcp-protocol-specification.pdf
--
-- Script:
--   Generator: 0.1.0.0
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
