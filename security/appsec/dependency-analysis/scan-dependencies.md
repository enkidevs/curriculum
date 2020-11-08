---
author: lizTheDeveloper

type: normal

category: how to

links:
  - >-
    [Dependency Scanner Blog
    Post](https://techbeacon.com/app-dev-testing/13-tools-checking-security-risk-open-source-dependencies){website}
  - '[NPM Audit](https://docs.npmjs.com/cli/audit){website}'
  - >-
    [eslint-plugin-security](https://github.com/nodesecurity/eslint-plugin-security){website}
  - '[Snyk](https://snyk.io/docs/snyk-for-java/){website}'
  - '[Bundler-audit](https://github.com/rubysec/bundler-audit){website}'
  - '[Hakiri](https://hakiri.io/){website}'
  - '[OSS Index](https://ossindex.net/){website}'
  - >-
    [Dependency
    Check](https://owasp.org/www-project-dependency-check/){website}

---

# Scan Dependencies

---

## Content

There are many scanning tools for source code available on the market, many of the best ones are open-source labors of love. Below are some of the top resources for scanning source code, broken down by language / ecosystem.

### General

- [OSS Index](https://ossindex.net/) for Java, .NET, C#, JavaScript
- [Dependency Check](https://owasp.org/www-project-dependency-check/) tool from OWASP, supports Java, .NET, JavaScript, Ruby

### Python 

- [Snyk for python](https://snyk.io/)

### Java

- [Snyk for Maven](https://snyk.io/)

### JavaScript

- NPM has it integrated directly with `npm audit`: <https://docs.npmjs.com/cli/audit>
- ESLint has a package that allows security linting, called [eslint-plugin-security](https://github.com/nodesecurity/eslint-plugin-security)

### Ruby

- [Bundler-audit](https://github.com/rubysec/bundler-audit)
- [Hakiri](https://hakiri.io/)

### Other

- Some version control systems will automatically scan dependencies in public repositories.

Use the *edit this insight* feature if you have recommendations or see out of date tools.

---

## Practice

Check a Node.js project for vulnerabilities using an automatic dependency analyzer:  

`npm ???`   

- audit
- scan
- security
- secure

---

## Revision

In order to find vulnerabilities in your dependencies you should ???.

- Use a source-code scanning tool
- Manually review all the code
- Hire a penetration testing team
