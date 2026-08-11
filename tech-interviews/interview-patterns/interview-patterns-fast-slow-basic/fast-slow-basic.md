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

# Fast & Slow Pointers

The fast & slow pointers pattern uses two pointers moving at different speeds to detect cycles.

```python
def has_cycle(head):
    """Detect cycle in linked list"""
    if not head or not head.next:
        return False
        
    slow = head
    fast = head.next
    
    while fast and fast.next:
        if slow == fast:
            return True
            
        slow = slow.next        # Move one step
        fast = fast.next.next   # Move two steps
        
    return False
```

> 💡 If there's a cycle, fast pointer will eventually catch up to slow pointer.

---
# Practice

Complete the function to detect cycle:

```python
def detect_cycle(head):
    if not head:
        return ???
        
    slow = ???
    fast = head.???
    
    while fast and fast.next:
        if slow == ???:
            return True
        slow = slow.???
        fast = fast.next.???
```

- `False`
- `head`
- `next`
- `fast`
- `next`
- `next`

---
# Revision

Fast & slow pointers are best for:

???

- Detecting cycles
- Finding pairs that sum to target
- Processing array elements
- Searching sorted arrays 