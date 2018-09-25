//
//  ViewController.swift
//  DigitalFrame
//
//  Created by 이경환 on 2018. 9. 25..
//  Copyright © 2018년 이경환. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var toggleButton: UIButton!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var speedLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let goldenRetrieverImages = [UIImage(named: "GoldenRetriever0.jpg")!,
                                     UIImage(named: "GoldenRetriever1.jpg")!,
                                     UIImage(named: "GoldenRetriever2.jpg")!,
                                     UIImage(named: "GoldenRetriever3.jpg")!,
                                     UIImage(named: "GoldenRetriever4.jpg")!,
                                     UIImage(named: "GoldenRetriever5.jpg")!,
                                     UIImage(named: "GoldenRetriever6.jpg")!,
                                     UIImage(named: "GoldenRetriever7.jpg")!,
                                     UIImage(named: "GoldenRetriever8.jpg")!,
                                     UIImage(named: "GoldenRetriever9.jpg")!]

        imgView.animationImages = goldenRetrieverImages
        imgView.animationDuration = 10
        speedLabel.text = String(format: "%.2f", speedSlider.value)
    }
    
    @IBAction func toggleButtonAction(_ sender: Any) {
        if imgView.isAnimating {
            imgView.stopAnimating()
            toggleButton.setTitle("START", for: UIControl.State.normal)
        } else {
            imgView.animationDuration = Double(speedSlider.value)
            imgView.startAnimating()
            toggleButton.setTitle("STOP", for: UIControl.State.normal)
        }
    }
    
    @IBAction func speedSliderAction(_ sender: Any) {
        imgView.animationDuration = Double(speedSlider.value)
        imgView.startAnimating()
        toggleButton.setTitle("STOP", for: UIControl.State.normal)
        speedLabel.text = String(format: "%.2f", speedSlider.value)
    }
}

