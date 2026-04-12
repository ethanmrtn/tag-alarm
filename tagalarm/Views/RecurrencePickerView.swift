//
//  RecurrencePickerView.swift
//  tagalarm
//
//  Created by ethan martin on 12/4/2026.
//

import SwiftUI

struct RecurrencePickerView: View {
    @Binding var recurrence: Set<Weekday>
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(Weekday.allCases){ day in
                    Button {
                        toggleSelection(for: day)
                    } label: {
                        HStack {
                            Text("Every \(day.rawValue.capitalized)")
                            Spacer()
                            if recurrence.contains(day) {
                                Image(systemName: "checkmark")
                            }
                        }
                    }
                }
            }
            .listStyle(.insetGrouped)
        }
    }
    
    private func toggleSelection(for day: Weekday) {
        if recurrence.contains(day) {
            recurrence.remove(day)
        } else {
            recurrence.insert(day)
        }
    }
}

#Preview {
    @Previewable @State var recurrence: Set<Weekday> = []
    RecurrencePickerView(recurrence: $recurrence)
}
