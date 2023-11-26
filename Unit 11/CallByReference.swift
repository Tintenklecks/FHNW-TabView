// Created 08.11.2023

import SwiftUI

// MARK: - CallBy

struct CallBy: View {
    @State private var myText: String = "Something"

    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            Text(myText)
            TextField("Whatsoever", text: $myText)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                .frame(width: 100)
            MyCBRView(somePrivateName: $myText)
        }
    }
}

// MARK: - MyCBRView

struct MyCBRView: View {
    @Binding var somePrivateName: String

    var body: some View {
        Image(systemName: "car").font(.system(size: 80))
            .onTapGesture {
                somePrivateName = "\(somePrivateName)!"
            }
    }
}

#Preview {
    CallBy()
}

#Preview {
    @State var text = "Hallo Welt"
    return MyCBRView(somePrivateName: $text)
}
