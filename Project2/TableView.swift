//
//  TableView.swift
//  Project2
//
//  Created by Roaa aljohani on 25/03/1443 AH.
//

import UIKit
import CloudKit

class TableView: UITableViewController {
    var NewReserve = [Reservation]()
   // var selectedItem: Reservation!
//var selectedAccount : Reservation!
    var name: String = ""
    var email: String = ""
    var phone: String = ""
    var from: String = ""
    var to: String = ""
   var dateandtime = Date()
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
            dateandtime = NewReserve[indexPath.row].DateAndTime1
            
            print(NewReserve[indexPath.row].Name)
            
            performSegue(withIdentifier: "goBackToDetails", sender: self)
            self.tableView.reloadData()
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
        return UISwipeActionsConfiguration(actions: [delete])
    }
    
    
    
            override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                if segue.identifier == "goBackToDetails"{
                    let edit = segue.destination as! Edit
                 //   edit.NewReserveE = NewReserve
                    edit.NameE = name
                    edit.EmailE = email
                    edit.PhonenumberE = phone
                    edit.FromE = from
                    edit.ToE = to
                }
                
            }
            
            
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
        




