---
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

aspects:

  - deep

  - workout

links:

  - '[what-when-how.com](http://what-when-how.com/data-communications-and-networking/network-models-data-communications-and-networking/){website}'
  - '[www.webopedia.com](http://www.webopedia.com/quick_ref/OSI_Layers.asp){website}'

parent: types-of-networks

---

# Network models

---
## Content

In order to ease the *complexity* of network engineering, the **networking communication** concept was divided into multiple **layers**.

In the *layered* architecture of a **Network Model**, one whole network *process* is divided into small different **tasks**.

Each  *task* is assigned to a particular layer, dedicated to that task alone. Conclusively, every **layer** performs a specific function.


### OSI (Open System Interconnect) Model

`OSI` is an open standard for all network **communications**. This model defines a paradigm to implement protocols in *seven layers*.

- `Application` Layer: provides an *interface* needed by applications to communicate within a network
- `Presentation` Layer: checks the data to ensure that it's compatible with the communications resources
- `Session` Layer: handles authentication and authorization functions
- `Transport` Layer: ensures the complete delivery of the data
- `Network` Layer: handles packet **routing** via logical addressing and switching functions
- `Data Link` Layer: transfers data between adjacent network nodes
- `Physical` Layer: supports the electrical or mechanical interface to the **physical** medium

During data transmission, each *layer* adds a **header** to the data that *directs and identifies* the packet (a process called encapsulation). The encapsulated packet is sent to the next layer that, in turn, adds its header and so on.

The combined encapsulated packet is then transmitted and received.

The receiving computer reverses the process, extracting the data at each *layer* with the **header** information directing what needs to be done. Before passing the data up the **OSI stack** each layer respectively strips off its header. Finally, when the process is finished, the data can be used by applications.

### `TCP/IP` Internet Model

The `TCP/IP` stack, pre-dating the model discussed above, is a layered protocol and is based on standard protocols around which the Internet has developed.

The four **layers** taking part of the *Internet` model* architecture are:

- `Application` Layer: defines the **protocol** which enables applications to interact with lower layers
- `Transport` Layer: ensures that the *delivered data* is in-order
- `Internet` Layer: responsible for addressing, packaging, and routing functions
- `Network Interface` Layer: provides the means for the system to deliver data to the other devices on a directly attached network


**TCP/IP** is the older of the two approaches to data communications and is well established throughout the world.

 The **OSI model**, however, is a proven concept that is used in all other data communications protocols. It will continue to be used as a guideline for all other communications applications.

---
## Practice

Which of the following layers of the **Internet model** is responsible for addressing data transmitted?

???


* Internet
* Transport
* Application
* Network Interface

---
## Revision

Which of the following layers of the **OSI model** handles the routing of data?

???


* Network
* Transport
* Application
* Internet
* Session
* Presentation


