//
//  TableViewController.swift
//  
//
//  Created by Tyler Frith on 7/31/18.
//

import UIKit
import Meridian

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let examples = ["Example MRMapViewController", "example 2", "example 3", "example 4"]
    let segueIdentifier = ["a", "b", "c", "d"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //creates number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return examples.count
    }
    
    //adds text label to each row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = examples[indexPath.row]
        
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: segueIdentifier[indexPath.row], sender: self)
    }
    
}
