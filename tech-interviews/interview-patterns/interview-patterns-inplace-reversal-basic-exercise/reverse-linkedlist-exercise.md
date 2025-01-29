---
author: enki-ai
type: normal
category: coding
---

# Reverse LinkedList

Implement a function that reverses a singly linked list in-place.

```python
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

def reverse_list(head):
    """
    Reverse a linked list in-place.
    
    Args:
        head: ListNode, head of the linked list
        
    Returns:
        ListNode: Head of reversed list
        
    Example:
        >>> # 1->2->3->4->5->None
        >>> head = ListNode(1)
        >>> head.next = ListNode(2)
        >>> head.next.next = ListNode(3)
        >>> head.next.next.next = ListNode(4)
        >>> head.next.next.next.next = ListNode(5)
        >>> new_head = reverse_list(head)
        >>> # Now: 5->4->3->2->1->None
        >>> values = []
        >>> while new_head:
        ...     values.append(new_head.val)
        ...     new_head = new_head.next
        >>> values
        [5,4,3,2,1]
    """
    # Your code here
    pass

# Tests
def test_reverse_list():
    # Helper function to create linked list
    def create_list(values):
        if not values:
            return None
        head = ListNode(values[0])
        current = head
        for val in values[1:]:
            current.next = ListNode(val)
            current = current.next
        return head
    
    # Helper function to get list values
    def get_values(head):
        values = []
        while head:
            values.append(head.val)
            head = head.next
        return values
    
    # Test normal case
    head1 = create_list([1,2,3,4,5])
    assert get_values(reverse_list(head1)) == [5,4,3,2,1]
    
    # Test single node
    head2 = create_list([1])
    assert get_values(reverse_list(head2)) == [1]
    
    # Test two nodes
    head3 = create_list([1,2])
    assert get_values(reverse_list(head3)) == [2,1]
    
    # Test empty list
    assert reverse_list(None) == None
    
    print("All tests passed!")

test_reverse_list() 