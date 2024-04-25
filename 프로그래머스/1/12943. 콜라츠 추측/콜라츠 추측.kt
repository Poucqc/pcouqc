class Solution {
    fun solution(num: Int): Int {
        var count = 0
        var a = num
        while (a != 1 && count < 500) {
                if (a % 2 == 0) {
                    a = a / 2
                } else if (a % 2 == 1) {
                    a = a * 3 + 1
                }
                count ++
        }
        if (count >= 500) {
            return -1
        } else {
            return count
        }
    }
}