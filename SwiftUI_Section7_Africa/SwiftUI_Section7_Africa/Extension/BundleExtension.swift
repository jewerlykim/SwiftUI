//
//  BundleExtension.swift
//  SwiftUI_Section7_Africa
//
//  Created by 김보석 on 2022/02/15.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [CoverImage] {
        // MARK: - locate the json file

        guard let url = url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }

        // MARK: - create a property for the data

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }

        // MARK: - create a decoder

        let decoder = JSONDecoder()

        // MARK: - create a property for the decoded data

        guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }

        // MARK: - return the ready-to-use data

        return loaded
    }
}
