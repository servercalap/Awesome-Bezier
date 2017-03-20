//
//  ViewController.swift
//  Awesome-Bezier
//
//  Created by QWERTY on 19/03/2017.
//  Copyright © 2017 servercalap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var btn: ArrawButtonView!
    
    let bnt_Arrow = ArrawButtonView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        bnt_Arrow.direction = .down
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

