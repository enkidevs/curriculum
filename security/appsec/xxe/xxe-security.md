---
author: lizTheDeveloper
type: normal
category: best-practice
links:
  - >-
    [XML Security Cheat
    Sheet](https://cheatsheetseries.owasp.org/cheatsheets/XML_Security_Cheat_Sheet.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# XXE Security


---

## Content

Two main categories of vulnerability exist in XML processors that can be attack vectors beyond the remote execution of code and denial of service attacks. These come from the following techniques:

**Malformed XML Documents**: vulnerabilities using not well formed documents.

These document attack vectors include coercive parsing and using up machine resources with malformed data.

**Invalid XML Documents**: vulnerabilities using documents that do not have the expected structure.

These document attack vectors include improperly specified schemas allowing malicious structure attacks, problems arising from lack of type safety, and problems arising from lack of input validation. Note to watch out for extremely large payloads that are either abnormally deep, or abnormally broad, causing denial of service by improperly using up machine resources for parsing.

**Schema Poisoning** is considered to be within the Invalid XML Documents section, though these are technically correctly formed. Incorrect permissions can cause locally-defined schemas (schemas defined within the document users send) to execute remote code. Because Schema Poisoning need not be from the originating user (it can be accomplished with man-in-the-middle attacks), defend against this layer by not relying on client-side validation, which is what locally-defined schemas are.


---

## Practice

Which categories of error do XXE vulnerabilities fall into?

??? XML Documents: exploits vulnerabilities using not well formed documents.

??? XML Documents: exploits vulnerabilities using documents that do not have the expected structure.

- Malformed
- Invalid
- NonWellFormed
- Exception
- NonParseableDocument
- Broken


---

## Revision

Locally-defined Schemas in XML documents are vulnerable to:

???

- Schema Poisoning
- Schema Reversal
- Spam Filtering
- Exfiltration
