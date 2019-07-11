//
//  TabBarViewController.swift
//  meridian-swift
//
//  Created by Tyler Frith on 6/10/19.
//  Copyright © 2019 tyfrith. All rights reserved.
//

import UIKit
import Foundation
import Meridian

class TabBarViewController: MRMapViewController {

    override func viewWillAppear(_ animated: Bool) {
        self.mapView.mapKey = MREditorKey(forMap: MAP_ID, app: APP_ID)
        self.navigationItem.title = "MRMapViewController"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
