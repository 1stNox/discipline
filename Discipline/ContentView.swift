//
//  ContentView.swift
//  Discipline
//
//  Created by Finn-Lasse Reichling on 23.04.25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    var body: some View {
        TabView {
            VStack {
                Text("Workouts")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .background(Color.blue)
            }
            .tabItem {
                Image(systemName: "figure.strengthtraining.functional")
                Text("Workouts")
            }
            .tag(0)
            
            VStack {
                Text("Exercises")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .background(Color.gray)
            }
            .tabItem {
                Image(systemName: "dumbbell.fill")
                Text("Exercises")
            }
            .tag(1)
            
            VStack {
                Text("History")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .background(Color.green)
            }
            .tabItem {
                Image(systemName: "list.bullet.clipboard.fill")
                Text("History")
            }
            .tag(2)
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
