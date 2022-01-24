//
//  Storage.swift
//  VKClient_1
//
//  Created by Владимир Глоба on 16.01.2022.
//

import UIKit

class Storage: NSObject {
    static let share = Storage()
    
    private override init() {
        super.init()
    }
    
    let allGroupsNames = ["In Flames", "Metallica", "AC/DC", "Disturbed", "Slipknot", "Manowar", "Hammerfall", "Nightwish"]
    let allGroupsDescription = ["In Flames": "Melodic Death Metal", "Metallica": "Heavy Metal", "AC/DC": "Heavy Metal", "Disturbed": "NU Metal", "Slipknot": "NU Metal", "Manowar": "Heavy Metal", "Hammerfall": "Power Metal", "Nightwish": "Power Metal"]
    var allGroups = [Group]()
    var myGroups = [Group]()
    
    var myFriends = [Friend]()
}
