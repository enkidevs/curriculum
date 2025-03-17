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

After detecting a cycle using fast and slow pointers, we can find the start of the cycle using Floyd's algorithm.

```python
def find_cycle_start(head):
    if not head or not head.next:
        return None
        
    # First, detect cycle
    slow = head
    fast = head
    has_cycle = False
    
    while fast and fast.next:
        slow = slow.next
        fast = fast.next.next
        if slow == fast:
            has_cycle = True
            break
            
    if not has_cycle:
        return None
        
    # Move one pointer to head
    # Keep other at meeting point
    slow = head
    while slow != fast:
        slow = slow.next
        fast = fast.next
        
    return slow  # This is the cycle start
```

> 💡 When the pointers meet, moving one pointer to head and then moving both at the same speed will make them meet at the cycle start.

This works because:
- Distance from head to cycle start = Distance from meeting point to cycle start (mod cycle length)
- This is proven using the fact that fast pointer moves twice as fast as slow pointer

---
# Practice

Complete the function to find the length of a cycle in a linked list:

```python
def find_cycle_length(head):
    # First find meeting point
    slow = head
    fast = head
    while fast and fast.next:
        slow = ???
        fast = ???
        if slow == fast:
            break
            
    # If no cycle
    if not fast or not fast.next:
        return ???
        
    # Count length from meeting point
    length = ???
    current = slow.next
    while current != ???:
        length += 1
        current = current.next
        
    return length + 1
```

- `slow.next`
- `fast.next.next`
- `0`
- `0`
- `slow`

---
# Revision

After finding a cycle using Floyd's algorithm, to find the cycle start we:

???

- Move one pointer to head and move both at same speed
- Move both pointers to head
- Keep both pointers at meeting point
- Move both pointers in opposite directions 