//
//  IntroViewController.swift
//  Carousel
//
//  Created by Sophia KC on 23/10/2016.
//  Copyright © 2016 Sophia KC. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = imageView.frame.size

    }
    
}
