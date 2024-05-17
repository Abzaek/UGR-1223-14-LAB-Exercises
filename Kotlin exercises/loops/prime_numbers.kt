fun main() {
    val start = 10
    val end = 50
    val primes = mutableListOf<Int>()

    var num = start

    while (num <= end) {
        var isPrime = true
        var i = 2

        while (i <= num / 2) {
            if (num % i == 0) {
                isPrime = false
                break
            }
            i++
        }

        if (isPrime && num > 1) {
            primes.add(num)
        }
        num++
    }

    println("Prime numbers between $start and $end: ${primes.joinToString(", ")}")
}
