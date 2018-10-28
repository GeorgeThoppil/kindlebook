//
//  ViewController.swift
//  kindlebook
//
//  Created by George Thoppil on 2018-10-24.
//  Copyright © 2018 George Thoppil. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var books : [Book]?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationItem.title = "Kindle"
        tableView.register(BookCell.self, forCellReuseIdentifier: "cellId")
        tableView.tableFooterView = UIView()
        
        setup()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = books?.count {
            return count
        }
            return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
        let book = books?[indexPath.row]
        cell.textLabel?.text = book?.title
        cell.imageView?.image = book?.image
        
        return cell
    }
    
    func setup()  {
        let page1 = Page(number: 1, text: "Text for the first page")
        let page2 = Page(number: 2, text: "Text for the first page")
        
        let pages = [page1, page2]
        
        let book = Book(title: "Steve Jobs", author: "WI", pages: pages, image:#imageLiteral(resourceName: "steve_jobs"))
        
        let book2 = Book(title: "Bill Gates", author: "MB", pages: [
            Page(number: 1, text: "Text for page1"),
            Page(number: 2, text: "Text for page2"),
            Page(number: 3, text: "Text for page3"),
            Page(number: 4, text: "Text for page4")], image:#imageLiteral(resourceName: "bill_gates"))
        
        self.books = [book, book2]
        
        
    }
}

