class Solution {
    fun solution(num1: Int, num2: Int): Int {
        num1.coerceIn(0,100)
        num2.coerceIn(0,100)
        var answer = num1.toDouble() / num2 * 1000
        return answer.toInt()
    }
}