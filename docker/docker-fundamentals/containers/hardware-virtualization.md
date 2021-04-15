---
author: nem035
category: must-know
type: normal
links:
  - >-
    [Why Container Virtualization](https://medium.com/@anilktalla/why-container-virtualization-abb8bfc04048){documentation}
  - >-
    [Reasons to start using a
    VM](https://www.makeuseof.com/tag/reasons-start-using-virtual-machine/){article}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Virtualization

---

## Content

Historically, anyone wanting to run software typically had to buy a special type of hardware for every kind of operating system they wanted to support.

Purchasing and maintaining various physical devices was expensive.

Virtualization was invented as a response to this, enabling software to emulate a particular hardware system. This allowed us to run applications with different hardware requirements on the same physical machine, significantly lowering costs (now we could use less machines).

The virtualization software emulating the functionality of a physical computer is called a Virtual Machine (VM). It is an environment that imitates dedicated hardware, giving the user the same experience as they would have on the actual hardware.

From the user's perspective, the virtual machine is a real, physical computer.

Within each virtual machine we usually run a unique guest operating system. For example, if we wanted to run Windows on a MacOS machine, we would do it via virtualization software.

We could even run multiple VMs on the same physical device, each with a different operating system, significantly reducing the necessity for a lot of hardware.

Virtualization provides an abstraction on top of hardware that allowed development, execution, and deployment of software in a hardware-agnostic manner.

---

## Practice

Virtualization allows us to abstract away the hardware. This enables us to use ??? physical machines for running and deploying our software.

- fewer
- more
- cheap
- fast

---

## Revision

A virtual machine allows us to emulate ???.

- hardware
- software
- cpu
- applications
