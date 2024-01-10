//
//  main.swift
//  1toNnumbers
//
//  Created by Saurabh on 10/01/24.
//

import Foundation

print("Enter number")
if let number = Int(readLine() ?? "") {
    printRange(forNumber: number, andIncrementar: 1)
}

func printRange(forNumber number: Int, andIncrementar increment: Int) {
    if (number+1) == increment {
        return
    }
    print("Number: \(increment)")
    printRange(forNumber: number, andIncrementar:increment + 1)
    
}
    
