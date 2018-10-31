//
//  pageCell.swift
//  kindlebook
//
//  Created by George Thoppil on 2018-10-31.
//  Copyright © 2018 George Thoppil. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
    
    let textlabel : UILabel = {
        let label = UILabel()
        label.backgroundColor = UIColor.white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        
        addSubview(textlabel)
        //textlabel.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        textlabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        textlabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        textlabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        textlabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
