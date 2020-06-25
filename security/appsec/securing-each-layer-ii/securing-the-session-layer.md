---
author: milesflo

levels:

  - beginner

  - basic

  - medium

type: normal

category: must-know

aspects:
  - introduction
  - workout

inAlgoPool: false


links:

  - '[SANS Institute](https://www.sans.org/reading-room/whitepapers/protocols/applying-osi-layer-network-model-information-security-1309){website}'


---

# Securing the Session Layer

---
## Content

The Session Layer deals with authentication and privileges on all Layers above. If an account with escalated privileges is compromised, a hacker could wreak havoc on a network. Therefore, the Session Layer is often the most appealing Layer to hackers.

One method employed by hackers to gain a target's login credentials is the **brute force** approach. This involves using a large web of remotely controlled machines, called a [botnet](https://www.sans.org/reading-room/whitepapers/malicious/bots-botnet-overview-1299), to attempt all possible permutation of what the password of the associated account could be. While [creating a strong password](https://www.howtogeek.com/195430/how-to-create-a-strong-password-and-remember-it/) that is not [commonly used](http://www.passwordrandom.com/most-popular-passwords) will greatly reduce the probability of the account being compromising, this will always be a non-zero possibility with password-based authentication. To reduce this chance even further, one could implement a control that blacklists IP address after enough failed attempts, such as [fail2ban](https://www.digitalocean.com/community/tutorials/how-to-protect-ssh-with-fail2ban-on-ubuntu-14-04) for SSH. Even if a hacker knowingly attempts to brute-force a network, it would not be long before every node in their botnet is blacklisted.
 
---
## Practice

What is one control in the Session Layer of the OSI Model?
???


* Using a strong, unique password
* Strict use of ports as they are designed
* Use of a physical firewall
* Using managed switches prevent topographical loops
* Locks and secure enclosures

---
## Revision

Hackers may use a botnet to guess passwords via ???.


* brute-force
* guessing
* machine learning
* social engineering

---
## Quiz
### What is one control for this OSI model Layer?
```
What is one control in the Session Layer of the OSI Model?
```

 ???

* Using a strong, unique password
* Strict use of ports as they are designed
* Use of a physical firewall
* Using managed switches prevent topographical loops
