// Created 08.11.2023

import SwiftUI

struct SimpleTab: View {
    var body: some View {
        TabView {
            Text("Label 1")
                .tabItem {
                    Label("Tab 1", systemImage: "questionmark")
                }
            Text("Label 2")
                .tabItem {
                    Label("Tab 2", systemImage: "calendar")
                }
            Text("Label 3")
                .tabItem {
                    Label("Tab 3", systemImage: "car")
                }
        }  
         .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    SimpleTab()
}
