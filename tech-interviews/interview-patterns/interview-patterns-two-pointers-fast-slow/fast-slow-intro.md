---
author: enki-ai
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

# Fast & Slow Pointers Pattern

The Fast & Slow pointers pattern (also known as Floyd's Cycle Finding Algorithm or the "tortoise and hare" algorithm) uses two pointers moving at different speeds to solve linked list problems.

```python
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

def has_cycle(head):
    if not head or not head.next:
        return False
        
    slow = head
    fast = head.next
    
    while fast and fast.next:
        if slow == fast:
            return True
        slow = slow.next
        fast = fast.next.next
        
    return False
```

> 💡 The fast pointer moves twice as fast as the slow pointer. If there's a cycle, they will eventually meet.

This pattern is particularly useful for:
- Detecting cycles in linked lists
- Finding the middle of a linked list
- Finding the start of a cycle
- Finding the kth node from the end

---
# Practice

Complete the function to find the middle node of a linked list:

```python
def find_middle(head):
    if not head:
        return ???
        
    slow = ???
    fast = ???
    
    while ??? and ???:
        slow = slow.next
        fast = fast.next.next
        
    return ???
```

- `None`
- `head`
- `head`
- `fast`
- `fast.next`
- `slow`

---
# Revision

In the Fast & Slow pointers pattern, if there's a cycle, the pointers will meet after:

???

- At most one full cycle
- Exactly one full cycle
- Two full cycles
- It depends on the cycle length 