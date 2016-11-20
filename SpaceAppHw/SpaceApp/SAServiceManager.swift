//
//  SAServiceManager.swift
//  SpaceApp
//
//  Created by Benjamin Tan on 11/6/16.
//  Copyright © 2016 TheAustinSpace. All rights reserved.
//

import UIKit
import Alamofire

func loadInData(url:String){
    Alamofire.request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=999&camera=\(url)&api_key=ok6qDFliNO1mXqXxQbz9aUQ3toPObTDcEjw7xHkX", method: .get).responseJSON { response in
        
        let data = response.result.value as! NSDictionary
        
        let mainData = data.object(forKey: "photos") as! NSArray
        
        
        for i in 0..<mainData.count{
            let dict = mainData[i] as! NSDictionary
            let picture = dict.object(forKey: "img_src") as! String
        
            let photoBatch = marsPhotos(Position: url, imageURL: picture)
            
            
            if url == "FHAZ" {
                      FHAZalbum.append(photoBatch)
            }
            
            if url == "RHAZ" {
                      RHAZalbum.append(photoBatch)
            }
            
            if url == "MAST" {
                      MASTalbum.append(photoBatch)
            }
            
    
                
        }
        
         NotificationCenter.default.post(name: Notification.Name(rawValue: "mySpecialNotificationKey"), object: nil)
    }
  
   // why did that have to be in the "response in" versus after this  

}
