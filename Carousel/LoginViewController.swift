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
    
    @IBAction func didPressBack(_ sender: AnyObject) {
        navigationController!.popViewController(animated: true)
    }
    
    @IBOutlet weak var buttonParentView: UIView!
        // define variables for initial position and offset
        var buttonInitialY: CGFloat!
        var buttonOffset: CGFloat!
    
    @IBOutlet weak var fieldParentView: UIView!
        var fieldInitialY: CGFloat!
        var fieldOffset: CGFloat!
    
    
    @IBAction func didDismissKeyboard(_ sender: AnyObject) {
        view.endEditing(true)
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
