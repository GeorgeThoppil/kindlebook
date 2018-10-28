//
//  models.swift
//  kindlebook
//
//  Created by George Thoppil on 2018-10-25.
//  Copyright © 2018 George Thoppil. All rights reserved.
//

import UIKit


class Book {
    let title: String
    let author : String
    let pages: [Page]
    let image: UIImage
    
    init(title: String, author : String, pages: [Page], image: UIImage) {
        self.title = title
        self.author = author
        self.pages = pages
        self.image = image
    }
}

class Page {
    let number: Int
    let text: String
    
    init(number : Int, text: String) {
        self.number = number
        self.text = text
    }
}
