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
        
    var body: some View {
        NavigationView {
            VStack {
                Text("Alarms")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                AlarmListView()
                    .modelContainer(modelContext.container)
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(PreviewContainer.container)
        
}
