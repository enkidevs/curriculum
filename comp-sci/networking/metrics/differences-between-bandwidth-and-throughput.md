---
author: catalin
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

# Differences between bandwidth and throughput


---

## Content

Both `bandwidth`  and `throughput` are metrics used to describe the performance of data transfer over a network segment (a link from a point `A` to a point `B`).

However, there is a big difference between the two:

- `bandwidth` refers to the **maximum** theoretic amount of data (number of packets) that can be sent on the channel, regardless of practical considerations
- `throughput` refers to the **actual** amount of data that travels through the segment successfully

This distinction can be better exemplified by an example.

A *highway* has the capacity of moving 300 cars at the same time - this is `bandwidth`. Most of the time, however, due to congestion or jams, the actual number of cars that it can move is around 200 - this is `throughput`.

This distinction is relevant as **ISPs** [1] usually advertise their `bandwidth` which is often higher than the `throughput` you will receive.

These metrics are computed over a **single unit of time**, being expressed in bits per seconds (`bps`).

Modern networks are much faster and therefore have their speed measured in millions of bits per second, megabits per second (`Mbps`) or in billions of bits per second, gigabits per second (`Gbps`).


---

## Practice

Which of the following metric refers to the **maximum theoretical** speed data can move over a network link?

???

- `bandwidth`
- `throughput`
- `jitter`
- `lag`


---

## Revision

Which of the following metric refers to the **actual** speed data can move over a network segment?

???

- `throughput`
- `jitter`
- `latency`
- `bandwidth`


---

## Footnotes

[1: ISP]
Internet Service Provider.
