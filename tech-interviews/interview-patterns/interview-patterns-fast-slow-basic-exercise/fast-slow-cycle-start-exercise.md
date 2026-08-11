---
author: enki-ai
type: normal
category: coding
---

# Find Start of Cycle

Implement a function that finds the node where cycle begins in a linked list.

```python
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

def find_cycle_start(head):
    """
    Find start node of cycle in linked list.
    
    Args:
        head: ListNode, head of linked list
        
    Returns:
        ListNode: Node where cycle begins, None if no cycle
        
    Example:
        >>> # 1 -> 2 -> 3 -> 4 -> 2 (cycle starts at 2)
        >>> head = ListNode(1)
        >>> node2 = ListNode(2)
        >>> node3 = ListNode(3)
        >>> node4 = ListNode(4)
        >>> head.next = node2
        >>> node2.next = node3
        >>> node3.next = node4
        >>> node4.next = node2
        >>> cycle_start = find_cycle_start(head)
        >>> cycle_start.val
        2
    """
    # Your code here
    pass

# Tests
def test_find_cycle_start():
    # Test with cycle
    head1 = ListNode(1)
    node2 = ListNode(2)
    node3 = ListNode(3)
    node4 = ListNode(4)
    head1.next = node2
    node2.next = node3
    node3.next = node4
    node4.next = node2  # Cycle starts at 2
    assert find_cycle_start(head1) == node2
    
    # Test without cycle
    head2 = ListNode(1)
    head2.next = ListNode(2)
    head2.next.next = ListNode(3)
    assert find_cycle_start(head2) == None
    
    # Test edge cases
    assert find_cycle_start(None) == None
    assert find_cycle_start(ListNode(1)) == None
    
    # Test small cycle
    head3 = ListNode(1)
    head3.next = head3  # Self cycle
    assert find_cycle_start(head3) == head3
    
    print("All tests passed!")

 