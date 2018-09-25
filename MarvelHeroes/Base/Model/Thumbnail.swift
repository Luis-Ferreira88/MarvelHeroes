//
//  Thumbnail.swift
//  MarvelHeroes
//
//  Created by Luis Ferreira on 9/24/18.
//  Copyright © 2018 Luis Ferreira. All rights reserved.
//

import Foundation

struct Thumbnail: Codable {
    
    private let path: String
    private let fileExtension: String
    
    var url: String {
        return "\(path).\(fileExtension)"
    }
    
    private enum CodingKeys: String, CodingKey {
        case path
        case fileExtension = "extension"
    }
    
}
