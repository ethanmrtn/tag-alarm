//
//  AlarmListView.swift
//  tagalarm
//
//  Created by ethan martin on 11/4/2026.
//

import SwiftUI
import SwiftData

struct AlarmListView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var alarms: [Alarm]

    var body: some View {
        List(alarms){ alarm in
            HStack{
                VStack(alignment: .leading){
                    Text("\(alarm.hour):\(alarm.minute)")
                        .font(.largeTitle)
                    
                    Text(alarm.label)
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(.secondary)
                }
                .padding(4)
            }
        }
    }
}

#Preview {
    AlarmListView()
        .modelContainer(PreviewContainer.container)
}
