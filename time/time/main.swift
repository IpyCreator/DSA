//
//  main.swift
//  time
//
//  Created by Saurabh on 29/01/24.
//

import Foundation

print("Hello, World!")

var items = [2,3,4,55,666,78,9,22,33,33,33]
/*
 33 = 3
 all = 1
 */
var trackFrequency = [Int:Int]()

for (_,item) in items.enumerated() {
   trackFrequency[item] = ((trackFrequency[item] ?? 0)  + 1)
}
for (key,values) in trackFrequency.enumerated() {
    print("\(key) frequency :---\(values)")
}


//for (index,item) in items.enumerated() {
//    if let item = trackFrequency[item] {
//        trackFrequency[item] = ((trackFrequency[item] ?? 0)  + 1)
//    }
//}



