---
author: lizTheDeveloper
type: normal
category: best-practice
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Upgrade Process Cadence


---

## Content

Now that you know that your application probably has some dependencies that have vulnerabilities, **evaluate the risk-to-effort tradeoff to upgrade**. Sometimes upgrading a module means *weeks of effort* because of significant API changes. Not all bugs in an application are fixed right away, and not all vulnerabilities are trivial to exploit.

For most applications (web applications not storing credit cards, classified information, etc), unless you are actively being targeted by hackers, a quarterly upgrade process for changes that aren't automatically-fixable (a simple package update with no changes) should be sufficient.

For highly-secure applications which must contain no known vulnerabilities (HIPAA, storing secure information like credit history, etc), auditing should be integrated into the code review process and issues should be resolved before release.

For applications that feel like they don't fall into either of the above bucket, consider what secure data you do store. You may store payment tokens (from a payment gateway) or passwords that users may be reusing elsewhere. Maybe you have a small userbase and you've never been under attack because "no one knows about you".

Treat security debt as technical debt that is unpredictable; more like an earthquake than a hurricane. Once exploits are developed, attackers will write them into scripts that anyone can run. A proliferation of bots will begin to crawl the web looking for vulnerable targets, and at that point you are a simple opportunistic data grab. Often this occurs without you even realizing it, so don't wait for some alarm to go off somewhere. **The probability that you'll be breached from a known vulnerable component rises over time proportional to the number of detectable affected users.**


---

## Practice

When will you find out that your data has been compromised?

???

- You won't
- When the data breach alarm goes off
- When my boss sends me an email
- When it appears in the news


---

## Revision

The probability that you'll be breached from a known vulnerable component ??? over time proportional to ???.

- rises
- the number of detectable affected users
- falls
- the number of active prevention measures in place
- the number of hackers that know about the vulnerability
