\//
//  SearchViewModel.swift
//  MarvelHeroes
//
//  Created by Luis Ferreira on 9/24/18.
//  Copyright © 2018 Luis Ferreira. All rights reserved.
//

import Foundation

class SearchViewModel {
    
    //MARK: - Properties
    
    private var marvel: MarvelResponse?
    private var delegate: SearchViewDelegate?
    
    var transporter: ResultTransporter {
        return ResultTransporter(marvelData: marvel?.data ?? MarvelData())
    }
    
    init(delegate: SearchViewDelegate?) {
        self.delegate = delegate
    }
    
    func search(text: String) {
        SearchRequest(text: text).search { [weak self] response in
            self?.marvel = self
            self?.delegate?.search(sucess: self?.marvel != nil)
        }
    }
}
