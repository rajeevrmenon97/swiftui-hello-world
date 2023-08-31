//
//  ContentView.swift
//  hello-world
//
//  Created by Rajeev R Menon on 8/29/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack { // ZStack places views on top of each other
            Image("background") // Replace "backgroundImage" with your image name
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Hello there!")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                Button(action: openYouTube) {
                    HStack {
                        
                        Image(systemName: "exclamationmark.triangle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                        Text("Do not press")
                            .fontWeight(.semibold)
                            .font(.title)
                        Image(systemName: "exclamationmark.triangle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
                }
            }
            
        }
    }
    
    func openYouTube() {
        if let youtubeURL = URL(string: "https://www.youtube.com/watch?v=dQw4w9WgXcQ") {
            UIApplication.shared.open(youtubeURL)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
