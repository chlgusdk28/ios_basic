//
//  ViewController.swift
//  PickerView
//
//  Created by nina on 2021/02/05.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    

    @IBOutlet weak var pickerImage: UIPickerView!
    @IBOutlet weak var lblImageFileName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    let MAX_ARRAY_NUM = 10 //전체 이미지 갯수 뷰가 범위를 파악하기 위함
    let PICKER_VIEW_COLUM = 1 // 피커뷰에서 띄워지는 선택이 1개
    
    var imageArray = [UIImage?]()
    var imageFileName = ["w1.jpg","w2.jpg","w3.jpg","w4.jpg","w5.jpg","w6.jpg","w7.jpg","w8.jpg","w9.jpg","w10.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // image 준비 : image를 배열로 생성한다.
        for i in 0..<MAX_ARRAY_NUM{
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        lblImageFileName.text = imageFileName[0]
        imageView.image = imageArray[0]
    }
    
    // pickerview의 컬럼 갯수
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUM
    }
    // 출력할 이미지 파일 갯수
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }

    // -------
    // UIPicverViewDelegate의 stubs
    //--------

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return imageFileName[row]
        // 로우 값으로 리턴해서 해당 이미지가 띄워지도록
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // 로우를 선택했을 때의 값 didSelectRow
        lblImageFileName.text = imageFileName[row]
        imageView.image = imageArray[row]
    }
    
    //피커뷰에 이미지 넣기 !!
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image: imageArray[row])
        imageView.frame = CGRect(x:0, y:0, width: 100, height:20)
        return imageView
    }
    
}

