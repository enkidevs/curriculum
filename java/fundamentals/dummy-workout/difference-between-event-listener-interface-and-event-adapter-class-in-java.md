---
author: pawel

levels:
  - advanced
  - medium

type: normal

category: tip

tags:
  - event-adapters
  - event-listeners

notes: ''

links:

  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/uiswing/events/generalrules.html#eventAdapters){website}

---
# Difference between `Event Listener` interface  and `Event Adapter` class in Java

---
## Content

An event-listener interface defines the methods that must be implemented by an event handler for a particular kind of event. 

An event adapter provides a default implementation of an event-listener interface. 

Some listener interfaces contain more than one method. For example the MouseListener interface contains five different methods. Even if you need to use only one, compiler still requires all five methods implemented (they can be left empty).
 
