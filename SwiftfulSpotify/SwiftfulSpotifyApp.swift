//
//  SwiftfulSpotifyApp.swift
//  SwiftfulSpotify
//
//  Created by user274186 on 2/4/25.
//

import SwiftUI
import SwiftfulRouting

@main
struct SwiftfulSpotifyApp: App {
    var body: some Scene {
        WindowGroup {
            RouterView { _ in            
                ContentView()
            }
        }
    }
}
