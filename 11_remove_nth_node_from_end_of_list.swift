/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        guard var currentNode = head, n > 0  else {
            return nil
        }
        var count = 0
        
        var slowNode = currentNode
        var fastNode = currentNode 
        
        // Try to get to the end of linkedlist, and keeping slowNode and FastNode n nodes apart
        while fastNode.next != nil {
            if count >= n {
                slowNode = slowNode.next!
            }
            count += 1
            fastNode = fastNode.next!
        }
        
        
        // if size of linkedList and n is the same, just return slowNode.next 
        if n == count + 1 {
            return slowNode.next
        }
        
        slowNode.next = slowNode.next?.next
        return currentNode
    }
}