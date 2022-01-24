//
//  AllGroupController+TableDelegate.swift
//  VKClient_1
//
//  Created by Владимир Глоба on 15.01.2022.
//

import UIKit

extension AllGroupsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return heightForCellTableView
    }
    
    func isAlreadyAdded(index: Int) -> Bool {
        return Storage.share.myGroups.contains { myGroupsItem in
            myGroupsItem.name == Storage.share.allGroupsNames[index]
            }
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(Storage.share.allGroupsNames[indexPath.row])
        if !isAlreadyAdded(index: indexPath.row) {
            //Storage.share.myGroups.append(groups[indexPath.row])
            Storage.share.myGroups.append(Group.init(name: Storage.share.allGroupsNames[indexPath.row], avatar: Storage.share.allGroupsNames[indexPath.row], discription: Storage.share.allGroupsDescription[Storage.share.allGroupsNames[indexPath.row]]))

           // Group.init(name: Storage.share.allGroups[indexPath.row], avatar: Storage.share.allGroups[indexPath.row], discription: <#T##String?#>))
        }
        
      //  NotificationCenter.default.post(name: groupsInAllGroupsPressedNitification, object: Storage.share.allGroups[indexPath.row])
    }
}
