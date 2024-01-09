//
//  main.swift
//  Armstrong
//
//  Created by Saurabh on 10/01/24.
//

import Foundation

print("Enter a number")
let number = Int(readLine() ?? "")

if let number = number ,findArmstrong(number:number) {
    print("is armstrong")
} else {
    print("is not armstrong")
}

func findArmstrong(number num: Int) -> Bool {
    var numberCount = num
    var count = 0 // denoting power
    // Find the count
    while numberCount != 0 {
        numberCount = numberCount / 10
        count = count + 1
    }
    // Single digits numbers are already armstrong
    if count == 1 { return true }
    numberCount = num
    var sum = 0
    for _ in 1...count {
        var powSum = numberCount % 10
        for _ in 1 ... (count - 1) {
            powSum = powSum * (numberCount % 10)
        }
        sum = sum + powSum
        numberCount = numberCount / 10
    }
    return sum == num ? true : false
}
