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
        self.mapView.mapKey = MREditorKey(forMap: MAP_ID, app: APP_ID)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.mapView.mapKey = MREditorKey(forMap: MAP_ID, app: APP_ID)
        
        var blurView: UIVisualEffectView!
        // and in showBlur() function, sto the effect in this variable:

        let blurEffect: UIBlurEffect = UIBlurEffect(style: .light)
         blurView = UIVisualEffectView(effect: blurEffect)
        blurView.backgroundColor = UIColor.clear
        //and in destroyBlur() call:

        //blurView.removeFromSuperview()
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


