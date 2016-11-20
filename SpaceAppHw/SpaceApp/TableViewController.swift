//
//  TableViewController.swift
//  SpaceApp
//
//  Created by Jason Buchel on 11/17/16.
//  Copyright © 2016 TheAustinSpace. All rights reserved.
//

import UIKit
import SDWebImage



class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    var imageURL: URL!
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if segment == "FHAZ" {
            return FHAZalbum.count
        }
        
        if segment == "RHAZ" {
            return RHAZalbum.count        }
        
        if segment == "MAST" {
            return MASTalbum.count
        
        } else {
            return FHAZalbum.count
        }
      }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! TableCell
        
        var album = [marsPhotos]()
        
        
        if segment == "FHAZ" {
           album = FHAZalbum
        }
       
        if segment == "RHAZ" {
            album = RHAZalbum
        }
        
        if segment == "MAST" {
           album = MASTalbum
        }
        
        
        
        let picture = album[indexPath.row]
   
        let newString = picture.imageURL
        
        imageURL=URL(string:newString!)!
        
        cell.marsView.sd_setImage(with: imageURL, placeholderImage:UIImage(named:"placeholder.png"))
    
        return cell
        
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
   

    }
    
    override func viewDidLoad() {
      
        
        
        
       NotificationCenter.default.addObserver(self, selector: #selector(TableViewController.loadList), name: NSNotification.Name(rawValue: "mySpecialNotificationKey"), object: nil)
        
        
        
        super.viewDidLoad()
                
        }
    
    
    func loadList(){
    
        tableView.reloadData()
    
       
    }
        
  
}

