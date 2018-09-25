//
//  HeroCell.swift
//  MarvelHeroes
//
//  Created by Luis Ferreira on 9/24/18.
//  Copyright © 2018 Luis Ferreira. All rights reserved.
//

import UIKit
import KingFisher

struct HeroCellDTO {
    var name = ""
    var description = ""
    var imageURL = URL?
}

class HeroCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var heroImageView: UIImageView!
    
    func fill(dto: HeroCellDTO) {
        descriptionLabel.text = dto.description
        nameLabel.text = dto.name
        
        if let url = dto.imageURL {
            heroImageView.kf.setImage(with: url)
        }
    }
}
