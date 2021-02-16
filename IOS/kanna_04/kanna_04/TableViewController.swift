//
//  TableViewController.swift
//  Kanna_04
//
//  Created by 고종찬 on 2021/02/10.
//

import UIKit

class TableViewController: UITableViewController, CrawlModelProtocol {
  
    
    @IBOutlet var listView: UITableView!
    
    var feedItem: NSArray = NSArray()
    var feedItemAddress: NSArray = NSArray()
    var year: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.listView.delegate = self //delegate 연결
        self.listView.dataSource = self //dataSource 연결
        
        let crawlModel = CrawlModel() //CrawlModel class 연결
        crawlModel.delegate = self //crawlmodel 위임
        year = "2019"
        self.title = "Rotten Tomatos \(year)"
        crawlModel.dataCrawling(year: year)
        

    }
    
    
    func itemDownloaded(items: NSArray, itemsAddress: NSArray) {//클래스에서 받아오기
        feedItem = items
        feedItemAddress = itemsAddress
        self.listView.reloadData()
    }
    
    
    @IBAction func btnYear(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "년도 입력", message: "순위를 보고 싶은 년도는?", preferredStyle: UIAlertController.Style.alert)
        let cancelAction = UIAlertAction(title: "취소", style: UIAlertAction.Style.default, handler: nil)
        let okAction = UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: {ACTION in
            if let year = alertController.textFields?.first?.text{//뒤에 textFields를 서술
                self.title = "Rotten Tomatos :\(year)"
                let crawlModel = CrawlModel()
                crawlModel.delegate = self
                crawlModel.dataCrawling(year: year)
            }
        })
        alertController.addTextField(configurationHandler: {textField in
            textField.placeholder = "년도 입력..." //ACTION의 첫번째 textFields를 의미
           
        })
        
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return feedItem.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        let item: String = feedItem[indexPath.row] as! String
        cell.textLabel?.text = "\(item)"

        return cell
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //클릭했을때
        let cell = sender as! UITableViewCell
        let indexPath = self.listView.indexPath(for: cell)
        let detailView = segue.destination as! ViewController
        detailView.receiveItem = feedItemAddress[(indexPath! as NSIndexPath).row] as! String
        
    }
    

}
