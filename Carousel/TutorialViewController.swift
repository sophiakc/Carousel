//
//  TutorialViewController.swift
//  Carousel
//
//  Created by Sophia KC on 24/10/2016.
//  Copyright © 2016 Sophia KC. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController,

UIScrollViewDelegate {

    
    @IBOutlet var scrollView: UIView!
    
//    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: view.frame.size.height)
        scrollView.delegate = self
        
        
        
        

        
    }


}
