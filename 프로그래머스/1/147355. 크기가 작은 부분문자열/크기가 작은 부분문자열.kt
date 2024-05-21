class Solution {
    fun solution(t: String, p: String): Int {
        var sum = 0
        for (i in 0 until t.length-p.length+1) {
            var possibilities = t.substring(i, i+p.length)
            if (possibilities <= p){
                sum += 1
            }
        }
        return sum
    }
}