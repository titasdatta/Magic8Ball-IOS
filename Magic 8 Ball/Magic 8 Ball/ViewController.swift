//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Titas Datta on 03/02/18.
//  Copyright © 2018 Titas Datta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magicBallImage: UIImageView!
    
    var randomBallIndex: Int = 0
    
    let answersArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        magicBallImage.image = UIImage(named: "ball5")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButton(_ sender: Any) {
        getRandomBall()
    }
    
    func getRandomBall(){
        randomBallIndex = Int(arc4random_uniform(5))
        magicBallImage.image = UIImage(named: answersArray[randomBallIndex])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        getRandomBall()
    }
    
}

