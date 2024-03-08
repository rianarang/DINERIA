//
//  HomeViewRepository.swift
//  DINERIA
//
//  Created by Ria Narang on 2024-03-07.
//

import Combine
import Foundation

// MARK: - HomeViewRepository


// TODO: create firebase backend to hold data and create API endpoints
class HomeViewRepository {
    private let baseURL = ""
    
//    func fetchBlogPosts(limit: Int, offset: Int) -> AnyPublisher<[BlogPostItem], Error> {
//        let url = URL(string: "\(baseURL)?limit=\(limit)&offset=\(offset)")!
//        
//        return URLSession.shared.dataTaskPublisher(for: url)
//            .map(\.data)
//            //.decode(type: BlogPostListResponse.self, decoder: JSONDecoder())
//
//    }
}


// MARK: - BlogPostListResponse

struct BlogPostListResponse: Codable {
    let results: [BlogPostItem]
}

