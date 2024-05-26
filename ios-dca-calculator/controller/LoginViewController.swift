//
//  LoginViewController.swift
//  ios-dca-calculator
//
//  Created by manan gandhi on 4/25/24.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "loginToHome", sender: nil)
    }
   
    
    @IBAction func registerBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "loginToRegister", sender: nil)
    }
    
 
    // Override prepare(for:sender:) to perform custom action before the segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "loginToHome" {
            print("Button Pressed")
            let vc = SearchTableViewController()
            vc.modalPresentationStyle = .fullScreen
            navigationController?.pushViewController(vc, animated: false)
            
        }
        if segue.identifier == "loginToRegister" {
            print("Register button on Login Screen Pressed")
            let vc = SignupViewController()
            vc.modalPresentationStyle = .fullScreen
            navigationController?.pushViewController(vc, animated: false)
            
        }
    }
    
}
