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
                Text("Home View")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .background(Color.blue)
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            .tag(0)
            
            VStack {
                Text("Search View")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .background(Color.gray)
            }
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Search")
            }
            .tag(1)
            
            VStack {
                Text("Profile View")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .background(Color.green)
            }
            .tabItem {
                Image(systemName: "person.fill")
                Text("Profile")
            }
            .tag(2)
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
