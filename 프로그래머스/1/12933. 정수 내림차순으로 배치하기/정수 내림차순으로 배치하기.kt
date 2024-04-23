class Solution {
    fun solution(n: Long): Long {
        return n.toString().toCharArray().sorted().reversed().joinToString("").toLong()
    }
}