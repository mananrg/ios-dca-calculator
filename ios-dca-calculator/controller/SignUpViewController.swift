//
//  SignUpViewController.swift
//  ios-dca-calculator
//
//  Created by manan gandhi on 4/25/24.
//

import UIKit
import CoreData

class SignupViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Additional setup code
    }
    
    @IBAction func signupButtonTapped(_ sender: UIButton) {
        guard let email = emailTextField.text,
              let password = passwordTextField.text,
              let confirmPassword = confirmPasswordTextField.text else {
            return
        }
        
    }
    
  
    @IBAction func signUpBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "signupToHome", sender: nil)

    }
    
    @IBAction func loginBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "registerToLogin", sender: nil)

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "signupToHome" {
            print("Button Pressed")
            let vc = SearchTableViewController()
            vc.modalPresentationStyle = .fullScreen
            navigationController?.pushViewController(vc, animated: false)
            
        }
        if segue.identifier == "registerToLogin" {
            print("Login button on Register Screen Pressed")
            let vc = LoginViewController()
            vc.modalPresentationStyle = .fullScreen
            navigationController?.pushViewController(vc, animated: false)
            
        }
    }
}
