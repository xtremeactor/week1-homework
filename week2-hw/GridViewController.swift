//
//  GridViewController.swift
//  week2-hw
//
//  Created by Jason Buchel on 10/21/16.
//  Copyright © 2016 TheAustinSpace. All rights reserved.
//

import UIKit

class GridViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
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
        cell.ownerLabel.text = meal.belongsTo

       return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.reloadData()

    }
    
    override func viewDidAppear(_ animated: Bool) {
         collectionView.reloadData()
    }


    }
