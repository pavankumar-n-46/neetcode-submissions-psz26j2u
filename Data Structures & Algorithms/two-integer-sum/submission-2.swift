class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numsDict = [Int:Int]()
        for i in stride(from: 0, to: nums.count, by: 1) {
            let numTofind = target - nums[i]
            if let index = numsDict[numTofind] {
                return i > index ? [index, i] : [i, index]
            } else {
                numsDict[nums[i]] = i
            }
        }
        return [0,0]
    }
}
