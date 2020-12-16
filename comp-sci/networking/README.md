name: Networking

description: The engineering discipline studying and analyzing the communication process of computing devices that are linked together to share and exchange resources and information.

sections:
  '0':
    - networking-fundamentals-i
    - networking-fundamentals-ii
    - metrics
    - networking-tools
  '1':
    - intro-to-http
    - requests-responses
    - http-status-codes

standards:
  analyze-network-metrics:
    name: Analyze and Interpret network metrics
    description: This standard has to do with the analysis and interpretation of network metrics, in a monitoring and debugging context, as well as to assess the capabilities of a network and it's members.
    objectives:
      0: Use a tool like netstat to monitor a LAN's traffic
      1: Use a tool to monitor a VPC's traffic
      2: Monitor and graph the HTTP traffic coming into a web server
      3: Use an agent to monitor incoming and outgoing traffic on network nodes, eg collectd
      4: Interpret metrics from a network analyzer, eg Wireshark
      5: Collect and analyze incoming and outgoing traffic for anomalies
  identify-network-components:
    name: Identify a network’s components and describe their role
    description: This standard deals with the ability to name and describe the role of each component of a network.
    objectives:
      0: Identify the abstract network components according to the OSI model
      1: Identify and describe concrete components of a network given a real network diagram according to the OSI model
      2: Describe the role of each component in the OSI model
      3: Describe the role of each component in a real network diagram
      4: Analyze network addresses
  http-request-response:
    name: Use the HTTP Protocol to assemble an HTTP request and response
    description: This standard deals with the assembly of an HTTP request and an HTTP response, by any means.
    objectives:
      0: Identify the components of an HTTP Request
      1: Identify the components of an HTTP Response
      2: Attach headers to an HTTP Request
      3: Attach a body to an HTTP Request using POST, PUT, and PATCH methods
      4: Make an assembled HTTP Request to a given URI
      5: Receive an incoming HTTP request and use it to serve an HTTP Response
      6: Attach headers to an HTTP Response
      7: Attach a body to an HTTP Response
      8: Use common HTTP Status Codes to communicate about the status of the response
      9: Identify common request and header pairs, such as Accept and Content-Type, and their respective contracts
      10: Identify common request headers and use them to modify the response before it is sent
      11: Identify common response headers and use them to make decisions about the response after it is received
      12: Use HTTP Cookies to persist data across requests between a server and a client
  identify-network-protocols:
    name: Identify and Analyze network protocols
    description: This standard deals with reading the raw data in network protocols and identifying the role and meaning of the data, as well as whether or not the data fits the protocol.
    objectives:
      0: Distinguish between network protocols
      1: Distinguish network protocols by layer of the OSI Model
      2: Distinguish between open network protocols and their secure counterparts
      3: Analyze the contents of a TCP Packet
      4: Distinguish TCP and UDP handshake protocols
      5: Identify an HTTP Request
      6: Analyze the contents of an HTTP Request
      7: Identify an HTTP Response
      8: Analyze the contents of an HTTP Response
      9: Identify a URI
      10: Analyze the contents of a URI
      11: Identify an SMTP command
      12: Analyze the contents of an SMTP command
      13: Distinguish the WebSocket protocol from the HTTP Protocol and describe the differences
  identify-secure-network-protocols:
    name: Identify and Analyze secure network protocols
    description: This standard deals with reading the raw data in network protocols and identifying the role and meaning of the data, as well as whether or not the data fits the protocol.
    objectives:
      0: Distinguish between open network protocols and their secure counterparts
      1: Distinguish secure traffic from insecure traffic using a packet sniffing tool, eg wireshark
      2: Distinguish TCP and UDP handshake protocols from TLS handshake protocols
  dns:
    name: Accurately configure and distinguish DNS records
    description: This standard deals with the ability to distinguish the different types of DNS records, explain how they behave and their purpose, and the skills to investigate the accuracy of the configuration of DNS records.
    objectives:
      0: Describe the purpose of DNS.
      1: Identify and distinguish between the components of the DNS hierarchy and their responsibilities
      2: Distinguish between DNS record types
      3: Use tools to analyze DNS queries
      4: Accurately configure DNS records
      5: Make DNS queries using `dig`.
      6: Identify the sections of a DNS query and resource record.
