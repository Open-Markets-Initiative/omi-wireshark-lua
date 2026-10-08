-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq IseOptions Otto Ouch 3.0.0 Protocol
local omi_nasdaq_iseoptions_otto_ouch_v3_0_0 = Proto("Omi.Nasdaq.IseOptions.Otto.Ouch.v3.0.0", "Nasdaq IseOptions Otto Ouch 3.0.0")

-- Protocol table
local nasdaq_iseoptions_otto_ouch_v3_0_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq IseOptions Otto Ouch 3.0.0 Fields
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.iseoptions.otto.ouch.v3.0.0.acceptedsequencenumber", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.iseoptions.otto.ouch.v3.0.0.acceptedsession", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.alloc_qty = ProtoField.new("Alloc Qty", "nasdaq.iseoptions.otto.ouch.v3.0.0.allocqty", ftypes.UINT32)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.alo_inst = ProtoField.new("Alo Inst", "nasdaq.iseoptions.otto.ouch.v3.0.0.aloinst", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.auction_alloc_pct = ProtoField.new("Auction Alloc Pct", "nasdaq.iseoptions.otto.ouch.v3.0.0.auctionallocpct", ftypes.UINT8)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.auction_duration = ProtoField.new("Auction Duration", "nasdaq.iseoptions.otto.ouch.v3.0.0.auctionduration", ftypes.UINT32)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.auction_event = ProtoField.new("Auction Event", "nasdaq.iseoptions.otto.ouch.v3.0.0.auctionevent", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.iseoptions.otto.ouch.v3.0.0.auctionid", ftypes.UINT32)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.iseoptions.otto.ouch.v3.0.0.auctiontype", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.best_response_price = ProtoField.new("Best Response Price", "nasdaq.iseoptions.otto.ouch.v3.0.0.bestresponseprice", ftypes.DOUBLE)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.best_response_size = ProtoField.new("Best Response Size", "nasdaq.iseoptions.otto.ouch.v3.0.0.bestresponsesize", ftypes.UINT32)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.cancel_reason = ProtoField.new("Cancel Reason", "nasdaq.iseoptions.otto.ouch.v3.0.0.cancelreason", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.capacity = ProtoField.new("Capacity", "nasdaq.iseoptions.otto.ouch.v3.0.0.capacity", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "nasdaq.iseoptions.otto.ouch.v3.0.0.clordid", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.cl_request_id = ProtoField.new("Cl Request Id", "nasdaq.iseoptions.otto.ouch.v3.0.0.clrequestid", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.clearing_account = ProtoField.new("Clearing Account", "nasdaq.iseoptions.otto.ouch.v3.0.0.clearingaccount", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.iseoptions.otto.ouch.v3.0.0.clientpackettype", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.closing_only = ProtoField.new("Closing Only", "nasdaq.iseoptions.otto.ouch.v3.0.0.closingonly", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.closing_type = ProtoField.new("Closing Type", "nasdaq.iseoptions.otto.ouch.v3.0.0.closingtype", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.cmta = ProtoField.new("Cmta", "nasdaq.iseoptions.otto.ouch.v3.0.0.cmta", ftypes.UINT32)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.complex_directory_legs = ProtoField.new("Complex Directory Legs", "nasdaq.iseoptions.otto.ouch.v3.0.0.complexdirectorylegs", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.complex_instrument_legs = ProtoField.new("Complex Instrument Legs", "nasdaq.iseoptions.otto.ouch.v3.0.0.complexinstrumentlegs", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_capacity = ProtoField.new("Contra Capacity", "nasdaq.iseoptions.otto.ouch.v3.0.0.contracapacity", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_cl_ord_id = ProtoField.new("Contra Cl Ord Id", "nasdaq.iseoptions.otto.ouch.v3.0.0.contraclordid", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_clearing_account = ProtoField.new("Contra Clearing Account", "nasdaq.iseoptions.otto.ouch.v3.0.0.contraclearingaccount", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_cmta = ProtoField.new("Contra Cmta", "nasdaq.iseoptions.otto.ouch.v3.0.0.contracmta", ftypes.UINT32)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_cust_acct = ProtoField.new("Contra Cust Acct", "nasdaq.iseoptions.otto.ouch.v3.0.0.contracustacct", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_occ_account = ProtoField.new("Contra Occ Account", "nasdaq.iseoptions.otto.ouch.v3.0.0.contraoccaccount", ftypes.UINT32)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_order_id = ProtoField.new("Contra Order Id", "nasdaq.iseoptions.otto.ouch.v3.0.0.contraorderid", ftypes.UINT64)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_order_type = ProtoField.new("Contra Order Type", "nasdaq.iseoptions.otto.ouch.v3.0.0.contraordertype", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_position_effect_mask = ProtoField.new("Contra Position Effect Mask", "nasdaq.iseoptions.otto.ouch.v3.0.0.contrapositioneffectmask", ftypes.UINT16)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_price = ProtoField.new("Contra Price", "nasdaq.iseoptions.otto.ouch.v3.0.0.contraprice", ftypes.DOUBLE)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_quantity = ProtoField.new("Contra Quantity", "nasdaq.iseoptions.otto.ouch.v3.0.0.contraquantity", ftypes.UINT32)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_stock_capacity = ProtoField.new("Contra Stock Capacity", "nasdaq.iseoptions.otto.ouch.v3.0.0.contrastockcapacity", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_stock_leg_mpid = ProtoField.new("Contra Stock Leg Mpid", "nasdaq.iseoptions.otto.ouch.v3.0.0.contrastocklegmpid", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_stock_leg_short_sale = ProtoField.new("Contra Stock Leg Short Sale", "nasdaq.iseoptions.otto.ouch.v3.0.0.contrastocklegshortsale", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contract_size = ProtoField.new("Contract Size", "nasdaq.iseoptions.otto.ouch.v3.0.0.contractsize", ftypes.UINT16)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.cross_id = ProtoField.new("Cross Id", "nasdaq.iseoptions.otto.ouch.v3.0.0.crossid", ftypes.UINT32)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.iseoptions.otto.ouch.v3.0.0.crosstype", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.cust_acct = ProtoField.new("Cust Acct", "nasdaq.iseoptions.otto.ouch.v3.0.0.custacct", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.debug_text = ProtoField.new("Debug Text", "nasdaq.iseoptions.otto.ouch.v3.0.0.debugtext", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.disclosure_mask = ProtoField.new("Disclosure Mask", "nasdaq.iseoptions.otto.ouch.v3.0.0.disclosuremask", ftypes.UINT8)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.display_high_qty = ProtoField.new("Display High Qty", "nasdaq.iseoptions.otto.ouch.v3.0.0.displayhighqty", ftypes.UINT16)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.display_low_qty = ProtoField.new("Display Low Qty", "nasdaq.iseoptions.otto.ouch.v3.0.0.displaylowqty", ftypes.UINT16)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.display_method = ProtoField.new("Display Method", "nasdaq.iseoptions.otto.ouch.v3.0.0.displaymethod", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.display_qty = ProtoField.new("Display Qty", "nasdaq.iseoptions.otto.ouch.v3.0.0.displayqty", ftypes.UINT16)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.display_when = ProtoField.new("Display When", "nasdaq.iseoptions.otto.ouch.v3.0.0.displaywhen", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.effective_time = ProtoField.new("Effective Time", "nasdaq.iseoptions.otto.ouch.v3.0.0.effectivetime", ftypes.UINT64)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.iseoptions.otto.ouch.v3.0.0.eventcode", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.event_source = ProtoField.new("Event Source", "nasdaq.iseoptions.otto.ouch.v3.0.0.eventsource", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.exec_flag = ProtoField.new("Exec Flag", "nasdaq.iseoptions.otto.ouch.v3.0.0.execflag", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.expir_day = ProtoField.new("Expir Day", "nasdaq.iseoptions.otto.ouch.v3.0.0.expirday", ftypes.UINT8)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.expir_mon = ProtoField.new("Expir Mon", "nasdaq.iseoptions.otto.ouch.v3.0.0.expirmon", ftypes.UINT8)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.expir_year = ProtoField.new("Expir Year", "nasdaq.iseoptions.otto.ouch.v3.0.0.expiryear", ftypes.UINT8)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.firm_id = ProtoField.new("Firm Id", "nasdaq.iseoptions.otto.ouch.v3.0.0.firmid", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.flex_dac_legs = ProtoField.new("Flex Dac Legs", "nasdaq.iseoptions.otto.ouch.v3.0.0.flexdaclegs", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.flex_leg_prices = ProtoField.new("Flex Leg Prices", "nasdaq.iseoptions.otto.ouch.v3.0.0.flexlegprices", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.flex_legs = ProtoField.new("Flex Legs", "nasdaq.iseoptions.otto.ouch.v3.0.0.flexlegs", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.instrument_id = ProtoField.new("Instrument Id", "nasdaq.iseoptions.otto.ouch.v3.0.0.instrumentid", ftypes.UINT32)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.instrument_type = ProtoField.new("Instrument Type", "nasdaq.iseoptions.otto.ouch.v3.0.0.instrumenttype", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.iso = ProtoField.new("Iso", "nasdaq.iseoptions.otto.ouch.v3.0.0.iso", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.kill_action = ProtoField.new("Kill Action", "nasdaq.iseoptions.otto.ouch.v3.0.0.killaction", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.leg_id = ProtoField.new("Leg Id", "nasdaq.iseoptions.otto.ouch.v3.0.0.legid", ftypes.UINT8)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.leg_instrument_id = ProtoField.new("Leg Instrument Id", "nasdaq.iseoptions.otto.ouch.v3.0.0.leginstrumentid", ftypes.UINT32)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.leg_prices = ProtoField.new("Leg Prices", "nasdaq.iseoptions.otto.ouch.v3.0.0.legprices", ftypes.DOUBLE)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.leg_ratio = ProtoField.new("Leg Ratio", "nasdaq.iseoptions.otto.ouch.v3.0.0.legratio", ftypes.UINT16)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.leg_side = ProtoField.new("Leg Side", "nasdaq.iseoptions.otto.ouch.v3.0.0.legside", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.leg_type = ProtoField.new("Leg Type", "nasdaq.iseoptions.otto.ouch.v3.0.0.legtype", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.liquidity_ind = ProtoField.new("Liquidity Ind", "nasdaq.iseoptions.otto.ouch.v3.0.0.liquidityind", ftypes.UINT8)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.match_id = ProtoField.new("Match Id", "nasdaq.iseoptions.otto.ouch.v3.0.0.matchid", ftypes.UINT32)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.min_qty = ProtoField.new("Min Qty", "nasdaq.iseoptions.otto.ouch.v3.0.0.minqty", ftypes.UINT32)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.mpv = ProtoField.new("Mpv", "nasdaq.iseoptions.otto.ouch.v3.0.0.mpv", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.num_canceled = ProtoField.new("Num Canceled", "nasdaq.iseoptions.otto.ouch.v3.0.0.numcanceled", ftypes.UINT32)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.num_legs = ProtoField.new("Num Legs", "nasdaq.iseoptions.otto.ouch.v3.0.0.numlegs", ftypes.UINT8)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.num_pending = ProtoField.new("Num Pending", "nasdaq.iseoptions.otto.ouch.v3.0.0.numpending", ftypes.UINT32)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.num_splits = ProtoField.new("Num Splits", "nasdaq.iseoptions.otto.ouch.v3.0.0.numsplits", ftypes.UINT16)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.number_of_flex_dac_legs = ProtoField.new("Number Of Flex Dac Legs", "nasdaq.iseoptions.otto.ouch.v3.0.0.numberofflexdaclegs", ftypes.UINT8)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.number_of_flex_legs = ProtoField.new("Number Of Flex Legs", "nasdaq.iseoptions.otto.ouch.v3.0.0.numberofflexlegs", ftypes.UINT8)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.occ_account = ProtoField.new("Occ Account", "nasdaq.iseoptions.otto.ouch.v3.0.0.occaccount", ftypes.UINT32)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.open_close = ProtoField.new("Open Close", "nasdaq.iseoptions.otto.ouch.v3.0.0.openclose", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.option_type = ProtoField.new("Option Type", "nasdaq.iseoptions.otto.ouch.v3.0.0.optiontype", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.ord_exec_type = ProtoField.new("Ord Exec Type", "nasdaq.iseoptions.otto.ouch.v3.0.0.ordexectype", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.order_capacity = ProtoField.new("Order Capacity", "nasdaq.iseoptions.otto.ouch.v3.0.0.ordercapacity", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.order_id = ProtoField.new("Order Id", "nasdaq.iseoptions.otto.ouch.v3.0.0.orderid", ftypes.UINT64)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.order_type = ProtoField.new("Order Type", "nasdaq.iseoptions.otto.ouch.v3.0.0.ordertype", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "nasdaq.iseoptions.otto.ouch.v3.0.0.origclordid", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.orig_order_id = ProtoField.new("Orig Order Id", "nasdaq.iseoptions.otto.ouch.v3.0.0.origorderid", ftypes.UINT64)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.iseoptions.otto.ouch.v3.0.0.packetlength", ftypes.UINT16)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.password = ProtoField.new("Password", "nasdaq.iseoptions.otto.ouch.v3.0.0.password", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.pending_msg_type = ProtoField.new("Pending Msg Type", "nasdaq.iseoptions.otto.ouch.v3.0.0.pendingmsgtype", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.pending_reason = ProtoField.new("Pending Reason", "nasdaq.iseoptions.otto.ouch.v3.0.0.pendingreason", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.position_effect_mask = ProtoField.new("Position Effect Mask", "nasdaq.iseoptions.otto.ouch.v3.0.0.positioneffectmask", ftypes.UINT16)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.preferred_party = ProtoField.new("Preferred Party", "nasdaq.iseoptions.otto.ouch.v3.0.0.preferredparty", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.price = ProtoField.new("Price", "nasdaq.iseoptions.otto.ouch.v3.0.0.price", ftypes.DOUBLE)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.price_protection = ProtoField.new("Price Protection", "nasdaq.iseoptions.otto.ouch.v3.0.0.priceprotection", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_capacity = ProtoField.new("Primary Capacity", "nasdaq.iseoptions.otto.ouch.v3.0.0.primarycapacity", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_cl_ord_id = ProtoField.new("Primary Cl Ord Id", "nasdaq.iseoptions.otto.ouch.v3.0.0.primaryclordid", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_clearing_account = ProtoField.new("Primary Clearing Account", "nasdaq.iseoptions.otto.ouch.v3.0.0.primaryclearingaccount", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_cmta = ProtoField.new("Primary Cmta", "nasdaq.iseoptions.otto.ouch.v3.0.0.primarycmta", ftypes.UINT32)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_cust_acct = ProtoField.new("Primary Cust Acct", "nasdaq.iseoptions.otto.ouch.v3.0.0.primarycustacct", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_occ_account = ProtoField.new("Primary Occ Account", "nasdaq.iseoptions.otto.ouch.v3.0.0.primaryoccaccount", ftypes.UINT32)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_order_id = ProtoField.new("Primary Order Id", "nasdaq.iseoptions.otto.ouch.v3.0.0.primaryorderid", ftypes.UINT64)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_position_effect_mask = ProtoField.new("Primary Position Effect Mask", "nasdaq.iseoptions.otto.ouch.v3.0.0.primarypositioneffectmask", ftypes.UINT16)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_price = ProtoField.new("Primary Price", "nasdaq.iseoptions.otto.ouch.v3.0.0.primaryprice", ftypes.DOUBLE)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_quantity = ProtoField.new("Primary Quantity", "nasdaq.iseoptions.otto.ouch.v3.0.0.primaryquantity", ftypes.UINT32)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_stock_capacity = ProtoField.new("Primary Stock Capacity", "nasdaq.iseoptions.otto.ouch.v3.0.0.primarystockcapacity", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_stock_leg_mpid = ProtoField.new("Primary Stock Leg Mpid", "nasdaq.iseoptions.otto.ouch.v3.0.0.primarystocklegmpid", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_stock_leg_short_sale = ProtoField.new("Primary Stock Leg Short Sale", "nasdaq.iseoptions.otto.ouch.v3.0.0.primarystocklegshortsale", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.product_id = ProtoField.new("Product Id", "nasdaq.iseoptions.otto.ouch.v3.0.0.productid", ftypes.UINT16)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.product_name = ProtoField.new("Product Name", "nasdaq.iseoptions.otto.ouch.v3.0.0.productname", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.quantity = ProtoField.new("Quantity", "nasdaq.iseoptions.otto.ouch.v3.0.0.quantity", ftypes.UINT32)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.quantity_short = ProtoField.new("Quantity Short", "nasdaq.iseoptions.otto.ouch.v3.0.0.quantityshort", ftypes.UINT16)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.ref_match_id = ProtoField.new("Ref Match Id", "nasdaq.iseoptions.otto.ouch.v3.0.0.refmatchid", ftypes.UINT32)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.reject_code = ProtoField.new("Reject Code", "nasdaq.iseoptions.otto.ouch.v3.0.0.rejectcode", ftypes.UINT16)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.reject_msg_type = ProtoField.new("Reject Msg Type", "nasdaq.iseoptions.otto.ouch.v3.0.0.rejectmsgtype", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.iseoptions.otto.ouch.v3.0.0.rejectreasoncode", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.iseoptions.otto.ouch.v3.0.0.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.iseoptions.otto.ouch.v3.0.0.requestedsession", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.reserved_1 = ProtoField.new("Reserved 1", "nasdaq.iseoptions.otto.ouch.v3.0.0.reserved1", ftypes.BYTES)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.reserved_16 = ProtoField.new("Reserved 16", "nasdaq.iseoptions.otto.ouch.v3.0.0.reserved16", ftypes.BYTES)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.reserved_8 = ProtoField.new("Reserved 8", "nasdaq.iseoptions.otto.ouch.v3.0.0.reserved8", ftypes.BYTES)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.reserved_9 = ProtoField.new("Reserved 9", "nasdaq.iseoptions.otto.ouch.v3.0.0.reserved9", ftypes.BYTES)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.scope = ProtoField.new("Scope", "nasdaq.iseoptions.otto.ouch.v3.0.0.scope", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.iseoptions.otto.ouch.v3.0.0.securitysymbol", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.iseoptions.otto.ouch.v3.0.0.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.iseoptions.otto.ouch.v3.0.0.serverpackettype", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.side = ProtoField.new("Side", "nasdaq.iseoptions.otto.ouch.v3.0.0.side", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.stock_capacity = ProtoField.new("Stock Capacity", "nasdaq.iseoptions.otto.ouch.v3.0.0.stockcapacity", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.stock_leg_mpid = ProtoField.new("Stock Leg Mpid", "nasdaq.iseoptions.otto.ouch.v3.0.0.stocklegmpid", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.stock_leg_short_sale = ProtoField.new("Stock Leg Short Sale", "nasdaq.iseoptions.otto.ouch.v3.0.0.stocklegshortsale", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.stock_venue = ProtoField.new("Stock Venue", "nasdaq.iseoptions.otto.ouch.v3.0.0.stockvenue", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.strike_price = ProtoField.new("Strike Price", "nasdaq.iseoptions.otto.ouch.v3.0.0.strikeprice", ftypes.DOUBLE)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.subscription = ProtoField.new("Subscription", "nasdaq.iseoptions.otto.ouch.v3.0.0.subscription", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.subversion = ProtoField.new("Subversion", "nasdaq.iseoptions.otto.ouch.v3.0.0.subversion", ftypes.UINT8)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.target_firm_id = ProtoField.new("Target Firm Id", "nasdaq.iseoptions.otto.ouch.v3.0.0.targetfirmid", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.tif = ProtoField.new("Tif", "nasdaq.iseoptions.otto.ouch.v3.0.0.tif", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.iseoptions.otto.ouch.v3.0.0.timestamp", ftypes.UINT64)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.tradable = ProtoField.new("Tradable", "nasdaq.iseoptions.otto.ouch.v3.0.0.tradable", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.trade_splits = ProtoField.new("Trade Splits", "nasdaq.iseoptions.otto.ouch.v3.0.0.tradesplits", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.trading_state = ProtoField.new("Trading State", "nasdaq.iseoptions.otto.ouch.v3.0.0.tradingstate", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.trans_type = ProtoField.new("Trans Type", "nasdaq.iseoptions.otto.ouch.v3.0.0.transtype", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.iseoptions.otto.ouch.v3.0.0.underlyingsymbol", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.iseoptions.otto.ouch.v3.0.0.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.username = ProtoField.new("Username", "nasdaq.iseoptions.otto.ouch.v3.0.0.username", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.version = ProtoField.new("Version", "nasdaq.iseoptions.otto.ouch.v3.0.0.version", ftypes.UINT8)

-- Nasdaq IseOptions Otto Ouch 3.0.0 Framing
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.client_packet = ProtoField.new("Tcp Packet", "nasdaq.iseoptions.otto.ouch.v3.0.0.clientpacket", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.client_packet_header = ProtoField.new("Tcp Packet Header", "nasdaq.iseoptions.otto.ouch.v3.0.0.clientpacketheader", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.iseoptions.otto.ouch.v3.0.0.clientsoupbintcppacket", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.server_packet = ProtoField.new("Tcp Packet", "nasdaq.iseoptions.otto.ouch.v3.0.0.serverpacket", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.server_packet_header = ProtoField.new("Tcp Packet Header", "nasdaq.iseoptions.otto.ouch.v3.0.0.serverpacketheader", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.iseoptions.otto.ouch.v3.0.0.serversoupbintcppacket", ftypes.STRING)

-- Nasdaq IseOptions Otto 3.0.0 Application Messages
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.add_complex_instrument_message = ProtoField.new("Add Complex Instrument Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.addcomplexinstrumentmessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.add_complex_instrument_response_message = ProtoField.new("Add Complex Instrument Response Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.addcomplexinstrumentresponsemessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.auctionnotificationmessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.cancelordermessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.complex_instrument_directory_message = ProtoField.new("Complex Instrument Directory Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.complexinstrumentdirectorymessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.cross_order_accepted_message = ProtoField.new("Cross Order Accepted Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.crossorderacceptedmessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.instrument_trading_action_message = ProtoField.new("Instrument Trading Action Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.instrumenttradingactionmessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.mass_cancel_message = ProtoField.new("Mass Cancel Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.masscancelmessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.mass_cancel_response_message = ProtoField.new("Mass Cancel Response Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.masscancelresponsemessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.member_kill_switch_notification_message = ProtoField.new("Member Kill Switch Notification Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.memberkillswitchnotificationmessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.member_kill_switch_request_message = ProtoField.new("Member Kill Switch Request Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.memberkillswitchrequestmessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.modify_trade_message = ProtoField.new("Modify Trade Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.modifytrademessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.modify_trade_response_message = ProtoField.new("Modify Trade Response Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.modifytraderesponsemessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.new_cross_order_message = ProtoField.new("New Cross Order Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.newcrossordermessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.new_order_long_form_message = ProtoField.new("New Order Long Form Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.neworderlongformmessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.new_order_short_form_message = ProtoField.new("New Order Short Form Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.newordershortformmessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.order_accepted_long_form_message = ProtoField.new("Order Accepted Long Form Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.orderacceptedlongformmessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.order_accepted_short_form_message = ProtoField.new("Order Accepted Short Form Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.orderacceptedshortformmessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.order_canceled_message = ProtoField.new("Order Canceled Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.ordercanceledmessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.order_executed_message = ProtoField.new("Order Executed Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.orderexecutedmessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.order_replaced_message = ProtoField.new("Order Replaced Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.orderreplacedmessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.pending_response_message = ProtoField.new("Pending Response Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.pendingresponsemessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.reject_message = ProtoField.new("Reject Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.rejectmessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.replace_order_message = ProtoField.new("Replace Order Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.replaceordermessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.simple_instrument_directory_message = ProtoField.new("Simple Instrument Directory Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.simpleinstrumentdirectorymessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.subscription_request_message = ProtoField.new("Subscription Request Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.subscriptionrequestmessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.subscription_response_message = ProtoField.new("Subscription Response Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.subscriptionresponsemessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.systemeventmessage", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.trade_details_message = ProtoField.new("Trade Details Message", "nasdaq.iseoptions.otto.ouch.v3.0.0.tradedetailsmessage", ftypes.STRING)

-- Nasdaq IseOptions Otto 3.0.0 Session Messages
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.client_heartbeat_packet = ProtoField.new("Client Heartbeat Packet", "nasdaq.iseoptions.otto.ouch.v3.0.0.clientheartbeatpacket", ftypes.BYTES)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.iseoptions.otto.ouch.v3.0.0.debugpacket", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.end_of_session_packet = ProtoField.new("End Of Session Packet", "nasdaq.iseoptions.otto.ouch.v3.0.0.endofsessionpacket", ftypes.BYTES)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.iseoptions.otto.ouch.v3.0.0.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.iseoptions.otto.ouch.v3.0.0.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.iseoptions.otto.ouch.v3.0.0.loginrequestpacket", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.logout_request_packet = ProtoField.new("Logout Request Packet", "nasdaq.iseoptions.otto.ouch.v3.0.0.logoutrequestpacket", ftypes.BYTES)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.iseoptions.otto.ouch.v3.0.0.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.server_heartbeat_packet = ProtoField.new("Server Heartbeat Packet", "nasdaq.iseoptions.otto.ouch.v3.0.0.serverheartbeatpacket", ftypes.BYTES)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.iseoptions.otto.ouch.v3.0.0.unsequenceddatapacket", ftypes.STRING)

-- Nasdaq IseOptions Otto Ouch 3.0.0 Generated Fields
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.complex_directory_legs_index = ProtoField.new("Complex Directory Legs Index", "nasdaq.iseoptions.otto.ouch.v3.0.0.complexdirectorylegsindex", ftypes.UINT16)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.complex_instrument_legs_index = ProtoField.new("Complex Instrument Legs Index", "nasdaq.iseoptions.otto.ouch.v3.0.0.complexinstrumentlegsindex", ftypes.UINT16)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.flex_dac_legs_index = ProtoField.new("Flex Dac Legs Index", "nasdaq.iseoptions.otto.ouch.v3.0.0.flexdaclegsindex", ftypes.UINT16)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.flex_leg_prices_index = ProtoField.new("Flex Leg Prices Index", "nasdaq.iseoptions.otto.ouch.v3.0.0.flexlegpricesindex", ftypes.UINT16)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.flex_legs_index = ProtoField.new("Flex Legs Index", "nasdaq.iseoptions.otto.ouch.v3.0.0.flexlegsindex", ftypes.UINT16)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.trade_splits_index = ProtoField.new("Trade Splits Index", "nasdaq.iseoptions.otto.ouch.v3.0.0.tradesplitsindex", ftypes.UINT16)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "nasdaq.iseoptions.otto.ouch.v3.0.0.sequenceddatapacketsequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq IseOptions Otto Ouch 3.0.0 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
nasdaq_iseoptions_otto_ouch_v3_0_0.utc_offset_hours = 5

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

-- Nasdaq IseOptions Otto Ouch 3.0.0 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.repeating_groups = true
show.session_messages = true
show.indexes = true
show.sequences = true

-- Register Nasdaq IseOptions Otto Ouch 3.0.0 Show Options
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.show_headers then
    show.headers = omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.show_headers
  end
  if show.repeating_groups ~= omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.show_repeating_groups then
    show.repeating_groups = omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.show_repeating_groups
  end
  if show.session_messages ~= omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.show_structs then
    show.structs = omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.show_indexes then
    show.indexes = omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.show_sequences then
    show.sequences = omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.show_sequences
  end
  if nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp_format ~= omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.timestamp_format then
    nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp_format = omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.timestamp_format
  end
  if nasdaq_iseoptions_otto_ouch_v3_0_0.utc_offset_hours ~= omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.utc_offset_hours then
    nasdaq_iseoptions_otto_ouch_v3_0_0.utc_offset_hours = omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_iseoptions_otto_ouch_v3_0_0.conversation = {}
nasdaq_iseoptions_otto_ouch_v3_0_0.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nasdaq_iseoptions_otto_ouch_v3_0_0.stream_frame = nil
nasdaq_iseoptions_otto_ouch_v3_0_0.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nasdaq_iseoptions_otto_ouch_v3_0_0.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_iseoptions_otto_ouch_v3_0_0.conversation.data = function(packet)
  local key = nasdaq_iseoptions_otto_ouch_v3_0_0.conversation.key(packet)
  local data = nasdaq_iseoptions_otto_ouch_v3_0_0.conversation.flows[key]
  if data == nil then
    data = { accepted_sequence_number = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    nasdaq_iseoptions_otto_ouch_v3_0_0.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_iseoptions_otto_ouch_v3_0_0.conversation.current = nil


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
-- Nasdaq IseOptions Otto Ouch 3.0.0 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_iseoptions_otto_ouch_v3_0_0.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_iseoptions_otto_ouch_v3_0_0.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_iseoptions_otto_ouch_v3_0_0.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_iseoptions_otto_ouch_v3_0_0.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_iseoptions_otto_ouch_v3_0_0.accepted_session = {}

-- Size: Accepted Session
nasdaq_iseoptions_otto_ouch_v3_0_0.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_iseoptions_otto_ouch_v3_0_0.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_iseoptions_otto_ouch_v3_0_0.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Alloc Qty
nasdaq_iseoptions_otto_ouch_v3_0_0.alloc_qty = {}

-- Size: Alloc Qty
nasdaq_iseoptions_otto_ouch_v3_0_0.alloc_qty.size = 4

-- Display: Alloc Qty
nasdaq_iseoptions_otto_ouch_v3_0_0.alloc_qty.display = function(value)
  return "Alloc Qty: "..value
end

-- Dissect: Alloc Qty
nasdaq_iseoptions_otto_ouch_v3_0_0.alloc_qty.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.alloc_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.alloc_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.alloc_qty, range, value, display)

  return offset + length, value
end

-- Alo Inst
nasdaq_iseoptions_otto_ouch_v3_0_0.alo_inst = {}

-- Size: Alo Inst
nasdaq_iseoptions_otto_ouch_v3_0_0.alo_inst.size = 1

-- Display: Alo Inst
nasdaq_iseoptions_otto_ouch_v3_0_0.alo_inst.display = function(value)
  if value == "N" then
    return "Alo Inst: Not Alo (N)"
  end
  if value == "Y" then
    return "Alo Inst: Alo (Y)"
  end

  return "Alo Inst: Unknown("..value..")"
end

-- Dissect: Alo Inst
nasdaq_iseoptions_otto_ouch_v3_0_0.alo_inst.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.alo_inst.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.alo_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.alo_inst, range, value, display)

  return offset + length, value
end

-- Auction Alloc Pct
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_alloc_pct = {}

-- Size: Auction Alloc Pct
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_alloc_pct.size = 1

-- Display: Auction Alloc Pct
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_alloc_pct.display = function(value)
  return "Auction Alloc Pct: "..value
end

-- Dissect: Auction Alloc Pct
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_alloc_pct.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_alloc_pct.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_alloc_pct.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.auction_alloc_pct, range, value, display)

  return offset + length, value
end

-- Auction Duration
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_duration = {}

-- Size: Auction Duration
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_duration.size = 4

-- Display: Auction Duration
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_duration.display = function(value)
  return "Auction Duration: "..value
end

-- Dissect: Auction Duration
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_duration.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_duration.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.auction_duration, range, value, display)

  return offset + length, value
end

-- Auction Event
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_event = {}

-- Size: Auction Event
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_event.size = 1

-- Display: Auction Event
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_event.display = function(value)
  if value == "S" then
    return "Auction Event: Start (S)"
  end
  if value == "U" then
    return "Auction Event: Auction Update (U)"
  end
  if value == "E" then
    return "Auction Event: End Of Auction (E)"
  end

  return "Auction Event: Unknown("..value..")"
end

-- Dissect: Auction Event
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_event.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.auction_event, range, value, display)

  return offset + length, value
end

-- Auction Id
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_id = {}

-- Size: Auction Id
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_id.size = 4

-- Display: Auction Id
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Type
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type = {}

-- Size: Auction Type
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.size = 1

-- Display: Auction Type
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.display = function(value)
  if value == "B" then
    return "Auction Type: Block Order Auction (B)"
  end
  if value == "E" then
    return "Auction Type: Complex Exposure Auction (E)"
  end
  if value == "F" then
    return "Auction Type: Simple Exposure Order (F)"
  end
  if value == "O" then
    return "Auction Type: Opening Auction (O)"
  end
  if value == "X" then
    return "Auction Type: Flex Auction (X)"
  end
  if value == "P" then
    return "Auction Type: Pim Pixl Auction (P)"
  end
  if value == "H" then
    return "Auction Type: Facilitation Auction (H)"
  end
  if value == "S" then
    return "Auction Type: Solicitation Auction (S)"
  end
  if value == "N" then
    return "Auction Type: None (N)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Best Response Price
nasdaq_iseoptions_otto_ouch_v3_0_0.best_response_price = {}

-- Size: Best Response Price
nasdaq_iseoptions_otto_ouch_v3_0_0.best_response_price.size = 8

-- Display: Best Response Price
nasdaq_iseoptions_otto_ouch_v3_0_0.best_response_price.display = function(value)
  return "Best Response Price: "..value
end

-- Translate: Best Response Price
nasdaq_iseoptions_otto_ouch_v3_0_0.best_response_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Best Response Price
nasdaq_iseoptions_otto_ouch_v3_0_0.best_response_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.best_response_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_iseoptions_otto_ouch_v3_0_0.best_response_price.translate(raw)
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.best_response_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.best_response_price, range, value, display)

  return offset + length, value
end

-- Best Response Size
nasdaq_iseoptions_otto_ouch_v3_0_0.best_response_size = {}

-- Size: Best Response Size
nasdaq_iseoptions_otto_ouch_v3_0_0.best_response_size.size = 4

-- Display: Best Response Size
nasdaq_iseoptions_otto_ouch_v3_0_0.best_response_size.display = function(value)
  return "Best Response Size: "..value
end

-- Dissect: Best Response Size
nasdaq_iseoptions_otto_ouch_v3_0_0.best_response_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.best_response_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.best_response_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.best_response_size, range, value, display)

  return offset + length, value
end

-- Cancel Reason
nasdaq_iseoptions_otto_ouch_v3_0_0.cancel_reason = {}

-- Size: Cancel Reason
nasdaq_iseoptions_otto_ouch_v3_0_0.cancel_reason.size = 1

-- Display: Cancel Reason
nasdaq_iseoptions_otto_ouch_v3_0_0.cancel_reason.display = function(value)
  if value == "U" then
    return "Cancel Reason: User Requested (U)"
  end
  if value == "I" then
    return "Cancel Reason: Immediate Or Cancel (I)"
  end
  if value == "S" then
    return "Cancel Reason: Supervisory (S)"
  end
  if value == "D" then
    return "Cancel Reason: Regulatory Restriction (D)"
  end
  if value == "Q" then
    return "Cancel Reason: Anti Internalize (Q)"
  end
  if value == "B" then
    return "Cancel Reason: Alo Not Displayable (B)"
  end
  if value == "A" then
    return "Cancel Reason: Unexecuted Auction Response (A)"
  end
  if value == "K" then
    return "Cancel Reason: Kill Switch (K)"
  end
  if value == "C" then
    return "Cancel Reason: Cancel On Disconnect (C)"
  end
  if value == "O" then
    return "Cancel Reason: Open Delay Timer (O)"
  end
  if value == "P" then
    return "Cancel Reason: Atr Limit (P)"
  end
  if value == "Z" then
    return "Cancel Reason: Rejected Cancel Replace (Z)"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
nasdaq_iseoptions_otto_ouch_v3_0_0.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.capacity = {}

-- Size: Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.capacity.size = 1

-- Display: Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.capacity.display = function(value)
  if value == "C" then
    return "Capacity: Customer (C)"
  end
  if value == "F" then
    return "Capacity: Firm (F)"
  end
  if value == "M" then
    return "Capacity: Market Maker (M)"
  end
  if value == "O" then
    return "Capacity: Other Exchange Registered Market Maker (O)"
  end
  if value == "P" then
    return "Capacity: Professional Customer (P)"
  end
  if value == "B" then
    return "Capacity: Broker Dealer (B)"
  end
  if value == "R" then
    return "Capacity: Retail (R)"
  end
  if value == " " then
    return "Capacity: Not Applicable (<whitespace>)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.capacity, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id = {}

-- Size: Cl Ord Id
nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.size = 16

-- Display: Cl Ord Id
nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.display = function(value)
  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Cl Request Id
nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id = {}

-- Size: Cl Request Id
nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.size = 16

-- Display: Cl Request Id
nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.display = function(value)
  return "Cl Request Id: "..value
end

-- Dissect: Cl Request Id
nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.cl_request_id, range, value, display)

  return offset + length, value
end

-- Clearing Account
nasdaq_iseoptions_otto_ouch_v3_0_0.clearing_account = {}

-- Size: Clearing Account
nasdaq_iseoptions_otto_ouch_v3_0_0.clearing_account.size = 4

-- Display: Clearing Account
nasdaq_iseoptions_otto_ouch_v3_0_0.clearing_account.display = function(value)
  return "Clearing Account: "..value
end

-- Dissect: Clearing Account
nasdaq_iseoptions_otto_ouch_v3_0_0.clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.clearing_account.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet_type.display = function(value)
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
nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Closing Only
nasdaq_iseoptions_otto_ouch_v3_0_0.closing_only = {}

-- Size: Closing Only
nasdaq_iseoptions_otto_ouch_v3_0_0.closing_only.size = 1

-- Display: Closing Only
nasdaq_iseoptions_otto_ouch_v3_0_0.closing_only.display = function(value)
  if value == "N" then
    return "Closing Only: Unrestricted (N)"
  end
  if value == "Y" then
    return "Closing Only: Closing Position Only (Y)"
  end

  return "Closing Only: Unknown("..value..")"
end

-- Dissect: Closing Only
nasdaq_iseoptions_otto_ouch_v3_0_0.closing_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.closing_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.closing_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.closing_only, range, value, display)

  return offset + length, value
end

-- Closing Type
nasdaq_iseoptions_otto_ouch_v3_0_0.closing_type = {}

-- Size: Closing Type
nasdaq_iseoptions_otto_ouch_v3_0_0.closing_type.size = 1

-- Display: Closing Type
nasdaq_iseoptions_otto_ouch_v3_0_0.closing_type.display = function(value)
  if value == "N" then
    return "Closing Type: Normal Hours (N)"
  end
  if value == "L" then
    return "Closing Type: Late Hours (L)"
  end
  if value == "W" then
    return "Closing Type: Wco Early Closing (W)"
  end

  return "Closing Type: Unknown("..value..")"
end

-- Dissect: Closing Type
nasdaq_iseoptions_otto_ouch_v3_0_0.closing_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.closing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.closing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.closing_type, range, value, display)

  return offset + length, value
end

-- Cmta
nasdaq_iseoptions_otto_ouch_v3_0_0.cmta = {}

-- Size: Cmta
nasdaq_iseoptions_otto_ouch_v3_0_0.cmta.size = 4

-- Display: Cmta
nasdaq_iseoptions_otto_ouch_v3_0_0.cmta.display = function(value)
  return "Cmta: "..value
end

-- Dissect: Cmta
nasdaq_iseoptions_otto_ouch_v3_0_0.cmta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.cmta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.cmta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.cmta, range, value, display)

  return offset + length, value
end

-- Contra Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_capacity = {}

-- Size: Contra Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_capacity.size = 1

-- Display: Contra Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_capacity.display = function(value)
  if value == "C" then
    return "Contra Capacity: Customer (C)"
  end
  if value == "F" then
    return "Contra Capacity: Firm (F)"
  end
  if value == "M" then
    return "Contra Capacity: Market Maker (M)"
  end
  if value == "O" then
    return "Contra Capacity: Other Exchange Registered Market Maker (O)"
  end
  if value == "P" then
    return "Contra Capacity: Professional Customer (P)"
  end
  if value == "B" then
    return "Contra Capacity: Broker Dealer (B)"
  end
  if value == "R" then
    return "Contra Capacity: Retail (R)"
  end
  if value == " " then
    return "Contra Capacity: Not Applicable (<whitespace>)"
  end

  return "Contra Capacity: Unknown("..value..")"
end

-- Dissect: Contra Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_capacity, range, value, display)

  return offset + length, value
end

-- Contra Cl Ord Id
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cl_ord_id = {}

-- Size: Contra Cl Ord Id
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cl_ord_id.size = 16

-- Display: Contra Cl Ord Id
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cl_ord_id.display = function(value)
  return "Contra Cl Ord Id: "..value
end

-- Dissect: Contra Cl Ord Id
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cl_ord_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Contra Clearing Account
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_clearing_account = {}

-- Size: Contra Clearing Account
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_clearing_account.size = 4

-- Display: Contra Clearing Account
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_clearing_account.display = function(value)
  return "Contra Clearing Account: "..value
end

-- Dissect: Contra Clearing Account
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_clearing_account.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_clearing_account, range, value, display)

  return offset + length, value
end

-- Contra Cmta
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cmta = {}

-- Size: Contra Cmta
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cmta.size = 4

-- Display: Contra Cmta
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cmta.display = function(value)
  return "Contra Cmta: "..value
end

-- Dissect: Contra Cmta
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cmta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cmta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cmta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_cmta, range, value, display)

  return offset + length, value
end

-- Contra Cust Acct
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cust_acct = {}

-- Size: Contra Cust Acct
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cust_acct.size = 10

-- Display: Contra Cust Acct
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cust_acct.display = function(value)
  return "Contra Cust Acct: "..value
end

-- Dissect: Contra Cust Acct
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cust_acct.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cust_acct.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cust_acct.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_cust_acct, range, value, display)

  return offset + length, value
end

-- Contra Occ Account
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_occ_account = {}

-- Size: Contra Occ Account
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_occ_account.size = 4

-- Display: Contra Occ Account
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_occ_account.display = function(value)
  return "Contra Occ Account: "..value
end

-- Dissect: Contra Occ Account
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_occ_account.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_occ_account.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_occ_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_occ_account, range, value, display)

  return offset + length, value
end

-- Contra Order Id
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_order_id = {}

-- Size: Contra Order Id
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_order_id.size = 8

-- Display: Contra Order Id
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_order_id.display = function(value)
  return "Contra Order Id: "..value
end

-- Dissect: Contra Order Id
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_order_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_order_id, range, value, display)

  return offset + length, value
end

-- Contra Order Type
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_order_type = {}

-- Size: Contra Order Type
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_order_type.size = 1

-- Display: Contra Order Type
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_order_type.display = function(value)
  if value == "L" then
    return "Contra Order Type: Limit (L)"
  end
  if value == "M" then
    return "Contra Order Type: Market (M)"
  end

  return "Contra Order Type: Unknown("..value..")"
end

-- Dissect: Contra Order Type
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_order_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_order_type, range, value, display)

  return offset + length, value
end

-- Contra Position Effect Mask
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_position_effect_mask = {}

-- Size: Contra Position Effect Mask
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_position_effect_mask.size = 2

-- Display: Contra Position Effect Mask
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_position_effect_mask.display = function(value)
  return "Contra Position Effect Mask: "..value
end

-- Dissect: Contra Position Effect Mask
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_position_effect_mask.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_position_effect_mask.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_position_effect_mask.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_position_effect_mask, range, value, display)

  return offset + length, value
end

-- Contra Price
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_price = {}

-- Size: Contra Price
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_price.size = 8

-- Display: Contra Price
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_price.display = function(value)
  return "Contra Price: "..value
end

-- Translate: Contra Price
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Contra Price
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_price.translate(raw)
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_price, range, value, display)

  return offset + length, value
end

-- Contra Quantity
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_quantity = {}

-- Size: Contra Quantity
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_quantity.size = 4

-- Display: Contra Quantity
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_quantity.display = function(value)
  return "Contra Quantity: "..value
end

-- Dissect: Contra Quantity
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_quantity, range, value, display)

  return offset + length, value
end

-- Contra Stock Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_capacity = {}

-- Size: Contra Stock Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_capacity.size = 1

-- Display: Contra Stock Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_capacity.display = function(value)
  if value == "P" then
    return "Contra Stock Capacity: Principal (P)"
  end
  if value == "A" then
    return "Contra Stock Capacity: Agency (A)"
  end
  if value == "R" then
    return "Contra Stock Capacity: Riskless Principal (R)"
  end
  if value == " " then
    return "Contra Stock Capacity: Not Applicable (<whitespace>)"
  end

  return "Contra Stock Capacity: Unknown("..value..")"
end

-- Dissect: Contra Stock Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_stock_capacity, range, value, display)

  return offset + length, value
end

-- Contra Stock Leg Mpid
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_leg_mpid = {}

-- Size: Contra Stock Leg Mpid
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_leg_mpid.size = 4

-- Display: Contra Stock Leg Mpid
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_leg_mpid.display = function(value)
  return "Contra Stock Leg Mpid: "..value
end

-- Dissect: Contra Stock Leg Mpid
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_leg_mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_leg_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_leg_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_stock_leg_mpid, range, value, display)

  return offset + length, value
end

-- Contra Stock Leg Short Sale
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_leg_short_sale = {}

-- Size: Contra Stock Leg Short Sale
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_leg_short_sale.size = 1

-- Display: Contra Stock Leg Short Sale
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_leg_short_sale.display = function(value)
  if value == "N" then
    return "Contra Stock Leg Short Sale: Not Applicable (N)"
  end
  if value == "H" then
    return "Contra Stock Leg Short Sale: Sell Short (H)"
  end
  if value == "E" then
    return "Contra Stock Leg Short Sale: Sell Short Exempt (E)"
  end

  return "Contra Stock Leg Short Sale: Unknown("..value..")"
end

-- Dissect: Contra Stock Leg Short Sale
nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_leg_short_sale.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_leg_short_sale.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_leg_short_sale.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contra_stock_leg_short_sale, range, value, display)

  return offset + length, value
end

-- Contract Size
nasdaq_iseoptions_otto_ouch_v3_0_0.contract_size = {}

-- Size: Contract Size
nasdaq_iseoptions_otto_ouch_v3_0_0.contract_size.size = 2

-- Display: Contract Size
nasdaq_iseoptions_otto_ouch_v3_0_0.contract_size.display = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
nasdaq_iseoptions_otto_ouch_v3_0_0.contract_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.contract_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Cross Id
nasdaq_iseoptions_otto_ouch_v3_0_0.cross_id = {}

-- Size: Cross Id
nasdaq_iseoptions_otto_ouch_v3_0_0.cross_id.size = 4

-- Display: Cross Id
nasdaq_iseoptions_otto_ouch_v3_0_0.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
nasdaq_iseoptions_otto_ouch_v3_0_0.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.cross_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_iseoptions_otto_ouch_v3_0_0.cross_type = {}

-- Size: Cross Type
nasdaq_iseoptions_otto_ouch_v3_0_0.cross_type.size = 1

-- Display: Cross Type
nasdaq_iseoptions_otto_ouch_v3_0_0.cross_type.display = function(value)
  if value == "A" then
    return "Cross Type: Auction (A)"
  end
  if value == "Q" then
    return "Cross Type: Qcc (Q)"
  end
  if value == "C" then
    return "Cross Type: Ccc (C)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_iseoptions_otto_ouch_v3_0_0.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Cust Acct
nasdaq_iseoptions_otto_ouch_v3_0_0.cust_acct = {}

-- Size: Cust Acct
nasdaq_iseoptions_otto_ouch_v3_0_0.cust_acct.size = 10

-- Display: Cust Acct
nasdaq_iseoptions_otto_ouch_v3_0_0.cust_acct.display = function(value)
  return "Cust Acct: "..value
end

-- Dissect: Cust Acct
nasdaq_iseoptions_otto_ouch_v3_0_0.cust_acct.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.cust_acct.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.cust_acct.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.cust_acct, range, value, display)

  return offset + length, value
end

-- Debug Text
nasdaq_iseoptions_otto_ouch_v3_0_0.debug_text = {}

-- Display: Debug Text
nasdaq_iseoptions_otto_ouch_v3_0_0.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect runtime sized field: Debug Text
nasdaq_iseoptions_otto_ouch_v3_0_0.debug_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.debug_text.display(value, packet, parent, size)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.debug_text, range, value, display)

  return offset + size, value
end

-- Disclosure Mask
nasdaq_iseoptions_otto_ouch_v3_0_0.disclosure_mask = {}

-- Size: Disclosure Mask
nasdaq_iseoptions_otto_ouch_v3_0_0.disclosure_mask.size = 1

-- Display: Disclosure Mask
nasdaq_iseoptions_otto_ouch_v3_0_0.disclosure_mask.display = function(value)
  return "Disclosure Mask: "..value
end

-- Dissect: Disclosure Mask
nasdaq_iseoptions_otto_ouch_v3_0_0.disclosure_mask.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.disclosure_mask.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.disclosure_mask.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.disclosure_mask, range, value, display)

  return offset + length, value
end

-- Display High Qty
nasdaq_iseoptions_otto_ouch_v3_0_0.display_high_qty = {}

-- Size: Display High Qty
nasdaq_iseoptions_otto_ouch_v3_0_0.display_high_qty.size = 2

-- Display: Display High Qty
nasdaq_iseoptions_otto_ouch_v3_0_0.display_high_qty.display = function(value)
  return "Display High Qty: "..value
end

-- Dissect: Display High Qty
nasdaq_iseoptions_otto_ouch_v3_0_0.display_high_qty.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.display_high_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.display_high_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.display_high_qty, range, value, display)

  return offset + length, value
end

-- Display Low Qty
nasdaq_iseoptions_otto_ouch_v3_0_0.display_low_qty = {}

-- Size: Display Low Qty
nasdaq_iseoptions_otto_ouch_v3_0_0.display_low_qty.size = 2

-- Display: Display Low Qty
nasdaq_iseoptions_otto_ouch_v3_0_0.display_low_qty.display = function(value)
  return "Display Low Qty: "..value
end

-- Dissect: Display Low Qty
nasdaq_iseoptions_otto_ouch_v3_0_0.display_low_qty.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.display_low_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.display_low_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.display_low_qty, range, value, display)

  return offset + length, value
end

-- Display Method
nasdaq_iseoptions_otto_ouch_v3_0_0.display_method = {}

-- Size: Display Method
nasdaq_iseoptions_otto_ouch_v3_0_0.display_method.size = 1

-- Display: Display Method
nasdaq_iseoptions_otto_ouch_v3_0_0.display_method.display = function(value)
  if value == "I" then
    return "Display Method: Initial (I)"
  end
  if value == "R" then
    return "Display Method: Random (R)"
  end
  if value == "N" then
    return "Display Method: None (N)"
  end

  return "Display Method: Unknown("..value..")"
end

-- Dissect: Display Method
nasdaq_iseoptions_otto_ouch_v3_0_0.display_method.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.display_method.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.display_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.display_method, range, value, display)

  return offset + length, value
end

-- Display Qty
nasdaq_iseoptions_otto_ouch_v3_0_0.display_qty = {}

-- Size: Display Qty
nasdaq_iseoptions_otto_ouch_v3_0_0.display_qty.size = 2

-- Display: Display Qty
nasdaq_iseoptions_otto_ouch_v3_0_0.display_qty.display = function(value)
  return "Display Qty: "..value
end

-- Dissect: Display Qty
nasdaq_iseoptions_otto_ouch_v3_0_0.display_qty.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.display_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Display When
nasdaq_iseoptions_otto_ouch_v3_0_0.display_when = {}

-- Size: Display When
nasdaq_iseoptions_otto_ouch_v3_0_0.display_when.size = 1

-- Display: Display When
nasdaq_iseoptions_otto_ouch_v3_0_0.display_when.display = function(value)
  if value == "I" then
    return "Display When: Immediate (I)"
  end
  if value == "E" then
    return "Display When: Exhaust (E)"
  end
  if value == "N" then
    return "Display When: Not Applicable (N)"
  end

  return "Display When: Unknown("..value..")"
end

-- Dissect: Display When
nasdaq_iseoptions_otto_ouch_v3_0_0.display_when.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.display_when.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.display_when.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.display_when, range, value, display)

  return offset + length, value
end

-- Effective Time
nasdaq_iseoptions_otto_ouch_v3_0_0.effective_time = {}

-- Size: Effective Time
nasdaq_iseoptions_otto_ouch_v3_0_0.effective_time.size = 8

-- Display: Effective Time
nasdaq_iseoptions_otto_ouch_v3_0_0.effective_time.display = function(value)
  return "Effective Time: "..value
end

-- Dissect: Effective Time
nasdaq_iseoptions_otto_ouch_v3_0_0.effective_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.effective_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.effective_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.effective_time, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_iseoptions_otto_ouch_v3_0_0.event_code = {}

-- Size: Event Code
nasdaq_iseoptions_otto_ouch_v3_0_0.event_code.size = 1

-- Display: Event Code
nasdaq_iseoptions_otto_ouch_v3_0_0.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "Q" then
    return "Event Code: Start Of Opening Process (Q)"
  end
  if value == "W" then
    return "Event Code: End Of Wco Early Closing (W)"
  end
  if value == "N" then
    return "Event Code: End Of Normal Hours Processing (N)"
  end
  if value == "L" then
    return "Event Code: End Of Late Hours Processing (L)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_iseoptions_otto_ouch_v3_0_0.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Event Source
nasdaq_iseoptions_otto_ouch_v3_0_0.event_source = {}

-- Size: Event Source
nasdaq_iseoptions_otto_ouch_v3_0_0.event_source.size = 1

-- Display: Event Source
nasdaq_iseoptions_otto_ouch_v3_0_0.event_source.display = function(value)
  if value == "A" then
    return "Event Source: Matching Engine (A)"
  end
  if value == "M" then
    return "Event Source: Manual Trade Entry (M)"
  end
  if value == "U" then
    return "Event Source: Trade Modification User (U)"
  end
  if value == "C" then
    return "Event Source: Trade Modification Contra Side User (C)"
  end
  if value == "E" then
    return "Event Source: Trade Modification Exchange (E)"
  end
  if value == "B" then
    return "Event Source: Trade Bust Exchange (B)"
  end

  return "Event Source: Unknown("..value..")"
end

-- Dissect: Event Source
nasdaq_iseoptions_otto_ouch_v3_0_0.event_source.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.event_source.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.event_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.event_source, range, value, display)

  return offset + length, value
end

-- Exec Flag
nasdaq_iseoptions_otto_ouch_v3_0_0.exec_flag = {}

-- Size: Exec Flag
nasdaq_iseoptions_otto_ouch_v3_0_0.exec_flag.size = 1

-- Display: Exec Flag
nasdaq_iseoptions_otto_ouch_v3_0_0.exec_flag.display = function(value)
  if value == "0" then
    return "Exec Flag: None (0)"
  end
  if value == "1" then
    return "Exec Flag: Aon (1)"
  end

  return "Exec Flag: Unknown("..value..")"
end

-- Dissect: Exec Flag
nasdaq_iseoptions_otto_ouch_v3_0_0.exec_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.exec_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.exec_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.exec_flag, range, value, display)

  return offset + length, value
end

-- Expir Day
nasdaq_iseoptions_otto_ouch_v3_0_0.expir_day = {}

-- Size: Expir Day
nasdaq_iseoptions_otto_ouch_v3_0_0.expir_day.size = 1

-- Display: Expir Day
nasdaq_iseoptions_otto_ouch_v3_0_0.expir_day.display = function(value)
  return "Expir Day: "..value
end

-- Dissect: Expir Day
nasdaq_iseoptions_otto_ouch_v3_0_0.expir_day.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.expir_day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.expir_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.expir_day, range, value, display)

  return offset + length, value
end

-- Expir Mon
nasdaq_iseoptions_otto_ouch_v3_0_0.expir_mon = {}

-- Size: Expir Mon
nasdaq_iseoptions_otto_ouch_v3_0_0.expir_mon.size = 1

-- Display: Expir Mon
nasdaq_iseoptions_otto_ouch_v3_0_0.expir_mon.display = function(value)
  return "Expir Mon: "..value
end

-- Dissect: Expir Mon
nasdaq_iseoptions_otto_ouch_v3_0_0.expir_mon.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.expir_mon.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.expir_mon.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.expir_mon, range, value, display)

  return offset + length, value
end

-- Expir Year
nasdaq_iseoptions_otto_ouch_v3_0_0.expir_year = {}

-- Size: Expir Year
nasdaq_iseoptions_otto_ouch_v3_0_0.expir_year.size = 1

-- Display: Expir Year
nasdaq_iseoptions_otto_ouch_v3_0_0.expir_year.display = function(value)
  return "Expir Year: "..value
end

-- Dissect: Expir Year
nasdaq_iseoptions_otto_ouch_v3_0_0.expir_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.expir_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.expir_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.expir_year, range, value, display)

  return offset + length, value
end

-- Firm Id
nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id = {}

-- Size: Firm Id
nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size = 4

-- Display: Firm Id
nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.display = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Instrument Id
nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id = {}

-- Size: Instrument Id
nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.size = 4

-- Display: Instrument Id
nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Instrument Type
nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_type = {}

-- Size: Instrument Type
nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_type.size = 1

-- Display: Instrument Type
nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_type.display = function(value)
  if value == "A" then
    return "Instrument Type: All (A)"
  end
  if value == "O" then
    return "Instrument Type: Simple Instrument (O)"
  end
  if value == "C" then
    return "Instrument Type: Standard Combination (C)"
  end
  if value == "S" then
    return "Instrument Type: Stock Combination (S)"
  end

  return "Instrument Type: Unknown("..value..")"
end

-- Dissect: Instrument Type
nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Iso
nasdaq_iseoptions_otto_ouch_v3_0_0.iso = {}

-- Size: Iso
nasdaq_iseoptions_otto_ouch_v3_0_0.iso.size = 1

-- Display: Iso
nasdaq_iseoptions_otto_ouch_v3_0_0.iso.display = function(value)
  if value == "N" then
    return "Iso: Not Iso (N)"
  end
  if value == "I" then
    return "Iso: Iso (I)"
  end

  return "Iso: Unknown("..value..")"
end

-- Dissect: Iso
nasdaq_iseoptions_otto_ouch_v3_0_0.iso.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.iso.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.iso.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.iso, range, value, display)

  return offset + length, value
end

-- Kill Action
nasdaq_iseoptions_otto_ouch_v3_0_0.kill_action = {}

-- Size: Kill Action
nasdaq_iseoptions_otto_ouch_v3_0_0.kill_action.size = 1

-- Display: Kill Action
nasdaq_iseoptions_otto_ouch_v3_0_0.kill_action.display = function(value)
  if value == "A" then
    return "Kill Action: Block And Delete (A)"
  end
  if value == "R" then
    return "Kill Action: Block Removed (R)"
  end
  if value == "B" then
    return "Kill Action: Block (B)"
  end

  return "Kill Action: Unknown("..value..")"
end

-- Dissect: Kill Action
nasdaq_iseoptions_otto_ouch_v3_0_0.kill_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.kill_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.kill_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.kill_action, range, value, display)

  return offset + length, value
end

-- Leg Id
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_id = {}

-- Size: Leg Id
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_id.size = 1

-- Display: Leg Id
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_id.display = function(value)
  return "Leg Id: "..value
end

-- Dissect: Leg Id
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.leg_id, range, value, display)

  return offset + length, value
end

-- Leg Instrument Id
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_instrument_id = {}

-- Size: Leg Instrument Id
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_instrument_id.size = 4

-- Display: Leg Instrument Id
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_instrument_id.display = function(value)
  return "Leg Instrument Id: "..value
end

-- Dissect: Leg Instrument Id
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.leg_instrument_id, range, value, display)

  return offset + length, value
end

-- Leg Prices
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_prices = {}

-- Size: Leg Prices
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_prices.size = 8

-- Display: Leg Prices
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_prices.display = function(value)
  return "Leg Prices: "..value
end

-- Translate: Leg Prices
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_prices.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Leg Prices
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_prices.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_prices.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_prices.translate(raw)
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_prices.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.leg_prices, range, value, display)

  return offset + length, value
end

-- Leg Ratio
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_ratio = {}

-- Size: Leg Ratio
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_ratio.size = 2

-- Display: Leg Ratio
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Side
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_side = {}

-- Size: Leg Side
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_side.size = 1

-- Display: Leg Side
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_side.display = function(value)
  if value == "B" then
    return "Leg Side: Buy (B)"
  end
  if value == "S" then
    return "Leg Side: Sell (S)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Type
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_type = {}

-- Size: Leg Type
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_type.size = 1

-- Display: Leg Type
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_type.display = function(value)
  if value == "O" then
    return "Leg Type: Option (O)"
  end
  if value == "S" then
    return "Leg Type: Stock (S)"
  end

  return "Leg Type: Unknown("..value..")"
end

-- Dissect: Leg Type
nasdaq_iseoptions_otto_ouch_v3_0_0.leg_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.leg_type, range, value, display)

  return offset + length, value
end

-- Liquidity Ind
nasdaq_iseoptions_otto_ouch_v3_0_0.liquidity_ind = {}

-- Size: Liquidity Ind
nasdaq_iseoptions_otto_ouch_v3_0_0.liquidity_ind.size = 1

-- Display: Liquidity Ind
nasdaq_iseoptions_otto_ouch_v3_0_0.liquidity_ind.display = function(value)
  if value == 0 then
    return "Liquidity Ind: None (0)"
  end
  if value == 1 then
    return "Liquidity Ind: Maker (1)"
  end
  if value == 2 then
    return "Liquidity Ind: Taker (2)"
  end
  if value == 4 then
    return "Liquidity Ind: Response (4)"
  end
  if value == 5 then
    return "Liquidity Ind: Hidden (5)"
  end
  if value == 6 then
    return "Liquidity Ind: Opening Rotation (6)"
  end
  if value == 7 then
    return "Liquidity Ind: Cross (7)"
  end
  if value == 8 then
    return "Liquidity Ind: Flashed Order (8)"
  end
  if value == 9 then
    return "Liquidity Ind: Flash Response (9)"
  end
  if value == 10 then
    return "Liquidity Ind: Routed Out (10)"
  end
  if value == 11 then
    return "Liquidity Ind: Trade Report (11)"
  end
  if value == 12 then
    return "Liquidity Ind: Combo Maker Against Combo (12)"
  end
  if value == 13 then
    return "Liquidity Ind: Combo Taker Against Combo (13)"
  end
  if value == 14 then
    return "Liquidity Ind: Combo Response Against Combo (14)"
  end
  if value == 15 then
    return "Liquidity Ind: Combo Hidden Against Combo (15)"
  end
  if value == 16 then
    return "Liquidity Ind: Combo Opening Rotation (16)"
  end
  if value == 17 then
    return "Liquidity Ind: Combo Cross (17)"
  end
  if value == 18 then
    return "Liquidity Ind: Combo Taker Against Regular (18)"
  end
  if value == 19 then
    return "Liquidity Ind: Regular Maker Against Combo (19)"
  end
  if value == 20 then
    return "Liquidity Ind: Combo Taker Against Io (20)"
  end
  if value == 21 then
    return "Liquidity Ind: Regular Incl Pim Taker Against Io (21)"
  end
  if value == 22 then
    return "Liquidity Ind: Io Maker Against Combo (22)"
  end
  if value == 23 then
    return "Liquidity Ind: Io Maker Against Regular (23)"
  end
  if value == 24 then
    return "Liquidity Ind: Regular Maker Against Io Participant (24)"
  end
  if value == 25 then
    return "Liquidity Ind: Io Participant Taker Against Regular (25)"
  end
  if value == 26 then
    return "Liquidity Ind: Broken Price Improvement (26)"
  end
  if value == 27 then
    return "Liquidity Ind: Broken Facilitation (27)"
  end
  if value == 28 then
    return "Liquidity Ind: Broken Solicitation (28)"
  end
  if value == 29 then
    return "Liquidity Ind: Combo Broken Price Improvement (29)"
  end
  if value == 30 then
    return "Liquidity Ind: Combo Broken Facilitation (30)"
  end
  if value == 31 then
    return "Liquidity Ind: Combo Broken Solicitation (31)"
  end
  if value == 32 then
    return "Liquidity Ind: Block (32)"
  end
  if value == 33 then
    return "Liquidity Ind: Block Response (33)"
  end
  if value == 34 then
    return "Liquidity Ind: Directed Response (34)"
  end
  if value == 35 then
    return "Liquidity Ind: Facilitation (35)"
  end
  if value == 36 then
    return "Liquidity Ind: Facilitation Response (36)"
  end
  if value == 37 then
    return "Liquidity Ind: Price Improvement (37)"
  end
  if value == 38 then
    return "Liquidity Ind: Price Improvement Response (38)"
  end
  if value == 39 then
    return "Liquidity Ind: Solicitation (39)"
  end
  if value == 40 then
    return "Liquidity Ind: Solicitation Response (40)"
  end
  if value == 41 then
    return "Liquidity Ind: Qualified Contingent Cross (41)"
  end
  if value == 42 then
    return "Liquidity Ind: Customer To Customer (42)"
  end
  if value == 43 then
    return "Liquidity Ind: Combo Facilitation (43)"
  end
  if value == 44 then
    return "Liquidity Ind: Combo Facilitation Response (44)"
  end
  if value == 45 then
    return "Liquidity Ind: Combo Price Improvement (45)"
  end
  if value == 46 then
    return "Liquidity Ind: Combo Price Improvement Response (46)"
  end
  if value == 47 then
    return "Liquidity Ind: Combo Solicitation (47)"
  end
  if value == 48 then
    return "Liquidity Ind: Combo Solicitation Response (48)"
  end
  if value == 49 then
    return "Liquidity Ind: Combo Qualified Contingent Cross (49)"
  end
  if value == 50 then
    return "Liquidity Ind: Combo Customer To Customer (50)"
  end
  if value == 51 then
    return "Liquidity Ind: Sweep Routed Out (51)"
  end
  if value == 52 then
    return "Liquidity Ind: Sweep Trade Report (52)"
  end
  if value == 53 then
    return "Liquidity Ind: Combo Taker Against Regular Thru Nbbo (53)"
  end
  if value == 54 then
    return "Liquidity Ind: Combo Taker Against Io Thru Nbbo (54)"
  end
  if value == 55 then
    return "Liquidity Ind: Simple Exposure Order Initiator Upon Receipt (55)"
  end
  if value == 56 then
    return "Liquidity Ind: Simple Exposure Order Initiator (56)"
  end
  if value == 57 then
    return "Liquidity Ind: Simple Exposure Order Responder (57)"
  end
  if value == 58 then
    return "Liquidity Ind: Flex Auction (58)"
  end
  if value == 59 then
    return "Liquidity Ind: Flex Auction Responder (59)"
  end
  if value == 60 then
    return "Liquidity Ind: Flex Price Improvement (60)"
  end
  if value == 61 then
    return "Liquidity Ind: Flex Price Improvement Responder (61)"
  end
  if value == 62 then
    return "Liquidity Ind: Flex Broken Price Improvement (62)"
  end
  if value == 63 then
    return "Liquidity Ind: Flex Solicitation (63)"
  end
  if value == 64 then
    return "Liquidity Ind: Flex Solicitation Responder (64)"
  end
  if value == 65 then
    return "Liquidity Ind: Flex Broken Solicitation (65)"
  end
  if value == 66 then
    return "Liquidity Ind: Combo Flex Auction (66)"
  end
  if value == 67 then
    return "Liquidity Ind: Combo Flex Auction Responder (67)"
  end
  if value == 68 then
    return "Liquidity Ind: Combo Flex Price Improvement (68)"
  end
  if value == 69 then
    return "Liquidity Ind: Combo Flex Price Improvement Responder (69)"
  end
  if value == 70 then
    return "Liquidity Ind: Combo Flex Broken Price Improvement (70)"
  end
  if value == 71 then
    return "Liquidity Ind: Combo Flex Solicitation (71)"
  end
  if value == 72 then
    return "Liquidity Ind: Combo Flex Solicitation Responder (72)"
  end
  if value == 73 then
    return "Liquidity Ind: Combo Flex Broken Solicitation (73)"
  end

  return "Liquidity Ind: Unknown("..value..")"
end

-- Dissect: Liquidity Ind
nasdaq_iseoptions_otto_ouch_v3_0_0.liquidity_ind.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.liquidity_ind.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.liquidity_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.liquidity_ind, range, value, display)

  return offset + length, value
end

-- Match Id
nasdaq_iseoptions_otto_ouch_v3_0_0.match_id = {}

-- Size: Match Id
nasdaq_iseoptions_otto_ouch_v3_0_0.match_id.size = 4

-- Display: Match Id
nasdaq_iseoptions_otto_ouch_v3_0_0.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
nasdaq_iseoptions_otto_ouch_v3_0_0.match_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.match_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.match_id, range, value, display)

  return offset + length, value
end

-- Min Qty
nasdaq_iseoptions_otto_ouch_v3_0_0.min_qty = {}

-- Size: Min Qty
nasdaq_iseoptions_otto_ouch_v3_0_0.min_qty.size = 4

-- Display: Min Qty
nasdaq_iseoptions_otto_ouch_v3_0_0.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
nasdaq_iseoptions_otto_ouch_v3_0_0.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.min_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Mpv
nasdaq_iseoptions_otto_ouch_v3_0_0.mpv = {}

-- Size: Mpv
nasdaq_iseoptions_otto_ouch_v3_0_0.mpv.size = 1

-- Display: Mpv
nasdaq_iseoptions_otto_ouch_v3_0_0.mpv.display = function(value)
  if value == "E" then
    return "Mpv: Penny Everywhere (E)"
  end
  if value == "S" then
    return "Mpv: Scaled (S)"
  end
  if value == "P" then
    return "Mpv: Penny Pilot (P)"
  end

  return "Mpv: Unknown("..value..")"
end

-- Dissect: Mpv
nasdaq_iseoptions_otto_ouch_v3_0_0.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.mpv.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.mpv, range, value, display)

  return offset + length, value
end

-- Num Canceled
nasdaq_iseoptions_otto_ouch_v3_0_0.num_canceled = {}

-- Size: Num Canceled
nasdaq_iseoptions_otto_ouch_v3_0_0.num_canceled.size = 4

-- Display: Num Canceled
nasdaq_iseoptions_otto_ouch_v3_0_0.num_canceled.display = function(value)
  return "Num Canceled: "..value
end

-- Dissect: Num Canceled
nasdaq_iseoptions_otto_ouch_v3_0_0.num_canceled.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.num_canceled.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.num_canceled.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.num_canceled, range, value, display)

  return offset + length, value
end

-- Num Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.num_legs = {}

-- Size: Num Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.num_legs.size = 1

-- Display: Num Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.num_legs.display = function(value)
  return "Num Legs: "..value
end

-- Dissect: Num Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.num_legs.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.num_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.num_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.num_legs, range, value, display)

  return offset + length, value
end

-- Num Pending
nasdaq_iseoptions_otto_ouch_v3_0_0.num_pending = {}

-- Size: Num Pending
nasdaq_iseoptions_otto_ouch_v3_0_0.num_pending.size = 4

-- Display: Num Pending
nasdaq_iseoptions_otto_ouch_v3_0_0.num_pending.display = function(value)
  return "Num Pending: "..value
end

-- Dissect: Num Pending
nasdaq_iseoptions_otto_ouch_v3_0_0.num_pending.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.num_pending.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.num_pending.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.num_pending, range, value, display)

  return offset + length, value
