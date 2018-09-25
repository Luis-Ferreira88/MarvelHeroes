//
//  ResultsViewModel.swift
//  MarvelHeroes
//
//  Created by Luis Ferreira on 9/24/18.
//  Copyright © 2018 Luis Ferreira. All rights reserved.
//

import Foundation

class ResultsViewModel {
    
    //MARK: - Properties
    
    var marvelData = MarvelData()
    
    //MARK: - Methods
    func setup(transporter: ResultTransporter) {
        marvelData = transporter.marvelData
    }
    
    func numberOfSections() -> Int {
        return 1
    }
    
    func numberOfRows() -> Int {
        return marvelData.results.count
    }
    
    func dtoForRow(index: Int) -> HeroCellDTO {
        let hero = marvelData.results[index]
        return HeroCellDTO(name: hero.name,
                           description: hero.description,
                           imageURL: URL(string: hero.thumbnail.url))
    }
    
    func urlForSelectedRow(row: Int) -> URLRequest {
        return URLRequest(url: URL(string: marvelData.results[row].urls.first?.url ?? "")!)
        
    }
}
