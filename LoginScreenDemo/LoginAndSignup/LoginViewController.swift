//
//  ViewController.swift
//  LoginScreenDemo
//
//  Created by Naveen Chandra on 25/01/20.
//  Copyright © 2020 Naveen Chandra. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signUpLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad()
     {
           super.viewDidLoad()
           configButton()
           configTextFields()
           addgesture()
           // Do any additional setup after loading the view.
     }

    

    func configTextFields()
    {
        self.emailTextField.placeholder = "Email"
        self.passwordTextField.placeholder = "Password"
    }
    
    
    func addgesture()
    {
        let gestureRecognizer = UITapGestureRecognizer(target: self, action:#selector(handleTap(sender:)))
        signUpLabel.addGestureRecognizer(gestureRecognizer)
    }
    
  @objc func handleTap(sender: UITapGestureRecognizer)
  {
    // handling code
    self.performSegue(withIdentifier: "signUpSegue", sender: self)
    
    }
    
    func configButton()
    {
        self.signInButton.layer.cornerRadius = 5
    }
    
    
    @IBAction func signInTapped(_ sender: Any) {
        if emailTextField.text!.isEmpty
        {
            
        }
        else
        {
        UserDefaults.standard.set(emailTextField.text, forKey: "email")
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.configureRootVc()
        }
        
        
        
       }
}

