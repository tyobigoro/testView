//
//  ViewController.swift
//  tView
//
//  Created by tyobigoro on 2020/05/24.
//  Copyright © 2020 tyobigoro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        setLabelCenter?()
        
    }
    
    fileprivate lazy var setLabelCenter: (() -> Void)? = {
        self.label.center.x = self.view.center.x
        self.label.center.y = self.view.center.y * 0.25
        return nil
    }()
    
    
}

