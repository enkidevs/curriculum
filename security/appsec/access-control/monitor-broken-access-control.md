---
author: lizTheDeveloper
type: normal
category: best-practice
links:
  - >-
    [Event Log
    Management](https://www.whatsupgold.com/best-practices/event-log-management/){website}
  - >-
    [Best Practices for audit
    logs](https://www.computerweekly.com/tip/Best-practices-for-audit-log-review-for-IT-security-investigations){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Monitor Broken Access Control


---

## Content

Monitoring and logging can help identify and mitigate incumbent problems around access control. They can also help clean up the damage after many kinds of attacks , such as allowing you to reverse malicious use of the program.

In your application, ensure that all access to the system is logged, but *especially all credentialed access*. Ensure that your application logs the following data:

- the IP address, geolocation, and other identifying data about the client (browser, etc)
- The credential presented (or ID number in the case of a physical credential)
- The time and date
- The resource visited and action taken
- The result of the determination of the validity of the credential

The reasoning behind the last one is that if a user is attempting to use a credential that is not valid, you may be able to identify anomalous use based on some pattern of use. For example, a web-crawler may systematically try each URL in turn with a credential it believes to be valid, but a user may not exhibit this behavior. You may or may not put automated defenses at this level, but this is undoubtedly helpful for diagnosing credentials that are being abused.


---

## Practice

Why does logging and monitoring access control help identify access control vulnerabilities?

???

- You will be able to identify anomalous use
- You can prove who did what
- You will be able to prove you weren't involved


---

## Revision

Make sure to log what information in order to properly monitor access control violations:  

The IP address, geolocation, and other identifying data about the client  
The ??? presented  
The time and date  
The resource visited and action taken  
The result of ???  

- credential
- the determination of the validity of the credential
- The user's name
- The number of times the user has presented this credential
