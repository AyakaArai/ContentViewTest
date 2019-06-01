//
//  ViewController.swift
//  ContentViewTest
//
//  Created by Shiromu on 2019/06/01.
//  Copyright © 2019 Shiromu. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDataSource{

    @IBOutlet weak var collectionView: UICollectionView!
    let counts = [1,2,3,4,5,6,7,8,9,10]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.counts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.label.text = String(counts[indexPath.row])
        
        return cell
    }

}

