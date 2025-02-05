//
//  ContentView.swift
//  SwiftfulSpotify
//
//  Created by user274186 on 2/4/25.
//

import SwiftUI
import SwiftfulUI
import SwiftfulRouting

struct ContentView: View {
    
    @Environment(\.router) var router
    
    var body: some View {
        List {
            Button("Open Spotify") {
                router.showScreen(.fullScreenCover) { router in
                    SpotifyHomeView(viewModel: SpotifyHomeViewModel(router: router))
                }
            }
        }
        
    }
}

#Preview {
    RouterView { _ in    
        ContentView()
    }
}
