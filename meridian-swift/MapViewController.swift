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

class MapViewController: MRMapViewController {
    
    override func viewWillAppear(_ animated: Bool) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mapView.mapKey = MREditorKey(forMap: MAP_ID, app: APP_ID)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //mapview delegate
    
    override func mapViewDidFinishLoadingMap(_ mapView: MRMapView) {
        print("map view finished loading")
    }
    
    //    private var selectedOnLoad = false
    
    //    override func mapView(_ mapView: MRMapView, didAdd views: [MRAnnotationView]) {
    //        if self.selectedOnLoad {
    //            return
    //        }
    //        for view in views {
    //            if let title = view.annotation.title, title == "Converse" {
    //                self.mapView.selectAnnotation(view.annotation, animated: true)
    //                self.selectedOnLoad = true
    //            }
    //        }
    //    }
    
}


