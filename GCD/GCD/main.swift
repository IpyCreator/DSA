//
//  main.swift
//  GCD
//
//  Created by Saurabh on 10/01/24.
//

import Foundation

print("Enter first numbers")
let first = Int(readLine() ?? "")
print("Enter second numbers")
let second = Int(readLine() ?? "")

if let first = first, 
    let second = second {
    var gcd = 0
    if first > second {
        gcd = findGCD(second, first)
    } else {
        gcd = findGCD(first, second)
    }
    print("GCD is :--\(gcd)")
}


// Euclids steps
func findGCD(_ first: Int,_ second: Int) -> Int {
    var small = first
    var larg = second
    
    while small != 0 {
        let remain = larg % small
        larg = small
        small = remain
    }
    return larg
}

