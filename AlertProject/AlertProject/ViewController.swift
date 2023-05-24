//
//  ViewController.swift
//  AlertProject
//
//  Created by GUREL on 23.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var password2Text: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpClicked(_ sender: Any) {
        /*
        let alert = UIAlertController(title: "Error", message: "username not found", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            //Button Clicked
            print("Button clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        */
        
        if userNameText.text == "" {
            makeAlert(titleInput: "Failed", messageInput: "Username not found")
            
        }
        
        else if passwordText.text == "" {
            makeAlert(titleInput: "Failed", messageInput: "Password not found")
        }
        
        else if passwordText.text != password2Text.text {
            makeAlert(titleInput: "Failed", messageInput: "Passwords don't match")
        }
        
        else{
            makeAlert(titleInput: "Success", messageInput: "OK")
        }
        
        
        
        }
    func makeAlert(titleInput : String, messageInput : String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
}

