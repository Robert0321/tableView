//
//  MenuTableViewController.swift
//  tableView
//
//  Created by LI,JYUN-SIAN on 30/6/23.
//

import UIKit

class MenuTableViewController: UITableViewController {
    
    let menus = ["Very Tangerine Blast (Original)","Mango Grapefruit Pops","Very Mango Tea","Very Grapefruit Boom","Very Strawberry Peach Fusion"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return menus.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell", for: indexPath) as! MenuTableViewCell
        
        let menu = menus[indexPath.row]
        cell.drinkLabel.text = menu
        
        return cell
    }
    
    
    @IBSegueAction func showDrinkName(_ coder: NSCoder, sender: Any?) -> DrinkLabelViewController? {
        
        let button = sender as? UIButton
        if let point: CGPoint = button?.convert(.zero, to: tableView),let indexpath = tableView.indexPathForRow(at: point) {
            return DrinkLabelViewController(coder: coder, drinkName: menus[indexpath.row])
        }
        else {
            return nil
        }
    }
}
