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
  blockchain.analyze-network-security-policy.8: 10

aspects:

  - introduction

  - deep

links:
  - '[Bitcoin transactions are not that anonymous.](https://www.technologyreview.com/s/608716/bitcoin-transactions-arent-as-anonymous-as-everyone-hoped/)'

---
# How to De-Anonymize Bitcoin

---
## Content

In the previous insight, we mentioned a specific way of linking transactions to an online identity: joint payments. Most of the times, however, a single redeemed UTXO is enough to track someone if the transacted value is specific enough.
             	
A bitcoin transaction can represent up to 8 digits after the decimal points (`0.000000001 bitcoin` is called a `satoshi`), so the distribution space is large. If someone knows the exact value of your transaction and the timeframe in which you initiated the transaction, there's a chance they could track your address. If we assume a uniform distribution over the `[1, 10^8)` interval, and know that the maximum number of transactions per second Bitcoin can handle is 7, it would take on average around 14 years for a second transaction with the same exact decimals to appear. While, in reality, the distribution is not uniform, you can still be certain that, for a longer or shorter period of time, the transaction can be correctly identified.
       	      
What's more, depending on the location where the exact value of the transaction was discovered, your real identity can also be traced. By transacting with anyone in person, you are linking your identity to the address they received coins from. Even donating bitcoins and sharing the donation confirmation to incentivize others to do the same, can reveal your blockchain identity.
             	
Why should you care though? Well, chances are you won't have that many bitcoins anyway. Perhaps you made a smart investment and have a large sum of money in your bank account. There's only slim chance of anyone knowing your blockchain identity unless you told someone. But your Bitcoin address is and always will be public.
             	
If you do decide to buy more bitcoins because you believe it is the coin of the future, it is important to remember that   attention to detail and precaution can go a long way towards preventing others from stealing your private key. 


---
## Practice

What is a property that is `not` required for one's Bitcoin activity to be unlinkable?
             	
It should be hard to ???
             	
* look up previous out transactions of the same user
* link together addresses of the same user
* link different transactions made by the same user
* link the sender to its recipient

---
## Revision

Which of the following practices reduces the chances (ever so slightly) of being de-anonymized?
             	
???
      	       
* Creating a new address for each transaction
* Using the same service repeatedly
* Using an online exchange
* Combining multiple outputs into inputs for the same transaction
