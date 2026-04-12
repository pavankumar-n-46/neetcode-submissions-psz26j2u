class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {

        //brute force
        // sort each element, use it as key for dict
        // value of dict is an array, append the value as an array element as is. 
        var sortedDict: [String: [String]] = [:]

        for str in strs {
            let sortedStr = String(str.sorted())
            sortedDict[sortedStr, default: []].append(str)
        }

        return Array(sortedDict.values)
    }
}
