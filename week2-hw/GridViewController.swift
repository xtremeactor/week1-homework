//
//  GridViewController.swift
//  week2-hw
//
//  Created by Jason Buchel on 10/21/16.
//  Copyright © 2016 TheAustinSpace. All rights reserved.
//

import UIKit

class GridViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    @IBOutlet var collectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "grid", for: indexPath) as! CollectionViewCell
        
        let meal = list[indexPath.row]
        
        cell.itemLabel.text = meal.item
        cell.dateLabel.text = meal.date
        cell.categoryLabel.text = meal.category
        
        
        // Configure the cell...
        
       return cell
        
        
    }
    
    
   
    
   /* func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            list.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
 
    
    }
*/
    

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.reloadData()
        
    

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
         collectionView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
