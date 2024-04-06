class Solution {
    fun solution(num1: Int, num2: Int): Int {
        var answer: Int = (num1.coerceIn(0, 100) / num2.coerceIn(0, 100))
        return answer
    }
}