end

-- Num Splits
nasdaq_iseoptions_otto_ouch_v3_0_0.num_splits = {}

-- Size: Num Splits
nasdaq_iseoptions_otto_ouch_v3_0_0.num_splits.size = 2

-- Display: Num Splits
nasdaq_iseoptions_otto_ouch_v3_0_0.num_splits.display = function(value)
  return "Num Splits: "..value
end

-- Dissect: Num Splits
nasdaq_iseoptions_otto_ouch_v3_0_0.num_splits.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.num_splits.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.num_splits.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.num_splits, range, value, display)

  return offset + length, value
end

-- Number Of Flex Dac Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.number_of_flex_dac_legs = {}

-- Size: Number Of Flex Dac Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.number_of_flex_dac_legs.size = 1

-- Display: Number Of Flex Dac Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.number_of_flex_dac_legs.display = function(value)
  return "Number Of Flex Dac Legs: "..value
end

-- Dissect: Number Of Flex Dac Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.number_of_flex_dac_legs.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.number_of_flex_dac_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.number_of_flex_dac_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.number_of_flex_dac_legs, range, value, display)

  return offset + length, value
end

-- Number Of Flex Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.number_of_flex_legs = {}

-- Size: Number Of Flex Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.number_of_flex_legs.size = 1

-- Display: Number Of Flex Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.number_of_flex_legs.display = function(value)
  return "Number Of Flex Legs: "..value
