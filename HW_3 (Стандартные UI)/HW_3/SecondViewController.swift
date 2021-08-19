//
//  SecondViewController.swift
//  HW_3
//
//  Created by User on 29.09.2020.
//

import UIKit

class SecondViewController: UIViewController {

    
    let new_label = [UILabel.init(),UILabel.init(),UILabel.init(),UILabel.init()]
    var newImageView = [UIImageView.init(), UIImageView.init(), UIImageView.init(),UIImageView.init()]
    
    var new_image = [
        UIImage(named: "cat_0")!,
        UIImage(named: "cat_1")!,
        UIImage(named: "cat_2")!,
        UIImage(named: "cat_3")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...3{
            if i % 2 == 0{
                new_label[i].frame = CGRect(x: 10, y: 350 + (i * 200), width: 180, height: 30)
                new_label[i].backgroundColor = UIColor.lightGray
                new_label[i].text = "CAT №\(i+1)"
                new_label[i].textAlignment = .center
                self.view.addSubview(new_label[i])
                
                newImageView[i] = UIImageView(image: new_image[i])
                newImageView[i].frame = CGRect(x: 10, y: 100 + (i * 200), width: 180, height: 230)
                self.view.addSubview(newImageView[i])
            } else if i == 1
            {
                new_label[i].frame = CGRect(x: 220, y: 350, width: 180, height: 30)
                new_label[i].backgroundColor = UIColor.lightGray
                new_label[i].text = "CAT №\(i+1)"
                new_label[i].textAlignment = .center
                self.view.addSubview(new_label[i])
            
                newImageView[i] = UIImageView(image: new_image[i])
                newImageView[i].frame = CGRect(x: 220, y: 100, width: 180, height: 230)
               self.view.addSubview(newImageView[i])
            }
            else{
                new_label[i].frame = CGRect(x: 220, y: 250 * i, width: 180, height: 30)
                new_label[i].backgroundColor = UIColor.lightGray
                new_label[i].text = "CAT №\(i+1)"
                new_label[i].textAlignment = .center
                self.view.addSubview(new_label[i])
            
                newImageView[i] = UIImageView(image: new_image[i])
                newImageView[i].frame = CGRect(x: 220, y: 165 * i + 5, width: 180, height: 230)
                self.view.addSubview(newImageView[i])
            }
        }
    }
}
