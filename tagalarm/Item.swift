//
//  Item.swift
//  tagalarm
//
//  Created by ethan martin on 11/4/2026.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
