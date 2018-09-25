//
//  Book.swift
//  BookManager
//
//  Created by 이경환 on 2018. 9. 24..
//  Copyright © 2018년 이경환. All rights reserved.
//

import Foundation

struct Book {
    var name: String?
    var genre: String?
    var author: String?
    
    func bookPrint() {
        print("Name: \(name!)")
        print("Genre: \(genre!)")
        print("Author: \(author!)")
        print("----------")
    }
}
