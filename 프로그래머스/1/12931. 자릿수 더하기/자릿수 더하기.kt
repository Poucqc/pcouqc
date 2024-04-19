class Solution {
    fun solution(n: Int): Int {
        var toArray = n.toString().toCharArray()
        var toIntArray = toArray.map{it.toString().toInt()}
        return toIntArray.sum()
    }
}
