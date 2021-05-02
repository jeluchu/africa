//
//  VideoModel.swift
//  Africa
//
//  Created by jesus.calderon.local on 2/5/21.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
