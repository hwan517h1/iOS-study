//
//  ViewController.swift
//  VisualBookManager
//
//  Created by 이경환 on 2018. 9. 24..
//  Copyright © 2018년 이경환. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myBookManager = BookManager()
    
    @IBOutlet weak var outputTextView: UITextView!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var genreTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    
    @IBOutlet weak var countLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let book1 = Book(name: "햄릿", genre: "비극", author: "셰익스피어")
        let book2 = Book(name: "누구를 위하여 종을 울리나", genre: "전쟁", author: "헤밍웨이")
        let book3 = Book(name: "죄와 벌", genre: "사실주의", author: "톨스토이")
        
        myBookManager.registerBook(bookObject: book1)
        myBookManager.registerBook(bookObject: book2)
        myBookManager.registerBook(bookObject: book3)
        countLabel.text = "\(myBookManager.countBooks())"
    }
    
    @IBAction func registerAction(_ sender: Any) {
        var bookTmp = Book()
        bookTmp.name = nameTextField.text!
        bookTmp.genre = genreTextField.text!
        bookTmp.author = authorTextField.text!
        
        myBookManager.registerBook(bookObject: bookTmp)
        outputTextView.text = "\(nameTextField.text!) has been registered."
        countLabel.text = "\(myBookManager.countBooks())"
    }
    
    @IBAction func showAllBooksAction(_ sender: Any) {
        outputTextView.text = myBookManager.showAllBook()
    }
    
    @IBAction func searchAction(_ sender: Any) {
        let resultBook = myBookManager.searchBook(name: nameTextField.text!)
        if resultBook != nil {
            outputTextView.text = "We find \(resultBook!)."
        } else {
            outputTextView.text = "We don't have this book."
        }
    }
    
    @IBAction func removeAction(_ sender: Any) {
        myBookManager.removeBook(name: nameTextField.text!)
        outputTextView.text = "\(nameTextField.text!) is removed."
        countLabel.text = "\(myBookManager.countBooks())"
    }
}

