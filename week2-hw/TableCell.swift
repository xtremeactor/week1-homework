//
//  TableCell.swift
//  week2-hw
//
//  Created by Jason Buchel on 10/12/16.
//  Copyright © 2016 TheAustinSpace. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {
    @IBOutlet var itemLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var categoryLabel: UILabel!

    @IBOutlet var ownerLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
