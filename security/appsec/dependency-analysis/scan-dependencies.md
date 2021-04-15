---
author: lizTheDeveloper
type: normal
category: how-to
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
  - '[Sonatype OSS Index](https://ossindex.sonatype.org/){website}'
  - '[Dependency Check](https://owasp.org/www-project-dependency-check/){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Scan Dependencies


---

## Content

There are many scanning tools for source code available on the market, many of the best ones are open-source labors of love. Below are some of the top resources for scanning source code, broken down by language / ecosystem.

### General

- [Sonatype OSS Index](https://ossindex.sonatype.org/) for JavaScript, Go, Python, and others[1]
- [Dependency Check](https://owasp.org/www-project-dependency-check/) tool from OWASP, supports Java, .NET, JavaScript, Ruby

### Python

- [Snyk for Python](https://snyk.io/)

### Java

- [Snyk for Maven](https://snyk.io/)

### JavaScript

- NPM has it integrated directly with `npm audit`: <https://docs.npmjs.com/cli/audit>
- ESLint has a package that allows security linting, called [eslint-plugin-security](https://github.com/nodesecurity/eslint-plugin-security)

### Ruby

- [Bundler-audit](https://github.com/rubysec/bundler-audit)
- [Hakiri](https://hakiri.io/)

> 💡 Some version control systems will automatically scan dependencies in public repositories. One example is the [Sonatype OSS Index](https://ossindex.sonatype.org/).

Use the *edit this insight* feature if you have recommendations or see out of date tools.


---

## Practice

Check a Node.js project for vulnerabilities using an automatic dependency analyzer:  

```bash
npm ???
```

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


---

## Footnotes

[1:Sonatype OSS Index Ecosystems]
You can check the full list of supported ecosystems on [Sonatype's official website](https://ossindex.sonatype.org/ecosystems).
