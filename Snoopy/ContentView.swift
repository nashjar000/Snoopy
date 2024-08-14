//
//  ContentView.swift
//  Snoopy
//
//  Created by Jared Nash on 8/14/24.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    // AVPlayer for playing sound
    var player: AVPlayer?
    
    init() {
        // Load the sound file
        if let soundURL = Bundle.main.url(forResource: "Doctor_Who_Theme_2024", withExtension: "mp3") {
            player = AVPlayer(url: soundURL)
        }
    }
    
    var body: some View {
        
        ZStack {
            Color(.black).edgesIgnoringSafeArea(.all)
            VStack {
                Button(action: {
                    // Play the sound when image is tapped
                    self.player?.play()
                }) {
                    Image("DoctorSnoopy")
                        .resizable()
                        .cornerRadius(50)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                }
                .buttonStyle(PlainButtonStyle()) // Remove default button style
                
                Text("Doctor Snoopy")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                
                // Optional: Add a share link if needed
                ShareLink(item: /*@START_MENU_TOKEN@*/URL(string: "https://developer.apple.com/xcode/swiftui")!/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }


#Preview {
    ContentView()
}

