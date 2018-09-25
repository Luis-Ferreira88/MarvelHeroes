//
//  MarvelResponse.swift
//  MarvelHeroes
//
//  Created by Luis Ferreira on 9/24/18.
//  Copyright © 2018 Luis Ferreira. All rights reserved.
//

import Foundation

struct MarvelResponse: Codable {
    
    let code: Int
    let data: MarvelData

}
