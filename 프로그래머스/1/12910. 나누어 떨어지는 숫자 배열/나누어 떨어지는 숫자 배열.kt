class Solution {
    fun solution(arr: IntArray, divisor: Int): IntArray {
        val answer = arr.filter { it % divisor == 0 }.toIntArray()
        val wrong: IntArray = intArrayOf(-1)
        return if (answer.isEmpty()) wrong else answer . sortedArray ()

    }
}