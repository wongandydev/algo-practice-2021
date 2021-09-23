class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {

        var minIndex = 0;
        var maxIndex = nums.count - 1;

        while minIndex <= maxIndex {
            let pivot = minIndex + (maxIndex - minIndex)
            if nums[pivot] == target {
                return pivot
            } else if target < nums[pivot] {
                maxIndex = pivot - 1
            } else {
                minIndex = pivot + 1
            }
        }

        return -1

        // Another slow version that works but time complexity is still slow similar to Lazy Method 
        // var minIndex = 0;
        // var maxIndex = nums.count - 1;

        // while minIndex <= maxIndex {
        //     if nums[minIndex] == target {
        //         return minIndex
        //     } else if nums[maxIndex] == target {
        //         return maxIndex
        //     } else {
        //         minIndex += 1
        //         maxIndex -= 1
        //     } 
        // }
        //return -1
        
        // Lazy Method
        // if let index = nums.index(of: target) {
        //     return index
        // } else {
        //     return -1 
        // }
    }
}