fun main() {
    val side1 = 5
    val side2 = 5
    val side3 = 5

    when {
        side1 == side2 && side2 == side3 -> println("The triangle is Equilateral")
        side1 == side2 || side1 == side3 || side2 == side3 -> println("The triangle is Isosceles")
        else -> println("The triangle is Scalene")
    }


    val hoursWorked = 45
    val hourlyRate = 20.0

    val regularHours = if (hoursWorked > 40) 40 else hoursWorked
    val overtimeHours = if (hoursWorked > 40) hoursWorked - 40 else 0
    val overtimeRate = hourlyRate * 1.5

    val totalSalary = (regularHours * hourlyRate) + (overtimeHours * overtimeRate)

    
    println("Total Salary: $$totalSalary")
}
