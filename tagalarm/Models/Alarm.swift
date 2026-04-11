//
//  Item.swift
//  tagalarm
//
//  Created by ethan martin on 11/4/2026.
//

import Foundation
import SwiftData

// A model to store alarms that are created by the user
@Model
final class Alarm {
    // standard UUID generated on init
    var id: UUID
    // the label given to the alarm by the user
    var label: String
    // the hour that the alarm should go off
    var hour: Int
    // the minute that the alarm should go off
    var minute: Int
    // integer representation of the days that the alarm should repeat
    // 0 = sunday, 6 = saturday
    var recurrence: [Int]
    // whether or not the alarm is snoozable
    var snoozable: Bool
    
    init(label: String, hour: Int, minute: Int, recurrence: [Int] = [], snoozable: Bool) {
        self.id = UUID()
        self.label = label
        self.hour = hour
        self.minute = minute
        self.recurrence = recurrence
        self.snoozable = snoozable
    }
}
