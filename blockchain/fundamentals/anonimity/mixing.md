---
author: mihaiberq

levels:

  - basic

  - medium

type: normal

category: must-know

standards:
  blockchain.identify-blockchain-applications.2: 10
  blockchain.identify-blockchain-applications.3: 10

aspects:

  - introduction

  - deep

---
# Mixing


---
## Content

A **mixer** (tumbler) is an intermediary service that makes sure the bitcoins you sent to your recipient aren't yours.

You can think of it as an intermediary to which multiple people send *their bitcoins* (as UTXO) and a recipient address and the mixer makes sure to send further *other bitcoins*. But `0.0023256` in would still be `0.0023256` out, even redeemed through another UTXO. 

If someone tracks your address, they would be able to find out your recipient. To avoid that, mixers may take fixed payments of `0.01` bitcoins and would send the reminder back to one of your addresses later. The out payments are also released after a random interval of time.

Legality is another issue mixing services have to deal with. Because they can be used to laundry money, to protect themselves and their business, they may refuse to mix transactions of more than a certain threshold.

But remember that mixers are centralized. They are controlled by single entity has to power to store your bitcoins and never actually make the transaction forward. Due dilligence is needed when using such a service to ensure that it is reputable and trustworthy.

---
## Practice

Why would a bitcoin holder use a mixer?

???

* To reduce the chance of being tracked
* To gamble
* To meet other holders
* The network demands so

---
## Revision

Why would a bitcoin holder use a mixer?

???

* To reduce the chance of being tracked
* To gamble
* To meet other holders
* The network demands so

