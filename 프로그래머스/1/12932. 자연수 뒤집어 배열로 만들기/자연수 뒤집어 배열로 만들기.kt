class Solution {
    fun solution(n: Long): IntArray {
        var answer = mutableListOf<Int>()
        var num = n
        while (num > 0) {
            var i = (num%10).toInt()
            answer.add(i)
            num /= 10
        }
        return answer.toIntArray()
    }
}