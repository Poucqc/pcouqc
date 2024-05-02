class Solution {
    fun solution(price: Int, money: Int, count: Int): Long {
        var amount: Long = 0
        for (i in 1 .. count) {
            amount += i * price
            }
        if (amount > money) {
            return amount - money
        } else {
            return 0
        }
    }
}