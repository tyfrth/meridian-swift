//
//  CampaignController.swift
//  meridian-swift
//
//  Created by Tyler Frith on 5/17/19.
//  Copyright © 2019 tyfrith. All rights reserved.
//

import Foundation
import UIKit
import Meridian

class CampaignController: UIViewController, MRCampaignManagerDelegate, UIGestureRecognizerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap(recognizer:)))
        recognizer.delegate = self
        view.addGestureRecognizer(recognizer)
    }
    
    @objc func handleTap(recognizer: UITapGestureRecognizer) {
        print("-----TAPPED-----")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        self.mapView.mapKey = MREditorKey(forMap: MAP_ID, app: APP_ID)
        self.navigationItem.title = "CampaignController"
    }
 
//no need for this stuff? using uibutton subclass instead

    //    @IBAction func toggleMonitoring(_ sender: UIButton) {
//        print("hey there button pressed")
//
//
//        sender.setTitle("Stop Campaign Monitoring", for: UIControlState.normal)
//
////        if let button : UIButton = sender as? UIButton
////        {
////            button.isSelected = !button.isSelected
////
////            if (button.isSelected)
////            {
////                button.setTitle("stop campaign monitoring", for: UIControlState.selected)
////            }
////            else
////            {
////              //  button.setTitle("start campaign monitoring", for: UIControlState.normal)
////                return
//        }
//   }
//
//    }

}




