//
//  MyGroupsViewController+TableDelegate.swift
//  VKClient_1
//
//  Created by Владимир Глоба on 15.01.2022.
//

import UIKit

extension MyGroupsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return heightForCellTableView
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(Storage.share.myGroups[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        Storage.share.myGroups.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .right)
    }
}
