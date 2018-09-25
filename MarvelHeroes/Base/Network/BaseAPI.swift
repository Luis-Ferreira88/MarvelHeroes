//
//  BaseAPI.swift
//  MarvelHeroes
//
//  Created by Luis Ferreira on 9/24/18.
//  Copyright © 2018 Luis Ferreira. All rights reserved.
//

import Foundation
import SwiftHash

struct BaseAPI {
    private let basePath = "https://gateway.marvel.com:443/v1/public/characters?"
    private let publicKey = "0cff0f6262ea870e4c7be2ccea659e3e"
    private let privateKey = "48989c0ad083575af4bba36eac3c5d00f1a24226"
    
    private func getCredentials() -> String {
        let ts = String(Date().timeIntervalSince1970)
        let hash = MD5(ts + privateKey + publicKey).lowercased()
        return "ts=\(ts)&apikey=\(publicKey)&=\(hash)"
    }
    
    func searchUrl(text: String) -> URL {
        return URL(string: "\(basePath)nameStartsWith=\(text)&\(getCredentials())")!
    }
}
