//
//  PageViewController.swift
//  MicroMoney
//
//  Created by Andrey Danilkovich on 10/20/18.
//  Copyright © 2018 Andrey Danilkovich. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController
{
    // Some hard-coded data for our walkthrough screens
    var pageHeaders = ["Learn to Design iOS Apps", "Create Prototypes", "Develop Animation", "Social Networks with Parse"]
    var pageImages = ["", "", "", ""]
    var pageDescriptions = ["Learn to design the world's most beautiful iOS apps without having to hire a designer.", "Validate your app idea by creating a prototype before implementation", "Delight your users with stunning animation and transition", "Connect people together!"]
    
    // make the status bar white (light content)
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // this class is the page view controller's data source itself
        self.dataSource = self
        
        // create the first walkthrough vc
        if let startWalkthroughVC = self.viewControllerAtIndex(0) {
            setViewControllers([startWalkthroughVC], direction: .forward, animated: true, completion: nil)
        }
        
    }
    
    // MARK: - Navigate
    
    func nextPageWithIndex(_ index: Int)
    {
        if let nextWalkthroughVC = self.viewControllerAtIndex(index+1) {
            setViewControllers([nextWalkthroughVC], direction: .forward, animated: true, completion: nil)
        }
    }
    
    func viewControllerAtIndex(_ index: Int) -> WalkthroughViewController?
    {
        if index == NSNotFound || index < 0 || index >= self.pageDescriptions.count {
            return nil
        }
        
        // create a new walkthrough view controller and assing appropriate date
        if let walkthroughViewController = storyboard?.instantiateViewController(withIdentifier: "WalkthroughViewController") as? WalkthroughViewController {
            walkthroughViewController.imageName = pageImages[index]
            walkthroughViewController.headerText = pageHeaders[index]
            walkthroughViewController.descriptionText = pageDescriptions[index]
            walkthroughViewController.index = index
            
            return walkthroughViewController
        }
        
        return nil
    }
}

extension PageViewController : UIPageViewControllerDataSource
{
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
    {
        var index = (viewController as! WalkthroughViewController).index
        index += 1
        return self.viewControllerAtIndex(index)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! WalkthroughViewController).index
        index -= 1
        return self.viewControllerAtIndex(index)
    }
}






















