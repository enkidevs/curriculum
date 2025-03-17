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

# In-place Reversal of LinkedList

The in-place reversal pattern modifies the links between nodes to reverse them.

```python
def reverse_list(head):
    """Reverse a linked list in-place"""
    prev = None
    current = head
    
    while current:
        # Store next node
        next_node = current.next
        
        # Reverse the link
        current.next = prev
        
        # Move prev and current one step forward
        prev = current
        current = next_node
        
    return prev  # New head
```

> 💡 Keep track of previous node to reverse links, and next node to continue traversal.

---
# Practice

Complete the function to reverse linked list:

```python
def reverse(head):
    prev = ???
    curr = ???
    
    while curr:
        next = curr.???
        curr.next = ???
        prev = ???
        curr = ???
```

- `None`
- `head`
- `next`
- `prev`
- `curr`
- `next`

---
# Revision

To reverse a linked list in-place:

???

- Store next node before reversing links
- Create new nodes for reversed list
- Copy values to new list
- Store all nodes in array first 