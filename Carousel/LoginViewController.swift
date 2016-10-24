//
//  LoginViewController.swift
//  Carousel
//
//  Created by Sophia KC on 23/10/2016.
//  Copyright © 2016 Sophia KC. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    
    @IBOutlet weak var loginScrollView: UIScrollView!
    
    @IBAction func didPressBack(_ sender: AnyObject) {
        navigationController!.popViewController(animated: true)
    }
    
    
    class LoginViewController: UIViewController, UIScrollViewDelegate {
        
        func scrollViewDidScroll(_ loginScrollView: UIScrollView) {
            // This method is called as the user scrolls
        }
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        // tell the scroll view to call the view controller with the scroll view event methods
//        loginScrollView.delegate = self
        
        // Set the scroll view content size
        loginScrollView.contentSize = loginScrollView.frame.size
        
        // Set the content insets
        loginScrollView.contentInset.bottom = 100

        
    }
    
    
    
}
