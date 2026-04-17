class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let char = Array(s)
        var l = 0
        var r = char.count - 1

        while l < r {
            while l < r && !isAlphaNumeric(char[l]) {
                l += 1
            }

            while r > l && !isAlphaNumeric(char[r]) {
                r -= 1
            }

            if char[l].lowercased() != char[r].lowercased() {
                return false
            }

            l += 1
            r -= 1
        }

        return true
    }

    private func isAlphaNumeric(_ s: Character) -> Bool {
        s.isLetter || s.isNumber
    }
}
