//
//  LocationManager.swift
//  meridian-swift
//
//  Created by Tyler Frith on 10/16/19.
//  Copyright © 2019 tyfrith. All rights reserved.
//

import Foundation
import Meridian

//simple attempt at getting location updates w/out a map
class LocationManager: UIViewController, MRLocationManagerDelegate {
    
    
    //declare our location manager
    private lazy var locationManager: MRLocationManager = {
        let locationManager = MRLocationManager(app: MREditorKey(identifier: App_Map_ID.appID()))
        locationManager.delegate = self
        return locationManager
    }()
    
    //start posting location updates
    override func viewWillAppear(_ animated: Bool) {
        // start listening for location updates
        self.locationManager.startUpdatingLocation()
    }
    
    //DELEGATES
    func locationManager(_ manager: MRLocationManager, didUpdateTo location: MRLocation) {
        print("Location update to: ", location)
    }
    
    func locationManager(_ manager: MRLocationManager, didFailWithError error: Error) {
        print("Failed with error: ", error)
    }
    

}
