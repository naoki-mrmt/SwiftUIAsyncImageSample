//
//  ContentView.swift
//  SwiftUIAsyncImageSample
//
//  Created by cmStudent on 2021/10/14.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Property
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    
    var body: some View {
        //MARK: - 1. BASIC
//        AsyncImage(url: URL(string: imageURL))
        
        // MARK: - 2. SCALE
//        AsyncImage(url: URL(string: imageURL), scale: 3.0)
        
        // MARK: - 3. PLACEHOLDER
//        AsyncImage(url: URL(string: imageURL)) { image in
//            image.imageModifier()
//        } placeholder: {
//            Image(systemName: "photo.circle.fill").iconModifier()
//        }
//        .padding(40)
        
        // MARK: - 4. PHASE
        AsyncImage(url: URL(string: imageURL)) { phase in
            // SUCCESS: The image successfully loaded.
            // FAILURE: The image failed to load with an error.
            // EMPTY: No image is loaded.
            
            if let image = phase.image {
                image.imageModifier()
            } else if phase.error != nil {
                Image(systemName: "ant.circle.fill").iconModifier()
            } else {
                Image(systemName: "photo.circle.fill").iconModifier()
            }
        }
        .padding(40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Image {
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconModifier() -> some View {
        self
            .imageModifier()
            .frame(maxWidth: 128)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}
