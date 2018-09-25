//
//  SearchView.swift
//  MarvelHeroes
//
//  Created by Luis Ferreira on 9/24/18.
//  Copyright © 2018 Luis Ferreira. All rights reserved.
//

import UIKit

class SearchView: UITableViewController {

    //MARK: - Outlets
    
    @IBOutlet weak var textFieldSearchName: UITextField!
    
    //MARK: - Properties
    
    private lazy var viewModel: SearchViewModel = SearchViewModel(delegate: self)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - Actions
    
    @IBAction func selectSearch(_ sender: UIButton) {
        if let text = textFieldSearchName.text {
            viewModel.search(text: text)
        }
        
    }
    
    //MARK: - Methods
    
    func move() {
        performSegue(withIdentifier: SearchString.resultsSegue, sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let resultsView = segue.destination as? ResultView {
            
        }
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
}

//MARK: - Extension

extension SearchView: SearchViewDelegate {
    
    func search(sucess: Bool) {
        if sucess {
            DispatchQueue.main.async { [weak self] in
                self?.move()
            }
        }
    }
}
