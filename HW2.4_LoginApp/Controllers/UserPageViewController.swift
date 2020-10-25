//
//  UserPageViewController.swift
//  HW2.4_LoginApp
//
//  Created by Айдар Рахматуллин on 24.10.2020.
//

import UIKit

class UserPageViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLabel.text = "Welcome, \(String(userName))"
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
