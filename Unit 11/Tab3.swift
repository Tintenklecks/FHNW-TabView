//
//  Tab3.swift
//  FHNW-TabView
//
//  Created by Ingo Boehme on 07.12.22.
//

import SwiftUI

struct Tab3: View {
    @Binding var selectedTab: Int
    var body: some View {
        Button("Tap to switch to first tab") {
            selectedTab = 0
        }
    }
}

struct Tab3_Previews: PreviewProvider {
    static var previews: some View {
        Tab3(selectedTab: .constant(0))
    }
}
