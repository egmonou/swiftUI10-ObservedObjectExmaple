//
//  ContentView.swift
//  ObservedObjectExmaple
//
//  Created by administrator on 19/09/2024.
//

import SwiftUI

class SomeViewModel: ObservableObject {
    @Published var data1: String = "HellowWordls01"
    @Published var data2: String = "HellowWordls02"
}

struct HellowView: View {
    
    @StateObject var viewModel = SomeViewModel()
    
    var body: some View {
        VStack {
            Text(viewModel.data1)
            Text(viewModel.data2)
            
            Button(action: {
                if viewModel.data1 == "HellowWordls01" {
                    viewModel.data1 = "change01"
                    viewModel.data2 = "change02"
                } else {
                    viewModel.data1 = "HellowWordls01"
                    viewModel.data2 = "HellowWordls02"
                }

            }, label: {
                Text("Click Me")
            })
        }
        .font(.largeTitle)
        .padding()
    }
}

struct RandomNumberView: View {
    @State private var randomNUmber = 0
    var body: some View {
        VStack {
            Text("Raodm number is \(randomNUmber)")
            Button(action: {
                randomNUmber = (0..<1000).randomElement() ?? 0
            }, label: {
                Text("Randomize Number")
            })
            HellowView()
        }
    }
}

#Preview {
    RandomNumberView()
}
