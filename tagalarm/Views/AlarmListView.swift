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
        NavigationStack {
            List(alarms){ alarm in
                HStack{
                    VStack(alignment: .leading){
                        Text("\(alarm.date.formatted(.dateTime.hour().minute()))")
                            .font(.largeTitle)
                        
                        Text(alarm.label.isEmpty ?
                                "Alarm" :
                                alarm.label)
                            .font(.body)
                            .fontWeight(.regular)
                            .foregroundColor(.secondary)
                    }
                    .padding(4)
                }
            }
            .toolbar {
                NavigationLink {
                    CreateAlarmView()
                        .modelContainer(modelContext.container)
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    AlarmListView()
        .modelContainer(PreviewContainer.container)
}
