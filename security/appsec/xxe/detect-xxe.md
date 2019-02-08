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
  topic-slug.standard-slug.objective-number: points (10 for insights, 1000 for exercises)

links:
  - '[XXE Processing](https://www.owasp.org/index.php/XML_External_Entity_(XXE)_Processing)'
  - '[Testing for XML Injection](https://www.owasp.org/index.php/Testing_for_XML_Injection_(OTG-INPVAL-008))'
  - '[XXE Exploit Walkthrough](https://resources.infosecinstitute.com/finding-and-exploiting-xxe-xml-external-entities-injection/#gref)'


---

# Detect XXE

---
## Content

Ask yourself these questions to determine if you are vulnerable:

- Does my application accept DTDs (external entities)?
- Does my application accept unescaped XML?
- Does my application accept external stylesheets for XML?


The best way to detect if your XML processing is vulnerable is to check the library that you're using, to see if any vulnerabilities have been logged for it. Then, update the dependency to the safe version and configuration, as most libraries have been patched for quite some time.

### What if I have custom XML processing code?

Reflect on whether or not you need custom code for this task. Even using a library to pre-process the XML before you apply custom business logic will provide you with security features that you are not tasked with maintaining.

Using a library that is designed for the task is similar to herd immunity- when we are all using the same code, we're all hardening it together. This way you benefit from the vigilance of many developers, rather than only your own. If you're able to find problems with the library, consider contributing your fixes, rather than building your own.

If you _really absolutely have to build your own_ understand that it is a sensitive and large undertaking that puts your customers' data at risk, and should be a thoroughly researched and maintained internal module.

Bookmark this insight to receive step-by-step walkthroughs on how to test for XXE vulnerabilities.

---
## Practice

What's the best way to prevent XXE attacks?
???

What should you disable to prevent them?
???

* Use a library designed for the job
* External entities
* XML Processors
* XML
* Prevent unescaped user input
* Code Execution

---
## Revision

Writing your own custom ??? code can expose user data to ??? attacks.

* XML Processing
* XXE
* Cryptography
* User Input Validation
* SQL Injection
* XXR
