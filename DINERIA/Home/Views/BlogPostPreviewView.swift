//
//  BlogPostPreviewView.swift
//  DINERIA
//
//  Created by Ria Narang on 2024-03-07.
//

import SwiftUI

struct BlogPostPreviewView: View {
    let blogpost: BlogPostItem
    
    var body: some View {
        VStack {
            HStack {
                Text("\(blogpost.name) • \(blogpost.location) • ")
                rating(for: blogpost.overallRating)
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(blogpost.coverImageURLs.prefix(3), id: \.self) { imageUrl in
                        ImageView(imageUrl: imageUrl)
                            .frame(width: 100, height: 100) // Adjust size as needed
                    }
                }
            }
        }
    }
    
    // MARK: Private
    private func rating(for rating: Int) -> some View {
        HStack {
            ForEach(1...5, id: \.self) { index in
                Image(index <= rating ? "yellowStar" : "greyStar")
            }
        }
    }
}
