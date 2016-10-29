//
//  ViewController.swift
//  week2-hw
//
//  Created by Jason Buchel on 10/11/16.
//  Copyright © 2016 TheAustinSpace. All rights reserved.
//

import UIKit
// import RealmSwift
// import Alamofire


var list = [ToDoList]()

class ViewController: UIViewController {

    @IBOutlet var viewChoice: UISegmentedControl!
    
    @IBOutlet var listView: UIView!
    
    @IBOutlet var gridView: UIView!

    
    @IBAction func selectedView(_ sender: AnyObject) {
        let choice = viewChoice.titleForSegment(at: viewChoice.selectedSegmentIndex)!
        if choice == "List View"{
        print ("hi")
        listView.isHidden = false
            gridView.isHidden = true
        } else {
            listView.isHidden = true
        gridView.isHidden = false
            }
        


    }
    

  
  //  let userDefaults = UserDefaults.standard


      
    @IBAction func unwindToMenue(segue:UIStoryboardSegue){
    }
        
   
    override func viewDidLoad() {
        super.viewDidLoad()
    
        /* let realm = try! Realm()
        let toDoItems = realm.objects(ToDoItem.self)
        print("I have no \(toDoItems)")
       
      //  list = userDefaults.object(forKey: "hi")! as! Array
 
        */ 
        // Do any additional setup after loading the view.
    }


    
    
    override func viewDidAppear(_ animated: Bool) {
    
        // Do any additional setup after loading the view, typically from a nib.
   // }

}
    
}


