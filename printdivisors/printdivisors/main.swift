//
//  main.swift
//  printdivisors
//
//  Created by Saurabh on 10/01/24.
//

import Foundation

print("enter number")
if let number = Int(readLine() ?? "") {
    for i in 1...number {
        if number % i == 0 {
            print("----\(i) is divisor of \(number)")
        }
    }
}



