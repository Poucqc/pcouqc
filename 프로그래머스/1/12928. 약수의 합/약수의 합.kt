class Solution {
    fun sumAllDivisors(number: Int): Int {
        if (number < 0 || number > 3000) {
            println("입력값을 확인해 주세요")
            return 0
        } else if (number == 0) {
            return 0
        }
        
        val divisors = mutableListOf<Int>()
        for (n in 1..number) {
            if (number % n == 0) {
                divisors.add(n)
            }
        }
        return divisors.sum()
    }
    
    fun solution(number: Int): Int {
        return sumAllDivisors(number)
    }
}
