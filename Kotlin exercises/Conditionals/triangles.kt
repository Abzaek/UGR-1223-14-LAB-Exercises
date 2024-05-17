fun main() {
    val side1 = 5
    val side2 = 5
    val side3 = 5

    when {
        side1 == side2 && side2 == side3 -> println("The triangle is Equilateral")
        side1 == side2 || side1 == side3 || side2 == side3 -> println("The triangle is Isosceles")
        else -> println("The triangle is Scalene")
    }

}
