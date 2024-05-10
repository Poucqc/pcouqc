class Solution {
    fun solution(s: String): String {
        var answer = ""
        var split = s.split(" ")
        for (word in split) {
            for (i in word.indices) {
                answer += if (i % 2 == 0) {
                    word[i].toUpperCase()
                } else {
                    word[i].toLowerCase()
                }
            }
            answer += " "
        }
        answer = answer.substring(0, answer.length - 1)
        return answer
    }
}