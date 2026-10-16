//
//  ContentView.swift
//  NgbokoliLab3
//
//  Created by William Ngbokoli on 10/13/26.
//

import SwiftUI

struct ContentView: View {
    @State var image = ""
    @State var text = ""
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .padding()
            Text(text)
                .fontWeight(.thin)
                .font(.largeTitle)
            Spacer()
            Button("Press Me!") {
                switch image {
                case "", "hand.thumbsup":
                    image = "sun.max.fill"
                case "sun.max.fill":
                    image = "hand.thumbsup"
                default:
                    image = ""
                    
                }
                switch text {
                case "", "You Are Great!":
                    text = "You Are Awesome!"
                case "You Are Awesome!":
                    text = "You Are Great!"
                default:
                    text = ""
                }
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle)
            .foregroundStyle(.white)
            .tint(.orange)
            

            .padding()
        }
    }
}
#Preview {
    ContentView()
}
