---
author: lizTheDeveloper

levels:

  - beginner

  - basic

  - medium

aspects:

  - introduction

  - workout

type: normal

category: how to


standards:
  security.xxe.2: 10

links:
  - '[OWASP XXE Prevention](https://www.owasp.org/index.php/XML_External_Entity_(XXE)_Prevention_Cheat_Sheet)'
  - '[Apache XML Processor Specification - Disallow Doctype Declarations](http://apache.org/xml/features/disallow-doctype-decl)'


---

# XXE Prevention

---
## Content

The general guidance from OWASP in order to prevent XXE attacks is to disable DTDs entirely:
```python
include xmlparser

untrustedXML = request.body

xmlparser.set("disallowDoctypeDec", true)

xmlparser.set("doctype", "myDocType")
xmlparser.set("schema", "mySchema")
xmlparser.parse(untrustedXML)
```
`set` being an imaginary method that disallows doctype declarations within this set of parsed XML, and sets schemas. Instead of client-side doctypes and schemas, manually set the doctype and schema with server-side definitions on XML received from untrusted sources. Check your library's documentation for a similar feature or upgrade to a library that has this feature.

Bookmark this insight to receive links to OWASPs recommended upgrade paths and compliant XML libraries.

---
## Practice

Disable doctype declarations in the following code:

```python
include xmlparser

untrustedXML = request.body

xmlparser.set(???, true)

xmlparser.set("doctype", "myDocType")
xmlparser.set("schema", "mySchema")
xmlparser.parse(???)
```

* "disallowDoctypeDec"
* untrustedXML
* "disable"
* parse
* "secure"

---
## Revision

Parse the XML with an external schema and doctype rather than reading it from the document:
```python
include xmlparser

untrustedXML = request.body

xmlparser.set("disallowDoctypeDec", true)

xmlparser.set("doctype", "myDocType")
???
xmlparser.parse(untrustedXML)
```

* xmlparser.set("schema", "mySchema")
* xmlparser.set("doctype", "myDocType")
* xmlparser.parse(untrustedXML)
* untrustedXML = request.body
