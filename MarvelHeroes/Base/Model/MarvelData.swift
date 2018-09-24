//
//  MarvelData.swift
//  MarvelHeroes
//
//  Created by Luis Ferreira on 9/24/18.
//  Copyright © 2018 Luis Ferreira. All rights reserved.
//

import Foundation

struct MarvelData: Codable {
    let offset: Int
    let limit: Int
    let total: Int
    let count: Int
    let results: [Hero]
}
