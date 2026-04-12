class Solution {

    func encode(_ strs: [String]) -> String {
        var encodedString = String()
        for str in strs {
            encodedString.append("\(str.count)#\(str)")
        }
        return encodedString
    }

    func decode(_ str: String) -> [String] {
        let chars = Array(str)
        var i = 0
        var result = [String]()

        while i < chars.count {
            var j = i
            
            // find #
            while chars[j] != "#" {
                j += 1
            }

            //find length
            let length = Int(String(chars[i..<j]))!

            // find word
            let start = j + 1
            let end = start + length
            let word = String(chars[start..<end])
            result.append(word)

            i = end
        }

        return result
    }
}
