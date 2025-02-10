//
//  ContentView.swift
//  YouAreAwesomeNew
//
//  Created by Student1 on 2/10/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    var body: some View {
        
        VStack {
            Spacer()
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius:30))
                .shadow(radius: 30)
            
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            Spacer()
            
            Button("Press Me!") {
                let message1 = "You are Awesome!"
                let message2 = "You are Great!"
//                let imageString1 = "hand.thumbsup"
//                let imageString2 = "sun.max.fill"
//                
//                if message == message1 {
//                    message = message2
//                    imageString = imageString2
//                } else {
//                    message = message1
//                    imageString = imageString1
//                }
                
                message = (message == message1 ? message2: message1)
                imageName = ( imageName == "image2" ? "image3" : "image2" )
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
