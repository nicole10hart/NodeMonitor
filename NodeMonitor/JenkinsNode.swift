//
//  JenkinsNode.swift
//  NodeMonitor
//
//  Created by Hart, Nicole on 4/3/17.
//  Copyright © 2017 BigNerdRanch. All rights reserved.
//

import UIKit

class JenkinsNode: NSObject {
    var name: String?
    var status: Int?
    var labels: String?
    var ipAddress: String?
    
    init(name: String, status: Int, labels: String, ipAddress: String){
        self.name = name
        self.status = status
        self.labels = labels
        self.ipAddress = ipAddress
        
        super.init()
    }
    
}
