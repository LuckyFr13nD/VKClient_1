//
//  MyGroupsViewController.swift
//  VKClient_1
//
//  Created by Владимир Глоба on 13.01.2022.
//

import UIKit

class MyGroupsViewController: UIViewController {
    
    @IBOutlet weak var myGroupsTableView: UITableView!
    
    let reuseIdentifierUniversalTableViewCell = "reuseIdentifierUniversalTableViewCell"
    
    let sourceGroups = Storage.share.myGroups
   // var groups = [Group]()
    var myGroups = [Group]()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        myGroupsTableView.reloadData()
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        myGroupsTableView.dataSource = self
        myGroupsTableView.delegate = self
        myGroupsTableView.register(UINib(nibName: "UniversalTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifierUniversalTableViewCell)
        
        
        //NotificationCenter.default.addObserver(self, selector: #selector(addGroupFromAllGroups(_:)), name: groupsInAllGroupsPressedNitification, object: nil)
    }
    
//    func isAlreadyAdded(item: String) -> Bool {
//        return myGroups.contains { myGroupsItem in
//            myGroupsItem == item
//        }
//    }
    
//    @objc func addGroupFromAllGroups(_ notification: Notification) {
//        guard let newGroup = notification.object as? String else {return}
//        if isAlreadyAdded(item: newGroup) {
//            print("\(newGroup) has been already added")
//        } else {
//
//            myGroups.append(newGroup)
//            print("\(newGroup) was added")
//
//        }
//    }
    
//    deinit {
//        NotificationCenter.default.removeObserver(self)
//    }
    
    
}
