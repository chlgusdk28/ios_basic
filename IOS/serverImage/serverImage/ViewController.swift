//
//  ViewController.swift
//  serverImage
//
//  Created by nina on 2021/02/15.
//

//
//  ViewController.swift
//  ServerImage
//
//  Created by 최지석 on 2021/02/15.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imgDisplay: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnLoadImage(_ sender: UIButton) {
        downLoadItems();
    }
    func downLoadItems(){
        let url: URL = URL(string:"http://127.0.0.1:8080/dog.jpeg")!
        let defaultSession = Foundation.URLSession(configuration: URLSessionConfiguration.default)
        
        let task = defaultSession.dataTask(with: url){(data,response,error) in
            if error != nil{
                print("Failed to download data")
            }else{
                print("Data is downloading")
                
                DispatchQueue.main.async{
                    self.imgDisplay.image = UIImage(data:data!)
                    //png
                    if let image = UIImage(data: data!){
                        if let data = image.pngData(){
                            let filename = self.getDocumentDirectory().appendingPathComponent("copy.png")
                            try? data.write(to: filename)
                        }
                    }
                    //jpg
                    if let image = UIImage(data: data!){
                        if let data = image.jpegData(compressionQuality: 0.8){
                            let filename = self.getDocumentDirectory().appendingPathComponent("copy.png")
                            try? data.write(to: filename)
                            print("Data is. writed")
                            print(self.getDocumentDirectory()) // wrtie location
                        }
                    }
                }
            }
            
        } // task end
        task.resume() // task starting
    }
    
    func getDocumentDirectory() -> URL{
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    
}
