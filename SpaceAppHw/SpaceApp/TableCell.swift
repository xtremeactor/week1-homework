//
//  TableCell.swift
//  SpaceApp
//
//  Created by Jason Buchel on 11/17/16.
//  Copyright © 2016 TheAustinSpace. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {
    @IBOutlet var marsView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
