//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Vamsi Veeramasu on 9/16/19.
//  Copyright © 2019 Vamsi Veeramasu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomBallNumber = 0
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "ball1")
        newBallImage();
        // Do any additional setup after loading the view.
        
    }
    func newBallImage(){
        let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}

