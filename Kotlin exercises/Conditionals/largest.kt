fun main() {
    val num1 = 25
    val num2 = 67
    val num3 = 42
    var largest: Int

    largest = if (num1 > num2) {
        if (num1 > num3) {
            num1
        } else {
            num3
        }
    } else {
        if (num2 > num3) {
            num2
        } else {
            num3
        }
    }

    println("The largest number among $num1, $num2, and $num3 is $largest")
}
