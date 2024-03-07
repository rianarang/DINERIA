//
//  Item.swift
//  DINERIA
//
//  Created by Ria Narang on 2024-03-06.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
