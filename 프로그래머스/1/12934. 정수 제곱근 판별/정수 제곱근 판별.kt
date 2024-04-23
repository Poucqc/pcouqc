class Solution {
    fun solution(n: Long): Long {
        var x: Long = 0
        while (x*x <= n) {
            if (x*x == n) {
                return n+2*x+1
            }
        x += 1
        }
    return -1
    }
}