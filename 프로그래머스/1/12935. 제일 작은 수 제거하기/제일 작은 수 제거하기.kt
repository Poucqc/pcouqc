class Solution {
    fun solution(arr: IntArray): IntArray {
        if (arr.size == 1) {
            return intArrayOf(-1)
        } else {
        val minNumber = arr.minOrNull()
        return arr.filter { it != minNumber }.toIntArray()
        }
    }
}