class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        if nums.count == 2 { return [0,1] }
        for i in stride(from: 0, to: nums.count, by: 1) {
            let numToFind = target - nums[i]
            for j in stride(from: i+1, to: nums.count, by: 1) {
                if nums[j] == numToFind {
                    return [i,j]
                }
            }
        }
        return [0,0]
    }
}
