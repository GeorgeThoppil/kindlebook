//
//  bookcell.swift
//  kindlebook
//
//  Created by George Thoppil on 2018-10-25.
//  Copyright © 2018 George Thoppil. All rights reserved.
//

import UIKit

class BookCell : UITableViewCell {
    
    let coverageImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        return imageView
    }()
    
    
    let titleLabel : UILabel = {
        let label = UILabel()
        label.text = " blab blah"
        return label
    }()
    
    let authorLabel : UILabel = {
        let label = UILabel()
        label.text = " blab author"
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        coverageImageView.frame = CGRect(x: 8, y: 8, width: 50, height: 50)
        titleLabel.frame = CGRect(x: 66, y: 20, width: 50, height: 20)
        authorLabel.frame = CGRect(x: 66, y: 48, width: 200, height: 20)
        
        addSubview(coverageImageView)
        addSubview(titleLabel)
        addSubview(authorLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
