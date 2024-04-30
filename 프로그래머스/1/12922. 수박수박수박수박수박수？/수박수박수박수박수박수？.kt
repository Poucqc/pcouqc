class Solution {
    fun solution(n: Int): String {
        val str = "수박"
        return if (n % 2 == 0) {
            str.repeat(n/2)
        } else {
            str.repeat(n/2)+"수"
        }
    }
}