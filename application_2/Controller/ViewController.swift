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
        UIView.animate(withDuration: duration, delay: 5.0, options: options, animations: {
            self.transform = self.transform.rotated(by: CGFloat.pi)
        }, completion: nil)
        
        
        self.transform = CGAffineTransform.identity
        UIView.animate(withDuration: duration, delay: 5.0, options: [.curveLinear], animations: { () -> Void in
            self.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        }) { (animationCompleted: Bool) -> Void in
        }
        
    }

    
    func move() {
            self.alpha = 0.5;
            self.frame = CGRect(x: 10, y: self.frame.origin.y, width: self.frame.width, height: self.frame.height)

    }
    
}

class ViewController: UIViewController {
    
    @IBOutlet var viewTriangle: Triangle!
    @IBOutlet var viewPolygon_10: Polygon_10!
    
    override func viewDidLoad() {
        
        self.viewTriangle.rotate180(duration: 0.5, options: [])
        
        self.viewPolygon_10.move()
        
        super.viewDidLoad()
    }

}

