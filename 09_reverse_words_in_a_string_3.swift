class Solution {
    func reverseWords(_ s: String) -> String {
        var newString = ""
        let seperatedStringArray = s.components(separatedBy: " ")
        
        for (index, part) in seperatedStringArray.enumerated() {
            var reversePart = Array(part)
            reversePart.reverse()
            newString += String(reversePart)
            
            if index != seperatedStringArray.count - 1 {
                newString += " "
            }
        }
        
        return newString
    }
}