class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict = [Int:Int]()
        for n in nums {
            dict[n, default: 0] += 1
        }
        
        var bucket = Array(repeating: [Int](), count: nums.count + 1)

        for (num, freq) in dict {
            bucket[freq].append(num)
        }

        var result = [Int]()

        for i in stride(from: bucket.count - 1, through: 0, by: -1) {
            for j in bucket[i] {
                result.append(j)
                if result.count == k {
                    return result
                }
            }
        }
        return result
    }
}
