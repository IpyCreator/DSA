//
//  main.swift
//  Prime
//
//  Created by Saurabh on 10/01/24.
//

import Foundation

print("enter number")
if let number = Int(readLine() ?? "") {
    var isPrime = true
    for i in 2..<number {
        if number % i == 0 {
            print("Not a prime number")
            isPrime = false
            break
        }
    }
        if isPrime {
                print("is a prime number")
    }
    
}

