//
//  Service.swift
//  TestCI
//
//  Created by Mykola Zhurba on 13.08.2021.
//

import Foundation

class Calculator {

    func add(a: Int, b: Int) -> Int {
        a + b
    }

    func substract(a: Int, b: Int) -> Int {
        a - b
    }

    func multiply(a: Int, b: Int) -> Int {
        a * b
    }

    func divide(a: Int, b: Int) -> Double? {
        guard b != 0 else {
            return nil
        }

        return Double(a) / Double(b)
    }

}
