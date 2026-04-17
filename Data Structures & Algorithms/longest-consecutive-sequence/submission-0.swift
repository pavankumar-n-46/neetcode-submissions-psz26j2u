class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let numsSet = Set(nums)
        var longest = 0

        for num in nums {
            if !numsSet.contains(num - 1) {
                var length = 1
                while numsSet.contains(num + length) {
                    length += 1
                }
                longest = max(length, longest)
            }
        }
        return longest
    }
}
