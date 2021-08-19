//
//  ViewController.swift
//  HW_3
//
//  Created by User on 29.09.2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       // catImageView.image = nil
        
    }
    @IBOutlet weak var catImageView: UIImageView!
    
    var catsImage = [
        UIImage(named: "cat_0")!,
        UIImage(named: "cat_1")!,
        UIImage(named: "cat_2")!,
        UIImage(named: "cat_3")!,
        UIImage(named: "cat_4")!,
        UIImage(named: "cat_5")!,
        UIImage(named: "cat_6")!,
        UIImage(named: "cat_7")!,
        UIImage(named: "cat_8")!,
        UIImage(named: "cat_9")!
    ]
    
    var curIndL = 0
    @IBOutlet weak var numLabel: UILabel!
    
    @IBAction func backButton(_ sender: Any) {

        curIndL -= 1
        
        if curIndL < 0{
            curIndL = 9
        catImageView.image = catsImage[curIndL % catsImage.count]
        }
        else{
        catImageView.image = catsImage[curIndL % catsImage.count]
        }
        if curIndL > 9{
            curIndL = 0
            numLabel.text = "№ \(curIndL + 1)"
        }else{
        numLabel.text = "№ \(curIndL + 1)"
        }
    }
    
    @IBAction func laterButton(_ sender: Any) {
        
        curIndL += 1
        catImageView.image = catsImage[curIndL % catsImage.count]
        
        if curIndL > 9{
            curIndL = 0
            numLabel.text = "№ \(curIndL + 1)"
        }else{
        numLabel.text = "№ \(curIndL + 1)"
        }
    }
}

