//
//  ToDoList.swift
//  week2-hw
//
//  Created by Jason Buchel on 10/12/16.
//  Copyright © 2016 TheAustinSpace. All rights reserved.
//

import Foundation

class ToDoItem {
    
    var item: String!
   // var category: String!
    var date: String!
    var category: String!
    
    init(item: String, date: String, category: String) {
        
        self.item = item
        //self.category = category
        self.date = date
        self.category = category
        
    }
    
    
}
