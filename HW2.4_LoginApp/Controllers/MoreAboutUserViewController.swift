//
//  MoreAboutUserViewController.swift
//  HW2.4_LoginApp
//
//  Created by Айдар Рахматуллин on 25.10.2020.
//

import UIKit

class MoreAboutUserViewController: UIViewController {

    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var userInfoTextLabel: UILabel!
    
    var info: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = "Обо мне"
        userInfoTextLabel.text = info
    }
}
