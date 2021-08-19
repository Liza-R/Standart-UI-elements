//
//  ThirdViewController.swift
//  HW_3
//
//  Created by User on 29.09.2020.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentedIndexChanged(0)
        
    }
    
    @IBAction func segmentedIndexChanged(_ sender: Any) {
        
        switch segmentedControl.selectedSegmentIndex
            {
            case 0:
                
                let newView = UIView()
                let newTextF = [UITextField(), UITextField()]
                
                newView.backgroundColor = UIColor.green
                newView.frame = CGRect(x: 55, y: 180, width: 300, height: 500)

                for i in 0...1{
                    
                    newTextF[i].backgroundColor = UIColor.white
                    newTextF[i].frame = CGRect(x: 15, y: 10 + (i * 40), width: 270, height: 25)
                    newTextF[i].text = "Hello №\(i+1)"
                    newTextF[i].textAlignment = .center
                    newView.addSubview(newTextF[i])
                    
                }
                self.view.addSubview(newView)
                
            case 1:
                
                let newView = UIView()
                let newButton = [UIButton(), UIButton()]
                let colors = [UIColor.gray, UIColor.yellow]
                
                newView.backgroundColor = UIColor.blue
                newView.frame = CGRect(x: 55, y: 180, width: 300, height: 500)
                
                for i in 0...1{
                    
                    newButton[i].backgroundColor = colors[i]
                    newButton[i].frame = CGRect(x: 80, y: 30 + (i * 60), width: 120, height: 30)
                    newButton[i].setTitle("Hello №\(i + 1)", for: .normal)
                    newButton[i].setTitleColor(.black, for: .normal)

                    newView.addSubview(newButton[i])
                    
                }

                self.view.addSubview(newView)
                
            case 2:
            
                let newView = UIView()
                var newImageView = [UIImageView(), UIImageView()]
                let catsImage = [UIImage(named: "cat_5"), UIImage(named: "cat_7")]

                newView.backgroundColor = UIColor.purple
                newView.frame = CGRect(x: 55, y: 180, width: 300, height: 500)
                
                for i in 0...1{
                    
                    newImageView[i] = UIImageView(image: catsImage[i])
                    
                    newImageView[i].frame = CGRect(x: 60, y: 20 + (i * 230), width: 180, height: 220)

                    newView.addSubview(newImageView[i])
                }
                
                self.view.addSubview(newView)
                
            default:
                break
        }
    }
}
