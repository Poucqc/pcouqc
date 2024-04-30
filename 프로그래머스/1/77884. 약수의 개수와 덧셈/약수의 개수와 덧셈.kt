class Solution {
    fun solution(left: Int, right: Int): Int {
        var answer = 0
        for (i in left..right) {
            if (findDividors(i) % 2 == 0) {
                answer += i
            } else {
                answer -= i
            }
        }
        return answer
    }

    fun findDividors(x: Int): Int {
        var count = 0
        for (i in 1..x) {
            if (x % i == 0) {
                count++
            }
        }
        return count
    }
}