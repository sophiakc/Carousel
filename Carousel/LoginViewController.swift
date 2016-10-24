//
//  LoginViewController.swift
//  Carousel
//
//  Created by Sophia KC on 23/10/2016.
//  Copyright © 2016 Sophia KC. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController,

UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ loginScrollView: UIScrollView) {
        // This method is called as the user scrolls
    }
    
    
    @IBOutlet weak var loginScrollView: UIScrollView!

    @IBOutlet weak var buttonParentView: UIView!
        // define variables for initial position and offset
        var buttonInitialY: CGFloat!
        var buttonOffset: CGFloat!
    
    @IBOutlet weak var fieldParentView: UIView!
        var fieldInitialY: CGFloat!
        var fieldOffset: CGFloat!
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    // Alert controller when empty email or password
    let alertController = UIAlertController(title: "Credentials required", message: "Please enter your email address and password.", preferredStyle: .alert)
    
    // Alert controller when sign in failed
    let sifalertController = UIAlertController(title: "Sign In Failed", message: "Incorrect email or password.", preferredStyle: .alert)
    
    // create an OK action on the alertController
    let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
        // handle response here.
    }
    
    
    
    
    
    
    @IBAction func didPressBack(_ sender: AnyObject) {
        navigationController!.popViewController(animated: true)
    }
    
    @IBAction func didDismissKeyboard(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    
    @IBAction func didPressSignIn(_ sender: AnyObject) {
        
        activityIndicator.startAnimating()
        
        if emailField.text!.isEmpty || passwordField.text!.isEmpty {
            delay(2, closure: {
                self.present(self.alertController, animated: true) {
                    // optional code for what happens after the alert controller has finished presenting
                    self.activityIndicator.stopAnimating()
                }
                // add the OK action to the alert controller
                self.alertController.addAction(self.OKAction)
                
                })
            
        } else if emailField.text == "sophiakc@gmail.com" && passwordField.text == "topsecret" {
            
            // Delay for 2 seconds
            delay(2, closure: {
                // Code that runs if both email and password match the text we are looking for in each case
                self.present(self.sifalertController, animated: true) {
                    
                    // optional code for what happens after the alert controller has finished presenting
                    self.activityIndicator.stopAnimating()
                    self.performSegue(withIdentifier: "signinSegue", sender: nil)
                }
            })
        } else {
            delay(2, closure: {
                // Code that runs if either the email or password do NOT match the text we are looking for in each case
                
                // add the OK action to the alert controller
                self.sifalertController.addAction(self.OKAction)
            })
            
        }
        
        

    }
    
    
    
    
    
    
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // tell the scroll view to call the view controller with the scroll view event methods
        loginScrollView.delegate = self
        
        
        // Set the scroll view content size
        loginScrollView.contentSize = loginScrollView.frame.size
        
        // Set the content insets
        loginScrollView.contentInset.bottom = 100
        
        
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            // Any code you put in here will be called when the keyboard is about to display
            
            // Move the button up above keyboard
            self.buttonParentView.frame.origin.y = self.buttonInitialY + self.buttonOffset
            
            // Scroll the scrollview up
            self.loginScrollView.contentOffset.y = self.loginScrollView.contentInset.bottom
        }
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillHide, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            // Any code you put in here will be called when the keyboard is about to hide
            
            
            // Move the button at the bottom when keyboard dismissed
            self.buttonParentView.frame.origin.y = self.buttonInitialY - self.buttonOffset

            
    
        }
        
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -140
        
        
        
        
    
    }

    
}
