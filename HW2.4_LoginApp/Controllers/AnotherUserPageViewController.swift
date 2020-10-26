//
//  AnotherUserPageViewController.swift
//  HW2.4_LoginApp
//
//  Created by Айдар Рахматуллин on 27.10.2020.
//

import UIKit

class AnotherUserPageViewController: UIViewController {
    
    @IBOutlet var userNameLabel: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.name
        userNameLabel.text = user.name
    }
}
