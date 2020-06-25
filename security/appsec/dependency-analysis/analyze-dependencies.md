---
author: lizTheDeveloper

levels:

  - beginner

  - basic

  - medium

  - advanced

aspects:

  - introduction

  - new

  - workout

  - deep

type: normal

category: best practice


standards:
  security.analyze-dependencies.1: 10

links:
  - '[Python package analyzer](https://pip.pypa.io/en/stable/reference/pip_freeze/)'

---

# Analyze Dependencies

---
## Content

Security Researchers have been working on a project together called the Common Enumeration of Vulnerabilities. This database of common vulnerabilities allows application developers and security researchers to browse lists of documented known vulnerabilities.

Using this database we can determine which application dependencies (libraries, protocols, vendors) are insecure, and _at which versions_. If you have your application dependencies and their version numbers enumerated in a dependency file, it can be quickly scanned for vulnerable components.

In JavaScript, a dependency file means a `package.json` file. In ruby, this is your `gems.rb` file. In python, `requirements.txt` produced from `pip freeze` is where your dependencies can be found. **All applications should have a machine readable file describing the libraries and other assets**. You can search "languageName dependency file" to find which package manager a language uses, and what it's dependency file looks like.

This file can be scanned with a tool. The search phrase "languageName vulnerability scanning tool".
 
---
## Practice

CVE stands for ??? ??? and ???

* Common
* Vulnerabilities
* Exposures
* Catastrophic
* Viruses
* Exchange
* Executables
* Virtual
* Community

---
## Revision

A dependency file allows you to ??? for ??? because you know all of the dependencies and their ??? numbers.

* Scan
* Known Vulnerabilities
* Version
* Mark
* Removal
* CVE
