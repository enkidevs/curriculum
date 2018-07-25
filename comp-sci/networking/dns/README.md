name: DNS

description: Domain Name Servers - How do they work?

standards:
    dns:
      name: Accurately identify, configure, and interpret DNS records
      description: This standard deals with the ability to distinguish between the different types of DNS records, explain their purpose, describe the system of servers/clients that use them, and the tools/commands to investigate and debug the configuration of DNS records.
      objectives:
        0: Describe the purpose of DNS.
        1: Describe why names and IP addresses are not 1-to-1 relationships (e.g. anycast, load balancing via DNS).
        2: Identify and contrast different DNS record types; especially NS, A, AAAA.
        3: Define the DNS Hierarchy and its purpose.
        4: Contrast DNS Resolvers with DNS Name Servers.
        5: Make DNS queries using `dig`.
        6: Identify the sections of a DNS query and resource record.

insights:
  - dns-purpose-1.md
  - dns-purpose-2.md
  - dns-purpose-3.md
  - dns-record-type-1.md
  - dns-record-type-2.md
  - dns-duplicity.md
  - dns-hierarchy-1.md
  - dns-hierarchy-2.md
  - dns-hierarchy-3.md
  - dns-hierarchy-4.md
  - dns-record-format-1.md
  - dns-record-format-2.md
  - dns-record-format-3.md
  - dns-record-format-4.md
  - dns-record-format-5.md

exercises:
  - dns-and-dig-part-1.md
  - dns-and-dig-part-2.md
