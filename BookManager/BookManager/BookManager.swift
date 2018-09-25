//
//  BookManager.swift
//  BookManager
//
//  Created by 이경환 on 2018. 9. 24..
//  Copyright © 2018년 이경환. All rights reserved.
//

import Foundation

class BookManager {
    var bookList = [Book]()
    
    func registerBook(bookObject: Book) {
        bookList += [bookObject]
    }
    
    func showAllBook() -> String {
        var strTmp = ""
        for bookTmp in bookList {
            strTmp += "Name: \(bookTmp.name!)\n"
            strTmp += "Genre: \(bookTmp.genre!)\n"
            strTmp += "Author: \(bookTmp.author!)\n"
            strTmp += "----------\n"
        }
        return strTmp
    }
    
    func countBooks() -> Int {
        return bookList.count
    }
    
    func searchBook(name: String) -> String? {
        var strTmp = ""
        for bookTmp in bookList {
            if bookTmp.name  == name {
                strTmp += "\(bookTmp.name!)"
                return strTmp
            }
        }
        return nil
    }
    
    func removeBook(name: String) {
        for (index, value) in bookList.enumerated() {
            if value.name == name {
                bookList.remove(at: index)
            }
        }
    }
}
