//
//  ViewController.swift
//  BottomSheet
//
//  Created by GENEXT-PC on 19/02/20.
//  Copyright © 2020 Genext Students. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let mapView = MapViewController(nibName: "MapViewController", bundle: nil)
        mapView.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 1)
        self.viewControllers = [UINavigationController(rootViewController: mapView) ]
        
        self.selectedIndex = 0
    }


}

