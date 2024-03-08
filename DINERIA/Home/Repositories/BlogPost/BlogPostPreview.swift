//
//  BlogPost.swift
//  DINERIA
//
//  Created by Ria Narang on 2024-03-07.
//

import Foundation

struct BlogPostItem: Codable {
    let name: String
    let location: String
    let date: String
    let overallRating: Int
    let coverImageURLs: [URL]
}
