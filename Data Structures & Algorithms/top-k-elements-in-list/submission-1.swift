class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var freqDict: [Int: Int] = [:]

        for num in nums {
            freqDict[num, default: 0] += 1
        }

        var array = Array(repeating: [Int](), count: nums.count + 1)

        for (num, freq) in freqDict {
            array[freq].append(num)
        }

        var result = [Int]()

        for i in stride(from: array.count - 1, through: 0, by: -1) {
            for j in array[i] {
                result.append(j)

                if result.count == k {
                    return result
                }
            }
        }
        return result
    }
}
