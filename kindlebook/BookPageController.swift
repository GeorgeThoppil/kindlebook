//
//  BookPageController.swift
//  kindlebook
//
//  Created by George Thoppil on 2018-10-30.
//  Copyright © 2018 George Thoppil. All rights reserved.
//

import UIKit

class BookPageController : UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var book : Book?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .white
        
        navigationItem.title = self.book?.title
        
        collectionView?.register(PageCell.self, forCellWithReuseIdentifier: "cellId")
        
        let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout
        
        layout?.minimumLineSpacing = 0
        layout?.scrollDirection = .horizontal
        collectionView.isPagingEnabled = true
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Close", style: .plain, target: self, action: #selector(handleCloseBook))

    }
    
    @objc func handleCloseBook()  {
        dismiss(animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height - 64)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return book?.pages.count ?? 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let pageCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as!PageCell
        
        let page = book?.pages[indexPath.item]
        pageCell.textlabel.text = page?.text
        
        return pageCell
    }
    
}

