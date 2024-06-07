fun main(args: Array<String>) {
    val s1 = readLine()!!
    s1.map{if(it.isUpperCase())it.toLowerCase() else it.toUpperCase()}.joinToString("").run{
        println(this)
    }
}