---
author: enki-ai
type: normal
category: coding
---

# Fast & Slow Pointers Pattern Practice

Complete the following functions using the Fast & Slow pointers pattern:

1. Find the middle node of a linked list (if even length, return the second middle node):

```python
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

def find_middle_node(head):
    """
    Args:
        head: The head node of the linked list
    Returns:
        The middle node of the linked list
    Example:
        1->2->3->4->5  returns node with value 3
        1->2->3->4     returns node with value 3
    """
    # Your code here
    pass

# Test cases
def create_list(values):
    dummy = ListNode(0)
    current = dummy
    for val in values:
        current.next = ListNode(val)
        current = current.next
    return dummy.next

# Test odd length
list1 = create_list([1, 2, 3, 4, 5])
assert find_middle_node(list1).val == 3

# Test even length
list2 = create_list([1, 2, 3, 4])
assert find_middle_node(list2).val == 3
```

2. Find if a linked list has a cycle and return the start of the cycle:

```python
def find_cycle_start(head):
    """
    Args:
        head: The head node of the linked list
    Returns:
        The node where the cycle begins, or None if no cycle
    Example:
        In list: 1->2->3->4->5->3 (3 is repeated)
        Returns the node with value 3
    """
    # Your code here
    pass

# Test cases
# Create a list with cycle: 1->2->3->4->5->3
head = create_list([1, 2, 3, 4, 5])
current = head
while current.next:
    current = current.next
cycle_start = head.next.next  # Node with value 3
current.next = cycle_start

assert find_cycle_start(head) == cycle_start
assert find_cycle_start(create_list([1, 2, 3])) == None
```

3. Find the kth node from the end of a linked list:

```python
def find_kth_from_end(head, k):
    """
    Args:
        head: The head node of the linked list
        k: The position from the end (1-based)
    Returns:
        The kth node from the end
    Example:
        For list 1->2->3->4->5 and k=2
        Returns node with value 4
    """
    # Your code here
    pass

# Test cases
list1 = create_list([1, 2, 3, 4, 5])
assert find_kth_from_end(list1, 2).val == 4
assert find_kth_from_end(list1, 1).val == 5
assert find_kth_from_end(list1, 5).val == 1
``` 