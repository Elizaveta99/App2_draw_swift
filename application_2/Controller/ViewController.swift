//
//  ViewController.swift
//  application_2
//
//  Created by Lizaveta Rudzko on 2/20/1398 AP.
//  Copyright © 1398 Lizaveta Rudzko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var triangle: Triangle!
    @IBOutlet var polygon_10: Polygon_10!
    
    override func viewDidLoad() {
        UIView.animate(withDuration: 0.5, delay: 0.3, options: [],
                       animations: {
                        self.triangle.center.x += self.view.bounds.width
        },
                       completion: nil
        )
        
        super.viewDidLoad()
    }

}

