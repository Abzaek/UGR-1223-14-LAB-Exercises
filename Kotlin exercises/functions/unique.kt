fun hasUniqueCharacters(s: String): Boolean {
    val charSet = mutableSetOf<Char>()
    for (char in s) {
        if (!charSet.add(char)) {
            return false
        }
    }
    return true
}

fun main() {
    val str1 = "hello"
    val str2 = "world"
    
    println(hasUniqueCharacters(str1))
    println(hasUniqueCharacters(str2))
}
