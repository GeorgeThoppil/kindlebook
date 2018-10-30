//
//  BookPageController.swift
//  kindlebook
//
//  Created by George Thoppil on 2018-10-30.
//  Copyright © 2018 George Thoppil. All rights reserved.
//

import UIKit

class BookPageController : UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        navigationItem.title = "Book"
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        cell.backgroundColor = .purple
        return cell
    }
    
}

