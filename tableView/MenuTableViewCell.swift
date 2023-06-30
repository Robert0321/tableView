//
//  MenuTableViewCell.swift
//  tableView
//
//  Created by LI,JYUN-SIAN on 30/6/23.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var drinkLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
