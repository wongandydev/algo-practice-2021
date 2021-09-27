class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        var newK = k % nums.count
        let newArray = nums[(nums.count - newK)..<nums.count] + nums[0..<(nums.count - newK)]
        nums = Array(newArray)
    }
}