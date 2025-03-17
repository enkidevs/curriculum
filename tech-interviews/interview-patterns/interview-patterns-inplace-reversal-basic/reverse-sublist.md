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

# Reversing a Sublist

We can modify the in-place reversal pattern to reverse only a portion of the list.

```python
def reverse_sublist(head, left, right):
    """Reverse sublist between positions left and right"""
    if not head or left == right:
        return head
        
    # Move to starting position
    dummy = ListNode(0, head)
    prev = dummy
    
    for _ in range(left - 1):
        prev = prev.next
        
    # Start reversing from here
    current = prev.next
    
    # Reverse 'right - left + 1' nodes
    for _ in range(right - left):
        next_node = current.next
        current.next = next_node.next
        next_node.next = prev.next
        prev.next = next_node
        
    return dummy.next
```

> 💡 Use a dummy node to handle edge cases when reversing from the start.

---
# Practice

Complete the function to reverse sublist:

```python
def reverse_sublist(head, left, right):
    dummy = ListNode(0, ???)
    prev = ???
    
    for _ in range(??? - 1):
        prev = prev.???
        
    current = prev.???
    
    for _ in range(right - ???):
        next = current.???
        current.next = next.???
```

- `head`
- `dummy`
- `left`
- `next`
- `next`
- `left`
- `next`
- `next`

---
# Revision

When reversing a sublist, we need:

???

- Dummy node and position tracking
- Extra space for new nodes
- To copy values to array
- To create new linked list 