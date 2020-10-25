//
//  UserInfoViewController.swift
//  HW2.4_LoginApp
//
//  Created by Айдар Рахматуллин on 25.10.2020.
//

import UIKit

class UserInfoViewController: UIViewController {

    @IBOutlet var userInfoLabel: UILabel!
    var userInfo: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userInfoLabel.text = userInfo
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
