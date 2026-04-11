//
//  ContentView.swift
//  tagalarm
//
//  Created by ethan martin on 11/4/2026.
//

import SwiftUI
import SwiftData
import AlarmKit

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Alarm]
        
    var body: some View {
       
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Alarm.self, inMemory: true)
}
