-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx Mx SolaOrderEntry Sail 1.21 Protocol
local omi_tmx_mx_solaorderentry_sail_v1_21 = Proto("Omi.Tmx.Mx.SolaOrderEntry.Sail.v1.21", "Tmx Mx SolaOrderEntry Sail 1.21")

-- Protocol table
local tmx_mx_solaorderentry_sail_v1_21 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tmx Mx SolaOrderEntry Sail 1.21 Fields
omi_tmx_mx_solaorderentry_sail_v1_21.fields.account_type = ProtoField.new("Account Type", "tmx.mx.solaorderentry.sail.v1.21.accounttype", ftypes.STRING, nil, nil, nil, "Identifies the type of account: 1 = Customer 2 = House 4 = Pro 5 = Non Client D = Non Client Shareholder H = Customer Shareholder I = Customer Insider L = Pro Shareholder N = House Insider O = House Shareholder R = Non Client Insider S = Pro Insider A combination of the above values without a comma may be used, but only within the GZ: User Global Cancellation message (see AccountType List below).")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.account_type_filter = ProtoField.new("Account Type Filter", "tmx.mx.solaorderentry.sail.v1.21.accounttypefilter", ftypes.STRING, nil, nil, nil, "List of account types: ‘24’ for both House and Pro ‘12’ for both Customer and House")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.active_y_on_n_off = ProtoField.new("Active Y On N Off", "tmx.mx.solaorderentry.sail.v1.21.activeyonnoff", ftypes.STRING, nil, nil, nil, "Y = Yes N = No")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.additional_price = ProtoField.new("Additional Price", "tmx.mx.solaorderentry.sail.v1.21.additionalprice", ftypes.STRING, nil, nil, nil, "If Special Price Term is equal to ‘S’, this field represents the trigger price: i.e., the price from which a STOP order will be triggered. Note: Mandatory if Special Price Term is different from spaces.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.additional_quantity = ProtoField.new("Additional Quantity", "tmx.mx.solaorderentry.sail.v1.21.additionalquantity", ftypes.UINT32, nil, nil, nil, "Minimum Quantity Indicates the number of contracts that the trader wishes to trade on the market as soon as the order is introduced. If the market situation allows this minimum amount to be filled immediately, the balance of the order is put in the order book. Otherwise, the order is automatically eliminated. Disclosed Quantity • Indicates the number of contracts that the trader wishes to display on the market sheet • Must be different from ‘0’ if Quantity Term is equal to ‘M’ or ‘D’ • Must be lower than the number in the Quantity field")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.alignment_padding = ProtoField.new("Alignment Padding", "tmx.mx.solaorderentry.sail.v1.21.alignmentpadding", ftypes.BYTES, nil, nil, nil, "Spaces for alignment, up to three bytes")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.anti_wash_id = ProtoField.new("Anti Wash Id", "tmx.mx.solaorderentry.sail.v1.21.antiwashid", ftypes.STRING, nil, nil, nil, "Anti-Wash ID for the Wash Trade Protection. Note: This field cannot be empty if the AntiWashInstruction is set to a value.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.anti_wash_instruction = ProtoField.new("Anti Wash Instruction", "tmx.mx.solaorderentry.sail.v1.21.antiwashinstruction", ftypes.STRING, nil, nil, nil, "Anti-Wash instruction to indicate how to handle the trade situation: B = CancelBothInboundOrderAndOpposite RestingOrder I = CancelInboundOrder O = CancelOppositeRestingOrder Note: This field is not provided if the AntiWashId field is empty. Note: This field must be provided if the AntiWashId field is not empty.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.assigned_price = ProtoField.new("Assigned Price", "tmx.mx.solaorderentry.sail.v1.21.assignedprice", ftypes.STRING, nil, nil, nil, "Price assigned by the system")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_command_acknowledgement_occurrence = ProtoField.new("Bulk Command Acknowledgement Occurrence", "tmx.mx.solaorderentry.sail.v1.21.bulkcommandacknowledgementoccurrence", ftypes.STRING, nil, nil, nil, "The guide states this block as (1 to 1000 occurrences).")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_acknowledgement_occurrence = ProtoField.new("Bulk Quote Acknowledgement Occurrence", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteacknowledgementoccurrence", ftypes.STRING, nil, nil, nil, "The guide states this block as (1 to 280 occurrences).")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_occurrence = ProtoField.new("Bulk Quote Occurrence", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteoccurrence", ftypes.STRING, nil, nil, nil, "1 to 280 occurrences")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_10_quantity_2_occurrence = ProtoField.new("Bulk Quote Price 10 Quantity 2 Occurrence", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice10quantity2occurrence", ftypes.STRING, nil, nil, nil, "1 to 280 occurrences")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_10_quantity_4_occurrence = ProtoField.new("Bulk Quote Price 10 Quantity 4 Occurrence", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice10quantity4occurrence", ftypes.STRING, nil, nil, nil, "1 to 280 occurrences")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_10_quantity_6_occurrence = ProtoField.new("Bulk Quote Price 10 Quantity 6 Occurrence", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice10quantity6occurrence", ftypes.STRING, nil, nil, nil, "1 to 280 occurrences")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_2_occurrence = ProtoField.new("Bulk Quote Price 4 Quantity 2 Occurrence", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice4quantity2occurrence", ftypes.STRING, nil, nil, nil, "1 to 280 occurrences")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_4_occurrence = ProtoField.new("Bulk Quote Price 4 Quantity 4 Occurrence", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice4quantity4occurrence", ftypes.STRING, nil, nil, nil, "1 to 280 occurrences")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_6_occurrence = ProtoField.new("Bulk Quote Price 4 Quantity 6 Occurrence", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice4quantity6occurrence", ftypes.STRING, nil, nil, nil, "1 to 280 occurrences")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_8_occurrence = ProtoField.new("Bulk Quote Price 4 Quantity 8 Occurrence", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice4quantity8occurrence", ftypes.STRING, nil, nil, nil, "1 to 280 occurrences")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_2_occurrence = ProtoField.new("Bulk Quote Price 6 Quantity 2 Occurrence", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice6quantity2occurrence", ftypes.STRING, nil, nil, nil, "1 to 280 occurrences")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_4_occurrence = ProtoField.new("Bulk Quote Price 6 Quantity 4 Occurrence", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice6quantity4occurrence", ftypes.STRING, nil, nil, nil, "1 to 280 occurrences")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_6_occurrence = ProtoField.new("Bulk Quote Price 6 Quantity 6 Occurrence", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice6quantity6occurrence", ftypes.STRING, nil, nil, nil, "1 to 280 occurrences")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_8_occurrence = ProtoField.new("Bulk Quote Price 6 Quantity 8 Occurrence", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice6quantity8occurrence", ftypes.STRING, nil, nil, nil, "1 to 280 occurrences")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_2_occurrence = ProtoField.new("Bulk Quote Price 8 Quantity 2 Occurrence", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice8quantity2occurrence", ftypes.STRING, nil, nil, nil, "1 to 280 occurrences")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_4_occurrence = ProtoField.new("Bulk Quote Price 8 Quantity 4 Occurrence", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice8quantity4occurrence", ftypes.STRING, nil, nil, nil, "1 to 280 occurrences")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_6_occurrence = ProtoField.new("Bulk Quote Price 8 Quantity 6 Occurrence", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice8quantity6occurrence", ftypes.STRING, nil, nil, nil, "1 to 280 occurrences")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_8_occurrence = ProtoField.new("Bulk Quote Price 8 Quantity 8 Occurrence", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice8quantity8occurrence", ftypes.STRING, nil, nil, nil, "1 to 280 occurrences")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.buying_clearing_data = ProtoField.new("Buying Clearing Data", "tmx.mx.solaorderentry.sail.v1.21.buyingclearingdata", ftypes.STRING, nil, nil, nil, "Clearing Data for the buying side, which OX: Cross Entry carries alongside the other side.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.buying_owner_data = ProtoField.new("Buying Owner Data", "tmx.mx.solaorderentry.sail.v1.21.buyingownerdata", ftypes.STRING, nil, nil, nil, "Owner Data for the buying side, which OX: Cross Entry carries alongside the other side.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.calculation_time_interval = ProtoField.new("Calculation Time Interval", "tmx.mx.solaorderentry.sail.v1.21.calculationtimeinterval", ftypes.UINT32, nil, nil, nil, "Stated inline as Numeric (8)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.cancel_reason = ProtoField.new("Cancel Reason", "tmx.mx.solaorderentry.sail.v1.21.cancelreason", ftypes.STRING, nil, nil, nil, "Cancel Reason for emitting the NP:Cancellation of All Quotes Notice message: A = Cancelled by Trader C = Cancelled by Circuit Breaker G = Cancelled by Supervisor I = Eliminated by Disconnection M = Cancelled by MOD N = BQM - Maximum Delta Volume has been reached P = BQM - Maximum Number of Trades has been reached R = BQM - Maximum Value has been reached S = Cancelled by System T= BQM - Maximum Volume has been reached V = BQM - Maximum Delta Value has been reached W = Cancel Pending")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.cancelled_order_id = ProtoField.new("Cancelled Order Id", "tmx.mx.solaorderentry.sail.v1.21.cancelledorderid", ftypes.STRING, nil, nil, nil, "Identifies an order. Associated with Group ID and Instrument ID. It is the order key identifier.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.clearing_data = ProtoField.new("Clearing Data", "tmx.mx.solaorderentry.sail.v1.21.clearingdata", ftypes.STRING, nil, nil, nil, "The guide states these fields once, as Clearing Data, for every message that carries them.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.clearing_instruction = ProtoField.new("Clearing Instruction", "tmx.mx.solaorderentry.sail.v1.21.clearinginstruction", ftypes.STRING, nil, nil, nil, "Client account number")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.command_number = ProtoField.new("Command Number", "tmx.mx.solaorderentry.sail.v1.21.commandnumber", ftypes.UINT16, nil, nil, nil, "Stated inline as Numeric (4)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.counterpart_order_id = ProtoField.new("Counterpart Order Id", "tmx.mx.solaorderentry.sail.v1.21.counterpartorderid", ftypes.STRING, nil, nil, nil, "Identifies an order. Associated with Group ID and Instrument ID. It is the order key identifier.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.counterpart_owner_data = ProtoField.new("Counterpart Owner Data", "tmx.mx.solaorderentry.sail.v1.21.counterpartownerdata", ftypes.STRING, nil, nil, nil, "Owner Data of the counterpart, which NO: Overstepped Order or Quote Notice carries.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.counterpart_trader_id = ProtoField.new("Counterpart Trader Id", "tmx.mx.solaorderentry.sail.v1.21.counterparttraderid", ftypes.STRING, nil, nil, nil, "Identifies the Trader: 4 first characters = Firm identifier 4 last characters = Trader identifier")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.creation_status = ProtoField.new("Creation Status", "tmx.mx.solaorderentry.sail.v1.21.creationstatus", ftypes.STRING, nil, nil, nil, "Stated inline as String (1)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.current_session_id = ProtoField.new("Current Session Id", "tmx.mx.solaorderentry.sail.v1.21.currentsessionid", ftypes.STRING, nil, nil, nil, "Identifies the current Session ID. If set to blank spaces, means that the Participant wants to connect to the current Session ID.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.current_usage = ProtoField.new("Current Usage", "tmx.mx.solaorderentry.sail.v1.21.currentusage", ftypes.STRING, nil, nil, nil, "Represents price or quantity. Actual container type is context dependent. Note: Price or Quantity field contains a price when limit type is an Exposure Limit, o a quantity when limit type is a Position Limit.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_long_exposure_action = ProtoField.new("Default Long Exposure Action", "tmx.mx.solaorderentry.sail.v1.21.defaultlongexposureaction", ftypes.STRING, nil, nil, nil, "Action related to the corresponding limit: ? = Not Set (message does not modify the Limit) E = Enforce Limit (by rejecting and eliminating orders when Limit is reached) N = None (Limit is disabled) W = Warning (by sending an MN: Risk Limits Usage message when Limit is reached)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_long_exposure_limit = ProtoField.new("Default Long Exposure Limit", "tmx.mx.solaorderentry.sail.v1.21.defaultlongexposurelimit", ftypes.STRING, nil, nil, nil, "Price format with format indicator and price mantissa: Format indicator (1) • Alpha: the price is negative (‘A’ means negative value with no decimal, ‘B’ means negative value with 1 decimal, ‘C’ means negative value with 2 decimals, etc.) • Numeric: the price is positive (‘0’ means positive value with no decimal, ‘1’ means positive value with one decimal, ‘2’ means positive value with 2 decimals, etc.) • Set to spaces: the price is not significant Price mantissa (9) • Represents the price value including the number of decimals defined in the format indicator Examples: • Format indicator = 2; Price mantissa = 3509438; Price = 35094.38 • Format indicator = A; Price mantissa = 3567838; Price = -3567838 • Format indicator = ; Price mantissa = 3567838; Price = not significant")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_long_position_action = ProtoField.new("Default Long Position Action", "tmx.mx.solaorderentry.sail.v1.21.defaultlongpositionaction", ftypes.STRING, nil, nil, nil, "Action related to the corresponding limit: ? = Not Set (message does not modify the Limit) E = Enforce Limit (by rejecting and eliminating orders when Limit is reached) N = None (Limit is disabled) W = Warning (by sending an MN: Risk Limits Usage message when Limit is reached)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_long_position_limit = ProtoField.new("Default Long Position Limit", "tmx.mx.solaorderentry.sail.v1.21.defaultlongpositionlimit", ftypes.UINT32, nil, nil, nil, "Number of contracts or shares")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_maximum_order_quantity = ProtoField.new("Default Maximum Order Quantity", "tmx.mx.solaorderentry.sail.v1.21.defaultmaximumorderquantity", ftypes.UINT32, nil, nil, nil, "Number of contracts or shares")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_net_exposure_action = ProtoField.new("Default Net Exposure Action", "tmx.mx.solaorderentry.sail.v1.21.defaultnetexposureaction", ftypes.STRING, nil, nil, nil, "Action related to the corresponding limit: ? = Not Set (message does not modify the Limit) E = Enforce Limit (by rejecting and eliminating orders when Limit is reached) N = None (Limit is disabled) W = Warning (by sending an MN: Risk Limits Usage message when Limit is reached)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_net_exposure_limit = ProtoField.new("Default Net Exposure Limit", "tmx.mx.solaorderentry.sail.v1.21.defaultnetexposurelimit", ftypes.STRING, nil, nil, nil, "Price format with format indicator and price mantissa: Format indicator (1) • Alpha: the price is negative (‘A’ means negative value with no decimal, ‘B’ means negative value with 1 decimal, ‘C’ means negative value with 2 decimals, etc.) • Numeric: the price is positive (‘0’ means positive value with no decimal, ‘1’ means positive value with one decimal, ‘2’ means positive value with 2 decimals, etc.) • Set to spaces: the price is not significant Price mantissa (9) • Represents the price value including the number of decimals defined in the format indicator Examples: • Format indicator = 2; Price mantissa = 3509438; Price = 35094.38 • Format indicator = A; Price mantissa = 3567838; Price = -3567838 • Format indicator = ; Price mantissa = 3567838; Price = not significant")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_net_position_action = ProtoField.new("Default Net Position Action", "tmx.mx.solaorderentry.sail.v1.21.defaultnetpositionaction", ftypes.STRING, nil, nil, nil, "Action related to the corresponding limit: ? = Not Set (message does not modify the Limit) E = Enforce Limit (by rejecting and eliminating orders when Limit is reached) N = None (Limit is disabled) W = Warning (by sending an MN: Risk Limits Usage message when Limit is reached)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_net_position_limit = ProtoField.new("Default Net Position Limit", "tmx.mx.solaorderentry.sail.v1.21.defaultnetpositionlimit", ftypes.UINT32, nil, nil, nil, "Number of contracts or shares")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_short_exposure_action = ProtoField.new("Default Short Exposure Action", "tmx.mx.solaorderentry.sail.v1.21.defaultshortexposureaction", ftypes.STRING, nil, nil, nil, "Action related to the corresponding limit: ? = Not Set (message does not modify the Limit) E = Enforce Limit (by rejecting and eliminating orders when Limit is reached) N = None (Limit is disabled) W = Warning (by sending an MN: Risk Limits Usage message when Limit is reached)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_short_exposure_limit = ProtoField.new("Default Short Exposure Limit", "tmx.mx.solaorderentry.sail.v1.21.defaultshortexposurelimit", ftypes.STRING, nil, nil, nil, "Price format with format indicator and price mantissa: Format indicator (1) • Alpha: the price is negative (‘A’ means negative value with no decimal, ‘B’ means negative value with 1 decimal, ‘C’ means negative value with 2 decimals, etc.) • Numeric: the price is positive (‘0’ means positive value with no decimal, ‘1’ means positive value with one decimal, ‘2’ means positive value with 2 decimals, etc.) • Set to spaces: the price is not significant Price mantissa (9) • Represents the price value including the number of decimals defined in the format indicator Examples: • Format indicator = 2; Price mantissa = 3509438; Price = 35094.38 • Format indicator = A; Price mantissa = 3567838; Price = -3567838 • Format indicator = ; Price mantissa = 3567838; Price = not significant")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_short_position_action = ProtoField.new("Default Short Position Action", "tmx.mx.solaorderentry.sail.v1.21.defaultshortpositionaction", ftypes.STRING, nil, nil, nil, "Action related to the corresponding limit: ? = Not Set (message does not modify the Limit) E = Enforce Limit (by rejecting and eliminating orders when Limit is reached) N = None (Limit is disabled) W = Warning (by sending an MN: Risk Limits Usage message when Limit is reached)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_short_position_limit = ProtoField.new("Default Short Position Limit", "tmx.mx.solaorderentry.sail.v1.21.defaultshortpositionlimit", ftypes.UINT32, nil, nil, nil, "Number of contracts or shares")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.delta_maximum_value = ProtoField.new("Delta Maximum Value", "tmx.mx.solaorderentry.sail.v1.21.deltamaximumvalue", ftypes.UINT32, nil, nil, nil, "Stated inline as Numeric (8)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.delta_maximum_volume = ProtoField.new("Delta Maximum Volume", "tmx.mx.solaorderentry.sail.v1.21.deltamaximumvolume", ftypes.UINT32, nil, nil, nil, "Number of contracts or shares")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_instruction_note_cancel_quotes_only_q_quotes_only = ProtoField.new("Disconnection Instruction Note Cancel Quotes Only Q Quotes Only", "tmx.mx.solaorderentry.sail.v1.21.disconnectioninstructionnotecancelquotesonlyqquotesonly", ftypes.STRING, nil, nil, nil, "Type of cancellation: A = All Q = QuotesOnly O = OrdersOnly S = StopOrdersOnly M = MarketOrdersOnly")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_instruction_occurrence = ProtoField.new("Disconnection Instruction Occurrence", "tmx.mx.solaorderentry.sail.v1.21.disconnectioninstructionoccurrence", ftypes.STRING, nil, nil, nil, "The guide states this block as (1 to 99 occurrences).")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.duration_type = ProtoField.new("Duration Type", "tmx.mx.solaorderentry.sail.v1.21.durationtype", ftypes.STRING, nil, nil, nil, "Indicates the order validity duration: D = Valid until GTD date (GTD) E = Immediate order, cannot be booked (FAK) F = Valid until Instrument expiration (GTC) J = Valid for the current Day only (Day) P = Valid during current pre-opening W = While Connected")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.end_of_text = ProtoField.new("End Of Text", "tmx.mx.solaorderentry.sail.v1.21.endoftext", ftypes.UINT8, nil, nil, nil, "End of Text character closing each business message")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.ended_session_id = ProtoField.new("Ended Session Id", "tmx.mx.solaorderentry.sail.v1.21.endedsessionid", ftypes.STRING, nil, nil, nil, "Identifies the current Session ID. If set to blank spaces, means that the Participant wants to connect to the current Session ID.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.error_code = ProtoField.new("Error Code", "tmx.mx.solaorderentry.sail.v1.21.errorcode", ftypes.UINT16, nil, nil, nil, "Numeric identifier of the error")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.error_description = ProtoField.new("Error Description", "tmx.mx.solaorderentry.sail.v1.21.errordescription", ftypes.STRING, nil, nil, nil, "Stated inline as String (100)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.error_message = ProtoField.new("Error Message", "tmx.mx.solaorderentry.sail.v1.21.errormessage", ftypes.STRING, nil, nil, nil, "First 100 characters of an erroneous message")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.error_position = ProtoField.new("Error Position", "tmx.mx.solaorderentry.sail.v1.21.errorposition", ftypes.UINT16, nil, nil, nil, "Determines the bytes at which an error has been detected")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.exchange_message_id = ProtoField.new("Exchange Message Id", "tmx.mx.solaorderentry.sail.v1.21.exchangemessageid", ftypes.STRING, nil, nil, nil, "Identifies a message sent by the exchange for a Participant connection. It represents the exchange identifier of the message for the current session. It is used in a connection message as a retransmission starting point. • Zeroes = start from 1st message of the session • Blanks = start from next message for Participant • Valid Exchange Message ID = start at this message ID or the next message for the Participant • Contains spaces = it means that this field is not subject to re-transmission")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.excluded_instrument_notice_occurrence = ProtoField.new("Excluded Instrument Notice Occurrence", "tmx.mx.solaorderentry.sail.v1.21.excludedinstrumentnoticeoccurrence", ftypes.STRING, nil, nil, nil, "The guide states this block as (1 to 200 occurrences).")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.executing_participant = ProtoField.new("Executing Participant", "tmx.mx.solaorderentry.sail.v1.21.executingparticipant", ftypes.STRING, nil, nil, nil, "Identifies a firm referenced in the system")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.expected_last_user_sequence_id = ProtoField.new("Expected Last User Sequence Id", "tmx.mx.solaorderentry.sail.v1.21.expectedlastusersequenceid", ftypes.UINT32, nil, nil, nil, "Identifies all the incoming business messages for one connection. Must be sequential and start at 1 at the beginning of the day. Used by SOLA® to track gaps in message sequence.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_1 = ProtoField.new("Filler 1", "tmx.mx.solaorderentry.sail.v1.21.filler1", ftypes.BYTES, nil, nil, nil, "Stated inline as String (1)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_2 = ProtoField.new("Filler 2", "tmx.mx.solaorderentry.sail.v1.21.filler2", ftypes.BYTES, nil, nil, nil, "Stated inline as String (2)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_20 = ProtoField.new("Filler 20", "tmx.mx.solaorderentry.sail.v1.21.filler20", ftypes.BYTES, nil, nil, nil, "Stated inline as String (20)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_4 = ProtoField.new("Filler 4", "tmx.mx.solaorderentry.sail.v1.21.filler4", ftypes.BYTES, nil, nil, nil, "Stated inline as String (4)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_5 = ProtoField.new("Filler 5", "tmx.mx.solaorderentry.sail.v1.21.filler5", ftypes.BYTES, nil, nil, nil, "Stated inline as String (5)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_6 = ProtoField.new("Filler 6", "tmx.mx.solaorderentry.sail.v1.21.filler6", ftypes.BYTES, nil, nil, nil, "Stated inline as Numeric (6)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_level_risk_option = ProtoField.new("Firm Level Risk Option", "tmx.mx.solaorderentry.sail.v1.21.firmlevelriskoption", ftypes.STRING, nil, nil, nil, "Configures the Risk Netting Options: ‘ ’ = Netting is disabled T = Cancel post Trader-Team level netting N = Netting is enabled P = Cancel post Firm level netting")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_risk_config_trader_team = ProtoField.new("Firm Risk Config Trader Team", "tmx.mx.solaorderentry.sail.v1.21.firmriskconfigtraderteam", ftypes.STRING, nil, nil, nil, "The guide states this block as (1 to 5 occurrences).")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_risk_config_trader_team_trader = ProtoField.new("Firm Risk Config Trader Team Trader", "tmx.mx.solaorderentry.sail.v1.21.firmriskconfigtraderteamtrader", ftypes.STRING, nil, nil, nil, "The guide states this block as (1 to 200 occurrences).")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.gap_sequence_id = ProtoField.new("Gap Sequence Id", "tmx.mx.solaorderentry.sail.v1.21.gapsequenceid", ftypes.UINT8, nil, nil, nil, "A numeric sequence (base 10) used to track gaps, running from 0 to 99 over and over. If the Participant detects a gap, they must reconnect with a Trader Connection message.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.global_net_exposure_action = ProtoField.new("Global Net Exposure Action", "tmx.mx.solaorderentry.sail.v1.21.globalnetexposureaction", ftypes.STRING, nil, nil, nil, "Action related to the corresponding limit: ? = Not Set (message does not modify the Limit) E = Enforce Limit (by rejecting and eliminating orders when Limit is reached) N = None (Limit is disabled) W = Warning (by sending an MN: Risk Limits Usage message when Limit is reached)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.global_net_exposure_limit = ProtoField.new("Global Net Exposure Limit", "tmx.mx.solaorderentry.sail.v1.21.globalnetexposurelimit", ftypes.STRING, nil, nil, nil, "Price format with format indicator and price mantissa: Format indicator (1) • Alpha: the price is negative (‘A’ means negative value with no decimal, ‘B’ means negative value with 1 decimal, ‘C’ means negative value with 2 decimals, etc.) • Numeric: the price is positive (‘0’ means positive value with no decimal, ‘1’ means positive value with one decimal, ‘2’ means positive value with 2 decimals, etc.) • Set to spaces: the price is not significant Price mantissa (9) • Represents the price value including the number of decimals defined in the format indicator Examples: • Format indicator = 2; Price mantissa = 3509438; Price = 35094.38 • Format indicator = A; Price mantissa = 3567838; Price = -3567838 • Format indicator = ; Price mantissa = 3567838; Price = not significant")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.group = ProtoField.new("Group", "tmx.mx.solaorderentry.sail.v1.21.group", ftypes.STRING, nil, nil, nil, "Group identification within the system. A group is composed of instruments.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.group_filter = ProtoField.new("Group Filter", "tmx.mx.solaorderentry.sail.v1.21.groupfilter", ftypes.STRING, nil, nil, nil, "Group identification within the system. A group is composed of instruments.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.group_state = ProtoField.new("Group State", "tmx.mx.solaorderentry.sail.v1.21.groupstate", ftypes.STRING, nil, nil, nil, "Indicates the new status of the group. For message type NG, it contains one of the following values: • C = Consultation Start • E = No Cancel Period • P = Pre-opening • O = Opening • S = Continuous Trading Session • F = Consultation End • N = MOD Intervention • M = Mini-Batch • B = Post-Session • I = Prohibited • Z = Interrupted")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.gtd_date = ProtoField.new("Gtd Date", "tmx.mx.solaorderentry.sail.v1.21.gtddate", ftypes.STRING, nil, nil, nil, "Year, Month and Day (YYYYMMDD)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.hedge_spec = ProtoField.new("Hedge Spec", "tmx.mx.solaorderentry.sail.v1.21.hedgespec", ftypes.STRING, nil, nil, nil, "• H = Hedger • S = Speculator")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.id_code_for_the_counterpart_participant = ProtoField.new("Id Code For The Counterpart Participant", "tmx.mx.solaorderentry.sail.v1.21.idcodeforthecounterpartparticipant", ftypes.STRING, nil, nil, nil, "Blank, except for cross trades. For cross trades, it will be Firm ID unless Participant requests it to be hidden.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.inactivity_interval = ProtoField.new("Inactivity Interval", "tmx.mx.solaorderentry.sail.v1.21.inactivityinterval", ftypes.UINT8, nil, nil, nil, "Number of missed heartbeats before considering the user disconnected. If set to 0, the user is never considered as disconnected by the system.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.incoming_messages_header = ProtoField.new("Incoming Messages Header", "tmx.mx.solaorderentry.sail.v1.21.incomingmessagesheader", ftypes.STRING, nil, nil, nil, "The guide states these fields once, as the Incoming Messages Header, for every business message a Participant sends. Message Type is read by the packet before the branch, so it is not repeated here.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.instrument = ProtoField.new("Instrument", "tmx.mx.solaorderentry.sail.v1.21.instrument", ftypes.STRING, nil, nil, nil, "Instrument identification within a group")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.instrument_filter = ProtoField.new("Instrument Filter", "tmx.mx.solaorderentry.sail.v1.21.instrumentfilter", ftypes.STRING, nil, nil, nil, "Instrument identification within a group")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.instrument_state = ProtoField.new("Instrument State", "tmx.mx.solaorderentry.sail.v1.21.instrumentstate", ftypes.STRING, nil, nil, nil, "Instrument state: N = Normal. The instrument follows group state processing. F = Forbidden. Trading is forbidden for this instrument. Orders and quotes are rejected. R = Orders and quotes are processed in pre- opening if the group is in trading status.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.last_exchange_message_id_sent_to_participant = ProtoField.new("Last Exchange Message Id Sent To Participant", "tmx.mx.solaorderentry.sail.v1.21.lastexchangemessageidsenttoparticipant", ftypes.STRING, nil, nil, nil, "Identifies a message sent by the exchange for a Participant connection. It represents the exchange identifier of the message for the current session. It is used in a connection message as a retransmission starting point. • Zeroes = start from 1st message of the session • Blanks = start from next message for Participant • Valid Exchange Message ID = start at this message ID or the next message for the Participant • Contains spaces = it means that this field is not subject to re-transmission")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.last_user_sequence_id_received = ProtoField.new("Last User Sequence Id Received", "tmx.mx.solaorderentry.sail.v1.21.lastusersequenceidreceived", ftypes.UINT32, nil, nil, nil, "Identifies all the incoming business messages for one connection. Must be sequential and start at 1 at the beginning of the day. Used by SOLA® to track gaps in message sequence.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes = ProtoField.new("Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes", "tmx.mx.solaorderentry.sail.v1.21.lastusersequenceidreceivedifnobusinessmessagehasbeenreceivedonthisconnectionthisfieldisequaltozeroes", ftypes.UINT32, nil, nil, nil, "Identifies all the incoming business messages for one connection. Must be sequential and start at 1 at the beginning of the day. Used by SOLA® to track gaps in message sequence.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_group = ProtoField.new("Leg Group", "tmx.mx.solaorderentry.sail.v1.21.leggroup", ftypes.STRING, nil, nil, nil, "Group identification within the system. A group is composed of instruments.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_instrument = ProtoField.new("Leg Instrument", "tmx.mx.solaorderentry.sail.v1.21.leginstrument", ftypes.STRING, nil, nil, nil, "Instrument identification within a group")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_number = ProtoField.new("Leg Number", "tmx.mx.solaorderentry.sail.v1.21.legnumber", ftypes.UINT8, nil, nil, nil, "ID of the leg of the strategy instrument. Maximum value of 40.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_quantity_ratio = ProtoField.new("Leg Quantity Ratio", "tmx.mx.solaorderentry.sail.v1.21.legquantityratio", ftypes.UINT32, nil, nil, nil, "Number of contracts or shares")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_verb = ProtoField.new("Leg Verb", "tmx.mx.solaorderentry.sail.v1.21.legverb", ftypes.STRING, nil, nil, nil, "Identifies an order/quote side: B = Buy S = Sell")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.limit_type = ProtoField.new("Limit Type", "tmx.mx.solaorderentry.sail.v1.21.limittype", ftypes.STRING, nil, nil, nil, "Type of limit: 1 = Net Exposure 2 = Long Exposure 3 = Short Exposure 4 = Net Position 5 = Long Position 6 = Short Position")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.limit_value = ProtoField.new("Limit Value", "tmx.mx.solaorderentry.sail.v1.21.limitvalue", ftypes.STRING, nil, nil, nil, "Represents price or quantity. Actual container type is context dependent. Note: Price or Quantity field contains a price when limit type is an Exposure Limit, o a quantity when limit type is a Position Limit.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.long_exposure_action = ProtoField.new("Long Exposure Action", "tmx.mx.solaorderentry.sail.v1.21.longexposureaction", ftypes.STRING, nil, nil, nil, "Action related to the corresponding limit: ? = Not Set (message does not modify the Limit) E = Enforce Limit (by rejecting and eliminating orders when Limit is reached) N = None (Limit is disabled) W = Warning (by sending an MN: Risk Limits Usage message when Limit is reached)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.long_exposure_limit = ProtoField.new("Long Exposure Limit", "tmx.mx.solaorderentry.sail.v1.21.longexposurelimit", ftypes.STRING, nil, nil, nil, "Price format with format indicator and price mantissa: Format indicator (1) • Alpha: the price is negative (‘A’ means negative value with no decimal, ‘B’ means negative value with 1 decimal, ‘C’ means negative value with 2 decimals, etc.) • Numeric: the price is positive (‘0’ means positive value with no decimal, ‘1’ means positive value with one decimal, ‘2’ means positive value with 2 decimals, etc.) • Set to spaces: the price is not significant Price mantissa (9) • Represents the price value including the number of decimals defined in the format indicator Examples: • Format indicator = 2; Price mantissa = 3509438; Price = 35094.38 • Format indicator = A; Price mantissa = 3567838; Price = -3567838 • Format indicator = ; Price mantissa = 3567838; Price = not significant")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.long_position_action = ProtoField.new("Long Position Action", "tmx.mx.solaorderentry.sail.v1.21.longpositionaction", ftypes.STRING, nil, nil, nil, "Action related to the corresponding limit: ? = Not Set (message does not modify the Limit) E = Enforce Limit (by rejecting and eliminating orders when Limit is reached) N = None (Limit is disabled) W = Warning (by sending an MN: Risk Limits Usage message when Limit is reached)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.long_position_limit = ProtoField.new("Long Position Limit", "tmx.mx.solaorderentry.sail.v1.21.longpositionlimit", ftypes.UINT32, nil, nil, nil, "Number of contracts or shares")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.market_side = ProtoField.new("Market Side", "tmx.mx.solaorderentry.sail.v1.21.marketside", ftypes.UINT8, nil, nil, nil, "The market side of interest. Must be equal either to ‘B’ (Buy), ‘S’ (Sell) or ‘2’ (Both)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.maximum_number_trades = ProtoField.new("Maximum Number Trades", "tmx.mx.solaorderentry.sail.v1.21.maximumnumbertrades", ftypes.UINT8, nil, nil, nil, "Stated inline as Numeric (2)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.maximum_order_quantity = ProtoField.new("Maximum Order Quantity", "tmx.mx.solaorderentry.sail.v1.21.maximumorderquantity", ftypes.UINT32, nil, nil, nil, "Number of contracts or shares")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.maximum_total_value = ProtoField.new("Maximum Total Value", "tmx.mx.solaorderentry.sail.v1.21.maximumtotalvalue", ftypes.UINT32, nil, nil, nil, "Stated inline as Numeric (8)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.maximum_total_volume = ProtoField.new("Maximum Total Volume", "tmx.mx.solaorderentry.sail.v1.21.maximumtotalvolume", ftypes.UINT32, nil, nil, nil, "Number of contracts or shares")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.memo = ProtoField.new("Memo", "tmx.mx.solaorderentry.sail.v1.21.memo", ftypes.STRING, nil, nil, nil, "Free text zone, which can be used to transmit additional information for processing. No validations are carried out on this field.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.message_length = ProtoField.new("Message Length", "tmx.mx.solaorderentry.sail.v1.21.messagelength", ftypes.UINT32, nil, nil, nil, "Length of the business message in bytes")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.message_type = ProtoField.new("Message Type", "tmx.mx.solaorderentry.sail.v1.21.messagetype", ftypes.STRING, nil, nil, nil, "Type of message")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.message_types_to_be_received = ProtoField.new("Message Types To Be Received", "tmx.mx.solaorderentry.sail.v1.21.messagetypestobereceived", ftypes.STRING, nil, nil, nil, "Type of message")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.minimum_volume = ProtoField.new("Minimum Volume", "tmx.mx.solaorderentry.sail.v1.21.minimumvolume", ftypes.UINT32, nil, nil, nil, "Number of contracts or shares")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.modified_order_id = ProtoField.new("Modified Order Id", "tmx.mx.solaorderentry.sail.v1.21.modifiedorderid", ftypes.STRING, nil, nil, nil, "Identifies an order. Associated with Group ID and Instrument ID. It is the order key identifier.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.nb_of_instruments = ProtoField.new("Nb Of Instruments", "tmx.mx.solaorderentry.sail.v1.21.nbofinstruments", ftypes.UINT16, nil, nil, nil, "Stated inline as Numeric (4)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.net_exposure_action = ProtoField.new("Net Exposure Action", "tmx.mx.solaorderentry.sail.v1.21.netexposureaction", ftypes.STRING, nil, nil, nil, "Action related to the corresponding limit: ? = Not Set (message does not modify the Limit) E = Enforce Limit (by rejecting and eliminating orders when Limit is reached) N = None (Limit is disabled) W = Warning (by sending an MN: Risk Limits Usage message when Limit is reached)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.net_exposure_limit = ProtoField.new("Net Exposure Limit", "tmx.mx.solaorderentry.sail.v1.21.netexposurelimit", ftypes.STRING, nil, nil, nil, "Price format with format indicator and price mantissa: Format indicator (1) • Alpha: the price is negative (‘A’ means negative value with no decimal, ‘B’ means negative value with 1 decimal, ‘C’ means negative value with 2 decimals, etc.) • Numeric: the price is positive (‘0’ means positive value with no decimal, ‘1’ means positive value with one decimal, ‘2’ means positive value with 2 decimals, etc.) • Set to spaces: the price is not significant Price mantissa (9) • Represents the price value including the number of decimals defined in the format indicator Examples: • Format indicator = 2; Price mantissa = 3509438; Price = 35094.38 • Format indicator = A; Price mantissa = 3567838; Price = -3567838 • Format indicator = ; Price mantissa = 3567838; Price = not significant")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.net_position_action = ProtoField.new("Net Position Action", "tmx.mx.solaorderentry.sail.v1.21.netpositionaction", ftypes.STRING, nil, nil, nil, "Action related to the corresponding limit: ? = Not Set (message does not modify the Limit) E = Enforce Limit (by rejecting and eliminating orders when Limit is reached) N = None (Limit is disabled) W = Warning (by sending an MN: Risk Limits Usage message when Limit is reached)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.net_position_limit = ProtoField.new("Net Position Limit", "tmx.mx.solaorderentry.sail.v1.21.netpositionlimit", ftypes.UINT32, nil, nil, nil, "Number of contracts or shares")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument_acknowledgement_leg_definition_repeating_block = ProtoField.new("New Strategy Instrument Acknowledgement Leg Definition Repeating Block", "tmx.mx.solaorderentry.sail.v1.21.newstrategyinstrumentacknowledgementlegdefinitionrepeatingblock", ftypes.STRING, nil, nil, nil, "The guide states this block as (2 to 4 occurrences).")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument_leg_definition_repeating_block = ProtoField.new("New Strategy Instrument Leg Definition Repeating Block", "tmx.mx.solaorderentry.sail.v1.21.newstrategyinstrumentlegdefinitionrepeatingblock", ftypes.STRING, nil, nil, nil, "The guide states this block as (2 to 4 occurrences).")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_commands = ProtoField.new("Number Of Commands", "tmx.mx.solaorderentry.sail.v1.21.numberofcommands", ftypes.UINT16, nil, nil, nil, "Stated inline as Numeric (4)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_group_limits = ProtoField.new("Number Of Group Limits", "tmx.mx.solaorderentry.sail.v1.21.numberofgrouplimits", ftypes.UINT16, nil, nil, nil, "Stated inline as Numeric (3)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_instructions_present_in_the_message = ProtoField.new("Number Of Instructions Present In The Message", "tmx.mx.solaorderentry.sail.v1.21.numberofinstructionspresentinthemessage", ftypes.UINT8, nil, nil, nil, "Stated inline as Numeric (2)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_legs = ProtoField.new("Number Of Legs", "tmx.mx.solaorderentry.sail.v1.21.numberoflegs", ftypes.UINT8, nil, nil, nil, "Stated inline as Numeric (2)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_message_types_to_be_received = ProtoField.new("Number Of Message Types To Be Received", "tmx.mx.solaorderentry.sail.v1.21.numberofmessagetypestobereceived", ftypes.UINT8, nil, nil, nil, "Stated inline as Numeric (2)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_quotes = ProtoField.new("Number Of Quotes", "tmx.mx.solaorderentry.sail.v1.21.numberofquotes", ftypes.UINT16, nil, nil, nil, "Stated inline as Numeric (3)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_quotes_in_error = ProtoField.new("Number Of Quotes In Error", "tmx.mx.solaorderentry.sail.v1.21.numberofquotesinerror", ftypes.UINT16, nil, nil, nil, "Stated inline as Numeric (3)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_trader_teams = ProtoField.new("Number Of Trader Teams", "tmx.mx.solaorderentry.sail.v1.21.numberoftraderteams", ftypes.UINT16, nil, nil, nil, "Stated inline as Numeric (3)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_traders_in_team = ProtoField.new("Number Of Traders In Team", "tmx.mx.solaorderentry.sail.v1.21.numberoftradersinteam", ftypes.UINT16, nil, nil, nil, "Stated inline as Numeric (3)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_usage_blocks = ProtoField.new("Number Of Usage Blocks", "tmx.mx.solaorderentry.sail.v1.21.numberofusageblocks", ftypes.UINT16, nil, nil, nil, "Stated inline as Numeric (4)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.open_close = ProtoField.new("Open Close", "tmx.mx.solaorderentry.sail.v1.21.openclose", ftypes.STRING, nil, nil, nil, "Indicates how the Participant's position will be handled by the clearing system:")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_id = ProtoField.new("Order Id", "tmx.mx.solaorderentry.sail.v1.21.orderid", ftypes.STRING, nil, nil, nil, "Identifies an order. Associated with Group ID and Instrument ID. It is the order key identifier.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_type = ProtoField.new("Order Type", "tmx.mx.solaorderentry.sail.v1.21.ordertype", ftypes.STRING, nil, nil, nil, "Indicates the order type: O = Order Q = Quote")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.original_message_type_af_gz_ml_ox_or_rq = ProtoField.new("Original Message Type Af Gz Ml Ox Or Rq", "tmx.mx.solaorderentry.sail.v1.21.originalmessagetypeafgzmloxorrq", ftypes.STRING, nil, nil, nil, "Type of message")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.original_order_id = ProtoField.new("Original Order Id", "tmx.mx.solaorderentry.sail.v1.21.originalorderid", ftypes.STRING, nil, nil, nil, "First Order ID assigned to the order by the system")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.original_reference_id = ProtoField.new("Original Reference Id", "tmx.mx.solaorderentry.sail.v1.21.originalreferenceid", ftypes.STRING, nil, nil, nil, "References either the Original Order ID of the traded order, or the Quote ID of the quote that has traded")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.outgoing_messages_header = ProtoField.new("Outgoing Messages Header", "tmx.mx.solaorderentry.sail.v1.21.outgoingmessagesheader", ftypes.STRING, nil, nil, nil, "The guide states these fields once, as the Outgoing Messages Header, for every business message the Exchange sends. Message Type is read by the packet before the branch, so it is not repeated here.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.owner_data = ProtoField.new("Owner Data", "tmx.mx.solaorderentry.sail.v1.21.ownerdata", ftypes.STRING, nil, nil, nil, "The guide states this field once, as Owner Data, for every message that carries it.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.password_md_5_encryption = ProtoField.new("Password Md 5 Encryption", "tmx.mx.solaorderentry.sail.v1.21.passwordmd5encryption", ftypes.STRING, nil, nil, nil, "Contact MX’s Technical Help Desk for details. (MD5 Encryption)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.preceding_user_sequence_id_received_zeroes_if_none = ProtoField.new("Preceding User Sequence Id Received Zeroes If None", "tmx.mx.solaorderentry.sail.v1.21.precedingusersequenceidreceivedzeroesifnone", ftypes.UINT32, nil, nil, nil, "Identifies all the incoming business messages for one connection. Must be sequential and start at 1 at the beginning of the day. Used by SOLA® to track gaps in message sequence.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.price = ProtoField.new("Price", "tmx.mx.solaorderentry.sail.v1.21.price", ftypes.STRING, nil, nil, nil, "Price format with format indicator and price mantissa: Format indicator (1) • Alpha: the price is negative (‘A’ means negative value with no decimal, ‘B’ means negative value with 1 decimal, ‘C’ means negative value with 2 decimals, etc.) • Numeric: the price is positive (‘0’ means positive value with no decimal, ‘1’ means positive value with one decimal, ‘2’ means positive value with 2 decimals, etc.) • Set to spaces: the price is not significant Price mantissa (9) • Represents the price value including the number of decimals defined in the format indicator Examples: • Format indicator = 2; Price mantissa = 3509438; Price = 35094.38 • Format indicator = A; Price mantissa = 3567838; Price = -3567838 • Format indicator = ; Price mantissa = 3567838; Price = not significant")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.price_4 = ProtoField.new("Price 4", "tmx.mx.solaorderentry.sail.v1.21.price4", ftypes.STRING, nil, nil, nil, "Price format with format indicator and price mantissa")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.price_6 = ProtoField.new("Price 6", "tmx.mx.solaorderentry.sail.v1.21.price6", ftypes.STRING, nil, nil, nil, "Price format with format indicator and price mantissa")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.price_8 = ProtoField.new("Price 8", "tmx.mx.solaorderentry.sail.v1.21.price8", ftypes.STRING, nil, nil, nil, "Price format with format indicator and price mantissa")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.price_type = ProtoField.new("Price Type", "tmx.mx.solaorderentry.sail.v1.21.pricetype", ftypes.STRING, nil, nil, nil, "Must contain one of the following Price Types: C = Committed L = Limit (price set in message) O = At opening price M = At best opposite price (Top Order)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.protection_type_advanced_protection_advanced_protection_disabled = ProtoField.new("Protection Type Advanced Protection Advanced Protection Disabled", "tmx.mx.solaorderentry.sail.v1.21.protectiontypeadvancedprotectionadvancedprotectiondisabled", ftypes.STRING, nil, nil, nil, "Type of protection requested by the Bulk Quote Participant (BQP): A = Advanced Protection N = Advanced Protection Disabled Note: If no RP: Bulk Quote Participant (BQP) Protection Subscription message is sent, MX will assume that the BQP did not request an Advanced Protection. BQP will be required to enable the Advanced Protection.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.protocol_id = ProtoField.new("Protocol Id", "tmx.mx.solaorderentry.sail.v1.21.protocolid", ftypes.STRING, nil, nil, nil, "Version of the protocol used by this connection")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity = ProtoField.new("Quantity", "tmx.mx.solaorderentry.sail.v1.21.quantity", ftypes.UINT32, nil, nil, nil, "Number of contracts or shares")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_2 = ProtoField.new("Quantity 2", "tmx.mx.solaorderentry.sail.v1.21.quantity2", ftypes.UINT8, nil, nil, nil, "Number of contracts or shares")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_4 = ProtoField.new("Quantity 4", "tmx.mx.solaorderentry.sail.v1.21.quantity4", ftypes.UINT16, nil, nil, nil, "Number of contracts or shares")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_6 = ProtoField.new("Quantity 6", "tmx.mx.solaorderentry.sail.v1.21.quantity6", ftypes.UINT24, nil, nil, nil, "Number of contracts or shares")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_remaining = ProtoField.new("Quantity Remaining", "tmx.mx.solaorderentry.sail.v1.21.quantityremaining", ftypes.UINT32, nil, nil, nil, "Number of contracts or shares")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_sign = ProtoField.new("Quantity Sign", "tmx.mx.solaorderentry.sail.v1.21.quantitysign", ftypes.STRING, nil, nil, nil, "For an order or quote update, it identifies how to handle the quantity: ‘+’ adds the incoming quantity to the booked quantity ‘-’ subtracts the incoming quantity from the booked quantity ‘=’ replaces the booked quantity with the incoming quantity")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_sign_or = ProtoField.new("Quantity Sign Or", "tmx.mx.solaorderentry.sail.v1.21.quantitysignor", ftypes.STRING, nil, nil, nil, "For an order or quote update, it identifies how to handle the quantity: ‘+’ adds the incoming quantity to the booked quantity ‘-’ subtracts the incoming quantity from the booked quantity ‘=’ replaces the booked quantity with the incoming quantity")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_term = ProtoField.new("Quantity Term", "tmx.mx.solaorderentry.sail.v1.21.quantityterm", ftypes.STRING, nil, nil, nil, "If included, must contain one of the following values: ‘ ’ = None D = Disclosed M = Minimum")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_traded = ProtoField.new("Quantity Traded", "tmx.mx.solaorderentry.sail.v1.21.quantitytraded", ftypes.UINT32, nil, nil, nil, "Number of contracts or shares")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.quote_id_identifies_traders_quote_on_this_group = ProtoField.new("Quote Id Identifies Traders Quote On This Group", "tmx.mx.solaorderentry.sail.v1.21.quoteididentifiestradersquoteonthisgroup", ftypes.STRING, nil, nil, nil, "Identifies an order. Associated with Group ID and Instrument ID. It is the order key identifier.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.quote_identifier_on_this_group = ProtoField.new("Quote Identifier On This Group", "tmx.mx.solaorderentry.sail.v1.21.quoteidentifieronthisgroup", ftypes.STRING, nil, nil, nil, "Identifies an order. Associated with Group ID and Instrument ID. It is the order key identifier.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.quote_number = ProtoField.new("Quote Number", "tmx.mx.solaorderentry.sail.v1.21.quotenumber", ftypes.UINT16, nil, nil, nil, "Stated inline as Numeric (3)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.received_message_type = ProtoField.new("Received Message Type", "tmx.mx.solaorderentry.sail.v1.21.receivedmessagetype", ftypes.STRING, nil, nil, nil, "Type of message")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.received_user_sequence_id = ProtoField.new("Received User Sequence Id", "tmx.mx.solaorderentry.sail.v1.21.receivedusersequenceid", ftypes.UINT32, nil, nil, nil, "Identifies all the incoming business messages for one connection. Must be sequential and start at 1 at the beginning of the day. Used by SOLA® to track gaps in message sequence.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.reference_id_order_id_or_quote_id = ProtoField.new("Reference Id Order Id Or Quote Id", "tmx.mx.solaorderentry.sail.v1.21.referenceidorderidorquoteid", ftypes.STRING, nil, nil, nil, "Identifies an order. Associated with Group ID and Instrument ID. It is the order key identifier.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.reset_all_groups = ProtoField.new("Reset All Groups", "tmx.mx.solaorderentry.sail.v1.21.resetallgroups", ftypes.STRING, nil, nil, nil, "Y = Yes N = No")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.risk_limits_usage_occurrence = ProtoField.new("Risk Limits Usage Occurrence", "tmx.mx.solaorderentry.sail.v1.21.risklimitsusageoccurrence", ftypes.STRING, nil, nil, nil, "The guide states this block as (1 to 350 occurrences).")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.selling_clearing_data = ProtoField.new("Selling Clearing Data", "tmx.mx.solaorderentry.sail.v1.21.sellingclearingdata", ftypes.STRING, nil, nil, nil, "Clearing Data for the selling side, which OX: Cross Entry carries alongside the other side.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.selling_owner_data = ProtoField.new("Selling Owner Data", "tmx.mx.solaorderentry.sail.v1.21.sellingownerdata", ftypes.STRING, nil, nil, nil, "Owner Data for the selling side, which OX: Cross Entry carries alongside the other side.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.session_id = ProtoField.new("Session Id", "tmx.mx.solaorderentry.sail.v1.21.sessionid", ftypes.STRING, nil, nil, nil, "Identifies the current Session ID. If set to blank spaces, means that the Participant wants to connect to the current Session ID.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.set_group_risk_limits_occurrence = ProtoField.new("Set Group Risk Limits Occurrence", "tmx.mx.solaorderentry.sail.v1.21.setgrouprisklimitsoccurrence", ftypes.STRING, nil, nil, nil, "The guide states this block as (1 to 100 occurrences).")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.short_exposure_action = ProtoField.new("Short Exposure Action", "tmx.mx.solaorderentry.sail.v1.21.shortexposureaction", ftypes.STRING, nil, nil, nil, "Action related to the corresponding limit: ? = Not Set (message does not modify the Limit) E = Enforce Limit (by rejecting and eliminating orders when Limit is reached) N = None (Limit is disabled) W = Warning (by sending an MN: Risk Limits Usage message when Limit is reached)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.short_exposure_limit = ProtoField.new("Short Exposure Limit", "tmx.mx.solaorderentry.sail.v1.21.shortexposurelimit", ftypes.STRING, nil, nil, nil, "Price format with format indicator and price mantissa: Format indicator (1) • Alpha: the price is negative (‘A’ means negative value with no decimal, ‘B’ means negative value with 1 decimal, ‘C’ means negative value with 2 decimals, etc.) • Numeric: the price is positive (‘0’ means positive value with no decimal, ‘1’ means positive value with one decimal, ‘2’ means positive value with 2 decimals, etc.) • Set to spaces: the price is not significant Price mantissa (9) • Represents the price value including the number of decimals defined in the format indicator Examples: • Format indicator = 2; Price mantissa = 3509438; Price = 35094.38 • Format indicator = A; Price mantissa = 3567838; Price = -3567838 • Format indicator = ; Price mantissa = 3567838; Price = not significant")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.short_position_action = ProtoField.new("Short Position Action", "tmx.mx.solaorderentry.sail.v1.21.shortpositionaction", ftypes.STRING, nil, nil, nil, "Action related to the corresponding limit: ? = Not Set (message does not modify the Limit) E = Enforce Limit (by rejecting and eliminating orders when Limit is reached) N = None (Limit is disabled) W = Warning (by sending an MN: Risk Limits Usage message when Limit is reached)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.short_position_limit = ProtoField.new("Short Position Limit", "tmx.mx.solaorderentry.sail.v1.21.shortpositionlimit", ftypes.UINT32, nil, nil, nil, "Number of contracts or shares")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.special_price_term = ProtoField.new("Special Price Term", "tmx.mx.solaorderentry.sail.v1.21.specialpriceterm", ftypes.STRING, nil, nil, nil, "If included, must contain one of the following values: ‘ ’ = None S = Stop order")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.special_trade_indicator = ProtoField.new("Special Trade Indicator", "tmx.mx.solaorderentry.sail.v1.21.specialtradeindicator", ftypes.STRING, nil, nil, nil, "Identifies a particular TradeType: ‘ ’ = Normal Trade A = As Of Trade B = Block Trade C = Contingent Trade D = Cross E = Exchange For Physical H = Hidden Trade I = Implied J = Delta Trade K = Committed Block L = Late Trade M = For future use N = For future use O = For future use P = For future use Q = For future use T = Committed U = Basis On Close V = Trade Correction Z = Price/Volume Adjustment Trade")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.start_of_message_in_error = ProtoField.new("Start Of Message In Error", "tmx.mx.solaorderentry.sail.v1.21.startofmessageinerror", ftypes.STRING, nil, nil, nil, "Stated inline as String (100)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.status = ProtoField.new("Status", "tmx.mx.solaorderentry.sail.v1.21.status", ftypes.STRING, nil, nil, nil, "Provides the outcome reserved for the order that is the subject of the entry, modification, or cancellation: ‘ ’ = Put in the order book (having possibly been partially executed) A = Cancelled by the Trader C = Eliminated by the Circuit Breaker E = Order eliminated by the system F = Eliminated due to Wash Trade Prevention G = Cancelled by the Firm Supervisor (User Global Cancel) I = Eliminated on Participant disconnection M = Eliminated by MOD N = Eliminated due to Wash Trade Prevention in non-trading state Q = Eliminated due to Wash Trade Prevention against quote S = Put in the order book as Stop order T = Eliminated due to trade limit exceeded U = Eliminated due to unpriced leg W = Cancel pending X = Order executed in full (or partially and the remaining part could not be put in the order book) (FAK)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.strategy_group = ProtoField.new("Strategy Group", "tmx.mx.solaorderentry.sail.v1.21.strategygroup", ftypes.STRING, nil, nil, nil, "Group identification within the system. A group is composed of instruments.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.strategy_instrument = ProtoField.new("Strategy Instrument", "tmx.mx.solaorderentry.sail.v1.21.strategyinstrument", ftypes.STRING, nil, nil, nil, "Instrument identification within a group")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.strategy_instrument_id = ProtoField.new("Strategy Instrument Id", "tmx.mx.solaorderentry.sail.v1.21.strategyinstrumentid", ftypes.STRING, nil, nil, nil, "Identifies the strategy Instrument ID that has traded in the system")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.strategy_trade_number = ProtoField.new("Strategy Trade Number", "tmx.mx.solaorderentry.sail.v1.21.strategytradenumber", ftypes.UINT32, nil, nil, nil, "Trade number of the strategy order as specified in the NT message of the strategy")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.strategy_verb_side = ProtoField.new("Strategy Verb Side", "tmx.mx.solaorderentry.sail.v1.21.strategyverbside", ftypes.STRING, nil, nil, nil, "Verb of the strategy order as specified in the NT: Execution Notice message of the strategy")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.team_level_risk_option = ProtoField.new("Team Level Risk Option", "tmx.mx.solaorderentry.sail.v1.21.teamlevelriskoption", ftypes.STRING, nil, nil, nil, "Configures the Risk Netting Options: ‘ ’ = Netting is disabled T = Cancel post Trader-Team level netting N = Netting is enabled P = Cancel post Firm level netting")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.trade_memo = ProtoField.new("Trade Memo", "tmx.mx.solaorderentry.sail.v1.21.tradememo", ftypes.STRING, nil, nil, nil, "Text entered by the MOD when it is a manual trade entry")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.trade_number = ProtoField.new("Trade Number", "tmx.mx.solaorderentry.sail.v1.21.tradenumber", ftypes.UINT32, nil, nil, nil, "Identifies the trade number for an Instrument and one day")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.trade_price = ProtoField.new("Trade Price", "tmx.mx.solaorderentry.sail.v1.21.tradeprice", ftypes.STRING, nil, nil, nil, "Price format with format indicator and price mantissa: Format indicator (1) • Alpha: the price is negative (‘A’ means negative value with no decimal, ‘B’ means negative value with 1 decimal, ‘C’ means negative value with 2 decimals, etc.) • Numeric: the price is positive (‘0’ means positive value with no decimal, ‘1’ means positive value with one decimal, ‘2’ means positive value with 2 decimals, etc.) • Set to spaces: the price is not significant Price mantissa (9) • Represents the price value including the number of decimals defined in the format indicator Examples: • Format indicator = 2; Price mantissa = 3509438; Price = 35094.38 • Format indicator = A; Price mantissa = 3567838; Price = -3567838 • Format indicator = ; Price mantissa = 3567838; Price = not significant")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.trade_type = ProtoField.new("Trade Type", "tmx.mx.solaorderentry.sail.v1.21.tradetype", ftypes.STRING, nil, nil, nil, "Identifies the origin of the Trade: F = Traded during continuous trading following FIFO algorithm M = Trade entered by MOD O = Traded during opening")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.trader = ProtoField.new("Trader", "tmx.mx.solaorderentry.sail.v1.21.trader", ftypes.STRING, nil, nil, nil, "Last four (4) Characters of the Trader ID")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.trader_id = ProtoField.new("Trader Id", "tmx.mx.solaorderentry.sail.v1.21.traderid", ftypes.STRING, nil, nil, nil, "Identifies the Trader: 4 first characters = Firm identifier 4 last characters = Trader identifier")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.trading_engine_timestamp_local_hhmmss = ProtoField.new("Trading Engine Timestamp Local Hhmmss", "tmx.mx.solaorderentry.sail.v1.21.tradingenginetimestamplocalhhmmss", ftypes.UINT24, nil, nil, nil, "User message or trading engine timestamp, Local, HHMMSS")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.trading_engine_timestamp_of_the_trade_local_hhmmss = ProtoField.new("Trading Engine Timestamp Of The Trade Local Hhmmss", "tmx.mx.solaorderentry.sail.v1.21.tradingenginetimestampofthetradelocalhhmmss", ftypes.UINT24, nil, nil, nil, "User message or trading engine timestamp, Local, HHMMSS")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.type_of_cancellation = ProtoField.new("Type Of Cancellation", "tmx.mx.solaorderentry.sail.v1.21.typeofcancellation", ftypes.STRING, nil, nil, nil, "Type of cancellation: A = All Q = QuotesOnly O = OrdersOnly S = StopOrdersOnly M = MarketOrdersOnly")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.type_of_cancellation_only_q_quotes_only_can_be_returned = ProtoField.new("Type Of Cancellation Only Q Quotes Only Can Be Returned", "tmx.mx.solaorderentry.sail.v1.21.typeofcancellationonlyqquotesonlycanbereturned", ftypes.STRING, nil, nil, nil, "Type of cancellation: A = All Q = QuotesOnly O = OrdersOnly S = StopOrdersOnly M = MarketOrdersOnly")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.type_of_cancellation_q_quotes_only = ProtoField.new("Type Of Cancellation Q Quotes Only", "tmx.mx.solaorderentry.sail.v1.21.typeofcancellationqquotesonly", ftypes.STRING, nil, nil, nil, "Type of cancellation: A = All Q = QuotesOnly O = OrdersOnly S = StopOrdersOnly M = MarketOrdersOnly")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.usage_group = ProtoField.new("Usage Group", "tmx.mx.solaorderentry.sail.v1.21.usagegroup", ftypes.STRING, nil, nil, nil, "Group identification within the system. A group is composed of instruments.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.usage_status = ProtoField.new("Usage Status", "tmx.mx.solaorderentry.sail.v1.21.usagestatus", ftypes.STRING, nil, nil, nil, "Status of current usage vs limit: I = Info (current usage is below the warning level) L = Limit (usage is at or above the limit) R = Rejection (an order was rejected because either the limit is reached, or accepting the order would cause the limit to be exceeded) W = Warning (current usage is over the warning level)")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.usage_trader = ProtoField.new("Usage Trader", "tmx.mx.solaorderentry.sail.v1.21.usagetrader", ftypes.STRING, nil, nil, nil, "Last four (4) Characters of the Trader ID")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_connection_occurrence = ProtoField.new("User Connection Occurrence", "tmx.mx.solaorderentry.sail.v1.21.userconnectionoccurrence", ftypes.STRING, nil, nil, nil, "The guide states this block as (1 to 99 occurrences).")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_id = ProtoField.new("User Id", "tmx.mx.solaorderentry.sail.v1.21.userid", ftypes.STRING, nil, nil, nil, "Identifies the Participant for a given connection. User ID must be referenced in the SOLA® configuration database.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_message_timestamp_local_hhmmss = ProtoField.new("User Message Timestamp Local Hhmmss", "tmx.mx.solaorderentry.sail.v1.21.usermessagetimestamplocalhhmmss", ftypes.UINT24, nil, nil, nil, "User message or trading engine timestamp, Local, HHMMSS")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_sequence_id = ProtoField.new("User Sequence Id", "tmx.mx.solaorderentry.sail.v1.21.usersequenceid", ftypes.UINT32, nil, nil, nil, "Identifies all the incoming business messages for one connection. Must be sequential and start at 1 at the beginning of the day. Used by SOLA® to track gaps in message sequence.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period = ProtoField.new("User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period", "tmx.mx.solaorderentry.sail.v1.21.usersequenceidfirstusersequenceidfornextcurrentheartbeatperiod", ftypes.UINT32, nil, nil, nil, "Identifies all the incoming business messages for one connection. Must be sequential and start at 1 at the beginning of the day. Used by SOLA® to track gaps in message sequence.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_timestamp_local_hhmmss = ProtoField.new("User Timestamp Local Hhmmss", "tmx.mx.solaorderentry.sail.v1.21.usertimestamplocalhhmmss", ftypes.UINT24, nil, nil, nil, "User message or trading engine timestamp, Local, HHMMSS")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.verb = ProtoField.new("Verb", "tmx.mx.solaorderentry.sail.v1.21.verb", ftypes.STRING, nil, nil, nil, "Identifies an order/quote side: B = Buy S = Sell")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.verb_side = ProtoField.new("Verb Side", "tmx.mx.solaorderentry.sail.v1.21.verbside", ftypes.STRING, nil, nil, nil, "Identifies an order/quote side: B = Buy S = Sell")

-- Tmx Mx SolaOrderEntry Sail 1.21 Framing
omi_tmx_mx_solaorderentry_sail_v1_21.fields.exchange_packet = ProtoField.new("Exchange Packet", "tmx.mx.solaorderentry.sail.v1.21.exchangepacket", ftypes.STRING, nil, nil, nil, "Mx Sail Tcp packet the Exchange sends")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_packet = ProtoField.new("Firm Packet", "tmx.mx.solaorderentry.sail.v1.21.firmpacket", ftypes.STRING, nil, nil, nil, "Mx Sail Tcp packet a Participant sends")

-- Tmx Mx SolaOrderEntry 1.21 Application Messages
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_command_acknowledgement = ProtoField.new("Bulk Command Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.bulkcommandacknowledgement", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote = ProtoField.new("Bulk Quote", "tmx.mx.solaorderentry.sail.v1.21.bulkquote", ftypes.STRING, nil, nil, nil, "This is a set of messages sent by the Participant to enter Bulk Quotes. The second letter of Message Type indicates the quantity and price formats. It is acknowledged by the LA: Bulk Quote Acknowledgement message.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_acknowledgement = ProtoField.new("Bulk Quote Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteacknowledgement", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_data = ProtoField.new("Bulk Quote Data", "tmx.mx.solaorderentry.sail.v1.21.bulkquotedata", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_data_acknowledgement = ProtoField.new("Bulk Quote Data Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.bulkquotedataacknowledgement", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_participant_bqp_protection_subscription = ProtoField.new("Bulk Quote Participant Bqp Protection Subscription", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteparticipantbqpprotectionsubscription", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_10_quantity_2 = ProtoField.new("Bulk Quote Price 10 Quantity 2", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice10quantity2", ftypes.STRING, nil, nil, nil, "This is a set of messages sent by the Participant to enter Bulk Quotes. The second letter of Message Type indicates the quantity and price formats. It is acknowledged by the LA: Bulk Quote Acknowledgement message.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_10_quantity_4 = ProtoField.new("Bulk Quote Price 10 Quantity 4", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice10quantity4", ftypes.STRING, nil, nil, nil, "This is a set of messages sent by the Participant to enter Bulk Quotes. The second letter of Message Type indicates the quantity and price formats. It is acknowledged by the LA: Bulk Quote Acknowledgement message.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_10_quantity_6 = ProtoField.new("Bulk Quote Price 10 Quantity 6", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice10quantity6", ftypes.STRING, nil, nil, nil, "This is a set of messages sent by the Participant to enter Bulk Quotes. The second letter of Message Type indicates the quantity and price formats. It is acknowledged by the LA: Bulk Quote Acknowledgement message.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_2 = ProtoField.new("Bulk Quote Price 4 Quantity 2", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice4quantity2", ftypes.STRING, nil, nil, nil, "This is a set of messages sent by the Participant to enter Bulk Quotes. The second letter of Message Type indicates the quantity and price formats. It is acknowledged by the LA: Bulk Quote Acknowledgement message.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_4 = ProtoField.new("Bulk Quote Price 4 Quantity 4", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice4quantity4", ftypes.STRING, nil, nil, nil, "This is a set of messages sent by the Participant to enter Bulk Quotes. The second letter of Message Type indicates the quantity and price formats. It is acknowledged by the LA: Bulk Quote Acknowledgement message.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_6 = ProtoField.new("Bulk Quote Price 4 Quantity 6", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice4quantity6", ftypes.STRING, nil, nil, nil, "This is a set of messages sent by the Participant to enter Bulk Quotes. The second letter of Message Type indicates the quantity and price formats. It is acknowledged by the LA: Bulk Quote Acknowledgement message.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_8 = ProtoField.new("Bulk Quote Price 4 Quantity 8", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice4quantity8", ftypes.STRING, nil, nil, nil, "This is a set of messages sent by the Participant to enter Bulk Quotes. The second letter of Message Type indicates the quantity and price formats. It is acknowledged by the LA: Bulk Quote Acknowledgement message.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_2 = ProtoField.new("Bulk Quote Price 6 Quantity 2", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice6quantity2", ftypes.STRING, nil, nil, nil, "This is a set of messages sent by the Participant to enter Bulk Quotes. The second letter of Message Type indicates the quantity and price formats. It is acknowledged by the LA: Bulk Quote Acknowledgement message.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_4 = ProtoField.new("Bulk Quote Price 6 Quantity 4", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice6quantity4", ftypes.STRING, nil, nil, nil, "This is a set of messages sent by the Participant to enter Bulk Quotes. The second letter of Message Type indicates the quantity and price formats. It is acknowledged by the LA: Bulk Quote Acknowledgement message.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_6 = ProtoField.new("Bulk Quote Price 6 Quantity 6", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice6quantity6", ftypes.STRING, nil, nil, nil, "This is a set of messages sent by the Participant to enter Bulk Quotes. The second letter of Message Type indicates the quantity and price formats. It is acknowledged by the LA: Bulk Quote Acknowledgement message.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_8 = ProtoField.new("Bulk Quote Price 6 Quantity 8", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice6quantity8", ftypes.STRING, nil, nil, nil, "This is a set of messages sent by the Participant to enter Bulk Quotes. The second letter of Message Type indicates the quantity and price formats. It is acknowledged by the LA: Bulk Quote Acknowledgement message.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_2 = ProtoField.new("Bulk Quote Price 8 Quantity 2", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice8quantity2", ftypes.STRING, nil, nil, nil, "This is a set of messages sent by the Participant to enter Bulk Quotes. The second letter of Message Type indicates the quantity and price formats. It is acknowledged by the LA: Bulk Quote Acknowledgement message.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_4 = ProtoField.new("Bulk Quote Price 8 Quantity 4", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice8quantity4", ftypes.STRING, nil, nil, nil, "This is a set of messages sent by the Participant to enter Bulk Quotes. The second letter of Message Type indicates the quantity and price formats. It is acknowledged by the LA: Bulk Quote Acknowledgement message.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_6 = ProtoField.new("Bulk Quote Price 8 Quantity 6", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice8quantity6", ftypes.STRING, nil, nil, nil, "This is a set of messages sent by the Participant to enter Bulk Quotes. The second letter of Message Type indicates the quantity and price formats. It is acknowledged by the LA: Bulk Quote Acknowledgement message.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_8 = ProtoField.new("Bulk Quote Price 8 Quantity 8", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice8quantity8", ftypes.STRING, nil, nil, nil, "This is a set of messages sent by the Participant to enter Bulk Quotes. The second letter of Message Type indicates the quantity and price formats. It is acknowledged by the LA: Bulk Quote Acknowledgement message.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.cancellation_of_all_quotes_notice = ProtoField.new("Cancellation Of All Quotes Notice", "tmx.mx.solaorderentry.sail.v1.21.cancellationofallquotesnotice", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.connection_acknowledgement = ProtoField.new("Connection Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.connectionacknowledgement", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.cross_entry = ProtoField.new("Cross Entry", "tmx.mx.solaorderentry.sail.v1.21.crossentry", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_acknowledgement = ProtoField.new("Disconnection Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.disconnectionacknowledgement", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_instruction = ProtoField.new("Disconnection Instruction", "tmx.mx.solaorderentry.sail.v1.21.disconnectioninstruction", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_instruction_acknowledgement = ProtoField.new("Disconnection Instruction Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.disconnectioninstructionacknowledgement", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.end_of_transmission = ProtoField.new("End Of Transmission", "tmx.mx.solaorderentry.sail.v1.21.endoftransmission", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.error_notice = ProtoField.new("Error Notice", "tmx.mx.solaorderentry.sail.v1.21.errornotice", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.excluded_instrument_notice = ProtoField.new("Excluded Instrument Notice", "tmx.mx.solaorderentry.sail.v1.21.excludedinstrumentnotice", ftypes.STRING, nil, nil, nil, "This message is sent by the Exchange to specify a list of instruments excluded from the next KG: Global Cancellation Confirmation or NP: Cancellation of All Quotes Notice messages.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.execution_cancellation_notice = ProtoField.new("Execution Cancellation Notice", "tmx.mx.solaorderentry.sail.v1.21.executioncancellationnotice", ftypes.STRING, nil, nil, nil, "This message is sent by the Exchange to report the execution of a trade cancellation by the MOD. This message has the same number of bytes and format as the NT: SAIL Execution Notice messages.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.execution_notice = ProtoField.new("Execution Notice", "tmx.mx.solaorderentry.sail.v1.21.executionnotice", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_risk_config = ProtoField.new("Firm Risk Config", "tmx.mx.solaorderentry.sail.v1.21.firmriskconfig", ftypes.STRING, nil, nil, nil, "This message is sent by the Participant to configure Trader Teams and Risk Netting options. It is acknowledged by the LB: Bulk Command Acknowledgement message.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.global_cancellation = ProtoField.new("Global Cancellation", "tmx.mx.solaorderentry.sail.v1.21.globalcancellation", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.global_cancellation_confirmation = ProtoField.new("Global Cancellation Confirmation", "tmx.mx.solaorderentry.sail.v1.21.globalcancellationconfirmation", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.group_state_change = ProtoField.new("Group State Change", "tmx.mx.solaorderentry.sail.v1.21.groupstatechange", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.heartbeat_question = ProtoField.new("Heartbeat Question", "tmx.mx.solaorderentry.sail.v1.21.heartbeatquestion", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.heartbeat_response = ProtoField.new("Heartbeat Response", "tmx.mx.solaorderentry.sail.v1.21.heartbeatresponse", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.instrument_state_change = ProtoField.new("Instrument State Change", "tmx.mx.solaorderentry.sail.v1.21.instrumentstatechange", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_execution_cancellation_notice = ProtoField.new("Leg Execution Cancellation Notice", "tmx.mx.solaorderentry.sail.v1.21.legexecutioncancellationnotice", ftypes.STRING, nil, nil, nil, "This message is sent by the Exchange to report the execution of a cancellation by the MOD for a leg of the strategy trade. This message has the same number of bytes and format as the NL: Leg Execution Notice message.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_execution_notice = ProtoField.new("Leg Execution Notice", "tmx.mx.solaorderentry.sail.v1.21.legexecutionnotice", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument = ProtoField.new("New Strategy Instrument", "tmx.mx.solaorderentry.sail.v1.21.newstrategyinstrument", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument_acknowledgement = ProtoField.new("New Strategy Instrument Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.newstrategyinstrumentacknowledgement", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_acknowledgement = ProtoField.new("Order Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.orderacknowledgement", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_cancellation = ProtoField.new("Order Cancellation", "tmx.mx.solaorderentry.sail.v1.21.ordercancellation", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_cancellation_acknowledgement = ProtoField.new("Order Cancellation Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.ordercancellationacknowledgement", ftypes.STRING, nil, nil, nil, "This message is to acknowledge an XE: Order Cancellation message. This message has the same number of bytes and format as the KE: Order Acknowledgement (the extensive list of fields is only described there), the KM: Order Modification Acknowledgement and the NZ: Order Cancellation Notice (by MOD or System) messages.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_cancellation_notice_by_mod_or_system = ProtoField.new("Order Cancellation Notice By Mod Or System", "tmx.mx.solaorderentry.sail.v1.21.ordercancellationnoticebymodorsystem", ftypes.STRING, nil, nil, nil, "This triggered message is sent by the Exchange to report the cancellation of an order by the MOD or by the System. This message has the same number of bytes and format as the KE: Order Acknowledgement, KM: Order Modification Acknowledgement and KZ: Order Cancellation Acknowledgement messages.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_entry = ProtoField.new("Order Entry", "tmx.mx.solaorderentry.sail.v1.21.orderentry", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_modification = ProtoField.new("Order Modification", "tmx.mx.solaorderentry.sail.v1.21.ordermodification", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_modification_acknowledgement = ProtoField.new("Order Modification Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.ordermodificationacknowledgement", ftypes.STRING, nil, nil, nil, "This message is sent by the Exchange to acknowledge an OM: Order Modification message. This message has the same format as the KE: Order Acknowledgement (the extensive list of fields is only described there), KZ: Order Cancellation Acknowledgement and NZ: Order Cancellation Notice (by MOD or System) messages.")
omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_reply = ProtoField.new("Order Reply", "tmx.mx.solaorderentry.sail.v1.21.orderreply", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_request = ProtoField.new("Order Request", "tmx.mx.solaorderentry.sail.v1.21.orderrequest", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.out_of_sequence = ProtoField.new("Out Of Sequence", "tmx.mx.solaorderentry.sail.v1.21.outofsequence", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.overstepped_order_or_quote_notice = ProtoField.new("Overstepped Order Or Quote Notice", "tmx.mx.solaorderentry.sail.v1.21.oversteppedorderorquotenotice", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.request_for_quote = ProtoField.new("Request For Quote", "tmx.mx.solaorderentry.sail.v1.21.requestforquote", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.request_for_quote_with_side_acknowledgement = ProtoField.new("Request For Quote With Side Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.requestforquotewithsideacknowledgement", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.risk_limits_usage = ProtoField.new("Risk Limits Usage", "tmx.mx.solaorderentry.sail.v1.21.risklimitsusage", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.sail_request_for_quote_with_side = ProtoField.new("Sail Request For Quote With Side", "tmx.mx.solaorderentry.sail.v1.21.sailrequestforquotewithside", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.set_global_risk_limits = ProtoField.new("Set Global Risk Limits", "tmx.mx.solaorderentry.sail.v1.21.setglobalrisklimits", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.set_group_risk_limits = ProtoField.new("Set Group Risk Limits", "tmx.mx.solaorderentry.sail.v1.21.setgrouprisklimits", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.standard_acknowledgement = ProtoField.new("Standard Acknowledgement", "tmx.mx.solaorderentry.sail.v1.21.standardacknowledgement", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.technical_error_notice = ProtoField.new("Technical Error Notice", "tmx.mx.solaorderentry.sail.v1.21.technicalerrornotice", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_connection = ProtoField.new("User Connection", "tmx.mx.solaorderentry.sail.v1.21.userconnection", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_disconnection = ProtoField.new("User Disconnection", "tmx.mx.solaorderentry.sail.v1.21.userdisconnection", ftypes.STRING)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_global_cancellation = ProtoField.new("User Global Cancellation", "tmx.mx.solaorderentry.sail.v1.21.userglobalcancellation", ftypes.STRING)

-- Tmx Mx SolaOrderEntry Sail 1.21 Generated Fields
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_command_acknowledgement_occurrence_index = ProtoField.new("Bulk Command Acknowledgement Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.bulkcommandacknowledgementoccurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_acknowledgement_occurrence_index = ProtoField.new("Bulk Quote Acknowledgement Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteacknowledgementoccurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_occurrence_index = ProtoField.new("Bulk Quote Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteoccurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_10_quantity_2_occurrence_index = ProtoField.new("Bulk Quote Price 10 Quantity 2 Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice10quantity2occurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_10_quantity_4_occurrence_index = ProtoField.new("Bulk Quote Price 10 Quantity 4 Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice10quantity4occurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_10_quantity_6_occurrence_index = ProtoField.new("Bulk Quote Price 10 Quantity 6 Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice10quantity6occurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_2_occurrence_index = ProtoField.new("Bulk Quote Price 4 Quantity 2 Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice4quantity2occurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_4_occurrence_index = ProtoField.new("Bulk Quote Price 4 Quantity 4 Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice4quantity4occurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_6_occurrence_index = ProtoField.new("Bulk Quote Price 4 Quantity 6 Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice4quantity6occurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_8_occurrence_index = ProtoField.new("Bulk Quote Price 4 Quantity 8 Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice4quantity8occurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_2_occurrence_index = ProtoField.new("Bulk Quote Price 6 Quantity 2 Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice6quantity2occurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_4_occurrence_index = ProtoField.new("Bulk Quote Price 6 Quantity 4 Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice6quantity4occurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_6_occurrence_index = ProtoField.new("Bulk Quote Price 6 Quantity 6 Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice6quantity6occurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_8_occurrence_index = ProtoField.new("Bulk Quote Price 6 Quantity 8 Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice6quantity8occurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_2_occurrence_index = ProtoField.new("Bulk Quote Price 8 Quantity 2 Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice8quantity2occurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_4_occurrence_index = ProtoField.new("Bulk Quote Price 8 Quantity 4 Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice8quantity4occurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_6_occurrence_index = ProtoField.new("Bulk Quote Price 8 Quantity 6 Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice8quantity6occurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_8_occurrence_index = ProtoField.new("Bulk Quote Price 8 Quantity 8 Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.bulkquoteprice8quantity8occurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_instruction_occurrence_index = ProtoField.new("Disconnection Instruction Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.disconnectioninstructionoccurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.excluded_instrument_notice_occurrence_index = ProtoField.new("Excluded Instrument Notice Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.excludedinstrumentnoticeoccurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_risk_config_trader_team_index = ProtoField.new("Firm Risk Config Trader Team Index", "tmx.mx.solaorderentry.sail.v1.21.firmriskconfigtraderteamindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_risk_config_trader_team_trader_index = ProtoField.new("Firm Risk Config Trader Team Trader Index", "tmx.mx.solaorderentry.sail.v1.21.firmriskconfigtraderteamtraderindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument_acknowledgement_leg_definition_repeating_block_index = ProtoField.new("New Strategy Instrument Acknowledgement Leg Definition Repeating Block Index", "tmx.mx.solaorderentry.sail.v1.21.newstrategyinstrumentacknowledgementlegdefinitionrepeatingblockindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument_leg_definition_repeating_block_index = ProtoField.new("New Strategy Instrument Leg Definition Repeating Block Index", "tmx.mx.solaorderentry.sail.v1.21.newstrategyinstrumentlegdefinitionrepeatingblockindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.risk_limits_usage_occurrence_index = ProtoField.new("Risk Limits Usage Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.risklimitsusageoccurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.set_group_risk_limits_occurrence_index = ProtoField.new("Set Group Risk Limits Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.setgrouprisklimitsoccurrenceindex", ftypes.UINT16)
omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_connection_occurrence_index = ProtoField.new("User Connection Occurrence Index", "tmx.mx.solaorderentry.sail.v1.21.userconnectionoccurrenceindex", ftypes.UINT16)

-- Tmx Mx SolaOrderEntry Sail 1.21 Expert Info
tmx_mx_solaorderentry_sail_v1_21.experts = {}
tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number = ProtoExpert.new("tmx.mx.solaorderentry.sail.v1.21.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_tmx_mx_solaorderentry_sail_v1_21.experts = { tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number }

-----------------------------------------------------------------------
-- Tmx Mx SolaOrderEntry Sail 1.21 Formatting
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

-- Tmx Mx SolaOrderEntry Sail 1.21 Element Dissection Options
show.application_messages = true
show.structs = true
show.indexes = true

-- Register Tmx Mx SolaOrderEntry Sail 1.21 Show Options
omi_tmx_mx_solaorderentry_sail_v1_21.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_tmx_mx_solaorderentry_sail_v1_21.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_tmx_mx_solaorderentry_sail_v1_21.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_tmx_mx_solaorderentry_sail_v1_21.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_tmx_mx_solaorderentry_sail_v1_21.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_tmx_mx_solaorderentry_sail_v1_21.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_tmx_mx_solaorderentry_sail_v1_21.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_tmx_mx_solaorderentry_sail_v1_21.prefs.show_application_messages then
    show.application_messages = omi_tmx_mx_solaorderentry_sail_v1_21.prefs.show_application_messages
  end
  if show.structs ~= omi_tmx_mx_solaorderentry_sail_v1_21.prefs.show_structs then
    show.structs = omi_tmx_mx_solaorderentry_sail_v1_21.prefs.show_structs
  end
  if show.indexes ~= omi_tmx_mx_solaorderentry_sail_v1_21.prefs.show_indexes then
    show.indexes = omi_tmx_mx_solaorderentry_sail_v1_21.prefs.show_indexes
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


-----------------------------------------------------------------------
-- Tmx Mx SolaOrderEntry Sail 1.21 Fields
-----------------------------------------------------------------------

-- Account Type
tmx_mx_solaorderentry_sail_v1_21.account_type = {}

-- Size: Account Type
tmx_mx_solaorderentry_sail_v1_21.account_type.size = 1

-- Display: Account Type
tmx_mx_solaorderentry_sail_v1_21.account_type.labels = {
  ["1"] = "Account Type: Customer (1)",
  ["2"] = "Account Type: House (2)",
  ["4"] = "Account Type: Pro (4)",
  ["5"] = "Account Type: Non Client (5)",
  ["D"] = "Account Type: Non Client Shareholder (D)",
  ["H"] = "Account Type: Customer Shareholder (H)",
  ["I"] = "Account Type: Customer Insider (I)",
  ["L"] = "Account Type: Pro Shareholder (L)",
  ["N"] = "Account Type: House Insider (N)",
  ["O"] = "Account Type: House Shareholder (O)",
  ["R"] = "Account Type: Non Client Insider (R)",
  ["S"] = "Account Type: Pro Insider (S)",
}

tmx_mx_solaorderentry_sail_v1_21.account_type.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.account_type.labels[value] or "Account Type: Unknown("..value..")"
end

-- Dissect: Account Type
tmx_mx_solaorderentry_sail_v1_21.account_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.account_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.account_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.account_type, range, value, display)

  return offset + length, value
end

-- Account Type Filter
tmx_mx_solaorderentry_sail_v1_21.account_type_filter = {}

-- Size: Account Type Filter
tmx_mx_solaorderentry_sail_v1_21.account_type_filter.size = 8

-- Display: Account Type Filter
tmx_mx_solaorderentry_sail_v1_21.account_type_filter.display = function(value)
  return "Account Type Filter: "..value
end

-- Dissect: Account Type Filter
tmx_mx_solaorderentry_sail_v1_21.account_type_filter.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.account_type_filter.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.account_type_filter.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.account_type_filter, range, value, display)

  return offset + length, value
end

-- Active Y On N Off
tmx_mx_solaorderentry_sail_v1_21.active_y_on_n_off = {}

-- Size: Active Y On N Off
tmx_mx_solaorderentry_sail_v1_21.active_y_on_n_off.size = 1

-- Display: Active Y On N Off
tmx_mx_solaorderentry_sail_v1_21.active_y_on_n_off.labels = {
  ["Y"] = "Active Y On N Off: Yes (Y)",
  ["N"] = "Active Y On N Off: No (N)",
}

tmx_mx_solaorderentry_sail_v1_21.active_y_on_n_off.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.active_y_on_n_off.labels[value] or "Active Y On N Off: Unknown("..value..")"
end

-- Dissect: Active Y On N Off
tmx_mx_solaorderentry_sail_v1_21.active_y_on_n_off.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.active_y_on_n_off.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.active_y_on_n_off.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.active_y_on_n_off, range, value, display)

  return offset + length, value
end

-- Additional Price
tmx_mx_solaorderentry_sail_v1_21.additional_price = {}

-- Size: Additional Price
tmx_mx_solaorderentry_sail_v1_21.additional_price.size = 10

-- Display: Additional Price
tmx_mx_solaorderentry_sail_v1_21.additional_price.display = function(value)
  return "Additional Price: "..value
end

-- Dissect: Additional Price
tmx_mx_solaorderentry_sail_v1_21.additional_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.additional_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.additional_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.additional_price, range, value, display)

  return offset + length, value
end

-- Additional Quantity
tmx_mx_solaorderentry_sail_v1_21.additional_quantity = {}

-- Size: Additional Quantity
tmx_mx_solaorderentry_sail_v1_21.additional_quantity.size = 8

-- Display: Additional Quantity
tmx_mx_solaorderentry_sail_v1_21.additional_quantity.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Additional Quantity: No Value"
  end

  return "Additional Quantity: "..value
end

-- Dissect: Additional Quantity
tmx_mx_solaorderentry_sail_v1_21.additional_quantity.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.additional_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.additional_quantity, range, value, "Additional Quantity: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Additional Quantity is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.additional_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.additional_quantity, range, value, display)

  return offset + length, value
end

-- Alignment Padding
tmx_mx_solaorderentry_sail_v1_21.alignment_padding = {}

-- Size: Alignment Padding
tmx_mx_solaorderentry_sail_v1_21.alignment_padding.size = 0

-- Display: Alignment Padding
tmx_mx_solaorderentry_sail_v1_21.alignment_padding.display = function(value)
  return "Alignment Padding: "..value
end

-- Dissect: Alignment Padding
tmx_mx_solaorderentry_sail_v1_21.alignment_padding.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.alignment_padding.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solaorderentry_sail_v1_21.alignment_padding.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.alignment_padding, range, value, display)

  return offset + length, value
end

-- Anti Wash Id
tmx_mx_solaorderentry_sail_v1_21.anti_wash_id = {}

-- Size: Anti Wash Id
tmx_mx_solaorderentry_sail_v1_21.anti_wash_id.size = 8

-- Display: Anti Wash Id
tmx_mx_solaorderentry_sail_v1_21.anti_wash_id.display = function(value)
  return "Anti Wash Id: "..value
end

-- Dissect: Anti Wash Id
tmx_mx_solaorderentry_sail_v1_21.anti_wash_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.anti_wash_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.anti_wash_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.anti_wash_id, range, value, display)

  return offset + length, value
end

-- Anti Wash Instruction
tmx_mx_solaorderentry_sail_v1_21.anti_wash_instruction = {}

-- Size: Anti Wash Instruction
tmx_mx_solaorderentry_sail_v1_21.anti_wash_instruction.size = 1

-- Display: Anti Wash Instruction
tmx_mx_solaorderentry_sail_v1_21.anti_wash_instruction.labels = {
  ["B"] = "Anti Wash Instruction: Cancel Both Inbound Order And Opposite Resting Order (B)",
  ["I"] = "Anti Wash Instruction: Cancel Inbound Order (I)",
  ["O"] = "Anti Wash Instruction: Cancel Opposite Resting Order (O)",
}

tmx_mx_solaorderentry_sail_v1_21.anti_wash_instruction.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.anti_wash_instruction.labels[value] or "Anti Wash Instruction: Unknown("..value..")"
end

-- Dissect: Anti Wash Instruction
tmx_mx_solaorderentry_sail_v1_21.anti_wash_instruction.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.anti_wash_instruction.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.anti_wash_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.anti_wash_instruction, range, value, display)

  return offset + length, value
end

-- Assigned Price
tmx_mx_solaorderentry_sail_v1_21.assigned_price = {}

-- Size: Assigned Price
tmx_mx_solaorderentry_sail_v1_21.assigned_price.size = 10

-- Display: Assigned Price
tmx_mx_solaorderentry_sail_v1_21.assigned_price.display = function(value)
  return "Assigned Price: "..value
end

-- Dissect: Assigned Price
tmx_mx_solaorderentry_sail_v1_21.assigned_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.assigned_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.assigned_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.assigned_price, range, value, display)

  return offset + length, value
end

-- Calculation Time Interval
tmx_mx_solaorderentry_sail_v1_21.calculation_time_interval = {}

-- Size: Calculation Time Interval
tmx_mx_solaorderentry_sail_v1_21.calculation_time_interval.size = 8

-- Display: Calculation Time Interval
tmx_mx_solaorderentry_sail_v1_21.calculation_time_interval.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Calculation Time Interval: No Value"
  end

  return "Calculation Time Interval: "..value
end

-- Dissect: Calculation Time Interval
tmx_mx_solaorderentry_sail_v1_21.calculation_time_interval.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.calculation_time_interval.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.calculation_time_interval, range, value, "Calculation Time Interval: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Calculation Time Interval is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.calculation_time_interval.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.calculation_time_interval, range, value, display)

  return offset + length, value
end

-- Cancel Reason
tmx_mx_solaorderentry_sail_v1_21.cancel_reason = {}

-- Size: Cancel Reason
tmx_mx_solaorderentry_sail_v1_21.cancel_reason.size = 1

-- Display: Cancel Reason
tmx_mx_solaorderentry_sail_v1_21.cancel_reason.labels = {
  ["A"] = "Cancel Reason: Cancelled By Trader (A)",
  ["C"] = "Cancel Reason: Cancelled By Circuit Breaker (C)",
  ["G"] = "Cancel Reason: Cancelled By Supervisor (G)",
  ["I"] = "Cancel Reason: Eliminated By Disconnection (I)",
  ["M"] = "Cancel Reason: Cancelled By Mod (M)",
  ["N"] = "Cancel Reason: Bqm Maximum Delta Volume Has Been Reached (N)",
  ["P"] = "Cancel Reason: Bqm Maximum Number Of Trades Has Been Reached (P)",
  ["R"] = "Cancel Reason: Bqm Maximum Value Has Been Reached (R)",
  ["S"] = "Cancel Reason: Cancelled By System (S)",
  ["T"] = "Cancel Reason: Bqm Maximum Volume Has Been Reached (T)",
  ["V"] = "Cancel Reason: Bqm Maximum Delta Value Has Been Reached (V)",
  ["W"] = "Cancel Reason: Cancel Pending (W)",
}

tmx_mx_solaorderentry_sail_v1_21.cancel_reason.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.cancel_reason.labels[value] or "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
tmx_mx_solaorderentry_sail_v1_21.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Cancelled Order Id
tmx_mx_solaorderentry_sail_v1_21.cancelled_order_id = {}

-- Size: Cancelled Order Id
tmx_mx_solaorderentry_sail_v1_21.cancelled_order_id.size = 8

-- Display: Cancelled Order Id
tmx_mx_solaorderentry_sail_v1_21.cancelled_order_id.display = function(value)
  return "Cancelled Order Id: "..value
end

-- Dissect: Cancelled Order Id
tmx_mx_solaorderentry_sail_v1_21.cancelled_order_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.cancelled_order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.cancelled_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.cancelled_order_id, range, value, display)

  return offset + length, value
end

-- Clearing Instruction
tmx_mx_solaorderentry_sail_v1_21.clearing_instruction = {}

-- Size: Clearing Instruction
tmx_mx_solaorderentry_sail_v1_21.clearing_instruction.size = 12

-- Display: Clearing Instruction
tmx_mx_solaorderentry_sail_v1_21.clearing_instruction.display = function(value)
  return "Clearing Instruction: "..value
end

-- Dissect: Clearing Instruction
tmx_mx_solaorderentry_sail_v1_21.clearing_instruction.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.clearing_instruction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.clearing_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.clearing_instruction, range, value, display)

  return offset + length, value
end

-- Command Number
tmx_mx_solaorderentry_sail_v1_21.command_number = {}

-- Size: Command Number
tmx_mx_solaorderentry_sail_v1_21.command_number.size = 4

-- Display: Command Number
tmx_mx_solaorderentry_sail_v1_21.command_number.display = function(value)
  return "Command Number: "..value
end

-- Dissect: Command Number
tmx_mx_solaorderentry_sail_v1_21.command_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.command_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.command_number, range, value, "Command Number: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Command Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.command_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.command_number, range, value, display)

  return offset + length, value
end

-- Counterpart Order Id
tmx_mx_solaorderentry_sail_v1_21.counterpart_order_id = {}

-- Size: Counterpart Order Id
tmx_mx_solaorderentry_sail_v1_21.counterpart_order_id.size = 8

-- Display: Counterpart Order Id
tmx_mx_solaorderentry_sail_v1_21.counterpart_order_id.display = function(value)
  return "Counterpart Order Id: "..value
end

-- Dissect: Counterpart Order Id
tmx_mx_solaorderentry_sail_v1_21.counterpart_order_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.counterpart_order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.counterpart_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.counterpart_order_id, range, value, display)

  return offset + length, value
end

-- Counterpart Trader Id
tmx_mx_solaorderentry_sail_v1_21.counterpart_trader_id = {}

-- Size: Counterpart Trader Id
tmx_mx_solaorderentry_sail_v1_21.counterpart_trader_id.size = 8

-- Display: Counterpart Trader Id
tmx_mx_solaorderentry_sail_v1_21.counterpart_trader_id.display = function(value)
  return "Counterpart Trader Id: "..value
end

-- Dissect: Counterpart Trader Id
tmx_mx_solaorderentry_sail_v1_21.counterpart_trader_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.counterpart_trader_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.counterpart_trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.counterpart_trader_id, range, value, display)

  return offset + length, value
end

-- Creation Status
tmx_mx_solaorderentry_sail_v1_21.creation_status = {}

-- Size: Creation Status
tmx_mx_solaorderentry_sail_v1_21.creation_status.size = 1

-- Display: Creation Status
tmx_mx_solaorderentry_sail_v1_21.creation_status.labels = {
  ["C"] = "Creation Status: Created as specified (C)",
  ["M"] = "Creation Status: Created with modifications (M)",
}

tmx_mx_solaorderentry_sail_v1_21.creation_status.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.creation_status.labels[value] or "Creation Status: Unknown("..value..")"
end

-- Dissect: Creation Status
tmx_mx_solaorderentry_sail_v1_21.creation_status.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.creation_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.creation_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.creation_status, range, value, display)

  return offset + length, value
end

-- Current Session Id
tmx_mx_solaorderentry_sail_v1_21.current_session_id = {}

-- Size: Current Session Id
tmx_mx_solaorderentry_sail_v1_21.current_session_id.size = 4

-- Display: Current Session Id
tmx_mx_solaorderentry_sail_v1_21.current_session_id.display = function(value)
  return "Current Session Id: "..value
end

-- Dissect: Current Session Id
tmx_mx_solaorderentry_sail_v1_21.current_session_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.current_session_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.current_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.current_session_id, range, value, display)

  return offset + length, value
end

-- Current Usage
tmx_mx_solaorderentry_sail_v1_21.current_usage = {}

-- Size: Current Usage
tmx_mx_solaorderentry_sail_v1_21.current_usage.size = 10

-- Display: Current Usage
tmx_mx_solaorderentry_sail_v1_21.current_usage.display = function(value)
  return "Current Usage: "..value
end

-- Dissect: Current Usage
tmx_mx_solaorderentry_sail_v1_21.current_usage.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.current_usage.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.current_usage.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.current_usage, range, value, display)

  return offset + length, value
end

-- Default Long Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_action = {}

-- Size: Default Long Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_action.size = 1

-- Display: Default Long Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_action.labels = {
  ["?"] = "Default Long Exposure Action: Not Set (?)",
  ["E"] = "Default Long Exposure Action: Enforce Limit (E)",
  ["N"] = "Default Long Exposure Action: None (N)",
  ["W"] = "Default Long Exposure Action: Warning (W)",
}

tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_action.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_action.labels[value] or "Default Long Exposure Action: Unknown("..value..")"
end

-- Dissect: Default Long Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_long_exposure_action, range, value, display)

  return offset + length, value
end

-- Default Long Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_limit = {}

-- Size: Default Long Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_limit.size = 10

-- Display: Default Long Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_limit.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Default Long Exposure Limit: No Value"
  end

  return "Default Long Exposure Limit: "..value
end

-- Dissect: Default Long Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_limit.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_long_exposure_limit, range, value, display)

  return offset + length, value
end

-- Default Long Position Action
tmx_mx_solaorderentry_sail_v1_21.default_long_position_action = {}

-- Size: Default Long Position Action
tmx_mx_solaorderentry_sail_v1_21.default_long_position_action.size = 1

-- Display: Default Long Position Action
tmx_mx_solaorderentry_sail_v1_21.default_long_position_action.labels = {
  ["?"] = "Default Long Position Action: Not Set (?)",
  ["E"] = "Default Long Position Action: Enforce Limit (E)",
  ["N"] = "Default Long Position Action: None (N)",
  ["W"] = "Default Long Position Action: Warning (W)",
}

tmx_mx_solaorderentry_sail_v1_21.default_long_position_action.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.default_long_position_action.labels[value] or "Default Long Position Action: Unknown("..value..")"
end

-- Dissect: Default Long Position Action
tmx_mx_solaorderentry_sail_v1_21.default_long_position_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_long_position_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.default_long_position_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_long_position_action, range, value, display)

  return offset + length, value
end

-- Default Long Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_long_position_limit = {}

-- Size: Default Long Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_long_position_limit.size = 8

-- Display: Default Long Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_long_position_limit.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Default Long Position Limit: No Value"
  end

  return "Default Long Position Limit: "..value
end

-- Dissect: Default Long Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_long_position_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_long_position_limit.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_long_position_limit, range, value, "Default Long Position Limit: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Default Long Position Limit is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.default_long_position_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_long_position_limit, range, value, display)

  return offset + length, value
end

-- Default Maximum Order Quantity
tmx_mx_solaorderentry_sail_v1_21.default_maximum_order_quantity = {}

-- Size: Default Maximum Order Quantity
tmx_mx_solaorderentry_sail_v1_21.default_maximum_order_quantity.size = 8

-- Display: Default Maximum Order Quantity
tmx_mx_solaorderentry_sail_v1_21.default_maximum_order_quantity.display = function(value)
  return "Default Maximum Order Quantity: "..value
end

-- Dissect: Default Maximum Order Quantity
tmx_mx_solaorderentry_sail_v1_21.default_maximum_order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_maximum_order_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_maximum_order_quantity, range, value, "Default Maximum Order Quantity: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Default Maximum Order Quantity is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.default_maximum_order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_maximum_order_quantity, range, value, display)

  return offset + length, value
end

-- Default Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_action = {}

-- Size: Default Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_action.size = 1

-- Display: Default Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_action.labels = {
  ["?"] = "Default Net Exposure Action: Not Set (?)",
  ["E"] = "Default Net Exposure Action: Enforce Limit (E)",
  ["N"] = "Default Net Exposure Action: None (N)",
  ["W"] = "Default Net Exposure Action: Warning (W)",
}

tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_action.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_action.labels[value] or "Default Net Exposure Action: Unknown("..value..")"
end

-- Dissect: Default Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_net_exposure_action, range, value, display)

  return offset + length, value
end

-- Default Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_limit = {}

-- Size: Default Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_limit.size = 10

-- Display: Default Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_limit.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Default Net Exposure Limit: No Value"
  end

  return "Default Net Exposure Limit: "..value
end

-- Dissect: Default Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_limit.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_net_exposure_limit, range, value, display)

  return offset + length, value
end

-- Default Net Position Action
tmx_mx_solaorderentry_sail_v1_21.default_net_position_action = {}

-- Size: Default Net Position Action
tmx_mx_solaorderentry_sail_v1_21.default_net_position_action.size = 1

-- Display: Default Net Position Action
tmx_mx_solaorderentry_sail_v1_21.default_net_position_action.labels = {
  ["?"] = "Default Net Position Action: Not Set (?)",
  ["E"] = "Default Net Position Action: Enforce Limit (E)",
  ["N"] = "Default Net Position Action: None (N)",
  ["W"] = "Default Net Position Action: Warning (W)",
}

tmx_mx_solaorderentry_sail_v1_21.default_net_position_action.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.default_net_position_action.labels[value] or "Default Net Position Action: Unknown("..value..")"
end

-- Dissect: Default Net Position Action
tmx_mx_solaorderentry_sail_v1_21.default_net_position_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_net_position_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.default_net_position_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_net_position_action, range, value, display)

  return offset + length, value
end

-- Default Net Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_net_position_limit = {}

-- Size: Default Net Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_net_position_limit.size = 8

-- Display: Default Net Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_net_position_limit.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Default Net Position Limit: No Value"
  end

  return "Default Net Position Limit: "..value
end

-- Dissect: Default Net Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_net_position_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_net_position_limit.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_net_position_limit, range, value, "Default Net Position Limit: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Default Net Position Limit is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.default_net_position_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_net_position_limit, range, value, display)

  return offset + length, value
end

-- Default Short Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_action = {}

-- Size: Default Short Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_action.size = 1

-- Display: Default Short Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_action.labels = {
  ["?"] = "Default Short Exposure Action: Not Set (?)",
  ["E"] = "Default Short Exposure Action: Enforce Limit (E)",
  ["N"] = "Default Short Exposure Action: None (N)",
  ["W"] = "Default Short Exposure Action: Warning (W)",
}

tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_action.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_action.labels[value] or "Default Short Exposure Action: Unknown("..value..")"
end

-- Dissect: Default Short Exposure Action
tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_short_exposure_action, range, value, display)

  return offset + length, value
end

-- Default Short Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_limit = {}

-- Size: Default Short Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_limit.size = 10

-- Display: Default Short Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_limit.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Default Short Exposure Limit: No Value"
  end

  return "Default Short Exposure Limit: "..value
end

-- Dissect: Default Short Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_limit.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_short_exposure_limit, range, value, display)

  return offset + length, value
end

-- Default Short Position Action
tmx_mx_solaorderentry_sail_v1_21.default_short_position_action = {}

-- Size: Default Short Position Action
tmx_mx_solaorderentry_sail_v1_21.default_short_position_action.size = 1

-- Display: Default Short Position Action
tmx_mx_solaorderentry_sail_v1_21.default_short_position_action.labels = {
  ["?"] = "Default Short Position Action: Not Set (?)",
  ["E"] = "Default Short Position Action: Enforce Limit (E)",
  ["N"] = "Default Short Position Action: None (N)",
  ["W"] = "Default Short Position Action: Warning (W)",
}

tmx_mx_solaorderentry_sail_v1_21.default_short_position_action.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.default_short_position_action.labels[value] or "Default Short Position Action: Unknown("..value..")"
end

-- Dissect: Default Short Position Action
tmx_mx_solaorderentry_sail_v1_21.default_short_position_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_short_position_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.default_short_position_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_short_position_action, range, value, display)

  return offset + length, value
end

-- Default Short Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_short_position_limit = {}

-- Size: Default Short Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_short_position_limit.size = 8

-- Display: Default Short Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_short_position_limit.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Default Short Position Limit: No Value"
  end

  return "Default Short Position Limit: "..value
end

-- Dissect: Default Short Position Limit
tmx_mx_solaorderentry_sail_v1_21.default_short_position_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.default_short_position_limit.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_short_position_limit, range, value, "Default Short Position Limit: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Default Short Position Limit is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.default_short_position_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.default_short_position_limit, range, value, display)

  return offset + length, value
end

-- Delta Maximum Value
tmx_mx_solaorderentry_sail_v1_21.delta_maximum_value = {}

-- Size: Delta Maximum Value
tmx_mx_solaorderentry_sail_v1_21.delta_maximum_value.size = 8

-- Display: Delta Maximum Value
tmx_mx_solaorderentry_sail_v1_21.delta_maximum_value.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Delta Maximum Value: No Value"
  end

  return "Delta Maximum Value: "..value
end

-- Dissect: Delta Maximum Value
tmx_mx_solaorderentry_sail_v1_21.delta_maximum_value.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.delta_maximum_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.delta_maximum_value, range, value, "Delta Maximum Value: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Delta Maximum Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.delta_maximum_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.delta_maximum_value, range, value, display)

  return offset + length, value
end

-- Delta Maximum Volume
tmx_mx_solaorderentry_sail_v1_21.delta_maximum_volume = {}

-- Size: Delta Maximum Volume
tmx_mx_solaorderentry_sail_v1_21.delta_maximum_volume.size = 8

-- Display: Delta Maximum Volume
tmx_mx_solaorderentry_sail_v1_21.delta_maximum_volume.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Delta Maximum Volume: No Value"
  end

  return "Delta Maximum Volume: "..value
end

-- Dissect: Delta Maximum Volume
tmx_mx_solaorderentry_sail_v1_21.delta_maximum_volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.delta_maximum_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.delta_maximum_volume, range, value, "Delta Maximum Volume: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Delta Maximum Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.delta_maximum_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.delta_maximum_volume, range, value, display)

  return offset + length, value
end

-- Disconnection Instruction Note Cancel Quotes Only Q Quotes Only
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_note_cancel_quotes_only_q_quotes_only = {}

-- Size: Disconnection Instruction Note Cancel Quotes Only Q Quotes Only
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_note_cancel_quotes_only_q_quotes_only.size = 1

-- Display: Disconnection Instruction Note Cancel Quotes Only Q Quotes Only
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_note_cancel_quotes_only_q_quotes_only.labels = {
  ["A"] = "Disconnection Instruction Note Cancel Quotes Only Q Quotes Only: All (A)",
  ["Q"] = "Disconnection Instruction Note Cancel Quotes Only Q Quotes Only: Quotes Only (Q)",
  ["O"] = "Disconnection Instruction Note Cancel Quotes Only Q Quotes Only: Orders Only (O)",
  ["S"] = "Disconnection Instruction Note Cancel Quotes Only Q Quotes Only: Stop Orders Only (S)",
  ["M"] = "Disconnection Instruction Note Cancel Quotes Only Q Quotes Only: Market Orders Only (M)",
}

tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_note_cancel_quotes_only_q_quotes_only.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_note_cancel_quotes_only_q_quotes_only.labels[value] or "Disconnection Instruction Note Cancel Quotes Only Q Quotes Only: Unknown("..value..")"
end

-- Dissect: Disconnection Instruction Note Cancel Quotes Only Q Quotes Only
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_note_cancel_quotes_only_q_quotes_only.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_note_cancel_quotes_only_q_quotes_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_note_cancel_quotes_only_q_quotes_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_instruction_note_cancel_quotes_only_q_quotes_only, range, value, display)

  return offset + length, value
end

-- Duration Type
tmx_mx_solaorderentry_sail_v1_21.duration_type = {}

-- Size: Duration Type
tmx_mx_solaorderentry_sail_v1_21.duration_type.size = 1

-- Display: Duration Type
tmx_mx_solaorderentry_sail_v1_21.duration_type.labels = {
  ["D"] = "Duration Type: Good Till Date (D)",
  ["E"] = "Duration Type: Fill And Kill (E)",
  ["F"] = "Duration Type: Good Till Cancel (F)",
  ["J"] = "Duration Type: Day (J)",
  ["P"] = "Duration Type: Pre Opening (P)",
  ["W"] = "Duration Type: While Connected (W)",
}

tmx_mx_solaorderentry_sail_v1_21.duration_type.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.duration_type.labels[value] or "Duration Type: Unknown("..value..")"
end

-- Dissect: Duration Type
tmx_mx_solaorderentry_sail_v1_21.duration_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.duration_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.duration_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.duration_type, range, value, display)

  return offset + length, value
end

-- End Of Text
tmx_mx_solaorderentry_sail_v1_21.end_of_text = {}

-- Size: End Of Text
tmx_mx_solaorderentry_sail_v1_21.end_of_text.size = 1

-- Display: End Of Text
tmx_mx_solaorderentry_sail_v1_21.end_of_text.display = function(value)
  if value == 3 then
    return "End Of Text: End Of Text"
  end

  return "End Of Text: Unknown("..value..")"
end

-- Dissect: End Of Text
tmx_mx_solaorderentry_sail_v1_21.end_of_text.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.end_of_text.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_mx_solaorderentry_sail_v1_21.end_of_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.end_of_text, range, value, display)

  return offset + length, value
end

-- Ended Session Id
tmx_mx_solaorderentry_sail_v1_21.ended_session_id = {}

-- Size: Ended Session Id
tmx_mx_solaorderentry_sail_v1_21.ended_session_id.size = 4

-- Display: Ended Session Id
tmx_mx_solaorderentry_sail_v1_21.ended_session_id.display = function(value)
  return "Ended Session Id: "..value
end

-- Dissect: Ended Session Id
tmx_mx_solaorderentry_sail_v1_21.ended_session_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.ended_session_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.ended_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.ended_session_id, range, value, display)

  return offset + length, value
end

-- Error Code
tmx_mx_solaorderentry_sail_v1_21.error_code = {}

-- Size: Error Code
tmx_mx_solaorderentry_sail_v1_21.error_code.size = 4

-- Display: Error Code
tmx_mx_solaorderentry_sail_v1_21.error_code.labels = {
  [0001] = "Error Code: User Identification Is Incorrect (0001)",
  [0002] = "Error Code: Protocol Version Is Not Supported (0002)",
  [0003] = "Error Code: Message Type Is Not Supported (0003)",
  [0004] = "Error Code: Session Id Is Not Active (0004)",
  [0006] = "Error Code: Message Type Requested Is Not Supported (0006)",
  [0008] = "Error Code: Message Is Too Short (0008)",
  [0009] = "Error Code: Message Is Too Long (0009)",
  [0010] = "Error Code: Message Contains Binary Data (0010)",
  [0011] = "Error Code: No Heartbeat Activity Disconnection (0011)",
  [0012] = "Error Code: Message Type Is Out Of Context (0012)",
  [0013] = "Error Code: User Id Has Been Deactivated Disconnection (0013)",
  [0014] = "Error Code: Syntax Error Detailed Text (0014)",
  [0100] = "Error Code: Firm Is Forbidden To Trade On This Group (0100)",
  [0101] = "Error Code: Duration Type Is Forbidden For Current Group State (0101)",
  [0102] = "Error Code: Verb Field Side Cannot Be Modified (0102)",
  [0103] = "Error Code: Order Is Not Active (0103)",
  [0104] = "Error Code: Price Type Is Forbidden For This Instrument (0104)",
  [0105] = "Error Code: Price Term Is Forbidden For Current Instrument State (0105)",
  [0108] = "Error Code: Duration Type Is Forbidden For Current Instrument State (0108)",
  [0109] = "Error Code: Order Cannot Be Processed No Opposite Limit (0109)",
  [0110] = "Error Code: Price Does Not Represent A Valid Tick Increment For This Instrument (0110)",
  [0111] = "Error Code: Duration Type Is Invalid For This Price Type (0111)",
  [0112] = "Error Code: Cross Order Price Must Be Within The Instrument Trading Limits (0112)",
  [0113] = "Error Code: Order Price Outside Price Spread (0113)",
  [0114] = "Error Code: Opposite Firm Must Be Filled For Committed Order (0114)",
  [0119] = "Error Code: Quantity Is Out Of Range (0119)",
  [0120] = "Error Code: Functionality Is Not Supported (0120)",
  [0201] = "Error Code: Gtd Date Must Be Equal To Or Greater Than Current Day (0201)",
  [0202] = "Error Code: Gtd Date Must Be Equal To Or Less Than Instrument Expiration Date (0202)",
  [0203] = "Error Code: Gtd Date Must Be Filled Only If Duration Type Is Equal To Gtd (0203)",
  [0300] = "Error Code: Quantity Term Is Forbidden For Current Instrument State (0300)",
  [0302] = "Error Code: Quantity Must Be Less Than Or Equal To Maximum Improvement Quantity (0302)",
  [0303] = "Error Code: Quantity Term Is Not Authorized For This Order Type (0303)",
  [0304] = "Error Code: Additional Quantity Must Be Less Than Order Quantity (0304)",
  [0305] = "Error Code: Additional Quantity Is Too Small (0305)",
  [0306] = "Error Code: Minimum Quantity Cannot Be Modified (0306)",
  [0307] = "Error Code: Quantity Term Is Forbidden For Duration Type (0307)",
  [0308] = "Error Code: Order Quantity Is Outside The Instrument Quantity Threshold (0308)",
  [0309] = "Error Code: Quantities Must Be Multiples Of Lot Size (0309)",
  [0402] = "Error Code: Trader Id Field Cannot Be Modified (0402)",
  [0403] = "Error Code: Bulk Quote Participant Not Authorized For Group (0403)",
  [0500] = "Error Code: Order Price Is Outside The Instrument Price Threshold (0500)",
  [0501] = "Error Code: Price Field Is Mandatory For Limit Orders (0501)",
  [0502] = "Error Code: Price Field Must Not Be Filled For This Price Type (0502)",
  [0503] = "Error Code: Order Cannot Be Modified Or Cancelled (0503)",
  [0504] = "Error Code: Additional Price Is Forbidden For Price Term (0504)",
  [0505] = "Error Code: Order Price Must Be Greater Than Additional Price (0505)",
  [0506] = "Error Code: Order Price Must Be Lower Than Additional Price (0506)",
  [0507] = "Error Code: Additional Price Must Be Lower Than Last Price Or Last Day Price (0507)",
  [0508] = "Error Code: Additional Price Must Be Greater Than Last Price Or Last Day Price (0508)",
  [0509] = "Error Code: Order Rejected Cannot Trade Outside Instrument Price Thresholds (0509)",
  [0510] = "Error Code: Order Cannot Be Modified (0510)",
  [0513] = "Error Code: Instrument Allows Only Closing Orders (0513)",
  [0514] = "Error Code: Instrument Leg Allows Only Closing Orders (0514)",
  [0515] = "Error Code: Order Quantity Limit Exceeded (0515)",
  [0516] = "Error Code: Privileges Are Limited To Closing Orders Only (0516)",
  [0517] = "Error Code: Anti Wash Protections Is Forbidden For This Price Type (0517)",
  [0518] = "Error Code: Anti Wash Protection Is Forbidden For This Quantity Term (0518)",
  [0700] = "Error Code: Only One Quote Per Instrument And Per Side Is Accepted (0700)",
  [0701] = "Error Code: Quote Is Not Present In The Instrument Book (0701)",
  [0702] = "Error Code: Bulk Quote Participant Protection In Progress Quote Not Processed (0702)",
  [0703] = "Error Code: Advanced Bulk Quote Participant Protection Not Enabled For This Group (0703)",
  [0704] = "Error Code: Buy And Sell Must Not Cross For The Same Instrument (0704)",
  [0705] = "Error Code: Number Of Quotes Is Not In Sync With The Message Length (0705)",
  [0707] = "Error Code: Bulk Quote Participant Protection State Must Be Reactivated (0707)",
  [0708] = "Error Code: Trader Id Has No Quote For This Group (0708)",
  [0709] = "Error Code: All The Instruments Must Belong To The Same Group (0709)",
  [0710] = "Error Code: Clearing Data Has Not Been Initialized (0710)",
  [1000] = "Error Code: Cross Orders Forbidden In Pre Opening Phase (1000)",
  [1001] = "Error Code: Instrument Does Not Exist (1001)",
  [1002] = "Error Code: Group Id Does Not Exist (1002)",
  [1003] = "Error Code: Trader Id Is Invalid (1003)",
  [1004] = "Error Code: Message Type Is Forbidden For Current Instrument State (1004)",
  [2000] = "Error Code: Technical Error Function Not Performed Contact Technical Help Desk (2000)",
  [2001] = "Error Code: Gateway State Forbids This Command Contact Technical Help Desk (2001)",
  [2002] = "Error Code: Function Only Partially Performed Contact Technical Help Desk (2002)",
  [3101] = "Error Code: Trader Long Position Limit Exceeded (3101)",
  [3102] = "Error Code: Trader Short Position Limit Exceeded (3102)",
  [3103] = "Error Code: Trader Net Position Limit Exceeded (3103)",
  [3104] = "Error Code: Trader Long Exposure Limit Exceeded (3104)",
  [3105] = "Error Code: Trader Short Exposure Limit Exceeded (3105)",
  [3106] = "Error Code: Trader Net Exposure Limit Exceeded (3106)",
  [3107] = "Error Code: Firm Long Position Limit Exceeded (3107)",
  [3108] = "Error Code: Firm Short Position Limit Exceeded (3108)",
  [3109] = "Error Code: Firm Net Position Limit Exceeded (3109)",
  [3110] = "Error Code: Firm Long Exposure Limit Exceeded (3110)",
  [3111] = "Error Code: Firm Short Exposure Limit Exceeded (3111)",
  [3112] = "Error Code: Firm Net Exposure Limit Exceeded (3112)",
  [3113] = "Error Code: Trader Global Net Exposure Limit Exceeded (3113)",
  [3114] = "Error Code: Firm Global Net Exposure Limit Exceeded (3114)",
  [3115] = "Error Code: Not Allowed On A Strategy Group (3115)",
  [3116] = "Error Code: Risk Limits For This Group Must Be Set On The Associated Group (3116)",
}

tmx_mx_solaorderentry_sail_v1_21.error_code.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.error_code.labels[value] or "Error Code: Unknown("..value..")"
end

-- Dissect: Error Code
tmx_mx_solaorderentry_sail_v1_21.error_code.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.error_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.error_code, range, value, "Error Code: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Error Code is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.error_code, range, value, display)

  return offset + length, value
end

-- Error Description
tmx_mx_solaorderentry_sail_v1_21.error_description = {}

-- Size: Error Description
tmx_mx_solaorderentry_sail_v1_21.error_description.size = 100

-- Display: Error Description
tmx_mx_solaorderentry_sail_v1_21.error_description.display = function(value)
  return "Error Description: "..value
end

-- Dissect: Error Description
tmx_mx_solaorderentry_sail_v1_21.error_description.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.error_description.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solaorderentry_sail_v1_21.error_description.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.error_description, range, value, display)

  return offset + length, value
end

-- Error Message
tmx_mx_solaorderentry_sail_v1_21.error_message = {}

-- Size: Error Message
tmx_mx_solaorderentry_sail_v1_21.error_message.size = 100

-- Display: Error Message
tmx_mx_solaorderentry_sail_v1_21.error_message.display = function(value)
  return "Error Message: "..value
end

-- Dissect: Error Message
tmx_mx_solaorderentry_sail_v1_21.error_message.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.error_message.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solaorderentry_sail_v1_21.error_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.error_message, range, value, display)

  return offset + length, value
end

-- Error Position
tmx_mx_solaorderentry_sail_v1_21.error_position = {}

-- Size: Error Position
tmx_mx_solaorderentry_sail_v1_21.error_position.size = 4

-- Display: Error Position
tmx_mx_solaorderentry_sail_v1_21.error_position.display = function(value)
  return "Error Position: "..value
end

-- Dissect: Error Position
tmx_mx_solaorderentry_sail_v1_21.error_position.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.error_position.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.error_position, range, value, "Error Position: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Error Position is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.error_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.error_position, range, value, display)

  return offset + length, value
end

-- Exchange Message Id
tmx_mx_solaorderentry_sail_v1_21.exchange_message_id = {}

-- Size: Exchange Message Id
tmx_mx_solaorderentry_sail_v1_21.exchange_message_id.size = 6

-- Display: Exchange Message Id
tmx_mx_solaorderentry_sail_v1_21.exchange_message_id.display = function(value)
  return "Exchange Message Id: "..value
end

-- Dissect: Exchange Message Id
tmx_mx_solaorderentry_sail_v1_21.exchange_message_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.exchange_message_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.exchange_message_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.exchange_message_id, range, value, display)

  return offset + length, value
end

-- Executing Participant
tmx_mx_solaorderentry_sail_v1_21.executing_participant = {}

-- Size: Executing Participant
tmx_mx_solaorderentry_sail_v1_21.executing_participant.size = 4

-- Display: Executing Participant
tmx_mx_solaorderentry_sail_v1_21.executing_participant.display = function(value)
  return "Executing Participant: "..value
end

-- Dissect: Executing Participant
tmx_mx_solaorderentry_sail_v1_21.executing_participant.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.executing_participant.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.executing_participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.executing_participant, range, value, display)

  return offset + length, value
end

-- Expected Last User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.expected_last_user_sequence_id = {}

-- Size: Expected Last User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.expected_last_user_sequence_id.size = 8

-- Display: Expected Last User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.expected_last_user_sequence_id.display = function(value)
  return "Expected Last User Sequence Id: "..value
end

-- Dissect: Expected Last User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.expected_last_user_sequence_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.expected_last_user_sequence_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.expected_last_user_sequence_id, range, value, "Expected Last User Sequence Id: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Expected Last User Sequence Id is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.expected_last_user_sequence_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.expected_last_user_sequence_id, range, value, display)

  return offset + length, value
end

-- Filler 1
tmx_mx_solaorderentry_sail_v1_21.filler_1 = {}

-- Size: Filler 1
tmx_mx_solaorderentry_sail_v1_21.filler_1.size = 1

-- Display: Filler 1
tmx_mx_solaorderentry_sail_v1_21.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
tmx_mx_solaorderentry_sail_v1_21.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.filler_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solaorderentry_sail_v1_21.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_1, range, value, display)

  return offset + length, value
end

-- Filler 2
tmx_mx_solaorderentry_sail_v1_21.filler_2 = {}

-- Size: Filler 2
tmx_mx_solaorderentry_sail_v1_21.filler_2.size = 2

-- Display: Filler 2
tmx_mx_solaorderentry_sail_v1_21.filler_2.display = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
tmx_mx_solaorderentry_sail_v1_21.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.filler_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solaorderentry_sail_v1_21.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_2, range, value, display)

  return offset + length, value
end

-- Filler 20
tmx_mx_solaorderentry_sail_v1_21.filler_20 = {}

-- Size: Filler 20
tmx_mx_solaorderentry_sail_v1_21.filler_20.size = 20

-- Display: Filler 20
tmx_mx_solaorderentry_sail_v1_21.filler_20.display = function(value)
  return "Filler 20: "..value
end

-- Dissect: Filler 20
tmx_mx_solaorderentry_sail_v1_21.filler_20.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.filler_20.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solaorderentry_sail_v1_21.filler_20.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_20, range, value, display)

  return offset + length, value
end

-- Filler 4
tmx_mx_solaorderentry_sail_v1_21.filler_4 = {}

-- Size: Filler 4
tmx_mx_solaorderentry_sail_v1_21.filler_4.size = 4

-- Display: Filler 4
tmx_mx_solaorderentry_sail_v1_21.filler_4.display = function(value)
  return "Filler 4: "..value
end

-- Dissect: Filler 4
tmx_mx_solaorderentry_sail_v1_21.filler_4.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.filler_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solaorderentry_sail_v1_21.filler_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_4, range, value, display)

  return offset + length, value
end

-- Filler 5
tmx_mx_solaorderentry_sail_v1_21.filler_5 = {}

-- Size: Filler 5
tmx_mx_solaorderentry_sail_v1_21.filler_5.size = 5

-- Display: Filler 5
tmx_mx_solaorderentry_sail_v1_21.filler_5.display = function(value)
  return "Filler 5: "..value
end

-- Dissect: Filler 5
tmx_mx_solaorderentry_sail_v1_21.filler_5.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.filler_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solaorderentry_sail_v1_21.filler_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_5, range, value, display)

  return offset + length, value
end

-- Filler 6
tmx_mx_solaorderentry_sail_v1_21.filler_6 = {}

-- Size: Filler 6
tmx_mx_solaorderentry_sail_v1_21.filler_6.size = 6

-- Display: Filler 6
tmx_mx_solaorderentry_sail_v1_21.filler_6.display = function(value)
  return "Filler 6: "..value
end

-- Dissect: Filler 6
tmx_mx_solaorderentry_sail_v1_21.filler_6.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.filler_6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_mx_solaorderentry_sail_v1_21.filler_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.filler_6, range, value, display)

  return offset + length, value
end

-- Firm Level Risk Option
tmx_mx_solaorderentry_sail_v1_21.firm_level_risk_option = {}

-- Size: Firm Level Risk Option
tmx_mx_solaorderentry_sail_v1_21.firm_level_risk_option.size = 1

-- Display: Firm Level Risk Option
tmx_mx_solaorderentry_sail_v1_21.firm_level_risk_option.display = function(value)
  if value == " " then
    return "Firm Level Risk Option: Netting Is Disabled (<whitespace>)"
  end
  if value == "T" then
    return "Firm Level Risk Option: Cancel Post Trader Team Level Netting (T)"
  end
  if value == "N" then
    return "Firm Level Risk Option: Netting Is Enabled (N)"
  end
  if value == "P" then
    return "Firm Level Risk Option: Cancel Post Firm Level Netting (P)"
  end

  return "Firm Level Risk Option: Unknown("..value..")"
end

-- Dissect: Firm Level Risk Option
tmx_mx_solaorderentry_sail_v1_21.firm_level_risk_option.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.firm_level_risk_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.firm_level_risk_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_level_risk_option, range, value, display)

  return offset + length, value
end

-- Gap Sequence Id
tmx_mx_solaorderentry_sail_v1_21.gap_sequence_id = {}

-- Size: Gap Sequence Id
tmx_mx_solaorderentry_sail_v1_21.gap_sequence_id.size = 2

-- Display: Gap Sequence Id
tmx_mx_solaorderentry_sail_v1_21.gap_sequence_id.display = function(value)
  return "Gap Sequence Id: "..value
end

-- Dissect: Gap Sequence Id
tmx_mx_solaorderentry_sail_v1_21.gap_sequence_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.gap_sequence_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.gap_sequence_id, range, value, "Gap Sequence Id: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Gap Sequence Id is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.gap_sequence_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.gap_sequence_id, range, value, display)

  return offset + length, value
end

-- Global Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_action = {}

-- Size: Global Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_action.size = 1

-- Display: Global Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_action.labels = {
  ["?"] = "Global Net Exposure Action: Not Set (?)",
  ["E"] = "Global Net Exposure Action: Enforce Limit (E)",
  ["N"] = "Global Net Exposure Action: None (N)",
  ["W"] = "Global Net Exposure Action: Warning (W)",
}

tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_action.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_action.labels[value] or "Global Net Exposure Action: Unknown("..value..")"
end

-- Dissect: Global Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.global_net_exposure_action, range, value, display)

  return offset + length, value
end

-- Global Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_limit = {}

-- Size: Global Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_limit.size = 10

-- Display: Global Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_limit.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Global Net Exposure Limit: No Value"
  end

  return "Global Net Exposure Limit: "..value
end

-- Dissect: Global Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_limit.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.global_net_exposure_limit, range, value, display)

  return offset + length, value
end

-- Group
tmx_mx_solaorderentry_sail_v1_21.group = {}

-- Size: Group
tmx_mx_solaorderentry_sail_v1_21.group.size = 2

-- Display: Group
tmx_mx_solaorderentry_sail_v1_21.group.display = function(value)
  return "Group: "..value
end

-- Dissect: Group
tmx_mx_solaorderentry_sail_v1_21.group.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.group, range, value, display)

  return offset + length, value
end

-- Group Filter
tmx_mx_solaorderentry_sail_v1_21.group_filter = {}

-- Size: Group Filter
tmx_mx_solaorderentry_sail_v1_21.group_filter.size = 2

-- Display: Group Filter
tmx_mx_solaorderentry_sail_v1_21.group_filter.display = function(value)
  return "Group Filter: "..value
end

-- Dissect: Group Filter
tmx_mx_solaorderentry_sail_v1_21.group_filter.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.group_filter.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.group_filter.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.group_filter, range, value, display)

  return offset + length, value
end

-- Group State
tmx_mx_solaorderentry_sail_v1_21.group_state = {}

-- Size: Group State
tmx_mx_solaorderentry_sail_v1_21.group_state.size = 1

-- Display: Group State
tmx_mx_solaorderentry_sail_v1_21.group_state.labels = {
  ["C"] = "Group State: Consultation Start (C)",
  ["E"] = "Group State: No Cancel Period (E)",
  ["P"] = "Group State: Pre Opening (P)",
  ["O"] = "Group State: Opening (O)",
  ["S"] = "Group State: Continuous Trading Session (S)",
  ["F"] = "Group State: Consultation End (F)",
  ["N"] = "Group State: Mod Intervention (N)",
  ["M"] = "Group State: Mini Batch (M)",
  ["B"] = "Group State: Post Session (B)",
  ["I"] = "Group State: Prohibited (I)",
  ["Z"] = "Group State: Interrupted (Z)",
}

tmx_mx_solaorderentry_sail_v1_21.group_state.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.group_state.labels[value] or "Group State: Unknown("..value..")"
end

-- Dissect: Group State
tmx_mx_solaorderentry_sail_v1_21.group_state.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.group_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.group_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.group_state, range, value, display)

  return offset + length, value
end

-- Gtd Date
tmx_mx_solaorderentry_sail_v1_21.gtd_date = {}

-- Size: Gtd Date
tmx_mx_solaorderentry_sail_v1_21.gtd_date.size = 8

-- Display: Gtd Date
tmx_mx_solaorderentry_sail_v1_21.gtd_date.display = function(value)
  -- Check if field has value
  if tonumber(value) == 0 then
    return "Gtd Date: No Value"
  end

  if #value < 8 then
    return "Gtd Date: "..value
  end

  return "Gtd Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Gtd Date
tmx_mx_solaorderentry_sail_v1_21.gtd_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.gtd_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solaorderentry_sail_v1_21.gtd_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.gtd_date, range, value, display)

  return offset + length, value
end

-- Hedge Spec
tmx_mx_solaorderentry_sail_v1_21.hedge_spec = {}

-- Size: Hedge Spec
tmx_mx_solaorderentry_sail_v1_21.hedge_spec.size = 1

-- Display: Hedge Spec
tmx_mx_solaorderentry_sail_v1_21.hedge_spec.labels = {
  ["H"] = "Hedge Spec: Hedger (H)",
  ["S"] = "Hedge Spec: Speculator (S)",
}

tmx_mx_solaorderentry_sail_v1_21.hedge_spec.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.hedge_spec.labels[value] or "Hedge Spec: Unknown("..value..")"
end

-- Dissect: Hedge Spec
tmx_mx_solaorderentry_sail_v1_21.hedge_spec.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.hedge_spec.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.hedge_spec.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.hedge_spec, range, value, display)

  return offset + length, value
end

-- Id Code For The Counterpart Participant
tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant = {}

-- Size: Id Code For The Counterpart Participant
tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.size = 4

-- Display: Id Code For The Counterpart Participant
tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.display = function(value)
  return "Id Code For The Counterpart Participant: "..value
end

-- Dissect: Id Code For The Counterpart Participant
tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.id_code_for_the_counterpart_participant, range, value, display)

  return offset + length, value
end

-- Inactivity Interval
tmx_mx_solaorderentry_sail_v1_21.inactivity_interval = {}

-- Size: Inactivity Interval
tmx_mx_solaorderentry_sail_v1_21.inactivity_interval.size = 2

-- Display: Inactivity Interval
tmx_mx_solaorderentry_sail_v1_21.inactivity_interval.display = function(value)
  return "Inactivity Interval: "..value
end

-- Dissect: Inactivity Interval
tmx_mx_solaorderentry_sail_v1_21.inactivity_interval.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.inactivity_interval.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.inactivity_interval, range, value, "Inactivity Interval: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Inactivity Interval is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.inactivity_interval.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.inactivity_interval, range, value, display)

  return offset + length, value
end

-- Instrument
tmx_mx_solaorderentry_sail_v1_21.instrument = {}

-- Size: Instrument
tmx_mx_solaorderentry_sail_v1_21.instrument.size = 4

-- Display: Instrument
tmx_mx_solaorderentry_sail_v1_21.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
tmx_mx_solaorderentry_sail_v1_21.instrument.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.instrument, range, value, display)

  return offset + length, value
end

-- Instrument Filter
tmx_mx_solaorderentry_sail_v1_21.instrument_filter = {}

-- Size: Instrument Filter
tmx_mx_solaorderentry_sail_v1_21.instrument_filter.size = 4

-- Display: Instrument Filter
tmx_mx_solaorderentry_sail_v1_21.instrument_filter.display = function(value)
  return "Instrument Filter: "..value
end

-- Dissect: Instrument Filter
tmx_mx_solaorderentry_sail_v1_21.instrument_filter.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.instrument_filter.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.instrument_filter.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.instrument_filter, range, value, display)

  return offset + length, value
end

-- Instrument State
tmx_mx_solaorderentry_sail_v1_21.instrument_state = {}

-- Size: Instrument State
tmx_mx_solaorderentry_sail_v1_21.instrument_state.size = 1

-- Display: Instrument State
tmx_mx_solaorderentry_sail_v1_21.instrument_state.labels = {
  ["N"] = "Instrument State: Normal (N)",
  ["F"] = "Instrument State: Forbidden (F)",
  ["R"] = "Instrument State: Orders And Quotes Are Processed In Pre Opening If The Group Is In Trading Status (R)",
}

tmx_mx_solaorderentry_sail_v1_21.instrument_state.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.instrument_state.labels[value] or "Instrument State: Unknown("..value..")"
end

-- Dissect: Instrument State
tmx_mx_solaorderentry_sail_v1_21.instrument_state.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.instrument_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.instrument_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.instrument_state, range, value, display)

  return offset + length, value
end

-- Last Exchange Message Id Sent To Participant
tmx_mx_solaorderentry_sail_v1_21.last_exchange_message_id_sent_to_participant = {}

-- Size: Last Exchange Message Id Sent To Participant
tmx_mx_solaorderentry_sail_v1_21.last_exchange_message_id_sent_to_participant.size = 6

-- Display: Last Exchange Message Id Sent To Participant
tmx_mx_solaorderentry_sail_v1_21.last_exchange_message_id_sent_to_participant.display = function(value)
  return "Last Exchange Message Id Sent To Participant: "..value
end

-- Dissect: Last Exchange Message Id Sent To Participant
tmx_mx_solaorderentry_sail_v1_21.last_exchange_message_id_sent_to_participant.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.last_exchange_message_id_sent_to_participant.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.last_exchange_message_id_sent_to_participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.last_exchange_message_id_sent_to_participant, range, value, display)

  return offset + length, value
end

-- Last User Sequence Id Received
tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received = {}

-- Size: Last User Sequence Id Received
tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received.size = 8

-- Display: Last User Sequence Id Received
tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Last User Sequence Id Received: No Value"
  end

  return "Last User Sequence Id Received: "..value
end

-- Dissect: Last User Sequence Id Received
tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.last_user_sequence_id_received, range, value, "Last User Sequence Id Received: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Last User Sequence Id Received is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.last_user_sequence_id_received, range, value, display)

  return offset + length, value
end

-- Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes
tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes = {}

-- Size: Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes
tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes.size = 8

-- Display: Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes
tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes: No Value"
  end

  return "Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes: "..value
end

-- Dissect: Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes
tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes, range, value, "Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes, range, value, display)

  return offset + length, value
end

-- Leg Group
tmx_mx_solaorderentry_sail_v1_21.leg_group = {}

-- Size: Leg Group
tmx_mx_solaorderentry_sail_v1_21.leg_group.size = 2

-- Display: Leg Group
tmx_mx_solaorderentry_sail_v1_21.leg_group.display = function(value)
  return "Leg Group: "..value
end

-- Dissect: Leg Group
tmx_mx_solaorderentry_sail_v1_21.leg_group.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.leg_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.leg_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_group, range, value, display)

  return offset + length, value
end

-- Leg Instrument
tmx_mx_solaorderentry_sail_v1_21.leg_instrument = {}

-- Size: Leg Instrument
tmx_mx_solaorderentry_sail_v1_21.leg_instrument.size = 4

-- Display: Leg Instrument
tmx_mx_solaorderentry_sail_v1_21.leg_instrument.display = function(value)
  return "Leg Instrument: "..value
end

-- Dissect: Leg Instrument
tmx_mx_solaorderentry_sail_v1_21.leg_instrument.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.leg_instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.leg_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_instrument, range, value, display)

  return offset + length, value
end

-- Leg Number
tmx_mx_solaorderentry_sail_v1_21.leg_number = {}

-- Size: Leg Number
tmx_mx_solaorderentry_sail_v1_21.leg_number.size = 2

-- Display: Leg Number
tmx_mx_solaorderentry_sail_v1_21.leg_number.display = function(value)
  return "Leg Number: "..value
end

-- Dissect: Leg Number
tmx_mx_solaorderentry_sail_v1_21.leg_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.leg_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_number, range, value, "Leg Number: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Leg Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.leg_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_number, range, value, display)

  return offset + length, value
end

-- Leg Quantity Ratio
tmx_mx_solaorderentry_sail_v1_21.leg_quantity_ratio = {}

-- Size: Leg Quantity Ratio
tmx_mx_solaorderentry_sail_v1_21.leg_quantity_ratio.size = 8

-- Display: Leg Quantity Ratio
tmx_mx_solaorderentry_sail_v1_21.leg_quantity_ratio.display = function(value)
  return "Leg Quantity Ratio: "..value
end

-- Dissect: Leg Quantity Ratio
tmx_mx_solaorderentry_sail_v1_21.leg_quantity_ratio.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.leg_quantity_ratio.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_quantity_ratio, range, value, "Leg Quantity Ratio: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Leg Quantity Ratio is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.leg_quantity_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_quantity_ratio, range, value, display)

  return offset + length, value
end

-- Leg Verb
tmx_mx_solaorderentry_sail_v1_21.leg_verb = {}

-- Size: Leg Verb
tmx_mx_solaorderentry_sail_v1_21.leg_verb.size = 1

-- Display: Leg Verb
tmx_mx_solaorderentry_sail_v1_21.leg_verb.labels = {
  ["B"] = "Leg Verb: Buy (B)",
  ["S"] = "Leg Verb: Sell (S)",
}

tmx_mx_solaorderentry_sail_v1_21.leg_verb.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.leg_verb.labels[value] or "Leg Verb: Unknown("..value..")"
end

-- Dissect: Leg Verb
tmx_mx_solaorderentry_sail_v1_21.leg_verb.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.leg_verb.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.leg_verb.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_verb, range, value, display)

  return offset + length, value
end

-- Limit Type
tmx_mx_solaorderentry_sail_v1_21.limit_type = {}

-- Size: Limit Type
tmx_mx_solaorderentry_sail_v1_21.limit_type.size = 1

-- Display: Limit Type
tmx_mx_solaorderentry_sail_v1_21.limit_type.labels = {
  ["1"] = "Limit Type: Net Exposure (1)",
  ["2"] = "Limit Type: Long Exposure (2)",
  ["3"] = "Limit Type: Short Exposure (3)",
  ["4"] = "Limit Type: Net Position (4)",
  ["5"] = "Limit Type: Long Position (5)",
  ["6"] = "Limit Type: Short Position (6)",
}

tmx_mx_solaorderentry_sail_v1_21.limit_type.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.limit_type.labels[value] or "Limit Type: Unknown("..value..")"
end

-- Dissect: Limit Type
tmx_mx_solaorderentry_sail_v1_21.limit_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.limit_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.limit_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.limit_type, range, value, display)

  return offset + length, value
end

-- Limit Value
tmx_mx_solaorderentry_sail_v1_21.limit_value = {}

-- Size: Limit Value
tmx_mx_solaorderentry_sail_v1_21.limit_value.size = 10

-- Display: Limit Value
tmx_mx_solaorderentry_sail_v1_21.limit_value.display = function(value)
  return "Limit Value: "..value
end

-- Dissect: Limit Value
tmx_mx_solaorderentry_sail_v1_21.limit_value.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.limit_value.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.limit_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.limit_value, range, value, display)

  return offset + length, value
end

-- Long Exposure Action
tmx_mx_solaorderentry_sail_v1_21.long_exposure_action = {}

-- Size: Long Exposure Action
tmx_mx_solaorderentry_sail_v1_21.long_exposure_action.size = 1

-- Display: Long Exposure Action
tmx_mx_solaorderentry_sail_v1_21.long_exposure_action.labels = {
  ["?"] = "Long Exposure Action: Not Set (?)",
  ["E"] = "Long Exposure Action: Enforce Limit (E)",
  ["N"] = "Long Exposure Action: None (N)",
  ["W"] = "Long Exposure Action: Warning (W)",
}

tmx_mx_solaorderentry_sail_v1_21.long_exposure_action.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.long_exposure_action.labels[value] or "Long Exposure Action: Unknown("..value..")"
end

-- Dissect: Long Exposure Action
tmx_mx_solaorderentry_sail_v1_21.long_exposure_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.long_exposure_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.long_exposure_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.long_exposure_action, range, value, display)

  return offset + length, value
end

-- Long Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.long_exposure_limit = {}

-- Size: Long Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.long_exposure_limit.size = 10

-- Display: Long Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.long_exposure_limit.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Long Exposure Limit: No Value"
  end

  return "Long Exposure Limit: "..value
end

-- Dissect: Long Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.long_exposure_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.long_exposure_limit.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = tmx_mx_solaorderentry_sail_v1_21.long_exposure_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.long_exposure_limit, range, value, display)

  return offset + length, value
end

-- Long Position Action
tmx_mx_solaorderentry_sail_v1_21.long_position_action = {}

-- Size: Long Position Action
tmx_mx_solaorderentry_sail_v1_21.long_position_action.size = 1

-- Display: Long Position Action
tmx_mx_solaorderentry_sail_v1_21.long_position_action.labels = {
  ["?"] = "Long Position Action: Not Set (?)",
  ["E"] = "Long Position Action: Enforce Limit (E)",
  ["N"] = "Long Position Action: None (N)",
  ["W"] = "Long Position Action: Warning (W)",
}

tmx_mx_solaorderentry_sail_v1_21.long_position_action.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.long_position_action.labels[value] or "Long Position Action: Unknown("..value..")"
end

-- Dissect: Long Position Action
tmx_mx_solaorderentry_sail_v1_21.long_position_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.long_position_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.long_position_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.long_position_action, range, value, display)

  return offset + length, value
end

-- Long Position Limit
tmx_mx_solaorderentry_sail_v1_21.long_position_limit = {}

-- Size: Long Position Limit
tmx_mx_solaorderentry_sail_v1_21.long_position_limit.size = 8

-- Display: Long Position Limit
tmx_mx_solaorderentry_sail_v1_21.long_position_limit.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Long Position Limit: No Value"
  end

  return "Long Position Limit: "..value
end

-- Dissect: Long Position Limit
tmx_mx_solaorderentry_sail_v1_21.long_position_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.long_position_limit.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.long_position_limit, range, value, "Long Position Limit: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Long Position Limit is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.long_position_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.long_position_limit, range, value, display)

  return offset + length, value
end

-- Market Side
tmx_mx_solaorderentry_sail_v1_21.market_side = {}

-- Size: Market Side
tmx_mx_solaorderentry_sail_v1_21.market_side.size = 1

-- Display: Market Side
tmx_mx_solaorderentry_sail_v1_21.market_side.labels = {
  ["B"] = "Market Side: Buy (B)",
  ["S"] = "Market Side: Sell (S)",
  [2] = "Market Side: Both (2)",
}

tmx_mx_solaorderentry_sail_v1_21.market_side.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.market_side.labels[value] or "Market Side: Unknown("..value..")"
end

-- Dissect: Market Side
tmx_mx_solaorderentry_sail_v1_21.market_side.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.market_side.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.market_side, range, value, "Market Side: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Market Side is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.market_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.market_side, range, value, display)

  return offset + length, value
end

-- Maximum Number Trades
tmx_mx_solaorderentry_sail_v1_21.maximum_number_trades = {}

-- Size: Maximum Number Trades
tmx_mx_solaorderentry_sail_v1_21.maximum_number_trades.size = 2

-- Display: Maximum Number Trades
tmx_mx_solaorderentry_sail_v1_21.maximum_number_trades.display = function(value)
  return "Maximum Number Trades: "..value
end

-- Dissect: Maximum Number Trades
tmx_mx_solaorderentry_sail_v1_21.maximum_number_trades.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.maximum_number_trades.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.maximum_number_trades, range, value, "Maximum Number Trades: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Maximum Number Trades is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.maximum_number_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.maximum_number_trades, range, value, display)

  return offset + length, value
end

-- Maximum Order Quantity
tmx_mx_solaorderentry_sail_v1_21.maximum_order_quantity = {}

-- Size: Maximum Order Quantity
tmx_mx_solaorderentry_sail_v1_21.maximum_order_quantity.size = 8

-- Display: Maximum Order Quantity
tmx_mx_solaorderentry_sail_v1_21.maximum_order_quantity.display = function(value)
  return "Maximum Order Quantity: "..value
end

-- Dissect: Maximum Order Quantity
tmx_mx_solaorderentry_sail_v1_21.maximum_order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.maximum_order_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.maximum_order_quantity, range, value, "Maximum Order Quantity: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Maximum Order Quantity is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.maximum_order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.maximum_order_quantity, range, value, display)

  return offset + length, value
end

-- Maximum Total Value
tmx_mx_solaorderentry_sail_v1_21.maximum_total_value = {}

-- Size: Maximum Total Value
tmx_mx_solaorderentry_sail_v1_21.maximum_total_value.size = 8

-- Display: Maximum Total Value
tmx_mx_solaorderentry_sail_v1_21.maximum_total_value.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Maximum Total Value: No Value"
  end

  return "Maximum Total Value: "..value
end

-- Dissect: Maximum Total Value
tmx_mx_solaorderentry_sail_v1_21.maximum_total_value.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.maximum_total_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.maximum_total_value, range, value, "Maximum Total Value: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Maximum Total Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.maximum_total_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.maximum_total_value, range, value, display)

  return offset + length, value
end

-- Maximum Total Volume
tmx_mx_solaorderentry_sail_v1_21.maximum_total_volume = {}

-- Size: Maximum Total Volume
tmx_mx_solaorderentry_sail_v1_21.maximum_total_volume.size = 8

-- Display: Maximum Total Volume
tmx_mx_solaorderentry_sail_v1_21.maximum_total_volume.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Maximum Total Volume: No Value"
  end

  return "Maximum Total Volume: "..value
end

-- Dissect: Maximum Total Volume
tmx_mx_solaorderentry_sail_v1_21.maximum_total_volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.maximum_total_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.maximum_total_volume, range, value, "Maximum Total Volume: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Maximum Total Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.maximum_total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.maximum_total_volume, range, value, display)

  return offset + length, value
end

-- Memo
tmx_mx_solaorderentry_sail_v1_21.memo = {}

-- Size: Memo
tmx_mx_solaorderentry_sail_v1_21.memo.size = 50

-- Display: Memo
tmx_mx_solaorderentry_sail_v1_21.memo.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Memo: No Value"
  end

  return "Memo: "..value
end

-- Dissect: Memo
tmx_mx_solaorderentry_sail_v1_21.memo.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.memo.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solaorderentry_sail_v1_21.memo.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.memo, range, value, display)

  return offset + length, value
end

-- Message Length
tmx_mx_solaorderentry_sail_v1_21.message_length = {}

-- Size: Message Length
tmx_mx_solaorderentry_sail_v1_21.message_length.size = 4

-- Display: Message Length
tmx_mx_solaorderentry_sail_v1_21.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
tmx_mx_solaorderentry_sail_v1_21.message_length.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_mx_solaorderentry_sail_v1_21.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
tmx_mx_solaorderentry_sail_v1_21.message_type = {}

-- Size: Message Type
tmx_mx_solaorderentry_sail_v1_21.message_type.size = 2

-- Display: Message Type
tmx_mx_solaorderentry_sail_v1_21.message_type.labels = {
  ["TC"] = "Message Type: User Connection (TC)",
  ["TK"] = "Message Type: Connection Acknowledgement (TK)",
  ["TA"] = "Message Type: Disconnection Instruction (TA)",
  ["TM"] = "Message Type: Disconnection Instruction Acknowledgement (TM)",
  ["TH"] = "Message Type: Heartbeat Question (TH)",
  ["TI"] = "Message Type: Heartbeat Response (TI)",
  ["TO"] = "Message Type: Out Of Sequence (TO)",
  ["TE"] = "Message Type: Technical Error Notice (TE)",
  ["TD"] = "Message Type: User Disconnection (TD)",
  ["TL"] = "Message Type: Disconnection Acknowledgement (TL)",
  ["TT"] = "Message Type: End Of Transmission (TT)",
  ["AE"] = "Message Type: Order Reply (AE)",
  ["AF"] = "Message Type: Order Request (AF)",
  ["BD"] = "Message Type: Bulk Quote Data (BD)",
  ["CR"] = "Message Type: Firm Risk Config (CR)",
  ["ER"] = "Message Type: Error Notice (ER)",
  ["GC"] = "Message Type: Global Cancellation (GC)",
  ["GZ"] = "Message Type: User Global Cancellation (GZ)",
  ["KD"] = "Message Type: Bulk Quote Data Acknowledgement (KD)",
  ["KE"] = "Message Type: Order Acknowledgement (KE)",
  ["KG"] = "Message Type: Global Cancellation Confirmation (KG)",
  ["KM"] = "Message Type: Order Modification Acknowledgement (KM)",
  ["KN"] = "Message Type: New Strategy Instrument Acknowledgement (KN)",
  ["KO"] = "Message Type: Standard Acknowledgement (KO)",
  ["KZ"] = "Message Type: Order Cancellation Acknowledgement (KZ)",
  ["LA"] = "Message Type: Bulk Quote Acknowledgement (LA)",
  ["LB"] = "Message Type: Bulk Command Acknowledgement (LB)",
  ["MK"] = "Message Type: Set Group Risk Limits (MK)",
  ["ML"] = "Message Type: Set Global Risk Limits (ML)",
  ["MN"] = "Message Type: Risk Limits Usage (MN)",
  ["NE"] = "Message Type: Excluded Instrument Notice (NE)",
  ["NG"] = "Message Type: Group State Change (NG)",
  ["NI"] = "Message Type: Instrument State Change (NI)",
  ["NL"] = "Message Type: Leg Execution Notice (NL)",
  ["NO"] = "Message Type: Overstepped Order Or Quote Notice (NO)",
  ["NP"] = "Message Type: Cancellation Of All Quotes Notice (NP)",
  ["NT"] = "Message Type: Execution Notice (NT)",
  ["NX"] = "Message Type: Execution Cancellation Notice (NX)",
  ["NY"] = "Message Type: Leg Execution Cancellation Notice (NY)",
  ["NZ"] = "Message Type: Order Cancellation Notice By Mod Or System (NZ)",
  ["OE"] = "Message Type: Order Entry (OE)",
  ["OM"] = "Message Type: Order Modification (OM)",
  ["ON"] = "Message Type: New Strategy Instrument (ON)",
  ["OX"] = "Message Type: Cross Entry (OX)",
  ["QA"] = "Message Type: Bulk Quote Price 4 Quantity 2 (QA)",
  ["QB"] = "Message Type: Bulk Quote Price 6 Quantity 2 (QB)",
  ["QC"] = "Message Type: Bulk Quote Price 8 Quantity 2 (QC)",
  ["QD"] = "Message Type: Bulk Quote Price 10 Quantity 2 (QD)",
  ["QE"] = "Message Type: Bulk Quote Price 4 Quantity 4 (QE)",
  ["QF"] = "Message Type: Bulk Quote Price 6 Quantity 4 (QF)",
  ["QG"] = "Message Type: Bulk Quote Price 8 Quantity 4 (QG)",
  ["QH"] = "Message Type: Bulk Quote Price 10 Quantity 4 (QH)",
  ["QI"] = "Message Type: Bulk Quote Price 4 Quantity 6 (QI)",
  ["QJ"] = "Message Type: Bulk Quote Price 6 Quantity 6 (QJ)",
  ["QK"] = "Message Type: Bulk Quote Price 8 Quantity 6 (QK)",
  ["QL"] = "Message Type: Bulk Quote Price 10 Quantity 6 (QL)",
  ["QM"] = "Message Type: Bulk Quote Price 4 Quantity 8 (QM)",
  ["QN"] = "Message Type: Bulk Quote Price 6 Quantity 8 (QN)",
  ["QO"] = "Message Type: Bulk Quote Price 8 Quantity 8 (QO)",
  ["QP"] = "Message Type: Bulk Quote (QP)",
  ["QS"] = "Message Type: Sail Request For Quote With Side (QS)",
  ["QW"] = "Message Type: Request For Quote With Side Acknowledgement (QW)",
  ["RP"] = "Message Type: Bulk Quote Participant Bqp Protection Subscription (RP)",
  ["RQ"] = "Message Type: Request For Quote (RQ)",
  ["XE"] = "Message Type: Order Cancellation (XE)",
}

tmx_mx_solaorderentry_sail_v1_21.message_type.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
tmx_mx_solaorderentry_sail_v1_21.message_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Types To Be Received
tmx_mx_solaorderentry_sail_v1_21.message_types_to_be_received = {}

-- Size: Message Types To Be Received
tmx_mx_solaorderentry_sail_v1_21.message_types_to_be_received.size = 2

-- Display: Message Types To Be Received
tmx_mx_solaorderentry_sail_v1_21.message_types_to_be_received.display = function(value)
  return "Message Types To Be Received: "..value
end

-- Dissect: Message Types To Be Received
tmx_mx_solaorderentry_sail_v1_21.message_types_to_be_received.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.message_types_to_be_received.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.message_types_to_be_received.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.message_types_to_be_received, range, value, display)

  return offset + length, value
end

-- Minimum Volume
tmx_mx_solaorderentry_sail_v1_21.minimum_volume = {}

-- Size: Minimum Volume
tmx_mx_solaorderentry_sail_v1_21.minimum_volume.size = 8

-- Display: Minimum Volume
tmx_mx_solaorderentry_sail_v1_21.minimum_volume.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Minimum Volume: No Value"
  end

  return "Minimum Volume: "..value
end

-- Dissect: Minimum Volume
tmx_mx_solaorderentry_sail_v1_21.minimum_volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.minimum_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.minimum_volume, range, value, "Minimum Volume: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Minimum Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.minimum_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.minimum_volume, range, value, display)

  return offset + length, value
end

-- Modified Order Id
tmx_mx_solaorderentry_sail_v1_21.modified_order_id = {}

-- Size: Modified Order Id
tmx_mx_solaorderentry_sail_v1_21.modified_order_id.size = 8

-- Display: Modified Order Id
tmx_mx_solaorderentry_sail_v1_21.modified_order_id.display = function(value)
  return "Modified Order Id: "..value
end

-- Dissect: Modified Order Id
tmx_mx_solaorderentry_sail_v1_21.modified_order_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.modified_order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.modified_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.modified_order_id, range, value, display)

  return offset + length, value
end

-- Nb Of Instruments
tmx_mx_solaorderentry_sail_v1_21.nb_of_instruments = {}

-- Size: Nb Of Instruments
tmx_mx_solaorderentry_sail_v1_21.nb_of_instruments.size = 4

-- Display: Nb Of Instruments
tmx_mx_solaorderentry_sail_v1_21.nb_of_instruments.display = function(value)
  return "Nb Of Instruments: "..value
end

-- Dissect: Nb Of Instruments
tmx_mx_solaorderentry_sail_v1_21.nb_of_instruments.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.nb_of_instruments.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.nb_of_instruments, range, value, "Nb Of Instruments: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Nb Of Instruments is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.nb_of_instruments.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.nb_of_instruments, range, value, display)

  return offset + length, value
end

-- Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.net_exposure_action = {}

-- Size: Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.net_exposure_action.size = 1

-- Display: Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.net_exposure_action.labels = {
  ["?"] = "Net Exposure Action: Not Set (?)",
  ["E"] = "Net Exposure Action: Enforce Limit (E)",
  ["N"] = "Net Exposure Action: None (N)",
  ["W"] = "Net Exposure Action: Warning (W)",
}

tmx_mx_solaorderentry_sail_v1_21.net_exposure_action.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.net_exposure_action.labels[value] or "Net Exposure Action: Unknown("..value..")"
end

-- Dissect: Net Exposure Action
tmx_mx_solaorderentry_sail_v1_21.net_exposure_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.net_exposure_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.net_exposure_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.net_exposure_action, range, value, display)

  return offset + length, value
end

-- Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.net_exposure_limit = {}

-- Size: Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.net_exposure_limit.size = 10

-- Display: Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.net_exposure_limit.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Net Exposure Limit: No Value"
  end

  return "Net Exposure Limit: "..value
end

-- Dissect: Net Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.net_exposure_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.net_exposure_limit.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = tmx_mx_solaorderentry_sail_v1_21.net_exposure_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.net_exposure_limit, range, value, display)

  return offset + length, value
end

-- Net Position Action
tmx_mx_solaorderentry_sail_v1_21.net_position_action = {}

-- Size: Net Position Action
tmx_mx_solaorderentry_sail_v1_21.net_position_action.size = 1

-- Display: Net Position Action
tmx_mx_solaorderentry_sail_v1_21.net_position_action.labels = {
  ["?"] = "Net Position Action: Not Set (?)",
  ["E"] = "Net Position Action: Enforce Limit (E)",
  ["N"] = "Net Position Action: None (N)",
  ["W"] = "Net Position Action: Warning (W)",
}

tmx_mx_solaorderentry_sail_v1_21.net_position_action.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.net_position_action.labels[value] or "Net Position Action: Unknown("..value..")"
end

-- Dissect: Net Position Action
tmx_mx_solaorderentry_sail_v1_21.net_position_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.net_position_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.net_position_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.net_position_action, range, value, display)

  return offset + length, value
end

-- Net Position Limit
tmx_mx_solaorderentry_sail_v1_21.net_position_limit = {}

-- Size: Net Position Limit
tmx_mx_solaorderentry_sail_v1_21.net_position_limit.size = 8

-- Display: Net Position Limit
tmx_mx_solaorderentry_sail_v1_21.net_position_limit.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Net Position Limit: No Value"
  end

  return "Net Position Limit: "..value
end

-- Dissect: Net Position Limit
tmx_mx_solaorderentry_sail_v1_21.net_position_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.net_position_limit.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.net_position_limit, range, value, "Net Position Limit: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Net Position Limit is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.net_position_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.net_position_limit, range, value, display)

  return offset + length, value
end

-- Number Of Commands
tmx_mx_solaorderentry_sail_v1_21.number_of_commands = {}

-- Size: Number Of Commands
tmx_mx_solaorderentry_sail_v1_21.number_of_commands.size = 4

-- Display: Number Of Commands
tmx_mx_solaorderentry_sail_v1_21.number_of_commands.display = function(value)
  return "Number Of Commands: "..value
end

-- Dissect: Number Of Commands
tmx_mx_solaorderentry_sail_v1_21.number_of_commands.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.number_of_commands.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_commands, range, value, "Number Of Commands: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Number Of Commands is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.number_of_commands.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_commands, range, value, display)

  return offset + length, value
end

-- Number Of Group Limits
tmx_mx_solaorderentry_sail_v1_21.number_of_group_limits = {}

-- Size: Number Of Group Limits
tmx_mx_solaorderentry_sail_v1_21.number_of_group_limits.size = 3

-- Display: Number Of Group Limits
tmx_mx_solaorderentry_sail_v1_21.number_of_group_limits.display = function(value)
  return "Number Of Group Limits: "..value
end

-- Dissect: Number Of Group Limits
tmx_mx_solaorderentry_sail_v1_21.number_of_group_limits.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.number_of_group_limits.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_group_limits, range, value, "Number Of Group Limits: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Number Of Group Limits is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.number_of_group_limits.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_group_limits, range, value, display)

  return offset + length, value
end

-- Number Of Instructions Present In The Message
tmx_mx_solaorderentry_sail_v1_21.number_of_instructions_present_in_the_message = {}

-- Size: Number Of Instructions Present In The Message
tmx_mx_solaorderentry_sail_v1_21.number_of_instructions_present_in_the_message.size = 2

-- Display: Number Of Instructions Present In The Message
tmx_mx_solaorderentry_sail_v1_21.number_of_instructions_present_in_the_message.display = function(value)
  return "Number Of Instructions Present In The Message: "..value
end

-- Dissect: Number Of Instructions Present In The Message
tmx_mx_solaorderentry_sail_v1_21.number_of_instructions_present_in_the_message.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.number_of_instructions_present_in_the_message.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_instructions_present_in_the_message, range, value, "Number Of Instructions Present In The Message: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Number Of Instructions Present In The Message is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.number_of_instructions_present_in_the_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_instructions_present_in_the_message, range, value, display)

  return offset + length, value
end

-- Number Of Legs
tmx_mx_solaorderentry_sail_v1_21.number_of_legs = {}

-- Size: Number Of Legs
tmx_mx_solaorderentry_sail_v1_21.number_of_legs.size = 2

-- Display: Number Of Legs
tmx_mx_solaorderentry_sail_v1_21.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
tmx_mx_solaorderentry_sail_v1_21.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.number_of_legs.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_legs, range, value, "Number Of Legs: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Number Of Legs is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Number Of Message Types To Be Received
tmx_mx_solaorderentry_sail_v1_21.number_of_message_types_to_be_received = {}

-- Size: Number Of Message Types To Be Received
tmx_mx_solaorderentry_sail_v1_21.number_of_message_types_to_be_received.size = 2

-- Display: Number Of Message Types To Be Received
tmx_mx_solaorderentry_sail_v1_21.number_of_message_types_to_be_received.display = function(value)
  return "Number Of Message Types To Be Received: "..value
end

-- Dissect: Number Of Message Types To Be Received
tmx_mx_solaorderentry_sail_v1_21.number_of_message_types_to_be_received.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.number_of_message_types_to_be_received.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_message_types_to_be_received, range, value, "Number Of Message Types To Be Received: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Number Of Message Types To Be Received is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.number_of_message_types_to_be_received.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_message_types_to_be_received, range, value, display)

  return offset + length, value
end

-- Number Of Quotes
tmx_mx_solaorderentry_sail_v1_21.number_of_quotes = {}

-- Size: Number Of Quotes
tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.size = 3

-- Display: Number Of Quotes
tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.display = function(value)
  return "Number Of Quotes: "..value
end

-- Dissect: Number Of Quotes
tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_quotes, range, value, "Number Of Quotes: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Number Of Quotes is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_quotes, range, value, display)

  return offset + length, value
end

-- Number Of Quotes In Error
tmx_mx_solaorderentry_sail_v1_21.number_of_quotes_in_error = {}

-- Size: Number Of Quotes In Error
tmx_mx_solaorderentry_sail_v1_21.number_of_quotes_in_error.size = 3

-- Display: Number Of Quotes In Error
tmx_mx_solaorderentry_sail_v1_21.number_of_quotes_in_error.display = function(value)
  return "Number Of Quotes In Error: "..value
end

-- Dissect: Number Of Quotes In Error
tmx_mx_solaorderentry_sail_v1_21.number_of_quotes_in_error.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes_in_error.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_quotes_in_error, range, value, "Number Of Quotes In Error: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Number Of Quotes In Error is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes_in_error.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_quotes_in_error, range, value, display)

  return offset + length, value
end

-- Number Of Trader Teams
tmx_mx_solaorderentry_sail_v1_21.number_of_trader_teams = {}

-- Size: Number Of Trader Teams
tmx_mx_solaorderentry_sail_v1_21.number_of_trader_teams.size = 3

-- Display: Number Of Trader Teams
tmx_mx_solaorderentry_sail_v1_21.number_of_trader_teams.display = function(value)
  return "Number Of Trader Teams: "..value
end

-- Dissect: Number Of Trader Teams
tmx_mx_solaorderentry_sail_v1_21.number_of_trader_teams.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.number_of_trader_teams.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_trader_teams, range, value, "Number Of Trader Teams: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Number Of Trader Teams is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.number_of_trader_teams.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_trader_teams, range, value, display)

  return offset + length, value
end

-- Number Of Traders In Team
tmx_mx_solaorderentry_sail_v1_21.number_of_traders_in_team = {}

-- Size: Number Of Traders In Team
tmx_mx_solaorderentry_sail_v1_21.number_of_traders_in_team.size = 3

-- Display: Number Of Traders In Team
tmx_mx_solaorderentry_sail_v1_21.number_of_traders_in_team.display = function(value)
  return "Number Of Traders In Team: "..value
end

-- Dissect: Number Of Traders In Team
tmx_mx_solaorderentry_sail_v1_21.number_of_traders_in_team.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.number_of_traders_in_team.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_traders_in_team, range, value, "Number Of Traders In Team: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Number Of Traders In Team is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.number_of_traders_in_team.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_traders_in_team, range, value, display)

  return offset + length, value
end

-- Number Of Usage Blocks
tmx_mx_solaorderentry_sail_v1_21.number_of_usage_blocks = {}

-- Size: Number Of Usage Blocks
tmx_mx_solaorderentry_sail_v1_21.number_of_usage_blocks.size = 4

-- Display: Number Of Usage Blocks
tmx_mx_solaorderentry_sail_v1_21.number_of_usage_blocks.display = function(value)
  return "Number Of Usage Blocks: "..value
end

-- Dissect: Number Of Usage Blocks
tmx_mx_solaorderentry_sail_v1_21.number_of_usage_blocks.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.number_of_usage_blocks.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_usage_blocks, range, value, "Number Of Usage Blocks: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Number Of Usage Blocks is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.number_of_usage_blocks.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.number_of_usage_blocks, range, value, display)

  return offset + length, value
end

-- Open Close
tmx_mx_solaorderentry_sail_v1_21.open_close = {}

-- Size: Open Close
tmx_mx_solaorderentry_sail_v1_21.open_close.size = 1

-- Display: Open Close
tmx_mx_solaorderentry_sail_v1_21.open_close.labels = {
  ["O"] = "Open Close: All Legs Are Open Or Single Security (O)",
  ["C"] = "Open Close: All Legs Are Closed Or Single Security (C)",
  ["1"] = "Open Close: 1st Leg Open, 2nd Leg Close (1)",
  ["2"] = "Open Close: 1st Leg Close, 2nd Leg Open (2)",
  ["3"] = "Open Close: 1st Leg Open, 2nd Leg Open, 3rd Leg Close (3)",
  ["4"] = "Open Close: 1st Leg Open, 2nd Leg Close, 3rd Leg Open (4)",
  ["5"] = "Open Close: 1st Leg Open, 2nd Leg Close, 3rd Leg Close (5)",
  ["6"] = "Open Close: 1st Leg Close, 2nd Leg Open, 3rd Leg Open (6)",
  ["7"] = "Open Close: 1st Leg Close, 2nd Leg Open, 3rd Leg Close (7)",
  ["8"] = "Open Close: 1st Leg Close, 2nd Leg Close, 3rd Leg Open (8)",
  ["A"] = "Open Close: 1st Leg Open, 2nd Leg Open, 3rd Leg Open, 4th Leg Close (A)",
  ["B"] = "Open Close: 1st Leg Open, 2nd Leg Open, 3rd Leg Close, 4th Leg Open (B)",
  ["D"] = "Open Close: 1st Leg Open, 2nd Leg Open, 3rd Leg Close, 4th Leg Close (D)",
  ["E"] = "Open Close: 1st Leg Open, 2nd Leg Close, 3rd Leg Open, 4th Leg Open (E)",
  ["F"] = "Open Close: 1st Leg Open, 2nd Leg Close, 3rd Leg Open, 4th Leg Close (F)",
  ["G"] = "Open Close: 1st Leg Open, 2nd Leg Close, 3rd Leg Close, 4th Leg Open (G)",
  ["H"] = "Open Close: 1st Leg Open, 2nd Leg Close, 3rd Leg Close, 4th Leg Close (H)",
  ["I"] = "Open Close: 1st Leg Close, 2nd Leg Open, 3rd Leg Open, 4th Leg Open (I)",
  ["J"] = "Open Close: 1st Leg Close, 2nd Leg Open, 3rd Leg Open, 4th Leg Close (J)",
  ["K"] = "Open Close: 1st Leg Close, 2nd Leg Open, 3rd Leg Close, 4th Leg Open (K)",
  ["L"] = "Open Close: 1st Leg Close, 2nd Leg Open, 3rd Leg Close, 4th Leg Close (L)",
  ["M"] = "Open Close: 1st Leg Close, 2nd Leg Close, 3rd Leg Open, 4th Leg Open (M)",
  ["N"] = "Open Close: 1st Leg Close, 2nd Leg Close, 3rd Leg Open, 4th Leg Close (N)",
  ["P"] = "Open Close: 1st Leg Close, 2nd Leg Close, 3rd Leg Close, 4th Leg Open (P)",
}

tmx_mx_solaorderentry_sail_v1_21.open_close.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.open_close.labels[value] or "Open Close: Unknown("..value..")"
end

-- Dissect: Open Close
tmx_mx_solaorderentry_sail_v1_21.open_close.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.open_close, range, value, display)

  return offset + length, value
end

-- Order Id
tmx_mx_solaorderentry_sail_v1_21.order_id = {}

-- Size: Order Id
tmx_mx_solaorderentry_sail_v1_21.order_id.size = 8

-- Display: Order Id
tmx_mx_solaorderentry_sail_v1_21.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
tmx_mx_solaorderentry_sail_v1_21.order_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Type
tmx_mx_solaorderentry_sail_v1_21.order_type = {}

-- Size: Order Type
tmx_mx_solaorderentry_sail_v1_21.order_type.size = 1

-- Display: Order Type
tmx_mx_solaorderentry_sail_v1_21.order_type.labels = {
  ["O"] = "Order Type: Order (O)",
  ["Q"] = "Order Type: Quote (Q)",
}

tmx_mx_solaorderentry_sail_v1_21.order_type.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.order_type.labels[value] or "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
tmx_mx_solaorderentry_sail_v1_21.order_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_type, range, value, display)

  return offset + length, value
end

-- Original Message Type Af Gz Ml Ox Or Rq
tmx_mx_solaorderentry_sail_v1_21.original_message_type_af_gz_ml_ox_or_rq = {}

-- Size: Original Message Type Af Gz Ml Ox Or Rq
tmx_mx_solaorderentry_sail_v1_21.original_message_type_af_gz_ml_ox_or_rq.size = 2

-- Display: Original Message Type Af Gz Ml Ox Or Rq
tmx_mx_solaorderentry_sail_v1_21.original_message_type_af_gz_ml_ox_or_rq.display = function(value)
  return "Original Message Type Af Gz Ml Ox Or Rq: "..value
end

-- Dissect: Original Message Type Af Gz Ml Ox Or Rq
tmx_mx_solaorderentry_sail_v1_21.original_message_type_af_gz_ml_ox_or_rq.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.original_message_type_af_gz_ml_ox_or_rq.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.original_message_type_af_gz_ml_ox_or_rq.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.original_message_type_af_gz_ml_ox_or_rq, range, value, display)

  return offset + length, value
end

-- Original Order Id
tmx_mx_solaorderentry_sail_v1_21.original_order_id = {}

-- Size: Original Order Id
tmx_mx_solaorderentry_sail_v1_21.original_order_id.size = 8

-- Display: Original Order Id
tmx_mx_solaorderentry_sail_v1_21.original_order_id.display = function(value)
  return "Original Order Id: "..value
end

-- Dissect: Original Order Id
tmx_mx_solaorderentry_sail_v1_21.original_order_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.original_order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.original_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.original_order_id, range, value, display)

  return offset + length, value
end

-- Original Reference Id
tmx_mx_solaorderentry_sail_v1_21.original_reference_id = {}

-- Size: Original Reference Id
tmx_mx_solaorderentry_sail_v1_21.original_reference_id.size = 8

-- Display: Original Reference Id
tmx_mx_solaorderentry_sail_v1_21.original_reference_id.display = function(value)
  return "Original Reference Id: "..value
end

-- Dissect: Original Reference Id
tmx_mx_solaorderentry_sail_v1_21.original_reference_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.original_reference_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.original_reference_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.original_reference_id, range, value, display)

  return offset + length, value
end

-- Password Md 5 Encryption
tmx_mx_solaorderentry_sail_v1_21.password_md_5_encryption = {}

-- Size: Password Md 5 Encryption
tmx_mx_solaorderentry_sail_v1_21.password_md_5_encryption.size = 8

-- Display: Password Md 5 Encryption
tmx_mx_solaorderentry_sail_v1_21.password_md_5_encryption.display = function(value)
  return "Password Md 5 Encryption: "..value
end

-- Dissect: Password Md 5 Encryption
tmx_mx_solaorderentry_sail_v1_21.password_md_5_encryption.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.password_md_5_encryption.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.password_md_5_encryption.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.password_md_5_encryption, range, value, display)

  return offset + length, value
end

-- Preceding User Sequence Id Received Zeroes If None
tmx_mx_solaorderentry_sail_v1_21.preceding_user_sequence_id_received_zeroes_if_none = {}

-- Size: Preceding User Sequence Id Received Zeroes If None
tmx_mx_solaorderentry_sail_v1_21.preceding_user_sequence_id_received_zeroes_if_none.size = 8

-- Display: Preceding User Sequence Id Received Zeroes If None
tmx_mx_solaorderentry_sail_v1_21.preceding_user_sequence_id_received_zeroes_if_none.display = function(value)
  return "Preceding User Sequence Id Received Zeroes If None: "..value
end

-- Dissect: Preceding User Sequence Id Received Zeroes If None
tmx_mx_solaorderentry_sail_v1_21.preceding_user_sequence_id_received_zeroes_if_none.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.preceding_user_sequence_id_received_zeroes_if_none.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.preceding_user_sequence_id_received_zeroes_if_none, range, value, "Preceding User Sequence Id Received Zeroes If None: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Preceding User Sequence Id Received Zeroes If None is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.preceding_user_sequence_id_received_zeroes_if_none.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.preceding_user_sequence_id_received_zeroes_if_none, range, value, display)

  return offset + length, value
end

-- Price
tmx_mx_solaorderentry_sail_v1_21.price = {}

-- Size: Price
tmx_mx_solaorderentry_sail_v1_21.price.size = 10

-- Display: Price
tmx_mx_solaorderentry_sail_v1_21.price.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Dissect: Price
tmx_mx_solaorderentry_sail_v1_21.price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.price.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = tmx_mx_solaorderentry_sail_v1_21.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.price, range, value, display)

  return offset + length, value
end

-- Price 4
tmx_mx_solaorderentry_sail_v1_21.price_4 = {}

-- Size: Price 4
tmx_mx_solaorderentry_sail_v1_21.price_4.size = 4

-- Display: Price 4
tmx_mx_solaorderentry_sail_v1_21.price_4.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Price 4: No Value"
  end

  return "Price 4: "..value
end

-- Dissect: Price 4
tmx_mx_solaorderentry_sail_v1_21.price_4.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.price_4.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = tmx_mx_solaorderentry_sail_v1_21.price_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.price_4, range, value, display)

  return offset + length, value
end

-- Price 6
tmx_mx_solaorderentry_sail_v1_21.price_6 = {}

-- Size: Price 6
tmx_mx_solaorderentry_sail_v1_21.price_6.size = 6

-- Display: Price 6
tmx_mx_solaorderentry_sail_v1_21.price_6.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Price 6: No Value"
  end

  return "Price 6: "..value
end

-- Dissect: Price 6
tmx_mx_solaorderentry_sail_v1_21.price_6.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.price_6.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = tmx_mx_solaorderentry_sail_v1_21.price_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.price_6, range, value, display)

  return offset + length, value
end

-- Price 8
tmx_mx_solaorderentry_sail_v1_21.price_8 = {}

-- Size: Price 8
tmx_mx_solaorderentry_sail_v1_21.price_8.size = 8

-- Display: Price 8
tmx_mx_solaorderentry_sail_v1_21.price_8.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Price 8: No Value"
  end

  return "Price 8: "..value
end

-- Dissect: Price 8
tmx_mx_solaorderentry_sail_v1_21.price_8.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.price_8.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = tmx_mx_solaorderentry_sail_v1_21.price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.price_8, range, value, display)

  return offset + length, value
end

-- Price Type
tmx_mx_solaorderentry_sail_v1_21.price_type = {}

-- Size: Price Type
tmx_mx_solaorderentry_sail_v1_21.price_type.size = 1

-- Display: Price Type
tmx_mx_solaorderentry_sail_v1_21.price_type.labels = {
  ["C"] = "Price Type: Committed (C)",
  ["L"] = "Price Type: Limit Price Set In Message (L)",
  ["O"] = "Price Type: At Opening Price (O)",
  ["M"] = "Price Type: At Best Opposite Price Top Order (M)",
}

tmx_mx_solaorderentry_sail_v1_21.price_type.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.price_type.labels[value] or "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
tmx_mx_solaorderentry_sail_v1_21.price_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.price_type, range, value, display)

  return offset + length, value
end

-- Protection Type Advanced Protection Advanced Protection Disabled
tmx_mx_solaorderentry_sail_v1_21.protection_type_advanced_protection_advanced_protection_disabled = {}

-- Size: Protection Type Advanced Protection Advanced Protection Disabled
tmx_mx_solaorderentry_sail_v1_21.protection_type_advanced_protection_advanced_protection_disabled.size = 1

-- Display: Protection Type Advanced Protection Advanced Protection Disabled
tmx_mx_solaorderentry_sail_v1_21.protection_type_advanced_protection_advanced_protection_disabled.labels = {
  ["A"] = "Protection Type Advanced Protection Advanced Protection Disabled: Advanced Protection (A)",
  ["N"] = "Protection Type Advanced Protection Advanced Protection Disabled: Advanced Protection Disabled (N)",
}

tmx_mx_solaorderentry_sail_v1_21.protection_type_advanced_protection_advanced_protection_disabled.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.protection_type_advanced_protection_advanced_protection_disabled.labels[value] or "Protection Type Advanced Protection Advanced Protection Disabled: Unknown("..value..")"
end

-- Dissect: Protection Type Advanced Protection Advanced Protection Disabled
tmx_mx_solaorderentry_sail_v1_21.protection_type_advanced_protection_advanced_protection_disabled.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.protection_type_advanced_protection_advanced_protection_disabled.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.protection_type_advanced_protection_advanced_protection_disabled.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.protection_type_advanced_protection_advanced_protection_disabled, range, value, display)

  return offset + length, value
end

-- Protocol Id
tmx_mx_solaorderentry_sail_v1_21.protocol_id = {}

-- Size: Protocol Id
tmx_mx_solaorderentry_sail_v1_21.protocol_id.size = 2

-- Display: Protocol Id
tmx_mx_solaorderentry_sail_v1_21.protocol_id.display = function(value)
  return "Protocol Id: "..value
end

-- Dissect: Protocol Id
tmx_mx_solaorderentry_sail_v1_21.protocol_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.protocol_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.protocol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.protocol_id, range, value, display)

  return offset + length, value
end

-- Quantity
tmx_mx_solaorderentry_sail_v1_21.quantity = {}

-- Size: Quantity
tmx_mx_solaorderentry_sail_v1_21.quantity.size = 8

-- Display: Quantity
tmx_mx_solaorderentry_sail_v1_21.quantity.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Quantity: No Value"
  end

  return "Quantity: "..value
end

-- Dissect: Quantity
tmx_mx_solaorderentry_sail_v1_21.quantity.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity, range, value, "Quantity: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Quantity is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quantity 2
tmx_mx_solaorderentry_sail_v1_21.quantity_2 = {}

-- Size: Quantity 2
tmx_mx_solaorderentry_sail_v1_21.quantity_2.size = 2

-- Display: Quantity 2
tmx_mx_solaorderentry_sail_v1_21.quantity_2.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Quantity 2: No Value"
  end

  return "Quantity 2: "..value
end

-- Dissect: Quantity 2
tmx_mx_solaorderentry_sail_v1_21.quantity_2.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.quantity_2.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_2, range, value, "Quantity 2: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Quantity 2 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.quantity_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_2, range, value, display)

  return offset + length, value
end

-- Quantity 4
tmx_mx_solaorderentry_sail_v1_21.quantity_4 = {}

-- Size: Quantity 4
tmx_mx_solaorderentry_sail_v1_21.quantity_4.size = 4

-- Display: Quantity 4
tmx_mx_solaorderentry_sail_v1_21.quantity_4.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Quantity 4: No Value"
  end

  return "Quantity 4: "..value
end

-- Dissect: Quantity 4
tmx_mx_solaorderentry_sail_v1_21.quantity_4.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.quantity_4.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_4, range, value, "Quantity 4: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Quantity 4 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.quantity_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_4, range, value, display)

  return offset + length, value
end

-- Quantity 6
tmx_mx_solaorderentry_sail_v1_21.quantity_6 = {}

-- Size: Quantity 6
tmx_mx_solaorderentry_sail_v1_21.quantity_6.size = 6

-- Display: Quantity 6
tmx_mx_solaorderentry_sail_v1_21.quantity_6.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Quantity 6: No Value"
  end

  return "Quantity 6: "..value
end

-- Dissect: Quantity 6
tmx_mx_solaorderentry_sail_v1_21.quantity_6.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.quantity_6.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_6, range, value, "Quantity 6: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Quantity 6 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.quantity_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_6, range, value, display)

  return offset + length, value
end

-- Quantity Remaining
tmx_mx_solaorderentry_sail_v1_21.quantity_remaining = {}

-- Size: Quantity Remaining
tmx_mx_solaorderentry_sail_v1_21.quantity_remaining.size = 8

-- Display: Quantity Remaining
tmx_mx_solaorderentry_sail_v1_21.quantity_remaining.display = function(value)
  return "Quantity Remaining: "..value
end

-- Dissect: Quantity Remaining
tmx_mx_solaorderentry_sail_v1_21.quantity_remaining.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.quantity_remaining.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_remaining, range, value, "Quantity Remaining: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Quantity Remaining is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.quantity_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_remaining, range, value, display)

  return offset + length, value
end

-- Quantity Sign
tmx_mx_solaorderentry_sail_v1_21.quantity_sign = {}

-- Size: Quantity Sign
tmx_mx_solaorderentry_sail_v1_21.quantity_sign.size = 1

-- Display: Quantity Sign
tmx_mx_solaorderentry_sail_v1_21.quantity_sign.labels = {
  ["+"] = "Quantity Sign: Adds The Incoming Quantity To The Booked Quantity (+)",
  ["-"] = "Quantity Sign: Subtracts The Incoming Quantity From The Booked Quantity (-)",
  ["="] = "Quantity Sign: Replaces The Booked Quantity With The Incoming Quantity (=)",
}

tmx_mx_solaorderentry_sail_v1_21.quantity_sign.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.quantity_sign.labels[value] or "Quantity Sign: Unknown("..value..")"
end

-- Dissect: Quantity Sign
tmx_mx_solaorderentry_sail_v1_21.quantity_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.quantity_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.quantity_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_sign, range, value, display)

  return offset + length, value
end

-- Quantity Sign Or
tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or = {}

-- Size: Quantity Sign Or
tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.size = 1

-- Display: Quantity Sign Or
tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.labels = {
  ["+"] = "Quantity Sign Or: Adds The Incoming Quantity To The Booked Quantity (+)",
  ["-"] = "Quantity Sign Or: Subtracts The Incoming Quantity From The Booked Quantity (-)",
  ["="] = "Quantity Sign Or: Replaces The Booked Quantity With The Incoming Quantity (=)",
}

tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.labels[value] or "Quantity Sign Or: Unknown("..value..")"
end

-- Dissect: Quantity Sign Or
tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_sign_or, range, value, display)

  return offset + length, value
end

-- Quantity Term
tmx_mx_solaorderentry_sail_v1_21.quantity_term = {}

-- Size: Quantity Term
tmx_mx_solaorderentry_sail_v1_21.quantity_term.size = 1

-- Display: Quantity Term
tmx_mx_solaorderentry_sail_v1_21.quantity_term.display = function(value)
  if value == " " then
    return "Quantity Term: None (<whitespace>)"
  end
  if value == "D" then
    return "Quantity Term: Disclosed (D)"
  end
  if value == "M" then
    return "Quantity Term: Minimum (M)"
  end

  return "Quantity Term: Unknown("..value..")"
end

-- Dissect: Quantity Term
tmx_mx_solaorderentry_sail_v1_21.quantity_term.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.quantity_term.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.quantity_term.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_term, range, value, display)

  return offset + length, value
end

-- Quantity Traded
tmx_mx_solaorderentry_sail_v1_21.quantity_traded = {}

-- Size: Quantity Traded
tmx_mx_solaorderentry_sail_v1_21.quantity_traded.size = 8

-- Display: Quantity Traded
tmx_mx_solaorderentry_sail_v1_21.quantity_traded.display = function(value)
  return "Quantity Traded: "..value
end

-- Dissect: Quantity Traded
tmx_mx_solaorderentry_sail_v1_21.quantity_traded.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.quantity_traded.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_traded, range, value, "Quantity Traded: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Quantity Traded is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.quantity_traded.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quantity_traded, range, value, display)

  return offset + length, value
end

-- Quote Id Identifies Traders Quote On This Group
tmx_mx_solaorderentry_sail_v1_21.quote_id_identifies_traders_quote_on_this_group = {}

-- Size: Quote Id Identifies Traders Quote On This Group
tmx_mx_solaorderentry_sail_v1_21.quote_id_identifies_traders_quote_on_this_group.size = 8

-- Display: Quote Id Identifies Traders Quote On This Group
tmx_mx_solaorderentry_sail_v1_21.quote_id_identifies_traders_quote_on_this_group.display = function(value)
  return "Quote Id Identifies Traders Quote On This Group: "..value
end

-- Dissect: Quote Id Identifies Traders Quote On This Group
tmx_mx_solaorderentry_sail_v1_21.quote_id_identifies_traders_quote_on_this_group.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.quote_id_identifies_traders_quote_on_this_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.quote_id_identifies_traders_quote_on_this_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quote_id_identifies_traders_quote_on_this_group, range, value, display)

  return offset + length, value
end

-- Quote Identifier On This Group
tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group = {}

-- Size: Quote Identifier On This Group
tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.size = 8

-- Display: Quote Identifier On This Group
tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.display = function(value)
  return "Quote Identifier On This Group: "..value
end

-- Dissect: Quote Identifier On This Group
tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quote_identifier_on_this_group, range, value, display)

  return offset + length, value
end

-- Quote Number
tmx_mx_solaorderentry_sail_v1_21.quote_number = {}

-- Size: Quote Number
tmx_mx_solaorderentry_sail_v1_21.quote_number.size = 3

-- Display: Quote Number
tmx_mx_solaorderentry_sail_v1_21.quote_number.display = function(value)
  return "Quote Number: "..value
end

-- Dissect: Quote Number
tmx_mx_solaorderentry_sail_v1_21.quote_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.quote_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quote_number, range, value, "Quote Number: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Quote Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.quote_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.quote_number, range, value, display)

  return offset + length, value
end

-- Received Message Type
tmx_mx_solaorderentry_sail_v1_21.received_message_type = {}

-- Size: Received Message Type
tmx_mx_solaorderentry_sail_v1_21.received_message_type.size = 2

-- Display: Received Message Type
tmx_mx_solaorderentry_sail_v1_21.received_message_type.display = function(value)
  return "Received Message Type: "..value
end

-- Dissect: Received Message Type
tmx_mx_solaorderentry_sail_v1_21.received_message_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.received_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.received_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.received_message_type, range, value, display)

  return offset + length, value
end

-- Received User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.received_user_sequence_id = {}

-- Size: Received User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.received_user_sequence_id.size = 8

-- Display: Received User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.received_user_sequence_id.display = function(value)
  return "Received User Sequence Id: "..value
end

-- Dissect: Received User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.received_user_sequence_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.received_user_sequence_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.received_user_sequence_id, range, value, "Received User Sequence Id: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Received User Sequence Id is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.received_user_sequence_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.received_user_sequence_id, range, value, display)

  return offset + length, value
end

-- Reference Id Order Id Or Quote Id
tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id = {}

-- Size: Reference Id Order Id Or Quote Id
tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.size = 8

-- Display: Reference Id Order Id Or Quote Id
tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.display = function(value)
  return "Reference Id Order Id Or Quote Id: "..value
end

-- Dissect: Reference Id Order Id Or Quote Id
tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.reference_id_order_id_or_quote_id, range, value, display)

  return offset + length, value
end

-- Reset All Groups
tmx_mx_solaorderentry_sail_v1_21.reset_all_groups = {}

-- Size: Reset All Groups
tmx_mx_solaorderentry_sail_v1_21.reset_all_groups.size = 1

-- Display: Reset All Groups
tmx_mx_solaorderentry_sail_v1_21.reset_all_groups.labels = {
  ["Y"] = "Reset All Groups: Yes (Y)",
  ["N"] = "Reset All Groups: No (N)",
}

tmx_mx_solaorderentry_sail_v1_21.reset_all_groups.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.reset_all_groups.labels[value] or "Reset All Groups: Unknown("..value..")"
end

-- Dissect: Reset All Groups
tmx_mx_solaorderentry_sail_v1_21.reset_all_groups.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.reset_all_groups.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.reset_all_groups.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.reset_all_groups, range, value, display)

  return offset + length, value
end

-- Session Id
tmx_mx_solaorderentry_sail_v1_21.session_id = {}

-- Size: Session Id
tmx_mx_solaorderentry_sail_v1_21.session_id.size = 4

-- Display: Session Id
tmx_mx_solaorderentry_sail_v1_21.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
tmx_mx_solaorderentry_sail_v1_21.session_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.session_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.session_id, range, value, display)

  return offset + length, value
end

-- Short Exposure Action
tmx_mx_solaorderentry_sail_v1_21.short_exposure_action = {}

-- Size: Short Exposure Action
tmx_mx_solaorderentry_sail_v1_21.short_exposure_action.size = 1

-- Display: Short Exposure Action
tmx_mx_solaorderentry_sail_v1_21.short_exposure_action.labels = {
  ["?"] = "Short Exposure Action: Not Set (?)",
  ["E"] = "Short Exposure Action: Enforce Limit (E)",
  ["N"] = "Short Exposure Action: None (N)",
  ["W"] = "Short Exposure Action: Warning (W)",
}

tmx_mx_solaorderentry_sail_v1_21.short_exposure_action.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.short_exposure_action.labels[value] or "Short Exposure Action: Unknown("..value..")"
end

-- Dissect: Short Exposure Action
tmx_mx_solaorderentry_sail_v1_21.short_exposure_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.short_exposure_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.short_exposure_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.short_exposure_action, range, value, display)

  return offset + length, value
end

-- Short Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.short_exposure_limit = {}

-- Size: Short Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.short_exposure_limit.size = 10

-- Display: Short Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.short_exposure_limit.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Short Exposure Limit: No Value"
  end

  return "Short Exposure Limit: "..value
end

-- Dissect: Short Exposure Limit
tmx_mx_solaorderentry_sail_v1_21.short_exposure_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.short_exposure_limit.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = tmx_mx_solaorderentry_sail_v1_21.short_exposure_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.short_exposure_limit, range, value, display)

  return offset + length, value
end

-- Short Position Action
tmx_mx_solaorderentry_sail_v1_21.short_position_action = {}

-- Size: Short Position Action
tmx_mx_solaorderentry_sail_v1_21.short_position_action.size = 1

-- Display: Short Position Action
tmx_mx_solaorderentry_sail_v1_21.short_position_action.labels = {
  ["?"] = "Short Position Action: Not Set (?)",
  ["E"] = "Short Position Action: Enforce Limit (E)",
  ["N"] = "Short Position Action: None (N)",
  ["W"] = "Short Position Action: Warning (W)",
}

tmx_mx_solaorderentry_sail_v1_21.short_position_action.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.short_position_action.labels[value] or "Short Position Action: Unknown("..value..")"
end

-- Dissect: Short Position Action
tmx_mx_solaorderentry_sail_v1_21.short_position_action.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.short_position_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.short_position_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.short_position_action, range, value, display)

  return offset + length, value
end

-- Short Position Limit
tmx_mx_solaorderentry_sail_v1_21.short_position_limit = {}

-- Size: Short Position Limit
tmx_mx_solaorderentry_sail_v1_21.short_position_limit.size = 8

-- Display: Short Position Limit
tmx_mx_solaorderentry_sail_v1_21.short_position_limit.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Short Position Limit: No Value"
  end

  return "Short Position Limit: "..value
end

-- Dissect: Short Position Limit
tmx_mx_solaorderentry_sail_v1_21.short_position_limit.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.short_position_limit.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.short_position_limit, range, value, "Short Position Limit: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Short Position Limit is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.short_position_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.short_position_limit, range, value, display)

  return offset + length, value
end

-- Special Price Term
tmx_mx_solaorderentry_sail_v1_21.special_price_term = {}

-- Size: Special Price Term
tmx_mx_solaorderentry_sail_v1_21.special_price_term.size = 1

-- Display: Special Price Term
tmx_mx_solaorderentry_sail_v1_21.special_price_term.display = function(value)
  if value == " " then
    return "Special Price Term: None (<whitespace>)"
  end
  if value == "S" then
    return "Special Price Term: Stop Order (S)"
  end

  return "Special Price Term: Unknown("..value..")"
end

-- Dissect: Special Price Term
tmx_mx_solaorderentry_sail_v1_21.special_price_term.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.special_price_term.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.special_price_term.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.special_price_term, range, value, display)

  return offset + length, value
end

-- Special Trade Indicator
tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator = {}

-- Size: Special Trade Indicator
tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.size = 1

-- Display: Special Trade Indicator
tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.display = function(value)
  if value == " " then
    return "Special Trade Indicator: Normal Trade (<whitespace>)"
  end
  if value == "A" then
    return "Special Trade Indicator: As Of Trade (A)"
  end
  if value == "B" then
    return "Special Trade Indicator: Block Trade (B)"
  end
  if value == "C" then
    return "Special Trade Indicator: Contingent Trade (C)"
  end
  if value == "D" then
    return "Special Trade Indicator: Cross (D)"
  end
  if value == "E" then
    return "Special Trade Indicator: Exchange For Physical (E)"
  end
  if value == "H" then
    return "Special Trade Indicator: Hidden Trade (H)"
  end
  if value == "I" then
    return "Special Trade Indicator: Implied (I)"
  end
  if value == "J" then
    return "Special Trade Indicator: Delta Trade (J)"
  end
  if value == "K" then
    return "Special Trade Indicator: Committed Block (K)"
  end
  if value == "L" then
    return "Special Trade Indicator: Late Trade (L)"
  end
  if value == "M" then
    return "Special Trade Indicator: For Future Use (M)"
  end
  if value == "N" then
    return "Special Trade Indicator: For Future Use (N)"
  end
  if value == "O" then
    return "Special Trade Indicator: For Future Use (O)"
  end
  if value == "P" then
    return "Special Trade Indicator: For Future Use (P)"
  end
  if value == "Q" then
    return "Special Trade Indicator: For Future Use (Q)"
  end
  if value == "T" then
    return "Special Trade Indicator: Committed (T)"
  end
  if value == "U" then
    return "Special Trade Indicator: Basis On Close (U)"
  end
  if value == "V" then
    return "Special Trade Indicator: Trade Correction (V)"
  end
  if value == "Z" then
    return "Special Trade Indicator: Price Volume Adjustment Trade (Z)"
  end

  return "Special Trade Indicator: Unknown("..value..")"
end

-- Dissect: Special Trade Indicator
tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.special_trade_indicator, range, value, display)

  return offset + length, value
end

-- Start Of Message In Error
tmx_mx_solaorderentry_sail_v1_21.start_of_message_in_error = {}

-- Size: Start Of Message In Error
tmx_mx_solaorderentry_sail_v1_21.start_of_message_in_error.size = 100

-- Display: Start Of Message In Error
tmx_mx_solaorderentry_sail_v1_21.start_of_message_in_error.display = function(value)
  return "Start Of Message In Error: "..value
end

-- Dissect: Start Of Message In Error
tmx_mx_solaorderentry_sail_v1_21.start_of_message_in_error.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.start_of_message_in_error.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solaorderentry_sail_v1_21.start_of_message_in_error.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.start_of_message_in_error, range, value, display)

  return offset + length, value
end

-- Status
tmx_mx_solaorderentry_sail_v1_21.status = {}

-- Size: Status
tmx_mx_solaorderentry_sail_v1_21.status.size = 1

-- Display: Status
tmx_mx_solaorderentry_sail_v1_21.status.display = function(value)
  if value == " " then
    return "Status: Put In The Order Book Having Possibly Been Partially Executed (<whitespace>)"
  end
  if value == "A" then
    return "Status: Cancelled By The Trader (A)"
  end
  if value == "C" then
    return "Status: Eliminated By The Circuit Breaker (C)"
  end
  if value == "E" then
    return "Status: Order Eliminated By The System (E)"
  end
  if value == "F" then
    return "Status: Eliminated Due To Wash Trade Prevention (F)"
  end
  if value == "G" then
    return "Status: Cancelled By The Firm Supervisor User Global Cancel (G)"
  end
  if value == "I" then
    return "Status: Eliminated On Participant Disconnection (I)"
  end
  if value == "M" then
    return "Status: Eliminated By Mod (M)"
  end
  if value == "N" then
    return "Status: Eliminated Due To Wash Trade Prevention In Non Trading State (N)"
  end
  if value == "Q" then
    return "Status: Eliminated Due To Wash Trade Prevention Against Quote (Q)"
  end
  if value == "S" then
    return "Status: Put In The Order Book As Stop Order (S)"
  end
  if value == "T" then
    return "Status: Eliminated Due To Trade Limit Exceeded (T)"
  end
  if value == "U" then
    return "Status: Eliminated Due To Unpriced Leg (U)"
  end
  if value == "W" then
    return "Status: Cancel Pending (W)"
  end
  if value == "X" then
    return "Status: Order Executed In Full Or Partially And The Remaining Part Could Not Be Put In The Order Book Fak (X)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
tmx_mx_solaorderentry_sail_v1_21.status.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.status, range, value, display)

  return offset + length, value
end

-- Strategy Group
tmx_mx_solaorderentry_sail_v1_21.strategy_group = {}

-- Size: Strategy Group
tmx_mx_solaorderentry_sail_v1_21.strategy_group.size = 2

-- Display: Strategy Group
tmx_mx_solaorderentry_sail_v1_21.strategy_group.display = function(value)
  return "Strategy Group: "..value
end

-- Dissect: Strategy Group
tmx_mx_solaorderentry_sail_v1_21.strategy_group.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.strategy_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.strategy_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.strategy_group, range, value, display)

  return offset + length, value
end

-- Strategy Instrument
tmx_mx_solaorderentry_sail_v1_21.strategy_instrument = {}

-- Size: Strategy Instrument
tmx_mx_solaorderentry_sail_v1_21.strategy_instrument.size = 4

-- Display: Strategy Instrument
tmx_mx_solaorderentry_sail_v1_21.strategy_instrument.display = function(value)
  return "Strategy Instrument: "..value
end

-- Dissect: Strategy Instrument
tmx_mx_solaorderentry_sail_v1_21.strategy_instrument.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.strategy_instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.strategy_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.strategy_instrument, range, value, display)

  return offset + length, value
end

-- Strategy Instrument Id
tmx_mx_solaorderentry_sail_v1_21.strategy_instrument_id = {}

-- Size: Strategy Instrument Id
tmx_mx_solaorderentry_sail_v1_21.strategy_instrument_id.size = 4

-- Display: Strategy Instrument Id
tmx_mx_solaorderentry_sail_v1_21.strategy_instrument_id.display = function(value)
  return "Strategy Instrument Id: "..value
end

-- Dissect: Strategy Instrument Id
tmx_mx_solaorderentry_sail_v1_21.strategy_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.strategy_instrument_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.strategy_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.strategy_instrument_id, range, value, display)

  return offset + length, value
end

-- Strategy Trade Number
tmx_mx_solaorderentry_sail_v1_21.strategy_trade_number = {}

-- Size: Strategy Trade Number
tmx_mx_solaorderentry_sail_v1_21.strategy_trade_number.size = 8

-- Display: Strategy Trade Number
tmx_mx_solaorderentry_sail_v1_21.strategy_trade_number.display = function(value)
  return "Strategy Trade Number: "..value
end

-- Dissect: Strategy Trade Number
tmx_mx_solaorderentry_sail_v1_21.strategy_trade_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.strategy_trade_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.strategy_trade_number, range, value, "Strategy Trade Number: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Strategy Trade Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.strategy_trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.strategy_trade_number, range, value, display)

  return offset + length, value
end

-- Strategy Verb Side
tmx_mx_solaorderentry_sail_v1_21.strategy_verb_side = {}

-- Size: Strategy Verb Side
tmx_mx_solaorderentry_sail_v1_21.strategy_verb_side.size = 1

-- Display: Strategy Verb Side
tmx_mx_solaorderentry_sail_v1_21.strategy_verb_side.display = function(value)
  return "Strategy Verb Side: "..value
end

-- Dissect: Strategy Verb Side
tmx_mx_solaorderentry_sail_v1_21.strategy_verb_side.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.strategy_verb_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.strategy_verb_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.strategy_verb_side, range, value, display)

  return offset + length, value
end

-- Team Level Risk Option
tmx_mx_solaorderentry_sail_v1_21.team_level_risk_option = {}

-- Size: Team Level Risk Option
tmx_mx_solaorderentry_sail_v1_21.team_level_risk_option.size = 1

-- Display: Team Level Risk Option
tmx_mx_solaorderentry_sail_v1_21.team_level_risk_option.display = function(value)
  if value == " " then
    return "Team Level Risk Option: Netting Is Disabled (<whitespace>)"
  end
  if value == "T" then
    return "Team Level Risk Option: Cancel Post Trader Team Level Netting (T)"
  end
  if value == "N" then
    return "Team Level Risk Option: Netting Is Enabled (N)"
  end
  if value == "P" then
    return "Team Level Risk Option: Cancel Post Firm Level Netting (P)"
  end

  return "Team Level Risk Option: Unknown("..value..")"
end

-- Dissect: Team Level Risk Option
tmx_mx_solaorderentry_sail_v1_21.team_level_risk_option.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.team_level_risk_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.team_level_risk_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.team_level_risk_option, range, value, display)

  return offset + length, value
end

-- Trade Memo
tmx_mx_solaorderentry_sail_v1_21.trade_memo = {}

-- Size: Trade Memo
tmx_mx_solaorderentry_sail_v1_21.trade_memo.size = 50

-- Display: Trade Memo
tmx_mx_solaorderentry_sail_v1_21.trade_memo.display = function(value)
  return "Trade Memo: "..value
end

-- Dissect: Trade Memo
tmx_mx_solaorderentry_sail_v1_21.trade_memo.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.trade_memo.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_solaorderentry_sail_v1_21.trade_memo.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.trade_memo, range, value, display)

  return offset + length, value
end

-- Trade Number
tmx_mx_solaorderentry_sail_v1_21.trade_number = {}

-- Size: Trade Number
tmx_mx_solaorderentry_sail_v1_21.trade_number.size = 8

-- Display: Trade Number
tmx_mx_solaorderentry_sail_v1_21.trade_number.display = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
tmx_mx_solaorderentry_sail_v1_21.trade_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.trade_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.trade_number, range, value, "Trade Number: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "Trade Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Trade Price
tmx_mx_solaorderentry_sail_v1_21.trade_price = {}

-- Size: Trade Price
tmx_mx_solaorderentry_sail_v1_21.trade_price.size = 10

-- Display: Trade Price
tmx_mx_solaorderentry_sail_v1_21.trade_price.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trade Price: No Value"
  end

  return "Trade Price: "..value
end

-- Dissect: Trade Price
tmx_mx_solaorderentry_sail_v1_21.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.trade_price.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = tmx_mx_solaorderentry_sail_v1_21.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Type
tmx_mx_solaorderentry_sail_v1_21.trade_type = {}

-- Size: Trade Type
tmx_mx_solaorderentry_sail_v1_21.trade_type.size = 1

-- Display: Trade Type
tmx_mx_solaorderentry_sail_v1_21.trade_type.labels = {
  ["F"] = "Trade Type: Traded During Continuous Trading Following Fifo Algorithm (F)",
  ["M"] = "Trade Type: Trade Entered By Mod (M)",
  ["O"] = "Trade Type: Traded During Opening (O)",
}

tmx_mx_solaorderentry_sail_v1_21.trade_type.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.trade_type.labels[value] or "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
tmx_mx_solaorderentry_sail_v1_21.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trader
tmx_mx_solaorderentry_sail_v1_21.trader = {}

-- Size: Trader
tmx_mx_solaorderentry_sail_v1_21.trader.size = 4

-- Display: Trader
tmx_mx_solaorderentry_sail_v1_21.trader.display = function(value)
  return "Trader: "..value
end

-- Dissect: Trader
tmx_mx_solaorderentry_sail_v1_21.trader.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.trader.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.trader, range, value, display)

  return offset + length, value
end

-- Trader Id
tmx_mx_solaorderentry_sail_v1_21.trader_id = {}

-- Size: Trader Id
tmx_mx_solaorderentry_sail_v1_21.trader_id.size = 8

-- Display: Trader Id
tmx_mx_solaorderentry_sail_v1_21.trader_id.display = function(value)
  return "Trader Id: "..value
end

-- Dissect: Trader Id
tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.trader_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.trader_id, range, value, display)

  return offset + length, value
end

-- Trading Engine Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss = {}

-- Size: Trading Engine Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss.size = 6

-- Display: Trading Engine Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss.display = function(value)
  if #value < 6 then
    return "Trading Engine Timestamp Local Hhmmss: "..value
  end

  return "Trading Engine Timestamp Local Hhmmss: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Trading Engine Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.trading_engine_timestamp_local_hhmmss, range, value, display)

  return offset + length, value
end

-- Trading Engine Timestamp Of The Trade Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss = {}

-- Size: Trading Engine Timestamp Of The Trade Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.size = 6

-- Display: Trading Engine Timestamp Of The Trade Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.display = function(value)
  if #value < 6 then
    return "Trading Engine Timestamp Of The Trade Local Hhmmss: "..value
  end

  return "Trading Engine Timestamp Of The Trade Local Hhmmss: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Trading Engine Timestamp Of The Trade Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.trading_engine_timestamp_of_the_trade_local_hhmmss, range, value, display)

  return offset + length, value
end

-- Type Of Cancellation
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation = {}

-- Size: Type Of Cancellation
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation.size = 1

-- Display: Type Of Cancellation
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation.labels = {
  ["A"] = "Type Of Cancellation: All (A)",
  ["Q"] = "Type Of Cancellation: Quotes Only (Q)",
  ["O"] = "Type Of Cancellation: Orders Only (O)",
  ["S"] = "Type Of Cancellation: Stop Orders Only (S)",
  ["M"] = "Type Of Cancellation: Market Orders Only (M)",
}

tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation.labels[value] or "Type Of Cancellation: Unknown("..value..")"
end

-- Dissect: Type Of Cancellation
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.type_of_cancellation, range, value, display)

  return offset + length, value
end

-- Type Of Cancellation Only Q Quotes Only Can Be Returned
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_only_q_quotes_only_can_be_returned = {}

-- Size: Type Of Cancellation Only Q Quotes Only Can Be Returned
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_only_q_quotes_only_can_be_returned.size = 1

-- Display: Type Of Cancellation Only Q Quotes Only Can Be Returned
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_only_q_quotes_only_can_be_returned.labels = {
  ["A"] = "Type Of Cancellation Only Q Quotes Only Can Be Returned: All (A)",
  ["Q"] = "Type Of Cancellation Only Q Quotes Only Can Be Returned: Quotes Only (Q)",
  ["O"] = "Type Of Cancellation Only Q Quotes Only Can Be Returned: Orders Only (O)",
  ["S"] = "Type Of Cancellation Only Q Quotes Only Can Be Returned: Stop Orders Only (S)",
  ["M"] = "Type Of Cancellation Only Q Quotes Only Can Be Returned: Market Orders Only (M)",
}

tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_only_q_quotes_only_can_be_returned.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_only_q_quotes_only_can_be_returned.labels[value] or "Type Of Cancellation Only Q Quotes Only Can Be Returned: Unknown("..value..")"
end

-- Dissect: Type Of Cancellation Only Q Quotes Only Can Be Returned
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_only_q_quotes_only_can_be_returned.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_only_q_quotes_only_can_be_returned.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_only_q_quotes_only_can_be_returned.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.type_of_cancellation_only_q_quotes_only_can_be_returned, range, value, display)

  return offset + length, value
end

-- Type Of Cancellation Q Quotes Only
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_q_quotes_only = {}

-- Size: Type Of Cancellation Q Quotes Only
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_q_quotes_only.size = 1

-- Display: Type Of Cancellation Q Quotes Only
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_q_quotes_only.labels = {
  ["A"] = "Type Of Cancellation Q Quotes Only: All (A)",
  ["Q"] = "Type Of Cancellation Q Quotes Only: Quotes Only (Q)",
  ["O"] = "Type Of Cancellation Q Quotes Only: Orders Only (O)",
  ["S"] = "Type Of Cancellation Q Quotes Only: Stop Orders Only (S)",
  ["M"] = "Type Of Cancellation Q Quotes Only: Market Orders Only (M)",
}

tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_q_quotes_only.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_q_quotes_only.labels[value] or "Type Of Cancellation Q Quotes Only: Unknown("..value..")"
end

-- Dissect: Type Of Cancellation Q Quotes Only
tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_q_quotes_only.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_q_quotes_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_q_quotes_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.type_of_cancellation_q_quotes_only, range, value, display)

  return offset + length, value
end

-- Usage Group
tmx_mx_solaorderentry_sail_v1_21.usage_group = {}

-- Size: Usage Group
tmx_mx_solaorderentry_sail_v1_21.usage_group.size = 2

-- Display: Usage Group
tmx_mx_solaorderentry_sail_v1_21.usage_group.display = function(value)
  return "Usage Group: "..value
end

-- Dissect: Usage Group
tmx_mx_solaorderentry_sail_v1_21.usage_group.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.usage_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.usage_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.usage_group, range, value, display)

  return offset + length, value
end

-- Usage Status
tmx_mx_solaorderentry_sail_v1_21.usage_status = {}

-- Size: Usage Status
tmx_mx_solaorderentry_sail_v1_21.usage_status.size = 1

-- Display: Usage Status
tmx_mx_solaorderentry_sail_v1_21.usage_status.labels = {
  ["I"] = "Usage Status: Info (I)",
  ["L"] = "Usage Status: Limit (L)",
  ["R"] = "Usage Status: Rejection (R)",
  ["W"] = "Usage Status: Warning (W)",
}

tmx_mx_solaorderentry_sail_v1_21.usage_status.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.usage_status.labels[value] or "Usage Status: Unknown("..value..")"
end

-- Dissect: Usage Status
tmx_mx_solaorderentry_sail_v1_21.usage_status.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.usage_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.usage_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.usage_status, range, value, display)

  return offset + length, value
end

-- Usage Trader
tmx_mx_solaorderentry_sail_v1_21.usage_trader = {}

-- Size: Usage Trader
tmx_mx_solaorderentry_sail_v1_21.usage_trader.size = 4

-- Display: Usage Trader
tmx_mx_solaorderentry_sail_v1_21.usage_trader.display = function(value)
  return "Usage Trader: "..value
end

-- Dissect: Usage Trader
tmx_mx_solaorderentry_sail_v1_21.usage_trader.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.usage_trader.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.usage_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.usage_trader, range, value, display)

  return offset + length, value
end

-- User Id
tmx_mx_solaorderentry_sail_v1_21.user_id = {}

-- Size: User Id
tmx_mx_solaorderentry_sail_v1_21.user_id.size = 8

-- Display: User Id
tmx_mx_solaorderentry_sail_v1_21.user_id.display = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
tmx_mx_solaorderentry_sail_v1_21.user_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.user_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_id, range, value, display)

  return offset + length, value
end

-- User Message Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss = {}

-- Size: User Message Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss.size = 6

-- Display: User Message Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss.display = function(value)
  if #value < 6 then
    return "User Message Timestamp Local Hhmmss: "..value
  end

  return "User Message Timestamp Local Hhmmss: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: User Message Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_message_timestamp_local_hhmmss, range, value, display)

  return offset + length, value
end

-- User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.user_sequence_id = {}

-- Size: User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.user_sequence_id.size = 8

-- Display: User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.user_sequence_id.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "User Sequence Id: No Value"
  end

  return "User Sequence Id: "..value
end

-- Dissect: User Sequence Id
tmx_mx_solaorderentry_sail_v1_21.user_sequence_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.user_sequence_id.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_sequence_id, range, value, "User Sequence Id: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "User Sequence Id is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.user_sequence_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_sequence_id, range, value, display)

  return offset + length, value
end

-- User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period
tmx_mx_solaorderentry_sail_v1_21.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period = {}

-- Size: User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period
tmx_mx_solaorderentry_sail_v1_21.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.size = 8

-- Display: User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period
tmx_mx_solaorderentry_sail_v1_21.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.display = function(value)
  return "User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period: "..value
end

-- Dissect: User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period
tmx_mx_solaorderentry_sail_v1_21.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period, range, value, "User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period: Not Applicable")
    item:add_proto_expert_info(tmx_mx_solaorderentry_sail_v1_21.experts.not_a_number, "User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_mx_solaorderentry_sail_v1_21.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period, range, value, display)

  return offset + length, value
end

-- User Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.user_timestamp_local_hhmmss = {}

-- Size: User Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.user_timestamp_local_hhmmss.size = 6

-- Display: User Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.user_timestamp_local_hhmmss.display = function(value)
  if #value < 6 then
    return "User Timestamp Local Hhmmss: "..value
  end

  return "User Timestamp Local Hhmmss: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: User Timestamp Local Hhmmss
tmx_mx_solaorderentry_sail_v1_21.user_timestamp_local_hhmmss.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.user_timestamp_local_hhmmss.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.user_timestamp_local_hhmmss.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_timestamp_local_hhmmss, range, value, display)

  return offset + length, value
end

-- Verb
tmx_mx_solaorderentry_sail_v1_21.verb = {}

-- Size: Verb
tmx_mx_solaorderentry_sail_v1_21.verb.size = 1

-- Display: Verb
tmx_mx_solaorderentry_sail_v1_21.verb.labels = {
  ["B"] = "Verb: Buy (B)",
  ["S"] = "Verb: Sell (S)",
}

tmx_mx_solaorderentry_sail_v1_21.verb.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.verb.labels[value] or "Verb: Unknown("..value..")"
end

-- Dissect: Verb
tmx_mx_solaorderentry_sail_v1_21.verb.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.verb.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.verb.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.verb, range, value, display)

  return offset + length, value
end

-- Verb Side
tmx_mx_solaorderentry_sail_v1_21.verb_side = {}

-- Size: Verb Side
tmx_mx_solaorderentry_sail_v1_21.verb_side.size = 1

-- Display: Verb Side
tmx_mx_solaorderentry_sail_v1_21.verb_side.labels = {
  ["B"] = "Verb Side: Buy (B)",
  ["S"] = "Verb Side: Sell (S)",
}

tmx_mx_solaorderentry_sail_v1_21.verb_side.display = function(value)
  return tmx_mx_solaorderentry_sail_v1_21.verb_side.labels[value] or "Verb Side: Unknown("..value..")"
end

-- Dissect: Verb Side
tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_solaorderentry_sail_v1_21.verb_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_solaorderentry_sail_v1_21.verb_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.verb_side, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Tmx Mx SolaOrderEntry Sail 1.21
-----------------------------------------------------------------------

-- Outgoing Messages Header
tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header = {}

-- Size: Outgoing Messages Header
tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size =
  tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss.size + 
  tmx_mx_solaorderentry_sail_v1_21.user_sequence_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.exchange_message_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.gap_sequence_id.size

-- Display: Outgoing Messages Header
tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outgoing Messages Header
tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Engine Timestamp Local Hhmmss: Time
  index, trading_engine_timestamp_local_hhmmss = tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss.dissect(buffer, index, packet, parent)

  -- User Sequence Id: User Sequence ID
  index, user_sequence_id = tmx_mx_solaorderentry_sail_v1_21.user_sequence_id.dissect(buffer, index, packet, parent)

  -- Exchange Message Id: Exchange Message ID
  index, exchange_message_id = tmx_mx_solaorderentry_sail_v1_21.exchange_message_id.dissect(buffer, index, packet, parent)

  -- Gap Sequence Id: Gap Sequence ID
  index, gap_sequence_id = tmx_mx_solaorderentry_sail_v1_21.gap_sequence_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Outgoing Messages Header
tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.outgoing_messages_header, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.fields(buffer, offset, packet, parent)
  end
end

-- Request For Quote With Side Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.request_for_quote_with_side_acknowledgement = {}

-- Size: Request For Quote With Side Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.request_for_quote_with_side_acknowledgement.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.market_side.size

-- Display: Request For Quote With Side Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.request_for_quote_with_side_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request For Quote With Side Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.request_for_quote_with_side_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  -- Market Side: MarketSide
  index, market_side = tmx_mx_solaorderentry_sail_v1_21.market_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Quote With Side Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.request_for_quote_with_side_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.request_for_quote_with_side_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.request_for_quote_with_side_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.request_for_quote_with_side_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.request_for_quote_with_side_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Owner Data
tmx_mx_solaorderentry_sail_v1_21.owner_data = {}

-- Size: Owner Data
tmx_mx_solaorderentry_sail_v1_21.owner_data.size =
  tmx_mx_solaorderentry_sail_v1_21.memo.size

-- Display: Owner Data
tmx_mx_solaorderentry_sail_v1_21.owner_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Owner Data
tmx_mx_solaorderentry_sail_v1_21.owner_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Memo: Memo
  index, memo = tmx_mx_solaorderentry_sail_v1_21.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Owner Data
tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.owner_data, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.owner_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.owner_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.owner_data.fields(buffer, offset, packet, parent)
  end
end

-- Clearing Data
tmx_mx_solaorderentry_sail_v1_21.clearing_data = {}

-- Size: Clearing Data
tmx_mx_solaorderentry_sail_v1_21.clearing_data.size =
  tmx_mx_solaorderentry_sail_v1_21.clearing_instruction.size + 
  tmx_mx_solaorderentry_sail_v1_21.account_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.open_close.size + 
  tmx_mx_solaorderentry_sail_v1_21.hedge_spec.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_5.size

-- Display: Clearing Data
tmx_mx_solaorderentry_sail_v1_21.clearing_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Data
tmx_mx_solaorderentry_sail_v1_21.clearing_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Instruction: Clearing Instruction
  index, clearing_instruction = tmx_mx_solaorderentry_sail_v1_21.clearing_instruction.dissect(buffer, index, packet, parent)

  -- Account Type: AccountType
  index, account_type = tmx_mx_solaorderentry_sail_v1_21.account_type.dissect(buffer, index, packet, parent)

  -- Open Close: Open/Close
  index, open_close = tmx_mx_solaorderentry_sail_v1_21.open_close.dissect(buffer, index, packet, parent)

  -- Hedge Spec: Hedge/Spec
  index, hedge_spec = tmx_mx_solaorderentry_sail_v1_21.hedge_spec.dissect(buffer, index, packet, parent)

  -- Filler 5: String (5)
  index, filler_5 = tmx_mx_solaorderentry_sail_v1_21.filler_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Data
tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.clearing_data, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.clearing_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.clearing_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.clearing_data.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation Notice By Mod Or System
tmx_mx_solaorderentry_sail_v1_21.order_cancellation_notice_by_mod_or_system = {}

-- Size: Order Cancellation Notice By Mod Or System
tmx_mx_solaorderentry_sail_v1_21.order_cancellation_notice_by_mod_or_system.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.status.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.assigned_price.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.original_order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_6.size

-- Display: Order Cancellation Notice By Mod Or System
tmx_mx_solaorderentry_sail_v1_21.order_cancellation_notice_by_mod_or_system.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Notice By Mod Or System
tmx_mx_solaorderentry_sail_v1_21.order_cancellation_notice_by_mod_or_system.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Order Id: Order ID
  index, order_id = tmx_mx_solaorderentry_sail_v1_21.order_id.dissect(buffer, index, packet, parent)

  -- Status: Status
  index, status = tmx_mx_solaorderentry_sail_v1_21.status.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  -- Assigned Price: Assigned Price
  index, assigned_price = tmx_mx_solaorderentry_sail_v1_21.assigned_price.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  -- Original Order Id: Original Order ID
  index, original_order_id = tmx_mx_solaorderentry_sail_v1_21.original_order_id.dissect(buffer, index, packet, parent)

  -- Filler 6: Numeric (6)
  index, filler_6 = tmx_mx_solaorderentry_sail_v1_21.filler_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation Notice By Mod Or System
tmx_mx_solaorderentry_sail_v1_21.order_cancellation_notice_by_mod_or_system.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_cancellation_notice_by_mod_or_system, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.order_cancellation_notice_by_mod_or_system.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.order_cancellation_notice_by_mod_or_system.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.order_cancellation_notice_by_mod_or_system.fields(buffer, offset, packet, parent)
  end
end

-- Leg Execution Cancellation Notice
tmx_mx_solaorderentry_sail_v1_21.leg_execution_cancellation_notice = {}

-- Size: Leg Execution Cancellation Notice
tmx_mx_solaorderentry_sail_v1_21.leg_execution_cancellation_notice.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_traded.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_price.size + 
  tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_6.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_number.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_memo.size + 
  tmx_mx_solaorderentry_sail_v1_21.original_reference_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.size + 
  tmx_mx_solaorderentry_sail_v1_21.strategy_group.size + 
  tmx_mx_solaorderentry_sail_v1_21.strategy_instrument_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.strategy_verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.strategy_trade_number.size + 
  tmx_mx_solaorderentry_sail_v1_21.leg_number.size

-- Display: Leg Execution Cancellation Notice
tmx_mx_solaorderentry_sail_v1_21.leg_execution_cancellation_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Execution Cancellation Notice
tmx_mx_solaorderentry_sail_v1_21.leg_execution_cancellation_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Reference Id Order Id Or Quote Id: Order ID
  index, reference_id_order_id_or_quote_id = tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Traded: Quantity
  index, quantity_traded = tmx_mx_solaorderentry_sail_v1_21.quantity_traded.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = tmx_mx_solaorderentry_sail_v1_21.trade_price.dissect(buffer, index, packet, parent)

  -- Trading Engine Timestamp Of The Trade Local Hhmmss: Time
  index, trading_engine_timestamp_of_the_trade_local_hhmmss = tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  -- Special Trade Indicator: Special Trade Indicator
  index, special_trade_indicator = tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.dissect(buffer, index, packet, parent)

  -- Price Type: Price Type
  index, price_type = tmx_mx_solaorderentry_sail_v1_21.price_type.dissect(buffer, index, packet, parent)

  -- Trade Type: Trade Type
  index, trade_type = tmx_mx_solaorderentry_sail_v1_21.trade_type.dissect(buffer, index, packet, parent)

  -- Filler 6: Numeric (6)
  index, filler_6 = tmx_mx_solaorderentry_sail_v1_21.filler_6.dissect(buffer, index, packet, parent)

  -- Trade Number: Trade Number
  index, trade_number = tmx_mx_solaorderentry_sail_v1_21.trade_number.dissect(buffer, index, packet, parent)

  -- Trade Memo: Trade Memo
  index, trade_memo = tmx_mx_solaorderentry_sail_v1_21.trade_memo.dissect(buffer, index, packet, parent)

  -- Original Reference Id: Original Reference ID
  index, original_reference_id = tmx_mx_solaorderentry_sail_v1_21.original_reference_id.dissect(buffer, index, packet, parent)

  -- Id Code For The Counterpart Participant: ID Code for the Counterpart Participant
  index, id_code_for_the_counterpart_participant = tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.dissect(buffer, index, packet, parent)

  -- Strategy Group: Group ID
  index, strategy_group = tmx_mx_solaorderentry_sail_v1_21.strategy_group.dissect(buffer, index, packet, parent)

  -- Strategy Instrument Id: Strategy Instrument ID
  index, strategy_instrument_id = tmx_mx_solaorderentry_sail_v1_21.strategy_instrument_id.dissect(buffer, index, packet, parent)

  -- Strategy Verb Side: Strategy Verb
  index, strategy_verb_side = tmx_mx_solaorderentry_sail_v1_21.strategy_verb_side.dissect(buffer, index, packet, parent)

  -- Strategy Trade Number: Strategy Trade Number
  index, strategy_trade_number = tmx_mx_solaorderentry_sail_v1_21.strategy_trade_number.dissect(buffer, index, packet, parent)

  -- Leg Number: Leg Number
  index, leg_number = tmx_mx_solaorderentry_sail_v1_21.leg_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Execution Cancellation Notice
tmx_mx_solaorderentry_sail_v1_21.leg_execution_cancellation_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_execution_cancellation_notice, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.leg_execution_cancellation_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.leg_execution_cancellation_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.leg_execution_cancellation_notice.fields(buffer, offset, packet, parent)
  end
end

-- Execution Cancellation Notice
tmx_mx_solaorderentry_sail_v1_21.execution_cancellation_notice = {}

-- Size: Execution Cancellation Notice
tmx_mx_solaorderentry_sail_v1_21.execution_cancellation_notice.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_traded.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_price.size + 
  tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_6.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_number.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_memo.size + 
  tmx_mx_solaorderentry_sail_v1_21.original_reference_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.size

-- Display: Execution Cancellation Notice
tmx_mx_solaorderentry_sail_v1_21.execution_cancellation_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Cancellation Notice
tmx_mx_solaorderentry_sail_v1_21.execution_cancellation_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Reference Id Order Id Or Quote Id: Order ID
  index, reference_id_order_id_or_quote_id = tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Traded: Quantity
  index, quantity_traded = tmx_mx_solaorderentry_sail_v1_21.quantity_traded.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = tmx_mx_solaorderentry_sail_v1_21.trade_price.dissect(buffer, index, packet, parent)

  -- Trading Engine Timestamp Of The Trade Local Hhmmss: Time
  index, trading_engine_timestamp_of_the_trade_local_hhmmss = tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  -- Special Trade Indicator: Special Trade Indicator
  index, special_trade_indicator = tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.dissect(buffer, index, packet, parent)

  -- Price Type: Price Type
  index, price_type = tmx_mx_solaorderentry_sail_v1_21.price_type.dissect(buffer, index, packet, parent)

  -- Trade Type: Trade Type
  index, trade_type = tmx_mx_solaorderentry_sail_v1_21.trade_type.dissect(buffer, index, packet, parent)

  -- Filler 6: Numeric (6)
  index, filler_6 = tmx_mx_solaorderentry_sail_v1_21.filler_6.dissect(buffer, index, packet, parent)

  -- Trade Number: Trade Number
  index, trade_number = tmx_mx_solaorderentry_sail_v1_21.trade_number.dissect(buffer, index, packet, parent)

  -- Trade Memo: Trade Memo
  index, trade_memo = tmx_mx_solaorderentry_sail_v1_21.trade_memo.dissect(buffer, index, packet, parent)

  -- Original Reference Id: Original Reference ID
  index, original_reference_id = tmx_mx_solaorderentry_sail_v1_21.original_reference_id.dissect(buffer, index, packet, parent)

  -- Id Code For The Counterpart Participant: ID Code for the Counterpart Participant
  index, id_code_for_the_counterpart_participant = tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Cancellation Notice
tmx_mx_solaorderentry_sail_v1_21.execution_cancellation_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.execution_cancellation_notice, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.execution_cancellation_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.execution_cancellation_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.execution_cancellation_notice.fields(buffer, offset, packet, parent)
  end
end

-- Execution Notice
tmx_mx_solaorderentry_sail_v1_21.execution_notice = {}

-- Size: Execution Notice
tmx_mx_solaorderentry_sail_v1_21.execution_notice.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_traded.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_price.size + 
  tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_6.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_number.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_memo.size + 
  tmx_mx_solaorderentry_sail_v1_21.original_reference_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.size

-- Display: Execution Notice
tmx_mx_solaorderentry_sail_v1_21.execution_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Notice
tmx_mx_solaorderentry_sail_v1_21.execution_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Reference Id Order Id Or Quote Id: Order ID
  index, reference_id_order_id_or_quote_id = tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Traded: Quantity
  index, quantity_traded = tmx_mx_solaorderentry_sail_v1_21.quantity_traded.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = tmx_mx_solaorderentry_sail_v1_21.trade_price.dissect(buffer, index, packet, parent)

  -- Trading Engine Timestamp Of The Trade Local Hhmmss: Time
  index, trading_engine_timestamp_of_the_trade_local_hhmmss = tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  -- Special Trade Indicator: Special Trade Indicator
  index, special_trade_indicator = tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.dissect(buffer, index, packet, parent)

  -- Price Type: Price Type
  index, price_type = tmx_mx_solaorderentry_sail_v1_21.price_type.dissect(buffer, index, packet, parent)

  -- Trade Type: Trade Type
  index, trade_type = tmx_mx_solaorderentry_sail_v1_21.trade_type.dissect(buffer, index, packet, parent)

  -- Filler 6: Numeric (6)
  index, filler_6 = tmx_mx_solaorderentry_sail_v1_21.filler_6.dissect(buffer, index, packet, parent)

  -- Trade Number: Trade Number
  index, trade_number = tmx_mx_solaorderentry_sail_v1_21.trade_number.dissect(buffer, index, packet, parent)

  -- Trade Memo: Trade Memo
  index, trade_memo = tmx_mx_solaorderentry_sail_v1_21.trade_memo.dissect(buffer, index, packet, parent)

  -- Original Reference Id: Original Reference ID
  index, original_reference_id = tmx_mx_solaorderentry_sail_v1_21.original_reference_id.dissect(buffer, index, packet, parent)

  -- Id Code For The Counterpart Participant: ID Code for the Counterpart Participant
  index, id_code_for_the_counterpart_participant = tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Notice
tmx_mx_solaorderentry_sail_v1_21.execution_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.execution_notice, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.execution_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.execution_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.execution_notice.fields(buffer, offset, packet, parent)
  end
end

-- Cancellation Of All Quotes Notice
tmx_mx_solaorderentry_sail_v1_21.cancellation_of_all_quotes_notice = {}

-- Size: Cancellation Of All Quotes Notice
tmx_mx_solaorderentry_sail_v1_21.cancellation_of_all_quotes_notice.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.cancel_reason.size

-- Display: Cancellation Of All Quotes Notice
tmx_mx_solaorderentry_sail_v1_21.cancellation_of_all_quotes_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancellation Of All Quotes Notice
tmx_mx_solaorderentry_sail_v1_21.cancellation_of_all_quotes_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Quote Cancel Reason
  index, cancel_reason = tmx_mx_solaorderentry_sail_v1_21.cancel_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancellation Of All Quotes Notice
tmx_mx_solaorderentry_sail_v1_21.cancellation_of_all_quotes_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.cancellation_of_all_quotes_notice, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.cancellation_of_all_quotes_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.cancellation_of_all_quotes_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.cancellation_of_all_quotes_notice.fields(buffer, offset, packet, parent)
  end
end

-- Counterpart Owner Data
tmx_mx_solaorderentry_sail_v1_21.counterpart_owner_data = {}

-- Size: Counterpart Owner Data
tmx_mx_solaorderentry_sail_v1_21.counterpart_owner_data.size =
  tmx_mx_solaorderentry_sail_v1_21.memo.size

-- Display: Counterpart Owner Data
tmx_mx_solaorderentry_sail_v1_21.counterpart_owner_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Counterpart Owner Data
tmx_mx_solaorderentry_sail_v1_21.counterpart_owner_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Memo: Memo
  index, memo = tmx_mx_solaorderentry_sail_v1_21.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Counterpart Owner Data
tmx_mx_solaorderentry_sail_v1_21.counterpart_owner_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.counterpart_owner_data, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.counterpart_owner_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.counterpart_owner_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.counterpart_owner_data.fields(buffer, offset, packet, parent)
  end
end

-- Overstepped Order Or Quote Notice
tmx_mx_solaorderentry_sail_v1_21.overstepped_order_or_quote_notice = {}

-- Size: Overstepped Order Or Quote Notice
tmx_mx_solaorderentry_sail_v1_21.overstepped_order_or_quote_notice.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb.size + 
  tmx_mx_solaorderentry_sail_v1_21.order_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.counterpart_trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.counterpart_order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.counterpart_owner_data.size

-- Display: Overstepped Order Or Quote Notice
tmx_mx_solaorderentry_sail_v1_21.overstepped_order_or_quote_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Overstepped Order Or Quote Notice
tmx_mx_solaorderentry_sail_v1_21.overstepped_order_or_quote_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Verb: Verb
  index, verb = tmx_mx_solaorderentry_sail_v1_21.verb.dissect(buffer, index, packet, parent)

  -- Order Type: Order Type
  index, order_type = tmx_mx_solaorderentry_sail_v1_21.order_type.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Order Id: Order ID
  index, order_id = tmx_mx_solaorderentry_sail_v1_21.order_id.dissect(buffer, index, packet, parent)

  -- Counterpart Trader Id: Trader ID
  index, counterpart_trader_id = tmx_mx_solaorderentry_sail_v1_21.counterpart_trader_id.dissect(buffer, index, packet, parent)

  -- Counterpart Order Id: Order ID
  index, counterpart_order_id = tmx_mx_solaorderentry_sail_v1_21.counterpart_order_id.dissect(buffer, index, packet, parent)

  -- Counterpart Owner Data: Struct of 1 fields
  index, counterpart_owner_data = tmx_mx_solaorderentry_sail_v1_21.counterpart_owner_data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Overstepped Order Or Quote Notice
tmx_mx_solaorderentry_sail_v1_21.overstepped_order_or_quote_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.overstepped_order_or_quote_notice, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.overstepped_order_or_quote_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.overstepped_order_or_quote_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.overstepped_order_or_quote_notice.fields(buffer, offset, packet, parent)
  end
end

-- Leg Execution Notice
tmx_mx_solaorderentry_sail_v1_21.leg_execution_notice = {}

-- Size: Leg Execution Notice
tmx_mx_solaorderentry_sail_v1_21.leg_execution_notice.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_traded.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_price.size + 
  tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_6.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_number.size + 
  tmx_mx_solaorderentry_sail_v1_21.trade_memo.size + 
  tmx_mx_solaorderentry_sail_v1_21.original_reference_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.size + 
  tmx_mx_solaorderentry_sail_v1_21.strategy_group.size + 
  tmx_mx_solaorderentry_sail_v1_21.strategy_instrument_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.strategy_verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.strategy_trade_number.size + 
  tmx_mx_solaorderentry_sail_v1_21.leg_number.size

-- Display: Leg Execution Notice
tmx_mx_solaorderentry_sail_v1_21.leg_execution_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Execution Notice
tmx_mx_solaorderentry_sail_v1_21.leg_execution_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Reference Id Order Id Or Quote Id: Order ID
  index, reference_id_order_id_or_quote_id = tmx_mx_solaorderentry_sail_v1_21.reference_id_order_id_or_quote_id.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Traded: Quantity
  index, quantity_traded = tmx_mx_solaorderentry_sail_v1_21.quantity_traded.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = tmx_mx_solaorderentry_sail_v1_21.trade_price.dissect(buffer, index, packet, parent)

  -- Trading Engine Timestamp Of The Trade Local Hhmmss: Time
  index, trading_engine_timestamp_of_the_trade_local_hhmmss = tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_of_the_trade_local_hhmmss.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  -- Special Trade Indicator: Special Trade Indicator
  index, special_trade_indicator = tmx_mx_solaorderentry_sail_v1_21.special_trade_indicator.dissect(buffer, index, packet, parent)

  -- Price Type: Price Type
  index, price_type = tmx_mx_solaorderentry_sail_v1_21.price_type.dissect(buffer, index, packet, parent)

  -- Trade Type: Trade Type
  index, trade_type = tmx_mx_solaorderentry_sail_v1_21.trade_type.dissect(buffer, index, packet, parent)

  -- Filler 6: Numeric (6)
  index, filler_6 = tmx_mx_solaorderentry_sail_v1_21.filler_6.dissect(buffer, index, packet, parent)

  -- Trade Number: Trade Number
  index, trade_number = tmx_mx_solaorderentry_sail_v1_21.trade_number.dissect(buffer, index, packet, parent)

  -- Trade Memo: Trade Memo
  index, trade_memo = tmx_mx_solaorderentry_sail_v1_21.trade_memo.dissect(buffer, index, packet, parent)

  -- Original Reference Id: Original Reference ID
  index, original_reference_id = tmx_mx_solaorderentry_sail_v1_21.original_reference_id.dissect(buffer, index, packet, parent)

  -- Id Code For The Counterpart Participant: ID Code for the Counterpart Participant
  index, id_code_for_the_counterpart_participant = tmx_mx_solaorderentry_sail_v1_21.id_code_for_the_counterpart_participant.dissect(buffer, index, packet, parent)

  -- Strategy Group: Group ID
  index, strategy_group = tmx_mx_solaorderentry_sail_v1_21.strategy_group.dissect(buffer, index, packet, parent)

  -- Strategy Instrument Id: Strategy Instrument ID
  index, strategy_instrument_id = tmx_mx_solaorderentry_sail_v1_21.strategy_instrument_id.dissect(buffer, index, packet, parent)

  -- Strategy Verb Side: Strategy Verb
  index, strategy_verb_side = tmx_mx_solaorderentry_sail_v1_21.strategy_verb_side.dissect(buffer, index, packet, parent)

  -- Strategy Trade Number: Strategy Trade Number
  index, strategy_trade_number = tmx_mx_solaorderentry_sail_v1_21.strategy_trade_number.dissect(buffer, index, packet, parent)

  -- Leg Number: Leg Number
  index, leg_number = tmx_mx_solaorderentry_sail_v1_21.leg_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Execution Notice
tmx_mx_solaorderentry_sail_v1_21.leg_execution_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.leg_execution_notice, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.leg_execution_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.leg_execution_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.leg_execution_notice.fields(buffer, offset, packet, parent)
  end
end

-- Instrument State Change
tmx_mx_solaorderentry_sail_v1_21.instrument_state_change = {}

-- Size: Instrument State Change
tmx_mx_solaorderentry_sail_v1_21.instrument_state_change.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument_state.size

-- Display: Instrument State Change
tmx_mx_solaorderentry_sail_v1_21.instrument_state_change.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument State Change
tmx_mx_solaorderentry_sail_v1_21.instrument_state_change.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Instrument State: Instrument State
  index, instrument_state = tmx_mx_solaorderentry_sail_v1_21.instrument_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument State Change
tmx_mx_solaorderentry_sail_v1_21.instrument_state_change.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.instrument_state_change, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.instrument_state_change.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.instrument_state_change.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.instrument_state_change.fields(buffer, offset, packet, parent)
  end
end

-- Group State Change
tmx_mx_solaorderentry_sail_v1_21.group_state_change = {}

-- Size: Group State Change
tmx_mx_solaorderentry_sail_v1_21.group_state_change.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.group_state.size

-- Display: Group State Change
tmx_mx_solaorderentry_sail_v1_21.group_state_change.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group State Change
tmx_mx_solaorderentry_sail_v1_21.group_state_change.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Group State: Group State
  index, group_state = tmx_mx_solaorderentry_sail_v1_21.group_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group State Change
tmx_mx_solaorderentry_sail_v1_21.group_state_change.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.group_state_change, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.group_state_change.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.group_state_change.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.group_state_change.fields(buffer, offset, packet, parent)
  end
end

-- Excluded Instrument Notice Occurrence
tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice_occurrence = {}

-- Size: Excluded Instrument Notice Occurrence
tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.instrument.size

-- Display: Excluded Instrument Notice Occurrence
tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Excluded Instrument Notice Occurrence
tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice_occurrence.fields = function(buffer, offset, packet, parent, excluded_instrument_notice_occurrence_index)
  local index = offset

  -- Implicit Excluded Instrument Notice Occurrence Index
  if excluded_instrument_notice_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.excluded_instrument_notice_occurrence_index, excluded_instrument_notice_occurrence_index)
    iteration:set_generated()
  end

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Excluded Instrument Notice Occurrence
tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice_occurrence.dissect = function(buffer, offset, packet, parent, excluded_instrument_notice_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.excluded_instrument_notice_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice_occurrence.fields(buffer, offset, packet, parent, excluded_instrument_notice_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice_occurrence.fields(buffer, offset, packet, parent, excluded_instrument_notice_occurrence_index)
  end
end

-- Excluded Instrument Notice
tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice = {}

-- Calculate size of: Excluded Instrument Notice
tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.filler_2.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.trader_id.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.filler_4.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.nb_of_instruments.size

  -- Calculate field size from count
  local excluded_instrument_notice_occurrence_count = buffer(offset + index - 4, 4):string()
  index = index + excluded_instrument_notice_occurrence_count * 4

  return index
end

-- Display: Excluded Instrument Notice
tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Excluded Instrument Notice
tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Filler 2: String (2)
  index, filler_2 = tmx_mx_solaorderentry_sail_v1_21.filler_2.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Filler 4: String (4)
  index, filler_4 = tmx_mx_solaorderentry_sail_v1_21.filler_4.dissect(buffer, index, packet, parent)

  -- Nb Of Instruments: Numeric (4)
  index, nb_of_instruments = tmx_mx_solaorderentry_sail_v1_21.nb_of_instruments.dissect(buffer, index, packet, parent)

  -- Repeating: Excluded Instrument Notice Occurrence
  for excluded_instrument_notice_occurrence_index = 1, nb_of_instruments do
    index, excluded_instrument_notice_occurrence = tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice_occurrence.dissect(buffer, index, packet, parent, excluded_instrument_notice_occurrence_index)
  end

  return index
end

-- Dissect: Excluded Instrument Notice
tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.excluded_instrument_notice, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice.fields(buffer, offset, packet, parent)
  end
end

-- Risk Limits Usage Occurrence
tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage_occurrence = {}

-- Size: Risk Limits Usage Occurrence
tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.usage_trader.size + 
  tmx_mx_solaorderentry_sail_v1_21.usage_group.size + 
  tmx_mx_solaorderentry_sail_v1_21.usage_status.size + 
  tmx_mx_solaorderentry_sail_v1_21.limit_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.current_usage.size + 
  tmx_mx_solaorderentry_sail_v1_21.limit_value.size

-- Display: Risk Limits Usage Occurrence
tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Limits Usage Occurrence
tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage_occurrence.fields = function(buffer, offset, packet, parent, risk_limits_usage_occurrence_index)
  local index = offset

  -- Implicit Risk Limits Usage Occurrence Index
  if risk_limits_usage_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.risk_limits_usage_occurrence_index, risk_limits_usage_occurrence_index)
    iteration:set_generated()
  end

  -- Usage Trader: Short Trader ID
  index, usage_trader = tmx_mx_solaorderentry_sail_v1_21.usage_trader.dissect(buffer, index, packet, parent)

  -- Usage Group: Group ID
  index, usage_group = tmx_mx_solaorderentry_sail_v1_21.usage_group.dissect(buffer, index, packet, parent)

  -- Usage Status: Risk Usage Status
  index, usage_status = tmx_mx_solaorderentry_sail_v1_21.usage_status.dissect(buffer, index, packet, parent)

  -- Limit Type: Risk Limit Type
  index, limit_type = tmx_mx_solaorderentry_sail_v1_21.limit_type.dissect(buffer, index, packet, parent)

  -- Current Usage: Price or Quantity
  index, current_usage = tmx_mx_solaorderentry_sail_v1_21.current_usage.dissect(buffer, index, packet, parent)

  -- Limit Value: Price or Quantity
  index, limit_value = tmx_mx_solaorderentry_sail_v1_21.limit_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Limits Usage Occurrence
tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage_occurrence.dissect = function(buffer, offset, packet, parent, risk_limits_usage_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.risk_limits_usage_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage_occurrence.fields(buffer, offset, packet, parent, risk_limits_usage_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage_occurrence.fields(buffer, offset, packet, parent, risk_limits_usage_occurrence_index)
  end
end

-- Risk Limits Usage
tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage = {}

-- Calculate size of: Risk Limits Usage
tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_usage_blocks.size

  -- Calculate field size from count
  local risk_limits_usage_occurrence_count = buffer(offset + index - 4, 4):string()
  index = index + risk_limits_usage_occurrence_count * 28

  return index
end

-- Display: Risk Limits Usage
tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Limits Usage
tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Number Of Usage Blocks: Numeric (4)
  index, number_of_usage_blocks = tmx_mx_solaorderentry_sail_v1_21.number_of_usage_blocks.dissect(buffer, index, packet, parent)

  -- Repeating: Risk Limits Usage Occurrence
  for risk_limits_usage_occurrence_index = 1, number_of_usage_blocks do
    index, risk_limits_usage_occurrence = tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage_occurrence.dissect(buffer, index, packet, parent, risk_limits_usage_occurrence_index)
  end

  return index
end

-- Dissect: Risk Limits Usage
tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.risk_limits_usage, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Command Acknowledgement Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement_occurrence = {}

-- Size: Bulk Command Acknowledgement Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.command_number.size + 
  tmx_mx_solaorderentry_sail_v1_21.error_code.size

-- Display: Bulk Command Acknowledgement Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Command Acknowledgement Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement_occurrence.fields = function(buffer, offset, packet, parent, bulk_command_acknowledgement_occurrence_index)
  local index = offset

  -- Implicit Bulk Command Acknowledgement Occurrence Index
  if bulk_command_acknowledgement_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_command_acknowledgement_occurrence_index, bulk_command_acknowledgement_occurrence_index)
    iteration:set_generated()
  end

  -- Command Number: Numeric (4)
  index, command_number = tmx_mx_solaorderentry_sail_v1_21.command_number.dissect(buffer, index, packet, parent)

  -- Error Code: Error Code
  index, error_code = tmx_mx_solaorderentry_sail_v1_21.error_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Command Acknowledgement Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement_occurrence.dissect = function(buffer, offset, packet, parent, bulk_command_acknowledgement_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_command_acknowledgement_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement_occurrence.fields(buffer, offset, packet, parent, bulk_command_acknowledgement_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement_occurrence.fields(buffer, offset, packet, parent, bulk_command_acknowledgement_occurrence_index)
  end
end

-- Bulk Command Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement = {}

-- Calculate size of: Bulk Command Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_commands.size

  -- Calculate field size from count
  local bulk_command_acknowledgement_occurrence_count = buffer(offset + index - 4, 4):string()
  index = index + bulk_command_acknowledgement_occurrence_count * 8

  return index
end

-- Display: Bulk Command Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Command Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Number Of Commands: Numeric (4)
  index, number_of_commands = tmx_mx_solaorderentry_sail_v1_21.number_of_commands.dissect(buffer, index, packet, parent)

  -- Repeating: Bulk Command Acknowledgement Occurrence
  for bulk_command_acknowledgement_occurrence_index = 1, number_of_commands do
    index, bulk_command_acknowledgement_occurrence = tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement_occurrence.dissect(buffer, index, packet, parent, bulk_command_acknowledgement_occurrence_index)
  end

  return index
end

-- Dissect: Bulk Command Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_command_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Acknowledgement Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement_occurrence = {}

-- Size: Bulk Quote Acknowledgement Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.quote_number.size + 
  tmx_mx_solaorderentry_sail_v1_21.error_code.size

-- Display: Bulk Quote Acknowledgement Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Acknowledgement Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement_occurrence.fields = function(buffer, offset, packet, parent, bulk_quote_acknowledgement_occurrence_index)
  local index = offset

  -- Implicit Bulk Quote Acknowledgement Occurrence Index
  if bulk_quote_acknowledgement_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_acknowledgement_occurrence_index, bulk_quote_acknowledgement_occurrence_index)
    iteration:set_generated()
  end

  -- Quote Number: Numeric (3)
  index, quote_number = tmx_mx_solaorderentry_sail_v1_21.quote_number.dissect(buffer, index, packet, parent)

  -- Error Code: Error Code
  index, error_code = tmx_mx_solaorderentry_sail_v1_21.error_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Acknowledgement Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement_occurrence.dissect = function(buffer, offset, packet, parent, bulk_quote_acknowledgement_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_acknowledgement_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement_occurrence.fields(buffer, offset, packet, parent, bulk_quote_acknowledgement_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement_occurrence.fields(buffer, offset, packet, parent, bulk_quote_acknowledgement_occurrence_index)
  end
end

-- Bulk Quote Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement = {}

-- Calculate size of: Bulk Quote Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_quotes_in_error.size

  -- Calculate field size from count
  local bulk_quote_acknowledgement_occurrence_count = buffer(offset + index - 3, 3):string()
  index = index + bulk_quote_acknowledgement_occurrence_count * 7

  return index
end

-- Display: Bulk Quote Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Quote Identifier On This Group: Order ID
  index, quote_identifier_on_this_group = tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.dissect(buffer, index, packet, parent)

  -- Number Of Quotes In Error: Numeric (3)
  index, number_of_quotes_in_error = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes_in_error.dissect(buffer, index, packet, parent)

  -- Repeating: Bulk Quote Acknowledgement Occurrence
  for bulk_quote_acknowledgement_occurrence_index = 1, number_of_quotes_in_error do
    index, bulk_quote_acknowledgement_occurrence = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement_occurrence.dissect(buffer, index, packet, parent, bulk_quote_acknowledgement_occurrence_index)
  end

  return index
end

-- Dissect: Bulk Quote Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_cancellation_acknowledgement = {}

-- Size: Order Cancellation Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_cancellation_acknowledgement.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.status.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.assigned_price.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.original_order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_6.size

-- Display: Order Cancellation Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_cancellation_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_cancellation_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Order Id: Order ID
  index, order_id = tmx_mx_solaorderentry_sail_v1_21.order_id.dissect(buffer, index, packet, parent)

  -- Status: Status
  index, status = tmx_mx_solaorderentry_sail_v1_21.status.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  -- Assigned Price: Assigned Price
  index, assigned_price = tmx_mx_solaorderentry_sail_v1_21.assigned_price.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  -- Original Order Id: Original Order ID
  index, original_order_id = tmx_mx_solaorderentry_sail_v1_21.original_order_id.dissect(buffer, index, packet, parent)

  -- Filler 6: Numeric (6)
  index, filler_6 = tmx_mx_solaorderentry_sail_v1_21.filler_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_cancellation_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_cancellation_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.order_cancellation_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.order_cancellation_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.order_cancellation_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Standard Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.standard_acknowledgement = {}

-- Size: Standard Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.standard_acknowledgement.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.original_message_type_af_gz_ml_ox_or_rq.size

-- Display: Standard Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.standard_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Standard Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.standard_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Original Message Type Af Gz Ml Ox Or Rq: Message Type
  index, original_message_type_af_gz_ml_ox_or_rq = tmx_mx_solaorderentry_sail_v1_21.original_message_type_af_gz_ml_ox_or_rq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Standard Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.standard_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.standard_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.standard_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.standard_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.standard_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- New Strategy Instrument Acknowledgement Leg Definition Repeating Block
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement_leg_definition_repeating_block = {}

-- Size: New Strategy Instrument Acknowledgement Leg Definition Repeating Block
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement_leg_definition_repeating_block.size =
  tmx_mx_solaorderentry_sail_v1_21.leg_group.size + 
  tmx_mx_solaorderentry_sail_v1_21.leg_instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.leg_verb.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_1.size + 
  tmx_mx_solaorderentry_sail_v1_21.leg_quantity_ratio.size

-- Display: New Strategy Instrument Acknowledgement Leg Definition Repeating Block
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement_leg_definition_repeating_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Strategy Instrument Acknowledgement Leg Definition Repeating Block
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement_leg_definition_repeating_block.fields = function(buffer, offset, packet, parent, new_strategy_instrument_acknowledgement_leg_definition_repeating_block_index)
  local index = offset

  -- Implicit New Strategy Instrument Acknowledgement Leg Definition Repeating Block Index
  if new_strategy_instrument_acknowledgement_leg_definition_repeating_block_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument_acknowledgement_leg_definition_repeating_block_index, new_strategy_instrument_acknowledgement_leg_definition_repeating_block_index)
    iteration:set_generated()
  end

  -- Leg Group: Group ID
  index, leg_group = tmx_mx_solaorderentry_sail_v1_21.leg_group.dissect(buffer, index, packet, parent)

  -- Leg Instrument: Instrument ID
  index, leg_instrument = tmx_mx_solaorderentry_sail_v1_21.leg_instrument.dissect(buffer, index, packet, parent)

  -- Leg Verb: Verb
  index, leg_verb = tmx_mx_solaorderentry_sail_v1_21.leg_verb.dissect(buffer, index, packet, parent)

  -- Filler 1: String (1)
  index, filler_1 = tmx_mx_solaorderentry_sail_v1_21.filler_1.dissect(buffer, index, packet, parent)

  -- Leg Quantity Ratio: Quantity
  index, leg_quantity_ratio = tmx_mx_solaorderentry_sail_v1_21.leg_quantity_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Strategy Instrument Acknowledgement Leg Definition Repeating Block
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement_leg_definition_repeating_block.dissect = function(buffer, offset, packet, parent, new_strategy_instrument_acknowledgement_leg_definition_repeating_block_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument_acknowledgement_leg_definition_repeating_block, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement_leg_definition_repeating_block.fields(buffer, offset, packet, parent, new_strategy_instrument_acknowledgement_leg_definition_repeating_block_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement_leg_definition_repeating_block.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement_leg_definition_repeating_block.fields(buffer, offset, packet, parent, new_strategy_instrument_acknowledgement_leg_definition_repeating_block_index)
  end
end

-- New Strategy Instrument Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement = {}

-- Calculate size of: New Strategy Instrument Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.strategy_group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.strategy_instrument.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.creation_status.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_legs.size

  -- Calculate field size from count
  local new_strategy_instrument_acknowledgement_leg_definition_repeating_block_count = buffer(offset + index - 2, 2):string()
  index = index + new_strategy_instrument_acknowledgement_leg_definition_repeating_block_count * 16

  return index
end

-- Display: New Strategy Instrument Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Strategy Instrument Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Strategy Group: Group ID
  index, strategy_group = tmx_mx_solaorderentry_sail_v1_21.strategy_group.dissect(buffer, index, packet, parent)

  -- Strategy Instrument: Instrument ID
  index, strategy_instrument = tmx_mx_solaorderentry_sail_v1_21.strategy_instrument.dissect(buffer, index, packet, parent)

  -- Creation Status: String (1)
  index, creation_status = tmx_mx_solaorderentry_sail_v1_21.creation_status.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Numeric (2)
  index, number_of_legs = tmx_mx_solaorderentry_sail_v1_21.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: New Strategy Instrument Acknowledgement Leg Definition Repeating Block
  for new_strategy_instrument_acknowledgement_leg_definition_repeating_block_index = 1, number_of_legs do
    index, new_strategy_instrument_acknowledgement_leg_definition_repeating_block = tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement_leg_definition_repeating_block.dissect(buffer, index, packet, parent, new_strategy_instrument_acknowledgement_leg_definition_repeating_block_index)
  end

  return index
end

-- Dissect: New Strategy Instrument Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Order Modification Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_modification_acknowledgement = {}

-- Size: Order Modification Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_modification_acknowledgement.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.status.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.assigned_price.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.original_order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_6.size

-- Display: Order Modification Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_modification_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modification Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_modification_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Order Id: Order ID
  index, order_id = tmx_mx_solaorderentry_sail_v1_21.order_id.dissect(buffer, index, packet, parent)

  -- Status: Status
  index, status = tmx_mx_solaorderentry_sail_v1_21.status.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  -- Assigned Price: Assigned Price
  index, assigned_price = tmx_mx_solaorderentry_sail_v1_21.assigned_price.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  -- Original Order Id: Original Order ID
  index, original_order_id = tmx_mx_solaorderentry_sail_v1_21.original_order_id.dissect(buffer, index, packet, parent)

  -- Filler 6: Numeric (6)
  index, filler_6 = tmx_mx_solaorderentry_sail_v1_21.filler_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modification Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_modification_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_modification_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.order_modification_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.order_modification_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.order_modification_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Global Cancellation Confirmation
tmx_mx_solaorderentry_sail_v1_21.global_cancellation_confirmation = {}

-- Size: Global Cancellation Confirmation
tmx_mx_solaorderentry_sail_v1_21.global_cancellation_confirmation.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_only_q_quotes_only_can_be_returned.size

-- Display: Global Cancellation Confirmation
tmx_mx_solaorderentry_sail_v1_21.global_cancellation_confirmation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Global Cancellation Confirmation
tmx_mx_solaorderentry_sail_v1_21.global_cancellation_confirmation.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Type Of Cancellation Only Q Quotes Only Can Be Returned: CancellationType
  index, type_of_cancellation_only_q_quotes_only_can_be_returned = tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_only_q_quotes_only_can_be_returned.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Global Cancellation Confirmation
tmx_mx_solaorderentry_sail_v1_21.global_cancellation_confirmation.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.global_cancellation_confirmation, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.global_cancellation_confirmation.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.global_cancellation_confirmation.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.global_cancellation_confirmation.fields(buffer, offset, packet, parent)
  end
end

-- Order Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_acknowledgement = {}

-- Size: Order Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_acknowledgement.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.status.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.assigned_price.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.original_order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_6.size

-- Display: Order Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Order Id: Order ID
  index, order_id = tmx_mx_solaorderentry_sail_v1_21.order_id.dissect(buffer, index, packet, parent)

  -- Status: Status
  index, status = tmx_mx_solaorderentry_sail_v1_21.status.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  -- Assigned Price: Assigned Price
  index, assigned_price = tmx_mx_solaorderentry_sail_v1_21.assigned_price.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  -- Original Order Id: Original Order ID
  index, original_order_id = tmx_mx_solaorderentry_sail_v1_21.original_order_id.dissect(buffer, index, packet, parent)

  -- Filler 6: Numeric (6)
  index, filler_6 = tmx_mx_solaorderentry_sail_v1_21.filler_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.order_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.order_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.order_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.order_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Data Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data_acknowledgement = {}

-- Size: Bulk Quote Data Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data_acknowledgement.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.quote_id_identifies_traders_quote_on_this_group.size

-- Display: Bulk Quote Data Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Data Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Quote Id Identifies Traders Quote On This Group: Order ID
  index, quote_id_identifies_traders_quote_on_this_group = tmx_mx_solaorderentry_sail_v1_21.quote_id_identifies_traders_quote_on_this_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Data Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_data_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Error Notice
tmx_mx_solaorderentry_sail_v1_21.error_notice = {}

-- Size: Error Notice
tmx_mx_solaorderentry_sail_v1_21.error_notice.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.error_code.size + 
  tmx_mx_solaorderentry_sail_v1_21.error_description.size

-- Display: Error Notice
tmx_mx_solaorderentry_sail_v1_21.error_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Error Notice
tmx_mx_solaorderentry_sail_v1_21.error_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Error Code: Error Code
  index, error_code = tmx_mx_solaorderentry_sail_v1_21.error_code.dissect(buffer, index, packet, parent)

  -- Error Description: String (100)
  index, error_description = tmx_mx_solaorderentry_sail_v1_21.error_description.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Error Notice
tmx_mx_solaorderentry_sail_v1_21.error_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.error_notice, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.error_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.error_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.error_notice.fields(buffer, offset, packet, parent)
  end
end

-- Order Reply
tmx_mx_solaorderentry_sail_v1_21.order_reply = {}

-- Size: Order Reply
tmx_mx_solaorderentry_sail_v1_21.order_reply.size =
  tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.status.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_remaining.size + 
  tmx_mx_solaorderentry_sail_v1_21.assigned_price.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size

-- Display: Order Reply
tmx_mx_solaorderentry_sail_v1_21.order_reply.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Reply
tmx_mx_solaorderentry_sail_v1_21.order_reply.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outgoing Messages Header: Struct of 4 fields
  index, outgoing_messages_header = tmx_mx_solaorderentry_sail_v1_21.outgoing_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Order Id: Order ID
  index, order_id = tmx_mx_solaorderentry_sail_v1_21.order_id.dissect(buffer, index, packet, parent)

  -- Status: Status
  index, status = tmx_mx_solaorderentry_sail_v1_21.status.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Remaining: Quantity
  index, quantity_remaining = tmx_mx_solaorderentry_sail_v1_21.quantity_remaining.dissect(buffer, index, packet, parent)

  -- Assigned Price: Assigned Price
  index, assigned_price = tmx_mx_solaorderentry_sail_v1_21.assigned_price.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Reply
tmx_mx_solaorderentry_sail_v1_21.order_reply.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_reply, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.order_reply.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.order_reply.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.order_reply.fields(buffer, offset, packet, parent)
  end
end

-- End Of Transmission
tmx_mx_solaorderentry_sail_v1_21.end_of_transmission = {}

-- Size: End Of Transmission
tmx_mx_solaorderentry_sail_v1_21.end_of_transmission.size =
  tmx_mx_solaorderentry_sail_v1_21.ended_session_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes.size + 
  tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss.size

-- Display: End Of Transmission
tmx_mx_solaorderentry_sail_v1_21.end_of_transmission.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmission
tmx_mx_solaorderentry_sail_v1_21.end_of_transmission.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ended Session Id: Session ID
  index, ended_session_id = tmx_mx_solaorderentry_sail_v1_21.ended_session_id.dissect(buffer, index, packet, parent)

  -- Last User Sequence Id Received If No Business Message Has Been Received On This Connection This Field Is Equal To Zeroes: User Sequence ID
  index, last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes = tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received_if_no_business_message_has_been_received_on_this_connection_this_field_is_equal_to_zeroes.dissect(buffer, index, packet, parent)

  -- Trading Engine Timestamp Local Hhmmss: Time
  index, trading_engine_timestamp_local_hhmmss = tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmission
tmx_mx_solaorderentry_sail_v1_21.end_of_transmission.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.end_of_transmission, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.end_of_transmission.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.end_of_transmission.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.end_of_transmission.fields(buffer, offset, packet, parent)
  end
end

-- Disconnection Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.disconnection_acknowledgement = {}

-- Size: Disconnection Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.disconnection_acknowledgement.size =
  tmx_mx_solaorderentry_sail_v1_21.current_session_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received.size

-- Display: Disconnection Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.disconnection_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disconnection Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.disconnection_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Session Id: Session ID
  index, current_session_id = tmx_mx_solaorderentry_sail_v1_21.current_session_id.dissect(buffer, index, packet, parent)

  -- Last User Sequence Id Received: User Sequence ID
  index, last_user_sequence_id_received = tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Disconnection Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.disconnection_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.disconnection_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.disconnection_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.disconnection_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Technical Error Notice
tmx_mx_solaorderentry_sail_v1_21.technical_error_notice = {}

-- Size: Technical Error Notice
tmx_mx_solaorderentry_sail_v1_21.technical_error_notice.size =
  tmx_mx_solaorderentry_sail_v1_21.received_message_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.preceding_user_sequence_id_received_zeroes_if_none.size + 
  tmx_mx_solaorderentry_sail_v1_21.error_code.size + 
  tmx_mx_solaorderentry_sail_v1_21.error_position.size + 
  tmx_mx_solaorderentry_sail_v1_21.error_message.size + 
  tmx_mx_solaorderentry_sail_v1_21.start_of_message_in_error.size

-- Display: Technical Error Notice
tmx_mx_solaorderentry_sail_v1_21.technical_error_notice.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Technical Error Notice
tmx_mx_solaorderentry_sail_v1_21.technical_error_notice.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Received Message Type: Message Type
  index, received_message_type = tmx_mx_solaorderentry_sail_v1_21.received_message_type.dissect(buffer, index, packet, parent)

  -- Preceding User Sequence Id Received Zeroes If None: User Sequence ID
  index, preceding_user_sequence_id_received_zeroes_if_none = tmx_mx_solaorderentry_sail_v1_21.preceding_user_sequence_id_received_zeroes_if_none.dissect(buffer, index, packet, parent)

  -- Error Code: Error Code
  index, error_code = tmx_mx_solaorderentry_sail_v1_21.error_code.dissect(buffer, index, packet, parent)

  -- Error Position: Error Position
  index, error_position = tmx_mx_solaorderentry_sail_v1_21.error_position.dissect(buffer, index, packet, parent)

  -- Error Message: Error Message
  index, error_message = tmx_mx_solaorderentry_sail_v1_21.error_message.dissect(buffer, index, packet, parent)

  -- Start Of Message In Error: String (100)
  index, start_of_message_in_error = tmx_mx_solaorderentry_sail_v1_21.start_of_message_in_error.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Technical Error Notice
tmx_mx_solaorderentry_sail_v1_21.technical_error_notice.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.technical_error_notice, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.technical_error_notice.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.technical_error_notice.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.technical_error_notice.fields(buffer, offset, packet, parent)
  end
end

-- Out Of Sequence
tmx_mx_solaorderentry_sail_v1_21.out_of_sequence = {}

-- Size: Out Of Sequence
tmx_mx_solaorderentry_sail_v1_21.out_of_sequence.size =
  tmx_mx_solaorderentry_sail_v1_21.received_user_sequence_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.expected_last_user_sequence_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss.size

-- Display: Out Of Sequence
tmx_mx_solaorderentry_sail_v1_21.out_of_sequence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Out Of Sequence
tmx_mx_solaorderentry_sail_v1_21.out_of_sequence.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Received User Sequence Id: User Sequence ID
  index, received_user_sequence_id = tmx_mx_solaorderentry_sail_v1_21.received_user_sequence_id.dissect(buffer, index, packet, parent)

  -- Expected Last User Sequence Id: User Sequence ID
  index, expected_last_user_sequence_id = tmx_mx_solaorderentry_sail_v1_21.expected_last_user_sequence_id.dissect(buffer, index, packet, parent)

  -- User Message Timestamp Local Hhmmss: Time
  index, user_message_timestamp_local_hhmmss = tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Out Of Sequence
tmx_mx_solaorderentry_sail_v1_21.out_of_sequence.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.out_of_sequence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.out_of_sequence.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.out_of_sequence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.out_of_sequence.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Question
tmx_mx_solaorderentry_sail_v1_21.heartbeat_question = {}

-- Size: Heartbeat Question
tmx_mx_solaorderentry_sail_v1_21.heartbeat_question.size =
  tmx_mx_solaorderentry_sail_v1_21.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.size + 
  tmx_mx_solaorderentry_sail_v1_21.last_exchange_message_id_sent_to_participant.size + 
  tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss.size

-- Display: Heartbeat Question
tmx_mx_solaorderentry_sail_v1_21.heartbeat_question.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Question
tmx_mx_solaorderentry_sail_v1_21.heartbeat_question.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period: User Sequence ID
  index, user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period = tmx_mx_solaorderentry_sail_v1_21.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.dissect(buffer, index, packet, parent)

  -- Last Exchange Message Id Sent To Participant: Exchange Message ID
  index, last_exchange_message_id_sent_to_participant = tmx_mx_solaorderentry_sail_v1_21.last_exchange_message_id_sent_to_participant.dissect(buffer, index, packet, parent)

  -- Trading Engine Timestamp Local Hhmmss: Time
  index, trading_engine_timestamp_local_hhmmss = tmx_mx_solaorderentry_sail_v1_21.trading_engine_timestamp_local_hhmmss.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Question
tmx_mx_solaorderentry_sail_v1_21.heartbeat_question.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.heartbeat_question, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.heartbeat_question.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.heartbeat_question.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.heartbeat_question.fields(buffer, offset, packet, parent)
  end
end

-- Disconnection Instruction Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_acknowledgement = {}

-- Size: Disconnection Instruction Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_acknowledgement.size =
  tmx_mx_solaorderentry_sail_v1_21.current_session_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received.size

-- Display: Disconnection Instruction Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disconnection Instruction Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Session Id: Session ID
  index, current_session_id = tmx_mx_solaorderentry_sail_v1_21.current_session_id.dissect(buffer, index, packet, parent)

  -- Last User Sequence Id Received: User Sequence ID
  index, last_user_sequence_id_received = tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Disconnection Instruction Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_instruction_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Connection Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.connection_acknowledgement = {}

-- Size: Connection Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.connection_acknowledgement.size =
  tmx_mx_solaorderentry_sail_v1_21.current_session_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received.size

-- Display: Connection Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.connection_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Connection Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.connection_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Session Id: Session ID
  index, current_session_id = tmx_mx_solaorderentry_sail_v1_21.current_session_id.dissect(buffer, index, packet, parent)

  -- Last User Sequence Id Received: User Sequence ID
  index, last_user_sequence_id_received = tmx_mx_solaorderentry_sail_v1_21.last_user_sequence_id_received.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Connection Acknowledgement
tmx_mx_solaorderentry_sail_v1_21.connection_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.connection_acknowledgement, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.connection_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.connection_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.connection_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Message
tmx_mx_solaorderentry_sail_v1_21.exchange_message = {}

-- Dispatch: Exchange Message
tmx_mx_solaorderentry_sail_v1_21.exchange_message.dispatch = {
  ["TK"] = tmx_mx_solaorderentry_sail_v1_21.connection_acknowledgement.dissect,
  ["TM"] = tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_acknowledgement.dissect,
  ["TH"] = tmx_mx_solaorderentry_sail_v1_21.heartbeat_question.dissect,
  ["TO"] = tmx_mx_solaorderentry_sail_v1_21.out_of_sequence.dissect,
  ["TE"] = tmx_mx_solaorderentry_sail_v1_21.technical_error_notice.dissect,
  ["TL"] = tmx_mx_solaorderentry_sail_v1_21.disconnection_acknowledgement.dissect,
  ["TT"] = tmx_mx_solaorderentry_sail_v1_21.end_of_transmission.dissect,
  ["AE"] = tmx_mx_solaorderentry_sail_v1_21.order_reply.dissect,
  ["ER"] = tmx_mx_solaorderentry_sail_v1_21.error_notice.dissect,
  ["KD"] = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data_acknowledgement.dissect,
  ["KE"] = tmx_mx_solaorderentry_sail_v1_21.order_acknowledgement.dissect,
  ["KG"] = tmx_mx_solaorderentry_sail_v1_21.global_cancellation_confirmation.dissect,
  ["KM"] = tmx_mx_solaorderentry_sail_v1_21.order_modification_acknowledgement.dissect,
  ["KN"] = tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_acknowledgement.dissect,
  ["KO"] = tmx_mx_solaorderentry_sail_v1_21.standard_acknowledgement.dissect,
  ["KZ"] = tmx_mx_solaorderentry_sail_v1_21.order_cancellation_acknowledgement.dissect,
  ["LA"] = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_acknowledgement.dissect,
  ["LB"] = tmx_mx_solaorderentry_sail_v1_21.bulk_command_acknowledgement.dissect,
  ["MN"] = tmx_mx_solaorderentry_sail_v1_21.risk_limits_usage.dissect,
  ["NE"] = tmx_mx_solaorderentry_sail_v1_21.excluded_instrument_notice.dissect,
  ["NG"] = tmx_mx_solaorderentry_sail_v1_21.group_state_change.dissect,
  ["NI"] = tmx_mx_solaorderentry_sail_v1_21.instrument_state_change.dissect,
  ["NL"] = tmx_mx_solaorderentry_sail_v1_21.leg_execution_notice.dissect,
  ["NO"] = tmx_mx_solaorderentry_sail_v1_21.overstepped_order_or_quote_notice.dissect,
  ["NP"] = tmx_mx_solaorderentry_sail_v1_21.cancellation_of_all_quotes_notice.dissect,
  ["NT"] = tmx_mx_solaorderentry_sail_v1_21.execution_notice.dissect,
  ["NX"] = tmx_mx_solaorderentry_sail_v1_21.execution_cancellation_notice.dissect,
  ["NY"] = tmx_mx_solaorderentry_sail_v1_21.leg_execution_cancellation_notice.dissect,
  ["NZ"] = tmx_mx_solaorderentry_sail_v1_21.order_cancellation_notice_by_mod_or_system.dissect,
  ["QW"] = tmx_mx_solaorderentry_sail_v1_21.request_for_quote_with_side_acknowledgement.dissect,
}

-- Dissect: Exchange Message
tmx_mx_solaorderentry_sail_v1_21.exchange_message.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = tmx_mx_solaorderentry_sail_v1_21.exchange_message.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Exchange Packet
tmx_mx_solaorderentry_sail_v1_21.exchange_packet = {}

-- Verify required size of Tcp packet
tmx_mx_solaorderentry_sail_v1_21.exchange_packet.requiredsize = function(buffer)
  return buffer:len() >= tmx_mx_solaorderentry_sail_v1_21.message_length.size + tmx_mx_solaorderentry_sail_v1_21.message_type.size
end

-- Dissect Exchange Packet
tmx_mx_solaorderentry_sail_v1_21.exchange_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Length: Endian
  index, message_length = tmx_mx_solaorderentry_sail_v1_21.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: X
  index, message_type = tmx_mx_solaorderentry_sail_v1_21.message_type.dissect(buffer, index, packet, parent)

  -- Exchange Message: Runtime Type with 30 branches
  index = tmx_mx_solaorderentry_sail_v1_21.exchange_message.dissect(buffer, index, packet, parent, message_type)

  -- End Of Text: Binary
  index, end_of_text = tmx_mx_solaorderentry_sail_v1_21.end_of_text.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Alignment Padding
  local alignment_padding = nil

  local alignment_padding_exists = (index % 4 ~= 0)

  if alignment_padding_exists then

    -- Runtime Size Of: Alignment Padding
    local size_of_alignment_padding = ((4 - index % 4) % 4)

    -- Alignment Padding: Binary
    index, alignment_padding = tmx_mx_solaorderentry_sail_v1_21.alignment_padding.dissect(buffer, index, packet, parent, size_of_alignment_padding)
  end

  return index
end

-- Incoming Messages Header
tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header = {}

-- Size: Incoming Messages Header
tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size =
  tmx_mx_solaorderentry_sail_v1_21.user_timestamp_local_hhmmss.size + 
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.user_sequence_id.size

-- Display: Incoming Messages Header
tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incoming Messages Header
tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Timestamp Local Hhmmss: Time
  index, user_timestamp_local_hhmmss = tmx_mx_solaorderentry_sail_v1_21.user_timestamp_local_hhmmss.dissect(buffer, index, packet, parent)

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- User Sequence Id: User Sequence ID
  index, user_sequence_id = tmx_mx_solaorderentry_sail_v1_21.user_sequence_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Incoming Messages Header
tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.incoming_messages_header, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancellation
tmx_mx_solaorderentry_sail_v1_21.order_cancellation = {}

-- Size: Order Cancellation
tmx_mx_solaorderentry_sail_v1_21.order_cancellation.size =
  tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.cancelled_order_id.size

-- Display: Order Cancellation
tmx_mx_solaorderentry_sail_v1_21.order_cancellation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation
tmx_mx_solaorderentry_sail_v1_21.order_cancellation.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Cancelled Order Id: Order ID
  index, cancelled_order_id = tmx_mx_solaorderentry_sail_v1_21.cancelled_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancellation
tmx_mx_solaorderentry_sail_v1_21.order_cancellation.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_cancellation, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.order_cancellation.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.order_cancellation.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.order_cancellation.fields(buffer, offset, packet, parent)
  end
end

-- Request For Quote
tmx_mx_solaorderentry_sail_v1_21.request_for_quote = {}

-- Size: Request For Quote
tmx_mx_solaorderentry_sail_v1_21.request_for_quote.size =
  tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size

-- Display: Request For Quote
tmx_mx_solaorderentry_sail_v1_21.request_for_quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request For Quote
tmx_mx_solaorderentry_sail_v1_21.request_for_quote.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Quote
tmx_mx_solaorderentry_sail_v1_21.request_for_quote.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.request_for_quote, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.request_for_quote.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.request_for_quote.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.request_for_quote.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Participant Bqp Protection Subscription
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_participant_bqp_protection_subscription = {}

-- Size: Bulk Quote Participant Bqp Protection Subscription
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_participant_bqp_protection_subscription.size =
  tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.protection_type_advanced_protection_advanced_protection_disabled.size

-- Display: Bulk Quote Participant Bqp Protection Subscription
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_participant_bqp_protection_subscription.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Participant Bqp Protection Subscription
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_participant_bqp_protection_subscription.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Protection Type Advanced Protection Advanced Protection Disabled: Protection Type
  index, protection_type_advanced_protection_advanced_protection_disabled = tmx_mx_solaorderentry_sail_v1_21.protection_type_advanced_protection_advanced_protection_disabled.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Participant Bqp Protection Subscription
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_participant_bqp_protection_subscription.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_participant_bqp_protection_subscription, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_participant_bqp_protection_subscription.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_participant_bqp_protection_subscription.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_participant_bqp_protection_subscription.fields(buffer, offset, packet, parent)
  end
end

-- Sail Request For Quote With Side
tmx_mx_solaorderentry_sail_v1_21.sail_request_for_quote_with_side = {}

-- Size: Sail Request For Quote With Side
tmx_mx_solaorderentry_sail_v1_21.sail_request_for_quote_with_side.size =
  tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.market_side.size

-- Display: Sail Request For Quote With Side
tmx_mx_solaorderentry_sail_v1_21.sail_request_for_quote_with_side.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sail Request For Quote With Side
tmx_mx_solaorderentry_sail_v1_21.sail_request_for_quote_with_side.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  -- Market Side: MarketSide
  index, market_side = tmx_mx_solaorderentry_sail_v1_21.market_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sail Request For Quote With Side
tmx_mx_solaorderentry_sail_v1_21.sail_request_for_quote_with_side.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.sail_request_for_quote_with_side, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.sail_request_for_quote_with_side.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.sail_request_for_quote_with_side.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.sail_request_for_quote_with_side.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_occurrence = {}

-- Size: Bulk Quote Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.price.size

-- Display: Bulk Quote Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_occurrence.fields = function(buffer, offset, packet, parent, bulk_quote_occurrence_index)
  local index = offset

  -- Implicit Bulk Quote Occurrence Index
  if bulk_quote_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_occurrence_index, bulk_quote_occurrence_index)
    iteration:set_generated()
  end

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Sign Or: Quantity Sign
  index, quantity_sign_or = tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = tmx_mx_solaorderentry_sail_v1_21.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_occurrence.dissect = function(buffer, offset, packet, parent, bulk_quote_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_occurrence.fields(buffer, offset, packet, parent, bulk_quote_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_occurrence.fields(buffer, offset, packet, parent, bulk_quote_occurrence_index)
  end
end

-- Bulk Quote
tmx_mx_solaorderentry_sail_v1_21.bulk_quote = {}

-- Calculate size of: Bulk Quote
tmx_mx_solaorderentry_sail_v1_21.bulk_quote.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.size

  -- Calculate field size from count
  local bulk_quote_occurrence_count = buffer(offset + index - 3, 3):string()
  index = index + bulk_quote_occurrence_count * 26

  return index
end

-- Display: Bulk Quote
tmx_mx_solaorderentry_sail_v1_21.bulk_quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote
tmx_mx_solaorderentry_sail_v1_21.bulk_quote.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Quote Identifier On This Group: Order ID
  index, quote_identifier_on_this_group = tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.dissect(buffer, index, packet, parent)

  -- Number Of Quotes: Numeric (3)
  index, number_of_quotes = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.dissect(buffer, index, packet, parent)

  -- Repeating: Bulk Quote Occurrence
  for bulk_quote_occurrence_index = 1, number_of_quotes do
    index, bulk_quote_occurrence = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_occurrence.dissect(buffer, index, packet, parent, bulk_quote_occurrence_index)
  end

  return index
end

-- Dissect: Bulk Quote
tmx_mx_solaorderentry_sail_v1_21.bulk_quote.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Price 8 Quantity 8 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_8_occurrence = {}

-- Size: Bulk Quote Price 8 Quantity 8 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_8_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_8.size

-- Display: Bulk Quote Price 8 Quantity 8 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_8_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 8 Quantity 8 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_8_occurrence.fields = function(buffer, offset, packet, parent, bulk_quote_price_8_quantity_8_occurrence_index)
  local index = offset

  -- Implicit Bulk Quote Price 8 Quantity 8 Occurrence Index
  if bulk_quote_price_8_quantity_8_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_8_occurrence_index, bulk_quote_price_8_quantity_8_occurrence_index)
    iteration:set_generated()
  end

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Sign Or: Quantity Sign
  index, quantity_sign_or = tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  -- Price 8: Price (8)
  index, price_8 = tmx_mx_solaorderentry_sail_v1_21.price_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Price 8 Quantity 8 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_8_occurrence.dissect = function(buffer, offset, packet, parent, bulk_quote_price_8_quantity_8_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_8_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_8_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_8_quantity_8_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_8_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_8_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_8_quantity_8_occurrence_index)
  end
end

-- Bulk Quote Price 8 Quantity 8
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_8 = {}

-- Calculate size of: Bulk Quote Price 8 Quantity 8
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_8.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.size

  -- Calculate field size from count
  local bulk_quote_price_8_quantity_8_occurrence_count = buffer(offset + index - 3, 3):string()
  index = index + bulk_quote_price_8_quantity_8_occurrence_count * 24

  return index
end

-- Display: Bulk Quote Price 8 Quantity 8
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_8.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 8 Quantity 8
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_8.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Quote Identifier On This Group: Order ID
  index, quote_identifier_on_this_group = tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.dissect(buffer, index, packet, parent)

  -- Number Of Quotes: Numeric (3)
  index, number_of_quotes = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.dissect(buffer, index, packet, parent)

  -- Repeating: Bulk Quote Price 8 Quantity 8 Occurrence
  for bulk_quote_price_8_quantity_8_occurrence_index = 1, number_of_quotes do
    index, bulk_quote_price_8_quantity_8_occurrence = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_8_occurrence.dissect(buffer, index, packet, parent, bulk_quote_price_8_quantity_8_occurrence_index)
  end

  return index
end

-- Dissect: Bulk Quote Price 8 Quantity 8
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_8.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_8, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_8.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_8.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_8.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Price 6 Quantity 8 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_8_occurrence = {}

-- Size: Bulk Quote Price 6 Quantity 8 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_8_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_6.size

-- Display: Bulk Quote Price 6 Quantity 8 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_8_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 6 Quantity 8 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_8_occurrence.fields = function(buffer, offset, packet, parent, bulk_quote_price_6_quantity_8_occurrence_index)
  local index = offset

  -- Implicit Bulk Quote Price 6 Quantity 8 Occurrence Index
  if bulk_quote_price_6_quantity_8_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_8_occurrence_index, bulk_quote_price_6_quantity_8_occurrence_index)
    iteration:set_generated()
  end

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Sign Or: Quantity Sign
  index, quantity_sign_or = tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  -- Price 6: Price (6)
  index, price_6 = tmx_mx_solaorderentry_sail_v1_21.price_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Price 6 Quantity 8 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_8_occurrence.dissect = function(buffer, offset, packet, parent, bulk_quote_price_6_quantity_8_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_8_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_8_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_6_quantity_8_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_8_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_8_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_6_quantity_8_occurrence_index)
  end
end

-- Bulk Quote Price 6 Quantity 8
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_8 = {}

-- Calculate size of: Bulk Quote Price 6 Quantity 8
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_8.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.size

  -- Calculate field size from count
  local bulk_quote_price_6_quantity_8_occurrence_count = buffer(offset + index - 3, 3):string()
  index = index + bulk_quote_price_6_quantity_8_occurrence_count * 22

  return index
end

-- Display: Bulk Quote Price 6 Quantity 8
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_8.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 6 Quantity 8
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_8.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Quote Identifier On This Group: Order ID
  index, quote_identifier_on_this_group = tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.dissect(buffer, index, packet, parent)

  -- Number Of Quotes: Numeric (3)
  index, number_of_quotes = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.dissect(buffer, index, packet, parent)

  -- Repeating: Bulk Quote Price 6 Quantity 8 Occurrence
  for bulk_quote_price_6_quantity_8_occurrence_index = 1, number_of_quotes do
    index, bulk_quote_price_6_quantity_8_occurrence = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_8_occurrence.dissect(buffer, index, packet, parent, bulk_quote_price_6_quantity_8_occurrence_index)
  end

  return index
end

-- Dissect: Bulk Quote Price 6 Quantity 8
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_8.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_8, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_8.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_8.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_8.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Price 4 Quantity 8 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_8_occurrence = {}

-- Size: Bulk Quote Price 4 Quantity 8 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_8_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_4.size

-- Display: Bulk Quote Price 4 Quantity 8 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_8_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 4 Quantity 8 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_8_occurrence.fields = function(buffer, offset, packet, parent, bulk_quote_price_4_quantity_8_occurrence_index)
  local index = offset

  -- Implicit Bulk Quote Price 4 Quantity 8 Occurrence Index
  if bulk_quote_price_4_quantity_8_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_8_occurrence_index, bulk_quote_price_4_quantity_8_occurrence_index)
    iteration:set_generated()
  end

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Sign Or: Quantity Sign
  index, quantity_sign_or = tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  -- Price 4: Price (4)
  index, price_4 = tmx_mx_solaorderentry_sail_v1_21.price_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Price 4 Quantity 8 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_8_occurrence.dissect = function(buffer, offset, packet, parent, bulk_quote_price_4_quantity_8_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_8_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_8_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_4_quantity_8_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_8_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_8_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_4_quantity_8_occurrence_index)
  end
end

-- Bulk Quote Price 4 Quantity 8
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_8 = {}

-- Calculate size of: Bulk Quote Price 4 Quantity 8
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_8.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.size

  -- Calculate field size from count
  local bulk_quote_price_4_quantity_8_occurrence_count = buffer(offset + index - 3, 3):string()
  index = index + bulk_quote_price_4_quantity_8_occurrence_count * 20

  return index
end

-- Display: Bulk Quote Price 4 Quantity 8
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_8.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 4 Quantity 8
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_8.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Quote Identifier On This Group: Order ID
  index, quote_identifier_on_this_group = tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.dissect(buffer, index, packet, parent)

  -- Number Of Quotes: Numeric (3)
  index, number_of_quotes = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.dissect(buffer, index, packet, parent)

  -- Repeating: Bulk Quote Price 4 Quantity 8 Occurrence
  for bulk_quote_price_4_quantity_8_occurrence_index = 1, number_of_quotes do
    index, bulk_quote_price_4_quantity_8_occurrence = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_8_occurrence.dissect(buffer, index, packet, parent, bulk_quote_price_4_quantity_8_occurrence_index)
  end

  return index
end

-- Dissect: Bulk Quote Price 4 Quantity 8
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_8.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_8, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_8.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_8.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_8.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Price 10 Quantity 6 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_6_occurrence = {}

-- Size: Bulk Quote Price 10 Quantity 6 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_6_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_6.size + 
  tmx_mx_solaorderentry_sail_v1_21.price.size

-- Display: Bulk Quote Price 10 Quantity 6 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_6_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 10 Quantity 6 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_6_occurrence.fields = function(buffer, offset, packet, parent, bulk_quote_price_10_quantity_6_occurrence_index)
  local index = offset

  -- Implicit Bulk Quote Price 10 Quantity 6 Occurrence Index
  if bulk_quote_price_10_quantity_6_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_10_quantity_6_occurrence_index, bulk_quote_price_10_quantity_6_occurrence_index)
    iteration:set_generated()
  end

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Sign Or: Quantity Sign
  index, quantity_sign_or = tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.dissect(buffer, index, packet, parent)

  -- Quantity 6: Quantity (6)
  index, quantity_6 = tmx_mx_solaorderentry_sail_v1_21.quantity_6.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = tmx_mx_solaorderentry_sail_v1_21.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Price 10 Quantity 6 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_6_occurrence.dissect = function(buffer, offset, packet, parent, bulk_quote_price_10_quantity_6_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_10_quantity_6_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_6_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_10_quantity_6_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_6_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_6_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_10_quantity_6_occurrence_index)
  end
end

-- Bulk Quote Price 10 Quantity 6
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_6 = {}

-- Calculate size of: Bulk Quote Price 10 Quantity 6
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_6.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.size

  -- Calculate field size from count
  local bulk_quote_price_10_quantity_6_occurrence_count = buffer(offset + index - 3, 3):string()
  index = index + bulk_quote_price_10_quantity_6_occurrence_count * 24

  return index
end

-- Display: Bulk Quote Price 10 Quantity 6
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_6.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 10 Quantity 6
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_6.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Quote Identifier On This Group: Order ID
  index, quote_identifier_on_this_group = tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.dissect(buffer, index, packet, parent)

  -- Number Of Quotes: Numeric (3)
  index, number_of_quotes = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.dissect(buffer, index, packet, parent)

  -- Repeating: Bulk Quote Price 10 Quantity 6 Occurrence
  for bulk_quote_price_10_quantity_6_occurrence_index = 1, number_of_quotes do
    index, bulk_quote_price_10_quantity_6_occurrence = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_6_occurrence.dissect(buffer, index, packet, parent, bulk_quote_price_10_quantity_6_occurrence_index)
  end

  return index
end

-- Dissect: Bulk Quote Price 10 Quantity 6
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_6.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_10_quantity_6, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_6.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_6.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_6.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Price 8 Quantity 6 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_6_occurrence = {}

-- Size: Bulk Quote Price 8 Quantity 6 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_6_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_6.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_8.size

-- Display: Bulk Quote Price 8 Quantity 6 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_6_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 8 Quantity 6 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_6_occurrence.fields = function(buffer, offset, packet, parent, bulk_quote_price_8_quantity_6_occurrence_index)
  local index = offset

  -- Implicit Bulk Quote Price 8 Quantity 6 Occurrence Index
  if bulk_quote_price_8_quantity_6_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_6_occurrence_index, bulk_quote_price_8_quantity_6_occurrence_index)
    iteration:set_generated()
  end

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Sign Or: Quantity Sign
  index, quantity_sign_or = tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.dissect(buffer, index, packet, parent)

  -- Quantity 6: Quantity (6)
  index, quantity_6 = tmx_mx_solaorderentry_sail_v1_21.quantity_6.dissect(buffer, index, packet, parent)

  -- Price 8: Price (8)
  index, price_8 = tmx_mx_solaorderentry_sail_v1_21.price_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Price 8 Quantity 6 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_6_occurrence.dissect = function(buffer, offset, packet, parent, bulk_quote_price_8_quantity_6_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_6_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_6_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_8_quantity_6_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_6_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_6_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_8_quantity_6_occurrence_index)
  end
end

-- Bulk Quote Price 8 Quantity 6
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_6 = {}

-- Calculate size of: Bulk Quote Price 8 Quantity 6
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_6.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.size

  -- Calculate field size from count
  local bulk_quote_price_8_quantity_6_occurrence_count = buffer(offset + index - 3, 3):string()
  index = index + bulk_quote_price_8_quantity_6_occurrence_count * 22

  return index
end

-- Display: Bulk Quote Price 8 Quantity 6
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_6.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 8 Quantity 6
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_6.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Quote Identifier On This Group: Order ID
  index, quote_identifier_on_this_group = tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.dissect(buffer, index, packet, parent)

  -- Number Of Quotes: Numeric (3)
  index, number_of_quotes = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.dissect(buffer, index, packet, parent)

  -- Repeating: Bulk Quote Price 8 Quantity 6 Occurrence
  for bulk_quote_price_8_quantity_6_occurrence_index = 1, number_of_quotes do
    index, bulk_quote_price_8_quantity_6_occurrence = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_6_occurrence.dissect(buffer, index, packet, parent, bulk_quote_price_8_quantity_6_occurrence_index)
  end

  return index
end

-- Dissect: Bulk Quote Price 8 Quantity 6
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_6.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_6, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_6.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_6.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_6.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Price 6 Quantity 6 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_6_occurrence = {}

-- Size: Bulk Quote Price 6 Quantity 6 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_6_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_6.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_6.size

-- Display: Bulk Quote Price 6 Quantity 6 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_6_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 6 Quantity 6 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_6_occurrence.fields = function(buffer, offset, packet, parent, bulk_quote_price_6_quantity_6_occurrence_index)
  local index = offset

  -- Implicit Bulk Quote Price 6 Quantity 6 Occurrence Index
  if bulk_quote_price_6_quantity_6_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_6_occurrence_index, bulk_quote_price_6_quantity_6_occurrence_index)
    iteration:set_generated()
  end

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Sign Or: Quantity Sign
  index, quantity_sign_or = tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.dissect(buffer, index, packet, parent)

  -- Quantity 6: Quantity (6)
  index, quantity_6 = tmx_mx_solaorderentry_sail_v1_21.quantity_6.dissect(buffer, index, packet, parent)

  -- Price 6: Price (6)
  index, price_6 = tmx_mx_solaorderentry_sail_v1_21.price_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Price 6 Quantity 6 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_6_occurrence.dissect = function(buffer, offset, packet, parent, bulk_quote_price_6_quantity_6_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_6_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_6_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_6_quantity_6_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_6_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_6_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_6_quantity_6_occurrence_index)
  end
end

-- Bulk Quote Price 6 Quantity 6
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_6 = {}

-- Calculate size of: Bulk Quote Price 6 Quantity 6
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_6.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.size

  -- Calculate field size from count
  local bulk_quote_price_6_quantity_6_occurrence_count = buffer(offset + index - 3, 3):string()
  index = index + bulk_quote_price_6_quantity_6_occurrence_count * 20

  return index
end

-- Display: Bulk Quote Price 6 Quantity 6
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_6.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 6 Quantity 6
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_6.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Quote Identifier On This Group: Order ID
  index, quote_identifier_on_this_group = tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.dissect(buffer, index, packet, parent)

  -- Number Of Quotes: Numeric (3)
  index, number_of_quotes = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.dissect(buffer, index, packet, parent)

  -- Repeating: Bulk Quote Price 6 Quantity 6 Occurrence
  for bulk_quote_price_6_quantity_6_occurrence_index = 1, number_of_quotes do
    index, bulk_quote_price_6_quantity_6_occurrence = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_6_occurrence.dissect(buffer, index, packet, parent, bulk_quote_price_6_quantity_6_occurrence_index)
  end

  return index
end

-- Dissect: Bulk Quote Price 6 Quantity 6
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_6.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_6, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_6.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_6.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_6.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Price 4 Quantity 6 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_6_occurrence = {}

-- Size: Bulk Quote Price 4 Quantity 6 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_6_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_6.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_4.size

-- Display: Bulk Quote Price 4 Quantity 6 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_6_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 4 Quantity 6 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_6_occurrence.fields = function(buffer, offset, packet, parent, bulk_quote_price_4_quantity_6_occurrence_index)
  local index = offset

  -- Implicit Bulk Quote Price 4 Quantity 6 Occurrence Index
  if bulk_quote_price_4_quantity_6_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_6_occurrence_index, bulk_quote_price_4_quantity_6_occurrence_index)
    iteration:set_generated()
  end

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Sign Or: Quantity Sign
  index, quantity_sign_or = tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.dissect(buffer, index, packet, parent)

  -- Quantity 6: Quantity (6)
  index, quantity_6 = tmx_mx_solaorderentry_sail_v1_21.quantity_6.dissect(buffer, index, packet, parent)

  -- Price 4: Price (4)
  index, price_4 = tmx_mx_solaorderentry_sail_v1_21.price_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Price 4 Quantity 6 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_6_occurrence.dissect = function(buffer, offset, packet, parent, bulk_quote_price_4_quantity_6_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_6_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_6_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_4_quantity_6_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_6_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_6_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_4_quantity_6_occurrence_index)
  end
end

-- Bulk Quote Price 4 Quantity 6
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_6 = {}

-- Calculate size of: Bulk Quote Price 4 Quantity 6
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_6.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.size

  -- Calculate field size from count
  local bulk_quote_price_4_quantity_6_occurrence_count = buffer(offset + index - 3, 3):string()
  index = index + bulk_quote_price_4_quantity_6_occurrence_count * 18

  return index
end

-- Display: Bulk Quote Price 4 Quantity 6
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_6.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 4 Quantity 6
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_6.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Quote Identifier On This Group: Order ID
  index, quote_identifier_on_this_group = tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.dissect(buffer, index, packet, parent)

  -- Number Of Quotes: Numeric (3)
  index, number_of_quotes = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.dissect(buffer, index, packet, parent)

  -- Repeating: Bulk Quote Price 4 Quantity 6 Occurrence
  for bulk_quote_price_4_quantity_6_occurrence_index = 1, number_of_quotes do
    index, bulk_quote_price_4_quantity_6_occurrence = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_6_occurrence.dissect(buffer, index, packet, parent, bulk_quote_price_4_quantity_6_occurrence_index)
  end

  return index
end

-- Dissect: Bulk Quote Price 4 Quantity 6
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_6.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_6, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_6.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_6.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_6.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Price 10 Quantity 4 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_4_occurrence = {}

-- Size: Bulk Quote Price 10 Quantity 4 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_4_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_4.size + 
  tmx_mx_solaorderentry_sail_v1_21.price.size

-- Display: Bulk Quote Price 10 Quantity 4 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_4_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 10 Quantity 4 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_4_occurrence.fields = function(buffer, offset, packet, parent, bulk_quote_price_10_quantity_4_occurrence_index)
  local index = offset

  -- Implicit Bulk Quote Price 10 Quantity 4 Occurrence Index
  if bulk_quote_price_10_quantity_4_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_10_quantity_4_occurrence_index, bulk_quote_price_10_quantity_4_occurrence_index)
    iteration:set_generated()
  end

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Sign Or: Quantity Sign
  index, quantity_sign_or = tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.dissect(buffer, index, packet, parent)

  -- Quantity 4: Quantity (4)
  index, quantity_4 = tmx_mx_solaorderentry_sail_v1_21.quantity_4.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = tmx_mx_solaorderentry_sail_v1_21.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Price 10 Quantity 4 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_4_occurrence.dissect = function(buffer, offset, packet, parent, bulk_quote_price_10_quantity_4_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_10_quantity_4_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_4_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_10_quantity_4_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_4_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_4_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_10_quantity_4_occurrence_index)
  end
end

-- Bulk Quote Price 10 Quantity 4
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_4 = {}

-- Calculate size of: Bulk Quote Price 10 Quantity 4
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_4.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.size

  -- Calculate field size from count
  local bulk_quote_price_10_quantity_4_occurrence_count = buffer(offset + index - 3, 3):string()
  index = index + bulk_quote_price_10_quantity_4_occurrence_count * 22

  return index
end

-- Display: Bulk Quote Price 10 Quantity 4
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_4.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 10 Quantity 4
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_4.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Quote Identifier On This Group: Order ID
  index, quote_identifier_on_this_group = tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.dissect(buffer, index, packet, parent)

  -- Number Of Quotes: Numeric (3)
  index, number_of_quotes = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.dissect(buffer, index, packet, parent)

  -- Repeating: Bulk Quote Price 10 Quantity 4 Occurrence
  for bulk_quote_price_10_quantity_4_occurrence_index = 1, number_of_quotes do
    index, bulk_quote_price_10_quantity_4_occurrence = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_4_occurrence.dissect(buffer, index, packet, parent, bulk_quote_price_10_quantity_4_occurrence_index)
  end

  return index
end

-- Dissect: Bulk Quote Price 10 Quantity 4
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_4.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_10_quantity_4, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_4.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_4.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_4.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Price 8 Quantity 4 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_4_occurrence = {}

-- Size: Bulk Quote Price 8 Quantity 4 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_4_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_4.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_8.size

-- Display: Bulk Quote Price 8 Quantity 4 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_4_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 8 Quantity 4 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_4_occurrence.fields = function(buffer, offset, packet, parent, bulk_quote_price_8_quantity_4_occurrence_index)
  local index = offset

  -- Implicit Bulk Quote Price 8 Quantity 4 Occurrence Index
  if bulk_quote_price_8_quantity_4_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_4_occurrence_index, bulk_quote_price_8_quantity_4_occurrence_index)
    iteration:set_generated()
  end

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Sign Or: Quantity Sign
  index, quantity_sign_or = tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.dissect(buffer, index, packet, parent)

  -- Quantity 4: Quantity (4)
  index, quantity_4 = tmx_mx_solaorderentry_sail_v1_21.quantity_4.dissect(buffer, index, packet, parent)

  -- Price 8: Price (8)
  index, price_8 = tmx_mx_solaorderentry_sail_v1_21.price_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Price 8 Quantity 4 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_4_occurrence.dissect = function(buffer, offset, packet, parent, bulk_quote_price_8_quantity_4_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_4_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_4_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_8_quantity_4_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_4_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_4_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_8_quantity_4_occurrence_index)
  end
end

-- Bulk Quote Price 8 Quantity 4
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_4 = {}

-- Calculate size of: Bulk Quote Price 8 Quantity 4
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_4.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.size

  -- Calculate field size from count
  local bulk_quote_price_8_quantity_4_occurrence_count = buffer(offset + index - 3, 3):string()
  index = index + bulk_quote_price_8_quantity_4_occurrence_count * 20

  return index
end

-- Display: Bulk Quote Price 8 Quantity 4
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_4.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 8 Quantity 4
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_4.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Quote Identifier On This Group: Order ID
  index, quote_identifier_on_this_group = tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.dissect(buffer, index, packet, parent)

  -- Number Of Quotes: Numeric (3)
  index, number_of_quotes = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.dissect(buffer, index, packet, parent)

  -- Repeating: Bulk Quote Price 8 Quantity 4 Occurrence
  for bulk_quote_price_8_quantity_4_occurrence_index = 1, number_of_quotes do
    index, bulk_quote_price_8_quantity_4_occurrence = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_4_occurrence.dissect(buffer, index, packet, parent, bulk_quote_price_8_quantity_4_occurrence_index)
  end

  return index
end

-- Dissect: Bulk Quote Price 8 Quantity 4
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_4.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_4, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_4.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_4.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_4.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Price 6 Quantity 4 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_4_occurrence = {}

-- Size: Bulk Quote Price 6 Quantity 4 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_4_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_4.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_6.size

-- Display: Bulk Quote Price 6 Quantity 4 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_4_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 6 Quantity 4 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_4_occurrence.fields = function(buffer, offset, packet, parent, bulk_quote_price_6_quantity_4_occurrence_index)
  local index = offset

  -- Implicit Bulk Quote Price 6 Quantity 4 Occurrence Index
  if bulk_quote_price_6_quantity_4_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_4_occurrence_index, bulk_quote_price_6_quantity_4_occurrence_index)
    iteration:set_generated()
  end

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Sign Or: Quantity Sign
  index, quantity_sign_or = tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.dissect(buffer, index, packet, parent)

  -- Quantity 4: Quantity (4)
  index, quantity_4 = tmx_mx_solaorderentry_sail_v1_21.quantity_4.dissect(buffer, index, packet, parent)

  -- Price 6: Price (6)
  index, price_6 = tmx_mx_solaorderentry_sail_v1_21.price_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Price 6 Quantity 4 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_4_occurrence.dissect = function(buffer, offset, packet, parent, bulk_quote_price_6_quantity_4_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_4_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_4_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_6_quantity_4_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_4_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_4_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_6_quantity_4_occurrence_index)
  end
end

-- Bulk Quote Price 6 Quantity 4
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_4 = {}

-- Calculate size of: Bulk Quote Price 6 Quantity 4
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_4.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.size

  -- Calculate field size from count
  local bulk_quote_price_6_quantity_4_occurrence_count = buffer(offset + index - 3, 3):string()
  index = index + bulk_quote_price_6_quantity_4_occurrence_count * 18

  return index
end

-- Display: Bulk Quote Price 6 Quantity 4
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_4.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 6 Quantity 4
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_4.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Quote Identifier On This Group: Order ID
  index, quote_identifier_on_this_group = tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.dissect(buffer, index, packet, parent)

  -- Number Of Quotes: Numeric (3)
  index, number_of_quotes = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.dissect(buffer, index, packet, parent)

  -- Repeating: Bulk Quote Price 6 Quantity 4 Occurrence
  for bulk_quote_price_6_quantity_4_occurrence_index = 1, number_of_quotes do
    index, bulk_quote_price_6_quantity_4_occurrence = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_4_occurrence.dissect(buffer, index, packet, parent, bulk_quote_price_6_quantity_4_occurrence_index)
  end

  return index
end

-- Dissect: Bulk Quote Price 6 Quantity 4
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_4.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_4, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_4.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_4.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_4.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Price 4 Quantity 4 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_4_occurrence = {}

-- Size: Bulk Quote Price 4 Quantity 4 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_4_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_4.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_4.size

-- Display: Bulk Quote Price 4 Quantity 4 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_4_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 4 Quantity 4 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_4_occurrence.fields = function(buffer, offset, packet, parent, bulk_quote_price_4_quantity_4_occurrence_index)
  local index = offset

  -- Implicit Bulk Quote Price 4 Quantity 4 Occurrence Index
  if bulk_quote_price_4_quantity_4_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_4_occurrence_index, bulk_quote_price_4_quantity_4_occurrence_index)
    iteration:set_generated()
  end

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Sign Or: Quantity Sign
  index, quantity_sign_or = tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.dissect(buffer, index, packet, parent)

  -- Quantity 4: Quantity (4)
  index, quantity_4 = tmx_mx_solaorderentry_sail_v1_21.quantity_4.dissect(buffer, index, packet, parent)

  -- Price 4: Price (4)
  index, price_4 = tmx_mx_solaorderentry_sail_v1_21.price_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Price 4 Quantity 4 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_4_occurrence.dissect = function(buffer, offset, packet, parent, bulk_quote_price_4_quantity_4_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_4_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_4_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_4_quantity_4_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_4_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_4_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_4_quantity_4_occurrence_index)
  end
end

-- Bulk Quote Price 4 Quantity 4
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_4 = {}

-- Calculate size of: Bulk Quote Price 4 Quantity 4
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_4.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.size

  -- Calculate field size from count
  local bulk_quote_price_4_quantity_4_occurrence_count = buffer(offset + index - 3, 3):string()
  index = index + bulk_quote_price_4_quantity_4_occurrence_count * 16

  return index
end

-- Display: Bulk Quote Price 4 Quantity 4
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_4.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 4 Quantity 4
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_4.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Quote Identifier On This Group: Order ID
  index, quote_identifier_on_this_group = tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.dissect(buffer, index, packet, parent)

  -- Number Of Quotes: Numeric (3)
  index, number_of_quotes = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.dissect(buffer, index, packet, parent)

  -- Repeating: Bulk Quote Price 4 Quantity 4 Occurrence
  for bulk_quote_price_4_quantity_4_occurrence_index = 1, number_of_quotes do
    index, bulk_quote_price_4_quantity_4_occurrence = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_4_occurrence.dissect(buffer, index, packet, parent, bulk_quote_price_4_quantity_4_occurrence_index)
  end

  return index
end

-- Dissect: Bulk Quote Price 4 Quantity 4
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_4.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_4, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_4.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_4.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_4.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Price 10 Quantity 2 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_2_occurrence = {}

-- Size: Bulk Quote Price 10 Quantity 2 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_2_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_2.size + 
  tmx_mx_solaorderentry_sail_v1_21.price.size

-- Display: Bulk Quote Price 10 Quantity 2 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_2_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 10 Quantity 2 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_2_occurrence.fields = function(buffer, offset, packet, parent, bulk_quote_price_10_quantity_2_occurrence_index)
  local index = offset

  -- Implicit Bulk Quote Price 10 Quantity 2 Occurrence Index
  if bulk_quote_price_10_quantity_2_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_10_quantity_2_occurrence_index, bulk_quote_price_10_quantity_2_occurrence_index)
    iteration:set_generated()
  end

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Sign Or: Quantity Sign
  index, quantity_sign_or = tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.dissect(buffer, index, packet, parent)

  -- Quantity 2: Quantity (2)
  index, quantity_2 = tmx_mx_solaorderentry_sail_v1_21.quantity_2.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = tmx_mx_solaorderentry_sail_v1_21.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Price 10 Quantity 2 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_2_occurrence.dissect = function(buffer, offset, packet, parent, bulk_quote_price_10_quantity_2_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_10_quantity_2_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_2_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_10_quantity_2_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_2_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_2_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_10_quantity_2_occurrence_index)
  end
end

-- Bulk Quote Price 10 Quantity 2
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_2 = {}

-- Calculate size of: Bulk Quote Price 10 Quantity 2
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_2.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.size

  -- Calculate field size from count
  local bulk_quote_price_10_quantity_2_occurrence_count = buffer(offset + index - 3, 3):string()
  index = index + bulk_quote_price_10_quantity_2_occurrence_count * 20

  return index
end

-- Display: Bulk Quote Price 10 Quantity 2
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_2.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 10 Quantity 2
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_2.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Quote Identifier On This Group: Order ID
  index, quote_identifier_on_this_group = tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.dissect(buffer, index, packet, parent)

  -- Number Of Quotes: Numeric (3)
  index, number_of_quotes = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.dissect(buffer, index, packet, parent)

  -- Repeating: Bulk Quote Price 10 Quantity 2 Occurrence
  for bulk_quote_price_10_quantity_2_occurrence_index = 1, number_of_quotes do
    index, bulk_quote_price_10_quantity_2_occurrence = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_2_occurrence.dissect(buffer, index, packet, parent, bulk_quote_price_10_quantity_2_occurrence_index)
  end

  return index
end

-- Dissect: Bulk Quote Price 10 Quantity 2
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_2.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_10_quantity_2, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_2.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_2.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_2.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Price 8 Quantity 2 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_2_occurrence = {}

-- Size: Bulk Quote Price 8 Quantity 2 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_2_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_2.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_8.size

-- Display: Bulk Quote Price 8 Quantity 2 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_2_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 8 Quantity 2 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_2_occurrence.fields = function(buffer, offset, packet, parent, bulk_quote_price_8_quantity_2_occurrence_index)
  local index = offset

  -- Implicit Bulk Quote Price 8 Quantity 2 Occurrence Index
  if bulk_quote_price_8_quantity_2_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_2_occurrence_index, bulk_quote_price_8_quantity_2_occurrence_index)
    iteration:set_generated()
  end

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Sign Or: Quantity Sign
  index, quantity_sign_or = tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.dissect(buffer, index, packet, parent)

  -- Quantity 2: Quantity (2)
  index, quantity_2 = tmx_mx_solaorderentry_sail_v1_21.quantity_2.dissect(buffer, index, packet, parent)

  -- Price 8: Price (8)
  index, price_8 = tmx_mx_solaorderentry_sail_v1_21.price_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Price 8 Quantity 2 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_2_occurrence.dissect = function(buffer, offset, packet, parent, bulk_quote_price_8_quantity_2_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_2_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_2_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_8_quantity_2_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_2_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_2_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_8_quantity_2_occurrence_index)
  end
end

-- Bulk Quote Price 8 Quantity 2
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_2 = {}

-- Calculate size of: Bulk Quote Price 8 Quantity 2
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_2.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.size

  -- Calculate field size from count
  local bulk_quote_price_8_quantity_2_occurrence_count = buffer(offset + index - 3, 3):string()
  index = index + bulk_quote_price_8_quantity_2_occurrence_count * 18

  return index
end

-- Display: Bulk Quote Price 8 Quantity 2
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_2.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 8 Quantity 2
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_2.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Quote Identifier On This Group: Order ID
  index, quote_identifier_on_this_group = tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.dissect(buffer, index, packet, parent)

  -- Number Of Quotes: Numeric (3)
  index, number_of_quotes = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.dissect(buffer, index, packet, parent)

  -- Repeating: Bulk Quote Price 8 Quantity 2 Occurrence
  for bulk_quote_price_8_quantity_2_occurrence_index = 1, number_of_quotes do
    index, bulk_quote_price_8_quantity_2_occurrence = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_2_occurrence.dissect(buffer, index, packet, parent, bulk_quote_price_8_quantity_2_occurrence_index)
  end

  return index
end

-- Dissect: Bulk Quote Price 8 Quantity 2
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_2.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_8_quantity_2, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_2.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_2.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_2.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Price 6 Quantity 2 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_2_occurrence = {}

-- Size: Bulk Quote Price 6 Quantity 2 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_2_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_2.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_6.size

-- Display: Bulk Quote Price 6 Quantity 2 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_2_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 6 Quantity 2 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_2_occurrence.fields = function(buffer, offset, packet, parent, bulk_quote_price_6_quantity_2_occurrence_index)
  local index = offset

  -- Implicit Bulk Quote Price 6 Quantity 2 Occurrence Index
  if bulk_quote_price_6_quantity_2_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_2_occurrence_index, bulk_quote_price_6_quantity_2_occurrence_index)
    iteration:set_generated()
  end

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Sign Or: Quantity Sign
  index, quantity_sign_or = tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.dissect(buffer, index, packet, parent)

  -- Quantity 2: Quantity (2)
  index, quantity_2 = tmx_mx_solaorderentry_sail_v1_21.quantity_2.dissect(buffer, index, packet, parent)

  -- Price 6: Price (6)
  index, price_6 = tmx_mx_solaorderentry_sail_v1_21.price_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Price 6 Quantity 2 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_2_occurrence.dissect = function(buffer, offset, packet, parent, bulk_quote_price_6_quantity_2_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_2_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_2_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_6_quantity_2_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_2_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_2_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_6_quantity_2_occurrence_index)
  end
end

-- Bulk Quote Price 6 Quantity 2
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_2 = {}

-- Calculate size of: Bulk Quote Price 6 Quantity 2
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_2.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.size

  -- Calculate field size from count
  local bulk_quote_price_6_quantity_2_occurrence_count = buffer(offset + index - 3, 3):string()
  index = index + bulk_quote_price_6_quantity_2_occurrence_count * 16

  return index
end

-- Display: Bulk Quote Price 6 Quantity 2
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_2.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 6 Quantity 2
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_2.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Quote Identifier On This Group: Order ID
  index, quote_identifier_on_this_group = tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.dissect(buffer, index, packet, parent)

  -- Number Of Quotes: Numeric (3)
  index, number_of_quotes = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.dissect(buffer, index, packet, parent)

  -- Repeating: Bulk Quote Price 6 Quantity 2 Occurrence
  for bulk_quote_price_6_quantity_2_occurrence_index = 1, number_of_quotes do
    index, bulk_quote_price_6_quantity_2_occurrence = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_2_occurrence.dissect(buffer, index, packet, parent, bulk_quote_price_6_quantity_2_occurrence_index)
  end

  return index
end

-- Dissect: Bulk Quote Price 6 Quantity 2
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_2.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_6_quantity_2, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_2.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_2.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_2.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Price 4 Quantity 2 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_2_occurrence = {}

-- Size: Bulk Quote Price 4 Quantity 2 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_2_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_2.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_4.size

-- Display: Bulk Quote Price 4 Quantity 2 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_2_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 4 Quantity 2 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_2_occurrence.fields = function(buffer, offset, packet, parent, bulk_quote_price_4_quantity_2_occurrence_index)
  local index = offset

  -- Implicit Bulk Quote Price 4 Quantity 2 Occurrence Index
  if bulk_quote_price_4_quantity_2_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_2_occurrence_index, bulk_quote_price_4_quantity_2_occurrence_index)
    iteration:set_generated()
  end

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Sign Or: Quantity Sign
  index, quantity_sign_or = tmx_mx_solaorderentry_sail_v1_21.quantity_sign_or.dissect(buffer, index, packet, parent)

  -- Quantity 2: Quantity (2)
  index, quantity_2 = tmx_mx_solaorderentry_sail_v1_21.quantity_2.dissect(buffer, index, packet, parent)

  -- Price 4: Price (4)
  index, price_4 = tmx_mx_solaorderentry_sail_v1_21.price_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Price 4 Quantity 2 Occurrence
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_2_occurrence.dissect = function(buffer, offset, packet, parent, bulk_quote_price_4_quantity_2_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_2_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_2_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_4_quantity_2_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_2_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_2_occurrence.fields(buffer, offset, packet, parent, bulk_quote_price_4_quantity_2_occurrence_index)
  end
end

-- Bulk Quote Price 4 Quantity 2
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_2 = {}

-- Calculate size of: Bulk Quote Price 4 Quantity 2
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_2.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.size

  -- Calculate field size from count
  local bulk_quote_price_4_quantity_2_occurrence_count = buffer(offset + index - 3, 3):string()
  index = index + bulk_quote_price_4_quantity_2_occurrence_count * 14

  return index
end

-- Display: Bulk Quote Price 4 Quantity 2
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_2.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Price 4 Quantity 2
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_2.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Quote Identifier On This Group: Order ID
  index, quote_identifier_on_this_group = tmx_mx_solaorderentry_sail_v1_21.quote_identifier_on_this_group.dissect(buffer, index, packet, parent)

  -- Number Of Quotes: Numeric (3)
  index, number_of_quotes = tmx_mx_solaorderentry_sail_v1_21.number_of_quotes.dissect(buffer, index, packet, parent)

  -- Repeating: Bulk Quote Price 4 Quantity 2 Occurrence
  for bulk_quote_price_4_quantity_2_occurrence_index = 1, number_of_quotes do
    index, bulk_quote_price_4_quantity_2_occurrence = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_2_occurrence.dissect(buffer, index, packet, parent, bulk_quote_price_4_quantity_2_occurrence_index)
  end

  return index
end

-- Dissect: Bulk Quote Price 4 Quantity 2
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_2.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_price_4_quantity_2, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_2.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_2.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_2.fields(buffer, offset, packet, parent)
  end
end

-- Selling Owner Data
tmx_mx_solaorderentry_sail_v1_21.selling_owner_data = {}

-- Size: Selling Owner Data
tmx_mx_solaorderentry_sail_v1_21.selling_owner_data.size =
  tmx_mx_solaorderentry_sail_v1_21.memo.size

-- Display: Selling Owner Data
tmx_mx_solaorderentry_sail_v1_21.selling_owner_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Selling Owner Data
tmx_mx_solaorderentry_sail_v1_21.selling_owner_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Memo: Memo
  index, memo = tmx_mx_solaorderentry_sail_v1_21.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Selling Owner Data
tmx_mx_solaorderentry_sail_v1_21.selling_owner_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.selling_owner_data, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.selling_owner_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.selling_owner_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.selling_owner_data.fields(buffer, offset, packet, parent)
  end
end

-- Buying Owner Data
tmx_mx_solaorderentry_sail_v1_21.buying_owner_data = {}

-- Size: Buying Owner Data
tmx_mx_solaorderentry_sail_v1_21.buying_owner_data.size =
  tmx_mx_solaorderentry_sail_v1_21.memo.size

-- Display: Buying Owner Data
tmx_mx_solaorderentry_sail_v1_21.buying_owner_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Buying Owner Data
tmx_mx_solaorderentry_sail_v1_21.buying_owner_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Memo: Memo
  index, memo = tmx_mx_solaorderentry_sail_v1_21.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Buying Owner Data
tmx_mx_solaorderentry_sail_v1_21.buying_owner_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.buying_owner_data, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.buying_owner_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.buying_owner_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.buying_owner_data.fields(buffer, offset, packet, parent)
  end
end

-- Selling Clearing Data
tmx_mx_solaorderentry_sail_v1_21.selling_clearing_data = {}

-- Size: Selling Clearing Data
tmx_mx_solaorderentry_sail_v1_21.selling_clearing_data.size =
  tmx_mx_solaorderentry_sail_v1_21.clearing_instruction.size + 
  tmx_mx_solaorderentry_sail_v1_21.account_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.open_close.size + 
  tmx_mx_solaorderentry_sail_v1_21.hedge_spec.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_5.size

-- Display: Selling Clearing Data
tmx_mx_solaorderentry_sail_v1_21.selling_clearing_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Selling Clearing Data
tmx_mx_solaorderentry_sail_v1_21.selling_clearing_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Instruction: Clearing Instruction
  index, clearing_instruction = tmx_mx_solaorderentry_sail_v1_21.clearing_instruction.dissect(buffer, index, packet, parent)

  -- Account Type: AccountType
  index, account_type = tmx_mx_solaorderentry_sail_v1_21.account_type.dissect(buffer, index, packet, parent)

  -- Open Close: Open/Close
  index, open_close = tmx_mx_solaorderentry_sail_v1_21.open_close.dissect(buffer, index, packet, parent)

  -- Hedge Spec: Hedge/Spec
  index, hedge_spec = tmx_mx_solaorderentry_sail_v1_21.hedge_spec.dissect(buffer, index, packet, parent)

  -- Filler 5: String (5)
  index, filler_5 = tmx_mx_solaorderentry_sail_v1_21.filler_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Selling Clearing Data
tmx_mx_solaorderentry_sail_v1_21.selling_clearing_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.selling_clearing_data, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.selling_clearing_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.selling_clearing_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.selling_clearing_data.fields(buffer, offset, packet, parent)
  end
end

-- Buying Clearing Data
tmx_mx_solaorderentry_sail_v1_21.buying_clearing_data = {}

-- Size: Buying Clearing Data
tmx_mx_solaorderentry_sail_v1_21.buying_clearing_data.size =
  tmx_mx_solaorderentry_sail_v1_21.clearing_instruction.size + 
  tmx_mx_solaorderentry_sail_v1_21.account_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.open_close.size + 
  tmx_mx_solaorderentry_sail_v1_21.hedge_spec.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_5.size

-- Display: Buying Clearing Data
tmx_mx_solaorderentry_sail_v1_21.buying_clearing_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Buying Clearing Data
tmx_mx_solaorderentry_sail_v1_21.buying_clearing_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Instruction: Clearing Instruction
  index, clearing_instruction = tmx_mx_solaorderentry_sail_v1_21.clearing_instruction.dissect(buffer, index, packet, parent)

  -- Account Type: AccountType
  index, account_type = tmx_mx_solaorderentry_sail_v1_21.account_type.dissect(buffer, index, packet, parent)

  -- Open Close: Open/Close
  index, open_close = tmx_mx_solaorderentry_sail_v1_21.open_close.dissect(buffer, index, packet, parent)

  -- Hedge Spec: Hedge/Spec
  index, hedge_spec = tmx_mx_solaorderentry_sail_v1_21.hedge_spec.dissect(buffer, index, packet, parent)

  -- Filler 5: String (5)
  index, filler_5 = tmx_mx_solaorderentry_sail_v1_21.filler_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Buying Clearing Data
tmx_mx_solaorderentry_sail_v1_21.buying_clearing_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.buying_clearing_data, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.buying_clearing_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.buying_clearing_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.buying_clearing_data.fields(buffer, offset, packet, parent)
  end
end

-- Cross Entry
tmx_mx_solaorderentry_sail_v1_21.cross_entry = {}

-- Size: Cross Entry
tmx_mx_solaorderentry_sail_v1_21.cross_entry.size =
  tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_1.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.price.size + 
  tmx_mx_solaorderentry_sail_v1_21.buying_clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.selling_clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.buying_owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.selling_owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_20.size

-- Display: Cross Entry
tmx_mx_solaorderentry_sail_v1_21.cross_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Entry
tmx_mx_solaorderentry_sail_v1_21.cross_entry.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Filler 1: String (1)
  index, filler_1 = tmx_mx_solaorderentry_sail_v1_21.filler_1.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = tmx_mx_solaorderentry_sail_v1_21.price.dissect(buffer, index, packet, parent)

  -- Buying Clearing Data: Struct of 5 fields
  index, buying_clearing_data = tmx_mx_solaorderentry_sail_v1_21.buying_clearing_data.dissect(buffer, index, packet, parent)

  -- Selling Clearing Data: Struct of 5 fields
  index, selling_clearing_data = tmx_mx_solaorderentry_sail_v1_21.selling_clearing_data.dissect(buffer, index, packet, parent)

  -- Buying Owner Data: Struct of 1 fields
  index, buying_owner_data = tmx_mx_solaorderentry_sail_v1_21.buying_owner_data.dissect(buffer, index, packet, parent)

  -- Selling Owner Data: Struct of 1 fields
  index, selling_owner_data = tmx_mx_solaorderentry_sail_v1_21.selling_owner_data.dissect(buffer, index, packet, parent)

  -- Filler 20: String (20)
  index, filler_20 = tmx_mx_solaorderentry_sail_v1_21.filler_20.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Entry
tmx_mx_solaorderentry_sail_v1_21.cross_entry.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.cross_entry, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.cross_entry.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.cross_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.cross_entry.fields(buffer, offset, packet, parent)
  end
end

-- New Strategy Instrument Leg Definition Repeating Block
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_leg_definition_repeating_block = {}

-- Size: New Strategy Instrument Leg Definition Repeating Block
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_leg_definition_repeating_block.size =
  tmx_mx_solaorderentry_sail_v1_21.leg_group.size + 
  tmx_mx_solaorderentry_sail_v1_21.leg_instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.leg_verb.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_1.size + 
  tmx_mx_solaorderentry_sail_v1_21.leg_quantity_ratio.size

-- Display: New Strategy Instrument Leg Definition Repeating Block
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_leg_definition_repeating_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Strategy Instrument Leg Definition Repeating Block
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_leg_definition_repeating_block.fields = function(buffer, offset, packet, parent, new_strategy_instrument_leg_definition_repeating_block_index)
  local index = offset

  -- Implicit New Strategy Instrument Leg Definition Repeating Block Index
  if new_strategy_instrument_leg_definition_repeating_block_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument_leg_definition_repeating_block_index, new_strategy_instrument_leg_definition_repeating_block_index)
    iteration:set_generated()
  end

  -- Leg Group: Group ID
  index, leg_group = tmx_mx_solaorderentry_sail_v1_21.leg_group.dissect(buffer, index, packet, parent)

  -- Leg Instrument: Instrument ID
  index, leg_instrument = tmx_mx_solaorderentry_sail_v1_21.leg_instrument.dissect(buffer, index, packet, parent)

  -- Leg Verb: Verb
  index, leg_verb = tmx_mx_solaorderentry_sail_v1_21.leg_verb.dissect(buffer, index, packet, parent)

  -- Filler 1: String (1)
  index, filler_1 = tmx_mx_solaorderentry_sail_v1_21.filler_1.dissect(buffer, index, packet, parent)

  -- Leg Quantity Ratio: Quantity
  index, leg_quantity_ratio = tmx_mx_solaorderentry_sail_v1_21.leg_quantity_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Strategy Instrument Leg Definition Repeating Block
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_leg_definition_repeating_block.dissect = function(buffer, offset, packet, parent, new_strategy_instrument_leg_definition_repeating_block_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument_leg_definition_repeating_block, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_leg_definition_repeating_block.fields(buffer, offset, packet, parent, new_strategy_instrument_leg_definition_repeating_block_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_leg_definition_repeating_block.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_leg_definition_repeating_block.fields(buffer, offset, packet, parent, new_strategy_instrument_leg_definition_repeating_block_index)
  end
end

-- New Strategy Instrument
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument = {}

-- Calculate size of: New Strategy Instrument
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_legs.size

  -- Calculate field size from count
  local new_strategy_instrument_leg_definition_repeating_block_count = buffer(offset + index - 2, 2):string()
  index = index + new_strategy_instrument_leg_definition_repeating_block_count * 16

  return index
end

-- Display: New Strategy Instrument
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Strategy Instrument
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Numeric (2)
  index, number_of_legs = tmx_mx_solaorderentry_sail_v1_21.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: New Strategy Instrument Leg Definition Repeating Block
  for new_strategy_instrument_leg_definition_repeating_block_index = 1, number_of_legs do
    index, new_strategy_instrument_leg_definition_repeating_block = tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument_leg_definition_repeating_block.dissect(buffer, index, packet, parent, new_strategy_instrument_leg_definition_repeating_block_index)
  end

  return index
end

-- Dissect: New Strategy Instrument
tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.new_strategy_instrument, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument.fields(buffer, offset, packet, parent)
  end
end

-- Order Modification
tmx_mx_solaorderentry_sail_v1_21.order_modification = {}

-- Size: Order Modification
tmx_mx_solaorderentry_sail_v1_21.order_modification.size =
  tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_sign.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.price.size + 
  tmx_mx_solaorderentry_sail_v1_21.special_price_term.size + 
  tmx_mx_solaorderentry_sail_v1_21.additional_price.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_term.size + 
  tmx_mx_solaorderentry_sail_v1_21.additional_quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.duration_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.gtd_date.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_4.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_1.size + 
  tmx_mx_solaorderentry_sail_v1_21.modified_order_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.anti_wash_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.anti_wash_instruction.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_20.size

-- Display: Order Modification
tmx_mx_solaorderentry_sail_v1_21.order_modification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modification
tmx_mx_solaorderentry_sail_v1_21.order_modification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Price Type: Price Type
  index, price_type = tmx_mx_solaorderentry_sail_v1_21.price_type.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity Sign: Quantity Sign
  index, quantity_sign = tmx_mx_solaorderentry_sail_v1_21.quantity_sign.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = tmx_mx_solaorderentry_sail_v1_21.price.dissect(buffer, index, packet, parent)

  -- Special Price Term: Special Price Term
  index, special_price_term = tmx_mx_solaorderentry_sail_v1_21.special_price_term.dissect(buffer, index, packet, parent)

  -- Additional Price: Additional Price
  index, additional_price = tmx_mx_solaorderentry_sail_v1_21.additional_price.dissect(buffer, index, packet, parent)

  -- Quantity Term: Quantity Term
  index, quantity_term = tmx_mx_solaorderentry_sail_v1_21.quantity_term.dissect(buffer, index, packet, parent)

  -- Additional Quantity: Additional Quantity
  index, additional_quantity = tmx_mx_solaorderentry_sail_v1_21.additional_quantity.dissect(buffer, index, packet, parent)

  -- Duration Type: Duration Type
  index, duration_type = tmx_mx_solaorderentry_sail_v1_21.duration_type.dissect(buffer, index, packet, parent)

  -- Gtd Date: Date
  index, gtd_date = tmx_mx_solaorderentry_sail_v1_21.gtd_date.dissect(buffer, index, packet, parent)

  -- Filler 4: String (4)
  index, filler_4 = tmx_mx_solaorderentry_sail_v1_21.filler_4.dissect(buffer, index, packet, parent)

  -- Filler 1: String (1)
  index, filler_1 = tmx_mx_solaorderentry_sail_v1_21.filler_1.dissect(buffer, index, packet, parent)

  -- Modified Order Id: Order ID
  index, modified_order_id = tmx_mx_solaorderentry_sail_v1_21.modified_order_id.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  -- Anti Wash Id: AntiWashId
  index, anti_wash_id = tmx_mx_solaorderentry_sail_v1_21.anti_wash_id.dissect(buffer, index, packet, parent)

  -- Anti Wash Instruction: AntiWashInstruction
  index, anti_wash_instruction = tmx_mx_solaorderentry_sail_v1_21.anti_wash_instruction.dissect(buffer, index, packet, parent)

  -- Filler 20: String (20)
  index, filler_20 = tmx_mx_solaorderentry_sail_v1_21.filler_20.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modification
tmx_mx_solaorderentry_sail_v1_21.order_modification.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_modification, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.order_modification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.order_modification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.order_modification.fields(buffer, offset, packet, parent)
  end
end

-- Order Entry
tmx_mx_solaorderentry_sail_v1_21.order_entry = {}

-- Size: Order Entry
tmx_mx_solaorderentry_sail_v1_21.order_entry.size =
  tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument.size + 
  tmx_mx_solaorderentry_sail_v1_21.price_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.verb_side.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.price.size + 
  tmx_mx_solaorderentry_sail_v1_21.special_price_term.size + 
  tmx_mx_solaorderentry_sail_v1_21.additional_price.size + 
  tmx_mx_solaorderentry_sail_v1_21.quantity_term.size + 
  tmx_mx_solaorderentry_sail_v1_21.additional_quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.duration_type.size + 
  tmx_mx_solaorderentry_sail_v1_21.gtd_date.size + 
  tmx_mx_solaorderentry_sail_v1_21.executing_participant.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_1.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.anti_wash_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.anti_wash_instruction.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_20.size

-- Display: Order Entry
tmx_mx_solaorderentry_sail_v1_21.order_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Entry
tmx_mx_solaorderentry_sail_v1_21.order_entry.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Instrument: Instrument ID
  index, instrument = tmx_mx_solaorderentry_sail_v1_21.instrument.dissect(buffer, index, packet, parent)

  -- Price Type: Price Type
  index, price_type = tmx_mx_solaorderentry_sail_v1_21.price_type.dissect(buffer, index, packet, parent)

  -- Verb Side: Verb
  index, verb_side = tmx_mx_solaorderentry_sail_v1_21.verb_side.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = tmx_mx_solaorderentry_sail_v1_21.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = tmx_mx_solaorderentry_sail_v1_21.price.dissect(buffer, index, packet, parent)

  -- Special Price Term: Special Price Term
  index, special_price_term = tmx_mx_solaorderentry_sail_v1_21.special_price_term.dissect(buffer, index, packet, parent)

  -- Additional Price: Additional Price
  index, additional_price = tmx_mx_solaorderentry_sail_v1_21.additional_price.dissect(buffer, index, packet, parent)

  -- Quantity Term: Quantity Term
  index, quantity_term = tmx_mx_solaorderentry_sail_v1_21.quantity_term.dissect(buffer, index, packet, parent)

  -- Additional Quantity: Additional Quantity
  index, additional_quantity = tmx_mx_solaorderentry_sail_v1_21.additional_quantity.dissect(buffer, index, packet, parent)

  -- Duration Type: Duration Type
  index, duration_type = tmx_mx_solaorderentry_sail_v1_21.duration_type.dissect(buffer, index, packet, parent)

  -- Gtd Date: Date
  index, gtd_date = tmx_mx_solaorderentry_sail_v1_21.gtd_date.dissect(buffer, index, packet, parent)

  -- Executing Participant: Firm ID
  index, executing_participant = tmx_mx_solaorderentry_sail_v1_21.executing_participant.dissect(buffer, index, packet, parent)

  -- Filler 1: String (1)
  index, filler_1 = tmx_mx_solaorderentry_sail_v1_21.filler_1.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  -- Anti Wash Id: AntiWashId
  index, anti_wash_id = tmx_mx_solaorderentry_sail_v1_21.anti_wash_id.dissect(buffer, index, packet, parent)

  -- Anti Wash Instruction: AntiWashInstruction
  index, anti_wash_instruction = tmx_mx_solaorderentry_sail_v1_21.anti_wash_instruction.dissect(buffer, index, packet, parent)

  -- Filler 20: String (20)
  index, filler_20 = tmx_mx_solaorderentry_sail_v1_21.filler_20.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Entry
tmx_mx_solaorderentry_sail_v1_21.order_entry.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_entry, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.order_entry.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.order_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.order_entry.fields(buffer, offset, packet, parent)
  end
end

-- Set Global Risk Limits
tmx_mx_solaorderentry_sail_v1_21.set_global_risk_limits = {}

-- Size: Set Global Risk Limits
tmx_mx_solaorderentry_sail_v1_21.set_global_risk_limits.size =
  tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_net_position_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_long_position_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_short_position_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_maximum_order_quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_net_position_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_long_position_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.default_short_position_limit.size

-- Display: Set Global Risk Limits
tmx_mx_solaorderentry_sail_v1_21.set_global_risk_limits.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Set Global Risk Limits
tmx_mx_solaorderentry_sail_v1_21.set_global_risk_limits.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Global Net Exposure Action: Risk Action
  index, global_net_exposure_action = tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_action.dissect(buffer, index, packet, parent)

  -- Default Net Exposure Action: Risk Action
  index, default_net_exposure_action = tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_action.dissect(buffer, index, packet, parent)

  -- Default Long Exposure Action: Risk Action
  index, default_long_exposure_action = tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_action.dissect(buffer, index, packet, parent)

  -- Default Short Exposure Action: Risk Action
  index, default_short_exposure_action = tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_action.dissect(buffer, index, packet, parent)

  -- Default Net Position Action: Risk Action
  index, default_net_position_action = tmx_mx_solaorderentry_sail_v1_21.default_net_position_action.dissect(buffer, index, packet, parent)

  -- Default Long Position Action: Risk Action
  index, default_long_position_action = tmx_mx_solaorderentry_sail_v1_21.default_long_position_action.dissect(buffer, index, packet, parent)

  -- Default Short Position Action: Risk Action
  index, default_short_position_action = tmx_mx_solaorderentry_sail_v1_21.default_short_position_action.dissect(buffer, index, packet, parent)

  -- Global Net Exposure Limit: Price
  index, global_net_exposure_limit = tmx_mx_solaorderentry_sail_v1_21.global_net_exposure_limit.dissect(buffer, index, packet, parent)

  -- Default Maximum Order Quantity: Quantity
  index, default_maximum_order_quantity = tmx_mx_solaorderentry_sail_v1_21.default_maximum_order_quantity.dissect(buffer, index, packet, parent)

  -- Default Net Exposure Limit: Price
  index, default_net_exposure_limit = tmx_mx_solaorderentry_sail_v1_21.default_net_exposure_limit.dissect(buffer, index, packet, parent)

  -- Default Long Exposure Limit: Price
  index, default_long_exposure_limit = tmx_mx_solaorderentry_sail_v1_21.default_long_exposure_limit.dissect(buffer, index, packet, parent)

  -- Default Short Exposure Limit: Price
  index, default_short_exposure_limit = tmx_mx_solaorderentry_sail_v1_21.default_short_exposure_limit.dissect(buffer, index, packet, parent)

  -- Default Net Position Limit: Quantity
  index, default_net_position_limit = tmx_mx_solaorderentry_sail_v1_21.default_net_position_limit.dissect(buffer, index, packet, parent)

  -- Default Long Position Limit: Quantity
  index, default_long_position_limit = tmx_mx_solaorderentry_sail_v1_21.default_long_position_limit.dissect(buffer, index, packet, parent)

  -- Default Short Position Limit: Quantity
  index, default_short_position_limit = tmx_mx_solaorderentry_sail_v1_21.default_short_position_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Set Global Risk Limits
tmx_mx_solaorderentry_sail_v1_21.set_global_risk_limits.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.set_global_risk_limits, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.set_global_risk_limits.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.set_global_risk_limits.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.set_global_risk_limits.fields(buffer, offset, packet, parent)
  end
end

-- Set Group Risk Limits Occurrence
tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits_occurrence = {}

-- Size: Set Group Risk Limits Occurrence
tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.trader.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.net_exposure_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.long_exposure_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.short_exposure_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.net_position_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.long_position_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.short_position_action.size + 
  tmx_mx_solaorderentry_sail_v1_21.maximum_order_quantity.size + 
  tmx_mx_solaorderentry_sail_v1_21.net_position_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.long_position_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.short_position_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.net_exposure_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.long_exposure_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.short_exposure_limit.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_2.size

-- Display: Set Group Risk Limits Occurrence
tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Set Group Risk Limits Occurrence
tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits_occurrence.fields = function(buffer, offset, packet, parent, set_group_risk_limits_occurrence_index)
  local index = offset

  -- Implicit Set Group Risk Limits Occurrence Index
  if set_group_risk_limits_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.set_group_risk_limits_occurrence_index, set_group_risk_limits_occurrence_index)
    iteration:set_generated()
  end

  -- Trader: Short Trader ID
  index, trader = tmx_mx_solaorderentry_sail_v1_21.trader.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Net Exposure Action: Risk Action
  index, net_exposure_action = tmx_mx_solaorderentry_sail_v1_21.net_exposure_action.dissect(buffer, index, packet, parent)

  -- Long Exposure Action: Risk Action
  index, long_exposure_action = tmx_mx_solaorderentry_sail_v1_21.long_exposure_action.dissect(buffer, index, packet, parent)

  -- Short Exposure Action: Risk Action
  index, short_exposure_action = tmx_mx_solaorderentry_sail_v1_21.short_exposure_action.dissect(buffer, index, packet, parent)

  -- Net Position Action: Risk Action
  index, net_position_action = tmx_mx_solaorderentry_sail_v1_21.net_position_action.dissect(buffer, index, packet, parent)

  -- Long Position Action: Risk Action
  index, long_position_action = tmx_mx_solaorderentry_sail_v1_21.long_position_action.dissect(buffer, index, packet, parent)

  -- Short Position Action: Risk Action
  index, short_position_action = tmx_mx_solaorderentry_sail_v1_21.short_position_action.dissect(buffer, index, packet, parent)

  -- Maximum Order Quantity: Quantity
  index, maximum_order_quantity = tmx_mx_solaorderentry_sail_v1_21.maximum_order_quantity.dissect(buffer, index, packet, parent)

  -- Net Position Limit: Quantity
  index, net_position_limit = tmx_mx_solaorderentry_sail_v1_21.net_position_limit.dissect(buffer, index, packet, parent)

  -- Long Position Limit: Quantity
  index, long_position_limit = tmx_mx_solaorderentry_sail_v1_21.long_position_limit.dissect(buffer, index, packet, parent)

  -- Short Position Limit: Quantity
  index, short_position_limit = tmx_mx_solaorderentry_sail_v1_21.short_position_limit.dissect(buffer, index, packet, parent)

  -- Net Exposure Limit: Price
  index, net_exposure_limit = tmx_mx_solaorderentry_sail_v1_21.net_exposure_limit.dissect(buffer, index, packet, parent)

  -- Long Exposure Limit: Price
  index, long_exposure_limit = tmx_mx_solaorderentry_sail_v1_21.long_exposure_limit.dissect(buffer, index, packet, parent)

  -- Short Exposure Limit: Price
  index, short_exposure_limit = tmx_mx_solaorderentry_sail_v1_21.short_exposure_limit.dissect(buffer, index, packet, parent)

  -- Filler 2: String (2)
  index, filler_2 = tmx_mx_solaorderentry_sail_v1_21.filler_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Set Group Risk Limits Occurrence
tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits_occurrence.dissect = function(buffer, offset, packet, parent, set_group_risk_limits_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.set_group_risk_limits_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits_occurrence.fields(buffer, offset, packet, parent, set_group_risk_limits_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits_occurrence.fields(buffer, offset, packet, parent, set_group_risk_limits_occurrence_index)
  end
end

-- Set Group Risk Limits
tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits = {}

-- Calculate size of: Set Group Risk Limits
tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.reset_all_groups.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_group_limits.size

  -- Calculate field size from count
  local set_group_risk_limits_occurrence_count = buffer(offset + index - 3, 3):string()
  index = index + set_group_risk_limits_occurrence_count * 76

  return index
end

-- Display: Set Group Risk Limits
tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Set Group Risk Limits
tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Reset All Groups: Flag
  index, reset_all_groups = tmx_mx_solaorderentry_sail_v1_21.reset_all_groups.dissect(buffer, index, packet, parent)

  -- Number Of Group Limits: Numeric (3)
  index, number_of_group_limits = tmx_mx_solaorderentry_sail_v1_21.number_of_group_limits.dissect(buffer, index, packet, parent)

  -- Repeating: Set Group Risk Limits Occurrence
  for set_group_risk_limits_occurrence_index = 1, number_of_group_limits do
    index, set_group_risk_limits_occurrence = tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits_occurrence.dissect(buffer, index, packet, parent, set_group_risk_limits_occurrence_index)
  end

  return index
end

-- Dissect: Set Group Risk Limits
tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.set_group_risk_limits, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits.fields(buffer, offset, packet, parent)
  end
end

-- User Global Cancellation
tmx_mx_solaorderentry_sail_v1_21.user_global_cancellation = {}

-- Size: User Global Cancellation
tmx_mx_solaorderentry_sail_v1_21.user_global_cancellation.size =
  tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group_filter.size + 
  tmx_mx_solaorderentry_sail_v1_21.instrument_filter.size + 
  tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation.size + 
  tmx_mx_solaorderentry_sail_v1_21.account_type_filter.size

-- Display: User Global Cancellation
tmx_mx_solaorderentry_sail_v1_21.user_global_cancellation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Global Cancellation
tmx_mx_solaorderentry_sail_v1_21.user_global_cancellation.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group Filter: Group ID
  index, group_filter = tmx_mx_solaorderentry_sail_v1_21.group_filter.dissect(buffer, index, packet, parent)

  -- Instrument Filter: Instrument ID
  index, instrument_filter = tmx_mx_solaorderentry_sail_v1_21.instrument_filter.dissect(buffer, index, packet, parent)

  -- Type Of Cancellation: CancellationType
  index, type_of_cancellation = tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation.dissect(buffer, index, packet, parent)

  -- Account Type Filter: AccountType List
  index, account_type_filter = tmx_mx_solaorderentry_sail_v1_21.account_type_filter.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Global Cancellation
tmx_mx_solaorderentry_sail_v1_21.user_global_cancellation.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_global_cancellation, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.user_global_cancellation.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.user_global_cancellation.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.user_global_cancellation.fields(buffer, offset, packet, parent)
  end
end

-- Global Cancellation
tmx_mx_solaorderentry_sail_v1_21.global_cancellation = {}

-- Size: Global Cancellation
tmx_mx_solaorderentry_sail_v1_21.global_cancellation.size =
  tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_q_quotes_only.size

-- Display: Global Cancellation
tmx_mx_solaorderentry_sail_v1_21.global_cancellation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Global Cancellation
tmx_mx_solaorderentry_sail_v1_21.global_cancellation.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Type Of Cancellation Q Quotes Only: CancellationType
  index, type_of_cancellation_q_quotes_only = tmx_mx_solaorderentry_sail_v1_21.type_of_cancellation_q_quotes_only.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Global Cancellation
tmx_mx_solaorderentry_sail_v1_21.global_cancellation.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.global_cancellation, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.global_cancellation.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.global_cancellation.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.global_cancellation.fields(buffer, offset, packet, parent)
  end
end

-- Firm Risk Config Trader Team Trader
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team_trader = {}

-- Size: Firm Risk Config Trader Team Trader
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team_trader.size =
  tmx_mx_solaorderentry_sail_v1_21.trader.size

-- Display: Firm Risk Config Trader Team Trader
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team_trader.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Firm Risk Config Trader Team Trader
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team_trader.fields = function(buffer, offset, packet, parent, firm_risk_config_trader_team_trader_index)
  local index = offset

  -- Implicit Firm Risk Config Trader Team Trader Index
  if firm_risk_config_trader_team_trader_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_risk_config_trader_team_trader_index, firm_risk_config_trader_team_trader_index)
    iteration:set_generated()
  end

  -- Trader: Short Trader ID
  index, trader = tmx_mx_solaorderentry_sail_v1_21.trader.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Firm Risk Config Trader Team Trader
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team_trader.dissect = function(buffer, offset, packet, parent, firm_risk_config_trader_team_trader_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_risk_config_trader_team_trader, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team_trader.fields(buffer, offset, packet, parent, firm_risk_config_trader_team_trader_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team_trader.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team_trader.fields(buffer, offset, packet, parent, firm_risk_config_trader_team_trader_index)
  end
end

-- Firm Risk Config Trader Team
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team = {}

-- Calculate size of: Firm Risk Config Trader Team
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.team_level_risk_option.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_traders_in_team.size

  -- Calculate field size from count
  local firm_risk_config_trader_team_trader_count = buffer(offset + index - 3, 3):string()
  index = index + firm_risk_config_trader_team_trader_count * 4

  return index
end

-- Display: Firm Risk Config Trader Team
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Firm Risk Config Trader Team
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team.fields = function(buffer, offset, packet, parent, firm_risk_config_trader_team_index)
  local index = offset

  -- Implicit Firm Risk Config Trader Team Index
  if firm_risk_config_trader_team_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_risk_config_trader_team_index, firm_risk_config_trader_team_index)
    iteration:set_generated()
  end

  -- Team Level Risk Option: Risk Netting Option
  index, team_level_risk_option = tmx_mx_solaorderentry_sail_v1_21.team_level_risk_option.dissect(buffer, index, packet, parent)

  -- Number Of Traders In Team: Numeric (3)
  index, number_of_traders_in_team = tmx_mx_solaorderentry_sail_v1_21.number_of_traders_in_team.dissect(buffer, index, packet, parent)

  -- Repeating: Firm Risk Config Trader Team Trader
  for firm_risk_config_trader_team_trader_index = 1, number_of_traders_in_team do
    index, firm_risk_config_trader_team_trader = tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team_trader.dissect(buffer, index, packet, parent, firm_risk_config_trader_team_trader_index)
  end

  return index
end

-- Dissect: Firm Risk Config Trader Team
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team.dissect = function(buffer, offset, packet, parent, firm_risk_config_trader_team_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_risk_config_trader_team, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team.fields(buffer, offset, packet, parent, firm_risk_config_trader_team_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team.fields(buffer, offset, packet, parent, firm_risk_config_trader_team_index)
  end
end

-- Firm Risk Config
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config = {}

-- Calculate size of: Firm Risk Config
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.firm_level_risk_option.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_trader_teams.size

  -- Calculate field size from count
  local firm_risk_config_trader_team_count = buffer(offset + index - 3, 3):string()
  for i = 1, firm_risk_config_trader_team_count do
    index = index + tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team.size(buffer, offset + index)
  end
  return index
end

-- Display: Firm Risk Config
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Firm Risk Config
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Firm Level Risk Option: Risk Netting Option
  index, firm_level_risk_option = tmx_mx_solaorderentry_sail_v1_21.firm_level_risk_option.dissect(buffer, index, packet, parent)

  -- Number Of Trader Teams: Numeric (3)
  index, number_of_trader_teams = tmx_mx_solaorderentry_sail_v1_21.number_of_trader_teams.dissect(buffer, index, packet, parent)

  -- Repeating: Firm Risk Config Trader Team
  for firm_risk_config_trader_team_index = 1, number_of_trader_teams do
    index, firm_risk_config_trader_team = tmx_mx_solaorderentry_sail_v1_21.firm_risk_config_trader_team.dissect(buffer, index, packet, parent, firm_risk_config_trader_team_index)
  end

  return index
end

-- Dissect: Firm Risk Config
tmx_mx_solaorderentry_sail_v1_21.firm_risk_config.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.firm_risk_config, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.firm_risk_config.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.firm_risk_config.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.firm_risk_config.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Data
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data = {}

-- Size: Bulk Quote Data
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data.size =
  tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size + 
  tmx_mx_solaorderentry_sail_v1_21.group.size + 
  tmx_mx_solaorderentry_sail_v1_21.clearing_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.owner_data.size + 
  tmx_mx_solaorderentry_sail_v1_21.maximum_number_trades.size + 
  tmx_mx_solaorderentry_sail_v1_21.minimum_volume.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_2.size + 
  tmx_mx_solaorderentry_sail_v1_21.calculation_time_interval.size + 
  tmx_mx_solaorderentry_sail_v1_21.maximum_total_volume.size + 
  tmx_mx_solaorderentry_sail_v1_21.maximum_total_value.size + 
  tmx_mx_solaorderentry_sail_v1_21.delta_maximum_volume.size + 
  tmx_mx_solaorderentry_sail_v1_21.delta_maximum_value.size + 
  tmx_mx_solaorderentry_sail_v1_21.anti_wash_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.filler_20.size

-- Display: Bulk Quote Data
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Data
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  -- Group: Group ID
  index, group = tmx_mx_solaorderentry_sail_v1_21.group.dissect(buffer, index, packet, parent)

  -- Clearing Data: Struct of 5 fields
  index, clearing_data = tmx_mx_solaorderentry_sail_v1_21.clearing_data.dissect(buffer, index, packet, parent)

  -- Owner Data: Struct of 1 fields
  index, owner_data = tmx_mx_solaorderentry_sail_v1_21.owner_data.dissect(buffer, index, packet, parent)

  -- Maximum Number Trades: Numeric (2)
  index, maximum_number_trades = tmx_mx_solaorderentry_sail_v1_21.maximum_number_trades.dissect(buffer, index, packet, parent)

  -- Minimum Volume: Quantity
  index, minimum_volume = tmx_mx_solaorderentry_sail_v1_21.minimum_volume.dissect(buffer, index, packet, parent)

  -- Filler 2: String (2)
  index, filler_2 = tmx_mx_solaorderentry_sail_v1_21.filler_2.dissect(buffer, index, packet, parent)

  -- Calculation Time Interval: Numeric (8)
  index, calculation_time_interval = tmx_mx_solaorderentry_sail_v1_21.calculation_time_interval.dissect(buffer, index, packet, parent)

  -- Maximum Total Volume: Quantity
  index, maximum_total_volume = tmx_mx_solaorderentry_sail_v1_21.maximum_total_volume.dissect(buffer, index, packet, parent)

  -- Maximum Total Value: Numeric (8)
  index, maximum_total_value = tmx_mx_solaorderentry_sail_v1_21.maximum_total_value.dissect(buffer, index, packet, parent)

  -- Delta Maximum Volume: Quantity
  index, delta_maximum_volume = tmx_mx_solaorderentry_sail_v1_21.delta_maximum_volume.dissect(buffer, index, packet, parent)

  -- Delta Maximum Value: Numeric (8)
  index, delta_maximum_value = tmx_mx_solaorderentry_sail_v1_21.delta_maximum_value.dissect(buffer, index, packet, parent)

  -- Anti Wash Id: AntiWashId
  index, anti_wash_id = tmx_mx_solaorderentry_sail_v1_21.anti_wash_id.dissect(buffer, index, packet, parent)

  -- Filler 20: String (20)
  index, filler_20 = tmx_mx_solaorderentry_sail_v1_21.filler_20.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Data
tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.bulk_quote_data, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data.fields(buffer, offset, packet, parent)
  end
end

-- Order Request
tmx_mx_solaorderentry_sail_v1_21.order_request = {}

-- Size: Order Request
tmx_mx_solaorderentry_sail_v1_21.order_request.size =
  tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.size

-- Display: Order Request
tmx_mx_solaorderentry_sail_v1_21.order_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Request
tmx_mx_solaorderentry_sail_v1_21.order_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Incoming Messages Header: Struct of 3 fields
  index, incoming_messages_header = tmx_mx_solaorderentry_sail_v1_21.incoming_messages_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Request
tmx_mx_solaorderentry_sail_v1_21.order_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.order_request, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.order_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.order_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.order_request.fields(buffer, offset, packet, parent)
  end
end

-- User Disconnection
tmx_mx_solaorderentry_sail_v1_21.user_disconnection = {}

-- Size: User Disconnection
tmx_mx_solaorderentry_sail_v1_21.user_disconnection.size =
  tmx_mx_solaorderentry_sail_v1_21.user_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.session_id.size

-- Display: User Disconnection
tmx_mx_solaorderentry_sail_v1_21.user_disconnection.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Disconnection
tmx_mx_solaorderentry_sail_v1_21.user_disconnection.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: User ID
  index, user_id = tmx_mx_solaorderentry_sail_v1_21.user_id.dissect(buffer, index, packet, parent)

  -- Session Id: Session ID
  index, session_id = tmx_mx_solaorderentry_sail_v1_21.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Disconnection
tmx_mx_solaorderentry_sail_v1_21.user_disconnection.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_disconnection, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.user_disconnection.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.user_disconnection.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.user_disconnection.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response
tmx_mx_solaorderentry_sail_v1_21.heartbeat_response = {}

-- Size: Heartbeat Response
tmx_mx_solaorderentry_sail_v1_21.heartbeat_response.size =
  tmx_mx_solaorderentry_sail_v1_21.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.size + 
  tmx_mx_solaorderentry_sail_v1_21.last_exchange_message_id_sent_to_participant.size + 
  tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss.size

-- Display: Heartbeat Response
tmx_mx_solaorderentry_sail_v1_21.heartbeat_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response
tmx_mx_solaorderentry_sail_v1_21.heartbeat_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Sequence Id First User Sequence Id For Nextcurrent Heartbeat Period: User Sequence ID
  index, user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period = tmx_mx_solaorderentry_sail_v1_21.user_sequence_id_first_user_sequence_id_for_nextcurrent_heartbeat_period.dissect(buffer, index, packet, parent)

  -- Last Exchange Message Id Sent To Participant: Exchange Message ID
  index, last_exchange_message_id_sent_to_participant = tmx_mx_solaorderentry_sail_v1_21.last_exchange_message_id_sent_to_participant.dissect(buffer, index, packet, parent)

  -- User Message Timestamp Local Hhmmss: Time
  index, user_message_timestamp_local_hhmmss = tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response
tmx_mx_solaorderentry_sail_v1_21.heartbeat_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.heartbeat_response, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.heartbeat_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.heartbeat_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.heartbeat_response.fields(buffer, offset, packet, parent)
  end
end

-- Disconnection Instruction Occurrence
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_occurrence = {}

-- Size: Disconnection Instruction Occurrence
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.trader_id.size + 
  tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_note_cancel_quotes_only_q_quotes_only.size + 
  tmx_mx_solaorderentry_sail_v1_21.active_y_on_n_off.size

-- Display: Disconnection Instruction Occurrence
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disconnection Instruction Occurrence
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_occurrence.fields = function(buffer, offset, packet, parent, disconnection_instruction_occurrence_index)
  local index = offset

  -- Implicit Disconnection Instruction Occurrence Index
  if disconnection_instruction_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_instruction_occurrence_index, disconnection_instruction_occurrence_index)
    iteration:set_generated()
  end

  -- Trader Id: Trader ID
  index, trader_id = tmx_mx_solaorderentry_sail_v1_21.trader_id.dissect(buffer, index, packet, parent)

  -- Disconnection Instruction Note Cancel Quotes Only Q Quotes Only: CancellationType
  index, disconnection_instruction_note_cancel_quotes_only_q_quotes_only = tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_note_cancel_quotes_only_q_quotes_only.dissect(buffer, index, packet, parent)

  -- Active Y On N Off: Flag
  index, active_y_on_n_off = tmx_mx_solaorderentry_sail_v1_21.active_y_on_n_off.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Disconnection Instruction Occurrence
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_occurrence.dissect = function(buffer, offset, packet, parent, disconnection_instruction_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_instruction_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_occurrence.fields(buffer, offset, packet, parent, disconnection_instruction_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_occurrence.fields(buffer, offset, packet, parent, disconnection_instruction_occurrence_index)
  end
end

-- Disconnection Instruction
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction = {}

-- Calculate size of: Disconnection Instruction
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_instructions_present_in_the_message.size

  -- Calculate field size from count
  local disconnection_instruction_occurrence_count = buffer(offset + index - 2, 2):string()
  index = index + disconnection_instruction_occurrence_count * 10

  return index
end

-- Display: Disconnection Instruction
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disconnection Instruction
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Instructions Present In The Message: Numeric (2)
  index, number_of_instructions_present_in_the_message = tmx_mx_solaorderentry_sail_v1_21.number_of_instructions_present_in_the_message.dissect(buffer, index, packet, parent)

  -- Repeating: Disconnection Instruction Occurrence
  for disconnection_instruction_occurrence_index = 1, number_of_instructions_present_in_the_message do
    index, disconnection_instruction_occurrence = tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction_occurrence.dissect(buffer, index, packet, parent, disconnection_instruction_occurrence_index)
  end

  return index
end

-- Dissect: Disconnection Instruction
tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.disconnection_instruction, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction.fields(buffer, offset, packet, parent)
  end
end

-- User Connection Occurrence
tmx_mx_solaorderentry_sail_v1_21.user_connection_occurrence = {}

-- Size: User Connection Occurrence
tmx_mx_solaorderentry_sail_v1_21.user_connection_occurrence.size =
  tmx_mx_solaorderentry_sail_v1_21.message_types_to_be_received.size

-- Display: User Connection Occurrence
tmx_mx_solaorderentry_sail_v1_21.user_connection_occurrence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Connection Occurrence
tmx_mx_solaorderentry_sail_v1_21.user_connection_occurrence.fields = function(buffer, offset, packet, parent, user_connection_occurrence_index)
  local index = offset

  -- Implicit User Connection Occurrence Index
  if user_connection_occurrence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_connection_occurrence_index, user_connection_occurrence_index)
    iteration:set_generated()
  end

  -- Message Types To Be Received: Message Type
  index, message_types_to_be_received = tmx_mx_solaorderentry_sail_v1_21.message_types_to_be_received.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Connection Occurrence
tmx_mx_solaorderentry_sail_v1_21.user_connection_occurrence.dissect = function(buffer, offset, packet, parent, user_connection_occurrence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_connection_occurrence, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.user_connection_occurrence.fields(buffer, offset, packet, parent, user_connection_occurrence_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.user_connection_occurrence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.user_connection_occurrence.fields(buffer, offset, packet, parent, user_connection_occurrence_index)
  end
end

-- User Connection
tmx_mx_solaorderentry_sail_v1_21.user_connection = {}

-- Calculate size of: User Connection
tmx_mx_solaorderentry_sail_v1_21.user_connection.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_solaorderentry_sail_v1_21.protocol_id.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.user_id.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.password_md_5_encryption.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.session_id.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.exchange_message_id.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.inactivity_interval.size

  index = index + tmx_mx_solaorderentry_sail_v1_21.number_of_message_types_to_be_received.size

  -- Calculate field size from count
  local user_connection_occurrence_count = buffer(offset + index - 2, 2):string()
  index = index + user_connection_occurrence_count * 2

  return index
end

-- Display: User Connection
tmx_mx_solaorderentry_sail_v1_21.user_connection.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Connection
tmx_mx_solaorderentry_sail_v1_21.user_connection.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Protocol Id: Protocol
  index, protocol_id = tmx_mx_solaorderentry_sail_v1_21.protocol_id.dissect(buffer, index, packet, parent)

  -- User Id: User ID
  index, user_id = tmx_mx_solaorderentry_sail_v1_21.user_id.dissect(buffer, index, packet, parent)

  -- Password Md 5 Encryption: Password
  index, password_md_5_encryption = tmx_mx_solaorderentry_sail_v1_21.password_md_5_encryption.dissect(buffer, index, packet, parent)

  -- Session Id: Session ID
  index, session_id = tmx_mx_solaorderentry_sail_v1_21.session_id.dissect(buffer, index, packet, parent)

  -- User Message Timestamp Local Hhmmss: Time
  index, user_message_timestamp_local_hhmmss = tmx_mx_solaorderentry_sail_v1_21.user_message_timestamp_local_hhmmss.dissect(buffer, index, packet, parent)

  -- Exchange Message Id: Exchange Message ID
  index, exchange_message_id = tmx_mx_solaorderentry_sail_v1_21.exchange_message_id.dissect(buffer, index, packet, parent)

  -- Inactivity Interval: Inactivity Interval
  index, inactivity_interval = tmx_mx_solaorderentry_sail_v1_21.inactivity_interval.dissect(buffer, index, packet, parent)

  -- Number Of Message Types To Be Received: Numeric (2)
  index, number_of_message_types_to_be_received = tmx_mx_solaorderentry_sail_v1_21.number_of_message_types_to_be_received.dissect(buffer, index, packet, parent)

  -- Repeating: User Connection Occurrence
  for user_connection_occurrence_index = 1, number_of_message_types_to_be_received do
    index, user_connection_occurrence = tmx_mx_solaorderentry_sail_v1_21.user_connection_occurrence.dissect(buffer, index, packet, parent, user_connection_occurrence_index)
  end

  return index
end

-- Dissect: User Connection
tmx_mx_solaorderentry_sail_v1_21.user_connection.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21.fields.user_connection, buffer(offset, 0))
    local index = tmx_mx_solaorderentry_sail_v1_21.user_connection.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_solaorderentry_sail_v1_21.user_connection.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_solaorderentry_sail_v1_21.user_connection.fields(buffer, offset, packet, parent)
  end
end

-- Firm Message
tmx_mx_solaorderentry_sail_v1_21.firm_message = {}

-- Dispatch: Firm Message
tmx_mx_solaorderentry_sail_v1_21.firm_message.dispatch = {
  ["TC"] = tmx_mx_solaorderentry_sail_v1_21.user_connection.dissect,
  ["TA"] = tmx_mx_solaorderentry_sail_v1_21.disconnection_instruction.dissect,
  ["TI"] = tmx_mx_solaorderentry_sail_v1_21.heartbeat_response.dissect,
  ["TD"] = tmx_mx_solaorderentry_sail_v1_21.user_disconnection.dissect,
  ["AF"] = tmx_mx_solaorderentry_sail_v1_21.order_request.dissect,
  ["BD"] = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_data.dissect,
  ["CR"] = tmx_mx_solaorderentry_sail_v1_21.firm_risk_config.dissect,
  ["GC"] = tmx_mx_solaorderentry_sail_v1_21.global_cancellation.dissect,
  ["GZ"] = tmx_mx_solaorderentry_sail_v1_21.user_global_cancellation.dissect,
  ["MK"] = tmx_mx_solaorderentry_sail_v1_21.set_group_risk_limits.dissect,
  ["ML"] = tmx_mx_solaorderentry_sail_v1_21.set_global_risk_limits.dissect,
  ["OE"] = tmx_mx_solaorderentry_sail_v1_21.order_entry.dissect,
  ["OM"] = tmx_mx_solaorderentry_sail_v1_21.order_modification.dissect,
  ["ON"] = tmx_mx_solaorderentry_sail_v1_21.new_strategy_instrument.dissect,
  ["OX"] = tmx_mx_solaorderentry_sail_v1_21.cross_entry.dissect,
  ["QA"] = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_2.dissect,
  ["QB"] = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_2.dissect,
  ["QC"] = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_2.dissect,
  ["QD"] = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_2.dissect,
  ["QE"] = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_4.dissect,
  ["QF"] = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_4.dissect,
  ["QG"] = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_4.dissect,
  ["QH"] = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_4.dissect,
  ["QI"] = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_6.dissect,
  ["QJ"] = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_6.dissect,
  ["QK"] = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_6.dissect,
  ["QL"] = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_10_quantity_6.dissect,
  ["QM"] = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_4_quantity_8.dissect,
  ["QN"] = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_6_quantity_8.dissect,
  ["QO"] = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_price_8_quantity_8.dissect,
  ["QP"] = tmx_mx_solaorderentry_sail_v1_21.bulk_quote.dissect,
  ["QS"] = tmx_mx_solaorderentry_sail_v1_21.sail_request_for_quote_with_side.dissect,
  ["RP"] = tmx_mx_solaorderentry_sail_v1_21.bulk_quote_participant_bqp_protection_subscription.dissect,
  ["RQ"] = tmx_mx_solaorderentry_sail_v1_21.request_for_quote.dissect,
  ["XE"] = tmx_mx_solaorderentry_sail_v1_21.order_cancellation.dissect,
}

-- Dissect: Firm Message
tmx_mx_solaorderentry_sail_v1_21.firm_message.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = tmx_mx_solaorderentry_sail_v1_21.firm_message.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Firm Packet
tmx_mx_solaorderentry_sail_v1_21.firm_packet = {}

-- Verify required size of Tcp packet
tmx_mx_solaorderentry_sail_v1_21.firm_packet.requiredsize = function(buffer)
  return buffer:len() >= tmx_mx_solaorderentry_sail_v1_21.message_length.size + tmx_mx_solaorderentry_sail_v1_21.message_type.size
end

-- Dissect Firm Packet
tmx_mx_solaorderentry_sail_v1_21.firm_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Length: Endian
  index, message_length = tmx_mx_solaorderentry_sail_v1_21.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: X
  index, message_type = tmx_mx_solaorderentry_sail_v1_21.message_type.dissect(buffer, index, packet, parent)

  -- Firm Message: Runtime Type with 35 branches
  index = tmx_mx_solaorderentry_sail_v1_21.firm_message.dissect(buffer, index, packet, parent, message_type)

  -- End Of Text: Binary
  index, end_of_text = tmx_mx_solaorderentry_sail_v1_21.end_of_text.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Alignment Padding
  local alignment_padding = nil

  local alignment_padding_exists = (index % 4 ~= 0)

  if alignment_padding_exists then

    -- Runtime Size Of: Alignment Padding
    local size_of_alignment_padding = ((4 - index % 4) % 4)

    -- Alignment Padding: Binary
    index, alignment_padding = tmx_mx_solaorderentry_sail_v1_21.alignment_padding.dissect(buffer, index, packet, parent, size_of_alignment_padding)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_tmx_mx_solaorderentry_sail_v1_21.init()
end

-- Connection roles for Tmx Mx SolaOrderEntry Sail 1.21: Client is the initiator, Server is the acceptor
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
tmx_mx_solaorderentry_sail_v1_21.role = function(packet)
  if omi_tmx_mx_solaorderentry_sail_v1_21.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_tmx_mx_solaorderentry_sail_v1_21.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_tmx_mx_solaorderentry_sail_v1_21.prefs.acceptor_port

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

  if omi_tmx_mx_solaorderentry_sail_v1_21.prefs.swap_sides then
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
tmx_mx_solaorderentry_sail_v1_21.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Tmx Mx SolaOrderEntry Sail 1.21
function omi_tmx_mx_solaorderentry_sail_v1_21.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_tmx_mx_solaorderentry_sail_v1_21.name

  local role = tmx_mx_solaorderentry_sail_v1_21.role(packet)
  local dissect = tmx_mx_solaorderentry_sail_v1_21.exchange_packet.dissect
  if role == "initiator" then
    dissect = tmx_mx_solaorderentry_sail_v1_21.firm_packet.dissect
  end

  local length = buffer:len()
  local index = 0

  -- Dissect each message the segment carries
  while index < length do
    local remaining = length - index

    -- The message length lives in the header: wait for the header before reading it
    if remaining < tmx_mx_solaorderentry_sail_v1_21.firm_packet.size then
      packet.desegment_offset = index
      packet.desegment_len = DESEGMENT_ONE_MORE_SEGMENT
      return length
    end

    local size = buffer(index, 4):le_uint() + 5
    -- The frame is padded to a 4 byte boundary: round up so reassembly spans the pad
    size = size + ((4 - size % 4) % 4)
    -- A message split across segments: ask TCP for exactly the bytes still missing
    if remaining < size then
      packet.desegment_offset = index
      packet.desegment_len = size - remaining
      return length
    end

    local protocol = parent:add(omi_tmx_mx_solaorderentry_sail_v1_21, buffer(index, size), omi_tmx_mx_solaorderentry_sail_v1_21.description, "("..size.." Bytes)")
    dissect(buffer(index, size):tvb(), packet, protocol)
    protocol:set_len(size)
    index = index + size
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Firm Packet: would its message dispatch accept this frame?
tmx_mx_solaorderentry_sail_v1_21.firm_packet.fingerprint = function(buffer)
  if buffer:len() < 6 then
    return false
  end

  local message_type = buffer(4, 2):string()

  -- User Connection
  if message_type == "TC" then
    return true
  end

  -- Disconnection Instruction
  if message_type == "TA" then
    return true
  end

  -- Heartbeat Response
  if message_type == "TI" then
    return true
  end

  -- User Disconnection
  if message_type == "TD" then
    return true
  end

  -- Order Request
  if message_type == "AF" then
    return true
  end

  -- Bulk Quote Data
  if message_type == "BD" then
    return true
  end

  -- Firm Risk Config
  if message_type == "CR" then
    return true
  end

  -- Global Cancellation
  if message_type == "GC" then
    return true
  end

  -- User Global Cancellation
  if message_type == "GZ" then
    return true
  end

  -- Set Group Risk Limits
  if message_type == "MK" then
    return true
  end

  -- Set Global Risk Limits
  if message_type == "ML" then
    return true
  end

  -- Order Entry
  if message_type == "OE" then
    return true
  end

  -- Order Modification
  if message_type == "OM" then
    return true
  end

  -- New Strategy Instrument
  if message_type == "ON" then
    return true
  end

  -- Cross Entry
  if message_type == "OX" then
    return true
  end

  -- Bulk Quote Price 4 Quantity 2
  if message_type == "QA" then
    return true
  end

  -- Bulk Quote Price 6 Quantity 2
  if message_type == "QB" then
    return true
  end

  -- Bulk Quote Price 8 Quantity 2
  if message_type == "QC" then
    return true
  end

  -- Bulk Quote Price 10 Quantity 2
  if message_type == "QD" then
    return true
  end

  -- Bulk Quote Price 4 Quantity 4
  if message_type == "QE" then
    return true
  end

  -- Bulk Quote Price 6 Quantity 4
  if message_type == "QF" then
    return true
  end

  -- Bulk Quote Price 8 Quantity 4
  if message_type == "QG" then
    return true
  end

  -- Bulk Quote Price 10 Quantity 4
  if message_type == "QH" then
    return true
  end

  -- Bulk Quote Price 4 Quantity 6
  if message_type == "QI" then
    return true
  end

  -- Bulk Quote Price 6 Quantity 6
  if message_type == "QJ" then
    return true
  end

  -- Bulk Quote Price 8 Quantity 6
  if message_type == "QK" then
    return true
  end

  -- Bulk Quote Price 10 Quantity 6
  if message_type == "QL" then
    return true
  end

  -- Bulk Quote Price 4 Quantity 8
  if message_type == "QM" then
    return true
  end

  -- Bulk Quote Price 6 Quantity 8
  if message_type == "QN" then
    return true
  end

  -- Bulk Quote Price 8 Quantity 8
  if message_type == "QO" then
    return true
  end

  -- Bulk Quote
  if message_type == "QP" then
    return true
  end

  -- Sail Request For Quote With Side
  if message_type == "QS" then
    return true
  end

  -- Bulk Quote Participant Bqp Protection Subscription
  if message_type == "RP" then
    return true
  end

  -- Request For Quote
  if message_type == "RQ" then
    return true
  end

  -- Order Cancellation
  if message_type == "XE" then
    return true
  end

  return false
end

-- Fingerprint of Exchange Packet: would its message dispatch accept this frame?
tmx_mx_solaorderentry_sail_v1_21.exchange_packet.fingerprint = function(buffer)
  if buffer:len() < 6 then
    return false
  end

  local message_type = buffer(4, 2):string()

  -- Connection Acknowledgement
  if message_type == "TK" then
    return true
  end

  -- Disconnection Instruction Acknowledgement
  if message_type == "TM" then
    return true
  end

  -- Heartbeat Question
  if message_type == "TH" then
    return true
  end

  -- Out Of Sequence
  if message_type == "TO" then
    return true
  end

  -- Technical Error Notice
  if message_type == "TE" then
    return true
  end

  -- Disconnection Acknowledgement
  if message_type == "TL" then
    return true
  end

  -- End Of Transmission
  if message_type == "TT" then
    return true
  end

  -- Order Reply
  if message_type == "AE" then
    return true
  end

  -- Error Notice
  if message_type == "ER" then
    return true
  end

  -- Bulk Quote Data Acknowledgement
  if message_type == "KD" then
    return true
  end

  -- Order Acknowledgement
  if message_type == "KE" then
    return true
  end

  -- Global Cancellation Confirmation
  if message_type == "KG" then
    return true
  end

  -- Order Modification Acknowledgement
  if message_type == "KM" then
    return true
  end

  -- New Strategy Instrument Acknowledgement
  if message_type == "KN" then
    return true
  end

  -- Standard Acknowledgement
  if message_type == "KO" then
    return true
  end

  -- Order Cancellation Acknowledgement
  if message_type == "KZ" then
    return true
  end

  -- Bulk Quote Acknowledgement
  if message_type == "LA" then
    return true
  end

  -- Bulk Command Acknowledgement
  if message_type == "LB" then
    return true
  end

  -- Risk Limits Usage
  if message_type == "MN" then
    return true
  end

  -- Excluded Instrument Notice
  if message_type == "NE" then
    return true
  end

  -- Group State Change
  if message_type == "NG" then
    return true
  end

  -- Instrument State Change
  if message_type == "NI" then
    return true
  end

  -- Leg Execution Notice
  if message_type == "NL" then
    return true
  end

  -- Overstepped Order Or Quote Notice
  if message_type == "NO" then
    return true
  end

  -- Cancellation Of All Quotes Notice
  if message_type == "NP" then
    return true
  end

  -- Execution Notice
  if message_type == "NT" then
    return true
  end

  -- Execution Cancellation Notice
  if message_type == "NX" then
    return true
  end

  -- Leg Execution Cancellation Notice
  if message_type == "NY" then
    return true
  end

  -- Order Cancellation Notice By Mod Or System
  if message_type == "NZ" then
    return true
  end

  -- Request For Quote With Side Acknowledgement
  if message_type == "QW" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Tmx Mx SolaOrderEntry Sail 1.21 (Tcp)
local function omi_tmx_mx_solaorderentry_sail_v1_21_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tmx_mx_solaorderentry_sail_v1_21.firm_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp firm packet message dispatch
  if not tmx_mx_solaorderentry_sail_v1_21.firm_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tmx_mx_solaorderentry_sail_v1_21
  omi_tmx_mx_solaorderentry_sail_v1_21.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Tmx Mx SolaOrderEntry Sail 1.21 (Tcp)
local function omi_tmx_mx_solaorderentry_sail_v1_21_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tmx_mx_solaorderentry_sail_v1_21.exchange_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp exchange packet message dispatch
  if not tmx_mx_solaorderentry_sail_v1_21.exchange_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tmx_mx_solaorderentry_sail_v1_21
  omi_tmx_mx_solaorderentry_sail_v1_21.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Tmx Mx SolaOrderEntry Sail 1.21 (Tcp): apply the heuristic of the sender's connection role
local function omi_tmx_mx_solaorderentry_sail_v1_21_tcp_heuristic(buffer, packet, parent)
  local role = tmx_mx_solaorderentry_sail_v1_21.role(packet)
  local initiator = omi_tmx_mx_solaorderentry_sail_v1_21_tcp_initiator_heuristic
  local acceptor = omi_tmx_mx_solaorderentry_sail_v1_21_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  tmx_mx_solaorderentry_sail_v1_21.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  tmx_mx_solaorderentry_sail_v1_21.swap(packet)

  return false
end

-- Register Heuristics for Tmx Mx SolaOrderEntry Sail 1.21
omi_tmx_mx_solaorderentry_sail_v1_21:register_heuristic("tcp", omi_tmx_mx_solaorderentry_sail_v1_21_tcp_heuristic)

-- Register Tmx Mx SolaOrderEntry Sail 1.21 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_tmx_mx_solaorderentry_sail_v1_21)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: TMX Group
--   Version: 1.21
--   Date: Thursday, June 18, 2020
--   Specification: MX SAIL Specifications Guide (1.21).pdf
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
