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
        
        fillFriendsData()
        fillAllGroupsData()
        
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
    
    func fillFriendsData() {
        let friendOne = Friend(name: "Anton", avatar: "Anton", photoes: ["Anton 1", "Anton 2", "Anton 3", "Anton 4", ])
        let friendTwo = Friend(name: "Vitya", avatar: "Vitya", photoes: ["vitya 1", "vitya 2", "vitya 3", "vitya 4"])
        let friendThree = Friend(name: "Katya", avatar: "katya", photoes: ["katya 1", "katya 2", "katya 3", "katya 4"])
        let friendFour = Friend(name: "Kostya", avatar: "Kostya", photoes: ["kostya 1", "kostya 2", "kostya 3", "kostya 4", "kostya 5"])
        
        Storage.share.myFriends.append(friendOne)
        Storage.share.myFriends.append(friendTwo)
        Storage.share.myFriends.append(friendThree)
        Storage.share.myFriends.append(friendFour)
        
    }
    
    func fillAllGroupsData() {
        
        for index in 0 ... Storage.share.allGroupsNames.count - 1 {
            
            let group = Group(name: Storage.share.allGroupsNames[index],
                              avatar: Storage.share.allGroupsNames[index],
                              discription: Storage.share.allGroupsDescription[Storage.share.allGroupsNames[index]])
            Storage.share.allGroups.append(group)
        }
        
    }}
