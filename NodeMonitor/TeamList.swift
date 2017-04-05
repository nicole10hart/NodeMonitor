//
//  TeamList.swift
//  NodeMonitor
//
//  Created by Hart, Nicole on 4/4/17.
//  Copyright © 2017 BigNerdRanch. All rights reserved.
//

import UIKit

class TeamList {
    var teamList = [TeamMember]()
    
    func moveItem(from fromIndex: Int, to toIndex: Int) {
        if fromIndex == toIndex {
            return
        }
        
        let movedItem = teamList[fromIndex]
        
        teamList.remove(at: fromIndex)
        
        teamList.insert(movedItem, at: toIndex)
    }
    
    @discardableResult func createItem(name: String, email: String, phoneNumber: String, picture: UIImageView, location: String, slackAt: String) -> TeamMember {
        let newItem = TeamMember(name: name, email: email, phoneNumber: phoneNumber, picture: picture, location: location, slackAt: slackAt)
        
        teamList.append(newItem)
        
        return newItem
    }
    
    init() {
        createItem(name: "Nicole Hart", email: "nicole.hart@capitalone.com", phoneNumber: "201-400-4475", picture: UIImageView.init(image: #imageLiteral(resourceName: "nicole")), location: "Towers", slackAt: "@nicole_hart")
        createItem(name: "Alex Niderberg", email: "alex.niderberg@capitalone.com", phoneNumber: "201-400-4475", picture: UIImageView.init(image: #imageLiteral(resourceName: "alex")), location: "Towers", slackAt: "@alexniderberg")
        createItem(name: "Jacob Aleksynas", email: "jacob.aleksynas@capitalone.com", phoneNumber: "201-400-4475", picture: UIImageView.init(image: #imageLiteral(resourceName: "jacob")), location: "San Francisco", slackAt: "@jaleksynas")
        createItem(name: "John Mahoney", email: "john.mahoney@capitalone.com", phoneNumber: "201-400-4475", picture: UIImageView.init(image: #imageLiteral(resourceName: "john")), location: "Wilmington", slackAt: "@jm")
        createItem(name: "Corey Albright", email: "corey.albright@capitalone.com", phoneNumber: "201-400-4475", picture: UIImageView.init(image: #imageLiteral(resourceName: "corey")), location: "Towers", slackAt: "@corey")
    }
}
