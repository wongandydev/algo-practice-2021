class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var low = 0 
        var high = nums.count - 1
        var mid: Int!
        
        while (low <= high) {
            mid = low + (high - low)/2
            
            print(mid)
            if nums[mid] == target {
                return mid
            } else if nums[mid] < target {
                low = mid + 1
            } else if nums[mid] > target {
                high = mid - 1
            }
         }
        
        return low 
    }
}