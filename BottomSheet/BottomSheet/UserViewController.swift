//
//  UserViewController.swift
//  BottomSheet
//
//  Created by GENEXT-PC on 19/02/20.
//  Copyright © 2020 Genext Students. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let gesture = UIPanGestureRecognizer.init(target: self, action: #selector(panGesture))
        view.addGestureRecognizer(gesture)
    }
    
    override func viewWillAppear(_ animated: Bool) {
       super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        UIView.animate(withDuration: 0.3) { [weak self] in
            let frame = self?.view.frame
            let yComponent = UIScreen.main.bounds.height - 200
            self?.view.frame = CGRect(x: 0, y: yComponent, width: frame!.width, height: frame!.height)
        }
    }
    
    @objc func panGesture(recognizer: UIPanGestureRecognizer) {
        let velocity = recognizer.velocity(in: self.view)
        UIView.animate(withDuration: 0.5) {
            if velocity.y < 0 {
                self.view.frame = CGRect(x: 0, y: 100, width: self.view.frame.width, height: self.view.frame.height)
            } else if velocity.y > 0 {
                let yComponent = UIScreen.main.bounds.height - 200
                self.view.frame = CGRect(x: 0, y: yComponent, width: self.view.frame.width, height: self.view.frame.height)
            }
        }
        
        recognizer.setTranslation(CGPoint.zero, in: self.view)
    }

}
