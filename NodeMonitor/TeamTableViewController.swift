//
//  TeamTableViewController.swift
//  NodeMonitor
//
//  Created by Hart, Nicole on 4/4/17.
//  Copyright © 2017 BigNerdRanch. All rights reserved.
//

import UIKit

class TeamTableViewController: UITableViewController {
    @IBOutlet var picture: UIImageView!
    @IBOutlet var name: UILabel!
    
    let nicolePicture = #imageLiteral(resourceName: "nykhii")
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        picture.image = nicolePicture
    }
}
