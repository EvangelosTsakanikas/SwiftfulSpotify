//
//  ImageTitleRowCell.swift
//  SwiftfulSpotify
//
//  Created by user274186 on 2/5/25.
//

import SwiftUI

struct ImageTitleRowCell: View {
    
    var imageSize: CGFloat = 100
    var imageName: String = Constants.randomImage
    var title: String = "Some Item Name"
    
    var body: some View {
        VStack(alignment: .leading) {
            ImageLoaderView(urlString: imageName)
                .frame(width: imageSize, height: imageSize)
            
            Text(title)
                .font(.callout)
                .foregroundStyle(.spotifyLightGray)
                .lineLimit(2)
                .padding(4)
//                .multilineTextAlignment(.center)
        }
        .frame(width: imageSize)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        
        ImageTitleRowCell()
    }
}
