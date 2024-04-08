class Solution {
    fun solution(age: Int): Int {
        var answer: Int = 2022 - age + 1
        if ( age <= 0 ) {
            return 2022 - 1 + 1
        } else if ( age > 120 ) {
            return 2022 - 120 + 1
        } else {
            return answer
        }
    }
}