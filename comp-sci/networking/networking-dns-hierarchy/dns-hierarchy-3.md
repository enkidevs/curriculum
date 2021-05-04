---
author: amgando
type: normal
category: feature
links:
  - >-
    [What is a Domain Name Registrar?](https://www.cloudflare.com/en-gb/learning/dns/glossary/what-is-a-domain-name-registrar/){documentation}
  - >-
    [Registry, Registrar, Registrant](https://uk.godaddy.com/help/what-is-the-difference-between-a-registry-registrar-and-registrant-8039){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# DNS Hierarchy


---

## Content

One of the most important intermediaries between the owners (and prospective owners) of domain names and the DNS hierarchy is a registrar. There are many DNS registrars world wide and their responsibility is to make a customers authoritative DNS servers available in the global DNS system. Registrars also facilitate the purchase of domain names.

Crucially, registrars coordinate with registries (yes -- the names are confusing). There are only 5 regional Internet registries (RIR):

- African Network Information Center (AFRINIC) for Africa
- American Registry for Internet Numbers (ARIN) for the United States, Canada, several parts of the Caribbean region, and Antarctica.
- Asia-Pacific Network Information Centre (APNIC) for Asia, Australia, New Zealand, and neighboring countries
- Latin America and Caribbean Network Information Centre (LACNIC) for Latin America and parts of the Caribbean region
- Réseaux IP Européens Network Coordination Centre (RIPE NCC) for Europe, Russia, West Asia, and Central Asia

These registries act as the source of truth for which domains names are available. Registrars interact with these regional Internet registries in order to ensure that only one entity is ever given a particular domain name.

Registrars also coordinate with the groups that manage TLD servers. Recall that the domain owner is responsible for managing (or paying someone to manage) an authoritative DNS server for their domain name. The registrar is responsible for making sure that the appropriate TLD servers have NS and A records for the owners DNS server.

While it is not strictly the responsibility of a registrar to operate any authoritative name servers, many registrars including Namecheap and GoDaddy maintain authoritative name servers on behalf of their customers.


---

## Practice

When you register your domain name with a DNS registrar, which of the following best describes the service provided by the registrar?

???

- The registrar creates an NS record and an A record for your authoritative name server and inserts them into the appropriate TLD servers.
- The registrar creates an A record for your web server and inserts it into their authoritative servers.
- The registrar creates an NS record and an A record for your web server and inserts them into the appropriate TLD servers.
- The registrar creates an NS and an A record for your authoritative name server and inserts them into all of the root DNS servers.


---

## Revision

A registrar inserts an NS and an A record for a customer's ??? into the proper ??? in order to make a domain available through DNS. This single action is ??? to make the customers web service available through DNS.

- authoritative server
- top level domain server
- insufficient
- root server
- sufficient
