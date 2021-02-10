//
//  AddViewController.swift
//  Table
//
//  Created by 정정이 on 2021/02/09.
//

import UIKit

class AddViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource{

    @IBOutlet weak var txtAddItem: UITextField!
    @IBOutlet weak var pickerImage: UIPickerView!
    @IBOutlet weak var imageView: UIImageView!
    let MAX_ARRAY_NUM = 3 // 이미지의 파일명을 저장할 배열의 최대 크기를 지정
    let PICKER_VIEW_COLUMN = 1 // 피커 뷰의 열의 갯수 지정
    let PICKER_VIEW_HEIGHT:CGFloat = 80 // 피커 뷰의 높이를 지정할 상수
    var imageArray = [UIImage?]()
    var imageFileName = ["cart.png","clock.png","pencil.png"] // 이미지의 파일명을 저장할 배열
    @IBOutlet weak var imgName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 0 ..< MAX_ARRAY_NUM {
                    // 각 파일 명에 해당하는 이미지를 생성
                    let image = UIImage(named: imageFileName[i])
                    // 생성된 이미지를 imageArray에 추가
                    imageArray.append(image)
                }

                // 뷰가 로드되었을 때 첫번째 이미지 출력
                imageView.image = imageArray[0]
                imgName.text = imageFileName[0]
        
    }
    // 피커 뷰의 컴포넌트 수 설정
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return PICKER_VIEW_COLUMN
        }
        
        // 피커 뷰의 높이 설정
        func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
            return PICKER_VIEW_HEIGHT
        }
        
        // 피커 뷰의 개수 설정
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return imageFileName.count
        }
    
    // 피커 뷰의 각 Row의 view 설정
        func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView{
            let imageView = UIImageView(image: imageArray[row])
            imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 80) // 이미지 뷰의 프레임 크기 설정
            
            return imageView
        }
        
        // 피커 뷰가 선택되었을 때 실행
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            imageView.image = imageArray[row]
            imgName.text = imageFileName[row]
        }
    
    @IBAction func btnAddItem(_ sender: UIButton) {
        // 아이템즈에 텍스트 필드 값을 추가한다.
        items.append(txtAddItem.text!)
        itemsImageFile.append(imgName.text!)
        txtAddItem.text = ""
        navigationController?.popViewController(animated: true)
    }
}
