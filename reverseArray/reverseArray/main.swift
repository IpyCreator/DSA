//
//  main.swift
//  reverseArray
//
//  Created by Saurabh on 12/01/24.
//

import Foundation

var array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]

let arrayRev = reverseArray(mainArray:array, 
                            secondaryArray:[Int](),
                            count: array.count - 1)
print(arrayRev)


func reverseArray(mainArray:[Int],
                  secondaryArray:[Int],
                  count:Int = 0 ) -> [Int] {
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

