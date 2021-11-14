//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Nurşah on 14.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        img.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        img.addGestureRecognizer(gestureRecognizer)
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(timerChange), userInfo: nil, repeats: true)
    }
    
    @objc func timerChange(){
        if img.image == UIImage(named: "sid"){
            img.image = UIImage(named: "Sid2")
        }
        else {
            img.image = UIImage(named: "sid")
        }
    }
    @objc func changePic(){
        if img.image == UIImage(named: "sid"){
            img.image = UIImage(named: "Sid2")
        }
        else {
            img.image = UIImage(named: "sid")
        }
    }

}

