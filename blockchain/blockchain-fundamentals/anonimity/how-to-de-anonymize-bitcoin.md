---
author: mihaiberq
type: normal
category: must-know
links:
  - >-
    [Bitcoin transactions are not that
    anonymous.](https://www.technologyreview.com/s/608716/bitcoin-transactions-arent-as-anonymous-as-everyone-hoped/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# How to De-Anonymize Bitcoin


---

## Content

In the previous insight, we mentioned a specific way of linking transactions to an online identity: joint payments. Most of the times, however, a single redeemed UTXO is enough to track someone if the transacted value is specific enough.

A bitcoin transaction can represent up to 8 digits after the decimal points (`0.000000001 bitcoin` is called a `satoshi`), so the distribution space is large. If someone is to know the exact value of your transaction and a timeframe in which you had initiated the transaction, there's a chance they could track your address. If we assume a uniform distribution over the `[1, 10^8)` interval, and know that the maximum number of transactions per second Bitcoin can handle is 7, it would probabilistically take around 14 years for a second transaction with the same exact decimals to appear. While, in reality, the distribution is not uniform, you can still be certain that, for a longer or shorter period of time, the transaction can be correctly identified.

And depending on where they found out about the exact value of the transaction, they can even know your real identity. By transacting with anyone in person, you are linking your identity to the address they received coins from. By donating bitcoins and sharing the donation confirmation to incentivize others to do the same, you are also revealing your blockchain identity.

Why should you care though? Well, chances are you won't have that many bitcoins anyway. If you made a good investment and have a large sum of money in your bank account, there's a slim chance of anyone knowing it unless you told someone. But your Bitcoin address is public and will always be public.

If you decide to buy more bitcoins because you believe it is the coin of the future, what stops others from trying to steal your private key? Attention to details and precaution go a long way. To make the whole tracking process harder, *mixing services*, or simply mixers, appeared. 


---

## Practice

What is a property that is `not` required for one's Bitcoin activity to be unlinkable?

It should be hard to ???

- look up previous out transactions of the same user
- link together addresses of the same user
- link different transactions made by the same user
- link the sender to its recipient


---

## Revision

Which of the following practices reduces the chances (ever so slightly) of being de-anonymized?

???

- Creating a new address for each transaction
- Using the same service repeatedly
- Using an online exchange
- Combining multiple outputs into inputs for the same transaction
