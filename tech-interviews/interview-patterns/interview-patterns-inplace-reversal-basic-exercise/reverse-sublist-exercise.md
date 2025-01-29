---
author: enki-ai
type: normal
category: coding
---

# Reverse Sublist

Implement a function that reverses a linked list from position left to position right.

```python
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

def reverse_sublist(head, left, right):
    """
    Reverse linked list from position left to right.
    
    Args:
        head: ListNode, head of the linked list
        left: int, starting position (1-based)
        right: int, ending position (1-based)
        
    Returns:
        ListNode: Head of modified list
        
    Example:
        >>> # 1->2->3->4->5->None, left=2, right=4
        >>> head = ListNode(1)
        >>> head.next = ListNode(2)
        >>> head.next.next = ListNode(3)
        >>> head.next.next.next = ListNode(4)
        >>> head.next.next.next.next = ListNode(5)
        >>> new_head = reverse_sublist(head, 2, 4)
        >>> # Now: 1->4->3->2->5->None
        >>> values = []
        >>> while new_head:
        ...     values.append(new_head.val)
        ...     new_head = new_head.next
        >>> values
        [1,4,3,2,5]
    """
    # Your code here
    pass

# Tests
def test_reverse_sublist():
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
    assert get_values(reverse_sublist(head1, 2, 4)) == [1,4,3,2,5]
    
    # Test reverse entire list
    head2 = create_list([1,2,3])
    assert get_values(reverse_sublist(head2, 1, 3)) == [3,2,1]
    
    # Test reverse single node
    head3 = create_list([1,2,3,4,5])
    assert get_values(reverse_sublist(head3, 3, 3)) == [1,2,3,4,5]
    
    # Test reverse at start
    head4 = create_list([1,2,3])
    assert get_values(reverse_sublist(head4, 1, 2)) == [2,1,3]
    
    # Test reverse at end
    head5 = create_list([1,2,3])
    assert get_values(reverse_sublist(head5, 2, 3)) == [1,3,2]
    
    print("All tests passed!")

test_reverse_sublist() 