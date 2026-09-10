-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Finra Trace Btds Dfi 2.1 Protocol
local omi_finra_trace_btds_dfi_v2_1 = Proto("Omi.Finra.Trace.Btds.Dfi.v2.1", "Finra Trace Btds Dfi 2.1")

-- Protocol table
local finra_trace_btds_dfi_v2_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Finra Trace Btds Dfi 2.1 Fields
omi_finra_trace_btds_dfi_v2_1.fields.action = ProtoField.new("Action", "finra.trace.btds.dfi.v2.1.action", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.action_datetime = ProtoField.new("Action Datetime", "finra.trace.btds.dfi.v2.1.actiondatetime", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.administrative_message = ProtoField.new("Administrative Message", "finra.trace.btds.dfi.v2.1.administrativemessage", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "finra.trace.btds.dfi.v2.1.administrativemessagetype", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.advances_all_securities = ProtoField.new("Advances All Securities", "finra.trace.btds.dfi.v2.1.advancesallsecurities", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.advances_convertibles = ProtoField.new("Advances Convertibles", "finra.trace.btds.dfi.v2.1.advancesconvertibles", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.advances_high_yield = ProtoField.new("Advances High Yield", "finra.trace.btds.dfi.v2.1.advanceshighyield", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.advances_investment_grade = ProtoField.new("Advances Investment Grade", "finra.trace.btds.dfi.v2.1.advancesinvestmentgrade", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.as_of_indicator = ProtoField.new("As Of Indicator", "finra.trace.btds.dfi.v2.1.asofindicator", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.ats_indicator = ProtoField.new("Ats Indicator", "finra.trace.btds.dfi.v2.1.atsindicator", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.bsym = ProtoField.new("Bsym", "finra.trace.btds.dfi.v2.1.bsym", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.change_indicator = ProtoField.new("Change Indicator", "finra.trace.btds.dfi.v2.1.changeindicator", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.close_yield_direction = ProtoField.new("Close Yield Direction", "finra.trace.btds.dfi.v2.1.closeyielddirection", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.contra_party_type = ProtoField.new("Contra Party Type", "finra.trace.btds.dfi.v2.1.contrapartytype", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.control_message = ProtoField.new("Control Message", "finra.trace.btds.dfi.v2.1.controlmessage", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.control_message_type = ProtoField.new("Control Message Type", "finra.trace.btds.dfi.v2.1.controlmessagetype", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.correction_trade_information = ProtoField.new("Correction Trade Information", "finra.trace.btds.dfi.v2.1.correctiontradeinformation", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.count = ProtoField.new("Count", "finra.trace.btds.dfi.v2.1.count", ftypes.UINT16)
omi_finra_trace_btds_dfi_v2_1.fields.cusip = ProtoField.new("Cusip", "finra.trace.btds.dfi.v2.1.cusip", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.daily_close_price = ProtoField.new("Daily Close Price", "finra.trace.btds.dfi.v2.1.dailycloseprice", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.daily_close_yield = ProtoField.new("Daily Close Yield", "finra.trace.btds.dfi.v2.1.dailycloseyield", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.daily_high_price = ProtoField.new("Daily High Price", "finra.trace.btds.dfi.v2.1.dailyhighprice", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.daily_high_yield = ProtoField.new("Daily High Yield", "finra.trace.btds.dfi.v2.1.dailyhighyield", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.daily_low_price = ProtoField.new("Daily Low Price", "finra.trace.btds.dfi.v2.1.dailylowprice", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.daily_low_yield = ProtoField.new("Daily Low Yield", "finra.trace.btds.dfi.v2.1.dailylowyield", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.datetime = ProtoField.new("Datetime", "finra.trace.btds.dfi.v2.1.datetime", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.day = ProtoField.new("Day", "finra.trace.btds.dfi.v2.1.day", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.declines_all_securities = ProtoField.new("Declines All Securities", "finra.trace.btds.dfi.v2.1.declinesallsecurities", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.declines_convertibles = ProtoField.new("Declines Convertibles", "finra.trace.btds.dfi.v2.1.declinesconvertibles", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.declines_high_yield = ProtoField.new("Declines High Yield", "finra.trace.btds.dfi.v2.1.declineshighyield", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.declines_investment_grade = ProtoField.new("Declines Investment Grade", "finra.trace.btds.dfi.v2.1.declinesinvestmentgrade", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.execution_datetime = ProtoField.new("Execution Datetime", "finra.trace.btds.dfi.v2.1.executiondatetime", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.fifty_two_week_high_all_securities = ProtoField.new("Fifty Two Week High All Securities", "finra.trace.btds.dfi.v2.1.fiftytwoweekhighallsecurities", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.fifty_two_week_high_convertibles = ProtoField.new("Fifty Two Week High Convertibles", "finra.trace.btds.dfi.v2.1.fiftytwoweekhighconvertibles", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.fifty_two_week_high_high_yield = ProtoField.new("Fifty Two Week High High Yield", "finra.trace.btds.dfi.v2.1.fiftytwoweekhighhighyield", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.fifty_two_week_high_investment_grade = ProtoField.new("Fifty Two Week High Investment Grade", "finra.trace.btds.dfi.v2.1.fiftytwoweekhighinvestmentgrade", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.fifty_two_week_low_all_securities = ProtoField.new("Fifty Two Week Low All Securities", "finra.trace.btds.dfi.v2.1.fiftytwoweeklowallsecurities", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.fifty_two_week_low_convertibles = ProtoField.new("Fifty Two Week Low Convertibles", "finra.trace.btds.dfi.v2.1.fiftytwoweeklowconvertibles", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.fifty_two_week_low_high_yield = ProtoField.new("Fifty Two Week Low High Yield", "finra.trace.btds.dfi.v2.1.fiftytwoweeklowhighyield", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.fifty_two_week_low_investment_grade = ProtoField.new("Fifty Two Week Low Investment Grade", "finra.trace.btds.dfi.v2.1.fiftytwoweeklowinvestmentgrade", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.future_use = ProtoField.new("Future Use", "finra.trace.btds.dfi.v2.1.futureuse", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.halt_reason = ProtoField.new("Halt Reason", "finra.trace.btds.dfi.v2.1.haltreason", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.high_price = ProtoField.new("High Price", "finra.trace.btds.dfi.v2.1.highprice", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.high_yield = ProtoField.new("High Yield", "finra.trace.btds.dfi.v2.1.highyield", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.high_yield_direction = ProtoField.new("High Yield Direction", "finra.trace.btds.dfi.v2.1.highyielddirection", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.hour = ProtoField.new("Hour", "finra.trace.btds.dfi.v2.1.hour", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.issuer = ProtoField.new("Issuer", "finra.trace.btds.dfi.v2.1.issuer", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.label = ProtoField.new("Label", "finra.trace.btds.dfi.v2.1.label", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.last_sale_price = ProtoField.new("Last Sale Price", "finra.trace.btds.dfi.v2.1.lastsaleprice", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.last_sale_yield = ProtoField.new("Last Sale Yield", "finra.trace.btds.dfi.v2.1.lastsaleyield", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.last_sale_yield_direction = ProtoField.new("Last Sale Yield Direction", "finra.trace.btds.dfi.v2.1.lastsaleyielddirection", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.length = ProtoField.new("Length", "finra.trace.btds.dfi.v2.1.length", ftypes.UINT16)
omi_finra_trace_btds_dfi_v2_1.fields.low_price = ProtoField.new("Low Price", "finra.trace.btds.dfi.v2.1.lowprice", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.low_yield = ProtoField.new("Low Yield", "finra.trace.btds.dfi.v2.1.lowyield", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.low_yield_direction = ProtoField.new("Low Yield Direction", "finra.trace.btds.dfi.v2.1.lowyielddirection", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.market_breadth_information = ProtoField.new("Market Breadth Information", "finra.trace.btds.dfi.v2.1.marketbreadthinformation", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.market_center_originator_id = ProtoField.new("Market Center Originator Id", "finra.trace.btds.dfi.v2.1.marketcenteroriginatorid", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.market_sentiment_information = ProtoField.new("Market Sentiment Information", "finra.trace.btds.dfi.v2.1.marketsentimentinformation", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.message_category = ProtoField.new("Message Category", "finra.trace.btds.dfi.v2.1.messagecategory", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.message_header = ProtoField.new("Message Header", "finra.trace.btds.dfi.v2.1.messageheader", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.minute = ProtoField.new("Minute", "finra.trace.btds.dfi.v2.1.minute", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.month = ProtoField.new("Month", "finra.trace.btds.dfi.v2.1.month", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.original_dissemination_date = ProtoField.new("Original Dissemination Date", "finra.trace.btds.dfi.v2.1.originaldisseminationdate", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.original_trade_identifier = ProtoField.new("Original Trade Identifier", "finra.trace.btds.dfi.v2.1.originaltradeidentifier", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.original_trade_information = ProtoField.new("Original Trade Information", "finra.trace.btds.dfi.v2.1.originaltradeinformation", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.price = ProtoField.new("Price", "finra.trace.btds.dfi.v2.1.price", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.quantity = ProtoField.new("Quantity", "finra.trace.btds.dfi.v2.1.quantity", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.quantity_indicator = ProtoField.new("Quantity Indicator", "finra.trace.btds.dfi.v2.1.quantityindicator", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.remuneration = ProtoField.new("Remuneration", "finra.trace.btds.dfi.v2.1.remuneration", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.report_function = ProtoField.new("Report Function", "finra.trace.btds.dfi.v2.1.reportfunction", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.reporting_party_type = ProtoField.new("Reporting Party Type", "finra.trace.btds.dfi.v2.1.reportingpartytype", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.sale_condition_3 = ProtoField.new("Sale Condition 3", "finra.trace.btds.dfi.v2.1.salecondition3", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.sale_condition_4 = ProtoField.new("Sale Condition 4", "finra.trace.btds.dfi.v2.1.salecondition4", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.second = ProtoField.new("Second", "finra.trace.btds.dfi.v2.1.second", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.sequence = ProtoField.new("Sequence", "finra.trace.btds.dfi.v2.1.sequence", ftypes.UINT64)
omi_finra_trace_btds_dfi_v2_1.fields.session = ProtoField.new("Session", "finra.trace.btds.dfi.v2.1.session", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.settlement_date = ProtoField.new("Settlement Date", "finra.trace.btds.dfi.v2.1.settlementdate", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.side = ProtoField.new("Side", "finra.trace.btds.dfi.v2.1.side", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.special_price_indicator = ProtoField.new("Special Price Indicator", "finra.trace.btds.dfi.v2.1.specialpriceindicator", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.sub_product_type = ProtoField.new("Sub Product Type", "finra.trace.btds.dfi.v2.1.subproducttype", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.symbol = ProtoField.new("Symbol", "finra.trace.btds.dfi.v2.1.symbol", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.text = ProtoField.new("Text", "finra.trace.btds.dfi.v2.1.text", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_number_of_transactions_affiliate_buy = ProtoField.new("Total Number Of Transactions Affiliate Buy", "finra.trace.btds.dfi.v2.1.totalnumberoftransactionsaffiliatebuy", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_number_of_transactions_affiliate_sell = ProtoField.new("Total Number Of Transactions Affiliate Sell", "finra.trace.btds.dfi.v2.1.totalnumberoftransactionsaffiliatesell", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_number_of_transactions_all_securities = ProtoField.new("Total Number Of Transactions All Securities", "finra.trace.btds.dfi.v2.1.totalnumberoftransactionsallsecurities", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_number_of_transactions_customer_buy = ProtoField.new("Total Number Of Transactions Customer Buy", "finra.trace.btds.dfi.v2.1.totalnumberoftransactionscustomerbuy", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_number_of_transactions_customer_sell = ProtoField.new("Total Number Of Transactions Customer Sell", "finra.trace.btds.dfi.v2.1.totalnumberoftransactionscustomersell", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_number_of_transactions_inter_dealer = ProtoField.new("Total Number Of Transactions Inter Dealer", "finra.trace.btds.dfi.v2.1.totalnumberoftransactionsinterdealer", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_securities_traded_affiliate_buy = ProtoField.new("Total Securities Traded Affiliate Buy", "finra.trace.btds.dfi.v2.1.totalsecuritiestradedaffiliatebuy", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_securities_traded_affiliate_sell = ProtoField.new("Total Securities Traded Affiliate Sell", "finra.trace.btds.dfi.v2.1.totalsecuritiestradedaffiliatesell", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_securities_traded_all_securities = ProtoField.new("Total Securities Traded All Securities", "finra.trace.btds.dfi.v2.1.totalsecuritiestradedallsecurities", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_securities_traded_convertibles = ProtoField.new("Total Securities Traded Convertibles", "finra.trace.btds.dfi.v2.1.totalsecuritiestradedconvertibles", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_securities_traded_customer_buy = ProtoField.new("Total Securities Traded Customer Buy", "finra.trace.btds.dfi.v2.1.totalsecuritiestradedcustomerbuy", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_securities_traded_customer_sell = ProtoField.new("Total Securities Traded Customer Sell", "finra.trace.btds.dfi.v2.1.totalsecuritiestradedcustomersell", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_securities_traded_high_yield = ProtoField.new("Total Securities Traded High Yield", "finra.trace.btds.dfi.v2.1.totalsecuritiestradedhighyield", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_securities_traded_inter_dealer = ProtoField.new("Total Securities Traded Inter Dealer", "finra.trace.btds.dfi.v2.1.totalsecuritiestradedinterdealer", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_securities_traded_investment_grade = ProtoField.new("Total Securities Traded Investment Grade", "finra.trace.btds.dfi.v2.1.totalsecuritiestradedinvestmentgrade", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_volume_affiliate_buy = ProtoField.new("Total Volume Affiliate Buy", "finra.trace.btds.dfi.v2.1.totalvolumeaffiliatebuy", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_volume_affiliate_sell = ProtoField.new("Total Volume Affiliate Sell", "finra.trace.btds.dfi.v2.1.totalvolumeaffiliatesell", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_volume_all_securities = ProtoField.new("Total Volume All Securities", "finra.trace.btds.dfi.v2.1.totalvolumeallsecurities", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_volume_convertibles = ProtoField.new("Total Volume Convertibles", "finra.trace.btds.dfi.v2.1.totalvolumeconvertibles", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_volume_customer_buy = ProtoField.new("Total Volume Customer Buy", "finra.trace.btds.dfi.v2.1.totalvolumecustomerbuy", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_volume_customer_sell = ProtoField.new("Total Volume Customer Sell", "finra.trace.btds.dfi.v2.1.totalvolumecustomersell", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_volume_high_yield = ProtoField.new("Total Volume High Yield", "finra.trace.btds.dfi.v2.1.totalvolumehighyield", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_volume_inter_dealer = ProtoField.new("Total Volume Inter Dealer", "finra.trace.btds.dfi.v2.1.totalvolumeinterdealer", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.total_volume_investment_grade = ProtoField.new("Total Volume Investment Grade", "finra.trace.btds.dfi.v2.1.totalvolumeinvestmentgrade", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.trade_identifier = ProtoField.new("Trade Identifier", "finra.trace.btds.dfi.v2.1.tradeidentifier", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.trade_information = ProtoField.new("Trade Information", "finra.trace.btds.dfi.v2.1.tradeinformation", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.trade_message = ProtoField.new("Trade Message", "finra.trace.btds.dfi.v2.1.trademessage", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.trade_message_type = ProtoField.new("Trade Message Type", "finra.trace.btds.dfi.v2.1.trademessagetype", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.trade_summary_information = ProtoField.new("Trade Summary Information", "finra.trace.btds.dfi.v2.1.tradesummaryinformation", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.unchanged_all_securities = ProtoField.new("Unchanged All Securities", "finra.trace.btds.dfi.v2.1.unchangedallsecurities", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.unchanged_convertibles = ProtoField.new("Unchanged Convertibles", "finra.trace.btds.dfi.v2.1.unchangedconvertibles", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.unchanged_high_yield = ProtoField.new("Unchanged High Yield", "finra.trace.btds.dfi.v2.1.unchangedhighyield", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.unchanged_investment_grade = ProtoField.new("Unchanged Investment Grade", "finra.trace.btds.dfi.v2.1.unchangedinvestmentgrade", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.when_issued_indicator = ProtoField.new("When Issued Indicator", "finra.trace.btds.dfi.v2.1.whenissuedindicator", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.year = ProtoField.new("Year", "finra.trace.btds.dfi.v2.1.year", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.yield = ProtoField.new("Yield", "finra.trace.btds.dfi.v2.1.yield", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.yield_direction = ProtoField.new("Yield Direction", "finra.trace.btds.dfi.v2.1.yielddirection", ftypes.STRING)

-- Finra Trace Btds Dfi 2.1 Headers
omi_finra_trace_btds_dfi_v2_1.fields.message = ProtoField.new("Message", "finra.trace.btds.dfi.v2.1.message", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.mold_udp64 = ProtoField.new("Mold Udp64", "finra.trace.btds.dfi.v2.1.moldudp64", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.packet = ProtoField.new("Packet", "finra.trace.btds.dfi.v2.1.packet", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.packet_header = ProtoField.new("Packet Header", "finra.trace.btds.dfi.v2.1.packetheader", ftypes.STRING)

-- Finra Trace Btds 2.1 Application Messages
omi_finra_trace_btds_dfi_v2_1.fields.daily_trade_summary_message = ProtoField.new("Daily Trade Summary Message", "finra.trace.btds.dfi.v2.1.dailytradesummarymessage", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.end_of_day_message = ProtoField.new("End Of Day Message", "finra.trace.btds.dfi.v2.1.endofdaymessage", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.end_of_trade_reporting_message = ProtoField.new("End Of Trade Reporting Message", "finra.trace.btds.dfi.v2.1.endoftradereportingmessage", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.end_of_transmissions_message = ProtoField.new("End Of Transmissions Message", "finra.trace.btds.dfi.v2.1.endoftransmissionsmessage", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.general_administrative_message = ProtoField.new("General Administrative Message", "finra.trace.btds.dfi.v2.1.generaladministrativemessage", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.market_breadth_message = ProtoField.new("Market Breadth Message", "finra.trace.btds.dfi.v2.1.marketbreadthmessage", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.market_sentiment_all_securities_message = ProtoField.new("Market Sentiment All Securities Message", "finra.trace.btds.dfi.v2.1.marketsentimentallsecuritiesmessage", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.market_sentiment_church_bonds_message = ProtoField.new("Market Sentiment Church Bonds Message", "finra.trace.btds.dfi.v2.1.marketsentimentchurchbondsmessage", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.market_sentiment_convertible_bonds_message = ProtoField.new("Market Sentiment Convertible Bonds Message", "finra.trace.btds.dfi.v2.1.marketsentimentconvertiblebondsmessage", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.market_sentiment_equity_linked_notes_message = ProtoField.new("Market Sentiment Equity Linked Notes Message", "finra.trace.btds.dfi.v2.1.marketsentimentequitylinkednotesmessage", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.market_sentiment_high_yield_message = ProtoField.new("Market Sentiment High Yield Message", "finra.trace.btds.dfi.v2.1.marketsentimenthighyieldmessage", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.market_sentiment_investment_grade_message = ProtoField.new("Market Sentiment Investment Grade Message", "finra.trace.btds.dfi.v2.1.marketsentimentinvestmentgrademessage", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.market_session_close_message = ProtoField.new("Market Session Close Message", "finra.trace.btds.dfi.v2.1.marketsessionclosemessage", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.market_session_open_message = ProtoField.new("Market Session Open Message", "finra.trace.btds.dfi.v2.1.marketsessionopenmessage", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "finra.trace.btds.dfi.v2.1.startofdaymessage", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "finra.trace.btds.dfi.v2.1.tradecancelmessage", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "finra.trace.btds.dfi.v2.1.tradecorrectionmessage", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.trade_report_message = ProtoField.new("Trade Report Message", "finra.trace.btds.dfi.v2.1.tradereportmessage", ftypes.STRING)
omi_finra_trace_btds_dfi_v2_1.fields.trading_halt_message = ProtoField.new("Trading Halt Message", "finra.trace.btds.dfi.v2.1.tradinghaltmessage", ftypes.STRING)

-- Finra Trace Btds Dfi 2.1 generated fields
omi_finra_trace_btds_dfi_v2_1.fields.message_index = ProtoField.new("Message Index", "finra.trace.btds.dfi.v2.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Finra Trace Btds Dfi 2.1 Element Dissection Options
show.structs = true
show.application_messages = true
show.indexes = true

-- Register Finra Trace Btds Dfi 2.1 Show Options
omi_finra_trace_btds_dfi_v2_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_finra_trace_btds_dfi_v2_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_finra_trace_btds_dfi_v2_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_finra_trace_btds_dfi_v2_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_finra_trace_btds_dfi_v2_1.prefs.show_application_messages then
    show.application_messages = omi_finra_trace_btds_dfi_v2_1.prefs.show_application_messages
  end
  if show.structs ~= omi_finra_trace_btds_dfi_v2_1.prefs.show_structs then
    show.structs = omi_finra_trace_btds_dfi_v2_1.prefs.show_structs
  end
  if show.indexes ~= omi_finra_trace_btds_dfi_v2_1.prefs.show_indexes then
    show.indexes = omi_finra_trace_btds_dfi_v2_1.prefs.show_indexes
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
-- Finra Trace Btds Dfi 2.1 Fields
-----------------------------------------------------------------------

-- Action
finra_trace_btds_dfi_v2_1.action = {}

-- Size: Action
finra_trace_btds_dfi_v2_1.action.size = 1

-- Display: Action
finra_trace_btds_dfi_v2_1.action.display = function(value)
  if value == "H" then
    return "Action: Trading Halt (H)"
  end
  if value == "R" then
    return "Action: Trading Resumption (R)"
  end

  return "Action: Unknown("..value..")"
end

-- Dissect: Action
finra_trace_btds_dfi_v2_1.action.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.action, range, value, display)

  return offset + length, value
end

-- Administrative Message Type
finra_trace_btds_dfi_v2_1.administrative_message_type = {}

-- Size: Administrative Message Type
finra_trace_btds_dfi_v2_1.administrative_message_type.size = 1

-- Display: Administrative Message Type
finra_trace_btds_dfi_v2_1.administrative_message_type.display = function(value)
  if value == "E" then
    return "Administrative Message Type: Daily Trade Summary Message (E)"
  end
  if value == "H" then
    return "Administrative Message Type: Trading Halt Message (H)"
  end
  if value == "A" then
    return "Administrative Message Type: General Administrative Message (A)"
  end
  if value == "1" then
    return "Administrative Message Type: Market Breadth Message (1)"
  end
  if value == "2" then
    return "Administrative Message Type: Market Sentiment All Securities Message (2)"
  end
  if value == "3" then
    return "Administrative Message Type: Market Sentiment Investment Grade Message (3)"
  end
  if value == "4" then
    return "Administrative Message Type: Market Sentiment High Yield Message (4)"
  end
  if value == "5" then
    return "Administrative Message Type: Market Sentiment Convertible Bonds Message (5)"
  end
  if value == "6" then
    return "Administrative Message Type: Market Sentiment Church Bonds Message (6)"
  end
  if value == "7" then
    return "Administrative Message Type: Market Sentiment Equity Linked Notes Message (7)"
  end

  return "Administrative Message Type: Unknown("..value..")"
end

-- Dissect: Administrative Message Type
finra_trace_btds_dfi_v2_1.administrative_message_type.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.administrative_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.administrative_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- Advances All Securities
finra_trace_btds_dfi_v2_1.advances_all_securities = {}

-- Size: Advances All Securities
finra_trace_btds_dfi_v2_1.advances_all_securities.size = 6

-- Display: Advances All Securities
finra_trace_btds_dfi_v2_1.advances_all_securities.display = function(value)
  return "Advances All Securities: "..value
end

-- Dissect: Advances All Securities
finra_trace_btds_dfi_v2_1.advances_all_securities.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.advances_all_securities.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.advances_all_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.advances_all_securities, range, value, display)

  return offset + length, value
end

-- Advances Convertibles
finra_trace_btds_dfi_v2_1.advances_convertibles = {}

-- Size: Advances Convertibles
finra_trace_btds_dfi_v2_1.advances_convertibles.size = 6

-- Display: Advances Convertibles
finra_trace_btds_dfi_v2_1.advances_convertibles.display = function(value)
  return "Advances Convertibles: "..value
end

-- Dissect: Advances Convertibles
finra_trace_btds_dfi_v2_1.advances_convertibles.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.advances_convertibles.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.advances_convertibles.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.advances_convertibles, range, value, display)

  return offset + length, value
end

-- Advances High Yield
finra_trace_btds_dfi_v2_1.advances_high_yield = {}

-- Size: Advances High Yield
finra_trace_btds_dfi_v2_1.advances_high_yield.size = 6

-- Display: Advances High Yield
finra_trace_btds_dfi_v2_1.advances_high_yield.display = function(value)
  return "Advances High Yield: "..value
end

-- Dissect: Advances High Yield
finra_trace_btds_dfi_v2_1.advances_high_yield.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.advances_high_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.advances_high_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.advances_high_yield, range, value, display)

  return offset + length, value
end

-- Advances Investment Grade
finra_trace_btds_dfi_v2_1.advances_investment_grade = {}

-- Size: Advances Investment Grade
finra_trace_btds_dfi_v2_1.advances_investment_grade.size = 6

-- Display: Advances Investment Grade
finra_trace_btds_dfi_v2_1.advances_investment_grade.display = function(value)
  return "Advances Investment Grade: "..value
end

-- Dissect: Advances Investment Grade
finra_trace_btds_dfi_v2_1.advances_investment_grade.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.advances_investment_grade.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.advances_investment_grade.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.advances_investment_grade, range, value, display)

  return offset + length, value
end

-- As Of Indicator
finra_trace_btds_dfi_v2_1.as_of_indicator = {}

-- Size: As Of Indicator
finra_trace_btds_dfi_v2_1.as_of_indicator.size = 1

-- Display: As Of Indicator
finra_trace_btds_dfi_v2_1.as_of_indicator.display = function(value)
  if value == "A" then
    return "As Of Indicator: As Of Trade (A)"
  end
  if value == "R" then
    return "As Of Indicator: Reversal (R)"
  end
  if value == " " then
    return "As Of Indicator: Current Day Trade (<whitespace>)"
  end

  return "As Of Indicator: Unknown("..value..")"
end

-- Dissect: As Of Indicator
finra_trace_btds_dfi_v2_1.as_of_indicator.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.as_of_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.as_of_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.as_of_indicator, range, value, display)

  return offset + length, value
end

-- Ats Indicator
finra_trace_btds_dfi_v2_1.ats_indicator = {}

-- Size: Ats Indicator
finra_trace_btds_dfi_v2_1.ats_indicator.size = 1

-- Display: Ats Indicator
finra_trace_btds_dfi_v2_1.ats_indicator.display = function(value)
  if value == "Y" then
    return "Ats Indicator: Ats Trade (Y)"
  end
  if value == " " then
    return "Ats Indicator: Not An Ats Trade (<whitespace>)"
  end

  return "Ats Indicator: Unknown("..value..")"
end

-- Dissect: Ats Indicator
finra_trace_btds_dfi_v2_1.ats_indicator.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.ats_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.ats_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.ats_indicator, range, value, display)

  return offset + length, value
end

-- Bsym
finra_trace_btds_dfi_v2_1.bsym = {}

-- Size: Bsym
finra_trace_btds_dfi_v2_1.bsym.size = 12

-- Display: Bsym
finra_trace_btds_dfi_v2_1.bsym.display = function(value)
  return "Bsym: "..value
end

-- Dissect: Bsym
finra_trace_btds_dfi_v2_1.bsym.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.bsym.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = finra_trace_btds_dfi_v2_1.bsym.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.bsym, range, value, display)

  return offset + length, value
end

-- Change Indicator
finra_trace_btds_dfi_v2_1.change_indicator = {}

-- Size: Change Indicator
finra_trace_btds_dfi_v2_1.change_indicator.size = 1

-- Display: Change Indicator
finra_trace_btds_dfi_v2_1.change_indicator.display = function(value)
  if value == "0" then
    return "Change Indicator: No Price Yield Changed (0)"
  end
  if value == "1" then
    return "Change Indicator: Last Price Yield Changed (1)"
  end
  if value == "2" then
    return "Change Indicator: Low Price Yield Changed (2)"
  end
  if value == "3" then
    return "Change Indicator: Last Price Yield And Low Price Yield Changed (3)"
  end
  if value == "4" then
    return "Change Indicator: High Price Yield Changed (4)"
  end
  if value == "5" then
    return "Change Indicator: Last Price Yield And High Price Yield Changed (5)"
  end
  if value == "6" then
    return "Change Indicator: High Price Yield And Low Price Yield Changed (6)"
  end
  if value == "7" then
    return "Change Indicator: All Prices Yields Changed (7)"
  end

  return "Change Indicator: Unknown("..value..")"
end

-- Dissect: Change Indicator
finra_trace_btds_dfi_v2_1.change_indicator.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.change_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.change_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.change_indicator, range, value, display)

  return offset + length, value
end

-- Close Yield Direction
finra_trace_btds_dfi_v2_1.close_yield_direction = {}

-- Size: Close Yield Direction
finra_trace_btds_dfi_v2_1.close_yield_direction.size = 1

-- Display: Close Yield Direction
finra_trace_btds_dfi_v2_1.close_yield_direction.display = function(value)
  if value == "-" then
    return "Close Yield Direction: Negative Yield (-)"
  end
  if value == " " then
    return "Close Yield Direction: Positive Or Zero Yield (<whitespace>)"
  end

  return "Close Yield Direction: Unknown("..value..")"
end

-- Dissect: Close Yield Direction
finra_trace_btds_dfi_v2_1.close_yield_direction.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.close_yield_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.close_yield_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.close_yield_direction, range, value, display)

  return offset + length, value
end

-- Contra Party Type
finra_trace_btds_dfi_v2_1.contra_party_type = {}

-- Size: Contra Party Type
finra_trace_btds_dfi_v2_1.contra_party_type.size = 1

-- Display: Contra Party Type
finra_trace_btds_dfi_v2_1.contra_party_type.display = function(value)
  if value == "D" then
    return "Contra Party Type: Contra Party Is A Broker Dealer (D)"
  end
  if value == "C" then
    return "Contra Party Type: Contra Party Is A Customer Non Finra Member (C)"
  end
  if value == "A" then
    return "Contra Party Type: Contra Party Is A Nonmember Affiliate (A)"
  end
  if value == "T" then
    return "Contra Party Type: Contra Party Is An Alternative Trading System Ats (T)"
  end

  return "Contra Party Type: Unknown("..value..")"
end

-- Dissect: Contra Party Type
finra_trace_btds_dfi_v2_1.contra_party_type.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.contra_party_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.contra_party_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.contra_party_type, range, value, display)

  return offset + length, value
end

-- Control Message Type
finra_trace_btds_dfi_v2_1.control_message_type = {}

-- Size: Control Message Type
finra_trace_btds_dfi_v2_1.control_message_type.size = 1

-- Display: Control Message Type
finra_trace_btds_dfi_v2_1.control_message_type.display = function(value)
  if value == "I" then
    return "Control Message Type: Start Of Day Message (I)"
  end
  if value == "J" then
    return "Control Message Type: End Of Day Message (J)"
  end
  if value == "O" then
    return "Control Message Type: Market Session Open Message (O)"
  end
  if value == "C" then
    return "Control Message Type: Market Session Close Message (C)"
  end
  if value == "X" then
    return "Control Message Type: End Of Trade Reporting Message (X)"
  end
  if value == "Z" then
    return "Control Message Type: End Of Transmissions Message (Z)"
  end

  return "Control Message Type: Unknown("..value..")"
end

-- Dissect: Control Message Type
finra_trace_btds_dfi_v2_1.control_message_type.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.control_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.control_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Count
finra_trace_btds_dfi_v2_1.count = {}

-- Size: Count
finra_trace_btds_dfi_v2_1.count.size = 2

-- Display: Count
finra_trace_btds_dfi_v2_1.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
finra_trace_btds_dfi_v2_1.count.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = finra_trace_btds_dfi_v2_1.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.count, range, value, display)

  return offset + length, value
end

-- Cusip
finra_trace_btds_dfi_v2_1.cusip = {}

-- Size: Cusip
finra_trace_btds_dfi_v2_1.cusip.size = 9

-- Display: Cusip
finra_trace_btds_dfi_v2_1.cusip.display = function(value)
  return "Cusip: "..value
end

-- Dissect: Cusip
finra_trace_btds_dfi_v2_1.cusip.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.cusip.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = finra_trace_btds_dfi_v2_1.cusip.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.cusip, range, value, display)

  return offset + length, value
end

-- Daily Close Price
finra_trace_btds_dfi_v2_1.daily_close_price = {}

-- Size: Daily Close Price
finra_trace_btds_dfi_v2_1.daily_close_price.size = 11

-- Display: Daily Close Price
finra_trace_btds_dfi_v2_1.daily_close_price.display = function(value)
  return "Daily Close Price: "..value
end

-- Dissect: Daily Close Price
finra_trace_btds_dfi_v2_1.daily_close_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.daily_close_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.daily_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.daily_close_price, range, value, display)

  return offset + length, value
end

-- Daily Close Yield
finra_trace_btds_dfi_v2_1.daily_close_yield = {}

-- Size: Daily Close Yield
finra_trace_btds_dfi_v2_1.daily_close_yield.size = 13

-- Display: Daily Close Yield
finra_trace_btds_dfi_v2_1.daily_close_yield.display = function(value)
  return "Daily Close Yield: "..value
end

-- Dissect: Daily Close Yield
finra_trace_btds_dfi_v2_1.daily_close_yield.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.daily_close_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.daily_close_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.daily_close_yield, range, value, display)

  return offset + length, value
end

-- Daily High Price
finra_trace_btds_dfi_v2_1.daily_high_price = {}

-- Size: Daily High Price
finra_trace_btds_dfi_v2_1.daily_high_price.size = 11

-- Display: Daily High Price
finra_trace_btds_dfi_v2_1.daily_high_price.display = function(value)
  return "Daily High Price: "..value
end

-- Dissect: Daily High Price
finra_trace_btds_dfi_v2_1.daily_high_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.daily_high_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.daily_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.daily_high_price, range, value, display)

  return offset + length, value
end

-- Daily High Yield
finra_trace_btds_dfi_v2_1.daily_high_yield = {}

-- Size: Daily High Yield
finra_trace_btds_dfi_v2_1.daily_high_yield.size = 13

-- Display: Daily High Yield
finra_trace_btds_dfi_v2_1.daily_high_yield.display = function(value)
  return "Daily High Yield: "..value
end

-- Dissect: Daily High Yield
finra_trace_btds_dfi_v2_1.daily_high_yield.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.daily_high_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.daily_high_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.daily_high_yield, range, value, display)

  return offset + length, value
end

-- Daily Low Price
finra_trace_btds_dfi_v2_1.daily_low_price = {}

-- Size: Daily Low Price
finra_trace_btds_dfi_v2_1.daily_low_price.size = 11

-- Display: Daily Low Price
finra_trace_btds_dfi_v2_1.daily_low_price.display = function(value)
  return "Daily Low Price: "..value
end

-- Dissect: Daily Low Price
finra_trace_btds_dfi_v2_1.daily_low_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.daily_low_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.daily_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.daily_low_price, range, value, display)

  return offset + length, value
end

-- Daily Low Yield
finra_trace_btds_dfi_v2_1.daily_low_yield = {}

-- Size: Daily Low Yield
finra_trace_btds_dfi_v2_1.daily_low_yield.size = 13

-- Display: Daily Low Yield
finra_trace_btds_dfi_v2_1.daily_low_yield.display = function(value)
  return "Daily Low Yield: "..value
end

-- Dissect: Daily Low Yield
finra_trace_btds_dfi_v2_1.daily_low_yield.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.daily_low_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.daily_low_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.daily_low_yield, range, value, display)

  return offset + length, value
end

-- Day
finra_trace_btds_dfi_v2_1.day = {}

-- Size: Day
finra_trace_btds_dfi_v2_1.day.size = 2

-- Display: Day
finra_trace_btds_dfi_v2_1.day.display = function(value)
  return "Day: "..value
end

-- Dissect: Day
finra_trace_btds_dfi_v2_1.day.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.day.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.day.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.day, range, value, display)

  return offset + length, value
end

-- Declines All Securities
finra_trace_btds_dfi_v2_1.declines_all_securities = {}

-- Size: Declines All Securities
finra_trace_btds_dfi_v2_1.declines_all_securities.size = 6

-- Display: Declines All Securities
finra_trace_btds_dfi_v2_1.declines_all_securities.display = function(value)
  return "Declines All Securities: "..value
end

-- Dissect: Declines All Securities
finra_trace_btds_dfi_v2_1.declines_all_securities.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.declines_all_securities.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.declines_all_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.declines_all_securities, range, value, display)

  return offset + length, value
end

-- Declines Convertibles
finra_trace_btds_dfi_v2_1.declines_convertibles = {}

-- Size: Declines Convertibles
finra_trace_btds_dfi_v2_1.declines_convertibles.size = 6

-- Display: Declines Convertibles
finra_trace_btds_dfi_v2_1.declines_convertibles.display = function(value)
  return "Declines Convertibles: "..value
end

-- Dissect: Declines Convertibles
finra_trace_btds_dfi_v2_1.declines_convertibles.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.declines_convertibles.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.declines_convertibles.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.declines_convertibles, range, value, display)

  return offset + length, value
end

-- Declines High Yield
finra_trace_btds_dfi_v2_1.declines_high_yield = {}

-- Size: Declines High Yield
finra_trace_btds_dfi_v2_1.declines_high_yield.size = 6

-- Display: Declines High Yield
finra_trace_btds_dfi_v2_1.declines_high_yield.display = function(value)
  return "Declines High Yield: "..value
end

-- Dissect: Declines High Yield
finra_trace_btds_dfi_v2_1.declines_high_yield.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.declines_high_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.declines_high_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.declines_high_yield, range, value, display)

  return offset + length, value
end

-- Declines Investment Grade
finra_trace_btds_dfi_v2_1.declines_investment_grade = {}

-- Size: Declines Investment Grade
finra_trace_btds_dfi_v2_1.declines_investment_grade.size = 6

-- Display: Declines Investment Grade
finra_trace_btds_dfi_v2_1.declines_investment_grade.display = function(value)
  return "Declines Investment Grade: "..value
end

-- Dissect: Declines Investment Grade
finra_trace_btds_dfi_v2_1.declines_investment_grade.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.declines_investment_grade.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.declines_investment_grade.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.declines_investment_grade, range, value, display)

  return offset + length, value
end

-- Fifty Two Week High All Securities
finra_trace_btds_dfi_v2_1.fifty_two_week_high_all_securities = {}

-- Size: Fifty Two Week High All Securities
finra_trace_btds_dfi_v2_1.fifty_two_week_high_all_securities.size = 6

-- Display: Fifty Two Week High All Securities
finra_trace_btds_dfi_v2_1.fifty_two_week_high_all_securities.display = function(value)
  return "Fifty Two Week High All Securities: "..value
end

-- Dissect: Fifty Two Week High All Securities
finra_trace_btds_dfi_v2_1.fifty_two_week_high_all_securities.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.fifty_two_week_high_all_securities.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.fifty_two_week_high_all_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.fifty_two_week_high_all_securities, range, value, display)

  return offset + length, value
end

-- Fifty Two Week High Convertibles
finra_trace_btds_dfi_v2_1.fifty_two_week_high_convertibles = {}

-- Size: Fifty Two Week High Convertibles
finra_trace_btds_dfi_v2_1.fifty_two_week_high_convertibles.size = 6

-- Display: Fifty Two Week High Convertibles
finra_trace_btds_dfi_v2_1.fifty_two_week_high_convertibles.display = function(value)
  return "Fifty Two Week High Convertibles: "..value
end

-- Dissect: Fifty Two Week High Convertibles
finra_trace_btds_dfi_v2_1.fifty_two_week_high_convertibles.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.fifty_two_week_high_convertibles.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.fifty_two_week_high_convertibles.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.fifty_two_week_high_convertibles, range, value, display)

  return offset + length, value
end

-- Fifty Two Week High High Yield
finra_trace_btds_dfi_v2_1.fifty_two_week_high_high_yield = {}

-- Size: Fifty Two Week High High Yield
finra_trace_btds_dfi_v2_1.fifty_two_week_high_high_yield.size = 6

-- Display: Fifty Two Week High High Yield
finra_trace_btds_dfi_v2_1.fifty_two_week_high_high_yield.display = function(value)
  return "Fifty Two Week High High Yield: "..value
end

-- Dissect: Fifty Two Week High High Yield
finra_trace_btds_dfi_v2_1.fifty_two_week_high_high_yield.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.fifty_two_week_high_high_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.fifty_two_week_high_high_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.fifty_two_week_high_high_yield, range, value, display)

  return offset + length, value
end

-- Fifty Two Week High Investment Grade
finra_trace_btds_dfi_v2_1.fifty_two_week_high_investment_grade = {}

-- Size: Fifty Two Week High Investment Grade
finra_trace_btds_dfi_v2_1.fifty_two_week_high_investment_grade.size = 6

-- Display: Fifty Two Week High Investment Grade
finra_trace_btds_dfi_v2_1.fifty_two_week_high_investment_grade.display = function(value)
  return "Fifty Two Week High Investment Grade: "..value
end

-- Dissect: Fifty Two Week High Investment Grade
finra_trace_btds_dfi_v2_1.fifty_two_week_high_investment_grade.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.fifty_two_week_high_investment_grade.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.fifty_two_week_high_investment_grade.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.fifty_two_week_high_investment_grade, range, value, display)

  return offset + length, value
end

-- Fifty Two Week Low All Securities
finra_trace_btds_dfi_v2_1.fifty_two_week_low_all_securities = {}

-- Size: Fifty Two Week Low All Securities
finra_trace_btds_dfi_v2_1.fifty_two_week_low_all_securities.size = 6

-- Display: Fifty Two Week Low All Securities
finra_trace_btds_dfi_v2_1.fifty_two_week_low_all_securities.display = function(value)
  return "Fifty Two Week Low All Securities: "..value
end

-- Dissect: Fifty Two Week Low All Securities
finra_trace_btds_dfi_v2_1.fifty_two_week_low_all_securities.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.fifty_two_week_low_all_securities.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.fifty_two_week_low_all_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.fifty_two_week_low_all_securities, range, value, display)

  return offset + length, value
end

-- Fifty Two Week Low Convertibles
finra_trace_btds_dfi_v2_1.fifty_two_week_low_convertibles = {}

-- Size: Fifty Two Week Low Convertibles
finra_trace_btds_dfi_v2_1.fifty_two_week_low_convertibles.size = 6

-- Display: Fifty Two Week Low Convertibles
finra_trace_btds_dfi_v2_1.fifty_two_week_low_convertibles.display = function(value)
  return "Fifty Two Week Low Convertibles: "..value
end

-- Dissect: Fifty Two Week Low Convertibles
finra_trace_btds_dfi_v2_1.fifty_two_week_low_convertibles.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.fifty_two_week_low_convertibles.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.fifty_two_week_low_convertibles.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.fifty_two_week_low_convertibles, range, value, display)

  return offset + length, value
end

-- Fifty Two Week Low High Yield
finra_trace_btds_dfi_v2_1.fifty_two_week_low_high_yield = {}

-- Size: Fifty Two Week Low High Yield
finra_trace_btds_dfi_v2_1.fifty_two_week_low_high_yield.size = 6

-- Display: Fifty Two Week Low High Yield
finra_trace_btds_dfi_v2_1.fifty_two_week_low_high_yield.display = function(value)
  return "Fifty Two Week Low High Yield: "..value
end

-- Dissect: Fifty Two Week Low High Yield
finra_trace_btds_dfi_v2_1.fifty_two_week_low_high_yield.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.fifty_two_week_low_high_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.fifty_two_week_low_high_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.fifty_two_week_low_high_yield, range, value, display)

  return offset + length, value
end

-- Fifty Two Week Low Investment Grade
finra_trace_btds_dfi_v2_1.fifty_two_week_low_investment_grade = {}

-- Size: Fifty Two Week Low Investment Grade
finra_trace_btds_dfi_v2_1.fifty_two_week_low_investment_grade.size = 6

-- Display: Fifty Two Week Low Investment Grade
finra_trace_btds_dfi_v2_1.fifty_two_week_low_investment_grade.display = function(value)
  return "Fifty Two Week Low Investment Grade: "..value
end

-- Dissect: Fifty Two Week Low Investment Grade
finra_trace_btds_dfi_v2_1.fifty_two_week_low_investment_grade.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.fifty_two_week_low_investment_grade.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.fifty_two_week_low_investment_grade.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.fifty_two_week_low_investment_grade, range, value, display)

  return offset + length, value
end

-- Future Use
finra_trace_btds_dfi_v2_1.future_use = {}

-- Size: Future Use
finra_trace_btds_dfi_v2_1.future_use.size = 2

-- Display: Future Use
finra_trace_btds_dfi_v2_1.future_use.display = function(value)
  return "Future Use: "..value
end

-- Dissect: Future Use
finra_trace_btds_dfi_v2_1.future_use.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.future_use.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = finra_trace_btds_dfi_v2_1.future_use.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.future_use, range, value, display)

  return offset + length, value
end

-- Halt Reason
finra_trace_btds_dfi_v2_1.halt_reason = {}

-- Size: Halt Reason
finra_trace_btds_dfi_v2_1.halt_reason.size = 4

-- Display: Halt Reason
finra_trace_btds_dfi_v2_1.halt_reason.display = function(value)
  if value == "T.1" then
    return "Halt Reason: Halt News Pending (T.1)"
  end
  if value == "T.2" then
    return "Halt Reason: Halt News Released (T.2)"
  end
  if value == "T.3" then
    return "Halt Reason: Halt News And Resumption Times (T.3)"
  end
  if value == "T.12" then
    return "Halt Reason: Halt Additional Information Requested By Finra (T.12)"
  end
  if value == "H.10" then
    return "Halt Reason: Halt Sec Trading Suspension (H.10)"
  end
  if value == "H.11" then
    return "Halt Reason: Halt Regulatory Concerns (H.11)"
  end

  return "Halt Reason: Unknown("..value..")"
end

-- Dissect: Halt Reason
finra_trace_btds_dfi_v2_1.halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.halt_reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = finra_trace_btds_dfi_v2_1.halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.halt_reason, range, value, display)

  return offset + length, value
end

-- High Price
finra_trace_btds_dfi_v2_1.high_price = {}

-- Size: High Price
finra_trace_btds_dfi_v2_1.high_price.size = 11

-- Display: High Price
finra_trace_btds_dfi_v2_1.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
finra_trace_btds_dfi_v2_1.high_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.high_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.high_price, range, value, display)

  return offset + length, value
end

-- High Yield
finra_trace_btds_dfi_v2_1.high_yield = {}

-- Size: High Yield
finra_trace_btds_dfi_v2_1.high_yield.size = 13

-- Display: High Yield
finra_trace_btds_dfi_v2_1.high_yield.display = function(value)
  return "High Yield: "..value
end

-- Dissect: High Yield
finra_trace_btds_dfi_v2_1.high_yield.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.high_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.high_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.high_yield, range, value, display)

  return offset + length, value
end

-- High Yield Direction
finra_trace_btds_dfi_v2_1.high_yield_direction = {}

-- Size: High Yield Direction
finra_trace_btds_dfi_v2_1.high_yield_direction.size = 1

-- Display: High Yield Direction
finra_trace_btds_dfi_v2_1.high_yield_direction.display = function(value)
  if value == "-" then
    return "High Yield Direction: Negative Yield (-)"
  end
  if value == " " then
    return "High Yield Direction: Positive Or Zero Yield (<whitespace>)"
  end

  return "High Yield Direction: Unknown("..value..")"
end

-- Dissect: High Yield Direction
finra_trace_btds_dfi_v2_1.high_yield_direction.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.high_yield_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.high_yield_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.high_yield_direction, range, value, display)

  return offset + length, value
end

-- Hour
finra_trace_btds_dfi_v2_1.hour = {}

-- Size: Hour
finra_trace_btds_dfi_v2_1.hour.size = 2

-- Display: Hour
finra_trace_btds_dfi_v2_1.hour.display = function(value)
  return "Hour: "..value
end

-- Dissect: Hour
finra_trace_btds_dfi_v2_1.hour.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.hour.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.hour.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.hour, range, value, display)

  return offset + length, value
end

-- Issuer
finra_trace_btds_dfi_v2_1.issuer = {}

-- Size: Issuer
finra_trace_btds_dfi_v2_1.issuer.size = 30

-- Display: Issuer
finra_trace_btds_dfi_v2_1.issuer.display = function(value)
  return "Issuer: "..value
end

-- Dissect: Issuer
finra_trace_btds_dfi_v2_1.issuer.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.issuer.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = finra_trace_btds_dfi_v2_1.issuer.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.issuer, range, value, display)

  return offset + length, value
end

-- Last Sale Price
finra_trace_btds_dfi_v2_1.last_sale_price = {}

-- Size: Last Sale Price
finra_trace_btds_dfi_v2_1.last_sale_price.size = 11

-- Display: Last Sale Price
finra_trace_btds_dfi_v2_1.last_sale_price.display = function(value)
  return "Last Sale Price: "..value
end

-- Dissect: Last Sale Price
finra_trace_btds_dfi_v2_1.last_sale_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.last_sale_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.last_sale_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.last_sale_price, range, value, display)

  return offset + length, value
end

-- Last Sale Yield
finra_trace_btds_dfi_v2_1.last_sale_yield = {}

-- Size: Last Sale Yield
finra_trace_btds_dfi_v2_1.last_sale_yield.size = 13

-- Display: Last Sale Yield
finra_trace_btds_dfi_v2_1.last_sale_yield.display = function(value)
  return "Last Sale Yield: "..value
end

-- Dissect: Last Sale Yield
finra_trace_btds_dfi_v2_1.last_sale_yield.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.last_sale_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.last_sale_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.last_sale_yield, range, value, display)

  return offset + length, value
end

-- Last Sale Yield Direction
finra_trace_btds_dfi_v2_1.last_sale_yield_direction = {}

-- Size: Last Sale Yield Direction
finra_trace_btds_dfi_v2_1.last_sale_yield_direction.size = 1

-- Display: Last Sale Yield Direction
finra_trace_btds_dfi_v2_1.last_sale_yield_direction.display = function(value)
  if value == "-" then
    return "Last Sale Yield Direction: Negative Yield (-)"
  end
  if value == " " then
    return "Last Sale Yield Direction: Positive Or Zero Yield (<whitespace>)"
  end

  return "Last Sale Yield Direction: Unknown("..value..")"
end

-- Dissect: Last Sale Yield Direction
finra_trace_btds_dfi_v2_1.last_sale_yield_direction.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.last_sale_yield_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.last_sale_yield_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.last_sale_yield_direction, range, value, display)

  return offset + length, value
end

-- Length
finra_trace_btds_dfi_v2_1.length = {}

-- Size: Length
finra_trace_btds_dfi_v2_1.length.size = 2

-- Display: Length
finra_trace_btds_dfi_v2_1.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
finra_trace_btds_dfi_v2_1.length.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = finra_trace_btds_dfi_v2_1.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.length, range, value, display)

  return offset + length, value
end

-- Low Price
finra_trace_btds_dfi_v2_1.low_price = {}

-- Size: Low Price
finra_trace_btds_dfi_v2_1.low_price.size = 11

-- Display: Low Price
finra_trace_btds_dfi_v2_1.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
finra_trace_btds_dfi_v2_1.low_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.low_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.low_price, range, value, display)

  return offset + length, value
end

-- Low Yield
finra_trace_btds_dfi_v2_1.low_yield = {}

-- Size: Low Yield
finra_trace_btds_dfi_v2_1.low_yield.size = 13

-- Display: Low Yield
finra_trace_btds_dfi_v2_1.low_yield.display = function(value)
  return "Low Yield: "..value
end

-- Dissect: Low Yield
finra_trace_btds_dfi_v2_1.low_yield.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.low_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.low_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.low_yield, range, value, display)

  return offset + length, value
end

-- Low Yield Direction
finra_trace_btds_dfi_v2_1.low_yield_direction = {}

-- Size: Low Yield Direction
finra_trace_btds_dfi_v2_1.low_yield_direction.size = 1

-- Display: Low Yield Direction
finra_trace_btds_dfi_v2_1.low_yield_direction.display = function(value)
  if value == "-" then
    return "Low Yield Direction: Negative Yield (-)"
  end
  if value == " " then
    return "Low Yield Direction: Positive Or Zero Yield (<whitespace>)"
  end

  return "Low Yield Direction: Unknown("..value..")"
end

-- Dissect: Low Yield Direction
finra_trace_btds_dfi_v2_1.low_yield_direction.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.low_yield_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.low_yield_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.low_yield_direction, range, value, display)

  return offset + length, value
end

-- Market Center Originator Id
finra_trace_btds_dfi_v2_1.market_center_originator_id = {}

-- Size: Market Center Originator Id
finra_trace_btds_dfi_v2_1.market_center_originator_id.size = 1

-- Display: Market Center Originator Id
finra_trace_btds_dfi_v2_1.market_center_originator_id.display = function(value)
  if value == "O" then
    return "Market Center Originator Id: Over The Counter (O)"
  end

  return "Market Center Originator Id: Unknown("..value..")"
end

-- Dissect: Market Center Originator Id
finra_trace_btds_dfi_v2_1.market_center_originator_id.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.market_center_originator_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.market_center_originator_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.market_center_originator_id, range, value, display)

  return offset + length, value
end

-- Message Category
finra_trace_btds_dfi_v2_1.message_category = {}

-- Size: Message Category
finra_trace_btds_dfi_v2_1.message_category.size = 1

-- Display: Message Category
finra_trace_btds_dfi_v2_1.message_category.display = function(value)
  if value == "T" then
    return "Message Category: Trade (T)"
  end
  if value == "A" then
    return "Message Category: Administrative (A)"
  end
  if value == "C" then
    return "Message Category: Control (C)"
  end

  return "Message Category: Unknown("..value..")"
end

-- Dissect: Message Category
finra_trace_btds_dfi_v2_1.message_category.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.message_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.message_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.message_category, range, value, display)

  return offset + length, value
end

-- Minute
finra_trace_btds_dfi_v2_1.minute = {}

-- Size: Minute
finra_trace_btds_dfi_v2_1.minute.size = 2

-- Display: Minute
finra_trace_btds_dfi_v2_1.minute.display = function(value)
  return "Minute: "..value
end

-- Dissect: Minute
finra_trace_btds_dfi_v2_1.minute.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.minute.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.minute.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.minute, range, value, display)

  return offset + length, value
end

-- Month
finra_trace_btds_dfi_v2_1.month = {}

-- Size: Month
finra_trace_btds_dfi_v2_1.month.size = 2

-- Display: Month
finra_trace_btds_dfi_v2_1.month.display = function(value)
  return "Month: "..value
end

-- Dissect: Month
finra_trace_btds_dfi_v2_1.month.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.month.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.month.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.month, range, value, display)

  return offset + length, value
end

-- Original Trade Identifier
finra_trace_btds_dfi_v2_1.original_trade_identifier = {}

-- Size: Original Trade Identifier
finra_trace_btds_dfi_v2_1.original_trade_identifier.size = 7

-- Display: Original Trade Identifier
finra_trace_btds_dfi_v2_1.original_trade_identifier.display = function(value)
  return "Original Trade Identifier: "..value
end

-- Dissect: Original Trade Identifier
finra_trace_btds_dfi_v2_1.original_trade_identifier.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.original_trade_identifier.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.original_trade_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.original_trade_identifier, range, value, display)

  return offset + length, value
end

-- Price
finra_trace_btds_dfi_v2_1.price = {}

-- Size: Price
finra_trace_btds_dfi_v2_1.price.size = 11

-- Display: Price
finra_trace_btds_dfi_v2_1.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
finra_trace_btds_dfi_v2_1.price.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
finra_trace_btds_dfi_v2_1.quantity = {}

-- Size: Quantity
finra_trace_btds_dfi_v2_1.quantity.size = 14

-- Display: Quantity
finra_trace_btds_dfi_v2_1.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
finra_trace_btds_dfi_v2_1.quantity.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.quantity.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = finra_trace_btds_dfi_v2_1.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quantity Indicator
finra_trace_btds_dfi_v2_1.quantity_indicator = {}

-- Size: Quantity Indicator
finra_trace_btds_dfi_v2_1.quantity_indicator.size = 1

-- Display: Quantity Indicator
finra_trace_btds_dfi_v2_1.quantity_indicator.display = function(value)
  if value == "A" then
    return "Quantity Indicator: Actual (A)"
  end
  if value == "E" then
    return "Quantity Indicator: Estimated (E)"
  end

  return "Quantity Indicator: Unknown("..value..")"
end

-- Dissect: Quantity Indicator
finra_trace_btds_dfi_v2_1.quantity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.quantity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.quantity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.quantity_indicator, range, value, display)

  return offset + length, value
end

-- Remuneration
finra_trace_btds_dfi_v2_1.remuneration = {}

-- Size: Remuneration
finra_trace_btds_dfi_v2_1.remuneration.size = 1

-- Display: Remuneration
finra_trace_btds_dfi_v2_1.remuneration.display = function(value)
  if value == "C" then
    return "Remuneration: Commission Is Included In The Price (C)"
  end
  if value == "M" then
    return "Remuneration: A Markup Or Markdown Is Included In The Price (M)"
  end
  if value == "N" then
    return "Remuneration: No Commission Or Markup Markdown Is Included In The Price (N)"
  end
  if value == " " then
    return "Remuneration: No Value Assigned On Inter Dealer Trades (<whitespace>)"
  end

  return "Remuneration: Unknown("..value..")"
end

-- Dissect: Remuneration
finra_trace_btds_dfi_v2_1.remuneration.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.remuneration.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.remuneration.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.remuneration, range, value, display)

  return offset + length, value
end

-- Report Function
finra_trace_btds_dfi_v2_1.report_function = {}

-- Size: Report Function
finra_trace_btds_dfi_v2_1.report_function.size = 1

-- Display: Report Function
finra_trace_btds_dfi_v2_1.report_function.display = function(value)
  if value == "C" then
    return "Report Function: Cancel (C)"
  end
  if value == "E" then
    return "Report Function: Error (E)"
  end
  if value == "N" then
    return "Report Function: Correction (N)"
  end

  return "Report Function: Unknown("..value..")"
end

-- Dissect: Report Function
finra_trace_btds_dfi_v2_1.report_function.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.report_function.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.report_function.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.report_function, range, value, display)

  return offset + length, value
end

-- Reporting Party Type
finra_trace_btds_dfi_v2_1.reporting_party_type = {}

-- Size: Reporting Party Type
finra_trace_btds_dfi_v2_1.reporting_party_type.size = 1

-- Display: Reporting Party Type
finra_trace_btds_dfi_v2_1.reporting_party_type.display = function(value)
  if value == "D" then
    return "Reporting Party Type: Reporting Party Is A Broker Dealer (D)"
  end
  if value == "T" then
    return "Reporting Party Type: Reporting Party Is An Alternative Trading System Ats (T)"
  end

  return "Reporting Party Type: Unknown("..value..")"
end

-- Dissect: Reporting Party Type
finra_trace_btds_dfi_v2_1.reporting_party_type.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.reporting_party_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.reporting_party_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.reporting_party_type, range, value, display)

  return offset + length, value
end

-- Sale Condition 3
finra_trace_btds_dfi_v2_1.sale_condition_3 = {}

-- Size: Sale Condition 3
finra_trace_btds_dfi_v2_1.sale_condition_3.size = 1

-- Display: Sale Condition 3
finra_trace_btds_dfi_v2_1.sale_condition_3.display = function(value)
  if value == " " then
    return "Sale Condition 3: No Special Sale Condition (<whitespace>)"
  end
  if value == "Z" then
    return "Sale Condition 3: Trade Reported Late Out Of Sequence (Z)"
  end
  if value == "T" then
    return "Sale Condition 3: Trade Reported After Market Hours (T)"
  end
  if value == "U" then
    return "Sale Condition 3: Trade Reported Late After Market Hours (U)"
  end

  return "Sale Condition 3: Unknown("..value..")"
end

-- Dissect: Sale Condition 3
finra_trace_btds_dfi_v2_1.sale_condition_3.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.sale_condition_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.sale_condition_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.sale_condition_3, range, value, display)

  return offset + length, value
end

-- Sale Condition 4
finra_trace_btds_dfi_v2_1.sale_condition_4 = {}

-- Size: Sale Condition 4
finra_trace_btds_dfi_v2_1.sale_condition_4.size = 1

-- Display: Sale Condition 4
finra_trace_btds_dfi_v2_1.sale_condition_4.display = function(value)
  if value == "W" then
    return "Sale Condition 4: Weighted Average Price (W)"
  end
  if value == "P" then
    return "Sale Condition 4: Portfolio Trade (P)"
  end
  if value == " " then
    return "Sale Condition 4: No Second Modifier Applicable (<whitespace>)"
  end

  return "Sale Condition 4: Unknown("..value..")"
end

-- Dissect: Sale Condition 4
finra_trace_btds_dfi_v2_1.sale_condition_4.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.sale_condition_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.sale_condition_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.sale_condition_4, range, value, display)

  return offset + length, value
end

-- Second
finra_trace_btds_dfi_v2_1.second = {}

-- Size: Second
finra_trace_btds_dfi_v2_1.second.size = 2

-- Display: Second
finra_trace_btds_dfi_v2_1.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
finra_trace_btds_dfi_v2_1.second.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.second.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.second, range, value, display)

  return offset + length, value
end

-- Sequence
finra_trace_btds_dfi_v2_1.sequence = {}

-- Size: Sequence
finra_trace_btds_dfi_v2_1.sequence.size = 8

-- Display: Sequence
finra_trace_btds_dfi_v2_1.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
finra_trace_btds_dfi_v2_1.sequence.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.sequence.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = finra_trace_btds_dfi_v2_1.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session
finra_trace_btds_dfi_v2_1.session = {}

-- Size: Session
finra_trace_btds_dfi_v2_1.session.size = 10

-- Display: Session
finra_trace_btds_dfi_v2_1.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
finra_trace_btds_dfi_v2_1.session.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.session, range, value, display)

  return offset + length, value
end

-- Side
finra_trace_btds_dfi_v2_1.side = {}

-- Size: Side
finra_trace_btds_dfi_v2_1.side.size = 1

-- Display: Side
finra_trace_btds_dfi_v2_1.side.display = function(value)
  if value == "B" then
    return "Side: Reporting Party Bought From Contra Party (B)"
  end
  if value == "S" then
    return "Side: Reporting Party Sold To Contra Party (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
finra_trace_btds_dfi_v2_1.side.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.side, range, value, display)

  return offset + length, value
end

-- Special Price Indicator
finra_trace_btds_dfi_v2_1.special_price_indicator = {}

-- Size: Special Price Indicator
finra_trace_btds_dfi_v2_1.special_price_indicator.size = 1

-- Display: Special Price Indicator
finra_trace_btds_dfi_v2_1.special_price_indicator.display = function(value)
  if value == "Y" then
    return "Special Price Indicator: Special Price Trade (Y)"
  end
  if value == " " then
    return "Special Price Indicator: Not A Special Price Trade (<whitespace>)"
  end

  return "Special Price Indicator: Unknown("..value..")"
end

-- Dissect: Special Price Indicator
finra_trace_btds_dfi_v2_1.special_price_indicator.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.special_price_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.special_price_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.special_price_indicator, range, value, display)

  return offset + length, value
end

-- Sub Product Type
finra_trace_btds_dfi_v2_1.sub_product_type = {}

-- Size: Sub Product Type
finra_trace_btds_dfi_v2_1.sub_product_type.size = 5

-- Display: Sub Product Type
finra_trace_btds_dfi_v2_1.sub_product_type.display = function(value)
  if value == "CORP" then
    return "Sub Product Type: Corporate Bond (CORP)"
  end
  if value == "ELN" then
    return "Sub Product Type: Equity Linked Note (ELN)"
  end
  if value == "CHRC" then
    return "Sub Product Type: Church Bond (CHRC)"
  end

  return "Sub Product Type: Unknown("..value..")"
end

-- Dissect: Sub Product Type
finra_trace_btds_dfi_v2_1.sub_product_type.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.sub_product_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = finra_trace_btds_dfi_v2_1.sub_product_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.sub_product_type, range, value, display)

  return offset + length, value
end

-- Symbol
finra_trace_btds_dfi_v2_1.symbol = {}

-- Size: Symbol
finra_trace_btds_dfi_v2_1.symbol.size = 14

-- Display: Symbol
finra_trace_btds_dfi_v2_1.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
finra_trace_btds_dfi_v2_1.symbol.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = finra_trace_btds_dfi_v2_1.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.symbol, range, value, display)

  return offset + length, value
end

-- Text
finra_trace_btds_dfi_v2_1.text = {}

-- Display: Text
finra_trace_btds_dfi_v2_1.text.display = function(value)
  return "Text: "..value
end

-- Dissect runtime sized field: Text
finra_trace_btds_dfi_v2_1.text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.text.display(value, packet, parent, size)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.text, range, value, display)

  return offset + size, value
end

-- Total Number Of Transactions Affiliate Buy
finra_trace_btds_dfi_v2_1.total_number_of_transactions_affiliate_buy = {}

-- Size: Total Number Of Transactions Affiliate Buy
finra_trace_btds_dfi_v2_1.total_number_of_transactions_affiliate_buy.size = 6

-- Display: Total Number Of Transactions Affiliate Buy
finra_trace_btds_dfi_v2_1.total_number_of_transactions_affiliate_buy.display = function(value)
  return "Total Number Of Transactions Affiliate Buy: "..value
end

-- Dissect: Total Number Of Transactions Affiliate Buy
finra_trace_btds_dfi_v2_1.total_number_of_transactions_affiliate_buy.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_number_of_transactions_affiliate_buy.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_number_of_transactions_affiliate_buy.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_number_of_transactions_affiliate_buy, range, value, display)

  return offset + length, value
end

-- Total Number Of Transactions Affiliate Sell
finra_trace_btds_dfi_v2_1.total_number_of_transactions_affiliate_sell = {}

-- Size: Total Number Of Transactions Affiliate Sell
finra_trace_btds_dfi_v2_1.total_number_of_transactions_affiliate_sell.size = 6

-- Display: Total Number Of Transactions Affiliate Sell
finra_trace_btds_dfi_v2_1.total_number_of_transactions_affiliate_sell.display = function(value)
  return "Total Number Of Transactions Affiliate Sell: "..value
end

-- Dissect: Total Number Of Transactions Affiliate Sell
finra_trace_btds_dfi_v2_1.total_number_of_transactions_affiliate_sell.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_number_of_transactions_affiliate_sell.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_number_of_transactions_affiliate_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_number_of_transactions_affiliate_sell, range, value, display)

  return offset + length, value
end

-- Total Number Of Transactions All Securities
finra_trace_btds_dfi_v2_1.total_number_of_transactions_all_securities = {}

-- Size: Total Number Of Transactions All Securities
finra_trace_btds_dfi_v2_1.total_number_of_transactions_all_securities.size = 6

-- Display: Total Number Of Transactions All Securities
finra_trace_btds_dfi_v2_1.total_number_of_transactions_all_securities.display = function(value)
  return "Total Number Of Transactions All Securities: "..value
end

-- Dissect: Total Number Of Transactions All Securities
finra_trace_btds_dfi_v2_1.total_number_of_transactions_all_securities.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_number_of_transactions_all_securities.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_number_of_transactions_all_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_number_of_transactions_all_securities, range, value, display)

  return offset + length, value
end

-- Total Number Of Transactions Customer Buy
finra_trace_btds_dfi_v2_1.total_number_of_transactions_customer_buy = {}

-- Size: Total Number Of Transactions Customer Buy
finra_trace_btds_dfi_v2_1.total_number_of_transactions_customer_buy.size = 6

-- Display: Total Number Of Transactions Customer Buy
finra_trace_btds_dfi_v2_1.total_number_of_transactions_customer_buy.display = function(value)
  return "Total Number Of Transactions Customer Buy: "..value
end

-- Dissect: Total Number Of Transactions Customer Buy
finra_trace_btds_dfi_v2_1.total_number_of_transactions_customer_buy.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_number_of_transactions_customer_buy.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_number_of_transactions_customer_buy.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_number_of_transactions_customer_buy, range, value, display)

  return offset + length, value
end

-- Total Number Of Transactions Customer Sell
finra_trace_btds_dfi_v2_1.total_number_of_transactions_customer_sell = {}

-- Size: Total Number Of Transactions Customer Sell
finra_trace_btds_dfi_v2_1.total_number_of_transactions_customer_sell.size = 6

-- Display: Total Number Of Transactions Customer Sell
finra_trace_btds_dfi_v2_1.total_number_of_transactions_customer_sell.display = function(value)
  return "Total Number Of Transactions Customer Sell: "..value
end

-- Dissect: Total Number Of Transactions Customer Sell
finra_trace_btds_dfi_v2_1.total_number_of_transactions_customer_sell.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_number_of_transactions_customer_sell.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_number_of_transactions_customer_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_number_of_transactions_customer_sell, range, value, display)

  return offset + length, value
end

-- Total Number Of Transactions Inter Dealer
finra_trace_btds_dfi_v2_1.total_number_of_transactions_inter_dealer = {}

-- Size: Total Number Of Transactions Inter Dealer
finra_trace_btds_dfi_v2_1.total_number_of_transactions_inter_dealer.size = 6

-- Display: Total Number Of Transactions Inter Dealer
finra_trace_btds_dfi_v2_1.total_number_of_transactions_inter_dealer.display = function(value)
  return "Total Number Of Transactions Inter Dealer: "..value
end

-- Dissect: Total Number Of Transactions Inter Dealer
finra_trace_btds_dfi_v2_1.total_number_of_transactions_inter_dealer.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_number_of_transactions_inter_dealer.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_number_of_transactions_inter_dealer.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_number_of_transactions_inter_dealer, range, value, display)

  return offset + length, value
end

-- Total Securities Traded Affiliate Buy
finra_trace_btds_dfi_v2_1.total_securities_traded_affiliate_buy = {}

-- Size: Total Securities Traded Affiliate Buy
finra_trace_btds_dfi_v2_1.total_securities_traded_affiliate_buy.size = 6

-- Display: Total Securities Traded Affiliate Buy
finra_trace_btds_dfi_v2_1.total_securities_traded_affiliate_buy.display = function(value)
  return "Total Securities Traded Affiliate Buy: "..value
end

-- Dissect: Total Securities Traded Affiliate Buy
finra_trace_btds_dfi_v2_1.total_securities_traded_affiliate_buy.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_securities_traded_affiliate_buy.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_securities_traded_affiliate_buy.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_securities_traded_affiliate_buy, range, value, display)

  return offset + length, value
end

-- Total Securities Traded Affiliate Sell
finra_trace_btds_dfi_v2_1.total_securities_traded_affiliate_sell = {}

-- Size: Total Securities Traded Affiliate Sell
finra_trace_btds_dfi_v2_1.total_securities_traded_affiliate_sell.size = 6

-- Display: Total Securities Traded Affiliate Sell
finra_trace_btds_dfi_v2_1.total_securities_traded_affiliate_sell.display = function(value)
  return "Total Securities Traded Affiliate Sell: "..value
end

-- Dissect: Total Securities Traded Affiliate Sell
finra_trace_btds_dfi_v2_1.total_securities_traded_affiliate_sell.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_securities_traded_affiliate_sell.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_securities_traded_affiliate_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_securities_traded_affiliate_sell, range, value, display)

  return offset + length, value
end

-- Total Securities Traded All Securities
finra_trace_btds_dfi_v2_1.total_securities_traded_all_securities = {}

-- Size: Total Securities Traded All Securities
finra_trace_btds_dfi_v2_1.total_securities_traded_all_securities.size = 6

-- Display: Total Securities Traded All Securities
finra_trace_btds_dfi_v2_1.total_securities_traded_all_securities.display = function(value)
  return "Total Securities Traded All Securities: "..value
end

-- Dissect: Total Securities Traded All Securities
finra_trace_btds_dfi_v2_1.total_securities_traded_all_securities.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_securities_traded_all_securities.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_securities_traded_all_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_securities_traded_all_securities, range, value, display)

  return offset + length, value
end

-- Total Securities Traded Convertibles
finra_trace_btds_dfi_v2_1.total_securities_traded_convertibles = {}

-- Size: Total Securities Traded Convertibles
finra_trace_btds_dfi_v2_1.total_securities_traded_convertibles.size = 6

-- Display: Total Securities Traded Convertibles
finra_trace_btds_dfi_v2_1.total_securities_traded_convertibles.display = function(value)
  return "Total Securities Traded Convertibles: "..value
end

-- Dissect: Total Securities Traded Convertibles
finra_trace_btds_dfi_v2_1.total_securities_traded_convertibles.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_securities_traded_convertibles.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_securities_traded_convertibles.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_securities_traded_convertibles, range, value, display)

  return offset + length, value
end

-- Total Securities Traded Customer Buy
finra_trace_btds_dfi_v2_1.total_securities_traded_customer_buy = {}

-- Size: Total Securities Traded Customer Buy
finra_trace_btds_dfi_v2_1.total_securities_traded_customer_buy.size = 6

-- Display: Total Securities Traded Customer Buy
finra_trace_btds_dfi_v2_1.total_securities_traded_customer_buy.display = function(value)
  return "Total Securities Traded Customer Buy: "..value
end

-- Dissect: Total Securities Traded Customer Buy
finra_trace_btds_dfi_v2_1.total_securities_traded_customer_buy.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_securities_traded_customer_buy.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_securities_traded_customer_buy.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_securities_traded_customer_buy, range, value, display)

  return offset + length, value
end

-- Total Securities Traded Customer Sell
finra_trace_btds_dfi_v2_1.total_securities_traded_customer_sell = {}

-- Size: Total Securities Traded Customer Sell
finra_trace_btds_dfi_v2_1.total_securities_traded_customer_sell.size = 6

-- Display: Total Securities Traded Customer Sell
finra_trace_btds_dfi_v2_1.total_securities_traded_customer_sell.display = function(value)
  return "Total Securities Traded Customer Sell: "..value
end

-- Dissect: Total Securities Traded Customer Sell
finra_trace_btds_dfi_v2_1.total_securities_traded_customer_sell.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_securities_traded_customer_sell.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_securities_traded_customer_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_securities_traded_customer_sell, range, value, display)

  return offset + length, value
end

-- Total Securities Traded High Yield
finra_trace_btds_dfi_v2_1.total_securities_traded_high_yield = {}

-- Size: Total Securities Traded High Yield
finra_trace_btds_dfi_v2_1.total_securities_traded_high_yield.size = 6

-- Display: Total Securities Traded High Yield
finra_trace_btds_dfi_v2_1.total_securities_traded_high_yield.display = function(value)
  return "Total Securities Traded High Yield: "..value
end

-- Dissect: Total Securities Traded High Yield
finra_trace_btds_dfi_v2_1.total_securities_traded_high_yield.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_securities_traded_high_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_securities_traded_high_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_securities_traded_high_yield, range, value, display)

  return offset + length, value
end

-- Total Securities Traded Inter Dealer
finra_trace_btds_dfi_v2_1.total_securities_traded_inter_dealer = {}

-- Size: Total Securities Traded Inter Dealer
finra_trace_btds_dfi_v2_1.total_securities_traded_inter_dealer.size = 6

-- Display: Total Securities Traded Inter Dealer
finra_trace_btds_dfi_v2_1.total_securities_traded_inter_dealer.display = function(value)
  return "Total Securities Traded Inter Dealer: "..value
end

-- Dissect: Total Securities Traded Inter Dealer
finra_trace_btds_dfi_v2_1.total_securities_traded_inter_dealer.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_securities_traded_inter_dealer.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_securities_traded_inter_dealer.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_securities_traded_inter_dealer, range, value, display)

  return offset + length, value
end

-- Total Securities Traded Investment Grade
finra_trace_btds_dfi_v2_1.total_securities_traded_investment_grade = {}

-- Size: Total Securities Traded Investment Grade
finra_trace_btds_dfi_v2_1.total_securities_traded_investment_grade.size = 6

-- Display: Total Securities Traded Investment Grade
finra_trace_btds_dfi_v2_1.total_securities_traded_investment_grade.display = function(value)
  return "Total Securities Traded Investment Grade: "..value
end

-- Dissect: Total Securities Traded Investment Grade
finra_trace_btds_dfi_v2_1.total_securities_traded_investment_grade.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_securities_traded_investment_grade.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_securities_traded_investment_grade.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_securities_traded_investment_grade, range, value, display)

  return offset + length, value
end

-- Total Volume Affiliate Buy
finra_trace_btds_dfi_v2_1.total_volume_affiliate_buy = {}

-- Size: Total Volume Affiliate Buy
finra_trace_btds_dfi_v2_1.total_volume_affiliate_buy.size = 13

-- Display: Total Volume Affiliate Buy
finra_trace_btds_dfi_v2_1.total_volume_affiliate_buy.display = function(value)
  return "Total Volume Affiliate Buy: "..value
end

-- Dissect: Total Volume Affiliate Buy
finra_trace_btds_dfi_v2_1.total_volume_affiliate_buy.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_volume_affiliate_buy.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_volume_affiliate_buy.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_volume_affiliate_buy, range, value, display)

  return offset + length, value
end

-- Total Volume Affiliate Sell
finra_trace_btds_dfi_v2_1.total_volume_affiliate_sell = {}

-- Size: Total Volume Affiliate Sell
finra_trace_btds_dfi_v2_1.total_volume_affiliate_sell.size = 13

-- Display: Total Volume Affiliate Sell
finra_trace_btds_dfi_v2_1.total_volume_affiliate_sell.display = function(value)
  return "Total Volume Affiliate Sell: "..value
end

-- Dissect: Total Volume Affiliate Sell
finra_trace_btds_dfi_v2_1.total_volume_affiliate_sell.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_volume_affiliate_sell.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_volume_affiliate_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_volume_affiliate_sell, range, value, display)

  return offset + length, value
end

-- Total Volume All Securities
finra_trace_btds_dfi_v2_1.total_volume_all_securities = {}

-- Size: Total Volume All Securities
finra_trace_btds_dfi_v2_1.total_volume_all_securities.size = 13

-- Display: Total Volume All Securities
finra_trace_btds_dfi_v2_1.total_volume_all_securities.display = function(value)
  return "Total Volume All Securities: "..value
end

-- Dissect: Total Volume All Securities
finra_trace_btds_dfi_v2_1.total_volume_all_securities.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_volume_all_securities.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_volume_all_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_volume_all_securities, range, value, display)

  return offset + length, value
end

-- Total Volume Convertibles
finra_trace_btds_dfi_v2_1.total_volume_convertibles = {}

-- Size: Total Volume Convertibles
finra_trace_btds_dfi_v2_1.total_volume_convertibles.size = 13

-- Display: Total Volume Convertibles
finra_trace_btds_dfi_v2_1.total_volume_convertibles.display = function(value)
  return "Total Volume Convertibles: "..value
end

-- Dissect: Total Volume Convertibles
finra_trace_btds_dfi_v2_1.total_volume_convertibles.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_volume_convertibles.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_volume_convertibles.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_volume_convertibles, range, value, display)

  return offset + length, value
end

-- Total Volume Customer Buy
finra_trace_btds_dfi_v2_1.total_volume_customer_buy = {}

-- Size: Total Volume Customer Buy
finra_trace_btds_dfi_v2_1.total_volume_customer_buy.size = 13

-- Display: Total Volume Customer Buy
finra_trace_btds_dfi_v2_1.total_volume_customer_buy.display = function(value)
  return "Total Volume Customer Buy: "..value
end

-- Dissect: Total Volume Customer Buy
finra_trace_btds_dfi_v2_1.total_volume_customer_buy.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_volume_customer_buy.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_volume_customer_buy.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_volume_customer_buy, range, value, display)

  return offset + length, value
end

-- Total Volume Customer Sell
finra_trace_btds_dfi_v2_1.total_volume_customer_sell = {}

-- Size: Total Volume Customer Sell
finra_trace_btds_dfi_v2_1.total_volume_customer_sell.size = 13

-- Display: Total Volume Customer Sell
finra_trace_btds_dfi_v2_1.total_volume_customer_sell.display = function(value)
  return "Total Volume Customer Sell: "..value
end

-- Dissect: Total Volume Customer Sell
finra_trace_btds_dfi_v2_1.total_volume_customer_sell.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_volume_customer_sell.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_volume_customer_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_volume_customer_sell, range, value, display)

  return offset + length, value
end

-- Total Volume High Yield
finra_trace_btds_dfi_v2_1.total_volume_high_yield = {}

-- Size: Total Volume High Yield
finra_trace_btds_dfi_v2_1.total_volume_high_yield.size = 13

-- Display: Total Volume High Yield
finra_trace_btds_dfi_v2_1.total_volume_high_yield.display = function(value)
  return "Total Volume High Yield: "..value
end

-- Dissect: Total Volume High Yield
finra_trace_btds_dfi_v2_1.total_volume_high_yield.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_volume_high_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_volume_high_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_volume_high_yield, range, value, display)

  return offset + length, value
end

-- Total Volume Inter Dealer
finra_trace_btds_dfi_v2_1.total_volume_inter_dealer = {}

-- Size: Total Volume Inter Dealer
finra_trace_btds_dfi_v2_1.total_volume_inter_dealer.size = 13

-- Display: Total Volume Inter Dealer
finra_trace_btds_dfi_v2_1.total_volume_inter_dealer.display = function(value)
  return "Total Volume Inter Dealer: "..value
end

-- Dissect: Total Volume Inter Dealer
finra_trace_btds_dfi_v2_1.total_volume_inter_dealer.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_volume_inter_dealer.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_volume_inter_dealer.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_volume_inter_dealer, range, value, display)

  return offset + length, value
end

-- Total Volume Investment Grade
finra_trace_btds_dfi_v2_1.total_volume_investment_grade = {}

-- Size: Total Volume Investment Grade
finra_trace_btds_dfi_v2_1.total_volume_investment_grade.size = 13

-- Display: Total Volume Investment Grade
finra_trace_btds_dfi_v2_1.total_volume_investment_grade.display = function(value)
  return "Total Volume Investment Grade: "..value
end

-- Dissect: Total Volume Investment Grade
finra_trace_btds_dfi_v2_1.total_volume_investment_grade.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.total_volume_investment_grade.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.total_volume_investment_grade.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.total_volume_investment_grade, range, value, display)

  return offset + length, value
end

-- Trade Identifier
finra_trace_btds_dfi_v2_1.trade_identifier = {}

-- Size: Trade Identifier
finra_trace_btds_dfi_v2_1.trade_identifier.size = 7

-- Display: Trade Identifier
finra_trace_btds_dfi_v2_1.trade_identifier.display = function(value)
  return "Trade Identifier: "..value
end

-- Dissect: Trade Identifier
finra_trace_btds_dfi_v2_1.trade_identifier.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.trade_identifier.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.trade_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.trade_identifier, range, value, display)

  return offset + length, value
end

-- Trade Message Type
finra_trace_btds_dfi_v2_1.trade_message_type = {}

-- Size: Trade Message Type
finra_trace_btds_dfi_v2_1.trade_message_type.size = 1

-- Display: Trade Message Type
finra_trace_btds_dfi_v2_1.trade_message_type.display = function(value)
  if value == "M" then
    return "Trade Message Type: Trade Report Message (M)"
  end
  if value == "N" then
    return "Trade Message Type: Trade Cancel Message (N)"
  end
  if value == "O" then
    return "Trade Message Type: Trade Correction Message (O)"
  end

  return "Trade Message Type: Unknown("..value..")"
end

-- Dissect: Trade Message Type
finra_trace_btds_dfi_v2_1.trade_message_type.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.trade_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.trade_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.trade_message_type, range, value, display)

  return offset + length, value
end

-- Unchanged All Securities
finra_trace_btds_dfi_v2_1.unchanged_all_securities = {}

-- Size: Unchanged All Securities
finra_trace_btds_dfi_v2_1.unchanged_all_securities.size = 6

-- Display: Unchanged All Securities
finra_trace_btds_dfi_v2_1.unchanged_all_securities.display = function(value)
  return "Unchanged All Securities: "..value
end

-- Dissect: Unchanged All Securities
finra_trace_btds_dfi_v2_1.unchanged_all_securities.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.unchanged_all_securities.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.unchanged_all_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.unchanged_all_securities, range, value, display)

  return offset + length, value
end

-- Unchanged Convertibles
finra_trace_btds_dfi_v2_1.unchanged_convertibles = {}

-- Size: Unchanged Convertibles
finra_trace_btds_dfi_v2_1.unchanged_convertibles.size = 6

-- Display: Unchanged Convertibles
finra_trace_btds_dfi_v2_1.unchanged_convertibles.display = function(value)
  return "Unchanged Convertibles: "..value
end

-- Dissect: Unchanged Convertibles
finra_trace_btds_dfi_v2_1.unchanged_convertibles.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.unchanged_convertibles.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.unchanged_convertibles.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.unchanged_convertibles, range, value, display)

  return offset + length, value
end

-- Unchanged High Yield
finra_trace_btds_dfi_v2_1.unchanged_high_yield = {}

-- Size: Unchanged High Yield
finra_trace_btds_dfi_v2_1.unchanged_high_yield.size = 6

-- Display: Unchanged High Yield
finra_trace_btds_dfi_v2_1.unchanged_high_yield.display = function(value)
  return "Unchanged High Yield: "..value
end

-- Dissect: Unchanged High Yield
finra_trace_btds_dfi_v2_1.unchanged_high_yield.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.unchanged_high_yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.unchanged_high_yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.unchanged_high_yield, range, value, display)

  return offset + length, value
end

-- Unchanged Investment Grade
finra_trace_btds_dfi_v2_1.unchanged_investment_grade = {}

-- Size: Unchanged Investment Grade
finra_trace_btds_dfi_v2_1.unchanged_investment_grade.size = 6

-- Display: Unchanged Investment Grade
finra_trace_btds_dfi_v2_1.unchanged_investment_grade.display = function(value)
  return "Unchanged Investment Grade: "..value
end

-- Dissect: Unchanged Investment Grade
finra_trace_btds_dfi_v2_1.unchanged_investment_grade.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.unchanged_investment_grade.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.unchanged_investment_grade.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.unchanged_investment_grade, range, value, display)

  return offset + length, value
end

-- When Issued Indicator
finra_trace_btds_dfi_v2_1.when_issued_indicator = {}

-- Size: When Issued Indicator
finra_trace_btds_dfi_v2_1.when_issued_indicator.size = 1

-- Display: When Issued Indicator
finra_trace_btds_dfi_v2_1.when_issued_indicator.display = function(value)
  if value == "W" then
    return "When Issued Indicator: When Issued (W)"
  end
  if value == " " then
    return "When Issued Indicator: Not When Issued (<whitespace>)"
  end

  return "When Issued Indicator: Unknown("..value..")"
end

-- Dissect: When Issued Indicator
finra_trace_btds_dfi_v2_1.when_issued_indicator.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.when_issued_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.when_issued_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.when_issued_indicator, range, value, display)

  return offset + length, value
end

-- Year
finra_trace_btds_dfi_v2_1.year = {}

-- Size: Year
finra_trace_btds_dfi_v2_1.year.size = 4

-- Display: Year
finra_trace_btds_dfi_v2_1.year.display = function(value)
  return "Year: "..value
end

-- Dissect: Year
finra_trace_btds_dfi_v2_1.year.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.year.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.year.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.year, range, value, display)

  return offset + length, value
end

-- Yield
finra_trace_btds_dfi_v2_1.yield = {}

-- Size: Yield
finra_trace_btds_dfi_v2_1.yield.size = 13

-- Display: Yield
finra_trace_btds_dfi_v2_1.yield.display = function(value)
  return "Yield: "..value
end

-- Dissect: Yield
finra_trace_btds_dfi_v2_1.yield.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.yield.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_trace_btds_dfi_v2_1.yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.yield, range, value, display)

  return offset + length, value
end

-- Yield Direction
finra_trace_btds_dfi_v2_1.yield_direction = {}

-- Size: Yield Direction
finra_trace_btds_dfi_v2_1.yield_direction.size = 1

-- Display: Yield Direction
finra_trace_btds_dfi_v2_1.yield_direction.display = function(value)
  if value == "-" then
    return "Yield Direction: Negative Yield (-)"
  end
  if value == " " then
    return "Yield Direction: Positive Or Zero Yield (<whitespace>)"
  end

  return "Yield Direction: Unknown("..value..")"
end

-- Dissect: Yield Direction
finra_trace_btds_dfi_v2_1.yield_direction.dissect = function(buffer, offset, packet, parent)
  local length = finra_trace_btds_dfi_v2_1.yield_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_trace_btds_dfi_v2_1.yield_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_trace_btds_dfi_v2_1.fields.yield_direction, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Finra Trace Btds Dfi 2.1
-----------------------------------------------------------------------

-- Datetime
finra_trace_btds_dfi_v2_1.datetime = {}

-- Size: Datetime
finra_trace_btds_dfi_v2_1.datetime.size =
  finra_trace_btds_dfi_v2_1.year.size + 
  finra_trace_btds_dfi_v2_1.month.size + 
  finra_trace_btds_dfi_v2_1.day.size + 
  finra_trace_btds_dfi_v2_1.hour.size + 
  finra_trace_btds_dfi_v2_1.minute.size + 
  finra_trace_btds_dfi_v2_1.second.size

-- Display: Datetime
finra_trace_btds_dfi_v2_1.datetime.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Datetime
finra_trace_btds_dfi_v2_1.datetime.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: Numeric
  index, year = finra_trace_btds_dfi_v2_1.year.dissect(buffer, index, packet, parent)

  -- Month: Numeric
  index, month = finra_trace_btds_dfi_v2_1.month.dissect(buffer, index, packet, parent)

  -- Day: Numeric
  index, day = finra_trace_btds_dfi_v2_1.day.dissect(buffer, index, packet, parent)

  -- Hour: Numeric
  index, hour = finra_trace_btds_dfi_v2_1.hour.dissect(buffer, index, packet, parent)

  -- Minute: Numeric
  index, minute = finra_trace_btds_dfi_v2_1.minute.dissect(buffer, index, packet, parent)

  -- Second: Numeric
  index, second = finra_trace_btds_dfi_v2_1.second.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Datetime
finra_trace_btds_dfi_v2_1.datetime.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.datetime, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.datetime.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.datetime.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.datetime.fields(buffer, offset, packet, parent)
  end
end

-- Message Header
finra_trace_btds_dfi_v2_1.message_header = {}

-- Size: Message Header
finra_trace_btds_dfi_v2_1.message_header.size =
  finra_trace_btds_dfi_v2_1.trade_identifier.size + 
  finra_trace_btds_dfi_v2_1.market_center_originator_id.size + 
  finra_trace_btds_dfi_v2_1.datetime.size

-- Display: Message Header
finra_trace_btds_dfi_v2_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
finra_trace_btds_dfi_v2_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Identifier: Numeric
  index, trade_identifier = finra_trace_btds_dfi_v2_1.trade_identifier.dissect(buffer, index, packet, parent)

  -- Market Center Originator Id: Alphabetic
  index, market_center_originator_id = finra_trace_btds_dfi_v2_1.market_center_originator_id.dissect(buffer, index, packet, parent)

  -- Datetime: Struct of 6 fields
  index, datetime = finra_trace_btds_dfi_v2_1.datetime.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
finra_trace_btds_dfi_v2_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.message_header, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- End Of Transmissions Message
finra_trace_btds_dfi_v2_1.end_of_transmissions_message = {}

-- Size: End Of Transmissions Message
finra_trace_btds_dfi_v2_1.end_of_transmissions_message.size =
  finra_trace_btds_dfi_v2_1.message_header.size

-- Display: End Of Transmissions Message
finra_trace_btds_dfi_v2_1.end_of_transmissions_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmissions Message
finra_trace_btds_dfi_v2_1.end_of_transmissions_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_trace_btds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmissions Message
finra_trace_btds_dfi_v2_1.end_of_transmissions_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.end_of_transmissions_message, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.end_of_transmissions_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.end_of_transmissions_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.end_of_transmissions_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Trade Reporting Message
finra_trace_btds_dfi_v2_1.end_of_trade_reporting_message = {}

-- Size: End Of Trade Reporting Message
finra_trace_btds_dfi_v2_1.end_of_trade_reporting_message.size =
  finra_trace_btds_dfi_v2_1.message_header.size

-- Display: End Of Trade Reporting Message
finra_trace_btds_dfi_v2_1.end_of_trade_reporting_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Trade Reporting Message
finra_trace_btds_dfi_v2_1.end_of_trade_reporting_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_trace_btds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Trade Reporting Message
finra_trace_btds_dfi_v2_1.end_of_trade_reporting_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.end_of_trade_reporting_message, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.end_of_trade_reporting_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.end_of_trade_reporting_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.end_of_trade_reporting_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Session Close Message
finra_trace_btds_dfi_v2_1.market_session_close_message = {}

-- Size: Market Session Close Message
finra_trace_btds_dfi_v2_1.market_session_close_message.size =
  finra_trace_btds_dfi_v2_1.message_header.size

-- Display: Market Session Close Message
finra_trace_btds_dfi_v2_1.market_session_close_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Close Message
finra_trace_btds_dfi_v2_1.market_session_close_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_trace_btds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Close Message
finra_trace_btds_dfi_v2_1.market_session_close_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.market_session_close_message, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.market_session_close_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.market_session_close_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.market_session_close_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Session Open Message
finra_trace_btds_dfi_v2_1.market_session_open_message = {}

-- Size: Market Session Open Message
finra_trace_btds_dfi_v2_1.market_session_open_message.size =
  finra_trace_btds_dfi_v2_1.message_header.size

-- Display: Market Session Open Message
finra_trace_btds_dfi_v2_1.market_session_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Open Message
finra_trace_btds_dfi_v2_1.market_session_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_trace_btds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Open Message
finra_trace_btds_dfi_v2_1.market_session_open_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.market_session_open_message, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.market_session_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.market_session_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.market_session_open_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Day Message
finra_trace_btds_dfi_v2_1.end_of_day_message = {}

-- Size: End Of Day Message
finra_trace_btds_dfi_v2_1.end_of_day_message.size =
  finra_trace_btds_dfi_v2_1.message_header.size

-- Display: End Of Day Message
finra_trace_btds_dfi_v2_1.end_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Message
finra_trace_btds_dfi_v2_1.end_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_trace_btds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
finra_trace_btds_dfi_v2_1.end_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.end_of_day_message, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.end_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.end_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.end_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Day Message
finra_trace_btds_dfi_v2_1.start_of_day_message = {}

-- Size: Start Of Day Message
finra_trace_btds_dfi_v2_1.start_of_day_message.size =
  finra_trace_btds_dfi_v2_1.message_header.size

-- Display: Start Of Day Message
finra_trace_btds_dfi_v2_1.start_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Day Message
finra_trace_btds_dfi_v2_1.start_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_trace_btds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
finra_trace_btds_dfi_v2_1.start_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.start_of_day_message, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.start_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.start_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.start_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Control Message Payload
finra_trace_btds_dfi_v2_1.control_message_payload = {}

-- Dissect: Control Message Payload
finra_trace_btds_dfi_v2_1.control_message_payload.dissect = function(buffer, offset, packet, parent, control_message_type)
  -- Dissect Start Of Day Message
  if control_message_type == "I" then
    return finra_trace_btds_dfi_v2_1.start_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Message
  if control_message_type == "J" then
    return finra_trace_btds_dfi_v2_1.end_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Open Message
  if control_message_type == "O" then
    return finra_trace_btds_dfi_v2_1.market_session_open_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Close Message
  if control_message_type == "C" then
    return finra_trace_btds_dfi_v2_1.market_session_close_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Trade Reporting Message
  if control_message_type == "X" then
    return finra_trace_btds_dfi_v2_1.end_of_trade_reporting_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Transmissions Message
  if control_message_type == "Z" then
    return finra_trace_btds_dfi_v2_1.end_of_transmissions_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Control Message
finra_trace_btds_dfi_v2_1.control_message = {}

-- Calculate size of: Control Message
finra_trace_btds_dfi_v2_1.control_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_trace_btds_dfi_v2_1.control_message_type.size

  -- Calculate runtime size of Control Message Payload field
  local control_message_payload_offset = offset + index
  local control_message_payload_type = buffer(control_message_payload_offset - 1, 1):string()
  index = index + finra_trace_btds_dfi_v2_1.control_message_payload.size(buffer, control_message_payload_offset, control_message_payload_type)

  return index
end

-- Display: Control Message
finra_trace_btds_dfi_v2_1.control_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control Message
finra_trace_btds_dfi_v2_1.control_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Control Message Type: 1 Byte Ascii String Enum with 6 values
  index, control_message_type = finra_trace_btds_dfi_v2_1.control_message_type.dissect(buffer, index, packet, parent)

  -- Control Message Payload: Runtime Type with 6 branches
  index = finra_trace_btds_dfi_v2_1.control_message_payload.dissect(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control Message
finra_trace_btds_dfi_v2_1.control_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.control_message, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.control_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.control_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.control_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Sentiment Information
finra_trace_btds_dfi_v2_1.market_sentiment_information = {}

-- Size: Market Sentiment Information
finra_trace_btds_dfi_v2_1.market_sentiment_information.size =
  finra_trace_btds_dfi_v2_1.total_number_of_transactions_all_securities.size + 
  finra_trace_btds_dfi_v2_1.total_securities_traded_all_securities.size + 
  finra_trace_btds_dfi_v2_1.total_volume_all_securities.size + 
  finra_trace_btds_dfi_v2_1.total_number_of_transactions_customer_buy.size + 
  finra_trace_btds_dfi_v2_1.total_securities_traded_customer_buy.size + 
  finra_trace_btds_dfi_v2_1.total_volume_customer_buy.size + 
  finra_trace_btds_dfi_v2_1.total_number_of_transactions_customer_sell.size + 
  finra_trace_btds_dfi_v2_1.total_securities_traded_customer_sell.size + 
  finra_trace_btds_dfi_v2_1.total_volume_customer_sell.size + 
  finra_trace_btds_dfi_v2_1.total_number_of_transactions_affiliate_buy.size + 
  finra_trace_btds_dfi_v2_1.total_securities_traded_affiliate_buy.size + 
  finra_trace_btds_dfi_v2_1.total_volume_affiliate_buy.size + 
  finra_trace_btds_dfi_v2_1.total_number_of_transactions_affiliate_sell.size + 
  finra_trace_btds_dfi_v2_1.total_securities_traded_affiliate_sell.size + 
  finra_trace_btds_dfi_v2_1.total_volume_affiliate_sell.size + 
  finra_trace_btds_dfi_v2_1.total_number_of_transactions_inter_dealer.size + 
  finra_trace_btds_dfi_v2_1.total_securities_traded_inter_dealer.size + 
  finra_trace_btds_dfi_v2_1.total_volume_inter_dealer.size

-- Display: Market Sentiment Information
finra_trace_btds_dfi_v2_1.market_sentiment_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Sentiment Information
finra_trace_btds_dfi_v2_1.market_sentiment_information.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Total Number Of Transactions All Securities: Numeric
  index, total_number_of_transactions_all_securities = finra_trace_btds_dfi_v2_1.total_number_of_transactions_all_securities.dissect(buffer, index, packet, parent)

  -- Total Securities Traded All Securities: Numeric
  index, total_securities_traded_all_securities = finra_trace_btds_dfi_v2_1.total_securities_traded_all_securities.dissect(buffer, index, packet, parent)

  -- Total Volume All Securities: Numeric
  index, total_volume_all_securities = finra_trace_btds_dfi_v2_1.total_volume_all_securities.dissect(buffer, index, packet, parent)

  -- Total Number Of Transactions Customer Buy: Numeric
  index, total_number_of_transactions_customer_buy = finra_trace_btds_dfi_v2_1.total_number_of_transactions_customer_buy.dissect(buffer, index, packet, parent)

  -- Total Securities Traded Customer Buy: Numeric
  index, total_securities_traded_customer_buy = finra_trace_btds_dfi_v2_1.total_securities_traded_customer_buy.dissect(buffer, index, packet, parent)

  -- Total Volume Customer Buy: Numeric
  index, total_volume_customer_buy = finra_trace_btds_dfi_v2_1.total_volume_customer_buy.dissect(buffer, index, packet, parent)

  -- Total Number Of Transactions Customer Sell: Numeric
  index, total_number_of_transactions_customer_sell = finra_trace_btds_dfi_v2_1.total_number_of_transactions_customer_sell.dissect(buffer, index, packet, parent)

  -- Total Securities Traded Customer Sell: Numeric
  index, total_securities_traded_customer_sell = finra_trace_btds_dfi_v2_1.total_securities_traded_customer_sell.dissect(buffer, index, packet, parent)

  -- Total Volume Customer Sell: Numeric
  index, total_volume_customer_sell = finra_trace_btds_dfi_v2_1.total_volume_customer_sell.dissect(buffer, index, packet, parent)

  -- Total Number Of Transactions Affiliate Buy: Numeric
  index, total_number_of_transactions_affiliate_buy = finra_trace_btds_dfi_v2_1.total_number_of_transactions_affiliate_buy.dissect(buffer, index, packet, parent)

  -- Total Securities Traded Affiliate Buy: Numeric
  index, total_securities_traded_affiliate_buy = finra_trace_btds_dfi_v2_1.total_securities_traded_affiliate_buy.dissect(buffer, index, packet, parent)

  -- Total Volume Affiliate Buy: Numeric
  index, total_volume_affiliate_buy = finra_trace_btds_dfi_v2_1.total_volume_affiliate_buy.dissect(buffer, index, packet, parent)

  -- Total Number Of Transactions Affiliate Sell: Numeric
  index, total_number_of_transactions_affiliate_sell = finra_trace_btds_dfi_v2_1.total_number_of_transactions_affiliate_sell.dissect(buffer, index, packet, parent)

  -- Total Securities Traded Affiliate Sell: Numeric
  index, total_securities_traded_affiliate_sell = finra_trace_btds_dfi_v2_1.total_securities_traded_affiliate_sell.dissect(buffer, index, packet, parent)

  -- Total Volume Affiliate Sell: Numeric
  index, total_volume_affiliate_sell = finra_trace_btds_dfi_v2_1.total_volume_affiliate_sell.dissect(buffer, index, packet, parent)

  -- Total Number Of Transactions Inter Dealer: Numeric
  index, total_number_of_transactions_inter_dealer = finra_trace_btds_dfi_v2_1.total_number_of_transactions_inter_dealer.dissect(buffer, index, packet, parent)

  -- Total Securities Traded Inter Dealer: Numeric
  index, total_securities_traded_inter_dealer = finra_trace_btds_dfi_v2_1.total_securities_traded_inter_dealer.dissect(buffer, index, packet, parent)

  -- Total Volume Inter Dealer: Numeric
  index, total_volume_inter_dealer = finra_trace_btds_dfi_v2_1.total_volume_inter_dealer.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Sentiment Information
finra_trace_btds_dfi_v2_1.market_sentiment_information.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.market_sentiment_information, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.market_sentiment_information.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.market_sentiment_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.market_sentiment_information.fields(buffer, offset, packet, parent)
  end
end

-- Market Sentiment Equity Linked Notes Message
finra_trace_btds_dfi_v2_1.market_sentiment_equity_linked_notes_message = {}

-- Size: Market Sentiment Equity Linked Notes Message
finra_trace_btds_dfi_v2_1.market_sentiment_equity_linked_notes_message.size =
  finra_trace_btds_dfi_v2_1.message_header.size + 
  finra_trace_btds_dfi_v2_1.market_sentiment_information.size

-- Display: Market Sentiment Equity Linked Notes Message
finra_trace_btds_dfi_v2_1.market_sentiment_equity_linked_notes_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Sentiment Equity Linked Notes Message
finra_trace_btds_dfi_v2_1.market_sentiment_equity_linked_notes_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_trace_btds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Market Sentiment Information: Struct of 18 fields
  index, market_sentiment_information = finra_trace_btds_dfi_v2_1.market_sentiment_information.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Sentiment Equity Linked Notes Message
finra_trace_btds_dfi_v2_1.market_sentiment_equity_linked_notes_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.market_sentiment_equity_linked_notes_message, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.market_sentiment_equity_linked_notes_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.market_sentiment_equity_linked_notes_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.market_sentiment_equity_linked_notes_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Sentiment Church Bonds Message
finra_trace_btds_dfi_v2_1.market_sentiment_church_bonds_message = {}

-- Size: Market Sentiment Church Bonds Message
finra_trace_btds_dfi_v2_1.market_sentiment_church_bonds_message.size =
  finra_trace_btds_dfi_v2_1.message_header.size + 
  finra_trace_btds_dfi_v2_1.market_sentiment_information.size

-- Display: Market Sentiment Church Bonds Message
finra_trace_btds_dfi_v2_1.market_sentiment_church_bonds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Sentiment Church Bonds Message
finra_trace_btds_dfi_v2_1.market_sentiment_church_bonds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_trace_btds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Market Sentiment Information: Struct of 18 fields
  index, market_sentiment_information = finra_trace_btds_dfi_v2_1.market_sentiment_information.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Sentiment Church Bonds Message
finra_trace_btds_dfi_v2_1.market_sentiment_church_bonds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.market_sentiment_church_bonds_message, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.market_sentiment_church_bonds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.market_sentiment_church_bonds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.market_sentiment_church_bonds_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Sentiment Convertible Bonds Message
finra_trace_btds_dfi_v2_1.market_sentiment_convertible_bonds_message = {}

-- Size: Market Sentiment Convertible Bonds Message
finra_trace_btds_dfi_v2_1.market_sentiment_convertible_bonds_message.size =
  finra_trace_btds_dfi_v2_1.message_header.size + 
  finra_trace_btds_dfi_v2_1.market_sentiment_information.size

-- Display: Market Sentiment Convertible Bonds Message
finra_trace_btds_dfi_v2_1.market_sentiment_convertible_bonds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Sentiment Convertible Bonds Message
finra_trace_btds_dfi_v2_1.market_sentiment_convertible_bonds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_trace_btds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Market Sentiment Information: Struct of 18 fields
  index, market_sentiment_information = finra_trace_btds_dfi_v2_1.market_sentiment_information.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Sentiment Convertible Bonds Message
finra_trace_btds_dfi_v2_1.market_sentiment_convertible_bonds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.market_sentiment_convertible_bonds_message, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.market_sentiment_convertible_bonds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.market_sentiment_convertible_bonds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.market_sentiment_convertible_bonds_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Sentiment High Yield Message
finra_trace_btds_dfi_v2_1.market_sentiment_high_yield_message = {}

-- Size: Market Sentiment High Yield Message
finra_trace_btds_dfi_v2_1.market_sentiment_high_yield_message.size =
  finra_trace_btds_dfi_v2_1.message_header.size + 
  finra_trace_btds_dfi_v2_1.market_sentiment_information.size

-- Display: Market Sentiment High Yield Message
finra_trace_btds_dfi_v2_1.market_sentiment_high_yield_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Sentiment High Yield Message
finra_trace_btds_dfi_v2_1.market_sentiment_high_yield_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_trace_btds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Market Sentiment Information: Struct of 18 fields
  index, market_sentiment_information = finra_trace_btds_dfi_v2_1.market_sentiment_information.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Sentiment High Yield Message
finra_trace_btds_dfi_v2_1.market_sentiment_high_yield_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.market_sentiment_high_yield_message, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.market_sentiment_high_yield_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.market_sentiment_high_yield_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.market_sentiment_high_yield_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Sentiment Investment Grade Message
finra_trace_btds_dfi_v2_1.market_sentiment_investment_grade_message = {}

-- Size: Market Sentiment Investment Grade Message
finra_trace_btds_dfi_v2_1.market_sentiment_investment_grade_message.size =
  finra_trace_btds_dfi_v2_1.message_header.size + 
  finra_trace_btds_dfi_v2_1.market_sentiment_information.size

-- Display: Market Sentiment Investment Grade Message
finra_trace_btds_dfi_v2_1.market_sentiment_investment_grade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Sentiment Investment Grade Message
finra_trace_btds_dfi_v2_1.market_sentiment_investment_grade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_trace_btds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Market Sentiment Information: Struct of 18 fields
  index, market_sentiment_information = finra_trace_btds_dfi_v2_1.market_sentiment_information.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Sentiment Investment Grade Message
finra_trace_btds_dfi_v2_1.market_sentiment_investment_grade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.market_sentiment_investment_grade_message, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.market_sentiment_investment_grade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.market_sentiment_investment_grade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.market_sentiment_investment_grade_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Sentiment All Securities Message
finra_trace_btds_dfi_v2_1.market_sentiment_all_securities_message = {}

-- Size: Market Sentiment All Securities Message
finra_trace_btds_dfi_v2_1.market_sentiment_all_securities_message.size =
  finra_trace_btds_dfi_v2_1.message_header.size + 
  finra_trace_btds_dfi_v2_1.market_sentiment_information.size

-- Display: Market Sentiment All Securities Message
finra_trace_btds_dfi_v2_1.market_sentiment_all_securities_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Sentiment All Securities Message
finra_trace_btds_dfi_v2_1.market_sentiment_all_securities_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_trace_btds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Market Sentiment Information: Struct of 18 fields
  index, market_sentiment_information = finra_trace_btds_dfi_v2_1.market_sentiment_information.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Sentiment All Securities Message
finra_trace_btds_dfi_v2_1.market_sentiment_all_securities_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.market_sentiment_all_securities_message, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.market_sentiment_all_securities_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.market_sentiment_all_securities_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.market_sentiment_all_securities_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Breadth Information
finra_trace_btds_dfi_v2_1.market_breadth_information = {}

-- Size: Market Breadth Information
finra_trace_btds_dfi_v2_1.market_breadth_information.size =
  finra_trace_btds_dfi_v2_1.total_securities_traded_all_securities.size + 
  finra_trace_btds_dfi_v2_1.total_securities_traded_investment_grade.size + 
  finra_trace_btds_dfi_v2_1.total_securities_traded_high_yield.size + 
  finra_trace_btds_dfi_v2_1.total_securities_traded_convertibles.size + 
  finra_trace_btds_dfi_v2_1.advances_all_securities.size + 
  finra_trace_btds_dfi_v2_1.advances_investment_grade.size + 
  finra_trace_btds_dfi_v2_1.advances_high_yield.size + 
  finra_trace_btds_dfi_v2_1.advances_convertibles.size + 
  finra_trace_btds_dfi_v2_1.declines_all_securities.size + 
  finra_trace_btds_dfi_v2_1.declines_investment_grade.size + 
  finra_trace_btds_dfi_v2_1.declines_high_yield.size + 
  finra_trace_btds_dfi_v2_1.declines_convertibles.size + 
  finra_trace_btds_dfi_v2_1.unchanged_all_securities.size + 
  finra_trace_btds_dfi_v2_1.unchanged_investment_grade.size + 
  finra_trace_btds_dfi_v2_1.unchanged_high_yield.size + 
  finra_trace_btds_dfi_v2_1.unchanged_convertibles.size + 
  finra_trace_btds_dfi_v2_1.fifty_two_week_high_all_securities.size + 
  finra_trace_btds_dfi_v2_1.fifty_two_week_high_investment_grade.size + 
  finra_trace_btds_dfi_v2_1.fifty_two_week_high_high_yield.size + 
  finra_trace_btds_dfi_v2_1.fifty_two_week_high_convertibles.size + 
  finra_trace_btds_dfi_v2_1.fifty_two_week_low_all_securities.size + 
  finra_trace_btds_dfi_v2_1.fifty_two_week_low_investment_grade.size + 
  finra_trace_btds_dfi_v2_1.fifty_two_week_low_high_yield.size + 
  finra_trace_btds_dfi_v2_1.fifty_two_week_low_convertibles.size + 
  finra_trace_btds_dfi_v2_1.total_volume_all_securities.size + 
  finra_trace_btds_dfi_v2_1.total_volume_investment_grade.size + 
  finra_trace_btds_dfi_v2_1.total_volume_high_yield.size + 
  finra_trace_btds_dfi_v2_1.total_volume_convertibles.size

-- Display: Market Breadth Information
finra_trace_btds_dfi_v2_1.market_breadth_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Breadth Information
finra_trace_btds_dfi_v2_1.market_breadth_information.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Total Securities Traded All Securities: Numeric
  index, total_securities_traded_all_securities = finra_trace_btds_dfi_v2_1.total_securities_traded_all_securities.dissect(buffer, index, packet, parent)

  -- Total Securities Traded Investment Grade: Numeric
  index, total_securities_traded_investment_grade = finra_trace_btds_dfi_v2_1.total_securities_traded_investment_grade.dissect(buffer, index, packet, parent)

  -- Total Securities Traded High Yield: Numeric
  index, total_securities_traded_high_yield = finra_trace_btds_dfi_v2_1.total_securities_traded_high_yield.dissect(buffer, index, packet, parent)

  -- Total Securities Traded Convertibles: Numeric
  index, total_securities_traded_convertibles = finra_trace_btds_dfi_v2_1.total_securities_traded_convertibles.dissect(buffer, index, packet, parent)

  -- Advances All Securities: Numeric
  index, advances_all_securities = finra_trace_btds_dfi_v2_1.advances_all_securities.dissect(buffer, index, packet, parent)

  -- Advances Investment Grade: Numeric
  index, advances_investment_grade = finra_trace_btds_dfi_v2_1.advances_investment_grade.dissect(buffer, index, packet, parent)

  -- Advances High Yield: Numeric
  index, advances_high_yield = finra_trace_btds_dfi_v2_1.advances_high_yield.dissect(buffer, index, packet, parent)

  -- Advances Convertibles: Numeric
  index, advances_convertibles = finra_trace_btds_dfi_v2_1.advances_convertibles.dissect(buffer, index, packet, parent)

  -- Declines All Securities: Numeric
  index, declines_all_securities = finra_trace_btds_dfi_v2_1.declines_all_securities.dissect(buffer, index, packet, parent)

  -- Declines Investment Grade: Numeric
  index, declines_investment_grade = finra_trace_btds_dfi_v2_1.declines_investment_grade.dissect(buffer, index, packet, parent)

  -- Declines High Yield: Numeric
  index, declines_high_yield = finra_trace_btds_dfi_v2_1.declines_high_yield.dissect(buffer, index, packet, parent)

  -- Declines Convertibles: Numeric
  index, declines_convertibles = finra_trace_btds_dfi_v2_1.declines_convertibles.dissect(buffer, index, packet, parent)

  -- Unchanged All Securities: Numeric
  index, unchanged_all_securities = finra_trace_btds_dfi_v2_1.unchanged_all_securities.dissect(buffer, index, packet, parent)

  -- Unchanged Investment Grade: Numeric
  index, unchanged_investment_grade = finra_trace_btds_dfi_v2_1.unchanged_investment_grade.dissect(buffer, index, packet, parent)

  -- Unchanged High Yield: Numeric
  index, unchanged_high_yield = finra_trace_btds_dfi_v2_1.unchanged_high_yield.dissect(buffer, index, packet, parent)

  -- Unchanged Convertibles: Numeric
  index, unchanged_convertibles = finra_trace_btds_dfi_v2_1.unchanged_convertibles.dissect(buffer, index, packet, parent)

  -- Fifty Two Week High All Securities: Numeric
  index, fifty_two_week_high_all_securities = finra_trace_btds_dfi_v2_1.fifty_two_week_high_all_securities.dissect(buffer, index, packet, parent)

  -- Fifty Two Week High Investment Grade: Numeric
  index, fifty_two_week_high_investment_grade = finra_trace_btds_dfi_v2_1.fifty_two_week_high_investment_grade.dissect(buffer, index, packet, parent)

  -- Fifty Two Week High High Yield: Numeric
  index, fifty_two_week_high_high_yield = finra_trace_btds_dfi_v2_1.fifty_two_week_high_high_yield.dissect(buffer, index, packet, parent)

  -- Fifty Two Week High Convertibles: Numeric
  index, fifty_two_week_high_convertibles = finra_trace_btds_dfi_v2_1.fifty_two_week_high_convertibles.dissect(buffer, index, packet, parent)

  -- Fifty Two Week Low All Securities: Numeric
  index, fifty_two_week_low_all_securities = finra_trace_btds_dfi_v2_1.fifty_two_week_low_all_securities.dissect(buffer, index, packet, parent)

  -- Fifty Two Week Low Investment Grade: Numeric
  index, fifty_two_week_low_investment_grade = finra_trace_btds_dfi_v2_1.fifty_two_week_low_investment_grade.dissect(buffer, index, packet, parent)

  -- Fifty Two Week Low High Yield: Numeric
  index, fifty_two_week_low_high_yield = finra_trace_btds_dfi_v2_1.fifty_two_week_low_high_yield.dissect(buffer, index, packet, parent)

  -- Fifty Two Week Low Convertibles: Numeric
  index, fifty_two_week_low_convertibles = finra_trace_btds_dfi_v2_1.fifty_two_week_low_convertibles.dissect(buffer, index, packet, parent)

  -- Total Volume All Securities: Numeric
  index, total_volume_all_securities = finra_trace_btds_dfi_v2_1.total_volume_all_securities.dissect(buffer, index, packet, parent)

  -- Total Volume Investment Grade: Numeric
  index, total_volume_investment_grade = finra_trace_btds_dfi_v2_1.total_volume_investment_grade.dissect(buffer, index, packet, parent)

  -- Total Volume High Yield: Numeric
  index, total_volume_high_yield = finra_trace_btds_dfi_v2_1.total_volume_high_yield.dissect(buffer, index, packet, parent)

  -- Total Volume Convertibles: Numeric
  index, total_volume_convertibles = finra_trace_btds_dfi_v2_1.total_volume_convertibles.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Breadth Information
finra_trace_btds_dfi_v2_1.market_breadth_information.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.market_breadth_information, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.market_breadth_information.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.market_breadth_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.market_breadth_information.fields(buffer, offset, packet, parent)
  end
end

-- Market Breadth Message
finra_trace_btds_dfi_v2_1.market_breadth_message = {}

-- Size: Market Breadth Message
finra_trace_btds_dfi_v2_1.market_breadth_message.size =
  finra_trace_btds_dfi_v2_1.message_header.size + 
  finra_trace_btds_dfi_v2_1.market_breadth_information.size

-- Display: Market Breadth Message
finra_trace_btds_dfi_v2_1.market_breadth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Breadth Message
finra_trace_btds_dfi_v2_1.market_breadth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_trace_btds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Market Breadth Information: Struct of 28 fields
  index, market_breadth_information = finra_trace_btds_dfi_v2_1.market_breadth_information.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Breadth Message
finra_trace_btds_dfi_v2_1.market_breadth_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.market_breadth_message, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.market_breadth_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.market_breadth_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.market_breadth_message.fields(buffer, offset, packet, parent)
  end
end

-- General Administrative Message
finra_trace_btds_dfi_v2_1.general_administrative_message = {}

-- Calculate size of: General Administrative Message
finra_trace_btds_dfi_v2_1.general_administrative_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_trace_btds_dfi_v2_1.message_header.size

  -- Parse runtime size of: Text
  index = index + buffer(offset + index - 26, 2):uint()

  return index
end

-- Display: General Administrative Message
finra_trace_btds_dfi_v2_1.general_administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: General Administrative Message
finra_trace_btds_dfi_v2_1.general_administrative_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_trace_btds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Length
  local length = buffer(offset - 4, 2):uint()

  -- Runtime Size Of: Text
  local size_of_text = length - 24

  -- Text: 0 Byte Ascii String
  index, text = finra_trace_btds_dfi_v2_1.text.dissect(buffer, index, packet, parent, size_of_text)

  return index
end

-- Dissect: General Administrative Message
finra_trace_btds_dfi_v2_1.general_administrative_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.general_administrative_message, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.general_administrative_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.general_administrative_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.general_administrative_message.fields(buffer, offset, packet, parent)
  end
end

-- Action Datetime
finra_trace_btds_dfi_v2_1.action_datetime = {}

-- Size: Action Datetime
finra_trace_btds_dfi_v2_1.action_datetime.size =
  finra_trace_btds_dfi_v2_1.year.size + 
  finra_trace_btds_dfi_v2_1.month.size + 
  finra_trace_btds_dfi_v2_1.day.size + 
  finra_trace_btds_dfi_v2_1.hour.size + 
  finra_trace_btds_dfi_v2_1.minute.size + 
  finra_trace_btds_dfi_v2_1.second.size

-- Display: Action Datetime
finra_trace_btds_dfi_v2_1.action_datetime.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Action Datetime
finra_trace_btds_dfi_v2_1.action_datetime.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: Numeric
  index, year = finra_trace_btds_dfi_v2_1.year.dissect(buffer, index, packet, parent)

  -- Month: Numeric
  index, month = finra_trace_btds_dfi_v2_1.month.dissect(buffer, index, packet, parent)

  -- Day: Numeric
  index, day = finra_trace_btds_dfi_v2_1.day.dissect(buffer, index, packet, parent)

  -- Hour: Numeric
  index, hour = finra_trace_btds_dfi_v2_1.hour.dissect(buffer, index, packet, parent)

  -- Minute: Numeric
  index, minute = finra_trace_btds_dfi_v2_1.minute.dissect(buffer, index, packet, parent)

  -- Second: Numeric
  index, second = finra_trace_btds_dfi_v2_1.second.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Action Datetime
finra_trace_btds_dfi_v2_1.action_datetime.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.action_datetime, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.action_datetime.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.action_datetime.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.action_datetime.fields(buffer, offset, packet, parent)
  end
end

-- Label
finra_trace_btds_dfi_v2_1.label = {}

-- Size: Label
finra_trace_btds_dfi_v2_1.label.size =
  finra_trace_btds_dfi_v2_1.symbol.size + 
  finra_trace_btds_dfi_v2_1.cusip.size + 
  finra_trace_btds_dfi_v2_1.bsym.size + 
  finra_trace_btds_dfi_v2_1.sub_product_type.size

-- Display: Label
finra_trace_btds_dfi_v2_1.label.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Label
finra_trace_btds_dfi_v2_1.label.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alphanumeric
  index, symbol = finra_trace_btds_dfi_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Cusip: Alphanumeric
  index, cusip = finra_trace_btds_dfi_v2_1.cusip.dissect(buffer, index, packet, parent)

  -- Bsym: Alphanumeric
  index, bsym = finra_trace_btds_dfi_v2_1.bsym.dissect(buffer, index, packet, parent)

  -- Sub Product Type: Alphanumeric
  index, sub_product_type = finra_trace_btds_dfi_v2_1.sub_product_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Label
finra_trace_btds_dfi_v2_1.label.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.label, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.label.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.label.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.label.fields(buffer, offset, packet, parent)
  end
end

-- Trading Halt Message
finra_trace_btds_dfi_v2_1.trading_halt_message = {}

-- Size: Trading Halt Message
finra_trace_btds_dfi_v2_1.trading_halt_message.size =
  finra_trace_btds_dfi_v2_1.message_header.size + 
  finra_trace_btds_dfi_v2_1.label.size + 
  finra_trace_btds_dfi_v2_1.issuer.size + 
  finra_trace_btds_dfi_v2_1.action.size + 
  finra_trace_btds_dfi_v2_1.action_datetime.size + 
  finra_trace_btds_dfi_v2_1.halt_reason.size

-- Display: Trading Halt Message
finra_trace_btds_dfi_v2_1.trading_halt_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Halt Message
finra_trace_btds_dfi_v2_1.trading_halt_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_trace_btds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Label: Struct of 4 fields
  index, label = finra_trace_btds_dfi_v2_1.label.dissect(buffer, index, packet, parent)

  -- Issuer: Alphanumeric
  index, issuer = finra_trace_btds_dfi_v2_1.issuer.dissect(buffer, index, packet, parent)

  -- Action: Alphabetic
  index, action = finra_trace_btds_dfi_v2_1.action.dissect(buffer, index, packet, parent)

  -- Action Datetime: Struct of 6 fields
  index, action_datetime = finra_trace_btds_dfi_v2_1.action_datetime.dissect(buffer, index, packet, parent)

  -- Halt Reason: Alphanumeric
  index, halt_reason = finra_trace_btds_dfi_v2_1.halt_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Halt Message
finra_trace_btds_dfi_v2_1.trading_halt_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.trading_halt_message, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.trading_halt_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.trading_halt_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.trading_halt_message.fields(buffer, offset, packet, parent)
  end
end

-- Daily Trade Summary Message
finra_trace_btds_dfi_v2_1.daily_trade_summary_message = {}

-- Size: Daily Trade Summary Message
finra_trace_btds_dfi_v2_1.daily_trade_summary_message.size =
  finra_trace_btds_dfi_v2_1.message_header.size + 
  finra_trace_btds_dfi_v2_1.label.size + 
  finra_trace_btds_dfi_v2_1.when_issued_indicator.size + 
  finra_trace_btds_dfi_v2_1.daily_high_price.size + 
  finra_trace_btds_dfi_v2_1.high_yield_direction.size + 
  finra_trace_btds_dfi_v2_1.daily_high_yield.size + 
  finra_trace_btds_dfi_v2_1.daily_low_price.size + 
  finra_trace_btds_dfi_v2_1.low_yield_direction.size + 
  finra_trace_btds_dfi_v2_1.daily_low_yield.size + 
  finra_trace_btds_dfi_v2_1.daily_close_price.size + 
  finra_trace_btds_dfi_v2_1.close_yield_direction.size + 
  finra_trace_btds_dfi_v2_1.daily_close_yield.size

-- Display: Daily Trade Summary Message
finra_trace_btds_dfi_v2_1.daily_trade_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Daily Trade Summary Message
finra_trace_btds_dfi_v2_1.daily_trade_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_trace_btds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Label: Struct of 4 fields
  index, label = finra_trace_btds_dfi_v2_1.label.dissect(buffer, index, packet, parent)

  -- When Issued Indicator: Alphanumeric
  index, when_issued_indicator = finra_trace_btds_dfi_v2_1.when_issued_indicator.dissect(buffer, index, packet, parent)

  -- Daily High Price: Numeric
  index, daily_high_price = finra_trace_btds_dfi_v2_1.daily_high_price.dissect(buffer, index, packet, parent)

  -- High Yield Direction: Alphanumeric
  index, high_yield_direction = finra_trace_btds_dfi_v2_1.high_yield_direction.dissect(buffer, index, packet, parent)

  -- Daily High Yield: Numeric
  index, daily_high_yield = finra_trace_btds_dfi_v2_1.daily_high_yield.dissect(buffer, index, packet, parent)

  -- Daily Low Price: Numeric
  index, daily_low_price = finra_trace_btds_dfi_v2_1.daily_low_price.dissect(buffer, index, packet, parent)

  -- Low Yield Direction: Alphanumeric
  index, low_yield_direction = finra_trace_btds_dfi_v2_1.low_yield_direction.dissect(buffer, index, packet, parent)

  -- Daily Low Yield: Numeric
  index, daily_low_yield = finra_trace_btds_dfi_v2_1.daily_low_yield.dissect(buffer, index, packet, parent)

  -- Daily Close Price: Numeric
  index, daily_close_price = finra_trace_btds_dfi_v2_1.daily_close_price.dissect(buffer, index, packet, parent)

  -- Close Yield Direction: Alphanumeric
  index, close_yield_direction = finra_trace_btds_dfi_v2_1.close_yield_direction.dissect(buffer, index, packet, parent)

  -- Daily Close Yield: Numeric
  index, daily_close_yield = finra_trace_btds_dfi_v2_1.daily_close_yield.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Daily Trade Summary Message
finra_trace_btds_dfi_v2_1.daily_trade_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.daily_trade_summary_message, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.daily_trade_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.daily_trade_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.daily_trade_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Administrative Message Payload
finra_trace_btds_dfi_v2_1.administrative_message_payload = {}

-- Dissect: Administrative Message Payload
finra_trace_btds_dfi_v2_1.administrative_message_payload.dissect = function(buffer, offset, packet, parent, administrative_message_type)
  -- Dissect Daily Trade Summary Message
  if administrative_message_type == "E" then
    return finra_trace_btds_dfi_v2_1.daily_trade_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Halt Message
  if administrative_message_type == "H" then
    return finra_trace_btds_dfi_v2_1.trading_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect General Administrative Message
  if administrative_message_type == "A" then
    return finra_trace_btds_dfi_v2_1.general_administrative_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Breadth Message
  if administrative_message_type == "1" then
    return finra_trace_btds_dfi_v2_1.market_breadth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Sentiment All Securities Message
  if administrative_message_type == "2" then
    return finra_trace_btds_dfi_v2_1.market_sentiment_all_securities_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Sentiment Investment Grade Message
  if administrative_message_type == "3" then
    return finra_trace_btds_dfi_v2_1.market_sentiment_investment_grade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Sentiment High Yield Message
  if administrative_message_type == "4" then
    return finra_trace_btds_dfi_v2_1.market_sentiment_high_yield_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Sentiment Convertible Bonds Message
  if administrative_message_type == "5" then
    return finra_trace_btds_dfi_v2_1.market_sentiment_convertible_bonds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Sentiment Church Bonds Message
  if administrative_message_type == "6" then
    return finra_trace_btds_dfi_v2_1.market_sentiment_church_bonds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Sentiment Equity Linked Notes Message
  if administrative_message_type == "7" then
    return finra_trace_btds_dfi_v2_1.market_sentiment_equity_linked_notes_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Administrative Message
finra_trace_btds_dfi_v2_1.administrative_message = {}

-- Calculate size of: Administrative Message
finra_trace_btds_dfi_v2_1.administrative_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_trace_btds_dfi_v2_1.administrative_message_type.size

  -- Calculate runtime size of Administrative Message Payload field
  local administrative_message_payload_offset = offset + index
  local administrative_message_payload_type = buffer(administrative_message_payload_offset - 1, 1):string()
  index = index + finra_trace_btds_dfi_v2_1.administrative_message_payload.size(buffer, administrative_message_payload_offset, administrative_message_payload_type)

  return index
end

-- Display: Administrative Message
finra_trace_btds_dfi_v2_1.administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Administrative Message
finra_trace_btds_dfi_v2_1.administrative_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Administrative Message Type: 1 Byte Ascii String Enum with 10 values
  index, administrative_message_type = finra_trace_btds_dfi_v2_1.administrative_message_type.dissect(buffer, index, packet, parent)

  -- Administrative Message Payload: Runtime Type with 10 branches
  index = finra_trace_btds_dfi_v2_1.administrative_message_payload.dissect(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative Message
finra_trace_btds_dfi_v2_1.administrative_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.administrative_message, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.administrative_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.administrative_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.administrative_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Summary Information
finra_trace_btds_dfi_v2_1.trade_summary_information = {}

-- Size: Trade Summary Information
finra_trace_btds_dfi_v2_1.trade_summary_information.size =
  finra_trace_btds_dfi_v2_1.high_price.size + 
  finra_trace_btds_dfi_v2_1.high_yield_direction.size + 
  finra_trace_btds_dfi_v2_1.high_yield.size + 
  finra_trace_btds_dfi_v2_1.low_price.size + 
  finra_trace_btds_dfi_v2_1.low_yield_direction.size + 
  finra_trace_btds_dfi_v2_1.low_yield.size + 
  finra_trace_btds_dfi_v2_1.last_sale_price.size + 
  finra_trace_btds_dfi_v2_1.last_sale_yield_direction.size + 
  finra_trace_btds_dfi_v2_1.last_sale_yield.size + 
  finra_trace_btds_dfi_v2_1.change_indicator.size

-- Display: Trade Summary Information
finra_trace_btds_dfi_v2_1.trade_summary_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Summary Information
finra_trace_btds_dfi_v2_1.trade_summary_information.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- High Price: Numeric
  index, high_price = finra_trace_btds_dfi_v2_1.high_price.dissect(buffer, index, packet, parent)

  -- High Yield Direction: Alphanumeric
  index, high_yield_direction = finra_trace_btds_dfi_v2_1.high_yield_direction.dissect(buffer, index, packet, parent)

  -- High Yield: Numeric
  index, high_yield = finra_trace_btds_dfi_v2_1.high_yield.dissect(buffer, index, packet, parent)

  -- Low Price: Numeric
  index, low_price = finra_trace_btds_dfi_v2_1.low_price.dissect(buffer, index, packet, parent)

  -- Low Yield Direction: Alphanumeric
  index, low_yield_direction = finra_trace_btds_dfi_v2_1.low_yield_direction.dissect(buffer, index, packet, parent)

  -- Low Yield: Numeric
  index, low_yield = finra_trace_btds_dfi_v2_1.low_yield.dissect(buffer, index, packet, parent)

  -- Last Sale Price: Numeric
  index, last_sale_price = finra_trace_btds_dfi_v2_1.last_sale_price.dissect(buffer, index, packet, parent)

  -- Last Sale Yield Direction: Alphanumeric
  index, last_sale_yield_direction = finra_trace_btds_dfi_v2_1.last_sale_yield_direction.dissect(buffer, index, packet, parent)

  -- Last Sale Yield: Numeric
  index, last_sale_yield = finra_trace_btds_dfi_v2_1.last_sale_yield.dissect(buffer, index, packet, parent)

  -- Change Indicator: Alphanumeric
  index, change_indicator = finra_trace_btds_dfi_v2_1.change_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Summary Information
finra_trace_btds_dfi_v2_1.trade_summary_information.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.trade_summary_information, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.trade_summary_information.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.trade_summary_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.trade_summary_information.fields(buffer, offset, packet, parent)
  end
end

-- Settlement Date
finra_trace_btds_dfi_v2_1.settlement_date = {}

-- Size: Settlement Date
finra_trace_btds_dfi_v2_1.settlement_date.size =
  finra_trace_btds_dfi_v2_1.year.size + 
  finra_trace_btds_dfi_v2_1.month.size + 
  finra_trace_btds_dfi_v2_1.day.size

-- Display: Settlement Date
finra_trace_btds_dfi_v2_1.settlement_date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Settlement Date
finra_trace_btds_dfi_v2_1.settlement_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: Numeric
  index, year = finra_trace_btds_dfi_v2_1.year.dissect(buffer, index, packet, parent)

  -- Month: Numeric
  index, month = finra_trace_btds_dfi_v2_1.month.dissect(buffer, index, packet, parent)

  -- Day: Numeric
  index, day = finra_trace_btds_dfi_v2_1.day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Settlement Date
finra_trace_btds_dfi_v2_1.settlement_date.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.settlement_date, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.settlement_date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.settlement_date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.settlement_date.fields(buffer, offset, packet, parent)
  end
end

-- Execution Datetime
finra_trace_btds_dfi_v2_1.execution_datetime = {}

-- Size: Execution Datetime
finra_trace_btds_dfi_v2_1.execution_datetime.size =
  finra_trace_btds_dfi_v2_1.year.size + 
  finra_trace_btds_dfi_v2_1.month.size + 
  finra_trace_btds_dfi_v2_1.day.size + 
  finra_trace_btds_dfi_v2_1.hour.size + 
  finra_trace_btds_dfi_v2_1.minute.size + 
  finra_trace_btds_dfi_v2_1.second.size

-- Display: Execution Datetime
finra_trace_btds_dfi_v2_1.execution_datetime.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Datetime
finra_trace_btds_dfi_v2_1.execution_datetime.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: Numeric
  index, year = finra_trace_btds_dfi_v2_1.year.dissect(buffer, index, packet, parent)

  -- Month: Numeric
  index, month = finra_trace_btds_dfi_v2_1.month.dissect(buffer, index, packet, parent)

  -- Day: Numeric
  index, day = finra_trace_btds_dfi_v2_1.day.dissect(buffer, index, packet, parent)

  -- Hour: Numeric
  index, hour = finra_trace_btds_dfi_v2_1.hour.dissect(buffer, index, packet, parent)

  -- Minute: Numeric
  index, minute = finra_trace_btds_dfi_v2_1.minute.dissect(buffer, index, packet, parent)

  -- Second: Numeric
  index, second = finra_trace_btds_dfi_v2_1.second.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Datetime
finra_trace_btds_dfi_v2_1.execution_datetime.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.execution_datetime, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.execution_datetime.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.execution_datetime.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.execution_datetime.fields(buffer, offset, packet, parent)
  end
end

-- Correction Trade Information
finra_trace_btds_dfi_v2_1.correction_trade_information = {}

-- Size: Correction Trade Information
finra_trace_btds_dfi_v2_1.correction_trade_information.size =
  finra_trace_btds_dfi_v2_1.quantity_indicator.size + 
  finra_trace_btds_dfi_v2_1.quantity.size + 
  finra_trace_btds_dfi_v2_1.price.size + 
  finra_trace_btds_dfi_v2_1.remuneration.size + 
  finra_trace_btds_dfi_v2_1.special_price_indicator.size + 
  finra_trace_btds_dfi_v2_1.side.size + 
  finra_trace_btds_dfi_v2_1.as_of_indicator.size + 
  finra_trace_btds_dfi_v2_1.execution_datetime.size + 
  finra_trace_btds_dfi_v2_1.future_use.size + 
  finra_trace_btds_dfi_v2_1.sale_condition_3.size + 
  finra_trace_btds_dfi_v2_1.sale_condition_4.size + 
  finra_trace_btds_dfi_v2_1.settlement_date.size + 
  finra_trace_btds_dfi_v2_1.yield_direction.size + 
  finra_trace_btds_dfi_v2_1.yield.size + 
  finra_trace_btds_dfi_v2_1.when_issued_indicator.size + 
  finra_trace_btds_dfi_v2_1.reporting_party_type.size + 
  finra_trace_btds_dfi_v2_1.contra_party_type.size + 
  finra_trace_btds_dfi_v2_1.ats_indicator.size

-- Display: Correction Trade Information
finra_trace_btds_dfi_v2_1.correction_trade_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Correction Trade Information
finra_trace_btds_dfi_v2_1.correction_trade_information.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quantity Indicator: Alphabetic
  index, quantity_indicator = finra_trace_btds_dfi_v2_1.quantity_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Alphanumeric
  index, quantity = finra_trace_btds_dfi_v2_1.quantity.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = finra_trace_btds_dfi_v2_1.price.dissect(buffer, index, packet, parent)

  -- Remuneration: Alphabetic
  index, remuneration = finra_trace_btds_dfi_v2_1.remuneration.dissect(buffer, index, packet, parent)

  -- Special Price Indicator: Alphanumeric
  index, special_price_indicator = finra_trace_btds_dfi_v2_1.special_price_indicator.dissect(buffer, index, packet, parent)

  -- Side: Alphabetic
  index, side = finra_trace_btds_dfi_v2_1.side.dissect(buffer, index, packet, parent)

  -- As Of Indicator: Alphabetic
  index, as_of_indicator = finra_trace_btds_dfi_v2_1.as_of_indicator.dissect(buffer, index, packet, parent)

  -- Execution Datetime: Struct of 6 fields
  index, execution_datetime = finra_trace_btds_dfi_v2_1.execution_datetime.dissect(buffer, index, packet, parent)

  -- Future Use: Alphanumeric
  index, future_use = finra_trace_btds_dfi_v2_1.future_use.dissect(buffer, index, packet, parent)

  -- Sale Condition 3: Alphanumeric
  index, sale_condition_3 = finra_trace_btds_dfi_v2_1.sale_condition_3.dissect(buffer, index, packet, parent)

  -- Sale Condition 4: Alphanumeric
  index, sale_condition_4 = finra_trace_btds_dfi_v2_1.sale_condition_4.dissect(buffer, index, packet, parent)

  -- Settlement Date: Struct of 3 fields
  index, settlement_date = finra_trace_btds_dfi_v2_1.settlement_date.dissect(buffer, index, packet, parent)

  -- Yield Direction: Alphanumeric
  index, yield_direction = finra_trace_btds_dfi_v2_1.yield_direction.dissect(buffer, index, packet, parent)

  -- Yield: Numeric
  index, yield = finra_trace_btds_dfi_v2_1.yield.dissect(buffer, index, packet, parent)

  -- When Issued Indicator: Alphanumeric
  index, when_issued_indicator = finra_trace_btds_dfi_v2_1.when_issued_indicator.dissect(buffer, index, packet, parent)

  -- Reporting Party Type: Alphabetic
  index, reporting_party_type = finra_trace_btds_dfi_v2_1.reporting_party_type.dissect(buffer, index, packet, parent)

  -- Contra Party Type: Alphabetic
  index, contra_party_type = finra_trace_btds_dfi_v2_1.contra_party_type.dissect(buffer, index, packet, parent)

  -- Ats Indicator: Alphabetic
  index, ats_indicator = finra_trace_btds_dfi_v2_1.ats_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Correction Trade Information
finra_trace_btds_dfi_v2_1.correction_trade_information.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.correction_trade_information, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.correction_trade_information.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.correction_trade_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.correction_trade_information.fields(buffer, offset, packet, parent)
  end
end

-- Original Trade Information
finra_trace_btds_dfi_v2_1.original_trade_information = {}

-- Size: Original Trade Information
finra_trace_btds_dfi_v2_1.original_trade_information.size =
  finra_trace_btds_dfi_v2_1.quantity_indicator.size + 
  finra_trace_btds_dfi_v2_1.quantity.size + 
  finra_trace_btds_dfi_v2_1.price.size + 
  finra_trace_btds_dfi_v2_1.remuneration.size + 
  finra_trace_btds_dfi_v2_1.special_price_indicator.size + 
  finra_trace_btds_dfi_v2_1.side.size + 
  finra_trace_btds_dfi_v2_1.as_of_indicator.size + 
  finra_trace_btds_dfi_v2_1.execution_datetime.size + 
  finra_trace_btds_dfi_v2_1.future_use.size + 
  finra_trace_btds_dfi_v2_1.sale_condition_3.size + 
  finra_trace_btds_dfi_v2_1.sale_condition_4.size + 
  finra_trace_btds_dfi_v2_1.settlement_date.size + 
  finra_trace_btds_dfi_v2_1.yield_direction.size + 
  finra_trace_btds_dfi_v2_1.yield.size + 
  finra_trace_btds_dfi_v2_1.when_issued_indicator.size + 
  finra_trace_btds_dfi_v2_1.reporting_party_type.size + 
  finra_trace_btds_dfi_v2_1.contra_party_type.size + 
  finra_trace_btds_dfi_v2_1.ats_indicator.size

-- Display: Original Trade Information
finra_trace_btds_dfi_v2_1.original_trade_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Original Trade Information
finra_trace_btds_dfi_v2_1.original_trade_information.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quantity Indicator: Alphabetic
  index, quantity_indicator = finra_trace_btds_dfi_v2_1.quantity_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Alphanumeric
  index, quantity = finra_trace_btds_dfi_v2_1.quantity.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = finra_trace_btds_dfi_v2_1.price.dissect(buffer, index, packet, parent)

  -- Remuneration: Alphabetic
  index, remuneration = finra_trace_btds_dfi_v2_1.remuneration.dissect(buffer, index, packet, parent)

  -- Special Price Indicator: Alphanumeric
  index, special_price_indicator = finra_trace_btds_dfi_v2_1.special_price_indicator.dissect(buffer, index, packet, parent)

  -- Side: Alphabetic
  index, side = finra_trace_btds_dfi_v2_1.side.dissect(buffer, index, packet, parent)

  -- As Of Indicator: Alphabetic
  index, as_of_indicator = finra_trace_btds_dfi_v2_1.as_of_indicator.dissect(buffer, index, packet, parent)

  -- Execution Datetime: Struct of 6 fields
  index, execution_datetime = finra_trace_btds_dfi_v2_1.execution_datetime.dissect(buffer, index, packet, parent)

  -- Future Use: Alphanumeric
  index, future_use = finra_trace_btds_dfi_v2_1.future_use.dissect(buffer, index, packet, parent)

  -- Sale Condition 3: Alphanumeric
  index, sale_condition_3 = finra_trace_btds_dfi_v2_1.sale_condition_3.dissect(buffer, index, packet, parent)

  -- Sale Condition 4: Alphanumeric
  index, sale_condition_4 = finra_trace_btds_dfi_v2_1.sale_condition_4.dissect(buffer, index, packet, parent)

  -- Settlement Date: Struct of 3 fields
  index, settlement_date = finra_trace_btds_dfi_v2_1.settlement_date.dissect(buffer, index, packet, parent)

  -- Yield Direction: Alphanumeric
  index, yield_direction = finra_trace_btds_dfi_v2_1.yield_direction.dissect(buffer, index, packet, parent)

  -- Yield: Numeric
  index, yield = finra_trace_btds_dfi_v2_1.yield.dissect(buffer, index, packet, parent)

  -- When Issued Indicator: Alphanumeric
  index, when_issued_indicator = finra_trace_btds_dfi_v2_1.when_issued_indicator.dissect(buffer, index, packet, parent)

  -- Reporting Party Type: Alphabetic
  index, reporting_party_type = finra_trace_btds_dfi_v2_1.reporting_party_type.dissect(buffer, index, packet, parent)

  -- Contra Party Type: Alphabetic
  index, contra_party_type = finra_trace_btds_dfi_v2_1.contra_party_type.dissect(buffer, index, packet, parent)

  -- Ats Indicator: Alphabetic
  index, ats_indicator = finra_trace_btds_dfi_v2_1.ats_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Original Trade Information
finra_trace_btds_dfi_v2_1.original_trade_information.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.original_trade_information, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.original_trade_information.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.original_trade_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.original_trade_information.fields(buffer, offset, packet, parent)
  end
end

-- Original Dissemination Date
finra_trace_btds_dfi_v2_1.original_dissemination_date = {}

-- Size: Original Dissemination Date
finra_trace_btds_dfi_v2_1.original_dissemination_date.size =
  finra_trace_btds_dfi_v2_1.year.size + 
  finra_trace_btds_dfi_v2_1.month.size + 
  finra_trace_btds_dfi_v2_1.day.size

-- Display: Original Dissemination Date
finra_trace_btds_dfi_v2_1.original_dissemination_date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Original Dissemination Date
finra_trace_btds_dfi_v2_1.original_dissemination_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: Numeric
  index, year = finra_trace_btds_dfi_v2_1.year.dissect(buffer, index, packet, parent)

  -- Month: Numeric
  index, month = finra_trace_btds_dfi_v2_1.month.dissect(buffer, index, packet, parent)

  -- Day: Numeric
  index, day = finra_trace_btds_dfi_v2_1.day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Original Dissemination Date
finra_trace_btds_dfi_v2_1.original_dissemination_date.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.original_dissemination_date, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.original_dissemination_date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.original_dissemination_date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.original_dissemination_date.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction Message
finra_trace_btds_dfi_v2_1.trade_correction_message = {}

-- Size: Trade Correction Message
finra_trace_btds_dfi_v2_1.trade_correction_message.size =
  finra_trace_btds_dfi_v2_1.message_header.size + 
  finra_trace_btds_dfi_v2_1.label.size + 
  finra_trace_btds_dfi_v2_1.original_dissemination_date.size + 
  finra_trace_btds_dfi_v2_1.original_trade_identifier.size + 
  finra_trace_btds_dfi_v2_1.report_function.size + 
  finra_trace_btds_dfi_v2_1.original_trade_information.size + 
  finra_trace_btds_dfi_v2_1.correction_trade_information.size + 
  finra_trace_btds_dfi_v2_1.trade_summary_information.size

-- Display: Trade Correction Message
finra_trace_btds_dfi_v2_1.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
finra_trace_btds_dfi_v2_1.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_trace_btds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Label: Struct of 4 fields
  index, label = finra_trace_btds_dfi_v2_1.label.dissect(buffer, index, packet, parent)

  -- Original Dissemination Date: Struct of 3 fields
  index, original_dissemination_date = finra_trace_btds_dfi_v2_1.original_dissemination_date.dissect(buffer, index, packet, parent)

  -- Original Trade Identifier: Numeric
  index, original_trade_identifier = finra_trace_btds_dfi_v2_1.original_trade_identifier.dissect(buffer, index, packet, parent)

  -- Report Function: Alphabetic
  index, report_function = finra_trace_btds_dfi_v2_1.report_function.dissect(buffer, index, packet, parent)

  -- Original Trade Information: Struct of 18 fields
  index, original_trade_information = finra_trace_btds_dfi_v2_1.original_trade_information.dissect(buffer, index, packet, parent)

  -- Correction Trade Information: Struct of 18 fields
  index, correction_trade_information = finra_trace_btds_dfi_v2_1.correction_trade_information.dissect(buffer, index, packet, parent)

  -- Trade Summary Information: Struct of 10 fields
  index, trade_summary_information = finra_trace_btds_dfi_v2_1.trade_summary_information.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
finra_trace_btds_dfi_v2_1.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.trade_correction_message, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Message
finra_trace_btds_dfi_v2_1.trade_cancel_message = {}

-- Size: Trade Cancel Message
finra_trace_btds_dfi_v2_1.trade_cancel_message.size =
  finra_trace_btds_dfi_v2_1.message_header.size + 
  finra_trace_btds_dfi_v2_1.label.size + 
  finra_trace_btds_dfi_v2_1.original_dissemination_date.size + 
  finra_trace_btds_dfi_v2_1.original_trade_identifier.size + 
  finra_trace_btds_dfi_v2_1.report_function.size + 
  finra_trace_btds_dfi_v2_1.original_trade_information.size + 
  finra_trace_btds_dfi_v2_1.trade_summary_information.size

-- Display: Trade Cancel Message
finra_trace_btds_dfi_v2_1.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
finra_trace_btds_dfi_v2_1.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_trace_btds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Label: Struct of 4 fields
  index, label = finra_trace_btds_dfi_v2_1.label.dissect(buffer, index, packet, parent)

  -- Original Dissemination Date: Struct of 3 fields
  index, original_dissemination_date = finra_trace_btds_dfi_v2_1.original_dissemination_date.dissect(buffer, index, packet, parent)

  -- Original Trade Identifier: Numeric
  index, original_trade_identifier = finra_trace_btds_dfi_v2_1.original_trade_identifier.dissect(buffer, index, packet, parent)

  -- Report Function: Alphabetic
  index, report_function = finra_trace_btds_dfi_v2_1.report_function.dissect(buffer, index, packet, parent)

  -- Original Trade Information: Struct of 18 fields
  index, original_trade_information = finra_trace_btds_dfi_v2_1.original_trade_information.dissect(buffer, index, packet, parent)

  -- Trade Summary Information: Struct of 10 fields
  index, trade_summary_information = finra_trace_btds_dfi_v2_1.trade_summary_information.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
finra_trace_btds_dfi_v2_1.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.trade_cancel_message, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Information
finra_trace_btds_dfi_v2_1.trade_information = {}

-- Size: Trade Information
finra_trace_btds_dfi_v2_1.trade_information.size =
  finra_trace_btds_dfi_v2_1.quantity_indicator.size + 
  finra_trace_btds_dfi_v2_1.quantity.size + 
  finra_trace_btds_dfi_v2_1.price.size + 
  finra_trace_btds_dfi_v2_1.remuneration.size + 
  finra_trace_btds_dfi_v2_1.special_price_indicator.size + 
  finra_trace_btds_dfi_v2_1.side.size + 
  finra_trace_btds_dfi_v2_1.as_of_indicator.size + 
  finra_trace_btds_dfi_v2_1.execution_datetime.size + 
  finra_trace_btds_dfi_v2_1.future_use.size + 
  finra_trace_btds_dfi_v2_1.sale_condition_3.size + 
  finra_trace_btds_dfi_v2_1.sale_condition_4.size + 
  finra_trace_btds_dfi_v2_1.settlement_date.size + 
  finra_trace_btds_dfi_v2_1.yield_direction.size + 
  finra_trace_btds_dfi_v2_1.yield.size + 
  finra_trace_btds_dfi_v2_1.when_issued_indicator.size + 
  finra_trace_btds_dfi_v2_1.reporting_party_type.size + 
  finra_trace_btds_dfi_v2_1.contra_party_type.size + 
  finra_trace_btds_dfi_v2_1.ats_indicator.size

-- Display: Trade Information
finra_trace_btds_dfi_v2_1.trade_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Information
finra_trace_btds_dfi_v2_1.trade_information.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quantity Indicator: Alphabetic
  index, quantity_indicator = finra_trace_btds_dfi_v2_1.quantity_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Alphanumeric
  index, quantity = finra_trace_btds_dfi_v2_1.quantity.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = finra_trace_btds_dfi_v2_1.price.dissect(buffer, index, packet, parent)

  -- Remuneration: Alphabetic
  index, remuneration = finra_trace_btds_dfi_v2_1.remuneration.dissect(buffer, index, packet, parent)

  -- Special Price Indicator: Alphanumeric
  index, special_price_indicator = finra_trace_btds_dfi_v2_1.special_price_indicator.dissect(buffer, index, packet, parent)

  -- Side: Alphabetic
  index, side = finra_trace_btds_dfi_v2_1.side.dissect(buffer, index, packet, parent)

  -- As Of Indicator: Alphabetic
  index, as_of_indicator = finra_trace_btds_dfi_v2_1.as_of_indicator.dissect(buffer, index, packet, parent)

  -- Execution Datetime: Struct of 6 fields
  index, execution_datetime = finra_trace_btds_dfi_v2_1.execution_datetime.dissect(buffer, index, packet, parent)

  -- Future Use: Alphanumeric
  index, future_use = finra_trace_btds_dfi_v2_1.future_use.dissect(buffer, index, packet, parent)

  -- Sale Condition 3: Alphanumeric
  index, sale_condition_3 = finra_trace_btds_dfi_v2_1.sale_condition_3.dissect(buffer, index, packet, parent)

  -- Sale Condition 4: Alphanumeric
  index, sale_condition_4 = finra_trace_btds_dfi_v2_1.sale_condition_4.dissect(buffer, index, packet, parent)

  -- Settlement Date: Struct of 3 fields
  index, settlement_date = finra_trace_btds_dfi_v2_1.settlement_date.dissect(buffer, index, packet, parent)

  -- Yield Direction: Alphanumeric
  index, yield_direction = finra_trace_btds_dfi_v2_1.yield_direction.dissect(buffer, index, packet, parent)

  -- Yield: Numeric
  index, yield = finra_trace_btds_dfi_v2_1.yield.dissect(buffer, index, packet, parent)

  -- When Issued Indicator: Alphanumeric
  index, when_issued_indicator = finra_trace_btds_dfi_v2_1.when_issued_indicator.dissect(buffer, index, packet, parent)

  -- Reporting Party Type: Alphabetic
  index, reporting_party_type = finra_trace_btds_dfi_v2_1.reporting_party_type.dissect(buffer, index, packet, parent)

  -- Contra Party Type: Alphabetic
  index, contra_party_type = finra_trace_btds_dfi_v2_1.contra_party_type.dissect(buffer, index, packet, parent)

  -- Ats Indicator: Alphabetic
  index, ats_indicator = finra_trace_btds_dfi_v2_1.ats_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Information
finra_trace_btds_dfi_v2_1.trade_information.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.trade_information, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.trade_information.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.trade_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.trade_information.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Message
finra_trace_btds_dfi_v2_1.trade_report_message = {}

-- Size: Trade Report Message
finra_trace_btds_dfi_v2_1.trade_report_message.size =
  finra_trace_btds_dfi_v2_1.message_header.size + 
  finra_trace_btds_dfi_v2_1.label.size + 
  finra_trace_btds_dfi_v2_1.original_dissemination_date.size + 
  finra_trace_btds_dfi_v2_1.trade_information.size + 
  finra_trace_btds_dfi_v2_1.change_indicator.size

-- Display: Trade Report Message
finra_trace_btds_dfi_v2_1.trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
finra_trace_btds_dfi_v2_1.trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_trace_btds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Label: Struct of 4 fields
  index, label = finra_trace_btds_dfi_v2_1.label.dissect(buffer, index, packet, parent)

  -- Original Dissemination Date: Struct of 3 fields
  index, original_dissemination_date = finra_trace_btds_dfi_v2_1.original_dissemination_date.dissect(buffer, index, packet, parent)

  -- Trade Information: Struct of 18 fields
  index, trade_information = finra_trace_btds_dfi_v2_1.trade_information.dissect(buffer, index, packet, parent)

  -- Change Indicator: Alphanumeric
  index, change_indicator = finra_trace_btds_dfi_v2_1.change_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
finra_trace_btds_dfi_v2_1.trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.trade_report_message, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message Payload
finra_trace_btds_dfi_v2_1.trade_message_payload = {}

-- Dissect: Trade Message Payload
finra_trace_btds_dfi_v2_1.trade_message_payload.dissect = function(buffer, offset, packet, parent, trade_message_type)
  -- Dissect Trade Report Message
  if trade_message_type == "M" then
    return finra_trace_btds_dfi_v2_1.trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if trade_message_type == "N" then
    return finra_trace_btds_dfi_v2_1.trade_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if trade_message_type == "O" then
    return finra_trace_btds_dfi_v2_1.trade_correction_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Trade Message
finra_trace_btds_dfi_v2_1.trade_message = {}

-- Calculate size of: Trade Message
finra_trace_btds_dfi_v2_1.trade_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_trace_btds_dfi_v2_1.trade_message_type.size

  -- Calculate runtime size of Trade Message Payload field
  local trade_message_payload_offset = offset + index
  local trade_message_payload_type = buffer(trade_message_payload_offset - 1, 1):string()
  index = index + finra_trace_btds_dfi_v2_1.trade_message_payload.size(buffer, trade_message_payload_offset, trade_message_payload_type)

  return index
end

-- Display: Trade Message
finra_trace_btds_dfi_v2_1.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
finra_trace_btds_dfi_v2_1.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Message Type: 1 Byte Ascii String Enum with 3 values
  index, trade_message_type = finra_trace_btds_dfi_v2_1.trade_message_type.dissect(buffer, index, packet, parent)

  -- Trade Message Payload: Runtime Type with 3 branches
  index = finra_trace_btds_dfi_v2_1.trade_message_payload.dissect(buffer, index, packet, parent, trade_message_type)

  return index
end

-- Dissect: Trade Message
finra_trace_btds_dfi_v2_1.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.trade_message, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
finra_trace_btds_dfi_v2_1.payload = {}

-- Dissect: Payload
finra_trace_btds_dfi_v2_1.payload.dissect = function(buffer, offset, packet, parent, message_category)
  -- Dissect Trade Message
  if message_category == "T" then
    return finra_trace_btds_dfi_v2_1.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Administrative Message
  if message_category == "A" then
    return finra_trace_btds_dfi_v2_1.administrative_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Control Message
  if message_category == "C" then
    return finra_trace_btds_dfi_v2_1.control_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Mold Udp64
finra_trace_btds_dfi_v2_1.mold_udp64 = {}

-- Size: Mold Udp64
finra_trace_btds_dfi_v2_1.mold_udp64.size =
  finra_trace_btds_dfi_v2_1.length.size + 
  finra_trace_btds_dfi_v2_1.message_category.size

-- Display: Mold Udp64
finra_trace_btds_dfi_v2_1.mold_udp64.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mold Udp64
finra_trace_btds_dfi_v2_1.mold_udp64.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = finra_trace_btds_dfi_v2_1.length.dissect(buffer, index, packet, parent)

  -- Message Category: 1 Byte Ascii String Enum with 3 values
  index, message_category = finra_trace_btds_dfi_v2_1.message_category.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mold Udp64
finra_trace_btds_dfi_v2_1.mold_udp64.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.mold_udp64, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.mold_udp64.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.mold_udp64.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.mold_udp64.fields(buffer, offset, packet, parent)
  end
end

-- Message
finra_trace_btds_dfi_v2_1.message = {}

-- Display: Message
finra_trace_btds_dfi_v2_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
finra_trace_btds_dfi_v2_1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Mold Udp64: Struct of 2 fields
  index, mold_udp64 = finra_trace_btds_dfi_v2_1.mold_udp64.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 3 branches
  index = finra_trace_btds_dfi_v2_1.payload.dissect(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
finra_trace_btds_dfi_v2_1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.message, buffer(offset, 0))
    local current = finra_trace_btds_dfi_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = finra_trace_btds_dfi_v2_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    finra_trace_btds_dfi_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
finra_trace_btds_dfi_v2_1.packet_header = {}

-- Size: Packet Header
finra_trace_btds_dfi_v2_1.packet_header.size =
  finra_trace_btds_dfi_v2_1.session.size + 
  finra_trace_btds_dfi_v2_1.sequence.size + 
  finra_trace_btds_dfi_v2_1.count.size

-- Display: Packet Header
finra_trace_btds_dfi_v2_1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
finra_trace_btds_dfi_v2_1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = finra_trace_btds_dfi_v2_1.session.dissect(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = finra_trace_btds_dfi_v2_1.sequence.dissect(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = finra_trace_btds_dfi_v2_1.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
finra_trace_btds_dfi_v2_1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_trace_btds_dfi_v2_1.fields.packet_header, buffer(offset, 0))
    local index = finra_trace_btds_dfi_v2_1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_trace_btds_dfi_v2_1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_trace_btds_dfi_v2_1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
finra_trace_btds_dfi_v2_1.packet = {}

-- Verify required size of Udp packet
finra_trace_btds_dfi_v2_1.packet.requiredsize = function(buffer)
  return buffer:len() >= finra_trace_btds_dfi_v2_1.packet_header.size
end

-- Dissect Packet
finra_trace_btds_dfi_v2_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = finra_trace_btds_dfi_v2_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Count
  local count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Length
    local length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = length + 2

    -- Message: Struct of 2 fields
    index, message = finra_trace_btds_dfi_v2_1.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_finra_trace_btds_dfi_v2_1.init()
end

-- Dissector for Finra Trace Btds Dfi 2.1
function omi_finra_trace_btds_dfi_v2_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_finra_trace_btds_dfi_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_finra_trace_btds_dfi_v2_1, buffer(), omi_finra_trace_btds_dfi_v2_1.description, "("..buffer:len().." Bytes)")
  return finra_trace_btds_dfi_v2_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Finra Trace Btds Dfi 2.1 (Udp)
local function omi_finra_trace_btds_dfi_v2_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not finra_trace_btds_dfi_v2_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_finra_trace_btds_dfi_v2_1
  omi_finra_trace_btds_dfi_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Finra Trace Btds Dfi 2.1
omi_finra_trace_btds_dfi_v2_1:register_heuristic("udp", omi_finra_trace_btds_dfi_v2_1_udp_heuristic)

-- Register Finra Trace Btds Dfi 2.1 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_finra_trace_btds_dfi_v2_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Financial Industry Regulatory Authority
--   Version: 2.1
--   Date: Thursday, March 21, 2024
--   Specification: FINRA BTDS Specification (MOLD 2.1).pdf
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
