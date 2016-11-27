//
//  ICSignupViewController.swift
//  InstaChat
//
//  Created by Benjamin Tan on 11/20/16.
//  Copyright © 2016 TheAustinSpace. All rights reserved.
//

import UIKit
import FirebaseAuth

class ICSignupViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var usernameTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var emailTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func validateUsername(candidate: String) -> Bool {
    // Task 3: Ensure that the username only allows alphanumeric characters
    // return true if its a alphanumeric, return false if not
   
        let name = usernameTextfield.text!
        let decimalCharacters = NSCharacterSet.decimalDigits
        let nogood = NSCharacterSet(charactersIn: ".,/?';!@#$%^&*()")
        
        if name.rangeOfCharacter(from: decimalCharacters) == nil && name.rangeOfCharacter(from: nogood as CharacterSet) == nil {
            return true
        }  else {
            return false
        }
        }
    
    
    func validateEmail(candidate: String) -> Bool {
    // Task 1: Verify that email is an actual email. Things to check are: .com, .net, .co, includes @ and check the textfield is blank
        
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
        
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: candidate)
        }
    

    func validatePassword(candidate: String) -> Bool {
    // Task 2: Check for password: requirements: min length of 6 characters
        

        let password = passwordTextfield.text!
       
        if password.characters.count >= 6 {
            return true
        } else {
            return false
        }
        }
        

 
    @IBAction func signupPressed(_ sender: Any) {
    // Task 4: Submit to firebase
    
        let email = emailTextfield.text!
        let password = passwordTextfield.text!
        let username = usernameTextfield.text!
        
        if(validateEmail(candidate: email) && validatePassword(candidate: password) && validateUsername(candidate: username)){
            FIRAuth.auth()?.createUser(withEmail: email, password: password) { (user, error) in
            
            }
        print ("this works")
            
        } else {
            print ("this failed")
            
        }
    }
    


}
    
    //Task 5: Store the "user id" as Defaults[.user_id]
    // https://github.com/radex/SwiftyUserDefaults


