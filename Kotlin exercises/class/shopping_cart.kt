class Item(val name: String, val price: Double)

class ShoppingCart {
    private val items = mutableListOf<Item>()

    fun addItem(item: Item) {
        items.add(item)
    }

    fun removeItem(item: Item) {
        items.remove(item)
    }

    fun calculateTotalPrice(): Double {
        var totalPrice = 0.0
        items.forEach { totalPrice += it.price }
        return totalPrice
    }
}

fun main() {
    val shoppingCart = ShoppingCart()

    val item1 = Item("Shirt", 25.0)
    val item2 = Item("Pants", 35.0)

    shoppingCart.addItem(item1)
    shoppingCart.addItem(item2)

    println("Total price: ${shoppingCart.calculateTotalPrice()}")
}
