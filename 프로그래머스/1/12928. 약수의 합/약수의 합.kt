class Solution {
    fun solution(n: Int): Int {
        return (1..n).filter{ n % it == 0 }.sum()
    }
}