//
//  ImageViewController.swift
//  Navigation
//
//  Created by nina on 2021/02/09.
//

import UIKit

class ImageViewController: UIViewController, EditDelegate2{

    @IBOutlet weak var ContentimageView: UIImageView!
    let imgOn = UIImage(named: "lamp_on.png")
    let imgOff = UIImage(named: "lamp_off.png")
    var isOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ContentimageView.image = imgOn
      
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        editViewController.delegate2 = self
        editViewController.isOn = isOn
    }
    
    func didImageOnOffDone2(_ controller : EditViewController, isOn:Bool){
        if isOn{
            ContentimageView.image = imgOn
            self.isOn = true
        }else {
            ContentimageView.image = imgOff
            self.isOn = false
        }
    }
    

   

}
