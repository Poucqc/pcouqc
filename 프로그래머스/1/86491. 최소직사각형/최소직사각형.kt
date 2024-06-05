class Solution {
    fun solution(sizes: Array<IntArray>): Int {
        val max = mutableListOf<Int>()
        val min = mutableListOf<Int>()
        
        for (size in sizes) {
            val (w, h) = size
            if (w > h) {
                max.add(w)
                min.add(h)
            } else {
                max.add(h)
                min.add(w)
            }
        }
        
        val maxValH = max.maxOrNull() ?: 0
        val maxValW = min.maxOrNull() ?: 0
        
        return maxValH * maxValW
    }
}

