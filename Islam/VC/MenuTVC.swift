//
//  MenuTVC.swift
//  Islam
//
//  Created by Nayef Alotaibi on 10/5/18.
//  Copyright © 2018 Islam. All rights reserved.
//

import UIKit

class MenuTVC: UITableViewController {

    let articles = 35
    let fqa = 36
    let misconceptions = 37
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row
        {
        case 1 :
          postType = fqa
          isReload = false
          dismiss(animated: true, completion: nil)
        case 2 :
          postType = misconceptions
          isReload = false
          dismiss(animated: true, completion: nil)
        default:
          postType = articles
          isReload = false
          dismiss(animated: true, completion: nil)
        }
    }

}
