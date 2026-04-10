class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {

        //return s.count == t.count && s.sorted() == t.sorted()
        
        if s.count != t.count { return false }
        
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
                let subtractedValue = storedCount - 1
                if subtractedValue == 0 {
                    countDict[char] = nil
                } else {
                    countDict[char] = subtractedValue
                }
            } 
        }

        print(countDict)

        return countDict.isEmpty
    }
}
