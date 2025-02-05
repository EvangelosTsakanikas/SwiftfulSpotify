//
//  SpotifyPlaylistView.swift
//  SwiftfulSpotify
//
//  Created by user274186 on 2/5/25.
//

import SwiftUI

struct SpotifyPlaylistView: View {
    
    var product: Product = .mock
    
    var body: some View {
        ZStack {
            Color.spotifyBlack.ignoresSafeArea()
            
            ScrollView(.vertical) {
                LazyVStack(spacing: 12) {
                    PlaylistHeaderCell(
                        height: 250,
                        title: product.title,
                        subtitle: product.brand ?? "",
                        imageName: product.thumbnail
                    )
                }
            }
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    SpotifyPlaylistView()
}
