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

class CampaignController: MRMapViewController, MRCampaignManagerDelegate {
    
    override func viewWillAppear(_ animated: Bool) {
        self.mapView.mapKey = MREditorKey(forMap: MAP_ID, app: APP_ID)
        self.navigationItem.title = "CampaignController"
    }
    
}




