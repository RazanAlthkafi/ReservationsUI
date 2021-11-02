

import UIKit
import CloudKit

class TableView: UITableViewController, PassDataBack {
    var selectedData : Reservation!
    var selectedRowNum: Int = 0
    func updateRow(updateName: String, updateEmail: String, updatePhone: String, updateFrom: String, updateTo: String, updateDate: Date) {
        
        NewReserve[selectedRowNum].Name = updateName
        NewReserve[selectedRowNum].Email = updateEmail
        NewReserve[selectedRowNum].PhoneNumber = updatePhone
        NewReserve[selectedRowNum].From = updateFrom
        NewReserve[selectedRowNum].To = updateTo
        NewReserve[selectedRowNum].DateAndTime1 = updateDate
        tableView.reloadData()
    }
//        for i in 0..<NewReserve.count{
//        NewReserve[i].Name = updateName
//        NewReserve[i].Email = updateEmail
//        NewReserve[i].PhoneNumber = updatePhone
//        NewReserve[i].From = updateFrom
//        NewReserve[i].To = updateTo}
//
//        tableView.reloadData()}
    
    var NewReserve = [Reservation]()

    var name: String = ""
    var email: String = ""
    var phone: String = ""
    var from: String = ""
    var to: String = ""
    var datetime = Date()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
               

               tableView.reloadData()
    }
        override func viewDidLoad() {
            super.viewDidLoad()

            // Uncomment the following line to preserve selection between presentations
            // self.clearsSelectionOnViewWillAppear = false

            // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
            // self.navigationItem.rightBarButtonItem = self.editButtonItem
            
            print(NewReserve)
        }

        // MARK: - Table view data source

        override func numberOfSections(in tableView: UITableView) -> Int {
            // #warning Incomplete implementation, return the number of sections
            return 1
        }

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
            return NewReserve.count
        }

        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "XIdentifier", for: indexPath)
            cell.textLabel?.text = NewReserve[indexPath.row].Name
           
            
            return cell
           
        }
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          //  let   NewReserve = selectedItem[indexPath.row]
            name = NewReserve[indexPath.row].Name
            email = NewReserve[indexPath.row].Email
            phone =  NewReserve[indexPath.row].PhoneNumber
            from = NewReserve[indexPath.row].From
            to = NewReserve[indexPath.row].To
            datetime = NewReserve[indexPath.row].DateAndTime1
            tableView.reloadData()
            print(NewReserve[indexPath.row].Name)
            
            performSegue(withIdentifier: "ShowDetails", sender: self)
           
        }
    
    
    
//    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
//        return .delete
//    }
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete{
//            tableView.beginUpdates()
//        }
//    }
    
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delete = UIContextualAction (style: .destructive, title: "delete") { (action, view, completionHandler) in
            self.NewReserve.remove(at: indexPath.row)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
            
            completionHandler(true)
        }
        let edit = UIContextualAction(style: .destructive, title: "Edit"){(action, view, completionHandler) in
            self.selectedData =  self.NewReserve[indexPath.row]
           self.selectedRowNum = indexPath.row
            self.performSegue(withIdentifier: "mySegue", sender: self)
            completionHandler(true)
           
        }
        edit.backgroundColor = .blue
       // edit.image = UIImage(systemName: "edit")
        return UISwipeActionsConfiguration(actions: [delete, edit])
       
    }
    
    
    
            override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                if segue.identifier == "mySegue"{
                    let edit = segue.destination as! Edit
                    edit.delegate = self
                    edit.dataPass = selectedData
}
               else if segue.identifier == "GoBackToTable"{
                    let table = segue.destination as! TableView
                   table.name = name
                   table.email = email
                   table.phone = phone
                   table.from = from
                   table.to = to
              //     table.datetime = 
                   
                    
                }
                else if segue.identifier == "ShowDetails"{
                            let details = segue.destination as! Details
                    details.NameD = name
                    details.EmailD = email
                    details.PhonenumberD = phone
                    details.FromD = from
                    details.ToD = to
                    details.date = datetime
                
                }}
    
                
            }
            
            
    
            
    
    

        
 
        
    
  
   
    
  
        
        // Override to support conditional editing of the table view.
    
//    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
//      //  let Reservations = NewReserve[indexPath.row]
//        let edit = UITableViewRowAction(style: .default, title: "edit") { (Action, indexPath)  in
//
//        }
//
//        edit.backgroundColor = .blue
//        return [edit]
//    }


   
    

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
        




