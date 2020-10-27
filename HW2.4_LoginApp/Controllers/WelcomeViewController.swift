//
//  UserPageViewController.swift
//  HW2.4_LoginApp
//
//  Created by Айдар Рахматуллин on 24.10.2020.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLabel.text = "Welcome, \(user.name)"
    }
}
