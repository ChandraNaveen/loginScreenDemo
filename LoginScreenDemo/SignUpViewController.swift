//
//  SignUpViewController.swift
//  LoginScreenDemo
//
//  Created by Naveen Chandra on 27/01/20.
//  Copyright © 2020 Naveen Chandra. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    @IBOutlet weak var phoneTextFiled: UITextField!
    
    @IBOutlet weak var buttonSignUp: UIButton!

    
  override func viewDidLoad()
  {
           super.viewDidLoad()
           configButton()
           configTextFields()
    
           // Do any additional setup after loading the view.
  }

    

    func configTextFields()
    {
        self.userNameTextField.placeholder = "Email"
        self.passwordTextField.placeholder = "Password"
        self.repeatPasswordTextField.placeholder = "Repeat password"
        self.phoneTextFiled.placeholder = "phone"

    }
    
       func configButton()
       {
        self.buttonSignUp.layer.cornerRadius = 5
       
       }
}
