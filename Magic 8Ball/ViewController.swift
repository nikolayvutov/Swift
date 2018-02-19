//
//  ViewController.swift
//  Magic 8Ball
//
//  Created by Nikolay on 11.01.18.
//  Copyright © 2018 Nikolay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4",
                     "ball5"]
    
    var randomBallNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        changeBallFaces()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeBallFaces()
    }
    
    @IBAction func pressButton(_ sender: UIButton) {
        changeBallFaces()
    }
    
    func changeBallFaces(){
        randomBallNumber = Int(arc4random_uniform(5))
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
}

