//
//  ContentView.swift
//  arrays lesson 9
//
//  Created by natural health on 1/27/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var photoName = ""
    @State private var photoNumber = 0
    @State private var messageNumber = 0
    
    var body: some View {
        VStack {
            Spacer()
            Image(photoName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 45))
                .shadow(radius: 50)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
            Spacer()
            
            Button("Show Message!") {
                let messages = ["You are Awesome!",
                              "You are Great!",
                              "You are Fantastic!",
                              "Fabulous? That's You!",
                                "You  make me Smile!",
                "When the Genius Bar needs help, they call You!"]
                message = messages[messageNumber]
                messageNumber = messageNumber + 1
                if messageNumber == messages.count {
                    messageNumber = 0
                }
                
                
                photoName = "photo\(photoNumber)"
//                photoNumber = photoNumber + 1
                photoNumber += 1
                if photoNumber > 9 {
                    photoNumber = 0
                }
//        print(photoNumber) do not show on content view only in console
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
