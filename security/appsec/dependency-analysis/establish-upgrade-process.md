---
author: lizTheDeveloper
type: normal
category: best-practice
links:
  - >-
    [OWASP: Using Using Components with Known
    Vulnerabilities](https://owasp.org/www-project-top-ten/2017/A9_2017-Using_Components_with_Known_Vulnerabilities.html){website}
  - >-
    [NPM Audit - Automatic
    Fix](https://blog.npmjs.org/post/173719309445/npm-audit-identify-and-fix-insecure){website}
  - >-
    [Vulnerability remediation
    process](https://resources.whitesourcesoftware.com/blog-whitesource/3-essential-steps-for-your-vulnerability-remediation-process){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Establish Upgrade Process


---

## Content

Once you have analyzed source code and identified vulnerable components, those components need to be upgraded. It will take developers time to make these changes, and the priority should be balanced against the need to move the software forward against the risk of compromise.

Sometimes the upgrade path is simple. Sometimes a vulnerable component can be automatically upgraded, which is instant. *If an API change occurs between the current insecure version and the next most secure version, the upgrade path will not be simple.* A good way to visualize it is, find all instances of the use of that library in the source code. For each instance, generate a random number between 1 and 256. Add up all of those numbers - that's how long it may take to update every instance of that library in minutes.

Many teams have found success devoting time quarterly to fixing security problems for non-sensitive information. For sensitive information, such as financial data, the upgrade process may be defined by government regulation.

In order to determine an upgrade process, and how quickly it should happen:

0. Check your local government's laws and requirements on data safety.
1. Determine what data from your application must be immediately protected.  
2. Scan your application for vulnerabilities
3. Apply automatic patches where possible
4. Schedule the upgrade of vulnerable components with the project lead


---

## Practice

What order should these steps be taken in?

???
???  
???
???
???

- Check your local government's laws and requirements on data safety.
- Determine what data from your application must be immediately protected.
- Scan your application for vulnerabilities
- Apply automatic patches where possible
- Schedule the upgrade of vulnerable components with the project lead


---

## Revision

Automatic upgrades can be applied ??? while upgrades requiring an update of the API can take ???.

- instantly
- weeks or months
- in a few minutes
- years
- a quarter
