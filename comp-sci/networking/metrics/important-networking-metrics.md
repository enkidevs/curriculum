---
author: catalin
type: normal
category: must-know
links:
  - >-
    [www.techopedia.com](https://www.techopedia.com/definition/8319/metric-networking){website}
  - >-
    [www.informit.com](http://www.informit.com/articles/article.aspx?p=26129&seqNum=7){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Important networking metrics


---

## Content

**Metrics** are used to verify desired behaviours of processes in a *quantitative* and *qualitative* manner.

This is also the case in *computer networks* where metrics can help us identify underlying problems, enhance connections or even decide for the most suitable Internet plans.

The effective performance of a network is defined by the combination of different metrics which may vary because each network is unique in its nature and design.[1]

However, there are some standard and relevant measurements applicable to any network:

- `bandwidth` - maximum rate at which information can be transferred
- `throughput` - actual rate at which information is transferred
- `latency` - delay between sending a request and receiving a response
- `jitter` - time difference in packet inter-arrival time (we'll get back to this in the following insights)
- `error rate` - number of corrupted bits

Another important metric is `packet loss`, measuring what percentage of packets is lost while transferring data over a network.

This is not always applicable as **TCP** was designed to solve this exact problem, guaranteeing `0` packet loss.

However, in streaming media and online game applications - which use **UDP**, packet loss can affect the user experience.


---

## Practice

Measuring which of the following has no sense on **TCP** connections?

???

- `packet loss`
- `jitter`
- `latency`
- `bandwidth`


---

## Revision

Which of the following metrics define maximum rate that information can be transferred?

???

- `bandwidth`
- `jitter`
- `error rate`
- `latency`
- `throughput`


---

## Footnotes

[1:Measuring performance]
It's not mandatory to measure performance. Instead it can also be modelled and simulated.

One such example is using state transition diagrams to model queuing performance using a **network simulator**.
