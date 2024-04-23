class Solution {
    fun solution(x: Int): Boolean {
        var sum = x.toString().map{it.toString().toInt()}.sum()
        return x % sum == 0
    }
}