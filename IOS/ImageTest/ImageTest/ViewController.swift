//
//  ViewController.swift
//  ImageTest
//
//  Created by nina on 2021/02/04.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var fileName: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    let timeSelector: Selector = #selector(ViewController.updateTime)
    var count : Int = 0
    let interval = 3.0
    
    var newImageArray = [
        "flower_01.png",
        "flower_02.png",
        "flower_03.png",
        "flower_04.png",
        "flower_05.png",
        "flower_06.png",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named: newImageArray[count])
        imageView.image = image
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        
        
    }


    @IBAction func beforeBtn(_ sender: UIButton) {
        if count <= 0 {
            imageView.image = UIImage(named: newImageArray[0])
            fileName.text = "\(newImageArray[0])"
        }else{
            imageView.image = UIImage(named: newImageArray[count])
            fileName.text = "\(newImageArray[count])"
            }
        }
        
    
    
    @IBAction func AfterBtn(_ sender: UIButton) {
        count = count + 1
        if count <= 0 {
            imageView.image = UIImage(named: newImageArray[0])
            fileName.text = "\(newImageArray[0])"
        }else if (count < newImageArray.count){
            imageView.image = UIImage(named: newImageArray[count])
            fileName.text = "\(newImageArray[count])"
            
        }else if(count >= newImageArray.count){
            imageView.image = UIImage(named: newImageArray[0])
            fileName.text = "\(newImageArray[0])"
            count = 0
        }
    }
    
    @objc func updateTime() {
        count = count + 1
        if count <= 0 {
            imageView.image = UIImage(named: newImageArray[0])
            fileName.text = "\(newImageArray[0])"
        }else if (count < newImageArray.count){
            imageView.image = UIImage(named: newImageArray[count])
            fileName.text = "\(newImageArray[count])"
            
        }else if(count >= newImageArray.count){
            imageView.image = UIImage(named: newImageArray[0])
            fileName.text = "\(newImageArray[0])"
            count = 0
        }
    }
    
    
}

//
//  ViewController.swift
//  Quiz06
//
//  Created by 최지석 on 2021/02/04.
//

//import UIKit
//
//class ViewController: UIViewController {
//
//    @IBOutlet weak var txtName: UILabel!
//    @IBOutlet weak var imgView: UIImageView!
//
//    var name : [String] = [
//        "flower_01.png",
//        "flower_02.png",
//        "flower_03.png",
//        "flower_04.png",
//        "flower_05.png",
//        "flower_06.png"
//    ]
//    var myPage:Int = 0
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        setView()
//    }
//    @IBAction func btnBefore(_ sender: UIButton) {
//
//        if myPage != 0{
//            myPage -= 1
//        }else{
//            myPage = 5
//        }
//        setView()
//
//    }
//
//    @IBAction func btnAfter(_ sender: UIButton) {
//
//        if myPage != 5{
//            myPage += 1
//        }else{
//            myPage=0
//        }
//        setView()
//
//    }
//
//
//    func setView(){
//        imgView.image = UIImage(named: name[myPage])
//        txtName.text = name[myPage]
//    }
//}

