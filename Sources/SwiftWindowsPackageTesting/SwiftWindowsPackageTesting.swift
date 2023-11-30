// The Swift Programming Language
// https://docs.swift.org/swift-book

import PowerAssert
import Foundation

struct YourType: Codable {
    func dot() {
        #assert("true".contains("uet"))
    }
}
