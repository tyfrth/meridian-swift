//
//  TableViewController.swift
//  meridian-swift
//
//  Created by Tyler Frith on 10/19/18.
//  Copyright © 2018 tyfrith. All rights reserved.
//

//import Foundation
//import UIKit
//import Meridian
//
//class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//
//    let examples = ["MRMapViewController", "Campaign Monitoring", "example 3", "example 4"]
//    let segueIdentifier = ["a", "b", "c", "d"]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
//
//    //creates number of rows
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return examples.count
//    }
//
//    //adds text label to each row
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
//        cell.textLabel?.text = examples[indexPath.row]
//
//        return(cell)
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: segueIdentifier[indexPath.row], sender: self)
//    }
//
//}