end

-- Dissect: Number Of Flex Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.number_of_flex_legs.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.number_of_flex_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.number_of_flex_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.number_of_flex_legs, range, value, display)

  return offset + length, value
end

-- Occ Account
nasdaq_iseoptions_otto_ouch_v3_0_0.occ_account = {}

-- Size: Occ Account
nasdaq_iseoptions_otto_ouch_v3_0_0.occ_account.size = 4

-- Display: Occ Account
nasdaq_iseoptions_otto_ouch_v3_0_0.occ_account.display = function(value)
  return "Occ Account: "..value
end

-- Dissect: Occ Account
nasdaq_iseoptions_otto_ouch_v3_0_0.occ_account.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.occ_account.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.occ_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.occ_account, range, value, display)

  return offset + length, value
end

-- Open Close
nasdaq_iseoptions_otto_ouch_v3_0_0.open_close = {}

-- Size: Open Close
nasdaq_iseoptions_otto_ouch_v3_0_0.open_close.size = 1

-- Display: Open Close
nasdaq_iseoptions_otto_ouch_v3_0_0.open_close.display = function(value)
  if value == "O" then
    return "Open Close: Open (O)"
  end
  if value == "C" then
    return "Open Close: Closed (C)"
  end
  if value == " " then
    return "Open Close: Carry Forward (<whitespace>)"
  end

  return "Open Close: Unknown("..value..")"
