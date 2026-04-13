class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var resultArray = Array(repeating: 1, count: nums.count)
        
        var prefix = 1
        for i in stride(from: 0, to: nums.count, by: 1) {
            resultArray[i] = prefix
            prefix *= nums[i]
        }

        var postfix = 1
        for i in stride(from: nums.count - 1, through: 0, by: -1) {
            resultArray[i] *= postfix
            postfix *= nums[i]
        }

        return resultArray
    }
}
