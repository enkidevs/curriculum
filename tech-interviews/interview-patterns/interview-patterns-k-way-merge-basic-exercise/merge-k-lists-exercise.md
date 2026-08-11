---
author: enki-ai
type: normal
category: coding
---

# Merge K Sorted Lists Exercise

Complete the `merge_k_lists` function that merges K sorted linked lists into one sorted linked list.

```python
import heapq

class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

def merge_k_lists(lists):
    """
    Merge K sorted linked lists into one sorted linked list.
    
    Args:
        lists: List of ListNode, each representing head of a sorted linked list
        
    Returns:
        ListNode: Head of merged sorted linked list
        
    Example:
        Input: lists = [
            1->4->5,
            1->3->4,
            2->6
        ]
        Output: 1->1->2->3->4->4->5->6
    """
    # Your code here
    pass

def test_merge_k_lists():
    # Helper to create linked list from array
    def create_list(arr):
        if not arr:
            return None
        head = ListNode(arr[0])
        curr = head
        for val in arr[1:]:
            curr.next = ListNode(val)
            curr = curr.next
        return head
        
    # Helper to convert linked list to array
    def list_to_array(head):
        result = []
        while head:
            result.append(head.val)
            head = head.next
        return result

    # Test 1: Normal case
    lists1 = [
        create_list([1,4,5]),
        create_list([1,3,4]),
        create_list([2,6])
    ]
    assert list_to_array(merge_k_lists(lists1)) == [1,1,2,3,4,4,5,6]

    # Test 2: Lists of different lengths
    lists2 = [
        create_list([1]),
        create_list([1,2,3,4]),
        create_list([2])
    ]
    assert list_to_array(merge_k_lists(lists2)) == [1,1,2,2,3,4]

    # Test 3: Some empty lists
    lists3 = [
        None,
        create_list([1,2]),
        None,
        create_list([3,4])
    ]
    assert list_to_array(merge_k_lists(lists3)) == [1,2,3,4]

    # Test 4: Single list
    lists4 = [create_list([1,2,3])]
    assert list_to_array(merge_k_lists(lists4)) == [1,2,3]

    # Test 5: All empty lists
    lists5 = [None, None, None]
    assert merge_k_lists(lists5) == None

    # Test 6: Lists with negative numbers
    lists6 = [
        create_list([-2,1,4]),
        create_list([-1,3,4]),
        create_list([0,2,5])
    ]
    assert list_to_array(merge_k_lists(lists6)) == [-2,-1,0,1,2,3,4,4,5]

    print("All test cases passed!")

# Run tests
if __name__ == "__main__":
    test_merge_k_lists() 