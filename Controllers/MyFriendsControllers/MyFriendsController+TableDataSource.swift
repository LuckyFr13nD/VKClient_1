//
//  MyFriendsController+TableDataSource.swift
//  VKClient_1
//
//  Created by Владимир Глоба on 13.01.2022.
//

import UIKit

extension MyFriendsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierUniversalTableViewCell, for: indexPath) as? UniversalTableViewCell
        else {return UITableViewCell()}
        
        //cell.configure(image: nil, name: friends[indexPath.row], surname: nil)
        cell.configure(friend: friends[indexPath.row], completion: {[weak self] in
            guard let self = self else {return}
            self.performSegue(withIdentifier: self.fromMyFriendstoGallery, sender: self.friends[indexPath.row])
        })
        return cell
        
    }
    
    
}
