//
//  AllGroupController+TableDataSource.swift
//  VKClient_1
//
//  Created by Владимир Глоба on 15.01.2022.
//

import UIKit

extension AllGroupsViewController:UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Storage.share.allGroupsNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = allGroupsTableView.dequeueReusableCell(withIdentifier: reuseIdentifierUniversalTableViewCell, for: indexPath) as? UniversalTableViewCell
        else {return UITableViewCell()}
        
        //cell.configure(image: nil, name: Storage.share.allGroupsNames[indexPath.row], description: Storage.share.allGroupsDescription[Storage.share.allGroupsNames[indexPath.row]])
        
       cell.configure(group: Storage.share.allGroups[indexPath.row])
        
        return cell
        
    }
    
    
}
