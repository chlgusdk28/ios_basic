//
//  ViewController.swift
//  ex051
//
//  Created by nina on 2021/02/04.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    var imgOn : UIImage?
    var imgOff : UIImage?
    @IBOutlet weak var text: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        imageView.image = imgOn
        
}

    
    @IBAction func resize(_ sender: UISwitch) {
        let scale : CGFloat = 2.0
        var newWidth : CGFloat
        var newHeight : CGFloat
        
        switch sender.isOn {
        
        case true:
            
            newWidth = imageView.frame.width / scale
            newHeight = imageView.frame.width / scale
            text.text = "전구확대"

        default:
            
            newWidth = imageView.frame.width * scale
            newHeight = imageView.frame.width * scale
            text.text = "전구축소"

        }
        imageView.frame.size = CGSize(width: newWidth, height: newHeight)
        
        
        
    }
    
    @IBAction func onoff(_ sender: UISwitch) {
        
        switch sender.isOn {
        case true:
            imageView.image = imgOn
        default:
            imageView.image = imgOff
        }
    }
    
    
}

