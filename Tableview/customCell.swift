//
//  customCell.swift
//  Tableview
//
//  Created by Irine Babu on 28/07/21.
//

import UIKit

class customCell: UITableViewCell {
    @IBOutlet var name: UILabel!
    @IBOutlet var no: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
