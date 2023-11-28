//
//  File.swift
//  
//
//  Created by Adora Lynch on 11/28/23.
//

import Foundation
import SwiftWindowsPackageTesting
import CodableWrappers

struct YourType: Codable {
    @MillisecondsSince1970DateCoding
    var millisecondsDate: Date
    @Base64Coding
    var someData: Data
}
