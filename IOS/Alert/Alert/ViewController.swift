//
//  ViewController.swift
//  Alert
//
//  Created by nina on 2021/02/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lampImage: UIImageView!
    let imgOn = UIImage(named:"lamp_on.png")
    let imgOff = UIImage(named: "lamp_off.png")
    let imgRemove = UIImage(named: "lamp_remove.png")
    var islampOn = true
    var islampRemove = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lampImage.image = imgOn
        
    }

    @IBAction func btn_lampOn(_ sender: UIButton) {
        if islampRemove {
            let lampOnAlert = UIAlertController(title: "경고", message: "킬수있는 램프가 없습니다.", preferredStyle: UIAlertController.Style.alert)
            
            let onAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            lampOnAlert.addAction(onAction)
            present(lampOnAlert, animated: true, completion: nil)
        }
        else if islampOn {
            let lampOnAlert = UIAlertController(title: "경고", message: "현재 ON 상태입니다.", preferredStyle: UIAlertController.Style.alert)
            
            let onAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            lampOnAlert.addAction(onAction)
            present(lampOnAlert, animated: true, completion: nil)
        }
        
        
        else{
            lampImage.image = imgOn
            islampOn = true
        }
    }
    
    @IBAction func btmLampOff(_ sender: UIButton) {
        
        if islampRemove {
            let lampOnAlert = UIAlertController(title: "경고", message: "끌수있는 램프가 없습니다.", preferredStyle: UIAlertController.Style.alert)
            
            let onAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            lampOnAlert.addAction(onAction)
            present(lampOnAlert, animated: true, completion: nil)
        }
        else if islampOn{
            let lampOffAlert = UIAlertController(title: "램프 끄기", message: "램프를 끄겠습니까?", preferredStyle: UIAlertController.Style.alert)
            let offAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default, handler: {ACTION in self.lampImage.image = self.imgOff
                self.islampOn = false
            })
            
            let cancelAction = UIAlertAction(title: "아니오", style: UIAlertAction.Style.default, handler: nil)
            
            lampOffAlert.addAction(offAction)
            lampOffAlert.addAction(cancelAction)
            
            present(lampOffAlert, animated: true, completion: nil)
            
        }
        
        else{
            let lampOffAlert = UIAlertController(title: "경고", message: "현재 off상태 입니다.", preferredStyle: UIAlertController.Style.alert)
            let offAction = UIAlertAction(title: "네 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
        }
        
    }
    
    @IBAction func btnLampRemove(_ sender: UIButton) {

            
           if islampRemove{
                let lampRemoveAlert = UIAlertController(title: "경고", message: "램프를 이미 제거했습니다.", preferredStyle: UIAlertController.Style.alert)
                
                let RemoveAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
                    lampRemoveAlert.addAction(RemoveAction)
                    present(lampRemoveAlert, animated: true, completion: nil)
            
           }else{
            
                let lampRemoveAlert = UIAlertController(title: "램프 제거", message: "램프를 제거하시겠습니까?", preferredStyle: UIAlertController.Style.alert)

                let RemoveAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default, handler: {ACTION in self.lampImage.image = self.imgRemove
                    self.islampRemove = true
                    
                })
            
                lampRemoveAlert.addAction(RemoveAction)
                present(lampRemoveAlert, animated: true, completion: nil)


            }
            
        }
        
    }
    

