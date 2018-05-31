//
//  ClientsTableViewController.swift
//  SmashMobile_v2
//
//  Created by Marianne Kenney on 5/31/18.
//  Copyright © 2018 SmashFly. All rights reserved.
//

import UIKit

class ClientsTableViewController: UITableViewController, UITabBarDelegate {
    
    @IBOutlet weak var tabs: UITabBar!
    @IBOutlet weak var one: UITabBarItem!
    @IBOutlet weak var two: UITabBarItem!
    @IBOutlet weak var three: UITabBarItem!
    @IBOutlet weak var four: UITabBarItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabs.delegate = self
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (tabs.selectedItem == two) {
            return 3
        }
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "canidates", for: indexPath)
        print(tabs.selectedItem as Any)
        switch tabs.selectedItem {
        case one:
            cell.textLabel?.text = "Peter Ling\n\nRuby, Java, HTML, Swift, Python"
        case two:
            if indexPath.row == 0 {
                cell.textLabel?.text = "Peter Ling\n\nRuby, Java, HTML, Swift, Python"
            } else if indexPath.row == 1 {
                cell.textLabel?.text = "Peter Ling\n\nRuby, Java, HTML, Swift, Python"
            } else {
                cell.textLabel?.text = "Peter Ling\n\nRuby, Java, HTML, Swift, Python"
            }
        case three:
            cell.textLabel?.text = "Peter Ling\n\nRuby, Java, HTML, Swift, Python"
        case four:
            cell.textLabel?.text = "Peter Ling\n\nRuby, Java, HTML, Swift, Python"
        case .none:
            break
        case .some(_):
            break
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "clickedOnPerson", sender: self)
    }
    
}
