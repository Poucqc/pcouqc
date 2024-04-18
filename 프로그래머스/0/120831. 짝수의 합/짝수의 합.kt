class Solution {
    fun solution(n: Int): Int {
        var answer: Int = 0
        var even: Int = 0
        do {
            answer += even
            even += 2
        } while (even <= n)
        return answer
    }
}