end

-- Dissect: Open Close
nasdaq_iseoptions_otto_ouch_v3_0_0.open_close.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.open_close, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_iseoptions_otto_ouch_v3_0_0.option_type = {}

-- Size: Option Type
nasdaq_iseoptions_otto_ouch_v3_0_0.option_type.size = 1

-- Display: Option Type
nasdaq_iseoptions_otto_ouch_v3_0_0.option_type.display = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_iseoptions_otto_ouch_v3_0_0.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.option_type, range, value, display)

  return offset + length, value
end

-- Ord Exec Type
nasdaq_iseoptions_otto_ouch_v3_0_0.ord_exec_type = {}

-- Size: Ord Exec Type
nasdaq_iseoptions_otto_ouch_v3_0_0.ord_exec_type.size = 1

-- Display: Ord Exec Type
nasdaq_iseoptions_otto_ouch_v3_0_0.ord_exec_type.display = function(value)
  if value == "A" then
    return "Ord Exec Type: Simple Instrument (A)"
  end
  if value == "B" then
    return "Ord Exec Type: Complex Instrument (B)"
  end
  if value == "C" then
    return "Ord Exec Type: Complex Option Leg (C)"
  end
  if value == "D" then
    return "Ord Exec Type: Complex Stock Leg (D)"
  end

  return "Ord Exec Type: Unknown("..value..")"
end

-- Dissect: Ord Exec Type
nasdaq_iseoptions_otto_ouch_v3_0_0.ord_exec_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.ord_exec_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.ord_exec_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.ord_exec_type, range, value, display)

  return offset + length, value
end

-- Order Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.order_capacity = {}

-- Size: Order Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.order_capacity.size = 1

-- Display: Order Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.order_capacity.display = function(value)
  if value == "C" then
    return "Order Capacity: Customer (C)"
  end
  if value == "F" then
    return "Order Capacity: Firm (F)"
  end
  if value == "M" then
    return "Order Capacity: Market Maker (M)"
  end
  if value == "O" then
    return "Order Capacity: Other Exchange Registered Market Maker (O)"
  end
  if value == "P" then
    return "Order Capacity: Professional Customer (P)"
  end
  if value == "B" then
    return "Order Capacity: Broker Dealer (B)"
  end
  if value == "R" then
    return "Order Capacity: Retail (R)"
  end
  if value == " " then
    return "Order Capacity: Not Applicable (<whitespace>)"
  end

  return "Order Capacity: Unknown("..value..")"
end

-- Dissect: Order Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.order_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Order Id
nasdaq_iseoptions_otto_ouch_v3_0_0.order_id = {}

-- Size: Order Id
nasdaq_iseoptions_otto_ouch_v3_0_0.order_id.size = 8

-- Display: Order Id
nasdaq_iseoptions_otto_ouch_v3_0_0.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nasdaq_iseoptions_otto_ouch_v3_0_0.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Type
nasdaq_iseoptions_otto_ouch_v3_0_0.order_type = {}

-- Size: Order Type
nasdaq_iseoptions_otto_ouch_v3_0_0.order_type.size = 1

-- Display: Order Type
nasdaq_iseoptions_otto_ouch_v3_0_0.order_type.display = function(value)
  if value == "L" then
    return "Order Type: Limit (L)"
  end
  if value == "M" then
    return "Order Type: Market (M)"
  end
  if value == "N" then
    return "Order Type: Not Disclosed (N)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
nasdaq_iseoptions_otto_ouch_v3_0_0.order_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.order_type, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord Id
nasdaq_iseoptions_otto_ouch_v3_0_0.orig_cl_ord_id = {}

-- Size: Orig Cl Ord Id
nasdaq_iseoptions_otto_ouch_v3_0_0.orig_cl_ord_id.size = 16

-- Display: Orig Cl Ord Id
nasdaq_iseoptions_otto_ouch_v3_0_0.orig_cl_ord_id.display = function(value)
  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
nasdaq_iseoptions_otto_ouch_v3_0_0.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.orig_cl_ord_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Orig Order Id
nasdaq_iseoptions_otto_ouch_v3_0_0.orig_order_id = {}

-- Size: Orig Order Id
nasdaq_iseoptions_otto_ouch_v3_0_0.orig_order_id.size = 8

-- Display: Orig Order Id
nasdaq_iseoptions_otto_ouch_v3_0_0.orig_order_id.display = function(value)
  return "Orig Order Id: "..value
end

-- Dissect: Orig Order Id
nasdaq_iseoptions_otto_ouch_v3_0_0.orig_order_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.orig_order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.orig_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.orig_order_id, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_iseoptions_otto_ouch_v3_0_0.packet_length = {}

-- Size: Packet Length
nasdaq_iseoptions_otto_ouch_v3_0_0.packet_length.size = 2

-- Display: Packet Length
nasdaq_iseoptions_otto_ouch_v3_0_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_iseoptions_otto_ouch_v3_0_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_iseoptions_otto_ouch_v3_0_0.password = {}

-- Size: Password
nasdaq_iseoptions_otto_ouch_v3_0_0.password.size = 10

-- Display: Password
nasdaq_iseoptions_otto_ouch_v3_0_0.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_iseoptions_otto_ouch_v3_0_0.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.password, range, value, display)

  return offset + length, value
end

-- Pending Msg Type
nasdaq_iseoptions_otto_ouch_v3_0_0.pending_msg_type = {}

-- Size: Pending Msg Type
nasdaq_iseoptions_otto_ouch_v3_0_0.pending_msg_type.size = 1

-- Display: Pending Msg Type
nasdaq_iseoptions_otto_ouch_v3_0_0.pending_msg_type.display = function(value)
  return "Pending Msg Type: "..value
end

-- Dissect: Pending Msg Type
nasdaq_iseoptions_otto_ouch_v3_0_0.pending_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.pending_msg_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.pending_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.pending_msg_type, range, value, display)

  return offset + length, value
end

-- Pending Reason
nasdaq_iseoptions_otto_ouch_v3_0_0.pending_reason = {}

-- Size: Pending Reason
nasdaq_iseoptions_otto_ouch_v3_0_0.pending_reason.size = 1

-- Display: Pending Reason
nasdaq_iseoptions_otto_ouch_v3_0_0.pending_reason.display = function(value)
  if value == "A" then
    return "Pending Reason: Request In Progress (A)"
  end

  return "Pending Reason: Unknown("..value..")"
end

-- Dissect: Pending Reason
nasdaq_iseoptions_otto_ouch_v3_0_0.pending_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.pending_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.pending_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.pending_reason, range, value, display)

  return offset + length, value
end

-- Position Effect Mask
nasdaq_iseoptions_otto_ouch_v3_0_0.position_effect_mask = {}

-- Size: Position Effect Mask
nasdaq_iseoptions_otto_ouch_v3_0_0.position_effect_mask.size = 2

-- Display: Position Effect Mask
nasdaq_iseoptions_otto_ouch_v3_0_0.position_effect_mask.display = function(value)
  return "Position Effect Mask: "..value
end

-- Dissect: Position Effect Mask
nasdaq_iseoptions_otto_ouch_v3_0_0.position_effect_mask.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.position_effect_mask.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.position_effect_mask.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.position_effect_mask, range, value, display)

  return offset + length, value
end

-- Preferred Party
nasdaq_iseoptions_otto_ouch_v3_0_0.preferred_party = {}

-- Size: Preferred Party
nasdaq_iseoptions_otto_ouch_v3_0_0.preferred_party.size = 3

-- Display: Preferred Party
nasdaq_iseoptions_otto_ouch_v3_0_0.preferred_party.display = function(value)
  return "Preferred Party: "..value
end

-- Dissect: Preferred Party
nasdaq_iseoptions_otto_ouch_v3_0_0.preferred_party.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.preferred_party.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.preferred_party.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.preferred_party, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_iseoptions_otto_ouch_v3_0_0.price = {}

-- Size: Price
nasdaq_iseoptions_otto_ouch_v3_0_0.price.size = 8

-- Display: Price
nasdaq_iseoptions_otto_ouch_v3_0_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_iseoptions_otto_ouch_v3_0_0.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
nasdaq_iseoptions_otto_ouch_v3_0_0.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_iseoptions_otto_ouch_v3_0_0.price.translate(raw)
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.price, range, value, display)

  return offset + length, value
end

-- Price Protection
nasdaq_iseoptions_otto_ouch_v3_0_0.price_protection = {}

-- Size: Price Protection
nasdaq_iseoptions_otto_ouch_v3_0_0.price_protection.size = 1

-- Display: Price Protection
nasdaq_iseoptions_otto_ouch_v3_0_0.price_protection.display = function(value)
  if value == "L" then
    return "Price Protection: Local (L)"
  end
  if value == "N" then
    return "Price Protection: National (N)"
  end

  return "Price Protection: Unknown("..value..")"
end

-- Dissect: Price Protection
nasdaq_iseoptions_otto_ouch_v3_0_0.price_protection.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.price_protection.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.price_protection.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.price_protection, range, value, display)

  return offset + length, value
end

-- Primary Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_capacity = {}

-- Size: Primary Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_capacity.size = 1

-- Display: Primary Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_capacity.display = function(value)
  if value == "C" then
    return "Primary Capacity: Customer (C)"
  end
  if value == "F" then
    return "Primary Capacity: Firm (F)"
  end
  if value == "M" then
    return "Primary Capacity: Market Maker (M)"
  end
  if value == "O" then
    return "Primary Capacity: Other Exchange Registered Market Maker (O)"
  end
  if value == "P" then
    return "Primary Capacity: Professional Customer (P)"
  end
  if value == "B" then
    return "Primary Capacity: Broker Dealer (B)"
  end
  if value == "R" then
    return "Primary Capacity: Retail (R)"
  end
  if value == " " then
    return "Primary Capacity: Not Applicable (<whitespace>)"
  end

  return "Primary Capacity: Unknown("..value..")"
end

-- Dissect: Primary Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_capacity, range, value, display)

  return offset + length, value
end

-- Primary Cl Ord Id
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cl_ord_id = {}

-- Size: Primary Cl Ord Id
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cl_ord_id.size = 16

-- Display: Primary Cl Ord Id
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cl_ord_id.display = function(value)
  return "Primary Cl Ord Id: "..value
end

-- Dissect: Primary Cl Ord Id
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cl_ord_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Primary Clearing Account
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_clearing_account = {}

-- Size: Primary Clearing Account
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_clearing_account.size = 4

-- Display: Primary Clearing Account
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_clearing_account.display = function(value)
  return "Primary Clearing Account: "..value
end

-- Dissect: Primary Clearing Account
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_clearing_account.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_clearing_account, range, value, display)

  return offset + length, value
end

-- Primary Cmta
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cmta = {}

-- Size: Primary Cmta
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cmta.size = 4

-- Display: Primary Cmta
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cmta.display = function(value)
  return "Primary Cmta: "..value
end

-- Dissect: Primary Cmta
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cmta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cmta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cmta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_cmta, range, value, display)

  return offset + length, value
end

-- Primary Cust Acct
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cust_acct = {}

-- Size: Primary Cust Acct
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cust_acct.size = 10

-- Display: Primary Cust Acct
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cust_acct.display = function(value)
  return "Primary Cust Acct: "..value
end

-- Dissect: Primary Cust Acct
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cust_acct.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cust_acct.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cust_acct.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_cust_acct, range, value, display)

  return offset + length, value
end

-- Primary Occ Account
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_occ_account = {}

-- Size: Primary Occ Account
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_occ_account.size = 4

-- Display: Primary Occ Account
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_occ_account.display = function(value)
  return "Primary Occ Account: "..value
end

-- Dissect: Primary Occ Account
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_occ_account.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_occ_account.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_occ_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_occ_account, range, value, display)

  return offset + length, value
end

-- Primary Order Id
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_order_id = {}

-- Size: Primary Order Id
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_order_id.size = 8

-- Display: Primary Order Id
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_order_id.display = function(value)
  return "Primary Order Id: "..value
end

-- Dissect: Primary Order Id
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_order_id, range, value, display)

  return offset + length, value
end

-- Primary Position Effect Mask
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_position_effect_mask = {}

-- Size: Primary Position Effect Mask
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_position_effect_mask.size = 2

-- Display: Primary Position Effect Mask
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_position_effect_mask.display = function(value)
  return "Primary Position Effect Mask: "..value
end

-- Dissect: Primary Position Effect Mask
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_position_effect_mask.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_position_effect_mask.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_position_effect_mask.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_position_effect_mask, range, value, display)

  return offset + length, value
end

-- Primary Price
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_price = {}

-- Size: Primary Price
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_price.size = 8

-- Display: Primary Price
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_price.display = function(value)
  return "Primary Price: "..value
end

-- Translate: Primary Price
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Primary Price
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_price.translate(raw)
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_price, range, value, display)

  return offset + length, value
end

-- Primary Quantity
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_quantity = {}

-- Size: Primary Quantity
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_quantity.size = 4

-- Display: Primary Quantity
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_quantity.display = function(value)
  return "Primary Quantity: "..value
end

-- Dissect: Primary Quantity
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_quantity, range, value, display)

  return offset + length, value
end

-- Primary Stock Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_capacity = {}

-- Size: Primary Stock Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_capacity.size = 1

-- Display: Primary Stock Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_capacity.display = function(value)
  if value == "P" then
    return "Primary Stock Capacity: Principal (P)"
  end
  if value == "A" then
    return "Primary Stock Capacity: Agency (A)"
  end
  if value == "R" then
    return "Primary Stock Capacity: Riskless Principal (R)"
  end
  if value == " " then
    return "Primary Stock Capacity: Not Applicable (<whitespace>)"
  end

  return "Primary Stock Capacity: Unknown("..value..")"
end

-- Dissect: Primary Stock Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_stock_capacity, range, value, display)

  return offset + length, value
end

-- Primary Stock Leg Mpid
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_leg_mpid = {}

-- Size: Primary Stock Leg Mpid
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_leg_mpid.size = 4

-- Display: Primary Stock Leg Mpid
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_leg_mpid.display = function(value)
  return "Primary Stock Leg Mpid: "..value
end

-- Dissect: Primary Stock Leg Mpid
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_leg_mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_leg_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_leg_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_stock_leg_mpid, range, value, display)

  return offset + length, value
end

-- Primary Stock Leg Short Sale
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_leg_short_sale = {}

-- Size: Primary Stock Leg Short Sale
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_leg_short_sale.size = 1

-- Display: Primary Stock Leg Short Sale
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_leg_short_sale.display = function(value)
  if value == "N" then
    return "Primary Stock Leg Short Sale: Not Applicable (N)"
  end
  if value == "H" then
    return "Primary Stock Leg Short Sale: Sell Short (H)"
  end
  if value == "E" then
    return "Primary Stock Leg Short Sale: Sell Short Exempt (E)"
  end

  return "Primary Stock Leg Short Sale: Unknown("..value..")"
end

-- Dissect: Primary Stock Leg Short Sale
nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_leg_short_sale.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_leg_short_sale.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_leg_short_sale.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.primary_stock_leg_short_sale, range, value, display)

  return offset + length, value
end

-- Product Id
nasdaq_iseoptions_otto_ouch_v3_0_0.product_id = {}

-- Size: Product Id
nasdaq_iseoptions_otto_ouch_v3_0_0.product_id.size = 2

-- Display: Product Id
nasdaq_iseoptions_otto_ouch_v3_0_0.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nasdaq_iseoptions_otto_ouch_v3_0_0.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.product_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.product_id, range, value, display)

  return offset + length, value
end

-- Product Name
nasdaq_iseoptions_otto_ouch_v3_0_0.product_name = {}

-- Size: Product Name
nasdaq_iseoptions_otto_ouch_v3_0_0.product_name.size = 13

-- Display: Product Name
nasdaq_iseoptions_otto_ouch_v3_0_0.product_name.display = function(value)
  return "Product Name: "..value
end

-- Dissect: Product Name
nasdaq_iseoptions_otto_ouch_v3_0_0.product_name.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.product_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.product_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.product_name, range, value, display)

  return offset + length, value
end

-- Quantity
nasdaq_iseoptions_otto_ouch_v3_0_0.quantity = {}

-- Size: Quantity
nasdaq_iseoptions_otto_ouch_v3_0_0.quantity.size = 4

-- Display: Quantity
nasdaq_iseoptions_otto_ouch_v3_0_0.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nasdaq_iseoptions_otto_ouch_v3_0_0.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quantity Short
nasdaq_iseoptions_otto_ouch_v3_0_0.quantity_short = {}

-- Size: Quantity Short
nasdaq_iseoptions_otto_ouch_v3_0_0.quantity_short.size = 2

-- Display: Quantity Short
nasdaq_iseoptions_otto_ouch_v3_0_0.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
nasdaq_iseoptions_otto_ouch_v3_0_0.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.quantity_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Ref Match Id
nasdaq_iseoptions_otto_ouch_v3_0_0.ref_match_id = {}

-- Size: Ref Match Id
nasdaq_iseoptions_otto_ouch_v3_0_0.ref_match_id.size = 4

-- Display: Ref Match Id
nasdaq_iseoptions_otto_ouch_v3_0_0.ref_match_id.display = function(value)
  return "Ref Match Id: "..value
end

-- Dissect: Ref Match Id
nasdaq_iseoptions_otto_ouch_v3_0_0.ref_match_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.ref_match_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.ref_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.ref_match_id, range, value, display)

  return offset + length, value
end

-- Reject Code
nasdaq_iseoptions_otto_ouch_v3_0_0.reject_code = {}

-- Size: Reject Code
nasdaq_iseoptions_otto_ouch_v3_0_0.reject_code.size = 2

-- Display: Reject Code
nasdaq_iseoptions_otto_ouch_v3_0_0.reject_code.display = function(value)
  if value == 10 then
    return "Reject Code: Invalid Firm (10)"
  end
  if value == 11 then
    return "Reject Code: Invalid Instrument (11)"
  end
  if value == 12 then
    return "Reject Code: Invalid Instrument Type (12)"
  end
  if value == 13 then
    return "Reject Code: Invalid Quantity (13)"
  end
  if value == 14 then
    return "Reject Code: Invalid Price (14)"
  end
  if value == 15 then
    return "Reject Code: Invalid Side (15)"
  end
  if value == 16 then
    return "Reject Code: Invalid Tif (16)"
  end
  if value == 17 then
    return "Reject Code: Invalid Iso (17)"
  end
  if value == 18 then
    return "Reject Code: Invalid Auction Type (18)"
  end
  if value == 19 then
    return "Reject Code: Invalid Auction Id (19)"
  end
  if value == 20 then
    return "Reject Code: Invalid Order Type (20)"
  end
  if value == 21 then
    return "Reject Code: Invalid Pref Party (21)"
  end
  if value == 22 then
    return "Reject Code: Invalid Alo (22)"
  end
  if value == 23 then
    return "Reject Code: Invalid Capacity (23)"
  end
  if value == 24 then
    return "Reject Code: Invalid Reserved Inst (24)"
  end
  if value == 25 then
    return "Reject Code: Invalid Trade (25)"
  end
  if value == 26 then
    return "Reject Code: Invalid Format (26)"
  end
  if value == 27 then
    return "Reject Code: Invalid Cross Type (27)"
  end
  if value == 28 then
    return "Reject Code: Invalid Min Quantity (28)"
  end
  if value == 29 then
    return "Reject Code: Invalid Price Protection (29)"
  end
  if value == 30 then
    return "Reject Code: Invalid Reserve (30)"
  end
  if value == 31 then
    return "Reject Code: Invalid Persist (31)"
  end
  if value == 32 then
    return "Reject Code: Invalid Short Sale Ind (32)"
  end
  if value == 33 then
    return "Reject Code: Invalid Product (33)"
  end
  if value == 34 then
    return "Reject Code: Invalid Scope (34)"
  end
  if value == 35 then
    return "Reject Code: Invalid Clearing Info (35)"
  end
  if value == 36 then
    return "Reject Code: Invalid Position Effect (36)"
  end
  if value == 37 then
    return "Reject Code: Invalid Cross Id (37)"
  end
  if value == 38 then
    return "Reject Code: Invalid Match Id (38)"
  end
  if value == 39 then
    return "Reject Code: Invalid Client Order Id (39)"
  end
  if value == 40 then
    return "Reject Code: Invalid Killswitch Action (40)"
  end
  if value == 41 then
    return "Reject Code: Invalid Leg Count (41)"
  end
  if value == 42 then
    return "Reject Code: Invalid Leg Type (42)"
  end
  if value == 43 then
    return "Reject Code: Invalid Leg Ratio (43)"
  end
  if value == 44 then
    return "Reject Code: Invalid Mpid (44)"
  end
  if value == 45 then
    return "Reject Code: Invalid Time (45)"
  end
  if value == 46 then
    return "Reject Code: Invalid Msg Type (46)"
  end
  if value == 47 then
    return "Reject Code: Invalid Disclosure Mask (47)"
  end
  if value == 48 then
    return "Reject Code: Post Only Reprice (48)"
  end
  if value == 49 then
    return "Reject Code: Un Authorized Give Up (49)"
  end
  if value == 50 then
    return "Reject Code: Invalid Session (50)"
  end
  if value == 101 then
    return "Reject Code: Not Free Trading (101)"
  end
  if value == 102 then
    return "Reject Code: Pref Not Allowed (102)"
  end
  if value == 103 then
    return "Reject Code: Stock Combo Not Allowed (103)"
  end
  if value == 104 then
    return "Reject Code: Instrument Halted (104)"
  end
  if value == 105 then
    return "Reject Code: Kill Switch In Effect (105)"
  end
  if value == 106 then
    return "Reject Code: System Closed (106)"
  end
  if value == 107 then
    return "Reject Code: Test Mode (107)"
  end
  if value == 108 then
    return "Reject Code: Order Not Found (108)"
  end
  if value == 109 then
    return "Reject Code: Too Late To Act (109)"
  end
  if value == 110 then
    return "Reject Code: Instrument Closed (110)"
  end
  if value == 111 then
    return "Reject Code: Instrument State (111)"
  end
  if value == 112 then
    return "Reject Code: Action Not Allowed (112)"
  end
  if value == 113 then
    return "Reject Code: Luld In Effect (113)"
  end
  if value == 114 then
    return "Reject Code: Too Many Combos (114)"
  end
  if value == 115 then
    return "Reject Code: Request Cancelled (115)"
  end
  if value == 116 then
    return "Reject Code: Below Minimum Reserve (116)"
  end
  if value == 117 then
    return "Reject Code: Port Rate Breached (117)"
  end
  if value == 118 then
    return "Reject Code: Invalid Trader Id (118)"
  end
  if value == 119 then
    return "Reject Code: Stop Price Not Allowed (119)"
  end
  if value == 120 then
    return "Reject Code: Stop Price (120)"
  end
  if value == 121 then
    return "Reject Code: Firm Suspended (121)"
  end
  if value == 122 then
    return "Reject Code: Trader Suspended (122)"
  end
  if value == 123 then
    return "Reject Code: Port Suspended (123)"
  end
  if value == 124 then
    return "Reject Code: Invalid Investment Decision (124)"
  end
  if value == 125 then
    return "Reject Code: Invalid Execution Decision (125)"
  end
  if value == 126 then
    return "Reject Code: Invalid Dea (126)"
  end
  if value == 127 then
    return "Reject Code: Invalid Client Id (127)"
  end
  if value == 128 then
    return "Reject Code: Invalid Party Role Qualifier (128)"
  end
  if value == 129 then
    return "Reject Code: Order Expired (129)"
  end
  if value == 130 then
    return "Reject Code: Invalid Good Til Date (130)"
  end
  if value == 131 then
    return "Reject Code: Instrument Expired (131)"
  end
  if value == 132 then
    return "Reject Code: Invalid Self Match Prev Id (132)"
  end
  if value == 133 then
    return "Reject Code: Spread (133)"
  end
  if value == 134 then
    return "Reject Code: Not Permitted (134)"
  end
  if value == 135 then
    return "Reject Code: Size (135)"
  end
  if value == 136 then
    return "Reject Code: Attribute (136)"
  end
  if value == 137 then
    return "Reject Code: Reentry Required (137)"
  end
  if value == 138 then
    return "Reject Code: Opening Rotation (138)"
  end
  if value == 139 then
    return "Reject Code: Kill Switch Reentry Required (139)"
  end
  if value == 140 then
    return "Reject Code: Auction (140)"
  end
  if value == 141 then
    return "Reject Code: Market Closed (141)"
  end
  if value == 142 then
    return "Reject Code: Pending (142)"
  end
  if value == 143 then
    return "Reject Code: System Error (143)"
  end
  if value == 144 then
    return "Reject Code: Cancel On Disconnect (144)"
  end
  if value == 145 then
    return "Reject Code: Auction Duration (145)"
  end

  return "Reject Code: Unknown("..value..")"
