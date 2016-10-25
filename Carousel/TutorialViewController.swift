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
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = imageView.frame.size
        
        scrollView.delegate = self
        //        pageControl.numberOfPages = 4
        //        pageControl.currentPageIndicatorTintColor = UIColor.blue
        
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator  = false
        
        

        
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.bounds.width)
    }
    
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // This method is called as the user scrolls
    }

    
    
//    @IBAction func pageControlDidPage(sender: AnyObject) {
//        let xOffset = scrollView.bounds.width * CGFloat(pageControl.currentPage)
//        scrollView.setContentOffset(CGPoint(xOffset,0) , animated: true)
//    }
//    
    
    
    
    

