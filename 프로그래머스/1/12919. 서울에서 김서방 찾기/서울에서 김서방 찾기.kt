class Solution {
    fun solution(seoul: Array<String>): String {
        val index:Int = seoul.indexOf("Kim")
        val sb = StringBuilder()
        sb.append("김서방은 ")
        sb.append(index)
        sb.append("에 있다")
        return sb.toString()
    }
}