end

-- Dissect: Reject Code
nasdaq_iseoptions_otto_ouch_v3_0_0.reject_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.reject_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.reject_code, range, value, display)

  return offset + length, value
end

-- Reject Msg Type
nasdaq_iseoptions_otto_ouch_v3_0_0.reject_msg_type = {}

-- Size: Reject Msg Type
nasdaq_iseoptions_otto_ouch_v3_0_0.reject_msg_type.size = 1

-- Display: Reject Msg Type
nasdaq_iseoptions_otto_ouch_v3_0_0.reject_msg_type.display = function(value)
  return "Reject Msg Type: "..value
end

-- Dissect: Reject Msg Type
nasdaq_iseoptions_otto_ouch_v3_0_0.reject_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.reject_msg_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.reject_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.reject_msg_type, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_iseoptions_otto_ouch_v3_0_0.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_iseoptions_otto_ouch_v3_0_0.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_iseoptions_otto_ouch_v3_0_0.reject_reason_code.display = function(value)
  if value == "A" then
    return "Reject Reason Code: Not Authorized (A)"
  end
  if value == "S" then
    return "Reject Reason Code: Session Not Available (S)"
  end

  return "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
nasdaq_iseoptions_otto_ouch_v3_0_0.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_iseoptions_otto_ouch_v3_0_0.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_iseoptions_otto_ouch_v3_0_0.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_iseoptions_otto_ouch_v3_0_0.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_iseoptions_otto_ouch_v3_0_0.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_iseoptions_otto_ouch_v3_0_0.requested_session = {}

-- Size: Requested Session
nasdaq_iseoptions_otto_ouch_v3_0_0.requested_session.size = 10

-- Display: Requested Session
nasdaq_iseoptions_otto_ouch_v3_0_0.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_iseoptions_otto_ouch_v3_0_0.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.requested_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 1
nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_1 = {}

-- Size: Reserved 1
nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_1.size = 1

-- Display: Reserved 1
nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 16
nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_16 = {}

-- Size: Reserved 16
nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_16.size = 16

-- Display: Reserved 16
nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Reserved 8
nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_8 = {}

-- Size: Reserved 8
nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_8.size = 8

-- Display: Reserved 8
nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Reserved 9
nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_9 = {}

-- Size: Reserved 9
nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_9.size = 9

-- Display: Reserved 9
nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_9.display = function(value)
  return "Reserved 9: "..value
end

-- Dissect: Reserved 9
nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_9.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_9.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.reserved_9, range, value, display)

  return offset + length, value
end

-- Scope
nasdaq_iseoptions_otto_ouch_v3_0_0.scope = {}

-- Size: Scope
nasdaq_iseoptions_otto_ouch_v3_0_0.scope.size = 1

-- Display: Scope
nasdaq_iseoptions_otto_ouch_v3_0_0.scope.display = function(value)
  if value == "P" then
    return "Scope: Product (P)"
  end
  if value == "I" then
    return "Scope: Instrument (I)"
  end
  if value == "F" then
    return "Scope: Firm (F)"
  end

  return "Scope: Unknown("..value..")"
end

-- Dissect: Scope
nasdaq_iseoptions_otto_ouch_v3_0_0.scope.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.scope.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.scope, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_iseoptions_otto_ouch_v3_0_0.security_symbol = {}

-- Size: Security Symbol
nasdaq_iseoptions_otto_ouch_v3_0_0.security_symbol.size = 8

-- Display: Security Symbol
nasdaq_iseoptions_otto_ouch_v3_0_0.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_iseoptions_otto_ouch_v3_0_0.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_iseoptions_otto_ouch_v3_0_0.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_iseoptions_otto_ouch_v3_0_0.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_iseoptions_otto_ouch_v3_0_0.sequenced_message_type.display = function(value)
  if value == "z" then
    return "Sequenced Message Type: System Event Message (z)"
  end
  if value == "o" then
    return "Sequenced Message Type: Simple Instrument Directory Message (o)"
  end
  if value == "s" then
    return "Sequenced Message Type: Complex Instrument Directory Message (s)"
  end
  if value == "i" then
    return "Sequenced Message Type: Instrument Trading Action Message (i)"
  end
  if value == "n" then
    return "Sequenced Message Type: Auction Notification Message (n)"
  end
  if value == "a" then
    return "Sequenced Message Type: Order Accepted Long Form Message (a)"
  end
  if value == "b" then
    return "Sequenced Message Type: Order Accepted Short Form Message (b)"
  end
  if value == "r" then
    return "Sequenced Message Type: Order Replaced Message (r)"
  end
  if value == "c" then
    return "Sequenced Message Type: Order Canceled Message (c)"
  end
  if value == "e" then
    return "Sequenced Message Type: Order Executed Message (e)"
  end
  if value == "t" then
    return "Sequenced Message Type: Trade Details Message (t)"
  end
  if value == "x" then
    return "Sequenced Message Type: Cross Order Accepted Message (x)"
  end
  if value == "k" then
    return "Sequenced Message Type: Member Kill Switch Notification Message (k)"
  end
  if value == "u" then
    return "Sequenced Message Type: Mass Cancel Response Message (u)"
  end
  if value == "d" then
    return "Sequenced Message Type: Add Complex Instrument Response Message (d)"
  end
  if value == "m" then
    return "Sequenced Message Type: Modify Trade Response Message (m)"
  end
  if value == "f" then
    return "Sequenced Message Type: Subscription Response Message (f)"
  end
  if value == "j" then
    return "Sequenced Message Type: Reject Message (j)"
  end
  if value == "p" then
    return "Sequenced Message Type: Pending Response Message (p)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_iseoptions_otto_ouch_v3_0_0.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet_type.display = function(value)
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
nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_iseoptions_otto_ouch_v3_0_0.side = {}

-- Size: Side
nasdaq_iseoptions_otto_ouch_v3_0_0.side.size = 1

-- Display: Side
nasdaq_iseoptions_otto_ouch_v3_0_0.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end
  if value == "O" then
    return "Side: Offer (O)"
  end
  if value == "N" then
    return "Side: Not Disclosed (N)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_iseoptions_otto_ouch_v3_0_0.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.side, range, value, display)

  return offset + length, value
end

-- Stock Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.stock_capacity = {}

-- Size: Stock Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.stock_capacity.size = 1

-- Display: Stock Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.stock_capacity.display = function(value)
  if value == "P" then
    return "Stock Capacity: Principal (P)"
  end
  if value == "A" then
    return "Stock Capacity: Agency (A)"
  end
  if value == "R" then
    return "Stock Capacity: Riskless Principal (R)"
  end
  if value == " " then
    return "Stock Capacity: Not Applicable (<whitespace>)"
  end

  return "Stock Capacity: Unknown("..value..")"
end

-- Dissect: Stock Capacity
nasdaq_iseoptions_otto_ouch_v3_0_0.stock_capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.stock_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.stock_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.stock_capacity, range, value, display)

  return offset + length, value
end

-- Stock Leg Mpid
nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_mpid = {}

-- Size: Stock Leg Mpid
nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_mpid.size = 4

-- Display: Stock Leg Mpid
nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_mpid.display = function(value)
  return "Stock Leg Mpid: "..value
end

-- Dissect: Stock Leg Mpid
nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.stock_leg_mpid, range, value, display)

  return offset + length, value
end

-- Stock Leg Short Sale
nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_short_sale = {}

-- Size: Stock Leg Short Sale
nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_short_sale.size = 1

-- Display: Stock Leg Short Sale
nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_short_sale.display = function(value)
  if value == "N" then
    return "Stock Leg Short Sale: Not Applicable (N)"
  end
  if value == "H" then
    return "Stock Leg Short Sale: Sell Short (H)"
  end
  if value == "E" then
    return "Stock Leg Short Sale: Sell Short Exempt (E)"
  end

  return "Stock Leg Short Sale: Unknown("..value..")"
end

-- Dissect: Stock Leg Short Sale
nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_short_sale.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_short_sale.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_short_sale.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.stock_leg_short_sale, range, value, display)

  return offset + length, value
end

-- Stock Venue
nasdaq_iseoptions_otto_ouch_v3_0_0.stock_venue = {}

-- Size: Stock Venue
nasdaq_iseoptions_otto_ouch_v3_0_0.stock_venue.size = 1

-- Display: Stock Venue
nasdaq_iseoptions_otto_ouch_v3_0_0.stock_venue.display = function(value)
  if value == "X" then
    return "Stock Venue: Not Applicable (X)"
  end

  return "Stock Venue: Unknown("..value..")"
end

-- Dissect: Stock Venue
nasdaq_iseoptions_otto_ouch_v3_0_0.stock_venue.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.stock_venue.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.stock_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.stock_venue, range, value, display)

  return offset + length, value
end

-- Strike Price
nasdaq_iseoptions_otto_ouch_v3_0_0.strike_price = {}

-- Size: Strike Price
nasdaq_iseoptions_otto_ouch_v3_0_0.strike_price.size = 8

-- Display: Strike Price
nasdaq_iseoptions_otto_ouch_v3_0_0.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
nasdaq_iseoptions_otto_ouch_v3_0_0.strike_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Strike Price
nasdaq_iseoptions_otto_ouch_v3_0_0.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.strike_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_iseoptions_otto_ouch_v3_0_0.strike_price.translate(raw)
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Subscription
nasdaq_iseoptions_otto_ouch_v3_0_0.subscription = {}

-- Size: Subscription
nasdaq_iseoptions_otto_ouch_v3_0_0.subscription.size = 16

-- Display: Subscription
nasdaq_iseoptions_otto_ouch_v3_0_0.subscription.display = function(value)
  return "Subscription: "..value
end

-- Dissect: Subscription
nasdaq_iseoptions_otto_ouch_v3_0_0.subscription.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.subscription.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.subscription.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.subscription, range, value, display)

  return offset + length, value
end

-- Subversion
nasdaq_iseoptions_otto_ouch_v3_0_0.subversion = {}

-- Size: Subversion
nasdaq_iseoptions_otto_ouch_v3_0_0.subversion.size = 1

-- Display: Subversion
nasdaq_iseoptions_otto_ouch_v3_0_0.subversion.display = function(value)
  return "Subversion: "..value
end

-- Dissect: Subversion
nasdaq_iseoptions_otto_ouch_v3_0_0.subversion.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.subversion.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.subversion.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.subversion, range, value, display)

  return offset + length, value
end

-- Target Firm Id
nasdaq_iseoptions_otto_ouch_v3_0_0.target_firm_id = {}

-- Size: Target Firm Id
nasdaq_iseoptions_otto_ouch_v3_0_0.target_firm_id.size = 4

-- Display: Target Firm Id
nasdaq_iseoptions_otto_ouch_v3_0_0.target_firm_id.display = function(value)
  return "Target Firm Id: "..value
end

-- Dissect: Target Firm Id
nasdaq_iseoptions_otto_ouch_v3_0_0.target_firm_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.target_firm_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.target_firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.target_firm_id, range, value, display)

  return offset + length, value
end

-- Tif
nasdaq_iseoptions_otto_ouch_v3_0_0.tif = {}

-- Size: Tif
nasdaq_iseoptions_otto_ouch_v3_0_0.tif.size = 1

-- Display: Tif
nasdaq_iseoptions_otto_ouch_v3_0_0.tif.display = function(value)
  if value == "D" then
    return "Tif: Day (D)"
  end
  if value == "F" then
    return "Tif: Fok (F)"
  end
  if value == "I" then
    return "Tif: Ioc (I)"
  end

  return "Tif: Unknown("..value..")"
end

-- Dissect: Tif
nasdaq_iseoptions_otto_ouch_v3_0_0.tif.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.tif.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.tif.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.tif, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp = {}

-- Size: Timestamp
nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.size = 8

-- Display: Timestamp
nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_iseoptions_otto_ouch_v3_0_0.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tradable
nasdaq_iseoptions_otto_ouch_v3_0_0.tradable = {}

-- Size: Tradable
nasdaq_iseoptions_otto_ouch_v3_0_0.tradable.size = 1

-- Display: Tradable
nasdaq_iseoptions_otto_ouch_v3_0_0.tradable.display = function(value)
  if value == "Y" then
    return "Tradable: Tradable (Y)"
  end
  if value == "N" then
    return "Tradable: Not Tradable (N)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
nasdaq_iseoptions_otto_ouch_v3_0_0.tradable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.tradable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.tradable, range, value, display)

  return offset + length, value
end

-- Trading State
nasdaq_iseoptions_otto_ouch_v3_0_0.trading_state = {}

-- Size: Trading State
nasdaq_iseoptions_otto_ouch_v3_0_0.trading_state.size = 1

-- Display: Trading State
nasdaq_iseoptions_otto_ouch_v3_0_0.trading_state.display = function(value)
  if value == "H" then
    return "Trading State: Halted (H)"
  end
  if value == "T" then
    return "Trading State: Trading (T)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
nasdaq_iseoptions_otto_ouch_v3_0_0.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Trans Type
nasdaq_iseoptions_otto_ouch_v3_0_0.trans_type = {}

-- Size: Trans Type
nasdaq_iseoptions_otto_ouch_v3_0_0.trans_type.size = 1

-- Display: Trans Type
nasdaq_iseoptions_otto_ouch_v3_0_0.trans_type.display = function(value)
  if value == "A" then
    return "Trans Type: New Trade (A)"
  end
  if value == "B" then
    return "Trans Type: Trade Busted (B)"
  end
  if value == "C" then
    return "Trans Type: Modified Trade (C)"
  end

  return "Trans Type: Unknown("..value..")"
end

-- Dissect: Trans Type
nasdaq_iseoptions_otto_ouch_v3_0_0.trans_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.trans_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.trans_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.trans_type, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_iseoptions_otto_ouch_v3_0_0.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_iseoptions_otto_ouch_v3_0_0.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_iseoptions_otto_ouch_v3_0_0.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_iseoptions_otto_ouch_v3_0_0.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
nasdaq_iseoptions_otto_ouch_v3_0_0.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_iseoptions_otto_ouch_v3_0_0.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_iseoptions_otto_ouch_v3_0_0.unsequenced_message_type.display = function(value)
  if value == "A" then
    return "Unsequenced Message Type: New Order Long Form Message (A)"
  end
  if value == "B" then
    return "Unsequenced Message Type: New Order Short Form Message (B)"
  end
  if value == "R" then
    return "Unsequenced Message Type: Replace Order Message (R)"
  end
  if value == "C" then
    return "Unsequenced Message Type: Cancel Order Message (C)"
  end
  if value == "U" then
    return "Unsequenced Message Type: Mass Cancel Message (U)"
  end
  if value == "X" then
    return "Unsequenced Message Type: New Cross Order Message (X)"
  end
  if value == "S" then
    return "Unsequenced Message Type: Add Complex Instrument Message (S)"
  end
  if value == "M" then
    return "Unsequenced Message Type: Modify Trade Message (M)"
  end
  if value == "K" then
    return "Unsequenced Message Type: Member Kill Switch Request Message (K)"
  end
  if value == "F" then
    return "Unsequenced Message Type: Subscription Request Message (F)"
  end

  return "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
nasdaq_iseoptions_otto_ouch_v3_0_0.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_iseoptions_otto_ouch_v3_0_0.username = {}

-- Size: Username
nasdaq_iseoptions_otto_ouch_v3_0_0.username.size = 6

-- Display: Username
nasdaq_iseoptions_otto_ouch_v3_0_0.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_iseoptions_otto_ouch_v3_0_0.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.username, range, value, display)

  return offset + length, value
end

-- Version
nasdaq_iseoptions_otto_ouch_v3_0_0.version = {}

-- Size: Version
nasdaq_iseoptions_otto_ouch_v3_0_0.version.size = 1

-- Display: Version
nasdaq_iseoptions_otto_ouch_v3_0_0.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_iseoptions_otto_ouch_v3_0_0.version.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_iseoptions_otto_ouch_v3_0_0.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq IseOptions Otto Ouch 3.0.0
-----------------------------------------------------------------------

-- End Of Session Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.end_of_session_packet = {}

-- Display: End Of Session Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.end_of_session_packet.display = function(packet, parent, length)
  return "End Of Session Packet"
end


-- Dissect: End Of Session Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.end_of_session_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.end_of_session_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.server_heartbeat_packet = {}

-- Display: Server Heartbeat Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.server_heartbeat_packet.display = function(packet, parent, length)
  return "Server Heartbeat Packet"
end


-- Dissect: Server Heartbeat Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.server_heartbeat_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.server_heartbeat_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Pending Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.pending_response_message = {}

-- Size: Pending Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.pending_response_message.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.pending_msg_type.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.pending_reason.size

-- Display: Pending Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.pending_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Pending Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.pending_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Pending Msg Type: Alpha
  index, pending_msg_type = nasdaq_iseoptions_otto_ouch_v3_0_0.pending_msg_type.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Alphanumeric
  index, cl_ord_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Pending Reason: Alpha
  index, pending_reason = nasdaq_iseoptions_otto_ouch_v3_0_0.pending_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Pending Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.pending_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.pending_response_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.pending_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.pending_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.pending_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Reject Message
nasdaq_iseoptions_otto_ouch_v3_0_0.reject_message = {}

-- Size: Reject Message
nasdaq_iseoptions_otto_ouch_v3_0_0.reject_message.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.reject_msg_type.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.reject_code.size

-- Display: Reject Message
nasdaq_iseoptions_otto_ouch_v3_0_0.reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject Message
nasdaq_iseoptions_otto_ouch_v3_0_0.reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Reject Msg Type: Alpha
  index, reject_msg_type = nasdaq_iseoptions_otto_ouch_v3_0_0.reject_msg_type.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Alphanumeric
  index, cl_ord_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Reject Code: Integer
  index, reject_code = nasdaq_iseoptions_otto_ouch_v3_0_0.reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject Message
nasdaq_iseoptions_otto_ouch_v3_0_0.reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.reject_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Subscription Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.subscription_response_message = {}

-- Size: Subscription Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.subscription_response_message.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.size

-- Display: Subscription Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.subscription_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subscription Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.subscription_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Cl Request Id: Alphanumeric
  index, cl_request_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Subscription Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.subscription_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.subscription_response_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.subscription_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.subscription_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.subscription_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Trade Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.modify_trade_response_message = {}

-- Size: Modify Trade Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.modify_trade_response_message.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cross_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.match_id.size

-- Display: Modify Trade Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.modify_trade_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Trade Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.modify_trade_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Cl Request Id: Alphanumeric
  index, cl_request_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Alphanumeric
  index, cl_ord_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cross Id: Integer
  index, cross_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cross_id.dissect(buffer, index, packet, parent)

  -- Match Id: Integer
  index, match_id = nasdaq_iseoptions_otto_ouch_v3_0_0.match_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Trade Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.modify_trade_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.modify_trade_response_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.modify_trade_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.modify_trade_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.modify_trade_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Complex Instrument Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.add_complex_instrument_response_message = {}

-- Size: Add Complex Instrument Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.add_complex_instrument_response_message.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.size

-- Display: Add Complex Instrument Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.add_complex_instrument_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Complex Instrument Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.add_complex_instrument_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Cl Request Id: Alphanumeric
  index, cl_request_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Complex Instrument Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.add_complex_instrument_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.add_complex_instrument_response_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.add_complex_instrument_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.add_complex_instrument_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.add_complex_instrument_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.mass_cancel_response_message = {}

-- Size: Mass Cancel Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.mass_cancel_response_message.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.num_canceled.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.num_pending.size

-- Display: Mass Cancel Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.mass_cancel_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.mass_cancel_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Cl Request Id: Alphanumeric
  index, cl_request_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.dissect(buffer, index, packet, parent)

  -- Num Canceled: Integer
  index, num_canceled = nasdaq_iseoptions_otto_ouch_v3_0_0.num_canceled.dissect(buffer, index, packet, parent)

  -- Num Pending: Integer
  index, num_pending = nasdaq_iseoptions_otto_ouch_v3_0_0.num_pending.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Response Message
nasdaq_iseoptions_otto_ouch_v3_0_0.mass_cancel_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.mass_cancel_response_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.mass_cancel_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.mass_cancel_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.mass_cancel_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Member Kill Switch Notification Message
nasdaq_iseoptions_otto_ouch_v3_0_0.member_kill_switch_notification_message = {}

-- Size: Member Kill Switch Notification Message
nasdaq_iseoptions_otto_ouch_v3_0_0.member_kill_switch_notification_message.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.target_firm_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.kill_action.size

-- Display: Member Kill Switch Notification Message
nasdaq_iseoptions_otto_ouch_v3_0_0.member_kill_switch_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Member Kill Switch Notification Message
nasdaq_iseoptions_otto_ouch_v3_0_0.member_kill_switch_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Cl Request Id: Alphanumeric
  index, cl_request_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.dissect(buffer, index, packet, parent)

  -- Target Firm Id: Alphanumeric
  index, target_firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.target_firm_id.dissect(buffer, index, packet, parent)

  -- Kill Action: Alpha
  index, kill_action = nasdaq_iseoptions_otto_ouch_v3_0_0.kill_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Member Kill Switch Notification Message
nasdaq_iseoptions_otto_ouch_v3_0_0.member_kill_switch_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.member_kill_switch_notification_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.member_kill_switch_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.member_kill_switch_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.member_kill_switch_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Order Accepted Message
nasdaq_iseoptions_otto_ouch_v3_0_0.cross_order_accepted_message = {}

