//
//  HomeViewModel.swift
//  DINERIA
//
//  Created by Ria Narang on 2024-03-07.
//

import Foundation
import Combine


// MARK: - HomeViewModel

class HomeViewModel: ObservableObject {
    @Published var blogPostList: [BlogPostItem] = []
    
    private let repository: HomeViewRepository
    
    init(repository: HomeViewRepository = HomeViewRepository()) {
        self.repository = repository
    }
    
    func hasReachedEnd(of blogPost: BlogPostItem) -> Bool {
        blogPostList.last?.coverImageURLs == blogPost.coverImageURLs
    }
    
    
    // TODO: Fill in these functions
    @MainActor
    func fetchBlogPostList(limit: Int, offset: Int) {
        
    }
    
    @MainActor
    func loadMoreData() {
        
    }
}
