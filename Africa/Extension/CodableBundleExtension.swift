//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by jesus.calderon.local on 2/5/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        
        // Locate JSON
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to localte \(file) in bundle")
        }
        
        // Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        // Create a decoder
        let decoder = JSONDecoder()
        
        // Create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        // Return data
        return loaded
        
    }
}
