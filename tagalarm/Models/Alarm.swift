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
    // date object that's used to store the hour and minute the alarm should go off
    var date: Date
    // enum representation of the days that the alarm should repeat
    var recurrence: Set<Weekday>
    // whether or not the alarm is snoozable
    var snoozable: Bool
    
    init(label: String, date: Date, recurrence: Set<Weekday> = [], snoozable: Bool) {
        self.id = UUID()
        self.label = label
        self.date = date
        self.recurrence = recurrence
        self.snoozable = snoozable
    }
}
