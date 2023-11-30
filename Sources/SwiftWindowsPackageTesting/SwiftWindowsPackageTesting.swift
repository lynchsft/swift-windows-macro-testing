// The Swift Programming Language
// https://docs.swift.org/swift-book

import PowerAssert
import Foundation

struct YourType: Codable {
    // @MillisecondsSince1970DateCoding
    var millisecondsDate: Date
    // @Base64Coding
    var someData: Data
    
    func dot() {
        #assert("true".contains("ue"))
    }
}
