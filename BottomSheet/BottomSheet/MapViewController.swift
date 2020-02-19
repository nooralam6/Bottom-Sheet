//
//  MapViewController.swift
//  BottomSheet
//
//  Created by GENEXT-PC on 19/02/20.
//  Copyright © 2020 Genext Students. All rights reserved.
//

import UIKit
class MapViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
            addBottomSheetView()
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func addBottomSheetView() {
        // 1- Init bottomSheetVC
        let userViewController = UserViewController(nibName: "UserViewController", bundle: nil)

        // 2- Add bottomSheetVC as a child view
        self.addChild(userViewController)
        self.view.addSubview(userViewController.view)
        userViewController.didMove(toParent: self)

        // 3- Adjust bottomSheet frame and initial position.
        let height = view.frame.height
        let width  = view.frame.width
        userViewController.view.frame = CGRect(x: 0, y: self.view.frame.maxY, width: width, height: height)
    }


}
