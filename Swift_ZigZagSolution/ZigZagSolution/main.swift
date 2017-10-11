//
//  main.swift
//  ZigZagSolution
//
//  Created by HannaJeon on 2017. 10. 11..
//  Copyright © 2017년 HannaJeon. All rights reserved.
//

import Foundation

let solution = Solution()

let str = "ab2v9bc13j5jf4jv21"
let description = """
입력된 문자열에서 홀수인 숫자들의 제곱의 합을 출력하는 프로그램입니다.
문자열을 입력해 주세요.
입력 예) ab2v9bc13j5jf4jv21
출력 예) \(solution.oddSum(str: str))\n
"""

print(description)
while let input = readLine() {
    print("\(solution.oddSum(str: input))\n")
}

