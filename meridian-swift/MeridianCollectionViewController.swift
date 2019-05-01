//
//  MeridianCollectionViewController.swift
//  meridian-swift
//
//  Created by Tyler Frith on 4/8/19.
//  Copyright © 2019 tyfrith. All rights reserved.
//

import UIKit

//private let reuseIdentifier = "Cell"
//set the reuseIdentifier consant
//private let reuseIdentifier = "meridianCell"

class MeridianCollectionViewController: UICollectionViewController {
    
//    //set the reuseIdentifier consant
//    private let reuseIdentifier = "meridianCell"
    
//    //set sectionInsets constant
//    private let sectionInsets = UIEdgeInsets(top: 50.0,
//                                             left: 20.0,
//                                             bottom: 50.0,right: 20.0)
   
    //initialize empty array
    var meridianArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        meridianArray = ["MRMapViewController", "Campaigns", "Location Sharing", "Asset Tracking", "Search", "Custom Annotations"]

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "meridianCell")

        // Do any additional setup after loading the view.
        print("view did load!")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return meridianArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "meridianCell", for: indexPath) as UICollectionViewCell
        
        let Button = cell.viewWithTag(1) as! UIButton
        Button.setTitle(meridianArray[indexPath.row], for: UIControlState.normal)

        return cell
    }
    
    //the bit that lets us navigate to view controllers from collection view
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let name = meridianArray[indexPath.row]
        let viewController = storyboard?.instantiateViewController(withIdentifier: name)
        self.navigationController?.pushViewController(viewController!, animated: true)
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