-- Size: Cross Order Accepted Message
nasdaq_iseoptions_otto_ouch_v3_0_0.cross_order_accepted_message.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cross_type.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.auction_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.auction_alloc_pct.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.side.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.iso.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.price_protection.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.effective_time.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.disclosure_mask.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.primary_order_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cl_ord_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cmta.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.primary_clearing_account.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.primary_occ_account.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cust_acct.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.primary_price.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.primary_quantity.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.primary_capacity.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.primary_position_effect_mask.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_leg_short_sale.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_leg_mpid.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.contra_order_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cl_ord_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cmta.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.contra_clearing_account.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.contra_occ_account.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cust_acct.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.contra_order_type.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.contra_price.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.contra_quantity.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.contra_capacity.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.contra_position_effect_mask.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_leg_short_sale.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_leg_mpid.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_1.size

-- Display: Cross Order Accepted Message
nasdaq_iseoptions_otto_ouch_v3_0_0.cross_order_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Order Accepted Message
nasdaq_iseoptions_otto_ouch_v3_0_0.cross_order_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_iseoptions_otto_ouch_v3_0_0.cross_type.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Alloc Pct: Integer
  index, auction_alloc_pct = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_alloc_pct.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_iseoptions_otto_ouch_v3_0_0.side.dissect(buffer, index, packet, parent)

  -- Iso: Alpha
  index, iso = nasdaq_iseoptions_otto_ouch_v3_0_0.iso.dissect(buffer, index, packet, parent)

  -- Price Protection: Alpha
  index, price_protection = nasdaq_iseoptions_otto_ouch_v3_0_0.price_protection.dissect(buffer, index, packet, parent)

  -- Effective Time: Integer
  index, effective_time = nasdaq_iseoptions_otto_ouch_v3_0_0.effective_time.dissect(buffer, index, packet, parent)

  -- Disclosure Mask: Integer
  index, disclosure_mask = nasdaq_iseoptions_otto_ouch_v3_0_0.disclosure_mask.dissect(buffer, index, packet, parent)

  -- Primary Order Id: Integer
  index, primary_order_id = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_order_id.dissect(buffer, index, packet, parent)

  -- Primary Cl Ord Id: Alphanumeric
  index, primary_cl_ord_id = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Primary Cmta: Integer
  index, primary_cmta = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cmta.dissect(buffer, index, packet, parent)

  -- Primary Clearing Account: Alphanumeric
  index, primary_clearing_account = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_clearing_account.dissect(buffer, index, packet, parent)

  -- Primary Occ Account: Integer
  index, primary_occ_account = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_occ_account.dissect(buffer, index, packet, parent)

  -- Primary Cust Acct: Alphanumeric
  index, primary_cust_acct = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cust_acct.dissect(buffer, index, packet, parent)

  -- Primary Price: Integer
  index, primary_price = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_price.dissect(buffer, index, packet, parent)

  -- Primary Quantity: Integer
  index, primary_quantity = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_quantity.dissect(buffer, index, packet, parent)

  -- Primary Capacity: Alpha
  index, primary_capacity = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_capacity.dissect(buffer, index, packet, parent)

  -- Primary Position Effect Mask: Integer
  index, primary_position_effect_mask = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_position_effect_mask.dissect(buffer, index, packet, parent)

  -- Primary Stock Leg Short Sale: Alpha
  index, primary_stock_leg_short_sale = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_leg_short_sale.dissect(buffer, index, packet, parent)

  -- Primary Stock Leg Mpid: Alphanumeric
  index, primary_stock_leg_mpid = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_leg_mpid.dissect(buffer, index, packet, parent)

  -- Contra Order Id: Integer
  index, contra_order_id = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_order_id.dissect(buffer, index, packet, parent)

  -- Contra Cl Ord Id: Alphanumeric
  index, contra_cl_ord_id = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Contra Cmta: Integer
  index, contra_cmta = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cmta.dissect(buffer, index, packet, parent)

  -- Contra Clearing Account: Alphanumeric
  index, contra_clearing_account = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_clearing_account.dissect(buffer, index, packet, parent)

  -- Contra Occ Account: Integer
  index, contra_occ_account = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_occ_account.dissect(buffer, index, packet, parent)

  -- Contra Cust Acct: Alphanumeric
  index, contra_cust_acct = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cust_acct.dissect(buffer, index, packet, parent)

  -- Contra Order Type: Alpha
  index, contra_order_type = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_order_type.dissect(buffer, index, packet, parent)

  -- Contra Price: Integer
  index, contra_price = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_price.dissect(buffer, index, packet, parent)

  -- Contra Quantity: Integer
  index, contra_quantity = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_quantity.dissect(buffer, index, packet, parent)

  -- Contra Capacity: Alpha
  index, contra_capacity = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_capacity.dissect(buffer, index, packet, parent)

  -- Contra Position Effect Mask: Integer
  index, contra_position_effect_mask = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_position_effect_mask.dissect(buffer, index, packet, parent)

  -- Contra Stock Leg Short Sale: Alpha
  index, contra_stock_leg_short_sale = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_leg_short_sale.dissect(buffer, index, packet, parent)

  -- Contra Stock Leg Mpid: Alphanumeric
  index, contra_stock_leg_mpid = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_leg_mpid.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Order Accepted Message
nasdaq_iseoptions_otto_ouch_v3_0_0.cross_order_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.cross_order_accepted_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.cross_order_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.cross_order_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.cross_order_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Details Message
nasdaq_iseoptions_otto_ouch_v3_0_0.trade_details_message = {}

-- Size: Trade Details Message
nasdaq_iseoptions_otto_ouch_v3_0_0.trade_details_message.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.product_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.ord_exec_type.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.leg_instrument_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.leg_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.trans_type.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.event_source.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.order_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cross_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.match_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.ref_match_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.side.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_short_sale.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.price.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.quantity.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.liquidity_ind.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cmta.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.clearing_account.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.occ_account.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cust_acct.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.stock_venue.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_mpid.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.capacity.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.open_close.size

-- Display: Trade Details Message
nasdaq_iseoptions_otto_ouch_v3_0_0.trade_details_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Details Message
nasdaq_iseoptions_otto_ouch_v3_0_0.trade_details_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Product Id: Integer
  index, product_id = nasdaq_iseoptions_otto_ouch_v3_0_0.product_id.dissect(buffer, index, packet, parent)

  -- Ord Exec Type: Alpha
  index, ord_exec_type = nasdaq_iseoptions_otto_ouch_v3_0_0.ord_exec_type.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Instrument Id: Integer
  index, leg_instrument_id = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Id: Integer
  index, leg_id = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_id.dissect(buffer, index, packet, parent)

  -- Trans Type: Alpha
  index, trans_type = nasdaq_iseoptions_otto_ouch_v3_0_0.trans_type.dissect(buffer, index, packet, parent)

  -- Event Source: Alpha
  index, event_source = nasdaq_iseoptions_otto_ouch_v3_0_0.event_source.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = nasdaq_iseoptions_otto_ouch_v3_0_0.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Alphanumeric
  index, cl_ord_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cross Id: Integer
  index, cross_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cross_id.dissect(buffer, index, packet, parent)

  -- Match Id: Integer
  index, match_id = nasdaq_iseoptions_otto_ouch_v3_0_0.match_id.dissect(buffer, index, packet, parent)

  -- Ref Match Id: Integer
  index, ref_match_id = nasdaq_iseoptions_otto_ouch_v3_0_0.ref_match_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_iseoptions_otto_ouch_v3_0_0.side.dissect(buffer, index, packet, parent)

  -- Stock Leg Short Sale: Alpha
  index, stock_leg_short_sale = nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_short_sale.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_iseoptions_otto_ouch_v3_0_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_iseoptions_otto_ouch_v3_0_0.quantity.dissect(buffer, index, packet, parent)

  -- Liquidity Ind: Integer
  index, liquidity_ind = nasdaq_iseoptions_otto_ouch_v3_0_0.liquidity_ind.dissect(buffer, index, packet, parent)

  -- Cmta: Integer
  index, cmta = nasdaq_iseoptions_otto_ouch_v3_0_0.cmta.dissect(buffer, index, packet, parent)

  -- Clearing Account: Alphanumeric
  index, clearing_account = nasdaq_iseoptions_otto_ouch_v3_0_0.clearing_account.dissect(buffer, index, packet, parent)

  -- Occ Account: Integer
  index, occ_account = nasdaq_iseoptions_otto_ouch_v3_0_0.occ_account.dissect(buffer, index, packet, parent)

  -- Cust Acct: Alphanumeric
  index, cust_acct = nasdaq_iseoptions_otto_ouch_v3_0_0.cust_acct.dissect(buffer, index, packet, parent)

  -- Stock Venue: Alpha
  index, stock_venue = nasdaq_iseoptions_otto_ouch_v3_0_0.stock_venue.dissect(buffer, index, packet, parent)

  -- Stock Leg Mpid: Alphanumeric
  index, stock_leg_mpid = nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_mpid.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = nasdaq_iseoptions_otto_ouch_v3_0_0.capacity.dissect(buffer, index, packet, parent)

  -- Open Close: Alpha
  index, open_close = nasdaq_iseoptions_otto_ouch_v3_0_0.open_close.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Details Message
nasdaq_iseoptions_otto_ouch_v3_0_0.trade_details_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.trade_details_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.trade_details_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.trade_details_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.trade_details_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_executed_message = {}

-- Size: Order Executed Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_executed_message.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.product_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.ord_exec_type.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.leg_instrument_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.leg_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.order_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cross_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.match_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.side.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_short_sale.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.price.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.quantity.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.liquidity_ind.size

-- Display: Order Executed Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Product Id: Integer
  index, product_id = nasdaq_iseoptions_otto_ouch_v3_0_0.product_id.dissect(buffer, index, packet, parent)

  -- Ord Exec Type: Alpha
  index, ord_exec_type = nasdaq_iseoptions_otto_ouch_v3_0_0.ord_exec_type.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Instrument Id: Integer
  index, leg_instrument_id = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Id: Integer
  index, leg_id = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = nasdaq_iseoptions_otto_ouch_v3_0_0.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Alphanumeric
  index, cl_ord_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cross Id: Integer
  index, cross_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cross_id.dissect(buffer, index, packet, parent)

  -- Match Id: Integer
  index, match_id = nasdaq_iseoptions_otto_ouch_v3_0_0.match_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_iseoptions_otto_ouch_v3_0_0.side.dissect(buffer, index, packet, parent)

  -- Stock Leg Short Sale: Alpha
  index, stock_leg_short_sale = nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_short_sale.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_iseoptions_otto_ouch_v3_0_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_iseoptions_otto_ouch_v3_0_0.quantity.dissect(buffer, index, packet, parent)

  -- Liquidity Ind: Integer
  index, liquidity_ind = nasdaq_iseoptions_otto_ouch_v3_0_0.liquidity_ind.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.order_executed_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Canceled Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_canceled_message = {}

-- Size: Order Canceled Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_canceled_message.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.order_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cancel_reason.size

-- Display: Order Canceled Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Canceled Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = nasdaq_iseoptions_otto_ouch_v3_0_0.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Alphanumeric
  index, cl_ord_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Alpha
  index, cancel_reason = nasdaq_iseoptions_otto_ouch_v3_0_0.cancel_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Canceled Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.order_canceled_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.order_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.order_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.order_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replaced Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_replaced_message = {}

-- Size: Order Replaced Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_replaced_message.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.orig_order_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.order_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.orig_cl_ord_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.alo_inst.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.iso.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.side.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.order_type.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.price.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.quantity.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.tif.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cust_acct.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.capacity.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.auction_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.position_effect_mask.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.price_protection.size

-- Display: Order Replaced Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Orig Order Id: Integer
  index, orig_order_id = nasdaq_iseoptions_otto_ouch_v3_0_0.orig_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = nasdaq_iseoptions_otto_ouch_v3_0_0.order_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Alphanumeric
  index, orig_cl_ord_id = nasdaq_iseoptions_otto_ouch_v3_0_0.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Alphanumeric
  index, cl_ord_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Alo Inst: Alpha
  index, alo_inst = nasdaq_iseoptions_otto_ouch_v3_0_0.alo_inst.dissect(buffer, index, packet, parent)

  -- Iso: Alpha
  index, iso = nasdaq_iseoptions_otto_ouch_v3_0_0.iso.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_iseoptions_otto_ouch_v3_0_0.side.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = nasdaq_iseoptions_otto_ouch_v3_0_0.order_type.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_iseoptions_otto_ouch_v3_0_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_iseoptions_otto_ouch_v3_0_0.quantity.dissect(buffer, index, packet, parent)

  -- Tif: Alpha
  index, tif = nasdaq_iseoptions_otto_ouch_v3_0_0.tif.dissect(buffer, index, packet, parent)

  -- Cust Acct: Alphanumeric
  index, cust_acct = nasdaq_iseoptions_otto_ouch_v3_0_0.cust_acct.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = nasdaq_iseoptions_otto_ouch_v3_0_0.capacity.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_id.dissect(buffer, index, packet, parent)

  -- Position Effect Mask: Integer
  index, position_effect_mask = nasdaq_iseoptions_otto_ouch_v3_0_0.position_effect_mask.dissect(buffer, index, packet, parent)

  -- Price Protection: Alpha
  index, price_protection = nasdaq_iseoptions_otto_ouch_v3_0_0.price_protection.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replaced Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.order_replaced_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.order_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.order_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.order_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Accepted Short Form Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_accepted_short_form_message = {}

-- Size: Order Accepted Short Form Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_accepted_short_form_message.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.order_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.alo_inst.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.iso.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.side.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.order_type.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.price.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.quantity_short.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.tif.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.capacity.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.auction_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.price_protection.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.position_effect_mask.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.stock_capacity.size

-- Display: Order Accepted Short Form Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_accepted_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Accepted Short Form Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_accepted_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = nasdaq_iseoptions_otto_ouch_v3_0_0.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Alphanumeric
  index, cl_ord_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Alo Inst: Alpha
  index, alo_inst = nasdaq_iseoptions_otto_ouch_v3_0_0.alo_inst.dissect(buffer, index, packet, parent)

  -- Iso: Alpha
  index, iso = nasdaq_iseoptions_otto_ouch_v3_0_0.iso.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_iseoptions_otto_ouch_v3_0_0.side.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = nasdaq_iseoptions_otto_ouch_v3_0_0.order_type.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_iseoptions_otto_ouch_v3_0_0.price.dissect(buffer, index, packet, parent)

  -- Quantity Short: Integer
  index, quantity_short = nasdaq_iseoptions_otto_ouch_v3_0_0.quantity_short.dissect(buffer, index, packet, parent)

  -- Tif: Alpha
  index, tif = nasdaq_iseoptions_otto_ouch_v3_0_0.tif.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = nasdaq_iseoptions_otto_ouch_v3_0_0.capacity.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_id.dissect(buffer, index, packet, parent)

  -- Price Protection: Alpha
  index, price_protection = nasdaq_iseoptions_otto_ouch_v3_0_0.price_protection.dissect(buffer, index, packet, parent)

  -- Position Effect Mask: Integer
  index, position_effect_mask = nasdaq_iseoptions_otto_ouch_v3_0_0.position_effect_mask.dissect(buffer, index, packet, parent)

  -- Stock Capacity: Alpha
  index, stock_capacity = nasdaq_iseoptions_otto_ouch_v3_0_0.stock_capacity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Accepted Short Form Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_accepted_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.order_accepted_short_form_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.order_accepted_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.order_accepted_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.order_accepted_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Flex Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.flex_legs = {}

-- Size: Flex Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.flex_legs.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_8.size

