---
author: enki-ai
type: normal
category: coding
---

# Detect Cycle in Linked List

Implement a function that detects if a linked list has a cycle.

```python
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

def has_cycle(head):
    """
    Detect if linked list has a cycle.
    
    Args:
        head: ListNode, head of linked list
        
    Returns:
        bool: True if list has cycle, False otherwise
        
    Example:
        >>> # 1 -> 2 -> 3 -> 4 -> 2 (cycle)
        >>> head = ListNode(1)
        >>> node2 = ListNode(2)
        >>> node3 = ListNode(3)
        >>> node4 = ListNode(4)
        >>> head.next = node2
        >>> node2.next = node3
        >>> node3.next = node4
        >>> node4.next = node2  # Creates cycle
        >>> has_cycle(head)
        True
    """
    # Your code here
    pass

# Tests
def test_has_cycle():
    # Test with cycle
    head1 = ListNode(1)
    node2 = ListNode(2)
    node3 = ListNode(3)
    node4 = ListNode(4)
    head1.next = node2
    node2.next = node3
    node3.next = node4
    node4.next = node2  # Creates cycle
    assert has_cycle(head1) == True
    
    # Test without cycle
    head2 = ListNode(1)
    head2.next = ListNode(2)
    head2.next.next = ListNode(3)
    assert has_cycle(head2) == False
    
    # Test edge cases
    assert has_cycle(None) == False
    assert has_cycle(ListNode(1)) == False
    
    # Test small cycle
    head3 = ListNode(1)
    head3.next = head3  # Self cycle
    assert has_cycle(head3) == True
    
    print("All tests passed!")

test_has_cycle() 