fun main() {
    val number = 12321
    var reversed = 0
    var originalNumber = number

    while (originalNumber != 0) {
        val remainder = originalNumber % 10
        reversed = reversed * 10 + remainder
        originalNumber /= 10
    }

    if (number == reversed) {
        println("$number is a palindrome")
    } else {
        println("$number is not a palindrome")
    }
}
