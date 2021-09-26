/**
* The knows API is defined in the parent class VersionControl.
*     func isBadVersion(_ version: Int) -> Bool{}
*/

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var left = 1
        var right = n
        var mid = 0

        while left + 1 < right {
            mid = left + (right - mid) / 2
            if isBadVersion(mid) {
                right = mid
            } else {
                left = mid + 1
            }
        }

        if isBadVersion(left) {
            return left
        }
        
        return right
    }
}