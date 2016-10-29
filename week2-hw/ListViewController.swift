//
//  ListViewController.swift
//  week2-hw
//
//  Created by Jason Buchel on 10/21/16.
//  Copyright © 2016 TheAustinSpace. All rights reserved.
//

import UIKit
// import RealmSwift

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var tablView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "list", for: indexPath) as! TableCell
        
        
        let meal = list[indexPath.row]
        
        cell.itemLabel.text = meal.item
        cell.dateLabel.text = meal.date
        cell.categoryLabel.text = meal.category
        cell.ownerLabel.text = meal.belongsTo
        
        
        // Configure the cell...
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            list.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        tablView.reloadData()
    }
    
    override func viewDidLoad() {
        tablView.reloadData()
        super.viewDidLoad()

        
    }
  }

/*     let realm = try! Realm()
 let toDoItems = realm.objects(ToDoItem.self)
 print("I have \(toDoItems.first?.item)")
 // Do any additional setup after loading the view.
 }
 */

