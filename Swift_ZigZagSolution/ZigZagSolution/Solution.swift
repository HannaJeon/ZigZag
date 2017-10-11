//
//  Solution.swift
//  ZigZagSolution
//
//  Created by HannaJeon on 2017. 10. 11..
//  Copyright © 2017년 HannaJeon. All rights reserved.
//

import Foundation

struct Solution {
    func oddSum(str: String) -> Int {
        func splitNumber(str: String) -> [String] {
            var str = str
            for char in str {
                if Int(String(char)) == nil {
                    if let index = str.index(of: char) {
                        str.replaceSubrange(index...index, with: " ")
                    }
                }
            }
            return str.components(separatedBy: " ")
        }
        
        let strArr = splitNumber(str: str)
        var sum = Int()
        
        for char in strArr {
            if let num = Int(String(char)), num % 2 == 1 {
                sum += num * num
            }
        }
        return sum
    }
}


