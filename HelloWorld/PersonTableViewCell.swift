//
//  PersonTableViewCell.swift
//  Octophone
//
//  Created by Jolene Bernagene/Amara Gordon on 9/20/18.
//  Copyright © 2018 Jolene/Amara. All rights reserved.
//

import UIKit

class PersonTableViewCell: UITableViewCell {
    
    //MARK:Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var moreInfo: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
