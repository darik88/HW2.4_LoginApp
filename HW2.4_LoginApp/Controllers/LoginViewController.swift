//
//  ViewController.swift
//  HW2.4_LoginApp
//
//  Created by Айдар Рахматуллин on 23.10.2020.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let user = User.getUser()

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var userPassTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let userPage = tabBarController.viewControllers?.first as? UserPageViewController else { return }
        userPage.user = user
        
        if let controllers = tabBarController.viewControllers {
            
            for counter in 1..<controllers.count {
                controllers[counter].tabBarItem.title = "Page \(counter)"
            }
        }
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        userNameTextField.text = nil
        userPassTextField.text = nil
    }
    
    @IBAction func loginButtonPressed() {
        checkUserCridentials()
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(with: "Username", and: "Your user name is \(user.userName)")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Password", and: "Your password is \(user.password)")
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
        
        let username = user.userName
        let password = user.password
        
        if userNameInput != username  || passwordInput != password {
            showAlert(with: "Wrong user name or password", and: "Please enter correct user name and password")
            userPassTextField.text = nil
            return
        }
        
        performSegue(withIdentifier: "logIn", sender: nil)
    }
}


// MARK: - Alert
extension LoginViewController {
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


// MARK: - TextField Delegate
extension LoginViewController: UITextFieldDelegate {
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // Перевод курсора в следующее поле. Если поля для пароля - логин
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case userNameTextField:
            userPassTextField.becomeFirstResponder()
        case userPassTextField:
            loginButtonPressed()
        default:
            break
        }
        return true
    }
}
