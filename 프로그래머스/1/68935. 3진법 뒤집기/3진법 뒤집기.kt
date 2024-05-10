class Solution {
    fun solution(n: Int): Int {
        var ternary = toTernary(n)
        var decimal = toDecimal(ternary)
        return decimal
    }
}

fun toTernary(n: Int): String {
        var number = n
        var remainder: Int
        var ternary: String = ""
        while (number > 0) {
            remainder = number % 3
            ternary = remainder.toString() + ternary
            number /= 3
        } 
        return ternary.reversed()
}

fun toDecimal(ternaryNumber: String): Int {
    var decimalNumber = 0
    var power = 0
    for (i in ternaryNumber.length - 1 downTo 0) {
        val digit = ternaryNumber[i].toString().toInt()
        decimalNumber += digit * Math.pow(3.0, power.toDouble()).toInt()
        power++
    }
    return decimalNumber
}
