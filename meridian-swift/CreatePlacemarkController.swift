//
//  CreatePlacemarkController.swift
//  meridian-swift
//
//  Created by Tyler Frith on 7/11/19.
//  Copyright © 2019 tyfrith. All rights reserved.
//

import Foundation
import UIKit
import Meridian

class CreatePlacemarkController: MRMapViewController, UIGestureRecognizerDelegate {
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.mapView.mapKey = MREditorKey(forMap: MAP_ID, app: APP_ID)
        self.navigationItem.title = "MRMapViewController"
        
//        let longPress = self.mapView.longPressMap
//        print(longPress as Any)
//
//        if longPress != nil {
//            userDidLongPress()
//        }
        
        
    }
    
//    @code mapview.longPressMap = ^(CGPoint pointOnMap, UIGestureRecognizerState gestureState) { NSLog(@“State - %@, Point - %@”, @(gestureState), NSStringFromCGPoint(pointOnMap)); }; @endcode
    

    
    
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
    
    //func to get point from long press on map
    func userDidLongPress() {
        let longPressPoint = self.mapView.longPressMap
        print(longPressPoint as Any)
    }
    
}
