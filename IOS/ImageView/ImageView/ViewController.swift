//
//  ViewController.swift
//  ImageView
//
//  Created by nina on 2021/02/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btnResize: UIButton!
    
    var imgOn : UIImage? // 켜진 전구 이미지 변수
    var imgOff : UIImage? // 꺼진 전구 이미지
    var isZoom = false // 처음에는 확대가 된 상태가 아니므로 // 여기서는 이미지 확대 여부를 체크한다.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 이미지 파일 연결
        
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        // 뷰 디드 로드는 한번 실행하고 만다 . 일회용
        // 그렇기 때문에 일단 꺼진거 켜진거 다 변수를 할당 해놓아야 나중에도 쓸수있음
        
        // 이미지뷰에 이미지 할당
        imgView.image = imgOn
        // 이렇게 하면 램프 이미지가 들어가잇음
        
    }
    
    

    @IBAction func btn_resize(_ sender: UIButton) {
        // 이미지 크기를 두배로 해야겠따~~
        let scale: CGFloat = 2.0
        var newWidth: CGFloat
        var newHeight: CGFloat
        
        if isZoom{
            
            newWidth = imgView.frame.width / scale
            newHeight = imgView.frame.height / scale
            btnResize.setTitle("이미지 확대", for: .normal)
            
        }else{
            newWidth = imgView.frame.width * scale
            newHeight = imgView.frame.height * scale
            btnResize.setTitle("이미지 축소", for: .normal)
        }
        

        
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
        
        
        
        
    }
    
    
    @IBAction func swichImage(_ sender: UISwitch) {
        
        switch sender.isOn{
        case true :
            imgView.image = imgOn
            
        default :
            imgView.image = imgOff
            
    }
    
}
    



}

