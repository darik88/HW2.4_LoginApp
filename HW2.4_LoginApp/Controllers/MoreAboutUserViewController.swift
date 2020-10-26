//
//  MoreAboutUserViewController.swift
//  HW2.4_LoginApp
//
//  Created by Айдар Рахматуллин on 25.10.2020.
//

import UIKit

class MoreAboutUserViewController: UIViewController {
    var user: User!
    
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var userInfoTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = "Обо мне"
        userInfoTextLabel.text = user.info
    }
}
