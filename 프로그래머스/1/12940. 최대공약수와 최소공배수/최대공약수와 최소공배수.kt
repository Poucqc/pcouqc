class Solution {
    fun solution(n: Int, m: Int): IntArray {
        val answer = intArrayOf(gcd(n,m),lcm(n,m))
        return answer
    }
}

fun gcd(a: Int, b: Int): Int {
    if (b == 0) {
        return a
    }
    return gcd(b, a % b)
}

fun lcm(a: Int, b: Int): Int {
    return (a * b) / gcd(a, b)
}


