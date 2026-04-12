//
//  CreateAlarmView.swift
//  tagalarm
//
//  Created by ethan martin on 12/4/2026.
//

import SwiftUI
import SwiftData

struct CreateAlarmView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss
    @State private var date: Date = Date()
    @State private var label: String = ""
    @State private var isSnoozable: Bool = false
    @State private var recurrence: Set<Weekday> = []
    
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
        let alarm = Alarm(label: label, date: date, recurrence: recurrence, snoozable: isSnoozable)
        modelContext.insert(alarm)
    }
}

#Preview {
    CreateAlarmView()
        .modelContainer(PreviewContainer.container)
}
