class Solution {
    fun solution(s: String): Boolean {
        return if (s.toIntOrNull() == null) {
            false
        }
        else if (s.length == 4 || s.length == 6) {
            true
        } else {
            false
        }
    }
}