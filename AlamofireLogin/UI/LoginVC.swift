//
//  ViewController.swift
//  IosLogin
//  Created by Gerti-Prifti on 1/3/19.



import UIKit


class LoginVC: UIViewController {


    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func loginRequest(_ sender: Any) {
        
        login()
        
    }
   
   private func login()  {
        
        APIManager.loginRequest(username:username.text!, passwors:password.text!,completionHandler: { (success) in
            
            guard success == true else {
               
                   self.alert(message: "", title: "Fail")
                
                return
            }
            
            self.alert(message: "", title: "Success")
            
        })
    
    }

}

