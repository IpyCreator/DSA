//
//  main.swift
//  palindromenumber
//
//  Created by Saurabh on 08/01/24.
//

import Foundation

print("Enter the number")
let number = readLine()
// First implementation
if let isPalindrom = reverse(forNumber: number) {
    if isPalindrom.0 == isPalindrom.1 {
        print("Number is palindrome")
    } else {
        print("Not a palindrome")
    }
}

// Second implelmentation
if let num = number {
    if Int(num) == Int(String(num.reversed())) {
        print("Number is palindrome")
    } else {
        print("Not a palindrome")
    }
}



func reverse(forNumber number: String?) -> (Int,Int)? {
    guard let number = number, var num = Int(number) else { return nil }
    var reversedNum = 0
    let originalNum = num
    while num != 0 {
        let digit = num % 10
        reversedNum = (reversedNum * 10) + digit
        num = num / 10
    }
    return (originalNum,reversedNum)
}
