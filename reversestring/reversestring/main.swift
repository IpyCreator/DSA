//
//  main.swift
//  reversestring
//
//  Created by Saurabh on 12/01/24.
//

import Foundation

let item = "Naman isi naman"
var array = Array(item)
let arrayRev = String(reverseArray(mainArray:array,
                                   secondaryArray:[Character](),
                                   count: array.count - 1))
print("\"\(item)\" \(item.lowercased() == arrayRev.lowercased() ? "is palindrom":"is not palindrom")")


func reverseArray(mainArray:[Character],
                  secondaryArray:[Character],
                  count:Int = 0 ) -> [Character] {
    if count < 0 {
        return secondaryArray
    }
    // 2 lines can be replaced by using inout
    var reverseArr = secondaryArray
    reverseArr.append(mainArray[count])
    return reverseArray(mainArray: mainArray,
                        secondaryArray: reverseArr,
                        count: count - 1)
    
}

