

import UIKit
import CloudKit

class TableView: UITableViewController, PassDataBack, UISearchBarDelegate {
    @IBOutlet weak var SearchBar: UISearchBar!
    
  
    var SearchFilter = [Reservation]()
    var NewDate1 : Reservation!
    var RowNum: Int = 0
    
    func updateRow(updateName: String, updateEmail: String, updatePhone: String, updateFrom: String, updateTo: String, updateDate: Date) {
        
        NewReserve[RowNum].Name = updateName
        NewReserve[RowNum].Email = updateEmail
        NewReserve[RowNum].PhoneNumber = updatePhone
        NewReserve[RowNum].From = updateFrom
        NewReserve[RowNum].To = updateTo
        NewReserve[RowNum].DateAndTime1 = updateDate
        tableView.reloadData()
    }

    
    var NewReserve = [Reservation]()

    var name: String = ""
    var email: String = ""
    var phone: String = ""
    var from: String = ""
    var to: String = ""
    var datetime = Date()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
               
        SearchBar.delegate = self
        SearchFilter = NewReserve
               tableView.reloadData()
     
    }
        override func viewDidLoad() {
            super.viewDidLoad()

            NewReserve.append(Reservation(
                Name: "Razan", Email: "razan@gmail.com", PhoneNumber:"0508318221", From:
                   " med", To: "jed",
                
                DateAndTime1: Date()
                
            ))
            NewReserve.append(Reservation(
                Name: "ahmad", Email: "ahmad@gmail.com", PhoneNumber:"0508318221", From:
                   " med", To: "jed",
                
                DateAndTime1: Date()
                
            ))
        }

        // MARK: - Table view data source

        override func numberOfSections(in tableView: UITableView) -> Int {
            // #warning Incomplete implementation, return the number of sections
            return 1
        }

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
            return SearchFilter.count
        }

        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "XIdentifier", for: indexPath)
                cell.textLabel?.text = SearchFilter[indexPath.row].Name
        
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
    

    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delete = UIContextualAction (style: .destructive, title: "delete") { [self] (action, view, completionHandler) in
            self.SearchFilter.remove(at: indexPath.row)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
            
            completionHandler(true)
        }
        let edit = UIContextualAction(style: .destructive, title: "Edit"){(action, view, completionHandler) in
            self.NewDate1 =  self.NewReserve[indexPath.row]
           self.RowNum = indexPath.row
            self.performSegue(withIdentifier: "mySegue", sender: self)
            completionHandler(true)
           
        }
        edit.backgroundColor = .blue
        return UISwipeActionsConfiguration(actions: [delete, edit])
       
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        SearchFilter = []
        if searchText == ""{
            SearchFilter = NewReserve
        }
        else{
        for i in NewReserve{
            if i.Name.lowercased().contains(searchText.lowercased()) {
                SearchFilter.append(i)
            }
        }}
        self.tableView.reloadData()
    }
    
    
            override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                if segue.identifier == "mySegue"{
                    let edit = segue.destination as! Edit
                    edit.delegate = self
                    edit.dataPass = NewDate1
}
               else if segue.identifier == "GoBackToTable"{
                    let table = segue.destination as! TableView
                   table.name = name
                   table.email = email
                   table.phone = phone
                   table.from = from
                   table.to = to

                   
                    
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
            
            
    
    
