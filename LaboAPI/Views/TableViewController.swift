//
//  TableViewController.swift
//  LaboAPI
//
//  Created by Benjamin on 16/09/2020.
//  Copyright © 2020 Benjamin. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController{
    
  /*  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let array = NetworkService.getData()
        return array.count
    }
    */
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        NetworkService.getData()
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "gameCell", for: indexPath) as! TableViewCell
   /*     cell.gameTitleLabel.text = array[indexPath.row].name
        cell.gameYearLabel.text = array[indexPath.row].summary
        cell.gameDescriptionLabel.text = array[indexPath.row].summary */
        return cell
    }
}
