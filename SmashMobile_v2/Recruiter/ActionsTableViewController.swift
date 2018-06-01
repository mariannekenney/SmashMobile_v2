//
//  ActionsTableViewController.swift
//  SmashMobile_v2
//
//  Created by Marianne Kenney on 6/1/18.
//  Copyright © 2018 SmashFly. All rights reserved.
//

import UIKit

class ActionsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func filter(_ sender: Any) {
        let alert = UIAlertController(title: nil, message: "Filter by", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Action", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Job Requisition", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Candidate", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "In progress vs completed", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
}
