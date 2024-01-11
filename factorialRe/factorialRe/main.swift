//
//  main.swift
//  factorialRe
//
//  Created by Saurabh on 11/01/24.
//

import Foundation

print("Enter number")
if let number = Int(readLine() ?? "") {
   let factorial = factorial(number: number)
    print("factorial of number:\(factorial)")
}


func factorial(number num:Int,
           sumOfNumber sum: Int = 1,
           incrementer increment: Int = 1) -> Int {
    return (num == increment) ? sum :  factorial(number: num,
                                            sumOfNumber: sum * (increment+1), incrementer: increment + 1)
}
