//
//  LoginViewController.swift
//  VKClient_1
//
//  Created by Владимир Глоба on 13.01.2022.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidShow(_:)), name: UIResponder.keyboardDidShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(onTap))
        
        recognizer.cancelsTouchesInView = false
        self.view.addGestureRecognizer(recognizer)
        
    }
    
    @objc func keyboardDidHide() {
        
        scrollView.contentInset = UIEdgeInsets.zero
        scrollView.scrollIndicatorInsets = UIEdgeInsets.zero
        
    }
    
    @objc func keyboardDidShow(_ notification: Notification ) {
        
        guard let keyboardHeigt =  ((notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue)?.height else {return}
        
        let insets = UIEdgeInsets(top: 0, left: 0, bottom: keyboardHeigt + 100, right: 0)
        
        scrollView.contentInset = insets
        scrollView.scrollIndicatorInsets = insets
    }
    
    @objc func onTap() {
        
        self.view.endEditing(true)
    }
    
    deinit {
        
        NotificationCenter.default.removeObserver(self)
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        
        //guard
          //  let login = loginTextField.text,
          //  let password = passwordTextField.text
      //  else {return}
        
        //if login == "admin",
          // password == "1234" {
            func performSegue(withIdentifier identifier: String, sender: Any?) {
                return
            }
       // } else {
            
//            let alert = UIAlertController(title: "Sorry", message: "Login or password is wrong", preferredStyle: .alert)
//            let action = UIAlertAction(title: "Try again", style: .cancel, handler: nil)
//
//            alert.addAction(action)
//            present(alert, animated: true, completion: nil)
//        }
    }
}
