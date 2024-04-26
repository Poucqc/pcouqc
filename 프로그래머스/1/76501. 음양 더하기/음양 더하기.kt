class Solution {
    fun solution(absolutes: IntArray, signs: BooleanArray): Int {
        var sum = 0
        for (i in 0 until signs.size) {
            if (signs[i]==true) {
                sum += absolutes[i]
            } else {
                sum -= absolutes[i]
            }
        }
        return sum
    }
}
