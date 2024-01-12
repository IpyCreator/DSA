//
//  main.swift
//  fibonaccirec
//
//  Created by Saurabh on 12/01/24.
//

import Foundation

print("Fibonacci number")
let num = 10
print("Sequence:- ")
fibonacciNum(number: num)
func fibonacciNum(base:Int = 0,
                  next:Int = 1,
                  number num:Int) {
    if num == 1 {
        return
    }
    print("\(next) ")
    return fibonacciNum(base: next, 
                        next: base + next,
                        number: num - 1)
}

