//
//  ViewController.swift
//  PageControll
//
//  Created by nina on 2021/02/08.
//

import UIKit
import MapKit
class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var pageControll: UIPageControl!
    @IBOutlet weak var map: MKMapView!
    let locationManager = CLLocationManager()
    
    var images = ["flower_01.png", "flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png"]
    
    var text11 = [1,2,3,4,5,6]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pageControll.numberOfPages = images.count
        pageControll.currentPage = 0
        pageControll.pageIndicatorTintColor = UIColor.green
        pageControll.currentPageIndicatorTintColor = UIColor.red
        imgView.image = UIImage(named: images[0])
        text.textColor = UIColor.red
        
        
        setAnnotation(latitudeValue: 37.65243153, logitdeValue: 127.0276397, delta: 0.01, title: "둘리뮤지엄", subtitle: "서울 특별시 도봉구 1길 6")
        makeSingleTouch()

    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControll.currentPage])
        
        var tt = text11[pageControll.currentPage]
        if tt % 2 == 1{
            text.textColor = UIColor.red
        }else {
            text.textColor = UIColor.blue
        }
        text.text = String(tt)
        
        if tt == 1{
            setAnnotation(latitudeValue: 37.65243153, logitdeValue: 127.0276397, delta: 0.01, title: "둘리뮤지엄", subtitle: "서울 특별시 도봉구 1길 6")
        }else{
            setAnnotation(latitudeValue: 37.57244171, logitdeValue: 126.9595412, delta: 0.01, title: "서대문형무소역사관", subtitle: "서울특별시 서대문구 통일로 251")
        
        }
    }
    func goLocation(latitudeValue : CLLocationDegrees, logitudeValue : CLLocationDegrees, delta span : Double) -> CLLocationCoordinate2D {
        
        let pLocation = CLLocationCoordinate2DMake(latitudeValue, logitudeValue)
        let spanValue = MKCoordinateSpan(latitudeDelta: span, longitudeDelta: span)
        let pRegion = MKCoordinateRegion(center: pLocation, span : spanValue)
        map.setRegion(pRegion, animated: true)
        
        return pLocation
    }
    
    func setAnnotation(latitudeValue : CLLocationDegrees, logitdeValue : CLLocationDegrees, delta span : Double, title strTitle: String, subtitle : String){
        let annotation = MKPointAnnotation() // pin
        annotation.coordinate = goLocation(latitudeValue: latitudeValue, logitudeValue: logitdeValue, delta: span)
        annotation.title = strTitle
        annotation.subtitle = strTitle
        map.addAnnotation(annotation)
        
    }
    
    func makeSingleTouch()  {
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_ :)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_ :)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
    }
    
    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer){
        if let swipeGesture = gesture as? UISwipeGestureRecognizer{
            
            switch swipeGesture.direction{
            case UISwipeGestureRecognizer.Direction.left:
                pageControll.currentPage += 1
                imgView.image = UIImage(named: images[pageControll.currentPage])
            case UISwipeGestureRecognizer.Direction.right:
                pageControll.currentPage -= 1
                imgView.image = UIImage(named: images[pageControll.currentPage])
            default:
                break
            }
        }
    }
    
    
}

