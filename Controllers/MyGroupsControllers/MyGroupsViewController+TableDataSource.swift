//
//  MyGroupsViewController+TableDataSource.swift
//  VKClient_1
//
//  Created by Владимир Глоба on 15.01.2022.
//

import UIKit

extension MyGroupsViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierUniversalTableViewCell, for: indexPath) as? UniversalTableViewCell
        else {return UITableViewCell()}
    
        cell.configure(image: nil, name: groups[indexPath.row], surname: nil)
    
        return cell
    }
}

