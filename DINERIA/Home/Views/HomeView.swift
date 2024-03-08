//
//  HomeView.swift
//  DINERIA
//
//  Created by Ria Narang on 2024-03-07.
//

import Foundation
import SwiftUI


// MARK: - HomeView

struct HomeView: View {
    
    @ObservedObject private var viewModel: HomeViewModel = HomeViewModel()
    
    private var blogPosts: [BlogPostItem] {
        viewModel.blogPostList
    }
    
    var body: some View {
        ScrollView {
            ForEach(blogPosts, id: \.name) { blogPost in
                BlogPostPreviewView(blogpost: blogPost)
                    .task {
                        if viewModel.hasReachedEnd(of: blogPost) {
                            viewModel.loadMoreData()
                        }
                    }
            }

        }
    }
}
