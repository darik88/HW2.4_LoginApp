//
//  ViewController.swift
//  HW2.4_LoginApp
//
//  Created by Айдар Рахматуллин on 23.10.2020.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var userPassTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case userNameTextField:
            userNameTextField.becomeFirstResponder()
        case userPassTextField:
            userPassTextField.becomeFirstResponder()
        default:
            textField.resignFirstResponder()
        }
        return false

    }
    
    @IBAction func loginButtonPressed() {
        checkUserCridentials()
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(with: "Username", and: "Your user name is \(User.getUser().userName)")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Password", and: "Your password is \(User.getUser().password)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let userPage = tabBarController.viewControllers?.first as? UserPageViewController else { return }
        userPage.userName = userNameTextField.text
        
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        userNameTextField.text = nil
        userPassTextField.text = nil
    }

    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
        
    }
    
    private func checkUserCridentials() {
        guard let userNameInput = userNameTextField.text, !userNameInput.isEmpty else {
            showAlert(with: "User name is empty", and: "Please enter user name")
            return
        }
        
        guard let passwordInput = userPassTextField.text, !passwordInput.isEmpty else {
            showAlert(with: "Password is not fill", and: "Please enter password")
            return
        }
        
        let username = User.getUser().userName
        let password = User.getUser().password
        
        if userNameInput != username  || passwordInput != password {
            showAlert(with: "Wrong user name or password", and: "Please enter correct user name and password")
            userPassTextField.text = nil
            return
        }
    }
}


// MARK: - Alert
extension ViewController {
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
