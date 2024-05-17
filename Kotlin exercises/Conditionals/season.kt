fun main() {
    val month = 9
    val day = 22

    val season = when (month) {
        in 3..5 -> if (day >= 20) "Spring" else "Winter"
        in 6..8 -> if (day >= 21) "Summer" else "Spring"
        in 9..11 -> if (day >= 22) "Autumn" else "Summer"
        else -> if (day >= 21) "Winter" else "Autumn"
    }

    println("The season for $month/$day is $season")
}
