//
//  TableViewCell.swift
//  HigherOrderFuncDemo
//
//  Created by Admin on 21/01/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var rnoLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
