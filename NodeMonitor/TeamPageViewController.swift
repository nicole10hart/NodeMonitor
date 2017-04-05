//
//  TeamPageViewController.swift
//  NodeMonitor
//
//  Created by Hart, Nicole on 4/3/17.
//  Copyright © 2017 BigNerdRanch. All rights reserved.
//

import UIKit

class TeamPageViewController: UIViewController {
    
    //var teamMembers = [TeamMember]()
    @IBOutlet var firstView: UIView!
    //@IBOutlet var test: UILabel!
    
    var teamMembers = ["Nicole", "Alex", "Jacob", "John", "Corey"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for mates in teamMembers {
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
            label.textAlignment = NSTextAlignment.left
            label.text = mates
            self.firstView?.addSubview(label)
        }
    }
}
