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
        AsyncImage(url: URL(string: imageURL), scale: 3.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
