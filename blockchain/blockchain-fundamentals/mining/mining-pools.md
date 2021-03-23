---
author: mihaiberq
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Mining Pools


---

## Content

Bitcoin mining has become too difficult for anyone to have a chance of finding a block by themselves, even with the most expensive ASICs. The CPU solo mining feature was even removed from the main Bitcoin client in 2016. Luckily, the Bitcoin protocol supports pooling.

A **pool** is a distributed network of computers that combines the processing power of all members to increase the chance of finding the nonce. Because the block must contain some of the miner's information, the block is mined in the name of the pool.

On `blockchain.info` you can see the last blocks mined and who relayed them. Most of the times, you will find pool names - *ViaBTC*, *BTC.com* or *F2Pool*.

So users give up the (extremely small) chance of getting the full reward for themselves for a more steady income. If the pool is to find a block, the reward is distributed to members following a set of rules.

One of the more popular ways of splitting the reward left after the pool manager had taken their fee is to count *mining shares*. A mining share is a hash proposed by a miner that doesn't quite meet the network requirement (say 15 0's) but it is close to it (12-14 0's).

Also, because the rework is split based on the work done, the miner who found the right nonce won't get any extra shares - so if another miner had more shares, they will receive a bigger cut.

Mining pools can also swap between mined coins to maximize the profit. This implies that the two puzzles require the same computations.

But mining in a pool has its own downsides: if the pools goes offline, the miners won't produce anything either. There's also a chance that the pool manager keeps the entire reward for himself.


---

## Practice

Identify a pro and a con of mining in a pool:

pro: ???

con: ???

- steadier income
- downtime independent of miner
- higher uptime
- high reward
- no fees


---

## Revision

For most cryptocurrencies, solo mining stops being profitable after the first few months. To increase the chance of payouts, it is recommended to join ???

- a mining pool
- a mining tree
- a congregation
- a mine
