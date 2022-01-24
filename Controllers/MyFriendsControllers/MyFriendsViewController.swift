//
//  MyFriendsViewController.swift
//  VKClient_1
//
//  Created by Владимир Глоба on 13.01.2022.
//

import UIKit

class MyFriendsViewController: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    let reuseIdentifierUniversalTableViewCell = "reuseIdentifierUniversalTableViewCell"
    
    let fromMyFriendstoGallery = "fromMyFriendstoGallery"
    
    let sourceFriends = Storage.share.myFriends
    var friends = [Friend]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "UniversalTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifierUniversalTableViewCell)
//        searchBar.delegate = self
        friends = sourceFriends
    }
}

//extension MyFriendsViewController: UISearchBarDelegate {
//    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        if searchText.isEmpty {
//            friends = sourceFriends
//        } else {
//            friends = sourceFriends.filter({sourceFriendsItem in
//                sourceFriendsItem.lowercased().contains(searchText.lowercased())
//            })
//        }
//        tableView.reloadData()
//    }
//}
