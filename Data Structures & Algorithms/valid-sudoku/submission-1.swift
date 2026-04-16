class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
       
        for row in 0..<9 {
            var seen = Set<Character>()
            for col in 0..<9 {
                var item = board[row][col]
                if  item == "." { continue }
                if seen.contains(item) { return false }
                seen.insert(item)
            }
        }

        for col in 0..<9 {
            var seen = Set<Character>()
            for row in 0..<9 {
                var item = board[row][col]
                if item == "." { continue }
                if seen.contains(item) { return false }
                seen.insert(item)
            }
        }

        for square in 0..<9 {
            var seen = Set<Character>()
            for i in 0..<3 {
                for j in 0..<3 {
                    let row = (square/3) * 3 + i
                    let col = (square%3) * 3 + j 
                    let item = board[row][col]
                    if item == "." { continue }
                    if seen.contains(item) { return false }
                    seen.insert(item)
                }
            }
        }

        return true
    }
}
