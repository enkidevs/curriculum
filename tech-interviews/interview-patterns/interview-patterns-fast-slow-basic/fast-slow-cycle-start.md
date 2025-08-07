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

# Finding Cycle Start

After detecting a cycle, we can find its start by using Floyd's algorithm.

```python
def find_cycle_start(head):
    """Find start node of cycle in linked list"""
    if not head or not head.next:
        return None
        
    # First find meeting point
    slow = head
    fast = head
    
    while fast and fast.next:
        slow = slow.next
        fast = fast.next.next
        if slow == fast:
            break
            
    if not fast or not fast.next:
        return None  # No cycle
        
    # Move one pointer to head
    slow = head
    
    # Move both at same speed
    while slow != fast:
        slow = slow.next
        fast = fast.next
        
    return slow  # This is cycle start
```

> 💡 After finding meeting point, moving one pointer to head and both at same speed leads to cycle start.

---
# Practice

Complete the function to find cycle start:

```python
def find_cycle_start(head):
    slow = head
    fast = ???
    
    while fast and fast.next:
        slow = slow.???
        fast = fast.next.???
        if slow == fast:
            break
            
    if not fast or not fast.next:
        return ???
            
    slow = ???
    while slow != fast:
        slow = slow.next
        fast = ???
```

- `head`
- `next`
- `next`
- `None`
- `head`
- `fast.next`

---
# Revision

To find cycle start after meeting point:

???

- Move one pointer to head and both at same speed
- Keep moving both pointers at different speeds
- Move both pointers to head
- Stop at meeting point 