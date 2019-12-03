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
             	
If someone tracks your address, they would be able to find out your recipient. To avoid that, mixers may take fixed payments of `0.01` bitcoins and send the remainder back to one of your addresses later. The out payments are also released after a random interval of time.
             	
Legality is another issue mixing services have to deal with. Because mixing services can be used to launder money and to protect themselves and their business, they may refuse to mix transactions that exceed a certain threshold.
             	
Remember that mixers are centralized. They are controlled by single entity which has the power to store your bitcoins and never actually complete your transactions. Due diligence is therefore needed when using such a service to ensure that it is reputable and trustworthy.

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

