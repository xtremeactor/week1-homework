//
//  ViewController.swift
//  week2-hw
//
//  Created by Jason Buchel on 10/11/16.
//  Copyright © 2016 TheAustinSpace. All rights reserved.
//

import UIKit
var list = [ToDoItem]()

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
  



    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "list", for: indexPath) as! item
        
        
        let meal = list[indexPath.row]

        cell.itemLabel.text = meal.item
        cell.dateLabel.text = meal.date
        cell.categoryLabel.text = meal.category
        
        
        // Configure the cell...
        
       return cell
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
             list.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)

        }
    }
    
    @IBAction func unwindToMenue(segue:UIStoryboardSegue){
    }
        
   override func viewDidAppear(_ animated: Bool) {
    tableView.reloadData()
   // navigationItem.leftBarButtonItem = editButtonItem
    
    func viewDidLoad(_animated: Bool){
        super.viewDidLoad()
  
    }
    
    
   
    
    
        // Do any additional setup after loading the view, typically from a nib.
   // }

}
    
}


