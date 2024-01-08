//
//  main.swift
//  Reverse a number
//
//  Created by Saurabh on 08/01/24.
//

import Foundation

print("Enter a number")
let number = readLine()
let reverseNumString = getReversedString(forNumber: number)
let reverseNumInt = getReverseInt(forNumber: number)
print("Reversed number by using String implementation:  \(String(describing: reverseNumString))")
print("Reversed number by using Int implementation:  \(String(describing: reverseNumInt))")
// String implementation

func getReversedString(forNumber number: String?) -> Int? {
    var reversedNum = ""
    guard let number = number, var num = Int(number) else { return 0 }
    while num != 0 {
        let digit = num % 10
        reversedNum = reversedNum + "\(digit)"
        num = num / 10
    }
    
    return Int(reversedNum)
}

// Int implementation
func getReverseInt(forNumber number: String?) -> Int {
    guard let number = number, var num = Int(number) else { return 0 }
    var reversedNum = 0
    while num != 0 {
        let digit = num % 10
        reversedNum =  (reversedNum * 10) + digit
        num = num / 10
    }
    return reversedNum
}
