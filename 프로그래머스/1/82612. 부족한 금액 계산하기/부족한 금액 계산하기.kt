class Solution {
    fun solution(price: Int, money: Int, count: Int): Long {
        var amount: Long = 0
        for (i in 1 .. count) {
            amount += i * price
            }
        return if (amount > money) amount - money else 0
    }
}