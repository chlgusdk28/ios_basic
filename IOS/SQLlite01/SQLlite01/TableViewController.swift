//
//  TableViewController.swift
//  SQLlite01
//
//  Created by nina on 2021/02/15.
//

import UIKit
import SQLite3

class TableViewController: UITableViewController {

    @IBOutlet weak var tvList: UITableView!
    
    var db : OpaquePointer?
    var studentsList : [Students] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //SQLite생성하기
        let fileURL = try! FileManager.default.url(for : .documentDirectory, in : .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("StudentsData.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK{
            print("에러다!!")
        }
        
        if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS students (sid INTEGER PRIMARY KEY AUTOINCREMENT, sname TEXT, sdept TEXT,sphone TEXT)", nil, nil, nil) != SQLITE_OK {
                    let errmsg = String(cString: sqlite3_errmsg(db)!)
                    print("error creating ttable: \(errmsg)")
                }
        
        
        // 인설트하기 함수
        tempInsert()
        
        readValues()
        
    }
    
        
        // 테이블 내용 불러오기
        
    func tempInsert(){
            var statement: OpaquePointer?
            // Korean 때문에 필요. -> EN은 필요 없음.
            let SQLITE_TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self)
            
            let queryString = "INSERT INTO students (sname, sdept, sphone) VALUES (?,?,?)"
            
            // 위의 ? 3개에 statement 1,2,3을 넣어 주면 됨
            if sqlite3_prepare(db, queryString, -1, &statement, nil) != SQLITE_OK{
                let errmsg = String(cString: sqlite3_errmsg(db)!)
                print("error preparing insert: \(errmsg)")
                return
            }
            
            // 묶어 주는곳
            // 1
            if sqlite3_bind_text(statement, 1, "유비", -1, SQLITE_TRANSIENT) != SQLITE_OK {
                let errmsg = String(cString: sqlite3_errmsg(db)!)
                print("error binding name: \(errmsg)")
                return
            }
            // 2
            if sqlite3_bind_text(statement, 2, "컴퓨터공학과", -1, SQLITE_TRANSIENT) != SQLITE_OK {
                let errmsg = String(cString: sqlite3_errmsg(db)!)
                print("error binding dept: \(errmsg)")
                return
            }
            // 3
            if sqlite3_bind_text(statement, 3, "1234", -1, SQLITE_TRANSIENT) != SQLITE_OK {
                let errmsg = String(cString: sqlite3_errmsg(db)!)
                print("error binding phone: \(errmsg)")
                return
            }
            
            if sqlite3_step(statement) != SQLITE_DONE{
                let errmsg = String(cString: sqlite3_errmsg(db)!)
                print("Failure inserting: \(errmsg)")
                return
            }
            
            // Console에 그냥 출력
            print("Student information saved successfully ")
        }
    
    func readValues(){
        studentsList.removeAll()
        // 배열에 있는거 다 지워서 초기화
        
        let queryString = "SELECT * FROM students"
        var stmt : OpaquePointer?
        
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print(errmsg)
            return
        }
        
        while sqlite3_step(stmt) == SQLITE_ROW{
            let id = sqlite3_column_int(stmt, 0)
            let name = String(cString : sqlite3_column_text(stmt, 1))
            let dept = String(cString : sqlite3_column_text(stmt, 2))
            let phone = String(cString : sqlite3_column_text(stmt, 3))
            
            print(id, name, phone)
            // 잘되는지 출력해보기
            studentsList.append(Students(id: Int(id), name: String(describing : name), dept: String(describing : dept), phone: String(describing : phone)))
            // 한글 포함할 경우 describing : 를 써줘야한다!!!
        }
        self.tvList.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return studentsList.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)

        
        let students: Students
        students = studentsList[indexPath.row]
        
        cell.textLabel?.text = "학번 : \(students.id)"
        cell.detailTextLabel?.text = "성명 : \(students.name!)"
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
