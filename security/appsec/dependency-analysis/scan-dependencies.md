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

category: how to


standards:
  security.analyze-dependencies.1: 20

links:
  - '[Dependency Scanner Blog Post](https://techbeacon.com/app-dev-testing/13-tools-checking-security-risk-open-source-dependencies)'
  - '[NPM Audit](https://docs.npmjs.com/cli/audit)'
  - '[eslint-plugin-security](https://github.com/nodesecurity/eslint-plugin-security)'
  - '[Snyk](https://snyk.io/docs/snyk-for-java/)'
  - '[Bundler-audit](https://github.com/rubysec/bundler-audit)'
  - '[Hakiri](https://hakiri.io/)'
  - '[OSS Index](https://ossindex.net/)'
  - '[Dependency Check](https://www.owasp.org/index.php/OWASP_Dependency_Check)'
  - '[Gemnasium](https://gemnasium.com/)'
  - '[SRC:CLR](https://srcclr.com/?utm_source=enki.com)'

---

# Scan Dependencies

---
## Content

There are many scanning tools for source code available on the market, many of the best ones are open-source labors of love. Below are some of the top resources for scanning source code, broken down by language / ecosystem.

### General
- [OSS Index](https://ossindex.net/) for Java, .NET, C#, JavaScript
- [Dependency Check](https://www.owasp.org/index.php/OWASP_Dependency_Check) tool from OWASP, supports Java, .NET, JavaScript, Ruby
- [Gemnasium](https://gemnasium.com/) for Ruby, NPM & Bower, PHP, Python
- [SRC:CLR](https://srcclr.com/) for many languages, using IDE integration

### Java
- [Snyk for Maven](https://snyk.io/)

### JavaScript
- NPM has it integrated directly with `npm audit`: https://docs.npmjs.com/cli/audit
- ESLint has a package that allows security linting, called [eslint-plugin-security](https://github.com/nodesecurity/eslint-plugin-security)

### Ruby
- [Bundler-audit](https://github.com/rubysec/bundler-audit)
- [Hakiri](https://hakiri.io/)



Bookmark this insight for links to all the resources above, and a link to _edit this insight_ if you have recommendations or see out of date tools.
---
## Practice

Check a Node.js project for vulnerabilities using an automatic dependency analyzer:  

`npm ???`   

* audit
* scan
* security
* secure

---
## Revision

In order to find vulnerabilities in your dependencies you should ???.

* Use a source-code scanning tool
* Manually review all the code
* Hire a penetration testing team
