# Network models
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - 'http://what-when-how.com/data-communications-and-networking/network-models-data-communications-and-networking/'

---
## Content

In order to ease the *complexity* of networking engineering, the whole networking concept has been divided into multiple **layers**.

In *layered* architecture of Network Model, one whole network *process* is divided into small different **tasks**. Each small *task* is assigned to a particular layer which works dedicated to *process* the task only. Every **layer** does **only** specific work.

-**

`OSI(Open System Interconnect) Model`

It is an open standard for all **communications**. This model has *seven layers*:

- `Application Layer` this layer is responsible for providing an *interface* for the application user.
- `Presentation Layer` this layer defines how native data in format of the *remote* host should be represented in the native format of the *host*.
- `Session Layer` this layer maintains sessions between *remote hosts*.
- `Transport Layer` this layer is responsible for *end-to-end delivery* of the data.
- `Network Layer` this layer is responsible with address *assigning* and uniquely addressing *hosts* in a network.
- `Data Link Layer` this layer is responsible with *reading* and *writing* data from and on to the *band*.  
- `Physical Layer` this layer defines the *hardware*.

-**

`Internet Model`

**Internet** uses `TCP/IP` protocol suite. This model contains a *four layered* architecture. `OSI` model is the *general communication* model, but **internet** uses `Internet` model for all it's communications.

The four **layers** taking part of the `Internet` model architecture are:

- `Application` layer is the layer that defines the **protocol** which enables users to interact with the network.
- `Transport` layer, it ensures that the *delivered data* is in-order, it is responsible for the *end-to-end* communication as well.
- `Internet` layer, it defines the (`IP`) Internet protocol.
- `Link` layer, it provides the ability of *sending* and *receiving* data.


---
## Practice

??? have been in networking in order to reduce complexity.

* **layers**
* **protocols**
* **tasks**

---
## Revision

??? layer is responsible for *sending* and *receiving* actual data in the `Internet` model.

* `Link`
* `Internet`
* `Transport`
