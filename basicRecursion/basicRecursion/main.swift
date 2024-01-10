//
//  main.swift
//  basicRecursion
//
//  Created by Saurabh on 10/01/24.
//

import Foundation

print("Basic recursion")
if let number = Int(readLine() ?? "") {
    basicRecursion(forTimes: number)
}

func basicRecursion(forTimes times: Int) {
    if times == 0 { return }
    print("basic recusrion")
    basicRecursion(forTimes: times - 1)
}
