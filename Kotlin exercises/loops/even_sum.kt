fun main() {
    var sum = 0
    for (i in 2..50 step 2) {
        sum += i
    }
    println("Sum of even numbers from 1 to 50: $sum")
}
