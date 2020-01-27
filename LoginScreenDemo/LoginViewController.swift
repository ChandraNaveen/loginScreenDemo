//
//  ViewController.swift
//  LoginScreenDemo
//
//  Created by Naveen Chandra on 25/01/20.
//  Copyright © 2020 Naveen Chandra. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var SignInButton: UIButton!
    @IBOutlet weak var signUpLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
           super.viewDidLoad()
           configButton()
           configTextFields()
           
           // Do any additional setup after loading the view.
       }

    

    func configTextFields()
    {
        self.emailTextField.placeholder = "Email"
        self.passwordTextField.placeholder = "Password"
    
          
    }
    
       func configButton()
       {
           self.SignInButton.layer.cornerRadius = 5
       }
}

