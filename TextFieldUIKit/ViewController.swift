//
//  ViewController.swift
//  TextFieldUIKit
//
//  Created by Abouzar Moradian on 9/5/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTF.delegate = self
        passwordTF.delegate = self
        errorLabel.text = ""
        errorLabel.textColor = .red
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        
        if usernameTF.text == "" || passwordTF.text == "" {
            
            print("username or password is empty")
            errorLabel.text = "Error: username or password is empty!"
          
        }else{
            
             let storybaord = UIStoryboard(name: "Main", bundle: nil)
            if let homeScreen = storyboard?.instantiateViewController(identifier: "HomeVC") as? HomeVC{
                
                homeScreen.user = UserModel(username: usernameTF.text ?? "", name: "John", time: Date())
                
                navigationController?.pushViewController(homeScreen, animated: true)
            }
            
        }
       
        usernameTF.backgroundColor = .white
        passwordTF.backgroundColor = .white
        
       
            
        
    }
    
   
  
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == usernameTF{
            usernameTF.backgroundColor = .systemYellow
        }else if textField == passwordTF {
            passwordTF.backgroundColor = .systemYellow
        }
        errorLabel.text = ""
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if textField == usernameTF{
            usernameTF.backgroundColor = .white
        }else if textField == passwordTF {
            passwordTF.backgroundColor = .white
        }
        
        
    }
    
    


}

