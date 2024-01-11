//
//  main.swift
//  sumofnumber
//
//  Created by Saurabh on 10/01/24.
//

import Foundation

print("Enter number")
if let number = Int(readLine() ?? "") {
   let sum = sumOf(number: number)
    print("Sum of number:\(sum)")
}


func sumOf(number num:Int,
           sumOfNumber sum: Int = 1,
           incrementer increment: Int = 1) -> Int {
    return (num == increment) ? sum : sumOf(number: num,
                                            sumOfNumber: sum + (increment+1), incrementer: increment + 1)
}
