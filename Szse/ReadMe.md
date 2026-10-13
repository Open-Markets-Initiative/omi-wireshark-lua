[![Szse](https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Organizations/Szse/Images/Logo.png)](https://www.szse.cn)


## Shenzhen Stock Exchange

### Market Data

| Division | [Protocol][Omi.Szse.Protocol.Definitions] | [Encoding][Omi.Encoding.Definitions] | Version | Date | Size | [Deployment][Omi.Glossary.Deployment] | [Testing][Omi.Glossary.Testing] | [Documentation][Omi.Szse.Specifications] |
| --- | --- | --- | --- | ---: | ---: | --- | --- | --- |
| [SzseSecurities][SzseSecurities.Exchange] | [MulticastMarketData][Szse.SzseSecurities.MulticastMarketData] | [SzseBinary][Omi.Encoding.SzseBinary] | [1.17][Szse.SzseSecurities.MulticastMarketData.SzseBinary.v1.17.Dissector] | 4/1/2025 | 7206 | [Active][Omi.Glossary.Deployment.Active] | [Untested][Omi.Glossary.Testing.Untested] | [url][Szse.SzseSecurities.MulticastMarketData.SzseBinary.v1.17.Url] - [pdf][Szse.SzseSecurities.MulticastMarketData.SzseBinary.v1.17.Pdf] - [pdf][Szse.SzseSecurities.MulticastMarketData.SzseBinary.v1.17.Pdf] |
| [SzseSecurities][SzseSecurities.Exchange] | [TcpMarketData][Szse.SzseSecurities.TcpMarketData] | [SzseBinary][Omi.Encoding.SzseBinary] | [1.17][Szse.SzseSecurities.TcpMarketData.SzseBinary.v1.17.Dissector] | 4/1/2025 | 6765 | [Active][Omi.Glossary.Deployment.Active] | [Untested][Omi.Glossary.Testing.Untested] | [url][Szse.SzseSecurities.TcpMarketData.SzseBinary.v1.17.Url] - [pdf][Szse.SzseSecurities.TcpMarketData.SzseBinary.v1.17.Pdf] |


<p align="center"><a href="https://www.szse.cn" title="Shenzhen Stock Exchange Website"><img src="https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/raw/main/About/Icons/Website.png" alt="Website" width="32" height="32"></a>&nbsp;&nbsp;<a href="https://en.wikipedia.org/wiki/Shenzhen_Stock_Exchange" title="Shenzhen Stock Exchange on Wikipedia"><img src="https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/raw/main/About/Icons/Wikipedia.png" alt="Wikipedia" width="32" height="32"></a></p>


[Omi.Glossary.Deployment]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Glossary/Deployment.md "Protocol Deployment"
[Omi.Glossary.Deployment.Active]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Glossary/Deployment.md "Deployment: Protocol is in active production"
[Omi.Glossary.Deployment.Deprecated]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Glossary/Deployment.md "Deployment: Protocol is no longer in active use"
[Omi.Glossary.Deployment.Pending]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Glossary/Deployment.md "Deployment: Protocol is not yet deployed to an active production environment"
[Omi.Glossary.Deployment.Observability]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Glossary/Deployment.md "Deployment: Protocol is carried for observability rather than trading"
[Omi.Glossary.Deployment.Header]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Glossary/Deployment.md "Deployment: Header only protocol provided for debugging"
[Omi.Glossary.Deployment.Unknown]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Glossary/Deployment.md "Deployment: Protocol deployment is unknown"
[Omi.Glossary.Testing]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Glossary/Testing.md "Protocol Testing Status"
[Omi.Glossary.Testing.Verified]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Glossary/Testing.md "Testing Status: Protocol has been tested on live data"
[Omi.Glossary.Testing.Incomplete]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Glossary/Testing.md "Testing Status: Protocol has been tested on live data but contains known issues"
[Omi.Glossary.Testing.Beta]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Glossary/Testing.md "Testing Status: Protocol has not been tested and structure is speculative"
[Omi.Glossary.Testing.Untested]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Glossary/Testing.md "Testing Status: Protocol has not been tested on live data"
[Omi.Glossary.Testing.Unavailable]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Glossary/Testing.md "Testing Status: Protocol does not state a testing status"
[Omi.Encoding.Definitions]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Protocols/ReadMe.md "Encoding Directory"
[Omi.Szse.Protocol.Definitions]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/tree/main/Organizations/Szse/Protocols "Szse Protocol Directory"
[Omi.Szse.Specifications]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/tree/main/Organizations/Szse/Specifications "Szse Specifications Directory"
[Omi.Encoding.SzseBinary]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Protocols/SzseBinary.md "SzseBinary Encoding"
[SzseSecurities.Exchange]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/tree/main/Organizations/Szse/Protocols/SzseSecurities "Szse SzseSecurities"
[Szse.SzseSecurities.MulticastMarketData]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Organizations/Szse/Protocols/SzseSecurities/MulticastMarketData.md "Szse Multicast Market Data"
[Szse.SzseSecurities.TcpMarketData]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Organizations/Szse/Protocols/SzseSecurities/TcpMarketData.md "Szse Tcp Market Data"

[Szse.SzseSecurities.MulticastMarketData.SzseBinary.v1.17.Dissector]: https://github.com/Open-Markets-Initiative/omi-wireshark-lua/blob/main/Szse/SzseSecurities/MulticastMarketData/Szse_SzseSecurities_MulticastMarketData_SzseBinary_v1_17_Dissector.lua "Szse SzseSecurities MulticastMarketData SzseBinary v1.17 Wireshark Dissector"
[Szse.SzseSecurities.MulticastMarketData.SzseBinary.v1.17.Url]: http://www.szsi.cn/cpfw/overseas/market/technical/ "Shenzhen Stock Exchange 1.17 Url"
[Szse.SzseSecurities.MulticastMarketData.SzseBinary.v1.17.Pdf]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Organizations/Szse/Specifications/MarketData/Szse.SzseSecurities.MarketData.SzseBinary.v1.17.pdf "Shenzhen Stock Exchange 1.17 Pdf"
[Szse.SzseSecurities.MulticastMarketData.SzseBinary.v1.17.Pdf]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Organizations/Szse/Specifications/MarketData/Szse.SzseSecurities.MulticastDistribution.Mddp.v1.0.pdf "Shenzhen Stock Exchange 1.17 Pdf"
[Szse.SzseSecurities.TcpMarketData.SzseBinary.v1.17.Dissector]: https://github.com/Open-Markets-Initiative/omi-wireshark-lua/blob/main/Szse/SzseSecurities/TcpMarketData/Szse_SzseSecurities_TcpMarketData_SzseBinary_v1_17_Dissector.lua "Szse SzseSecurities TcpMarketData SzseBinary v1.17 Wireshark Dissector"
[Szse.SzseSecurities.TcpMarketData.SzseBinary.v1.17.Url]: http://www.szsi.cn/cpfw/overseas/market/technical/ "Shenzhen Stock Exchange 1.17 Url"
[Szse.SzseSecurities.TcpMarketData.SzseBinary.v1.17.Pdf]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Organizations/Szse/Specifications/SzseSecurities/TcpMarketData/Szse.SzseSecurities.MarketData.SzseBinary.v1.17.pdf "Shenzhen Stock Exchange 1.17 Pdf"
