//
//  MyFriendsViewController+TableDelegate.swift
//  VKClient_1
//
//  Created by Владимир Глоба on 13.01.2022.
//

import UIKit

extension MyFriendsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return heightForCellTableView
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == fromMyFriendstoGallery,
           let destinationController = segue.destination as? GalleryViewController,
           let friend = sender as? Friend {
            destinationController.photoArray = friend.photoes
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(friends[indexPath.row])
//        performSegue(withIdentifier: fromMyFriendstoGallery, sender: friends[indexPath.row])
    }
}
