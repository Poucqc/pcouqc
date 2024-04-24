class Solution {
    fun solution(a: Int, b: Int): Long {
        val start = minOf(a, b)
        val end = maxOf(a, b)
        return (start.toLong()+end)*(end-start+1)/2
    }
}
