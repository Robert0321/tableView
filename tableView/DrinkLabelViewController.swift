//
//  DrinkLabelViewController.swift
//  tableView
//
//  Created by LI,JYUN-SIAN on 30/6/23.
//

import UIKit

class DrinkLabelViewController: UIViewController {
    
    let drinkName: String
    
    required init?(coder: NSCoder, drinkName:String) {
        self.drinkName = drinkName
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }



    
    @IBOutlet weak var drinkNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        drinkNameLabel.text = drinkName
        
    }

}
