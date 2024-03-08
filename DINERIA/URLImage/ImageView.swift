//
//  ImageView.swift
//  DINERIA
//
//  Created by Ria Narang on 2024-03-07.
//

import SwiftUI
import URLImage


// MARK: - ImageView

struct ImageView: View {
    let imageUrl: URL

    // TODO: add error handling
    var body: some View {
        URLImage(imageUrl) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .frame(width: 100, height: 100)

    }
}
