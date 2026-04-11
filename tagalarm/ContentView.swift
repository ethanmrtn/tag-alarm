//
//  ContentView.swift
//  tagalarm
//
//  Created by ethan martin on 11/4/2026.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Alarm]
        
    var body: some View {
       
    }
}

struct PreviewContainer {
    static let container: ModelContainer = {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        do {
            let container = try ModelContainer(for: Alarm.self, configurations: config)
            
            let sampleAlarms = [
                Alarm(label: "Test Alarm", hour: 16, minute: 05, snoozable: false),
                Alarm(label: "Morning Time!", hour: 7, minute: 15, snoozable: true)
            ]
            
            for alarm in sampleAlarms {
                container.mainContext.insert(alarm)
            }
            return container
        } catch {
            fatalError("Error creating preview container: \(error.localizedDescription)")
        }
    }()
}

#Preview {
    ContentView()
        .modelContainer(PreviewContainer.container)
        
}
