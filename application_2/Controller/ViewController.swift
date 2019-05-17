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
    }
    
    func scale(duration: TimeInterval, options: UIView.AnimationOptions) {
        self.transform = CGAffineTransform.identity
        UIView.animate(withDuration: duration, delay: 7.0, options: [.curveLinear], animations: { () -> Void in
            self.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
        }) { (animationCompleted: Bool) -> Void in
        }
    }
    
}

class ViewController: UIViewController {
    
    @IBOutlet var viewTriangle: Triangle!
    @IBOutlet var viewPolygon_10: Polygon_10!
    
    override func viewDidLoad() {
        
        self.viewTriangle.rotate180(duration: 0.5, options: [])

        self.viewPolygon_10.scale(duration: 0.5, options: [])
        
        super.viewDidLoad()
    }

}

