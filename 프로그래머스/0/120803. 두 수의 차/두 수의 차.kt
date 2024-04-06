class Solution {
    fun solution(num1: Int, num2: Int): Int {
        val lmtnum1 = if (num1 < -50000) -50000 else if (num1 > 50000) 50000 else num1
        val lmtnum2 = if (num2 < -50000) -50000 else if (num2 > 50000) 50000 else num2
        var answer: Int = lmtnum1-lmtnum2
        return answer
    }
}