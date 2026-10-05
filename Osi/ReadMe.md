![Osi](https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Organizations/Osi/Images/Logo.png)


## Open Systems Interconnection

### Network

| Division | [Protocol][Omi.Osi.Protocol.Definitions] | [Encoding][Omi.Encoding.Definitions] | Version | Date | Size | [Deployment][Omi.Glossary.Deployment] | [Testing][Omi.Glossary.Testing] | [Documentation][Omi.Osi.Specifications] |
| --- | --- | --- | --- | ---: | ---: | --- | --- | --- |
| [Network][Network] | [Internet][Osi.Network.Internet] | [Ip][Omi.Encoding.Ip] | [4][Osi.Network.Internet.Ip.v4.Dissector] | 10/5/2026 | 553 | [Header][Omi.Glossary.Deployment.Header] | [Untested][Omi.Glossary.Testing.Untested] | [url][Osi.Network.Internet.Ip.v4.Url] |
| [Network][Network] | [Link][Osi.Network.Link] | [Ethernet][Omi.Encoding.Ethernet] | [2][Osi.Network.Link.Ethernet.v2.Dissector] | 10/5/2026 | 392 | [Header][Omi.Glossary.Deployment.Header] | [Untested][Omi.Glossary.Testing.Untested] | [url][Osi.Network.Link.Ethernet.v2.Url] |
| [Network][Network] | [Transport][Osi.Network.Transport] | [Tcp][Omi.Encoding.Tcp] | [1][Osi.Network.Transport.Tcp.v1.Dissector] | 10/5/2026 | 502 | [Header][Omi.Glossary.Deployment.Header] | [Untested][Omi.Glossary.Testing.Untested] | [url][Osi.Network.Transport.Tcp.v1.Url] |
| [Network][Network] | [Transport][Osi.Network.Transport] | [Udp][Omi.Encoding.Udp] | [1][Osi.Network.Transport.Udp.v1.Dissector] | 10/5/2026 | 274 | [Header][Omi.Glossary.Deployment.Header] | [Untested][Omi.Glossary.Testing.Untested] | [url][Osi.Network.Transport.Udp.v1.Url] |


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
[Omi.Osi.Protocol.Definitions]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/tree/main/Organizations/Osi/Protocols "Osi Protocol Directory"
[Omi.Osi.Specifications]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/tree/main/Organizations/Osi/Specifications "Osi Specifications Directory"
[Omi.Encoding.Ip]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Protocols/Ip.md "Ip Encoding"
[Omi.Encoding.Ethernet]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Protocols/Ethernet.md "Ethernet Encoding"
[Omi.Encoding.Tcp]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Protocols/Tcp.md "Tcp Encoding"
[Omi.Encoding.Udp]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Protocols/Udp.md "Udp Encoding"
[Network]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/tree/main/Organizations/Osi/Protocols/Network "Osi Network"
[Osi.Network.Internet]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Organizations/Osi/Protocols/Network/Internet.md "Internet"
[Osi.Network.Link]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Organizations/Osi/Protocols/Network/Link.md "Link"
[Osi.Network.Transport]: https://github.com/Open-Markets-Initiative/Open-Markets-Initiative/blob/main/Organizations/Osi/Protocols/Network/Transport.md "Transport"

[Osi.Network.Internet.Ip.v4.Dissector]: https://github.com/Open-Markets-Initiative/omi-wireshark-lua/blob/main/Osi/Network/Internet/Osi_Network_Internet_Ip_v4_Dissector.lua "Osi Network Internet Ip v4 Wireshark Dissector"
[Osi.Network.Internet.Ip.v4.Url]: https://www.rfc-editor.org/rfc/rfc791 "Open Systems Interconnection 4 Url"
[Osi.Network.Link.Ethernet.v2.Dissector]: https://github.com/Open-Markets-Initiative/omi-wireshark-lua/blob/main/Osi/Network/Link/Osi_Network_Link_Ethernet_v2_Dissector.lua "Osi Network Link Ethernet v2 Wireshark Dissector"
[Osi.Network.Link.Ethernet.v2.Url]: https://standards.ieee.org/ieee/802.3/10422/ "Open Systems Interconnection 2 Url"
[Osi.Network.Transport.Tcp.v1.Dissector]: https://github.com/Open-Markets-Initiative/omi-wireshark-lua/blob/main/Osi/Network/Transport/Osi_Network_Transport_Tcp_v1_Dissector.lua "Osi Network Transport Tcp v1 Wireshark Dissector"
[Osi.Network.Transport.Tcp.v1.Url]: https://www.rfc-editor.org/rfc/rfc9293 "Open Systems Interconnection 1 Url"
[Osi.Network.Transport.Udp.v1.Dissector]: https://github.com/Open-Markets-Initiative/omi-wireshark-lua/blob/main/Osi/Network/Transport/Osi_Network_Transport_Udp_v1_Dissector.lua "Osi Network Transport Udp v1 Wireshark Dissector"
[Osi.Network.Transport.Udp.v1.Url]: https://www.rfc-editor.org/rfc/rfc768 "Open Systems Interconnection 1 Url"
