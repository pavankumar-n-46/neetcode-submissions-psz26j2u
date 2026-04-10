class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        let set = Set<Int>(nums)
        return set.count != nums.count
    }
}
