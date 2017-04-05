//
//  TeamTableViewController.swift
//  NodeMonitor
//
//  Created by Hart, Nicole on 4/4/17.
//  Copyright © 2017 BigNerdRanch. All rights reserved.
//

import UIKit

class TeamTableViewController: UITableViewController {
    var teamList: TeamList!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath) as! TeamTableViewCell
        let teamMember = teamList.teamList[indexPath.row]
        print(teamMember.name!)
        
        cell.name?.text = teamMember.name
        cell.email?.text = teamMember.email
        cell.phoneNumber?.text = teamMember.phoneNumber
        cell.picture?.image = teamMember.picture?.image
        cell.slackAt?.text = teamMember.slackAt
        cell.location?.text = teamMember.location
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        teamList.moveItem(from: sourceIndexPath.row, to: destinationIndexPath.row)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teamList.teamList.count
    }


}
