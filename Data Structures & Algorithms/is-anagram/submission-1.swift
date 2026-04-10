class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var countDict = [Character:Int]()


        for char in s.count > t.count ? s : t {
            if let storedCount = countDict[char] {
                countDict[char] = storedCount + 1
            } else {
                countDict[char] = 1
            }
        }

        print("first \(countDict)")

        for char in s.count > t.count ? t : s {
            if let storedCount = countDict[char] {
                if storedCount - 1 == 0 {
                    countDict[char] = nil
                } else {
                    countDict[char] = storedCount - 1
                }
            } 
        }

        print(countDict)

        return countDict.isEmpty
    }
}
