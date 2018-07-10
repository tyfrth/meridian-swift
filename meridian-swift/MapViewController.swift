//
//  ViewController.swift
//  meridian-swift
//
//  Created by Tyler Frith on 7/9/18.
//  Copyright © 2018 tyfrith. All rights reserved.
//

import UIKit
import Meridian

class ViewController: MRMapViewController {
    
    override func viewWillAppear(_ animated: Bool) {
    self.mapView.mapKey = MREditorKey(forMap: MAP_ID, app: APP_ID)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

