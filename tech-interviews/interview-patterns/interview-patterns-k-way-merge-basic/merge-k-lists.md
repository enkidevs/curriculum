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

# Merge K Sorted Lists

The k-way merge pattern can also merge sorted linked lists.

```python
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

def merge_k_lists(lists):
    """Merge K sorted linked lists"""
    # Min heap of (value, list_index)
    heap = []
    
    # Add first node from each list
    for i, head in enumerate(lists):
        if head:
            heapq.heappush(heap, (head.val, i))
            lists[i] = head.next
            
    dummy = ListNode(0)
    current = dummy
    
    # Keep pulling smallest node and adding next from same list
    while heap:
        val, list_idx = heapq.heappop(heap)
        current.next = ListNode(val)
        current = current.next
        
        # If there are more nodes in this list, add next one
        if lists[list_idx]:
            heapq.heappush(heap, (lists[list_idx].val, list_idx))
            lists[list_idx] = lists[list_idx].next
            
    return dummy.next
```

> 💡 Track list indices in heap to know which list to pull next node from.

---
# Practice

Complete the function to merge K sorted lists:

```python
def merge_lists(lists):
    heap = []
    
    for i, head in ???(lists):
        if ???:
            heapq.???(heap, (head.val, i))
            lists[i] = head.???
            
    dummy = ListNode(???)
    current = ???
    
    while heap:
        val, idx = heapq.???(heap)
        current.next = ListNode(???)
        current = current.???
```

- `enumerate`
- `head`
- `heappush`
- `next`
- `0`
- `dummy`
- `heappop`
- `val`
- `next`

---
# Revision

For merging K sorted lists:

???

- Store (value, list_index) in heap
- Store entire lists in heap
- Sort all values first
- Use array instead of heap 