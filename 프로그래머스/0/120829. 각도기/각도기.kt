class Solution {
    fun solution(angle: Int): Int {
        return when {
            angle in 1 .. 89 -> 1
            angle == 90 -> 2
            angle in 91 .. 179 -> 3
            angle == 180 -> 4
            else -> throw IllegalArgumentException("unexpected input")
        }
    }
}