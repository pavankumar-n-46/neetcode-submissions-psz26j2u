class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numbIndexHash = [Int:Int]()

        for i in stride(from: 0, to: nums.count, by: 1) {
            let diff = target - nums[i]
            if let index = numbIndexHash[diff] {
                return i < index ? [i, index] : [index, i]
            } else {
                numbIndexHash[nums[i]] = i
            }
        }
        return [0,0]
    }
}
