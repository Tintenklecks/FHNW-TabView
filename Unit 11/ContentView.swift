//
//  ContentView.swift
//  Unit 11
//
//  Created by Ingo Boehme on 05.12.22.
//

import SwiftUI

// MARK: - ContentView


struct ContentView: View {
    @State private var selectedIndex: Int = 2
    var body: some View {
        VStack {
            Text("\(selectedIndex)")
            TabView(selection: $selectedIndex) {
                Text("View 1")
                    .tabItem {
                        Label("Tab 1", systemImage: "car")
                    }
                    .tag(1)
                Text("View 2")
                    .tabItem {
                        Label("Tab 2", systemImage: "car.2.fill")
                    }
                    .tag(2)
                SimpleTab()
                    .tabItem {
                        Label("Simple", systemImage: "calendar")
                    }
                    .tag(3)
                CallBy()
                    .tabItem {
                        Label("Reference", systemImage: "shared.with.you.circle.fill")
                    }
                    .tag(4)
                Tab3(selectedTab: $selectedIndex)
                    .tabItem {
                        Label("Tab 3", systemImage: "123.rectangle.fill")
                    }
                    .tag(5)

            }
        }
    }
}

// MARK: - ContentView_Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
