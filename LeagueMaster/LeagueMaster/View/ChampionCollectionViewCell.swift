//
//  ChampionCollectionViewCell.swift
//  LeagueMaster
//
//  Created by Ying Yang on 3/23/19.
//  Copyright © 2019 Steven Yang. All rights reserved.
//

import UIKit

class ChampionCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }
    
    func configureCell(name: String){
        self.nameLabel.text = name
    }

}


