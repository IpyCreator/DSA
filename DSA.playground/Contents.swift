import UIKit

var greeting = "DSA loccha "
var array = [1,2,3,4,5,6,7,8,9]

let arrayRev = reverseArray(mainArray:array, secondaryArray:[Int](),count: array.count)
print(arrayRev)


func reverseArray(mainArray:[Int], secondaryArray:[Int], count:Int = 0 ) -> [Int] {
    if mainArray.isEmpty {
        return secondaryArray
    }
    var reverseArr = secondaryArray
    reverseArr.append(mainArray[count - 1])
    return reverseArray(mainArray: mainArray, secondaryArray: reverseArr, count: count - 1)
    
}
