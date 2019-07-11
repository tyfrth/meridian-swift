//
//  MapViewController.swift
//  meridian-swift
//
//  Created by Tyler Frith on 8/9/18.
//  Copyright © 2018 tyfrith. All rights reserved.
//

import Foundation
import UIKit
import Meridian

class MapViewController: MRMapViewController, UIGestureRecognizerDelegate {
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.mapView.mapKey = MREditorKey(forMap: MAP_ID, app: APP_ID)
        self.navigationItem.title = "MRMapViewController"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var filteredSubviews = self.view.subviews
//
//        if filteredSubviews = MRMapView {
//
//        }
        
       // self.mapView.mapKey = MREditorKey(forMap: MAP_ID, app: APP_ID)
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap(recognizer:)))
        recognizer.delegate = self
        self.view.addGestureRecognizer(recognizer)
        
   }
    
    @objc func handleTap(recognizer: UITapGestureRecognizer) {
        print("-----TAPPED-----")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //mapview delegate
    
    override func mapViewDidFinishLoadingMap(_ mapView: MRMapView) {
        print("map view finished loading")
    }
    
     override func mapView(_ mapView: MRMapView, requestedDirectionsTo placemark: MRPlacemark) {
//        print("directions requested")
    }
    
}


