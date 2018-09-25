//
//  SearchRequest.swift
//  MarvelHeroes
//
//  Created by Luis Ferreira on 9/24/18.
//  Copyright © 2018 Luis Ferreira. All rights reserved.
//

import Foundation

class SearchRequest {
    
    private let text: String
    
    init(text: String) {
        self.text = text
    }
    
    func search(completion: @escaping (MarvelResponse?) -> Void) {
        URLSession.shared.dataTask(with: BaseAPI().searchUrl(text: text)) { (data, url, error) in
            if let data = data {
                do {
                    let marvel = try JSONDecoder().decode(MarvelResponse.self, from: data)
                    if marvel.code == 200 {
                        completion(marvel)
                        return
                    } else {
                        print("deu ruim status code")
                    }
                } catch {
                    print("deu ruim json decoder")
                    completion(nil)
                    return
                }
            }
        }.resume()
    }
    
}
