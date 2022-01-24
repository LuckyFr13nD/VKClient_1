//
//  AllGroupsViewController.swift
//  VKClient_1
//
//  Created by Владимир Глоба on 15.01.2022.
//

import UIKit

class AllGroupsViewController: UIViewController {

    @IBOutlet weak var allGroupsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        allGroupsTableView.delegate = self
        allGroupsTableView.dataSource = self
        
        allGroupsTableView.register(UINib(nibName: "UniversalTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifierUniversalTableViewCell)
    }

}
