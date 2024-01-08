//
//  main.swift
//  sumofnumbers
//
//  Created by Saurabh on 08/01/24.
//

import Foundation

print("Enter you inputs ")
let argument = readLine()
if let number = Int(argument ?? "0") {
    let sum = getSumOfDigits(forNumber: number)
    print("sum: \(sum)")
}

@discardableResult
func getSumOfDigits(forNumber number: Int) -> Int {
    var num = number
    var sum = 0
    while num != 0 {
        sum = sum + (num % 10)
        num = num / 10
    }
    return sum
}

