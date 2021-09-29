class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var count = 0 
        guard var currentHead = head else {
            return nil
        }
        
        while currentHead.next != nil {
            count += 1 
            
            currentHead = currentHead.next!
        }
        
        let mid: Int = (count+1)/2
        currentHead = head!
        count = 0
        
        while count < mid  {
            count += 1 
            currentHead = currentHead.next!
        }
        
        return currentHead
    }
}