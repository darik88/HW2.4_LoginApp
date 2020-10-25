//
//  UserInfoViewController.swift
//  HW2.4_LoginApp
//
//  Created by Айдар Рахматуллин on 25.10.2020.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "\(User.getUser().name)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreAboutUserPage = segue.destination as? MoreAboutUserViewController else {
            return
        }
        moreAboutUserPage.info = User.getUser().info
    }

}
