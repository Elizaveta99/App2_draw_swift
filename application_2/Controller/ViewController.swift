//
//  ViewController.swift
//  application_2
//
//  Created by Lizaveta Rudzko on 2/20/1398 AP.
//  Copyright © 1398 Lizaveta Rudzko. All rights reserved.
//

import UIKit

extension UIView {
    
    func rotate180(duration: TimeInterval, options: UIView.AnimationOptions) {
        UIView.animate(withDuration: duration, delay: 0, options: options, animations: {
            self.transform = self.transform.rotated(by: CGFloat.pi)
        }, completion: nil)
    }
    
}

class ViewController: UIViewController {

    @IBOutlet var triangle: Triangle!
    @IBOutlet var polygon_10: Polygon_10!
    
    
    
    override func viewDidLoad() {
        
        //self.triangle.rotate180(duration: 0.5, options: [])
        
        super.viewDidLoad()
    }

}

