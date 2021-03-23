---
author: SebaRaba
type: normal
category: must-know
links:
  - >-
    [Network Models (Data Communications and Networking)](http://what-when-how.com/data-communications-and-networking/network-models-data-communications-and-networking/){website}
  - >-
    [The 7 Layers of the OSI Model](http://www.webopedia.com/quick_ref/OSI_Layers.asp){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
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


---

## Practice

Which of the following layers of the **OSI model** handles the routing of data?

???

- Network
- Transport
- Application
- Internet
- Session
- Presentation
