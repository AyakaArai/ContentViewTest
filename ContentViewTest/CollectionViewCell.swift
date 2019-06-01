//
//  CollectionViewCell.swift
//  ContentViewTest
//
//  Created by Shiromu on 2019/06/01.
//  Copyright © 2019 Shiromu. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var label: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // cellの枠の太さ
        self.layer.borderWidth = 1.0
        // cellの枠の色
        self.layer.borderColor = UIColor.black.cgColor
        // cellを丸くする
        self.layer.cornerRadius = 8.0
    }
}
