//
//  Weekday.swift
//  tagalarm
//
//  Created by ethan martin on 12/4/2026.
//

import Foundation
enum Weekday: String, CaseIterable, Identifiable, Encodable, Decodable {
    case sunday = "Sunday"
    case monday = "Monday"
    case tuesday = "Tuesday"
    case wednesday = "Wednesday"
    case thursday = "Thursday"
    case friday = "Friday"
    case saturday = "Saturday"
    
    var id: String { self.rawValue }
    
    // Short string for display summary (e.g., "Mon Tue")
    var shortName: String {
        String(self.rawValue.prefix(3))
    }
}
