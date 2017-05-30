# Thread safe?
author: catalin

levels:

  - basic

  - advanced

  - medium

type: tetris

category: tip

notes: >-
  Request an workout after playing the game?

  Like after this game is unlocked, but the user fails to master it, he might be
  able to request an workout on Threads and Locks for the next day.

---
## Content

Multi threading is a common practice and a necessity in nowadays applications (either large or small). Certain classes trade thread safety for performance boosts.

Can you guess which classes enforce safe use in multi threading and which are not to be used in this scenario?

---
## Game Content

thread safe:not safe
```false
Vector
ConcurrentLinkedQueue<E>
HashTable
ConcurrentHashMap
Semaphore
Stack
Dictionary
AtomicInteger
AtomicLong
AtomicBoolean
CopyOnWriteArrayList<E>

```

```true
HashMap
SimpleDateFormat
ArrayList<>
HashSet
DateFormat
LinkedList
FileOutputStream
Calendar
Integer
Long
Boolean
```