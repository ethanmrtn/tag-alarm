//
//  CreateAlarmView.swift
//  tagalarm
//
//  Created by ethan martin on 12/4/2026.
//

import SwiftUI
import SwiftData

struct UpsertAlarmView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss
    var existingAlarm: Alarm?
    @State private var date: Date
    @State private var label: String
    @State private var isSnoozable: Bool
    @State private var recurrence: Set<Weekday>
    
    init(existingAlarm: Alarm? = nil) {
        if existingAlarm != nil {
            self.existingAlarm = existingAlarm
            self.date = existingAlarm!.date
            self.label = existingAlarm!.label
            self.isSnoozable = existingAlarm!.snoozable
            self.recurrence = existingAlarm!.recurrence
        } else {
            self.existingAlarm = nil
            self.date = Date()
            self.label = ""
            self.isSnoozable = false
            self.recurrence = []
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack{
                DatePicker(
                    "",
                    selection: $date,
                    displayedComponents: [.hourAndMinute]
                ).datePickerStyle(.wheel).labelsHidden()
                
                List {
                    TextField("Label", text: $label)
                    Toggle("Snoozable", isOn: $isSnoozable)
                    NavigationLink{ RecurrencePickerView(recurrence: $recurrence)
                    } label:{
                        Text("Repeats")
                    }
                }
            }
            .toolbar {
                Button {
                    saveAlarm()
                    dismiss()
                } label: {
                    Image(systemName: "checkmark")
                }
            }
        }
    }
    
    private func saveAlarm() {
        if(existingAlarm != nil) {
            existingAlarm?.label = label
            existingAlarm?.date = date
            existingAlarm?.recurrence = recurrence
            existingAlarm?.snoozable = isSnoozable
        } else {
            let alarm = Alarm(label: label, date: date, recurrence: recurrence, snoozable: isSnoozable)
            modelContext.insert(alarm)
        }
    }
}

#Preview {
    UpsertAlarmView()
        .modelContainer(PreviewContainer.container)
}
