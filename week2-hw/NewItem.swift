//
//  SecondViewController.swift
//  week2-hw
//
//  Created by Jason Buchel on 10/11/16.
//  Copyright © 2016 TheAustinSpace. All rights reserved.
//

import UIKit



class NewItem: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var myPicker: UIPickerView!
    
    @IBOutlet var doneButton: UIButton!
    
    @IBAction func hideKeyboard(_ sender: AnyObject) {
        resignFirstResponder()
    }
    
    @IBOutlet var chooseLabel: UIButton!
    
    @IBOutlet var categoryHeader: UILabel!
    @IBOutlet var categoryLabel: UILabel!
    
    @IBOutlet var visualEffect: UIVisualEffectView!
    
    @IBAction func chooseCategory(_ sender: AnyObject) {
       myPicker.isHidden = false
      doneButton.isHidden = false
      
        
    }
    //  let currentDate = NSDate()
   
    @IBAction func categoryChosen(_ sender: AnyObject) {
         myPicker.isHidden = true
        doneButton.isHidden = true
        chooseLabel.isHidden = true
        categoryHeader.isHidden = false
        categoryLabel.isHidden = false
    

                
        
    }
    var meal: ToDoItem!
    
    var categoryChoice: String!
    
    @IBOutlet var textField: UITextField!
    
   
    
    
    
    @IBAction func saveItem(_ sender: AnyObject) {
     
        
        let name = textField.text!.lowercased()
        let todaysDate = NSDate()
        let dateFormat = DateFormatter()
        
        
        dateFormat.dateFormat = "MM-dd-yyyy"
        
        let todaysDateString = dateFormat.string(from: todaysDate as Date)
        
        
        meal = ToDoItem(item: name, date: todaysDateString, category: categoryChoice)
        
        list.append(meal!)
        
       // let userDefaults = UserDefaults.standard
      //  userDefaults.set(list, forKey: "hi")
        
        
       // userDefaults.synchronize()
        
     //   print(list)
    
        
        self.performSegue(withIdentifier: "unwindToMenu", sender: self)
        
        
    }
    
 
    
    var categories = ["low", "medium", "high"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return categories[row]
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        categoryChoice = categories[row]
        categoryLabel.text = categoryChoice
       
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return categories.count
    }
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPicker.dataSource = self
        myPicker.delegate = self

}
}
