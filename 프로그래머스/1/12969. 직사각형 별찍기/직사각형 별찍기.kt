fun main(args: Array<String>) {
    val (a, b) = readLine()!!.split(' ').map(String::toInt)
    val answer = Array(b){Array(a){"*"}}
    for (row in answer) {
        println(row.joinToString(""))
    }
}
// 행이 n 열이 m 인 별 직사각형
