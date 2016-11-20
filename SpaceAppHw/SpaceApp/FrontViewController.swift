//
//  FrontViewController.swift
//  SpaceApp
//
//  Created by Jason Buchel on 11/3/16.
//  Copyright © 2016 TheAustinSpace. All rights reserved.
//

import UIKit
import Alamofire

var FHAZalbum = [marsPhotos]()
var MASTalbum = [marsPhotos]()
var RHAZalbum = [marsPhotos]()

var segment = "FHAZ"

class ViewController: UIViewController {

    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBAction func viewSelected(_ sender: UISegmentedControl) {
        
        segment = segmentedControl.titleForSegment(at: segmentedControl.selectedSegmentIndex)!
        
        NotificationCenter.default.post(name: Notification.Name(rawValue: "mySpecialNotificationKey"), object: self)
 
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
    
    }
    
    
    override func viewDidLoad() {
        loadInData(url: "FHAZ")
        loadInData(url: "RHAZ")
        loadInData(url: "MAST")

    super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