-- Display: Flex Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.flex_legs.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Flex Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.flex_legs.fields = function(buffer, offset, packet, parent, flex_legs_index)
  local index = offset

  -- Implicit Flex Legs Index
  if flex_legs_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.flex_legs_index, flex_legs_index)
    iteration:set_generated()
  end

  -- Reserved 8: Integer
  index, reserved_8 = nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Flex Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.flex_legs.dissect = function(buffer, offset, packet, parent, flex_legs_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.flex_legs, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.flex_legs.fields(buffer, offset, packet, parent, flex_legs_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.flex_legs.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.flex_legs.fields(buffer, offset, packet, parent, flex_legs_index)
  end
end

-- Order Accepted Long Form Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_accepted_long_form_message = {}

-- Calculate size of: Order Accepted Long Form Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_accepted_long_form_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.order_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.cmta.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.clearing_account.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.occ_account.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.cust_acct.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.preferred_party.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.alo_inst.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.iso.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.side.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.order_type.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.price.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.quantity.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.min_qty.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.tif.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.capacity.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.auction_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.disclosure_mask.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.price_protection.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.display_qty.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.display_when.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.display_method.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.display_low_qty.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.display_high_qty.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.position_effect_mask.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_short_sale.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_mpid.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.stock_capacity.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_9.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.number_of_flex_legs.size

  -- Calculate field size from count
  local flex_legs_count = buffer(offset + index - 1, 1):uint()
  index = index + flex_legs_count * 8

  return index
end

-- Display: Order Accepted Long Form Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_accepted_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Accepted Long Form Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_accepted_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = nasdaq_iseoptions_otto_ouch_v3_0_0.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Alphanumeric
  index, cl_ord_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cmta: Integer
  index, cmta = nasdaq_iseoptions_otto_ouch_v3_0_0.cmta.dissect(buffer, index, packet, parent)

  -- Clearing Account: Alphanumeric
  index, clearing_account = nasdaq_iseoptions_otto_ouch_v3_0_0.clearing_account.dissect(buffer, index, packet, parent)

  -- Occ Account: Integer
  index, occ_account = nasdaq_iseoptions_otto_ouch_v3_0_0.occ_account.dissect(buffer, index, packet, parent)

  -- Cust Acct: Alphanumeric
  index, cust_acct = nasdaq_iseoptions_otto_ouch_v3_0_0.cust_acct.dissect(buffer, index, packet, parent)

  -- Preferred Party: Alpha
  index, preferred_party = nasdaq_iseoptions_otto_ouch_v3_0_0.preferred_party.dissect(buffer, index, packet, parent)

  -- Alo Inst: Alpha
  index, alo_inst = nasdaq_iseoptions_otto_ouch_v3_0_0.alo_inst.dissect(buffer, index, packet, parent)

  -- Iso: Alpha
  index, iso = nasdaq_iseoptions_otto_ouch_v3_0_0.iso.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_iseoptions_otto_ouch_v3_0_0.side.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = nasdaq_iseoptions_otto_ouch_v3_0_0.order_type.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_iseoptions_otto_ouch_v3_0_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_iseoptions_otto_ouch_v3_0_0.quantity.dissect(buffer, index, packet, parent)

  -- Min Qty: Integer
  index, min_qty = nasdaq_iseoptions_otto_ouch_v3_0_0.min_qty.dissect(buffer, index, packet, parent)

  -- Tif: Alpha
  index, tif = nasdaq_iseoptions_otto_ouch_v3_0_0.tif.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = nasdaq_iseoptions_otto_ouch_v3_0_0.capacity.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_id.dissect(buffer, index, packet, parent)

  -- Disclosure Mask: Integer
  index, disclosure_mask = nasdaq_iseoptions_otto_ouch_v3_0_0.disclosure_mask.dissect(buffer, index, packet, parent)

  -- Price Protection: Alpha
  index, price_protection = nasdaq_iseoptions_otto_ouch_v3_0_0.price_protection.dissect(buffer, index, packet, parent)

  -- Display Qty: Integer
  index, display_qty = nasdaq_iseoptions_otto_ouch_v3_0_0.display_qty.dissect(buffer, index, packet, parent)

  -- Display When: Alpha
  index, display_when = nasdaq_iseoptions_otto_ouch_v3_0_0.display_when.dissect(buffer, index, packet, parent)

  -- Display Method: Alpha
  index, display_method = nasdaq_iseoptions_otto_ouch_v3_0_0.display_method.dissect(buffer, index, packet, parent)

  -- Display Low Qty: Integer
  index, display_low_qty = nasdaq_iseoptions_otto_ouch_v3_0_0.display_low_qty.dissect(buffer, index, packet, parent)

  -- Display High Qty: Integer
  index, display_high_qty = nasdaq_iseoptions_otto_ouch_v3_0_0.display_high_qty.dissect(buffer, index, packet, parent)

  -- Position Effect Mask: Integer
  index, position_effect_mask = nasdaq_iseoptions_otto_ouch_v3_0_0.position_effect_mask.dissect(buffer, index, packet, parent)

  -- Stock Leg Short Sale: Alpha
  index, stock_leg_short_sale = nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_short_sale.dissect(buffer, index, packet, parent)

  -- Stock Leg Mpid: Alphanumeric
  index, stock_leg_mpid = nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_mpid.dissect(buffer, index, packet, parent)

  -- Stock Capacity: Alpha
  index, stock_capacity = nasdaq_iseoptions_otto_ouch_v3_0_0.stock_capacity.dissect(buffer, index, packet, parent)

  -- Reserved 9: Integer
  index, reserved_9 = nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_9.dissect(buffer, index, packet, parent)

  -- Number Of Flex Legs: Integer
  index, number_of_flex_legs = nasdaq_iseoptions_otto_ouch_v3_0_0.number_of_flex_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Flex Legs
  for flex_legs_index = 1, number_of_flex_legs do
    index, flex_legs = nasdaq_iseoptions_otto_ouch_v3_0_0.flex_legs.dissect(buffer, index, packet, parent, flex_legs_index)
  end

  return index
end

-- Dissect: Order Accepted Long Form Message
nasdaq_iseoptions_otto_ouch_v3_0_0.order_accepted_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.order_accepted_long_form_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.order_accepted_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.order_accepted_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.order_accepted_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Flex Dac Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.flex_dac_legs = {}

-- Size: Flex Dac Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.flex_dac_legs.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_8.size

-- Display: Flex Dac Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.flex_dac_legs.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Flex Dac Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.flex_dac_legs.fields = function(buffer, offset, packet, parent, flex_dac_legs_index)
  local index = offset

  -- Implicit Flex Dac Legs Index
  if flex_dac_legs_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.flex_dac_legs_index, flex_dac_legs_index)
    iteration:set_generated()
  end

  -- Reserved 8: Integer
  index, reserved_8 = nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Flex Dac Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.flex_dac_legs.dissect = function(buffer, offset, packet, parent, flex_dac_legs_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.flex_dac_legs, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.flex_dac_legs.fields(buffer, offset, packet, parent, flex_dac_legs_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.flex_dac_legs.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.flex_dac_legs.fields(buffer, offset, packet, parent, flex_dac_legs_index)
  end
end

-- Auction Notification Message
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_notification_message = {}

-- Calculate size of: Auction Notification Message
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_notification_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_type.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.auction_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.order_type.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.side.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.price.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.quantity.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.exec_flag.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.order_capacity.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.occ_account.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.cmta.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.auction_event.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.auction_duration.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.best_response_price.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.best_response_size.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_9.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.number_of_flex_dac_legs.size

  -- Calculate field size from count
  local flex_dac_legs_count = buffer(offset + index - 1, 1):uint()
  index = index + flex_dac_legs_count * 8

  return index
end

-- Display: Auction Notification Message
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alpha
  index, instrument_type = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_type.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_id.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = nasdaq_iseoptions_otto_ouch_v3_0_0.order_type.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_iseoptions_otto_ouch_v3_0_0.side.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_iseoptions_otto_ouch_v3_0_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_iseoptions_otto_ouch_v3_0_0.quantity.dissect(buffer, index, packet, parent)

  -- Exec Flag: Alpha
  index, exec_flag = nasdaq_iseoptions_otto_ouch_v3_0_0.exec_flag.dissect(buffer, index, packet, parent)

  -- Order Capacity: Alpha
  index, order_capacity = nasdaq_iseoptions_otto_ouch_v3_0_0.order_capacity.dissect(buffer, index, packet, parent)

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Occ Account: Integer
  index, occ_account = nasdaq_iseoptions_otto_ouch_v3_0_0.occ_account.dissect(buffer, index, packet, parent)

  -- Cmta: Integer
  index, cmta = nasdaq_iseoptions_otto_ouch_v3_0_0.cmta.dissect(buffer, index, packet, parent)

  -- Auction Event: Alpha
  index, auction_event = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_event.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.dissect(buffer, index, packet, parent)

  -- Auction Duration: Integer
  index, auction_duration = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_duration.dissect(buffer, index, packet, parent)

  -- Best Response Price: Integer
  index, best_response_price = nasdaq_iseoptions_otto_ouch_v3_0_0.best_response_price.dissect(buffer, index, packet, parent)

  -- Best Response Size: Integer
  index, best_response_size = nasdaq_iseoptions_otto_ouch_v3_0_0.best_response_size.dissect(buffer, index, packet, parent)

  -- Reserved 9: Integer
  index, reserved_9 = nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_9.dissect(buffer, index, packet, parent)

  -- Number Of Flex Dac Legs: Integer
  index, number_of_flex_dac_legs = nasdaq_iseoptions_otto_ouch_v3_0_0.number_of_flex_dac_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Flex Dac Legs
  for flex_dac_legs_index = 1, number_of_flex_dac_legs do
    index, flex_dac_legs = nasdaq_iseoptions_otto_ouch_v3_0_0.flex_dac_legs.dissect(buffer, index, packet, parent, flex_dac_legs_index)
  end

  return index
end

-- Dissect: Auction Notification Message
nasdaq_iseoptions_otto_ouch_v3_0_0.auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.auction_notification_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Trading Action Message
nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_trading_action_message = {}

-- Size: Instrument Trading Action Message
nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_trading_action_message.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.product_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.trading_state.size

-- Display: Instrument Trading Action Message
nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Trading Action Message
nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: Integer
  index, product_id = nasdaq_iseoptions_otto_ouch_v3_0_0.product_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Trading State: Alpha
  index, trading_state = nasdaq_iseoptions_otto_ouch_v3_0_0.trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Trading Action Message
nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.instrument_trading_action_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Directory Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.complex_directory_legs = {}

-- Size: Complex Directory Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.complex_directory_legs.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.leg_type.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.leg_instrument_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.leg_side.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.leg_ratio.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.leg_id.size

-- Display: Complex Directory Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.complex_directory_legs.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Directory Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.complex_directory_legs.fields = function(buffer, offset, packet, parent, complex_directory_legs_index)
  local index = offset

  -- Implicit Complex Directory Legs Index
  if complex_directory_legs_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.complex_directory_legs_index, complex_directory_legs_index)
    iteration:set_generated()
  end

  -- Leg Type: Alpha
  index, leg_type = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_type.dissect(buffer, index, packet, parent)

  -- Leg Instrument Id: Integer
  index, leg_instrument_id = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Side: Alpha
  index, leg_side = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Integer
  index, leg_ratio = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Id: Integer
  index, leg_id = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Directory Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.complex_directory_legs.dissect = function(buffer, offset, packet, parent, complex_directory_legs_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.complex_directory_legs, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.complex_directory_legs.fields(buffer, offset, packet, parent, complex_directory_legs_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.complex_directory_legs.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.complex_directory_legs.fields(buffer, offset, packet, parent, complex_directory_legs_index)
  end
end

-- Complex Instrument Directory Message
nasdaq_iseoptions_otto_ouch_v3_0_0.complex_instrument_directory_message = {}

-- Calculate size of: Complex Instrument Directory Message
nasdaq_iseoptions_otto_ouch_v3_0_0.complex_instrument_directory_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.product_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.product_name.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_1.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.num_legs.size

  -- Calculate field size from count
  local complex_directory_legs_count = buffer(offset + index - 1, 1):uint()
  index = index + complex_directory_legs_count * 9

  return index
end

-- Display: Complex Instrument Directory Message
nasdaq_iseoptions_otto_ouch_v3_0_0.complex_instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Instrument Directory Message
nasdaq_iseoptions_otto_ouch_v3_0_0.complex_instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: Integer
  index, product_id = nasdaq_iseoptions_otto_ouch_v3_0_0.product_id.dissect(buffer, index, packet, parent)

  -- Product Name: Alphanumeric
  index, product_name = nasdaq_iseoptions_otto_ouch_v3_0_0.product_name.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_1.dissect(buffer, index, packet, parent)

  -- Num Legs: Integer
  index, num_legs = nasdaq_iseoptions_otto_ouch_v3_0_0.num_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Directory Legs
  for complex_directory_legs_index = 1, num_legs do
    index, complex_directory_legs = nasdaq_iseoptions_otto_ouch_v3_0_0.complex_directory_legs.dissect(buffer, index, packet, parent, complex_directory_legs_index)
  end

  return index
end

-- Dissect: Complex Instrument Directory Message
nasdaq_iseoptions_otto_ouch_v3_0_0.complex_instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.complex_instrument_directory_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.complex_instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.complex_instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.complex_instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Instrument Directory Message
nasdaq_iseoptions_otto_ouch_v3_0_0.simple_instrument_directory_message = {}

-- Size: Simple Instrument Directory Message
nasdaq_iseoptions_otto_ouch_v3_0_0.simple_instrument_directory_message.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.product_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.product_name.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.expir_year.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.expir_mon.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.expir_day.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.strike_price.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.option_type.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.closing_type.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.tradable.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.closing_only.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.contract_size.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.mpv.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.security_symbol.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_16.size

-- Display: Simple Instrument Directory Message
nasdaq_iseoptions_otto_ouch_v3_0_0.simple_instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Instrument Directory Message
nasdaq_iseoptions_otto_ouch_v3_0_0.simple_instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: Integer
  index, product_id = nasdaq_iseoptions_otto_ouch_v3_0_0.product_id.dissect(buffer, index, packet, parent)

  -- Product Name: Alphanumeric
  index, product_name = nasdaq_iseoptions_otto_ouch_v3_0_0.product_name.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Expir Year: Integer
  index, expir_year = nasdaq_iseoptions_otto_ouch_v3_0_0.expir_year.dissect(buffer, index, packet, parent)

  -- Expir Mon: Integer
  index, expir_mon = nasdaq_iseoptions_otto_ouch_v3_0_0.expir_mon.dissect(buffer, index, packet, parent)

  -- Expir Day: Integer
  index, expir_day = nasdaq_iseoptions_otto_ouch_v3_0_0.expir_day.dissect(buffer, index, packet, parent)

  -- Strike Price: Integer
  index, strike_price = nasdaq_iseoptions_otto_ouch_v3_0_0.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_iseoptions_otto_ouch_v3_0_0.option_type.dissect(buffer, index, packet, parent)

  -- Closing Type: Alpha
  index, closing_type = nasdaq_iseoptions_otto_ouch_v3_0_0.closing_type.dissect(buffer, index, packet, parent)

  -- Tradable: Alpha
  index, tradable = nasdaq_iseoptions_otto_ouch_v3_0_0.tradable.dissect(buffer, index, packet, parent)

  -- Closing Only: Alpha
  index, closing_only = nasdaq_iseoptions_otto_ouch_v3_0_0.closing_only.dissect(buffer, index, packet, parent)

  -- Contract Size: Integer
  index, contract_size = nasdaq_iseoptions_otto_ouch_v3_0_0.contract_size.dissect(buffer, index, packet, parent)

  -- Mpv: Alpha
  index, mpv = nasdaq_iseoptions_otto_ouch_v3_0_0.mpv.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_iseoptions_otto_ouch_v3_0_0.security_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alpha
  index, reserved_16 = nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Instrument Directory Message
nasdaq_iseoptions_otto_ouch_v3_0_0.simple_instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.simple_instrument_directory_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.simple_instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.simple_instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.simple_instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_iseoptions_otto_ouch_v3_0_0.system_event_message = {}

-- Size: System Event Message
nasdaq_iseoptions_otto_ouch_v3_0_0.system_event_message.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.event_code.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.version.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.subversion.size

-- Display: System Event Message
nasdaq_iseoptions_otto_ouch_v3_0_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_iseoptions_otto_ouch_v3_0_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = nasdaq_iseoptions_otto_ouch_v3_0_0.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_iseoptions_otto_ouch_v3_0_0.event_code.dissect(buffer, index, packet, parent)

  -- Version: Integer
  index, version = nasdaq_iseoptions_otto_ouch_v3_0_0.version.dissect(buffer, index, packet, parent)

  -- Subversion: Integer
  index, subversion = nasdaq_iseoptions_otto_ouch_v3_0_0.subversion.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_iseoptions_otto_ouch_v3_0_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_iseoptions_otto_ouch_v3_0_0.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_iseoptions_otto_ouch_v3_0_0.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect System Event Message
  if sequenced_message_type == "z" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Instrument Directory Message
  if sequenced_message_type == "o" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.simple_instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Instrument Directory Message
  if sequenced_message_type == "s" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.complex_instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Trading Action Message
  if sequenced_message_type == "i" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if sequenced_message_type == "n" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.auction_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Accepted Long Form Message
  if sequenced_message_type == "a" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.order_accepted_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Accepted Short Form Message
  if sequenced_message_type == "b" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.order_accepted_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced Message
  if sequenced_message_type == "r" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.order_replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Canceled Message
  if sequenced_message_type == "c" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.order_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if sequenced_message_type == "e" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Details Message
  if sequenced_message_type == "t" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.trade_details_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Order Accepted Message
  if sequenced_message_type == "x" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.cross_order_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Member Kill Switch Notification Message
  if sequenced_message_type == "k" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.member_kill_switch_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Response Message
  if sequenced_message_type == "u" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.mass_cancel_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Complex Instrument Response Message
  if sequenced_message_type == "d" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.add_complex_instrument_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Trade Response Message
  if sequenced_message_type == "m" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.modify_trade_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Subscription Response Message
  if sequenced_message_type == "f" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.subscription_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reject Message
  if sequenced_message_type == "j" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Pending Response Message
  if sequenced_message_type == "p" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.pending_response_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = nasdaq_iseoptions_otto_ouch_v3_0_0.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(nasdaq_iseoptions_otto_ouch_v3_0_0.accepted_sequence_number.current)
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
          local sequence = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if nasdaq_iseoptions_otto_ouch_v3_0_0.stream_frame ~= packet.number or nasdaq_iseoptions_otto_ouch_v3_0_0.stream_occurrence >= #memo then
          nasdaq_iseoptions_otto_ouch_v3_0_0.stream_frame = packet.number
          nasdaq_iseoptions_otto_ouch_v3_0_0.stream_occurrence = 0
        end
        nasdaq_iseoptions_otto_ouch_v3_0_0.stream_occurrence = nasdaq_iseoptions_otto_ouch_v3_0_0.stream_occurrence + 1
        local value = memo[nasdaq_iseoptions_otto_ouch_v3_0_0.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 19 values
  index, sequenced_message_type = nasdaq_iseoptions_otto_ouch_v3_0_0.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 19 branches
  index = nasdaq_iseoptions_otto_ouch_v3_0_0.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_iseoptions_otto_ouch_v3_0_0.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_iseoptions_otto_ouch_v3_0_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_iseoptions_otto_ouch_v3_0_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.login_rejected_packet.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = nasdaq_iseoptions_otto_ouch_v3_0_0.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.login_accepted_packet.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.accepted_session.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_iseoptions_otto_ouch_v3_0_0.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_iseoptions_otto_ouch_v3_0_0.accepted_sequence_number.dissect(buffer, index, packet, parent)

  -- Store Accepted Sequence Number Value
  nasdaq_iseoptions_otto_ouch_v3_0_0.accepted_sequence_number.current = accepted_sequence_number

  if not packet.visited then
    nasdaq_iseoptions_otto_ouch_v3_0_0.conversation.current.accepted_sequence_number.last = accepted_sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.debug_packet = {}

-- Calculate size of: Debug Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.debug_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Debug Text
  index = index + buffer(offset + index - 3, 2):uint()

  return index
end

-- Display: Debug Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Debug Text
  local size_of_debug_text = packet_length - 1

  -- Debug Text: 0 Byte Ascii String
  index, debug_text = nasdaq_iseoptions_otto_ouch_v3_0_0.debug_text.dissect(buffer, index, packet, parent, size_of_debug_text)

  return index
end

-- Dissect: Debug Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_iseoptions_otto_ouch_v3_0_0.server_payload = {}

-- Dissect: Server Payload
nasdaq_iseoptions_otto_ouch_v3_0_0.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat Packet
  if server_packet_type == "H" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.server_heartbeat_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Packet
  if server_packet_type == "Z" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.end_of_session_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet_header.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.packet_length.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet_type.size

-- Display: Server Packet Header
nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_iseoptions_otto_ouch_v3_0_0.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = nasdaq_iseoptions_otto_ouch_v3_0_0.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_iseoptions_otto_ouch_v3_0_0.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_iseoptions_otto_ouch_v3_0_0.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet_header.size then
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
nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_iseoptions_otto_ouch_v3_0_0.conversation.data(packet)
  if not packet.visited then
    data.accepted_sequence_number.frames[packet.number] = data.accepted_sequence_number.last
  end
  nasdaq_iseoptions_otto_ouch_v3_0_0.accepted_sequence_number.current = data.accepted_sequence_number.frames[packet.number]
  nasdaq_iseoptions_otto_ouch_v3_0_0.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_iseoptions_otto_ouch_v3_0_0.server_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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

-- Logout Request Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.logout_request_packet = {}

-- Display: Logout Request Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.logout_request_packet.display = function(packet, parent, length)
  return "Logout Request Packet"
end


-- Dissect: Logout Request Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.logout_request_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.logout_request_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.client_heartbeat_packet = {}

-- Display: Client Heartbeat Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.client_heartbeat_packet.display = function(packet, parent, length)
  return "Client Heartbeat Packet"
end


-- Dissect: Client Heartbeat Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.client_heartbeat_packet.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_iseoptions_otto_ouch_v3_0_0.client_heartbeat_packet.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Subscription Request Message
nasdaq_iseoptions_otto_ouch_v3_0_0.subscription_request_message = {}

-- Size: Subscription Request Message
nasdaq_iseoptions_otto_ouch_v3_0_0.subscription_request_message.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.subscription.size

-- Display: Subscription Request Message
nasdaq_iseoptions_otto_ouch_v3_0_0.subscription_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subscription Request Message
nasdaq_iseoptions_otto_ouch_v3_0_0.subscription_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Cl Request Id: Alphanumeric
  index, cl_request_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.dissect(buffer, index, packet, parent)

  -- Subscription: Alpha
  index, subscription = nasdaq_iseoptions_otto_ouch_v3_0_0.subscription.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Subscription Request Message
nasdaq_iseoptions_otto_ouch_v3_0_0.subscription_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.subscription_request_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.subscription_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.subscription_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.subscription_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Member Kill Switch Request Message
nasdaq_iseoptions_otto_ouch_v3_0_0.member_kill_switch_request_message = {}

-- Size: Member Kill Switch Request Message
nasdaq_iseoptions_otto_ouch_v3_0_0.member_kill_switch_request_message.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.target_firm_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.kill_action.size

-- Display: Member Kill Switch Request Message
nasdaq_iseoptions_otto_ouch_v3_0_0.member_kill_switch_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Member Kill Switch Request Message
nasdaq_iseoptions_otto_ouch_v3_0_0.member_kill_switch_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Cl Request Id: Alphanumeric
  index, cl_request_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.dissect(buffer, index, packet, parent)

  -- Target Firm Id: Alphanumeric
  index, target_firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.target_firm_id.dissect(buffer, index, packet, parent)

  -- Kill Action: Alpha
  index, kill_action = nasdaq_iseoptions_otto_ouch_v3_0_0.kill_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Member Kill Switch Request Message
nasdaq_iseoptions_otto_ouch_v3_0_0.member_kill_switch_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.member_kill_switch_request_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.member_kill_switch_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.member_kill_switch_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.member_kill_switch_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Splits
nasdaq_iseoptions_otto_ouch_v3_0_0.trade_splits = {}

-- Size: Trade Splits
nasdaq_iseoptions_otto_ouch_v3_0_0.trade_splits.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.alloc_qty.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cmta.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.clearing_account.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.occ_account.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cust_acct.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_mpid.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.capacity.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.open_close.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.stock_capacity.size

-- Display: Trade Splits
nasdaq_iseoptions_otto_ouch_v3_0_0.trade_splits.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Splits
nasdaq_iseoptions_otto_ouch_v3_0_0.trade_splits.fields = function(buffer, offset, packet, parent, trade_splits_index)
  local index = offset

  -- Implicit Trade Splits Index
  if trade_splits_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.trade_splits_index, trade_splits_index)
    iteration:set_generated()
  end

  -- Alloc Qty: Integer
  index, alloc_qty = nasdaq_iseoptions_otto_ouch_v3_0_0.alloc_qty.dissect(buffer, index, packet, parent)

  -- Cmta: Integer
  index, cmta = nasdaq_iseoptions_otto_ouch_v3_0_0.cmta.dissect(buffer, index, packet, parent)

  -- Clearing Account: Alphanumeric
  index, clearing_account = nasdaq_iseoptions_otto_ouch_v3_0_0.clearing_account.dissect(buffer, index, packet, parent)

  -- Occ Account: Integer
  index, occ_account = nasdaq_iseoptions_otto_ouch_v3_0_0.occ_account.dissect(buffer, index, packet, parent)

  -- Cust Acct: Alphanumeric
  index, cust_acct = nasdaq_iseoptions_otto_ouch_v3_0_0.cust_acct.dissect(buffer, index, packet, parent)

  -- Stock Leg Mpid: Alphanumeric
  index, stock_leg_mpid = nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_mpid.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = nasdaq_iseoptions_otto_ouch_v3_0_0.capacity.dissect(buffer, index, packet, parent)

  -- Open Close: Alpha
  index, open_close = nasdaq_iseoptions_otto_ouch_v3_0_0.open_close.dissect(buffer, index, packet, parent)

  -- Stock Capacity: Alpha
  index, stock_capacity = nasdaq_iseoptions_otto_ouch_v3_0_0.stock_capacity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Splits
nasdaq_iseoptions_otto_ouch_v3_0_0.trade_splits.dissect = function(buffer, offset, packet, parent, trade_splits_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.trade_splits, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.trade_splits.fields(buffer, offset, packet, parent, trade_splits_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.trade_splits.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.trade_splits.fields(buffer, offset, packet, parent, trade_splits_index)
  end
end

-- Modify Trade Message
nasdaq_iseoptions_otto_ouch_v3_0_0.modify_trade_message = {}

-- Calculate size of: Modify Trade Message
nasdaq_iseoptions_otto_ouch_v3_0_0.modify_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.cross_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.match_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.side.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.quantity.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.num_splits.size

  -- Calculate field size from count
  local trade_splits_count = buffer(offset + index - 2, 2):uint()
  index = index + trade_splits_count * 33

  return index
end

-- Display: Modify Trade Message
nasdaq_iseoptions_otto_ouch_v3_0_0.modify_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Trade Message
nasdaq_iseoptions_otto_ouch_v3_0_0.modify_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Cl Request Id: Alphanumeric
  index, cl_request_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Alphanumeric
  index, cl_ord_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cross Id: Integer
  index, cross_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cross_id.dissect(buffer, index, packet, parent)

  -- Match Id: Integer
  index, match_id = nasdaq_iseoptions_otto_ouch_v3_0_0.match_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_iseoptions_otto_ouch_v3_0_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_iseoptions_otto_ouch_v3_0_0.quantity.dissect(buffer, index, packet, parent)

  -- Num Splits: Integer
  index, num_splits = nasdaq_iseoptions_otto_ouch_v3_0_0.num_splits.dissect(buffer, index, packet, parent)

  -- Repeating: Trade Splits
  for trade_splits_index = 1, num_splits do
    index, trade_splits = nasdaq_iseoptions_otto_ouch_v3_0_0.trade_splits.dissect(buffer, index, packet, parent, trade_splits_index)
  end

  return index
end

-- Dissect: Modify Trade Message
nasdaq_iseoptions_otto_ouch_v3_0_0.modify_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.modify_trade_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.modify_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.modify_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.modify_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Instrument Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.complex_instrument_legs = {}

-- Size: Complex Instrument Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.complex_instrument_legs.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.leg_type.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.leg_instrument_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.leg_side.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.leg_ratio.size

-- Display: Complex Instrument Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.complex_instrument_legs.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Instrument Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.complex_instrument_legs.fields = function(buffer, offset, packet, parent, complex_instrument_legs_index)
  local index = offset

  -- Implicit Complex Instrument Legs Index
  if complex_instrument_legs_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.complex_instrument_legs_index, complex_instrument_legs_index)
    iteration:set_generated()
  end

  -- Leg Type: Alpha
  index, leg_type = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_type.dissect(buffer, index, packet, parent)

  -- Leg Instrument Id: Integer
  index, leg_instrument_id = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Side: Alpha
  index, leg_side = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Integer
  index, leg_ratio = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Instrument Legs
nasdaq_iseoptions_otto_ouch_v3_0_0.complex_instrument_legs.dissect = function(buffer, offset, packet, parent, complex_instrument_legs_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.complex_instrument_legs, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.complex_instrument_legs.fields(buffer, offset, packet, parent, complex_instrument_legs_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.complex_instrument_legs.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.complex_instrument_legs.fields(buffer, offset, packet, parent, complex_instrument_legs_index)
  end
end

-- Add Complex Instrument Message
nasdaq_iseoptions_otto_ouch_v3_0_0.add_complex_instrument_message = {}

-- Calculate size of: Add Complex Instrument Message
nasdaq_iseoptions_otto_ouch_v3_0_0.add_complex_instrument_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.product_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.product_name.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.num_legs.size

  -- Calculate field size from count
  local complex_instrument_legs_count = buffer(offset + index - 1, 1):uint()
  index = index + complex_instrument_legs_count * 8

  return index
end

-- Display: Add Complex Instrument Message
nasdaq_iseoptions_otto_ouch_v3_0_0.add_complex_instrument_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Complex Instrument Message
nasdaq_iseoptions_otto_ouch_v3_0_0.add_complex_instrument_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Cl Request Id: Alphanumeric
  index, cl_request_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.dissect(buffer, index, packet, parent)

  -- Product Id: Integer
  index, product_id = nasdaq_iseoptions_otto_ouch_v3_0_0.product_id.dissect(buffer, index, packet, parent)

  -- Product Name: Alphanumeric
  index, product_name = nasdaq_iseoptions_otto_ouch_v3_0_0.product_name.dissect(buffer, index, packet, parent)

  -- Num Legs: Integer
  index, num_legs = nasdaq_iseoptions_otto_ouch_v3_0_0.num_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Instrument Legs
  for complex_instrument_legs_index = 1, num_legs do
    index, complex_instrument_legs = nasdaq_iseoptions_otto_ouch_v3_0_0.complex_instrument_legs.dissect(buffer, index, packet, parent, complex_instrument_legs_index)
  end

  return index
end

-- Dissect: Add Complex Instrument Message
nasdaq_iseoptions_otto_ouch_v3_0_0.add_complex_instrument_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.add_complex_instrument_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.add_complex_instrument_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.add_complex_instrument_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.add_complex_instrument_message.fields(buffer, offset, packet, parent)
  end
end

-- Flex Leg Prices
nasdaq_iseoptions_otto_ouch_v3_0_0.flex_leg_prices = {}

-- Size: Flex Leg Prices
nasdaq_iseoptions_otto_ouch_v3_0_0.flex_leg_prices.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.leg_prices.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_8.size

-- Display: Flex Leg Prices
nasdaq_iseoptions_otto_ouch_v3_0_0.flex_leg_prices.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Flex Leg Prices
nasdaq_iseoptions_otto_ouch_v3_0_0.flex_leg_prices.fields = function(buffer, offset, packet, parent, flex_leg_prices_index)
  local index = offset

  -- Implicit Flex Leg Prices Index
  if flex_leg_prices_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.flex_leg_prices_index, flex_leg_prices_index)
    iteration:set_generated()
  end

  -- Leg Prices: Integer
  index, leg_prices = nasdaq_iseoptions_otto_ouch_v3_0_0.leg_prices.dissect(buffer, index, packet, parent)

  -- Reserved 8: Integer
  index, reserved_8 = nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Flex Leg Prices
nasdaq_iseoptions_otto_ouch_v3_0_0.flex_leg_prices.dissect = function(buffer, offset, packet, parent, flex_leg_prices_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.flex_leg_prices, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.flex_leg_prices.fields(buffer, offset, packet, parent, flex_leg_prices_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.flex_leg_prices.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.flex_leg_prices.fields(buffer, offset, packet, parent, flex_leg_prices_index)
  end
end

-- New Cross Order Message
nasdaq_iseoptions_otto_ouch_v3_0_0.new_cross_order_message = {}

-- Calculate size of: New Cross Order Message
nasdaq_iseoptions_otto_ouch_v3_0_0.new_cross_order_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.cross_type.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.auction_alloc_pct.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.side.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.iso.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.price_protection.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.effective_time.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.disclosure_mask.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.auction_duration.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_9.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cl_ord_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cmta.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.primary_clearing_account.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.primary_occ_account.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cust_acct.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.primary_price.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.primary_quantity.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.primary_capacity.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.primary_position_effect_mask.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_leg_short_sale.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_leg_mpid.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_capacity.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cl_ord_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cmta.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.contra_clearing_account.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.contra_occ_account.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cust_acct.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.contra_order_type.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.contra_price.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.contra_quantity.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.contra_capacity.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.contra_position_effect_mask.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_leg_short_sale.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_leg_mpid.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_capacity.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.number_of_flex_legs.size

  -- Calculate field size from count
  local flex_leg_prices_count = buffer(offset + index - 1, 1):uint()
  index = index + flex_leg_prices_count * 16

  return index
end

-- Display: New Cross Order Message
nasdaq_iseoptions_otto_ouch_v3_0_0.new_cross_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Cross Order Message
nasdaq_iseoptions_otto_ouch_v3_0_0.new_cross_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_iseoptions_otto_ouch_v3_0_0.cross_type.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.dissect(buffer, index, packet, parent)

  -- Auction Alloc Pct: Integer
  index, auction_alloc_pct = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_alloc_pct.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_iseoptions_otto_ouch_v3_0_0.side.dissect(buffer, index, packet, parent)

  -- Iso: Alpha
  index, iso = nasdaq_iseoptions_otto_ouch_v3_0_0.iso.dissect(buffer, index, packet, parent)

  -- Price Protection: Alpha
  index, price_protection = nasdaq_iseoptions_otto_ouch_v3_0_0.price_protection.dissect(buffer, index, packet, parent)

  -- Effective Time: Integer
  index, effective_time = nasdaq_iseoptions_otto_ouch_v3_0_0.effective_time.dissect(buffer, index, packet, parent)

  -- Disclosure Mask: Integer
  index, disclosure_mask = nasdaq_iseoptions_otto_ouch_v3_0_0.disclosure_mask.dissect(buffer, index, packet, parent)

  -- Auction Duration: Integer
  index, auction_duration = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_duration.dissect(buffer, index, packet, parent)

  -- Reserved 9: Integer
  index, reserved_9 = nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_9.dissect(buffer, index, packet, parent)

  -- Primary Cl Ord Id: Alphanumeric
  index, primary_cl_ord_id = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Primary Cmta: Integer
  index, primary_cmta = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cmta.dissect(buffer, index, packet, parent)

  -- Primary Clearing Account: Alphanumeric
  index, primary_clearing_account = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_clearing_account.dissect(buffer, index, packet, parent)

  -- Primary Occ Account: Integer
  index, primary_occ_account = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_occ_account.dissect(buffer, index, packet, parent)

  -- Primary Cust Acct: Alphanumeric
  index, primary_cust_acct = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_cust_acct.dissect(buffer, index, packet, parent)

  -- Primary Price: Integer
  index, primary_price = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_price.dissect(buffer, index, packet, parent)

  -- Primary Quantity: Integer
  index, primary_quantity = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_quantity.dissect(buffer, index, packet, parent)

  -- Primary Capacity: Alpha
  index, primary_capacity = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_capacity.dissect(buffer, index, packet, parent)

  -- Primary Position Effect Mask: Integer
  index, primary_position_effect_mask = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_position_effect_mask.dissect(buffer, index, packet, parent)

  -- Primary Stock Leg Short Sale: Alpha
  index, primary_stock_leg_short_sale = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_leg_short_sale.dissect(buffer, index, packet, parent)

  -- Primary Stock Leg Mpid: Alphanumeric
  index, primary_stock_leg_mpid = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_leg_mpid.dissect(buffer, index, packet, parent)

  -- Primary Stock Capacity: Alpha
  index, primary_stock_capacity = nasdaq_iseoptions_otto_ouch_v3_0_0.primary_stock_capacity.dissect(buffer, index, packet, parent)

  -- Contra Cl Ord Id: Alphanumeric
  index, contra_cl_ord_id = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Contra Cmta: Integer
  index, contra_cmta = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cmta.dissect(buffer, index, packet, parent)

  -- Contra Clearing Account: Alphanumeric
  index, contra_clearing_account = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_clearing_account.dissect(buffer, index, packet, parent)

  -- Contra Occ Account: Integer
  index, contra_occ_account = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_occ_account.dissect(buffer, index, packet, parent)

  -- Contra Cust Acct: Alphanumeric
  index, contra_cust_acct = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_cust_acct.dissect(buffer, index, packet, parent)

  -- Contra Order Type: Alpha
  index, contra_order_type = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_order_type.dissect(buffer, index, packet, parent)

  -- Contra Price: Integer
  index, contra_price = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_price.dissect(buffer, index, packet, parent)

  -- Contra Quantity: Integer
  index, contra_quantity = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_quantity.dissect(buffer, index, packet, parent)

  -- Contra Capacity: Alpha
  index, contra_capacity = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_capacity.dissect(buffer, index, packet, parent)

  -- Contra Position Effect Mask: Integer
  index, contra_position_effect_mask = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_position_effect_mask.dissect(buffer, index, packet, parent)

  -- Contra Stock Leg Short Sale: Alpha
  index, contra_stock_leg_short_sale = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_leg_short_sale.dissect(buffer, index, packet, parent)

  -- Contra Stock Leg Mpid: Alphanumeric
  index, contra_stock_leg_mpid = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_leg_mpid.dissect(buffer, index, packet, parent)

  -- Contra Stock Capacity: Alpha
  index, contra_stock_capacity = nasdaq_iseoptions_otto_ouch_v3_0_0.contra_stock_capacity.dissect(buffer, index, packet, parent)

  -- Number Of Flex Legs: Integer
  index, number_of_flex_legs = nasdaq_iseoptions_otto_ouch_v3_0_0.number_of_flex_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Flex Leg Prices
  for flex_leg_prices_index = 1, number_of_flex_legs do
    index, flex_leg_prices = nasdaq_iseoptions_otto_ouch_v3_0_0.flex_leg_prices.dissect(buffer, index, packet, parent, flex_leg_prices_index)
  end

  return index
end

-- Dissect: New Cross Order Message
nasdaq_iseoptions_otto_ouch_v3_0_0.new_cross_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.new_cross_order_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.new_cross_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.new_cross_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.new_cross_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Message
nasdaq_iseoptions_otto_ouch_v3_0_0.mass_cancel_message = {}

-- Size: Mass Cancel Message
nasdaq_iseoptions_otto_ouch_v3_0_0.mass_cancel_message.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_type.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.scope.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.product_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.underlying_symbol.size

-- Display: Mass Cancel Message
nasdaq_iseoptions_otto_ouch_v3_0_0.mass_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Message
nasdaq_iseoptions_otto_ouch_v3_0_0.mass_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Cl Request Id: Alphanumeric
  index, cl_request_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_request_id.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alpha
  index, instrument_type = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_type.dissect(buffer, index, packet, parent)

  -- Scope: Alpha
  index, scope = nasdaq_iseoptions_otto_ouch_v3_0_0.scope.dissect(buffer, index, packet, parent)

  -- Product Id: Integer
  index, product_id = nasdaq_iseoptions_otto_ouch_v3_0_0.product_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alpha
  index, underlying_symbol = nasdaq_iseoptions_otto_ouch_v3_0_0.underlying_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Message
nasdaq_iseoptions_otto_ouch_v3_0_0.mass_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.mass_cancel_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.mass_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.mass_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.mass_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Message
nasdaq_iseoptions_otto_ouch_v3_0_0.cancel_order_message = {}

-- Size: Cancel Order Message
nasdaq_iseoptions_otto_ouch_v3_0_0.cancel_order_message.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.size

-- Display: Cancel Order Message
nasdaq_iseoptions_otto_ouch_v3_0_0.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
nasdaq_iseoptions_otto_ouch_v3_0_0.cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Alphanumeric
  index, cl_ord_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
nasdaq_iseoptions_otto_ouch_v3_0_0.cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.cancel_order_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Replace Order Message
nasdaq_iseoptions_otto_ouch_v3_0_0.replace_order_message = {}

-- Size: Replace Order Message
nasdaq_iseoptions_otto_ouch_v3_0_0.replace_order_message.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.orig_cl_ord_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.quantity.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.order_type.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.price.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.tif.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cust_acct.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.price_protection.size

-- Display: Replace Order Message
nasdaq_iseoptions_otto_ouch_v3_0_0.replace_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Message
nasdaq_iseoptions_otto_ouch_v3_0_0.replace_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Alphanumeric
  index, orig_cl_ord_id = nasdaq_iseoptions_otto_ouch_v3_0_0.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Alphanumeric
  index, cl_ord_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_iseoptions_otto_ouch_v3_0_0.quantity.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = nasdaq_iseoptions_otto_ouch_v3_0_0.order_type.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_iseoptions_otto_ouch_v3_0_0.price.dissect(buffer, index, packet, parent)

  -- Tif: Alpha
  index, tif = nasdaq_iseoptions_otto_ouch_v3_0_0.tif.dissect(buffer, index, packet, parent)

  -- Cust Acct: Alphanumeric
  index, cust_acct = nasdaq_iseoptions_otto_ouch_v3_0_0.cust_acct.dissect(buffer, index, packet, parent)

  -- Price Protection: Alpha
  index, price_protection = nasdaq_iseoptions_otto_ouch_v3_0_0.price_protection.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replace Order Message
nasdaq_iseoptions_otto_ouch_v3_0_0.replace_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.replace_order_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.replace_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.replace_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.replace_order_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Short Form Message
nasdaq_iseoptions_otto_ouch_v3_0_0.new_order_short_form_message = {}

-- Size: New Order Short Form Message
nasdaq_iseoptions_otto_ouch_v3_0_0.new_order_short_form_message.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.alo_inst.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.iso.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.side.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.order_type.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.price.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.quantity_short.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.tif.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.capacity.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.auction_id.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.price_protection.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.position_effect_mask.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.stock_capacity.size

-- Display: New Order Short Form Message
nasdaq_iseoptions_otto_ouch_v3_0_0.new_order_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Short Form Message
nasdaq_iseoptions_otto_ouch_v3_0_0.new_order_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Alphanumeric
  index, cl_ord_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Alo Inst: Alpha
  index, alo_inst = nasdaq_iseoptions_otto_ouch_v3_0_0.alo_inst.dissect(buffer, index, packet, parent)

  -- Iso: Alpha
  index, iso = nasdaq_iseoptions_otto_ouch_v3_0_0.iso.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_iseoptions_otto_ouch_v3_0_0.side.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = nasdaq_iseoptions_otto_ouch_v3_0_0.order_type.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_iseoptions_otto_ouch_v3_0_0.price.dissect(buffer, index, packet, parent)

  -- Quantity Short: Integer
  index, quantity_short = nasdaq_iseoptions_otto_ouch_v3_0_0.quantity_short.dissect(buffer, index, packet, parent)

  -- Tif: Alpha
  index, tif = nasdaq_iseoptions_otto_ouch_v3_0_0.tif.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = nasdaq_iseoptions_otto_ouch_v3_0_0.capacity.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_id.dissect(buffer, index, packet, parent)

  -- Price Protection: Alpha
  index, price_protection = nasdaq_iseoptions_otto_ouch_v3_0_0.price_protection.dissect(buffer, index, packet, parent)

  -- Position Effect Mask: Integer
  index, position_effect_mask = nasdaq_iseoptions_otto_ouch_v3_0_0.position_effect_mask.dissect(buffer, index, packet, parent)

  -- Stock Capacity: Alpha
  index, stock_capacity = nasdaq_iseoptions_otto_ouch_v3_0_0.stock_capacity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Short Form Message
nasdaq_iseoptions_otto_ouch_v3_0_0.new_order_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.new_order_short_form_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.new_order_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.new_order_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.new_order_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Long Form Message
nasdaq_iseoptions_otto_ouch_v3_0_0.new_order_long_form_message = {}

-- Calculate size of: New Order Long Form Message
nasdaq_iseoptions_otto_ouch_v3_0_0.new_order_long_form_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.cmta.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.clearing_account.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.occ_account.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.cust_acct.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.preferred_party.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.alo_inst.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.iso.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.side.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.order_type.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.price.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.quantity.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.min_qty.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.tif.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.capacity.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.auction_id.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.auction_duration.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.disclosure_mask.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.price_protection.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.display_qty.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.display_when.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.display_method.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.display_low_qty.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.display_high_qty.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.position_effect_mask.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_short_sale.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_mpid.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.stock_capacity.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_9.size

  index = index + nasdaq_iseoptions_otto_ouch_v3_0_0.number_of_flex_legs.size

  -- Calculate field size from count
  local flex_leg_prices_count = buffer(offset + index - 1, 1):uint()
  index = index + flex_leg_prices_count * 16

  return index
end

-- Display: New Order Long Form Message
nasdaq_iseoptions_otto_ouch_v3_0_0.new_order_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Long Form Message
nasdaq_iseoptions_otto_ouch_v3_0_0.new_order_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Firm Id: Alphanumeric
  index, firm_id = nasdaq_iseoptions_otto_ouch_v3_0_0.firm_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_iseoptions_otto_ouch_v3_0_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Alphanumeric
  index, cl_ord_id = nasdaq_iseoptions_otto_ouch_v3_0_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cmta: Integer
  index, cmta = nasdaq_iseoptions_otto_ouch_v3_0_0.cmta.dissect(buffer, index, packet, parent)

  -- Clearing Account: Alphanumeric
  index, clearing_account = nasdaq_iseoptions_otto_ouch_v3_0_0.clearing_account.dissect(buffer, index, packet, parent)

  -- Occ Account: Integer
  index, occ_account = nasdaq_iseoptions_otto_ouch_v3_0_0.occ_account.dissect(buffer, index, packet, parent)

  -- Cust Acct: Alphanumeric
  index, cust_acct = nasdaq_iseoptions_otto_ouch_v3_0_0.cust_acct.dissect(buffer, index, packet, parent)

  -- Preferred Party: Alpha
  index, preferred_party = nasdaq_iseoptions_otto_ouch_v3_0_0.preferred_party.dissect(buffer, index, packet, parent)

  -- Alo Inst: Alpha
  index, alo_inst = nasdaq_iseoptions_otto_ouch_v3_0_0.alo_inst.dissect(buffer, index, packet, parent)

  -- Iso: Alpha
  index, iso = nasdaq_iseoptions_otto_ouch_v3_0_0.iso.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_iseoptions_otto_ouch_v3_0_0.side.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = nasdaq_iseoptions_otto_ouch_v3_0_0.order_type.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_iseoptions_otto_ouch_v3_0_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_iseoptions_otto_ouch_v3_0_0.quantity.dissect(buffer, index, packet, parent)

  -- Min Qty: Integer
  index, min_qty = nasdaq_iseoptions_otto_ouch_v3_0_0.min_qty.dissect(buffer, index, packet, parent)

  -- Tif: Alpha
  index, tif = nasdaq_iseoptions_otto_ouch_v3_0_0.tif.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = nasdaq_iseoptions_otto_ouch_v3_0_0.capacity.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_type.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Duration: Integer
  index, auction_duration = nasdaq_iseoptions_otto_ouch_v3_0_0.auction_duration.dissect(buffer, index, packet, parent)

  -- Disclosure Mask: Integer
  index, disclosure_mask = nasdaq_iseoptions_otto_ouch_v3_0_0.disclosure_mask.dissect(buffer, index, packet, parent)

  -- Price Protection: Alpha
  index, price_protection = nasdaq_iseoptions_otto_ouch_v3_0_0.price_protection.dissect(buffer, index, packet, parent)

  -- Display Qty: Integer
  index, display_qty = nasdaq_iseoptions_otto_ouch_v3_0_0.display_qty.dissect(buffer, index, packet, parent)

  -- Display When: Alpha
  index, display_when = nasdaq_iseoptions_otto_ouch_v3_0_0.display_when.dissect(buffer, index, packet, parent)

  -- Display Method: Alpha
  index, display_method = nasdaq_iseoptions_otto_ouch_v3_0_0.display_method.dissect(buffer, index, packet, parent)

  -- Display Low Qty: Integer
  index, display_low_qty = nasdaq_iseoptions_otto_ouch_v3_0_0.display_low_qty.dissect(buffer, index, packet, parent)

  -- Display High Qty: Integer
  index, display_high_qty = nasdaq_iseoptions_otto_ouch_v3_0_0.display_high_qty.dissect(buffer, index, packet, parent)

  -- Position Effect Mask: Integer
  index, position_effect_mask = nasdaq_iseoptions_otto_ouch_v3_0_0.position_effect_mask.dissect(buffer, index, packet, parent)

  -- Stock Leg Short Sale: Alpha
  index, stock_leg_short_sale = nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_short_sale.dissect(buffer, index, packet, parent)

  -- Stock Leg Mpid: Alphanumeric
  index, stock_leg_mpid = nasdaq_iseoptions_otto_ouch_v3_0_0.stock_leg_mpid.dissect(buffer, index, packet, parent)

  -- Stock Capacity: Alpha
  index, stock_capacity = nasdaq_iseoptions_otto_ouch_v3_0_0.stock_capacity.dissect(buffer, index, packet, parent)

  -- Reserved 9: Integer
  index, reserved_9 = nasdaq_iseoptions_otto_ouch_v3_0_0.reserved_9.dissect(buffer, index, packet, parent)

  -- Number Of Flex Legs: Integer
  index, number_of_flex_legs = nasdaq_iseoptions_otto_ouch_v3_0_0.number_of_flex_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Flex Leg Prices
  for flex_leg_prices_index = 1, number_of_flex_legs do
    index, flex_leg_prices = nasdaq_iseoptions_otto_ouch_v3_0_0.flex_leg_prices.dissect(buffer, index, packet, parent, flex_leg_prices_index)
  end

  return index
end

-- Dissect: New Order Long Form Message
nasdaq_iseoptions_otto_ouch_v3_0_0.new_order_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.new_order_long_form_message, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.new_order_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.new_order_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.new_order_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
nasdaq_iseoptions_otto_ouch_v3_0_0.unsequenced_message = {}

-- Dissect: Unsequenced Message
nasdaq_iseoptions_otto_ouch_v3_0_0.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect New Order Long Form Message
  if unsequenced_message_type == "A" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.new_order_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Short Form Message
  if unsequenced_message_type == "B" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.new_order_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Message
  if unsequenced_message_type == "R" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.replace_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if unsequenced_message_type == "C" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.cancel_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Message
  if unsequenced_message_type == "U" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.mass_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Cross Order Message
  if unsequenced_message_type == "X" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.new_cross_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Complex Instrument Message
  if unsequenced_message_type == "S" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.add_complex_instrument_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Trade Message
  if unsequenced_message_type == "M" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.modify_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Member Kill Switch Request Message
  if unsequenced_message_type == "K" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.member_kill_switch_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Subscription Request Message
  if unsequenced_message_type == "F" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.subscription_request_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 10 values
  index, unsequenced_message_type = nasdaq_iseoptions_otto_ouch_v3_0_0.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 10 branches
  index = nasdaq_iseoptions_otto_ouch_v3_0_0.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_iseoptions_otto_ouch_v3_0_0.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_iseoptions_otto_ouch_v3_0_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_iseoptions_otto_ouch_v3_0_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.login_request_packet.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.username.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.password.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.requested_session.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_iseoptions_otto_ouch_v3_0_0.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_iseoptions_otto_ouch_v3_0_0.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_iseoptions_otto_ouch_v3_0_0.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_iseoptions_otto_ouch_v3_0_0.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_iseoptions_otto_ouch_v3_0_0.client_payload = {}

-- Dissect: Client Payload
nasdaq_iseoptions_otto_ouch_v3_0_0.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat Packet
  if client_packet_type == "R" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.client_heartbeat_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request Packet
  if client_packet_type == "O" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.logout_request_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet_header.size =
  nasdaq_iseoptions_otto_ouch_v3_0_0.packet_length.size + 
  nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet_type.size

-- Display: Client Packet Header
nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_iseoptions_otto_ouch_v3_0_0.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = nasdaq_iseoptions_otto_ouch_v3_0_0.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_iseoptions_otto_ouch_v3_0_0.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = nasdaq_iseoptions_otto_ouch_v3_0_0.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_iseoptions_otto_ouch_v3_0_0.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet_header.size then
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
nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_iseoptions_otto_ouch_v3_0_0.client_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_nasdaq_iseoptions_otto_ouch_v3_0_0.init()
  nasdaq_iseoptions_otto_ouch_v3_0_0.accepted_sequence_number.current = nil
  nasdaq_iseoptions_otto_ouch_v3_0_0.conversation.current = nil
  nasdaq_iseoptions_otto_ouch_v3_0_0.conversation.flows = {}
end

-- Connection roles for Nasdaq IseOptions Otto Ouch 3.0.0: Client is the initiator, Server is the acceptor
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
nasdaq_iseoptions_otto_ouch_v3_0_0.role = function(packet)
  if omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.acceptor_port

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

  if omi_nasdaq_iseoptions_otto_ouch_v3_0_0.prefs.swap_sides then
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
nasdaq_iseoptions_otto_ouch_v3_0_0.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq IseOptions Otto Ouch 3.0.0
function omi_nasdaq_iseoptions_otto_ouch_v3_0_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_iseoptions_otto_ouch_v3_0_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_iseoptions_otto_ouch_v3_0_0, buffer(), omi_nasdaq_iseoptions_otto_ouch_v3_0_0.description, "("..buffer:len().." Bytes)")
  local role = nasdaq_iseoptions_otto_ouch_v3_0_0.role(packet)

  if role == "initiator" then
    return nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet.dissect(buffer, packet, protocol)
  end

  return nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet.fingerprint = function(buffer)
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
nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet.fingerprint = function(buffer)
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

-- Dissector Heuristic for Nasdaq IseOptions Otto Ouch 3.0.0 (Tcp)
local function omi_nasdaq_iseoptions_otto_ouch_v3_0_0_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_iseoptions_otto_ouch_v3_0_0.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_iseoptions_otto_ouch_v3_0_0
  omi_nasdaq_iseoptions_otto_ouch_v3_0_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq IseOptions Otto Ouch 3.0.0 (Tcp)
local function omi_nasdaq_iseoptions_otto_ouch_v3_0_0_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_iseoptions_otto_ouch_v3_0_0.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_iseoptions_otto_ouch_v3_0_0
  omi_nasdaq_iseoptions_otto_ouch_v3_0_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq IseOptions Otto Ouch 3.0.0 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_iseoptions_otto_ouch_v3_0_0_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_iseoptions_otto_ouch_v3_0_0.role(packet)
  local initiator = omi_nasdaq_iseoptions_otto_ouch_v3_0_0_tcp_initiator_heuristic
  local acceptor = omi_nasdaq_iseoptions_otto_ouch_v3_0_0_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_iseoptions_otto_ouch_v3_0_0.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nasdaq_iseoptions_otto_ouch_v3_0_0.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq IseOptions Otto Ouch 3.0.0
omi_nasdaq_iseoptions_otto_ouch_v3_0_0:register_heuristic("tcp", omi_nasdaq_iseoptions_otto_ouch_v3_0_0_tcp_heuristic)

-- Register Nasdaq IseOptions Otto Ouch 3.0.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_iseoptions_otto_ouch_v3_0_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 3.0.0
--   Date: Monday, August 17, 2026
--   Specification: Options_ETH_OTTO.pdf
--   Specification: Options_OTTO.pdf
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
