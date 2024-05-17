fun main() {
    val array = intArrayOf(5, -3, -8, 4, 2)
    mergeSort(array)
    println("Sorted Array: ${array.joinToString(", ")}")
}

fun mergeSort(arr: IntArray) {
    if (arr.size < 2) {
        return
    }
    
    val mid = arr.size / 2
    val leftArray = arr.copyOfRange(0, mid)
    val rightArray = arr.copyOfRange(mid, arr.size)
    
    mergeSort(leftArray)
    mergeSort(rightArray)
    
    merge(arr, leftArray, rightArray)
}

fun merge(arr: IntArray, leftArray: IntArray, rightArray: IntArray) {
    var i = 0
    var j = 0
    var k = 0
    
    while (i < leftArray.size && j < rightArray.size) {
        if (leftArray[i] <= rightArray[j]) {
            arr[k++] = leftArray[i++]
        } else {
            arr[k++] = rightArray[j++]
        }
    }
    
    while (i < leftArray.size) {
        arr[k++] = leftArray[i++]
    }
    
    while (j < rightArray.size) {
        arr[k++] = rightArray[j++]
    }
}



