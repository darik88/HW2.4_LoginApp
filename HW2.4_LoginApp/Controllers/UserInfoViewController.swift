//
//  UserInfoViewController.swift
//  HW2.4_LoginApp
//
//  Created by Айдар Рахматуллин on 25.10.2020.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.name
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreAboutUserPage = segue.destination as? MoreAboutUserViewController else { return }
        moreAboutUserPage.user = user
    }
}
