//
//  TeamMember.swift
//  NodeMonitor
//
//  Created by Hart, Nicole on 4/3/17.
//  Copyright © 2017 BigNerdRanch. All rights reserved.
//

import UIKit

class TeamMember: NSObject {
    var name: String?
    var location: String?
    var email: String?
    var phoneNumber: String?
    var slackAt: String?
    var title: String?
    var picture: UIImageView?

    
    init(name: String, email: String, phoneNumber: String) {
        self.name = name
        self.email = email
        self.phoneNumber = phoneNumber
        
        super.init()
    }
    
    init(name: String, email: String, phoneNumber: String, picture: UIImageView) {
        self.name = name
        self.email = email
        self.phoneNumber = phoneNumber
        self.picture = picture
        
        super.init()
    }
    
    init(name: String, email: String, phoneNumber: String, picture: UIImageView, location: String, slackAt: String) {
        self.name = name
        self.email = email
        self.phoneNumber = phoneNumber
        self.picture = picture
        self.slackAt = slackAt
        self.location = location
        
        super.init()
    }
    
}
