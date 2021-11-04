//
//import UIKit
//import CoreData
//
//protocol Filter {
//    func FilterTableView(name: String)
//}
//
//class SearchPage: UIViewController, UISearchBarDelegate {
//    var filteredData = [Reservation]()
//    var dataPass:Reservation!
//    var delegate: Filter!
//    var selectedName : String = ""
//    var Search =  [Reservation] ()
//    var index : Int = 0
//    var nameS: String = ""
//    var emailS: String = ""
//    var phoneS: String = ""
//    var fromS: String = ""
//    var toS: String = ""
//    var datetimeS = Date()
//  
//    @IBOutlet weak var EmptySearch: UILabel!
//    
//    let SearchController = UISearchController()
//
//    @IBOutlet weak var SearchT: UISearchBar!
//    override func viewDidLoad() {
//        SearchT.text = nameS
//        EmptySearch.isHidden = true
//        print(nameS)
//
//        print(nameS)
//    }
//    
//
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "ShowResult"{
//       let table = segue.destination as! TableView
//            table.tableView.reloadData()
//            if nameS == table.name{
//                print("hi")}
//            
//          
//
//        }
//    
//
//}
//
//
//}
