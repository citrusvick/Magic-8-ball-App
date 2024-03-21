//
//  ContentView.swift
//  Magic8ball
//
//  Created by Mushik, Victoria on 02/26/24.
//

import SwiftUI

struct ContentView: View {
    @State private var prediction = ""
    let choicesArray = ["Yes",
                        "Absolutely",
                        "Without a Doubt",
                        "Most likely",
                        "You can count on it",
                        "As I see it, yes",
                        "As I see it, no",
                        "Absolutely not",
                        "Nope",
                        "Very doubtful",
                        "Uncertain. Try Again",
                        "Cannot predict right now"
    ]
    var body: some View {
        VStack {
            Image("ball")
                .resizable()
                .scaledToFit()
            Text(prediction)
                .font(.largeTitle)
                .frame(height: 120)
                .multilineTextAlignment(.center)
                .animation(.default, value: prediction)
            
            Spacer()
            
            Button("Predict!") {
                prediction = choicesArray.randomElement() ??
                "empty array"
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            .font(.title2)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
