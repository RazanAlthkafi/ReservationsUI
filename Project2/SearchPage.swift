//
//  SearchPage.swift
//  Project2
//
//  Created by Roaa aljohani on 28/03/1443 AH.
//

import UIKit
import CoreData


class SearchPage: UIViewController, UISearchBarDelegate {
    var filteredData = [Reservation]()
    var Search =  [Reservation] ()
    var index : Int = 0
//    var nameS: String = ""
//    var emailS: String = ""
//    var phoneS: String = ""
//    var fromS: String = ""
//    var toS: String = ""
    var datetimeS = Date()
  
    
    let SearchController = UISearchController()

    @IBOutlet weak var SearchT: UISearchBar!
    override func viewDidLoad() {
       

        
    }
    
    @IBAction func PressSearch(_ sender: Any) {
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if SearchT.text != ""{
            
            self.filteredData = self.Search.filter{ $0.Name.contains(searchText) }
            
            print(filteredData)
            
        }
        else{
            print("enter search first ")
            filteredData = Search
           // TableView.reloadInputViews(self)
        }
        performSegue(withIdentifier: "ShowResult", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowResult"{
            let saerch = segue.destination as! TableView

}
}

}
