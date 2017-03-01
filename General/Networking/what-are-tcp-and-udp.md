# What are TCP and UDP?
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - 'https://www.bleepingcomputer.com/tutorials/tcp-and-udp-ports-explained/'

---
## Content

"Both `TCP` and `UDP` are protocols that deal with sending bits of data - called packets over a network.

Because both are built on top of the **IP** (Internet Protocol), packets will be sent to an IP address. What differentiates `TCP` and `UDP` is the way the transfer of data is handled.

`TCP` (Transmission Control Protocol) is the most widely used protocol over the Internet mostly because its reliability. Its purpose is to ensure that all **packets** are received and *no errors* would corrupt files. Using this *method* the computer which is **sending** data would connect directly to the computer **receiving** data. This *ensures* a high level of confidence, being sure that using `TCP` all your data is *correctly* sent were it needs to be. After finishing the transfer the two computers **disconnect** the connection. This method tends to be *faster* and more *reliable*, but puts a higher *load* on the computer as it has to monitor the **connection** and the **data transfer** too.

`UDP` (User Datagram Protocol) helps doing the same thing, sharing *data* between two devices over a *network*. It acts in a different manner from `TCP` as in this case, the computer sending data, **packages** all *information* into one **packet** and then it releases into the **network**. This *method* is more unreliable, as you can never have the *certainty* that the **packet** ever will arrive at the *destination*. On the other hand this *method* has a very *low overhead* and it is very popular to use when you have a service that doesn't need to work from the *first time*.


---
## Practice

??? is more safe because within this method the communicating devices connect directly one to each other.

* `TCP`
* `UDP`
* `IP`

---
## Revision

??? is the method that place information into a packet and realeases it into the network.

* `UDP`
* `TCP`
* `IP`
