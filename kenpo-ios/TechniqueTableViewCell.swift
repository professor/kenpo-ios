//
//  TechniqueTableViewCell.swift
//  kenpo-ios
//
//  Created by Todd Sedano on 11/22/19.
//  Copyright © 2019 Kenpo. All rights reserved.
//

import UIKit

class TechniqueTableViewCell: UITableViewCell {
    
    //MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
