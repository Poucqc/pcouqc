class Solution {
    fun solution(phone_number: String): String {
        return buildString {
            for (i in 0 until phone_number.length-4) {
                append("*")
            }
            append(phone_number.takeLast(4))
        }
    }
}