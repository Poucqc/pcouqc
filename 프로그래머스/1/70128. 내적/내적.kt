class Solution {
    fun solution(a: IntArray, b: IntArray): Int {
        val zippedArray = a.zip(b){a,b->a*b}
        return zippedArray.sum()
    }
}